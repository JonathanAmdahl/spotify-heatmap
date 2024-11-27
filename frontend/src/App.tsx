'use client';

import './App.css';
import { useState } from "react";
import axios from "axios";
import { FaSearch } from 'react-icons/fa';

function App() {
    const [query, setQuery] = useState(''); 
    const [artists, setArtists] = useState<any[]>([]); 
    const [loading, setLoading] = useState(false); 
    const [error, setError] = useState<string | null>(null);

    // Function to handle search query
    const handleSearch = async () => {
        if (!query.trim()) return; 
        setLoading(true);
        setError(null);

        try {
            // Call the backend API to search for artists
            const response = await axios.get('/search-artist', {
                params: { q: query },
            });
            setArtists(response.data); // Set the search results to state
        } catch (err) {
            setError('Failed to search for artists. Please try again.'); 
        } finally {
            setLoading(false);
        }
    };

    // Function to handle the 'Enter' key press for search
    const handleKeyPress = (e: React.KeyboardEvent) => {
        if (e.key === 'Enter') {
            handleSearch();
        }
    };

    return (
        <div className="App">
            <img src="/spotify.png" alt="Spotify logo" />
            <label htmlFor="search">Search Artists</label>
            <div className="search-container">
                <div className="search-input-container">
                    <FaSearch
                        className="search-icon"
                        onClick={handleSearch} // Trigger search when the icon is clicked
                    />
                    <input
                        type="search"
                        className="search-input"
                        id="search"
                        placeholder="Enter Artist..."
                        value={query}
                        onChange={(e) => setQuery(e.target.value)}
                        onKeyPress={handleKeyPress}
                    />
                </div>
            </div>

            {loading && <p>Loading...</p>} {/* Show loading message */}
            {error && <p style={{ color: 'red' }}>{error}</p>} {/* Show error message */}

            <div className="results">
                {artists.length > 0 ? (
                    <ul>
                        {artists.map((artist: any, index: number) => (
                            <li key={index}>{artist.name}</li>
                        ))}
                    </ul>
                ) : (
                    <p>No results found</p>
                )}
            </div>
        </div>
    );
}

export default App;
