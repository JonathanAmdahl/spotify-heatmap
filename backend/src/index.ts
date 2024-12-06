import express from 'express';
import dotenv from 'dotenv';
import fs from 'node:fs';
import path from 'node:path';
import cors from 'cors';
import pool, { initializePool } from './db';

dotenv.config();
const app = express();
const port = process.env.PORT || 3000;

const allowedOrigins = ['https://spotify-heatmap.vercel.app', 'http://localhost:3000'];

// Middleware
app.use((req, res, next) => {
  res.setHeader('Access-Control-Allow-Origin', 'https://spotify-heatmap.vercel.app');
  res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, OPTIONS');
  res.setHeader('Access-Control-Allow-Headers', 'Content-Type, Authorization');
  res.setHeader('Access-Control-Allow-Credentials', 'true'); // If credentials are used
  next();
});
app.use(cors({
  origin: (origin, callback) => {
    if (!origin || allowedOrigins.includes(origin)) {
      callback(null, true);
    } else {
      callback(new Error('Not allowed by CORS'));
    }
  },
  methods: ['GET', 'POST', 'PUT', 'DELETE', 'OPTIONS'],
  credentials: true // Allow cookies if needed
}));
app.use((req, res, next) => {
  console.log('Incoming request origin:', req.headers.origin);
  console.log('Request path:', req.path);
  console.log('Request method:', req.method);
  next();
});

// Add an OPTIONS handler for preflight requests
app.options('*', cors());
app.use(express.json());

// Wrap the dynamic route loading in an async function
const loadRoutes = async () => {
  const routesPath = path.join(__dirname, 'routes');
  for (const file of fs.readdirSync(routesPath)) {
    if (file.endsWith('.ts') || file.endsWith('.js')) {
      const route = `/${file.split('.')[0] === 'index' ? '' : file.split('.')[0]}`;
      const routeModule = await import(`./routes/${file}`);
      app.use(route, routeModule.default);
    }
  }
};

// Call the async function and then start the server
loadRoutes()
.then(async () => {
  await initializePool();
  if(!process.env.SPOTIFY_CLIENT_ID || !process.env.SPOTIFY_CLIENT_SECRET) {
   throw new Error('Spotify credentials not found, please set SPOTIFY_CLIENT_ID and SPOTIFY_CLIENT_SECRET in .env');
  }
}).then(() => {
  app.listen(port, () => {
    console.log(`Server running on port ${port}`);
  });
});