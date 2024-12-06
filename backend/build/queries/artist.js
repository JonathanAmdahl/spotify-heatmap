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
exports.default = insertArtistsIntoDatabase;
exports.getArtistWithTracksAndAlbums = getArtistWithTracksAndAlbums;
const db_1 = __importDefault(require("../db"));
function insertArtistsIntoDatabase(artists) {
    return __awaiter(this, void 0, void 0, function* () {
        const client = yield db_1.default.connect();
        try {
            // Prepare values for batch insertion
            const values = [];
            const queryParts = [];
            artists.forEach((artist, index) => {
                const { id, name, genres: artistGenres, popularity, href, images } = artist;
                const image = images.length > 0 ? images[0] : { height: 0, width: 0, url: '' };
                // Format genres as PostgreSQL-compatible array string
                const formattedGenres = `{${artistGenres.map((g) => `"${g}"`).join(',')}}`;
                // Build query parts and corresponding parameterized values
                queryParts.push(`
                 ($${index * 8 + 1}, $${index * 8 + 2}, $${index * 8 + 3}, $${index * 8 + 4}, 
                 $${index * 8 + 5}, $${index * 8 + 6}, $${index * 8 + 7}, $${index * 8 + 8})
             `);
                values.push(id, // $1, $9, etc.
                formattedGenres, // $2, $10, etc.
                name, // $3, $11, etc.
                popularity, // $4, $12, etc. 
                href, // $5, $13, etc.
                image.height || 0, // $6, $14, etc.
                image.width || 0, // $7, $15, etc.
                image.url || '' // $8, $16, etc.
                );
            });
            // Combine all parts into a single query
            const query = `
             INSERT INTO Artist (
                 artist_id, genre, name, popularity, href, image_height, image_width, image_link
             ) VALUES ${queryParts.join(',')}
             ON CONFLICT (artist_id) DO NOTHING;
         `;
            // Execute the query
            yield client.query(query, values);
            console.log(`${artists.length} artists inserted into the database.`);
        }
        catch (err) {
            console.error('Error inserting artists into the database:', err);
        }
        finally {
            client.release();
        }
    });
}
function getArtistWithTracksAndAlbums(artistId) {
    return __awaiter(this, void 0, void 0, function* () {
        const client = yield db_1.default.connect();
        try {
            const query = `
            SELECT
                a.artist_id,
                a.name AS artist_name,
                a.genre,
                a.popularity AS artist_popularity,
                a.href AS artist_href,
                jsonb_build_object(
                    'height', a.image_height,
                    'width', a.image_width,
                    'link', a.image_link
                ) AS artist_image,
                COALESCE(
                    jsonb_agg(DISTINCT jsonb_build_object(
                        'track_id', t.track_id,
                        'name', t.name,
                        'track_number', t.track_number,
                        'popularity', t.popularity,
                        'href', t.href,
                        'image', jsonb_build_object(
                            'height', t.image_height,
                            'width', t.image_width,
                            'link', t.image_link
                        ),
                        'album', jsonb_build_object(
                            'album_id', al.album_id,
                            'name', al.name,
                            'album_type', al.album_type,
                            'total_tracks', al.total_tracks,
                            'href', al.href,
                            'image', jsonb_build_object(
                                'height', al.image_height,
                                'width', al.image_width,
                                'link', al.image_link
                            )
                        )
                    )),
                    '[]'::jsonb
                ) AS tracks
            FROM
                Artist a
            LEFT JOIN
                TrackMadeBy tm ON a.artist_id = tm.artist_id
            LEFT JOIN
                Track t ON tm.track_id = t.track_id
            LEFT JOIN
                Album al ON t.album_id = al.album_id
            WHERE
                a.artist_id = $1
            GROUP BY
                a.artist_id, a.name, a.genre, a.popularity, a.href, a.image_height, a.image_width, a.image_link;
        `;
            const result = yield client.query(query, [artistId]);
            if (result.rows.length === 0) {
                return null; // Return null if no artist is found
            }
            return result.rows[0]; // Return the single artist with grouped tracks
        }
        catch (error) {
            console.error("Error fetching artist with tracks and albums:", error);
            throw error;
        }
        finally {
            client.release();
        }
    });
}
