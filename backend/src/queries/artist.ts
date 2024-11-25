import pool from '../db';
import { Artist } from '../types/artist';

export default async function insertArtistsIntoDatabase(artists: Artist[]) {
    const client = await pool.connect();

    try {
         // Prepare values for batch insertion
         const values: any[] = [];
         const queryParts: string[] = [];
 
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
             values.push(
                 id, // $1, $9, etc.
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
         await client.query(query, values);
         console.log(`${artists.length} artists inserted into the database.`);
    } catch (err) {
        console.error('Error inserting artists into the database:', err);
    } finally {
        client.release();
    }
}