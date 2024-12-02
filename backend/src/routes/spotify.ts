import axios from 'axios';
import express, { Request, Response } from 'express';
import insertArtistsIntoDatabase, { getArtistWithTracksAndAlbums } from '../queries/artist';
import { Artist, SpotifyArtist } from '../types/artist';
import { getSpotifyAccessToken } from '../functions/spotify';
import { insertArtistAndTopTracksIntoDatabase } from '../queries/track';
import { SpotifyTrackResponse } from '../types/track';

const router = express.Router();

router.get('/search-artist', async (req: Request, res: Response) => {
    //uncomment for debugging statement
    //console.log('Received search request for:', req.query.q);
    const SPOTIFY_SEARCH_URL = 'https://api.spotify.com/v1/search';
    const artistName = req.query.q as string;

    if (!artistName) return res.status(400).json({ error: 'Artist name is required' });

    try {
        const accessToken = await getSpotifyAccessToken();
        const response = await axios.get(SPOTIFY_SEARCH_URL, {
        headers: { Authorization: `Bearer ${accessToken}` },
        params: {
            q: artistName,
            type: 'artist',
            limit: 10,
        },
        });

        const artists: Artist[] = response.data.artists.items;
        await insertArtistsIntoDatabase(artists);

        res.json(artists);
    } catch (error) {
        console.error('Error searching for artist:', error);
        res.status(500).json({ error: 'Failed to search for artist' });
    }
});


router.get('/artist-top-tracks', async (req: Request, res: Response) => {
    //uncomment for debugging statement
    console.log('Received search request for:', req.query);
    const { id, market } = req.query;

    if (!id || typeof id !== 'string') {
        return res.status(400).json({ error: 'Artist ID (id) is required and must be a string.' });
    }

    try {
        // Check if artist and their tracks/albums already exist in the database
        const artistWithTracksAndAlbums = await getArtistWithTracksAndAlbums(id);
        if (artistWithTracksAndAlbums && artistWithTracksAndAlbums.tracks.some((track: any) => track.name !== null)) {
            return res.json(artistWithTracksAndAlbums); // Return early if data exists
        }

        const SPOTIFY_ARTIST_URL = `https://api.spotify.com/v1/artists/${id}`;
        const SPOTIFY_TOP_TRACKS_URL = `https://api.spotify.com/v1/artists/${id}/top-tracks`;

        const accessToken = await getSpotifyAccessToken();

        // Fetch artist info and top tracks concurrently from Spotify
        const [artistResponse, topTracksResponse] = await Promise.all([
            axios.get(SPOTIFY_ARTIST_URL, {
                headers: { Authorization: `Bearer ${accessToken}` },
            }),
            axios.get(SPOTIFY_TOP_TRACKS_URL, {
                headers: { Authorization: `Bearer ${accessToken}` },
                params: { market: market || 'US' },
            }),
        ]);

        const artist: SpotifyArtist = artistResponse.data;
        const tracks: SpotifyTrackResponse = topTracksResponse.data;

        // Insert artist and tracks into the database
        await insertArtistAndTopTracksIntoDatabase(artist, tracks);

        // Fetch the newly inserted artist with tracks and albums
        const newArtistWithTracksAndAlbums = await getArtistWithTracksAndAlbums(id);

        res.json(newArtistWithTracksAndAlbums);
    } catch (error) {
        console.error('Error fetching artist or top tracks:', error);

        if (axios.isAxiosError(error) && error.response) {
            res.status(error.response.status).json({ error: error.response.data });
        } else {
            res.status(500).json({ error: 'Failed to fetch artist or top tracks' });
        }
    }
});

export default router;
