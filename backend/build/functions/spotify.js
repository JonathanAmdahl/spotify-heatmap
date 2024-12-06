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
exports.getSpotifyAccessToken = getSpotifyAccessToken;
const axios_1 = __importDefault(require("axios"));
let spotifyAccessToken = ['', null];
function getSpotifyAccessToken() {
    return __awaiter(this, void 0, void 0, function* () {
        const currentTime = Math.floor(Date.now() / 1000);
        if (spotifyAccessToken[1] && currentTime < spotifyAccessToken[1]) {
            return spotifyAccessToken[0];
        }
        const clientId = process.env.SPOTIFY_CLIENT_ID || '';
        const clientSecret = process.env.SPOTIFY_CLIENT_SECRET || '';
        const tokenUrl = 'https://accounts.spotify.com/api/token';
        const authHeader = Buffer.from(`${clientId}:${clientSecret}`).toString('base64');
        try {
            const response = yield axios_1.default.post(tokenUrl, 'grant_type=client_credentials', {
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded',
                    'Authorization': `Basic ${authHeader}`,
                },
            });
            spotifyAccessToken = [response.data.access_token, Math.floor(Date.now() / 1000) + response.data.expires_in];
            return response.data.access_token;
        }
        catch (error) {
            console.error('Error obtaining access token:', error);
            throw new Error('Failed to get access token');
        }
    });
}
