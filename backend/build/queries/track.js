"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.insertArtistAndTopTracksIntoDatabase = insertArtistAndTopTracksIntoDatabase;
const db_1 = __importDefault(require("../db"));
function insertArtistAndTopTracksIntoDatabase(artist, tracksResponse) {
    return __awaiter(this, void 0, void 0, function* () {
        const client = yield db_1.default.connect();
        try {
            // Insert the artist into the Artist table
            const artistExistsQuery = `
            INSERT INTO Artist (artist_id, name, genre, popularity, href, image_height, image_width, image_link)
            VALUES ($1, $2, $3, $4, $5, $6, $7, $8)
            ON CONFLICT (artist_id) DO NOTHING;
        `;
            const artistImage = artist.images[0] || { height: null, width: null, url: null };
            yield client.query(artistExistsQuery, [
                artist.id,
                artist.name,
                artist.genres || {}, // Pass genres as an array
                artist.popularity,
                artist.href,
                artistImage.height,
                artistImage.width,
                artistImage.url,
            ]);
            // Extract tracks from the response
            const tracks = tracksResponse.tracks;
            // Insert tracks
            for (const track of tracks) {
                const { id: trackId, name: trackName, album, popularity: trackPopularity, href: trackHref, track_number: trackNumber,
                //duration_ms: duration,
                 } = track;
                const trackImage = album.images.length > 0 ? album.images[0] : { height: 0, width: 0, url: "" };
                // Insert album if not already present
                const albumQuery = `
                INSERT INTO Album (album_id, album_type, name, total_tracks, href, image_height, image_width, image_link)
                VALUES ($1, $2, $3, $4, $5, $6, $7, $8)
                ON CONFLICT (album_id) DO NOTHING;
            `;
                const albumValues = [
                    album.id,
                    album.album_type,
                    album.name,
                    album.total_tracks,
                    album.href,
                    trackImage.height,
                    trackImage.width,
                    trackImage.url,
                ];
                yield client.query(albumQuery, albumValues);
                // Insert track
                const trackQuery = `
                INSERT INTO Track (track_id, name, track_number, popularity, href, image_height, image_width, image_link, album_id)
                VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9)
                ON CONFLICT (track_id) DO NOTHING;
            `;
                const trackValues = [
                    trackId,
                    trackName,
                    trackNumber,
                    trackPopularity,
                    trackHref,
                    trackImage.height,
                    trackImage.width,
                    trackImage.url,
                    album.id,
                ];
                yield client.query(trackQuery, trackValues);
                // Insert artist-track relationship
                const relationshipQuery = `
                INSERT INTO TrackMadeBy (artist_id, track_id)
                VALUES ($1, $2)
                ON CONFLICT (artist_id, track_id) DO NOTHING;
            `;
                const relationshipValues = [artist.id, trackId];
                yield client.query(relationshipQuery, relationshipValues);
            }
            console.log(`Inserted artist ${artist.name} and ${tracks.length} tracks into the database.`);
        }
        catch (error) {
            console.error("Error inserting tracks into the database:", error);
        }
        finally {
            client.release();
        }
    });
}
