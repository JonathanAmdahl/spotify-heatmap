"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.initializePool = initializePool;
const pg_1 = require("pg");
const dotenv_1 = __importDefault(require("dotenv"));
dotenv_1.default.config();
// Initialize the Pool
const pool = new pg_1.Pool({
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
function initializePool() {
    return __awaiter(this, void 0, void 0, function* () {
        try {
            // Test the connection
            const client = yield pool.connect();
            console.log('Database connection test successful');
            // Release the client back to the pool
            client.release();
            return true;
        }
        catch (err) {
            console.error('Error initializing database pool:', err);
            throw err;
        }
    });
}
exports.default = pool;
