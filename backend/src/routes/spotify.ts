import axios from 'axios';
import express, { Request, Response } from 'express';
import pool from '../db';
import insertArtistsIntoDatabase from '../queries/artist';
import { Artist } from '../types/artist';
import { getSpotifyAccessToken } from '../functions/spotify';
import insertTopTracksIntoDatabase from '../queries/track';

const router = express.Router();

router.get('/search-artist', async (req: Request, res: Response) => {
    console.log('Received search request for:', req.query.q);
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
    const { id, market } = req.query;
    if (!id || typeof id !== 'string') return res.status(400).json({ error: 'Artist ID (id) is required and must be a string.' });

    const SPOTIFY_TOP_TRACKS_URL = `https://api.spotify.com/v1/artists/${id}/top-tracks`;
    try {
        const accessToken = await getSpotifyAccessToken();
        const response = await axios.get(SPOTIFY_TOP_TRACKS_URL, {
            headers: { Authorization: `Bearer ${accessToken}`},
            params: {market: market || 'US'},
        });

        const tracks = response.data.tracks;
        await insertTopTracksIntoDatabase(id, tracks);

        res.json(tracks);
    } catch (error) {
        console.error('Error fetching artist top tracks:', error);

        if (axios.isAxiosError(error) && error.response) {
            res.status(error.response.status).json({ error: error.response.data });
        } else {
            res.status(500).json({ error: 'Failed to fetch artist top tracks' });
        }
    }
});

export default router;
