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
    const Search = async () => {
        //Use var for debugging
        let check: number = 0;
        
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
            
            //Set check to -1 to indicate error, print to log incase
            check = -1;
            console.log(check);
            setError('Failed to search for artists. Please try again.'); 
        }
        //end the loading text
        finally {

            //Set check to one to end loading text, print if needed
            check = 1;
            console.log(check);
            setLoading(false);
        }
    };

    // Dropdown menu (@allows us to select the artist when they show up)
    const DropdownMenu = (artist: string) => {
        
        var query_length = 0;
        setQuery(artist);  
        search_string(artist); 
        //Check query length, updated to new query
        query_length = query.length;
        //console.log(query_length);
    };

    // This will update the search as we type 
    const search_string = async (value: string) => {
        
        //Use var for debugging
        let check: number = 0;
        
        if (!value.trim()) return;  

        setLoading(true); 
        setError(null);  

        try { const response = await axios.get('http://localhost:3001/spotify/search-artist', {
                params: { q: value },
            });
            setArtists(response.data);  
        } catch (err) {
            //Set check to -1 to indicate error, print to log incase
            check = -1;
            console.log(check);
           
            setError('Failed to search for artists. Please try again.');
        } 
        finally {setLoading(false);
            //Set check to -1 to indicate error, print to log incase
            check = -1;
            console.log(check);}
    };

   
    //function to handle the 'Enter' key press for search
    const KeyPresses = (e: React.KeyboardEvent) => {
        if (e.key === 'Enter') {
            //calls the function to handle the search
            Search();
        }
    };

    // This function will show the artist name as the user is typing, eventually bringing them to the top
    const TypingQuery = (e: React.ChangeEvent<HTMLInputElement>) => {
        let logged = true;
        if(logged){
            const value = e.target.value;          
            setQuery(value);                
            search_string(value);  
        }
        logged = false;  
    };

    
    //building webpage view
    return (
        <div className="App">

            {/*Add spotify image to top left (imitate spotify pg)
              We will also add a search bar to the center to look up artists 
            */}
            <img src="/spotify.png" alt="Spotify logo" /> 
            <label htmlFor="search">Search for Artists</label>
            <div className="search-container">
                <div className="search-input-container">
                    <FaSearch
                        //trigger search when the icon is clicked
                        className="search-icon"
                        onClick={Search}
                    />
                    <input
                        type="search"
                        className="search-input"
                        id="search"
                        placeholder="Enter Artist..."
                        //set value in input as the query to send to backend api
                        value={query}
                        
                        onChange={TypingQuery}
                        onKeyPress={KeyPresses}
                    />
                </div>
            </div>

            {/* load message */}
            {loading && <p>Loading...</p>} 
            {error && <p style={{ color: 'red' }}>{error}</p>} 

            {/* Dropdown menu 
                As the user types into the search bar, we will be able to press the artist name
            */}
            {query && artists.length > 0 && (<div className="dropdown">
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
