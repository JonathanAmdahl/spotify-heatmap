import axios from "axios";

let spotifyAccessToken: [string, number | null] = ['', null];
export async function getSpotifyAccessToken(): Promise<string> {
    const currentTime = Math.floor(Date.now() / 1000);
    if(spotifyAccessToken[1] && currentTime < spotifyAccessToken[1]) {
        return spotifyAccessToken[0];
    }

    const clientId: string = process.env.SPOTIFY_CLIENT_ID || '';
    const clientSecret: string = process.env.SPOTIFY_CLIENT_SECRET || '';
    const tokenUrl = 'https://accounts.spotify.com/api/token';
    const authHeader = Buffer.from(`${clientId}:${clientSecret}`).toString('base64');
  
    try {
      const response = await axios.post(
        tokenUrl,
        'grant_type=client_credentials',
        {
          headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
            'Authorization': `Basic ${authHeader}`,
          },
        }
      );
      spotifyAccessToken = [response.data.access_token, Math.floor(Date.now() / 1000) + response.data.expires_in];
      return response.data.access_token;
    } catch (error) {
      console.error('Error obtaining access token:', error);
      throw new Error('Failed to get access token');
    }
}