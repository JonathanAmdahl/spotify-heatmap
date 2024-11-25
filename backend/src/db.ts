import { Pool, PoolClient } from 'pg';
import dotenv from 'dotenv';

dotenv.config();

// Initialize the Pool
const pool = new Pool({
  connectionString: process.env.DATABASE_URL,
});

// Log when connected
pool.on('connect', () => {
  console.log('Connected to the database!');
});

// Log errors
pool.on('error', (err) => {
  console.error('Unexpected error on idle client', err);
  process.exit(-1);
});

export async function initializePool() {
    try {
      // Test the connection
      const client = await pool.connect();
      console.log('Database connection test successful');
      
      // Release the client back to the pool
      client.release();
      
      return true;
    } catch (err) {
      console.error('Error initializing database pool:', err);
      throw err;
    }
  }
  
  export default pool;
