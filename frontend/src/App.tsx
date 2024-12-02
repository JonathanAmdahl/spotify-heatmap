'use client';

import './App.css';
import { useState } from "react";
import axios from "axios";
import { FaSearch } from 'react-icons/fa';

function App() {
    const [genres, setGenre] = useState<string[]>([]);  
    const [artistImg, setArtistImg] = useState<string | null>(null);
    const [topTracks, setTopTracks] = useState<any[]>([]); 
    //const [genreDictionary, setGenreDictionary] = useState<genre>({});
    const [query, setQuery] = useState(''); 
    const [artists, setArtists] = useState<any[]>([]); 
    const [loading, setLoading] = useState(false); 
    const [error, setError] = useState<string | null>(null);
    const [hideMenu, setMenu] = useState(true);
    const [entered, setEntered] = useState(false);

    //stores the api url needed to call baclend functions
    const apiUrl = process.env.NEXT_PUBLIC_API_URL;

    //function to handle search query & calls backend search-artist api
    const searchFunc = async () => {
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
            const response = await axios.get(`${apiUrl}/spotify/search-artist`, {
                params: { q: query },
            });
            //set the search results to state
            setArtists(response.data);
            
            //Catch the genres of an artist and print them to the console
            response.data.forEach((artist: any) =>{
                    console.log(artist.genres);
            });

            //if user has pressed enter then start the artist detail function to display the artist info in the query
            //reset set entered so it can be triggered again
            if (entered == true) {
                artistDetails(query)
                setEntered(false)
            }
            
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
        let hideing = false;
        var query_length = 0;

        //Update the Query and check if the query has a genre
        setQuery(artist_names);

        for(let i = 0; i < 3; i++){
            console.log(i);
        }
        
        //Check query length, updated to new query
        query_length = query.length;
        
        //Hide dropdown quick
        setMenu(false);
        console.log(query_length);  
    };
   
    //function to handle the 'Enter' key press for search
    const KeyPresses = (e: React.KeyboardEvent) => {
        if (e.key === 'Enter') {
            setEntered(true)
            //calls the function to handle the search
            searchFunc();
        }
    };

    // This function will show the artist name as the user is typing, eventually bringing them to the top
    const TypingQuery = (e: React.ChangeEvent<HTMLInputElement>) => {
        let logged = true;
        setMenu(true);

        //while user is typing and hasn't clicked on an artist yet
        //set the value to the search input and the image amd genre to
        //nothing so no details are shown until ready, continue to search
        //so drop down menu is updated
        if(logged){
            const value = e.target.value;          
            setQuery(value);            
            setArtistImg(null);
            setGenre([]); 
            setTopTracks([])
            searchFunc()
        }
        logged = false;  
    };

    //function that sets all the artist deatils such as genres and images
    const artistDetails = async (artistName: string) => {
        //set the query to the artist name
        setQuery(artistName);

        //find the selected artist in the artists array
        //by setting all characters to uppercase so they match even if the casing is different
        const selectedArtist = artists.find(
            (artist) => artist.name.toUpperCase() === artistName.toUpperCase()
        );

        //if found...
        if (selectedArtist) {
            //... set the genres and image
            setGenre(selectedArtist.genres || []);
            setArtistImg(selectedArtist.images?.[0]?.url || null);


            //try to search for top tracks by calling back end api
            try {
                const response = await axios.get(`${apiUrl}/spotify/artist-top-tracks`, {
                    params: { id: selectedArtist.id, market: 'US' }, 

                });

                //set top tracks to the response with the array of top tracks
                setTopTracks(response.data.tracks);
                console.log(topTracks);



            } catch (err) {
                setError('Failed to fetch top tracks. Please try again.');
            }

        }

        setMenu(false);
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
                        onClick={searchFunc}
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
                As the user types into the search bar, we will be able to press the artist name and artist details are updated
                when an artist in the list is clicked on
            */}
            {query && hideMenu && artists.length > 0 && (
                <div className="dropdown">
                    <ul>
                        {artists.map((artist: any, index: number) => (
                            <li key={index} onClick={() => artistDetails(artist.name)}>{artist.name} </li>))}
                    </ul>
                </div>
            )}


             {/* 
             this willl show the artist details such as the artist image and genres on the LHS
             */}
            {query && (
                <div className="artist-details">

                        {artistImg && (
                            <img src={artistImg} alt={`${query} Image`} className="artist-image" />
                        )}
                        <h2>{query}</h2>
                        {genres.length > 0 && (
                            <>
                                <h3>Genres:
                                    {genres.map((singer_genre, i) => (
                                        <li key={i}>{singer_genre}</li>
                                    ))}</h3>
                            </>
                        )}
                </div>
            )}

            {/* 
             this willl show the artist's top track in the form of a heatmap and randomize
             it's position so that it's somewhere in the heatmap container,
             it should also show on each bubble the track name and album cover
             */}
            {topTracks.length > 0 && (
                <div className="heatmap-container">
                    {topTracks.map((track: any, index: number) => {

                        return (
                            <div
                                key={index}
                                className="heatmap-bubble"
                                style={{
                                    width: `${(track.popularity * 3)}px`,
                                    height: `${(track.popularity * 3)}px`,
                                    left: `${(Math.random() * (2200 - track.popularity * 3))}px`,
                                    top: `${(Math.random() * (1000 - track.popularity * 3))}px`,
                                }}
                                title={track.name}
                            >
                                <img src={track.album.images?.[0]?.url || null} alt={track.album.name} />



                                <span className="track-name">{track.name}</span>
                            </div>
                        )
                    })
                    }
                </div>
            )}


        </div>
    );
}

export default App;
