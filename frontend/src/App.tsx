import './App.css';
import {useState} from "react";


function App() {
  const [query, setQuery] = useState('')
  return (
    <div className="App">
     
      <img src = "/spotify.jpg" alt = ""/>
      <label htmlFor="search"> Search Artists</label>
      <input type ="search" id = "search" placeholder ="Enter Artist..."/>
    </div>
  );
}


export default App;
