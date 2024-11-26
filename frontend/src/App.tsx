'use client';

import './App.css';
import { useState } from "react";

function App() {
    const [query, setQuery] = useState('');
    return (
        <div className="App">
            <img src="/spotify.jpg" alt="Spotify logo" />
            <label htmlFor="search"> Search Artists </label>
            <input
                type="search"
                id="search"
                placeholder="Enter Artist..."
                value={query}
                onChange={(e) => setQuery(e.target.value)}
            />
        </div>
    );
}

export default App;
