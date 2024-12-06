"use strict";
var __createBinding = (this && this.__createBinding) || (Object.create ? (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    var desc = Object.getOwnPropertyDescriptor(m, k);
    if (!desc || ("get" in desc ? !m.__esModule : desc.writable || desc.configurable)) {
      desc = { enumerable: true, get: function() { return m[k]; } };
    }
    Object.defineProperty(o, k2, desc);
}) : (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    o[k2] = m[k];
}));
var __setModuleDefault = (this && this.__setModuleDefault) || (Object.create ? (function(o, v) {
    Object.defineProperty(o, "default", { enumerable: true, value: v });
}) : function(o, v) {
    o["default"] = v;
});
var __importStar = (this && this.__importStar) || function (mod) {
    if (mod && mod.__esModule) return mod;
    var result = {};
    if (mod != null) for (var k in mod) if (k !== "default" && Object.prototype.hasOwnProperty.call(mod, k)) __createBinding(result, mod, k);
    __setModuleDefault(result, mod);
    return result;
};
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
const express_1 = __importDefault(require("express"));
const dotenv_1 = __importDefault(require("dotenv"));
const node_fs_1 = __importDefault(require("node:fs"));
const node_path_1 = __importDefault(require("node:path"));
const cors_1 = __importDefault(require("cors"));
const db_1 = require("./db");
dotenv_1.default.config();
const app = (0, express_1.default)();
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
app.use((0, cors_1.default)({
    origin: (origin, callback) => {
        if (!origin || allowedOrigins.includes(origin)) {
            callback(null, true);
        }
        else {
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
app.options('*', (0, cors_1.default)());
app.use(express_1.default.json());
// Wrap the dynamic route loading in an async function
const loadRoutes = () => __awaiter(void 0, void 0, void 0, function* () {
    const routesPath = node_path_1.default.join(__dirname, 'routes');
    for (const file of node_fs_1.default.readdirSync(routesPath)) {
        if (file.endsWith('.ts') || file.endsWith('.js')) {
            const route = `/${file.split('.')[0] === 'index' ? '' : file.split('.')[0]}`;
            const routeModule = yield Promise.resolve(`${`./routes/${file}`}`).then(s => __importStar(require(s)));
            app.use(route, routeModule.default);
        }
    }
});
// Call the async function and then start the server
loadRoutes()
    .then(() => __awaiter(void 0, void 0, void 0, function* () {
    yield (0, db_1.initializePool)();
    if (!process.env.SPOTIFY_CLIENT_ID || !process.env.SPOTIFY_CLIENT_SECRET) {
        throw new Error('Spotify credentials not found, please set SPOTIFY_CLIENT_ID and SPOTIFY_CLIENT_SECRET in .env');
    }
})).then(() => {
    app.listen(port, () => {
        console.log(`Server running on port ${port}`);
    });
});
