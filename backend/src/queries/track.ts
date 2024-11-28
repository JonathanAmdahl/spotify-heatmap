import pool from "../db";
import { SpotifyArtist } from "../types/artist";
import { SpotifyTrackResponse } from "../types/track";

export async function insertArtistAndTopTracksIntoDatabase(
    artist: SpotifyArtist,
    tracksResponse: SpotifyTrackResponse
) {
    const client = await pool.connect();

    try {
        // Insert the artist into the Artist table
        const artistExistsQuery = `
            INSERT INTO Artist (artist_id, name, genre, popularity, href, image_height, image_width, image_link)
            VALUES ($1, $2, $3, $4, $5, $6, $7, $8)
            ON CONFLICT (artist_id) DO NOTHING;
        `;
        const artistImage = artist.images[0] || { height: null, width: null, url: null };

        await client.query(artistExistsQuery, [
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
            const {
                id: trackId,
                name: trackName,
                album,
                popularity: trackPopularity,
                href: trackHref,
                track_number: trackNumber,
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
            await client.query(albumQuery, albumValues);

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
            await client.query(trackQuery, trackValues);

            // Insert artist-track relationship
            const relationshipQuery = `
                INSERT INTO TrackMadeBy (artist_id, track_id)
                VALUES ($1, $2)
                ON CONFLICT (artist_id, track_id) DO NOTHING;
            `;
            const relationshipValues = [artist.id, trackId];
            await client.query(relationshipQuery, relationshipValues);
        }

        console.log(`Inserted artist ${artist.name} and ${tracks.length} tracks into the database.`);
    } catch (error) {
        console.error("Error inserting tracks into the database:", error);
    } finally {
        client.release();
    }
}
