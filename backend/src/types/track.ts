export interface SpotifyTrackResponse {
    tracks: Track[];
}

interface Track {
    album: Album;
    artists: Artist[];
    available_markets: string[];
    disc_number: number;
    duration_ms: number;
    explicit: boolean;
    external_ids: {
        isrc?: string;
        ean?: string;
        upc?: string;
    };
    external_urls: {
        spotify: string;
    };
    href: string;
    id: string;
    is_playable: boolean;
    linked_from?: Record<string, string>; // Could be an empty object or specific structure
    restrictions?: {
        reason: string;
    };
    name: string;
    popularity: number;
    preview_url?: string;
    track_number: number;
    type: string;
    uri: string;
    is_local: boolean;
}

interface Album {
    album_type: string;
    total_tracks: number;
    available_markets: string[];
    external_urls: {
        spotify: string;
    };
    href: string;
    id: string;
    images: Image[];
    name: string;
    release_date: string;
    release_date_precision: string;
    restrictions?: {
        reason: string;
    };
    type: string;
    uri: string;
    artists: Artist[];
}

interface Artist {
    external_urls: {
        spotify: string;
    };
    href: string;
    id: string;
    name: string;
    type: string;
    uri: string;
}

interface Image {
    url: string;
    height: number;
    width: number;
}
