'use client';

import './App.css';
import { useState } from "react";
import axios from "axios";
import { FaSearch } from 'react-icons/fa';


function App() {
    //useStates we will need for our website. Each of these usetates will be important for the website so we can store and retrrieve information
    //regarding our artists and their respective attributes
    const [genres, setGenre] = useState<string[]>([]);  
    const [singerImg, setSingerImg] = useState<string | null>(null);
    const [topTracks, setTRack] = useState<any[]>([]); 
    //const [genreDictionary, setGenreDictionary] = useState<genre>({});
    const [query, setQuery] = useState(''); 
    const [artists, setArtists] = useState<any[]>([]); 
    const [loads, setLoads] = useState(false); 
    const [error, setError] = useState<string | null>(null);
    const [hideMenu, setMenu] = useState(true);
    const [entered, setEntered] = useState(false);
    const [position, setPositions] = useState<{ width: number; height: number; size: number }[]>([]);

    //stores the api url needed to call baclend functions
    const apiUrl = process.env.NEXT_PUBLIC_API_URL;

    //function to handle search query & calls backend search-artist api
    const searchFunc = async () => {
        //Use var for debugging
        let check: number = 0;
        
        //returns if empty or only whitespace
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
        if (e.key === 'Enter') {
            setEntered(true);
            //calls the function to handle the search
            searchFunc();
            console.log(check);
        }

        //Debug, if we are unsuccessful check the console
        check -= 1;
        console.log(check);
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
            setSingerImg(null);
            setGenre([]); 
            setTRack([])
            searchFunc()
        }
        logged = false;  
    };

    /*
    Calculate if two circles overlap
    We will take the radius, x, y of two circles
    Then we will check if they overlap in some capacity
    If they do overlap, return true otherwise false
    */
    const intersectionOfCircles = (width_of_first_bubble: number, length_of_first_bubble: number, radius_0: number, width_of_fsecond_bubble: number, length_of_second_bubble: number, radius_1: number): boolean => {
        let radius_together = radius_0 + radius_1;
        let width_together = (width_of_first_bubble - width_of_fsecond_bubble) ** 2;
        let length_together = (length_of_second_bubble - length_of_first_bubble) ** 2;
        let ans = Math.sqrt(width_together + length_together);
        return ans <= radius_together;
    }

    /*
    This method will be used to determine if two circles overlap
    We will iterate through every bubble currently on the website
    We will check if the current bubble overlaps with any of the previous bubbles
    If it does, return true otherwise false
    */
    const bubble_Alert = (w: number, y: number, big: number) => {
        //let i = 0;
        let no_hit = false;
        let track_bubble: any;

        //Iterate through the bubbles and check for any overlap
        for(let i = 0; i < position.length; i++){
            track_bubble = position[i];
            let overlapse = intersectionOfCircles(w + big, y + big, big, track_bubble.width + track_bubble.size/2, track_bubble.height + track_bubble.size/2, track_bubble.size/2);
        
            //overlap on the bubble
            if (overlapse) {
                return true; 
            }
        }

        //No overlape
        return no_hit;

    }

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


            //Get top tracks by calling back end api
            try {
                const response = await axios.get(`${apiUrl}/spotify/artist-top-tracks`, {
                    params: { id: singer.id, }, 

                });
                console.log(check);

                //set top tracks to the response with the array of top tracks
                setTRack(response.data.tracks);
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
    This function will calculate the size of the bubble of each track
    Additionally, it will position the bubbles on our website
    */
    const bubble_Size = (track : any) =>{
       
       //Instance variables to add our bubbles to the website
       let track_Real = false;
       let interleave = true;
       let width_W: number = 0;
       let length: number = 0;

       //Check track popularity
       console.log(track.popularity);
       //console.log(track.genre);

       //Check if track is real ofc
       if(track){
        track_Real = true;
       }

       //If track is real.....
       if(track_Real){
            
            //Find popularity of track and multiply it by 3. This will be the size ouf our bubble
            let pop : number = 0;
            pop = track.popularity;
            pop = pop * 3;

            let repeat = 0;
            if(position.length != 0){

                /*
                We want to lower the overlap of the bubbles the best we can.
                We will call the bubble_Alert function to check if two bubbles overlap
                If they overlap, we will try to find a new position.
                If we cannot find a new position, we will break from the while loop and give the current track a random
                location that may overlap other bubbles 
                */
                while(interleave && repeat < 100){
                    width_W = (Math.random() * (2200 - pop));
                    length = (Math.random() * (1000 - pop));
                    interleave = bubble_Alert(width_W, length, pop/2);
                    repeat += 1;
                    console.log("Overlap");
                }

                /*
                If we successfully found our bubble location, return our bubble to the website
                */
                if(interleave === false){
                    //setPositions([...position, {width: width_W, height: length, size: pop}]);
                    return  {
                        width: `${(pop)}px`,
                        height: `${(pop)}px`,
                        left: `${width_W}px`,
                        top: `${length}px`,
                    };
                }

                /*
                If we did not find our bubble a unique location, give it a random location
                */
                else{
                    let new_Width = (Math.random() * (2200 - pop));
                    let new_length = (Math.random() * (1000 - pop));
                    return  {
                        
                        width: `${(pop)}px`,
                        height: `${(pop)}px`,
                        left: `${new_Width}px`,
                        top: `${new_length}px`,
                    };
                }
             
            }

            /*
            If this is our very first bubble (we had none prior), then add it to the website
            Also, add it to our array which we will use to compare locations
            */
            else{
                width_W = (Math.random() * (2200 - pop));
                length = (Math.random() * (1000 - pop));
                console.log("First");
                setPositions([...position, {width: width_W, height: length, size: pop}]);
                return  {
                    width: `${(pop)}px`,
                    height: `${(pop)}px`,
                    left: `${width_W}px`,
                    top: `${length}px`,
                };
               
            }
    }
    }

    

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

            {/* load message */}
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
             it's position so that it's somewhere in the heatmap container,
             it should also show on each bubble the track name and album cover
             */}
            {topTracks.length > 0 && (
                <div className="heatmap">
                    {topTracks.map((track: any, index: number) => {

                        return (
                            <div
                                key={index}
                                className="bubble"
                                style={bubble_Size(track)}
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
