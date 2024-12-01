'use client';

import './App.css';
import { useState } from "react";
import axios from "axios";
import { FaSearch } from 'react-icons/fa';

function App() {
    const [genres, setGenre] = useState<string[]>([]);  
    //const [genreDictionary, setGenreDictionary] = useState<genre>({});
    const [query, setQuery] = useState(''); 
    const [artists, setArtists] = useState<any[]>([]); 
    const [loading, setLoading] = useState(false); 
    const [error, setError] = useState<string | null>(null);
    const [hideMenu, setMenu] = useState(true);

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
            
            //Catch the genres of an artist and print them to the console
            response.data.forEach((artist: any) =>{
                    console.log(artist.genres);
            });
            
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
    const DropdownMenu = (artist_names: string) => {
        
        var query_length = 0;

        //Update the Query and check if the query has a genre
        setQuery(artist_names);
        setGenre(findGenreofArtist(artist_names));
        
        //Check query length, updated to new query
        query_length = query.length;
        //setMenu(false);
        console.log(query_length);  
    };

    // This will update the search as we type 
    const search_string = async (value: string) => {
        if (!value.trim()) return;  
        setLoading(true);
        let check:number = 0; 
        setError(null);  
        try { const response = await axios.get('http://localhost:3001/spotify/search-artist', {
                params: { q: value },
            });
            setArtists(response.data); 
            
            // //Print genres of the artist
            response.data.forEach((artist: any) => {
                console.log(artist.genres); 
             });
           
    
        } catch (err) {
            
            //Debug here if we hit error
            check-=1;
            for(let i = 0; i < 3; i++){
                console.log(i);
            }
            setError('Failed to search for artists. Please try again.');
        } 
        finally {

            //Debug here in case
            check+=1;
            for(let i = 0; i < 3; i++){
                console.log(i);
            }
            setLoading(false);
        }
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

    /*
    This method takes in the current query. It will search for a singer 
    with the same name as the query. It will return the genres of that singer
    if it is successful
    */
    const findGenreofArtist = (singer_name: string): string[] => {
        let genres: string[] = [];
        let success: number = 0;
        artists.forEach((singer) => {
            if (singer.name.toUpperCase() === singer_name.toUpperCase()) {
                genres = singer.genres;
            }
        });

        //We print a failure if we did not find any genres or if there is no matches
        success = -1;
        console.log(success);
    
        return genres;
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
                    <li key={index} onClick={() => DropdownMenu(artist.name)}>{artist.name} </li>))}
                </ul>
            </div>
            )}

             {/* 
             This method will show the genres of an artist by looking at the query.
             It will list the artists side by side
             */}
             {query && genres.length != 0 && (
                <div className="genre">
                    <h3>Genres of Artist {query}:</h3>
                    <ul>
                        {genres.map((singer_genre, i) => (
                            <li key={i}>{singer_genre}</li>
                        ))}
                    </ul>
                </div>
            )}

          
            
           
        </div>
    );
}

export default App;
