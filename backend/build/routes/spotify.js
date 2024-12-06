"use strict";
var __createBinding = (this && this.__createBinding) || (Object.create ? (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    var desc = Object.getOwnPropertyDescriptor(m, k);
    if (!desc || ("get" in desc ? !m.__esModule : desc.writable || desc.configurable)) {
      desc = { enumerable: true, get: function() { return m[k]; } };
    }
    Object.defineProperty(o, k2, desc);
}) : (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    o[k2] = m[k];
}));
var __setModuleDefault = (this && this.__setModuleDefault) || (Object.create ? (function(o, v) {
    Object.defineProperty(o, "default", { enumerable: true, value: v });
}) : function(o, v) {
    o["default"] = v;
});
var __importStar = (this && this.__importStar) || function (mod) {
    if (mod && mod.__esModule) return mod;
    var result = {};
    if (mod != null) for (var k in mod) if (k !== "default" && Object.prototype.hasOwnProperty.call(mod, k)) __createBinding(result, mod, k);
    __setModuleDefault(result, mod);
    return result;
};
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
const axios_1 = __importDefault(require("axios"));
const express_1 = __importDefault(require("express"));
const artist_1 = __importStar(require("../queries/artist"));
const spotify_1 = require("../functions/spotify");
const track_1 = require("../queries/track");
const router = express_1.default.Router();
router.get('/search-artist', (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    //uncomment for debugging statement
    //console.log('Received search request for:', req.query.q);
    const SPOTIFY_SEARCH_URL = 'https://api.spotify.com/v1/search';
    const artistName = req.query.q;
    if (!artistName)
        return res.status(400).json({ error: 'Artist name is required' });
    try {
        const accessToken = yield (0, spotify_1.getSpotifyAccessToken)();
        const response = yield axios_1.default.get(SPOTIFY_SEARCH_URL, {
            headers: { Authorization: `Bearer ${accessToken}` },
            params: {
                q: artistName,
                type: 'artist',
                limit: 10,
            },
        });
        const artists = response.data.artists.items;
        yield (0, artist_1.default)(artists);
        res.json(artists);
    }
    catch (error) {
        console.error('Error searching for artist:', error);
        res.status(500).json({ error: 'Failed to search for artist' });
    }
}));
router.get('/artist-top-tracks', (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    //uncomment for debugging statement
    console.log('Received search request for:', req.query);
    const { id, market } = req.query;
    if (!id || typeof id !== 'string') {
        return res.status(400).json({ error: 'Artist ID (id) is required and must be a string.' });
    }
    try {
        // Check if artist and their tracks/albums already exist in the database
        const artistWithTracksAndAlbums = yield (0, artist_1.getArtistWithTracksAndAlbums)(id);
        if (artistWithTracksAndAlbums && artistWithTracksAndAlbums.tracks.some((track) => track.name !== null)) {
            return res.json(artistWithTracksAndAlbums); // Return early if data exists
        }
        const SPOTIFY_ARTIST_URL = `https://api.spotify.com/v1/artists/${id}`;
        const SPOTIFY_TOP_TRACKS_URL = `https://api.spotify.com/v1/artists/${id}/top-tracks`;
        const accessToken = yield (0, spotify_1.getSpotifyAccessToken)();
        // Fetch artist info and top tracks concurrently from Spotify
        const [artistResponse, topTracksResponse] = yield Promise.all([
            axios_1.default.get(SPOTIFY_ARTIST_URL, {
                headers: { Authorization: `Bearer ${accessToken}` },
            }),
            axios_1.default.get(SPOTIFY_TOP_TRACKS_URL, {
                headers: { Authorization: `Bearer ${accessToken}` },
                params: { market: market || 'US' },
            }),
        ]);
        const artist = artistResponse.data;
        const tracks = topTracksResponse.data;
        // Insert artist and tracks into the database
        yield (0, track_1.insertArtistAndTopTracksIntoDatabase)(artist, tracks);
        // Fetch the newly inserted artist with tracks and albums
        const newArtistWithTracksAndAlbums = yield (0, artist_1.getArtistWithTracksAndAlbums)(id);
        res.json(newArtistWithTracksAndAlbums);
    }
    catch (error) {
        console.error('Error fetching artist or top tracks:', error);
        if (axios_1.default.isAxiosError(error) && error.response) {
            res.status(error.response.status).json({ error: error.response.data });
        }
        else {
            res.status(500).json({ error: 'Failed to fetch artist or top tracks' });
        }
    }
}));
exports.default = router;
