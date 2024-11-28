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

    //function to handle search query & calls backend search-artist api
    const handleSearch = async () => {
        //returns if empty or only whitespace
        if (!query.trim()) return;
        //start loading so user knows it's in progress
        setLoading(true);
        setError(null);

        //try calling backend api search-artist to get a list of artists with the search query
        try {
            //get response from backend/routes/spotify.ts/search-artist when q = search input
            const response = await axios.get('http://localhost:3001/spotify/search-artist', {       //REPLACE THE PORT #s WITH YOUR BACK END PORT TO MAKE IT WORK (someone automate this pls)
                params: { q: query },
            });
            //set the search results to state
            setArtists(response.data);
        }
        //catch any errors and display on page an error
        catch (err) {
            setError('Failed to search for artists. Please try again.'); 
        }
        //end the loading text
        finally {
            setLoading(false);
        }
    };

    // Dropdown menu (Allow us to Select)
    const DropdownMenu = (artist: string) => {
        setQuery(artist);  
        handleSearchString(artist); 
        setArtists([]);
    };

    // This will update the search as we type 
    const handleSearchString = async (value: string) => {
        if (!value.trim()) return;  

        setLoading(true); 
        setError(null);  

        try { const response = await axios.get('http://localhost:3001/spotify/search-artist', {
                params: { q: value },
            });
            setArtists(response.data);  
        } catch (err) {
            setError('Failed to search for artists. Please try again.');
        } 
        finally {
            setLoading(false);
        }
    };

    //function to handle the 'Enter' key press for search
    const handleKeyPress = (e: React.KeyboardEvent) => {
        if (e.key === 'Enter') {
            //calls the function to handle the search
            handleSearch();
        }
    };

    // This function will show the artist name as the user is typing
    const handleDynamicTyping = (e: React.ChangeEvent<HTMLInputElement>) => {
        const value = e.target.value;          
        setQuery(value);                
        handleSearchString(value);  
    };

    //building webpage view
    return (
        <div className="App">
            <img src="/spotify.png" alt="Spotify logo" /> 
            <label htmlFor="search">Search for Artists</label>
            <div className="search-container">
                <div className="search-input-container">
                    <FaSearch
                        //trigger search when the icon is clicked
                        className="search-icon"
                        onClick={handleSearch}
                    />
                    <input
                        type="search"
                        className="search-input"
                        id="search"
                        placeholder="Enter Artist..."
                        //set value in input as the query to send to backend api
                        value={query}
                        
                        onChange={handleDynamicTyping}
                        onKeyPress={handleKeyPress}
                    />
                </div>
            </div>

            {loading && <p>Loading...</p>} {/* show loading message */}
            {error && <p style={{ color: 'red' }}>{error}</p>} {/* show error message */}

            {/* Dropdown menu 
                As the user types into the search bar, we will be able to press the artist name
            */}
            {query && artists.length > 0 && (
            <div className="dropdown">
                <ul>
                    {artists.map((artist: any, index: number) => (
                        <li key={index} onClick={() => DropdownMenu(artist.name)}>{artist.name}</li>))}
                </ul>
            </div>
            )}

            {/*<div className="results">
                
                {artists.length > 0 ? (
                    <ul>
                        {artists.map((artist: any, index: number) => (
                            <li key={index}>{artist.name}</li>
                                
                        ))}
                    </ul>
                ) : (
                    <p>No results found</p>
                )}
            </div>*/}
        </div>
    );
}

export default App;
