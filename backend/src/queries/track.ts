import pool from "../db";

async function insertTopTracksIntoDatabase(artistId: string, tracks: any[]) {
    const client = await pool.connect();

    try {
        // Ensure the artist exists in the Artist table
        const artistExistsQuery = `
            INSERT INTO Artist (artist_id, genre, name, popularity, href, image_height, image_width, image_link)
            VALUES ($1, $2, $3, $4, $5, $6, $7, $8)
            ON CONFLICT (artist_id) DO NOTHING;
        `;

        // Fetch artist details (mocking as an example, replace with actual API call or data)
        const artistDetails = {
            id: artistId,
            genres: [], // Populate with actual genres
            name: "Artist Name", // Replace with actual name
            popularity: 0, // Replace with actual popularity
            href: `https://api.spotify.com/v1/artists/${artistId}`,
            image_height: 0, // Replace with actual image height
            image_width: 0, // Replace with actual image width
            image_link: "", // Replace with actual image link
        };

        await client.query(artistExistsQuery, [
            artistDetails.id,
            artistDetails.genres,
            artistDetails.name,
            artistDetails.popularity,
            artistDetails.href,
            artistDetails.image_height,
            artistDetails.image_width,
            artistDetails.image_link,
        ]);
        
        for (const track of tracks) {
            const {
                id: trackId,
                name: trackName,
                album,
                popularity: trackPopularity,
                href: trackHref,
                preview_url: trackPreviewUrl,
                track_number: trackNumber,
                duration_ms: duration,
                explicit,
                available_markets,
            } = track;

            const image = album.images.length > 0 ? album.images[0] : { height: 0, width: 0, url: '' };

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
                image.height,
                image.width,
                image.url,
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
                image.height,
                image.width,
                image.url,
                album.id,
            ];
            await client.query(trackQuery, trackValues);

            // Insert artist-track relationship
            const relationshipQuery = `
                INSERT INTO TrackMadeBy (artist_id, track_id)
                VALUES ($1, $2)
                ON CONFLICT (artist_id, track_id) DO NOTHING;
            `;
            const relationshipValues = [artistId, trackId];
            await client.query(relationshipQuery, relationshipValues);
        }

        console.log(`${tracks.length} tracks inserted for artist ID ${artistId}`);
    } catch (error) {
        console.error('Error inserting tracks into the database:', error);
    } finally {
        client.release();
    }
}

export default insertTopTracksIntoDatabase; 
