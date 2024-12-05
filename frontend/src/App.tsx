'use client';

import './App.css';
import { useState } from "react";
import axios from "axios";
import { FaSearch } from 'react-icons/fa';


function App() {
    //useStates we will need for our website. Each of these usetates will be important for the website so we can store and retrrieve information
    //regarding our artists and their respective attributes, also alerts us when we need to display smth or not
    const [genres, setGenre] = useState<string[]>([]);  
    const [singerImg, setSingerImg] = useState<string | null>(null);
    const [topTracks, setTrack] = useState<any[]>([]);
    const [query, setQuery] = useState(''); 
    const [artists, setArtists] = useState<any[]>([]); 
    const [loads, setLoads] = useState(false); 
    const [error, setError] = useState<string | null>(null);
    const [hideMenu, setMenu] = useState(true);
    const [entered, setEntered] = useState(false);
    const [position, setPositions] = useState<{ width: number; height: number; size: number }[]>([]);

    //stores the api url needed to call backend functions
    const apiUrl = process.env.NEXT_PUBLIC_API_URL;
    
    /*
        HANDLING ALL SEARCH BAR FUNCTION STUFF
    */

    //function to handle search query & calls backend search-artist api
    const searchFunc = async () => {
        //Use var for debugging
        let check: number = 0;
        
        //returns if search input is empty or only whitespaces
        if (!query.trim()) return;

        //start loading so user knows it's in progress
        setLoads(true);
        console.log(check);
        setError(null);

        //try calling backend api search-artist to get a list of artists with the search query
        try {
            //get response from backend/routes/spotify.ts/search-artist when q = search input
            const response = await axios.get(`${apiUrl}/spotify/search-artist`, {
                params: { q: query },
            });

            //set the search results to useState setArtist
            setArtists(response.data);
            
            //catch the genres of an artist and print them to the console (showing it's populating)
            response.data.forEach((artist: any) =>{
                    console.log(artist.genres);
            });

            //if user has pressed enter then start the artist detail function to display the artist info in the query
            //reset set entered so it can be triggered again
            if (entered == true) {
                artistDetails(query)
                setEntered(false)
                console.log(check);
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
            setLoads(false);
        }
    };

    // Dropdown menu (@allows us to select the artist when they show up)
    //didn't end up using in the end but left it for future uses
    const DropdownMenu = (artist_names: string) => {
        let hideing = false;
        var query_length = 0;

        //Update the Query and check if the query has a genre
        setQuery(artist_names);

        //Debugging
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
        let check: number = 1;

        //if user hits enter, will call and let searchFunc know to show artist details as well
        if (e.key === 'Enter') {
            setEntered(true);
            searchFunc();
            console.log(check);
        }

        //Debug, if we are unsuccessful check the console
        check -= 1;
        console.log(check);
    };

    //This function will show and update the artist name as the user is typing, eventually bringing them to the top
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
            setSingerImg(null);
            setGenre([]); 
            setTrack([])
            searchFunc()
        }
        logged = false;  
    };

    /*
        ARTIST DETAIL FUNCTION
    */

    //function that sets all the artist deatils such as genres and images
    const artistDetails = async (artistName: string) => {
        let check: number = 0;
        
        //set the query to the artist name
        setQuery(artistName);

        //find the selected artist in the artists array
        //by setting all characters to uppercase so they match even if the casing is different
        const singer = artists.find(
            (artist) => artist.name.toUpperCase() === artistName.toUpperCase()
        );

        //if found...
        if (singer) {
            //... set the genres and image
            setGenre(singer.genres);
            setSingerImg(singer.images?.[0]?.url || null);


            //Get artist's top tracks by calling back end api
            try {
                const response = await axios.get(`${apiUrl}/spotify/artist-top-tracks`, {
                    params: { id: singer.id, }, 

                });
                console.log(check);

                //set top tracks to the response with the array of top tracks
                setTrack(response.data.tracks);
                console.log(topTracks);


            } catch (err) {

                //Error catch, check console
                check = -1;
                console.log(check);
                setError('Failed to fetch top tracks. Please try again.');
            }

        }

        setMenu(false);
    };

    /*
        BUBBLE COSMETICS HERE (an attempt)
    */

    /*
    Calculate if two circles overlap
    We will take the radius, x, y of two circles
    Then we will check if they overlap in some capacity
    If they do overlap, return true otherwise false
    */
    const intersection = (bubbleW1: number, bubbleL1: number, rad0: number, bubbleW2: number, bubbleL2: number, rad1: number): boolean => {
        const rad_tgt = rad0 + rad1;
        const width_tgt = (bubbleW1 - bubbleW2) ** 2;
        const length_tgt = (bubbleL2 - bubbleL1) ** 2;
        const ans = Math.sqrt(width_tgt + length_tgt);
        return ans <= rad_tgt;
    }

    /*
    This method will be used to determine if two circles overlap
    We will iterate through every bubble currently on the website
    We will check if the current bubble overlaps with any of the previous bubbles
    If it does, return true otherwise false
    */
    const bubble_Alert = (w: number, l: number, big: number) => {
        //let i = 0;
        const no_hit = false;
        let track_bubble: any;

        //Iterate through the bubbles and check for any overlap
        for (let i = 0; i < position.length; i++) {
            track_bubble = position[i];
            const overlapse = intersection(w + big, l + big, big, track_bubble.width + track_bubble.size / 2, track_bubble.height + track_bubble.size / 2, track_bubble.size / 2);

            //overlap on the bubble
            if (overlapse) {
                return true;
            }
        }

        //No overlape
        return no_hit;

    }

    /*
    This function will calculate the size of the bubble of each track
    Additionally, it will position the bubbles on our website
    */
    const bubble_Size = (track : any) =>{
       
       //Instance variables to add our bubbles to the website
       let track_Real = false;
       let inter = true;
       let w: number = 0;
       let l: number = 0;

       //Check track popularity
       console.log(track.popularity);
       //console.log(track.genre);

       //Check if track is real ofc
       if(track){
        track_Real = true;
       }

       //If track is exists.....
       if(track_Real){
            
            //Find popularity of track and multiply it by 3. This will be the size ouf our bubble
            //makes it so super unpopular tracks are still visible to users
            let pop : number = 0;
            pop = track.popularity * 3;

            let repeat = 0;
            if(position.length != 0){

                /*
                We want to lower the overlap of the bubbles the best we can.
                We will call the bubble_Alert function to check if two bubbles overlap
                If they overlap, we will try to find a new position.
                If we cannot find a new position, we will break from the while loop and give the current track a random
                location that may overlap other bubbles 
                */
                while (inter && repeat < 100){
                    w = (Math.random() * (window.innerWidth - pop));
                    l = (Math.random() * (window.innerHeight - pop));
                    inter = bubble_Alert(w, l, pop/2);
                    repeat += 1;
                    console.log("Overlap");
                }

                /*
                If we successfully found our bubble location (or we tried to for 100 tries), return our bubble to the website
                */
                if (inter === false){
                    //setPositions([...position, {width: width_W, height: length, size: pop}]);
                    return  {
                        width: `${(pop)}px`,
                        height: `${(pop)}px`,
                        left: `${w}px`,
                        top: `${l}px`,
                    };
                }

                /*
                If we did not find our bubble a unique location, give it a random location (failed to find a new spot without overlap)
                */
                else{
                    const newW = (Math.random() * (window.innerWidth - pop));
                    const newL = (Math.random() * (window.innerHeight - pop));
                    return  {
                        
                        width: `${(pop)}px`,
                        height: `${(pop)}px`,
                        left: `${newW}px`,
                        top: `${newL}px`,
                    };
                }
             
            }

            /*
            If this is our very first bubble (we had none prior), then add it to the website
            Also, add it to our array which we will use to compare locations
            */
            else{
                w = (Math.random() * (window.innerWidth - pop));
                l = (Math.random() * (window.innerHeight - pop));
                console.log("First");
                setPositions([...position, {width: w, height: l, size: pop}]);
                return  {
                    width: `${(pop)}px`,
                    height: `${(pop)}px`,
                    left: `${w}px`,
                    top: `${l}px`,
                };
               
            }
    }
    }

    /*

        WEBPAGE CODE

     */

    //building webpage view
    return (
        <div className="App">

            {/*Add spotify image to top left (imitate spotify pg)
              We will also add a search bar to the center to look up artists
              */}
            <img src="/spotify.png" alt="Spotify logo" /> 
            <label htmlFor="search">Search for Artists</label>
            <div className="searching">
                <div className="search-for-input">
                    <FaSearch
                        //trigger search when the icon is clicked
                        className="search-pointer"
                        onClick={searchFunc}
                    />
                    <input
                        type="search"
                        className="find-input"
                        id="search"
                        placeholder="Enter Artist..."
                        //set value in input as the query to send to backend api
                        value={query}
                        
                        onChange={TypingQuery}
                        onKeyPress={KeyPresses}
                    />
                </div>
            </div>

            {/* loading message */}
            {loads && <p>Loading..</p>} 
            {error && <p className="error">{error}</p>} 

            {/* Dropdown menu 
                As the user types into the search bar, we will be able to press the artist name and artist details are updated
                when an artist in the list is clicked on
            */}

            {query && hideMenu && artists.length > 0 && (
                <div className="dropdown">
                    <ul>
                        {artists.map((artist: any, index: number) => (
                            <li key={index} onClick={() => artistDetails(artist.name)}>{artist.name} 
                            </li>))}
                    </ul>
                </div>
            )}


             {/* 
             this willl show the artist details such as the artist image and genres on the LHS
             */}

            {query && (
                <div className="artist-details">

                    {singerImg && (
                            //show artist image
                            <img src={singerImg} alt={`${query} Image`} className="artist-image" />
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
             it's position so that it's somewhere in the heatmap container by calling bubble_size,
             it should also show on each bubble the track name and album cover on hover
             */}
            {topTracks.length > 0 && (
                <div className="heatmap">
                    {topTracks.map((track: any, index: number) => {

                        return (
                            <div
                                key={index}
                                className="bubble"
                                style={bubble_Size(track)}
                                title={track.name}>
                                <img src={track.album.image.link || null} alt={track.album.name} />
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
