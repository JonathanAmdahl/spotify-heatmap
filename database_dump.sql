--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4
-- Dumped by pg_dump version 16.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: album; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.album (
    album_id character varying(50) NOT NULL,
    album_type character varying(20) NOT NULL,
    name character varying(50) NOT NULL,
    total_tracks integer NOT NULL,
    href character varying(2000) NOT NULL,
    image_height integer NOT NULL,
    image_width integer NOT NULL,
    image_link character varying(2000) NOT NULL
);


ALTER TABLE public.album OWNER TO postgres;

--
-- Name: albummadeby; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.albummadeby (
    artist_id character varying(50) NOT NULL,
    album_id character varying(50) NOT NULL
);


ALTER TABLE public.albummadeby OWNER TO postgres;

--
-- Name: artist; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.artist (
    artist_id character varying(50) NOT NULL,
    genre character varying(50)[] NOT NULL,
    name character varying(50) NOT NULL,
    popularity integer NOT NULL,
    href character varying(2000) NOT NULL,
    image_height integer NOT NULL,
    image_width integer NOT NULL,
    image_link character varying(2000) NOT NULL
);


ALTER TABLE public.artist OWNER TO postgres;

--
-- Name: track; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.track (
    track_id character varying(50) NOT NULL,
    name character varying(50) NOT NULL,
    track_number integer NOT NULL,
    popularity integer NOT NULL,
    href character varying(2000) NOT NULL,
    image_height integer NOT NULL,
    image_width integer NOT NULL,
    image_link character varying(2000) NOT NULL,
    album_id character varying(50)
);


ALTER TABLE public.track OWNER TO postgres;

--
-- Name: trackmadeby; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.trackmadeby (
    artist_id character varying(50) NOT NULL,
    track_id character varying(50) NOT NULL
);


ALTER TABLE public.trackmadeby OWNER TO postgres;

--
-- Data for Name: album; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.album (album_id, album_type, name, total_tracks, href, image_height, image_width, image_link) FROM stdin;
1	studio	Album 1A	5	http://example.com/album1A	640	480	https://m.media-amazon.com/images/I/81nFF-rXdRL._UF1000,1000_QL80_.jpg
2	studio	Album 1B	5	http://example.com/album1B	640	480	https://www.liluziofficial.com/sites/g/files/g2000016571/files/2021-12/Pluto-x-Baby-Pluto-Cover-Deluxe-PA_0_0.jpg
3	studio	Album 1C	5	http://example.com/album1C	640	480	https://images.squarespace-cdn.com/content/v1/5f6df5bcd8a0286b9df5948b/1616761670933-VAEP4KCO4EU0BZ6VCTN9/204-Kanye-West-Graduation.jpeg
4	studio	Album 1D	5	http://example.com/album1D	640	480	https://upload.wikimedia.org/wikipedia/en/f/f1/808s_%26_Heartbreak.png
5	studio	Album 2A	5	http://example.com/album2A	640	480	https://e-cdns-images.dzcdn.net/images/cover/069a5dba671436da9301aad36fc9a983/500x500-000000-80-0-0.jpg
6	studio	Album 2B	5	http://example.com/album2B	640	480	https://m.media-amazon.com/images/I/81nFF-rXdRL._UF1000,1000_QL80_.jpg
7	studio	Album 2C	5	http://example.com/album2C	640	480	https://www.liluziofficial.com/sites/g/files/g2000016571/files/2021-12/Pluto-x-Baby-Pluto-Cover-Deluxe-PA_0_0.jpg
8	studio	Album 2D	5	http://example.com/album2D	640	480	https://images.squarespace-cdn.com/content/v1/5f6df5bcd8a0286b9df5948b/1616761670933-VAEP4KCO4EU0BZ6VCTN9/204-Kanye-West-Graduation.jpeg
3UOV8XvCwMKaATRNXrYCjN	single	greedy	1	https://api.spotify.com/v1/albums/3UOV8XvCwMKaATRNXrYCjN	640	640	https://i.scdn.co/image/ab67616d0000b27322fd802bc61db666c7c81aa8
5qfivA7g2aAhAIPnSb0csp	single	It's ok I'm ok	1	https://api.spotify.com/v1/albums/5qfivA7g2aAhAIPnSb0csp	640	640	https://i.scdn.co/image/ab67616d0000b273cd9a93745f6a7cd54deaab22
2BdJwrx2wMJi7x06wWkUFg	single	2 hands	2	https://api.spotify.com/v1/albums/2BdJwrx2wMJi7x06wWkUFg	640	640	https://i.scdn.co/image/ab67616d0000b2733b53b3afd0c28613b964769e
0OUOx6rJXtL66AzTnP9KUE	album	THINK LATER	14	https://api.spotify.com/v1/albums/0OUOx6rJXtL66AzTnP9KUE	640	640	https://i.scdn.co/image/ab67616d0000b27377eb7a5b9367de79c3b92a49
1BaHo66NCQNx6ku0hPn9bR	single	TOO YOUNG TO BE SAD	6	https://api.spotify.com/v1/albums/1BaHo66NCQNx6ku0hPn9bR	640	640	https://i.scdn.co/image/ab67616d0000b2736c2b76e0d78170d577add561
1Pl9ZGXwayXPg5qRVpYo74	album	DRIVE	12	https://api.spotify.com/v1/albums/1Pl9ZGXwayXPg5qRVpYo74	640	640	https://i.scdn.co/image/ab67616d0000b273cf8c47967e5c6bbc7dca5abb
5fhTetHew6Eph6HfQ9O5gJ	album	i used to think i could fly	13	https://api.spotify.com/v1/albums/5fhTetHew6Eph6HfQ9O5gJ	640	640	https://i.scdn.co/image/ab67616d0000b273f7108342ef45a402af8206b2
1fK6nUQDMeIciyfhAADix8	single	all the things i never said	5	https://api.spotify.com/v1/albums/1fK6nUQDMeIciyfhAADix8	640	640	https://i.scdn.co/image/ab67616d0000b273cdfe41cd475f8ad3a29b3537
0m9hqW0RDEHPNXxhiFUGSq	single	uh oh	1	https://api.spotify.com/v1/albums/0m9hqW0RDEHPNXxhiFUGSq	640	640	https://i.scdn.co/image/ab67616d0000b2733d0cdc5c7c52338a5a92cec9
22sXXkKgjEuawIFL1e1tRw	single	Water	1	https://api.spotify.com/v1/albums/22sXXkKgjEuawIFL1e1tRw	640	640	https://i.scdn.co/image/ab67616d0000b273d20231861e86a6f74ef2393e
5QsVRNOKVMCeVAIUoOQJ13	album	TYLA +	17	https://api.spotify.com/v1/albums/5QsVRNOKVMCeVAIUoOQJ13	640	640	https://i.scdn.co/image/ab67616d0000b27334d2121bebebc1e7d9a0c369
3KGVOGmIbinlrR97aFufGE	album	TYLA	14	https://api.spotify.com/v1/albums/3KGVOGmIbinlrR97aFufGE	640	640	https://i.scdn.co/image/ab67616d0000b273af0b5968b8bad3923b2ea76b
4jrDs3Kg7zJlgQnIZrZP8a	single	One Call	1	https://api.spotify.com/v1/albums/4jrDs3Kg7zJlgQnIZrZP8a	640	640	https://i.scdn.co/image/ab67616d0000b2738613cdc715d4fd0af252a715
2GyIYK9C2K870xKjo5HI9D	single	Water	1	https://api.spotify.com/v1/albums/2GyIYK9C2K870xKjo5HI9D	640	640	https://i.scdn.co/image/ab67616d0000b2732b35ec31acfe3aa18986f2df
1NAmidJlEaVgA3MpcPFYGq	album	Lover	18	https://api.spotify.com/v1/albums/1NAmidJlEaVgA3MpcPFYGq	640	640	https://i.scdn.co/image/ab67616d0000b273e787cffec20aa2a396a61647
1Mo4aZ8pdj6L1jx8zSwJnt	album	THE TORTURED POETS DEPARTMENT	16	https://api.spotify.com/v1/albums/1Mo4aZ8pdj6L1jx8zSwJnt	640	640	https://i.scdn.co/image/ab67616d0000b2735076e4160d018e378f488c33
2fenSS68JI1h4Fo296JfGr	album	folklore	16	https://api.spotify.com/v1/albums/2fenSS68JI1h4Fo296JfGr	640	640	https://i.scdn.co/image/ab67616d0000b27395f754318336a07e85ec59bc
6DEjYFkNZh67HP7R9PSZvv	album	reputation	15	https://api.spotify.com/v1/albums/6DEjYFkNZh67HP7R9PSZvv	640	640	https://i.scdn.co/image/ab67616d0000b273da5d5aeeabacacc1263c0f4b
151w1FgRZfnKZA9FEcg9Z3	album	Midnights	13	https://api.spotify.com/v1/albums/151w1FgRZfnKZA9FEcg9Z3	640	640	https://i.scdn.co/image/ab67616d0000b273bb54dde68cd23e2a268ae0f5
2QJmrSgbdM35R67eoGQo4j	album	1989	13	https://api.spotify.com/v1/albums/2QJmrSgbdM35R67eoGQo4j	640	640	https://i.scdn.co/image/ab67616d0000b2739abdf14e6058bd3903686148
4CRfobFgSG0GOzplgTI79s	album	GOLD	11	https://api.spotify.com/v1/albums/4CRfobFgSG0GOzplgTI79s	640	640	https://i.scdn.co/image/ab67616d0000b273dd734636e6d28fdc528a839d
7ynKAohxfwPUZzvU8f1p1U	album	IT'z ME	7	https://api.spotify.com/v1/albums/7ynKAohxfwPUZzvU8f1p1U	640	640	https://i.scdn.co/image/ab67616d0000b273fc620c06721e90a534cc5dab
4U7rGOkJgtxs27H9L93Xli	album	CRAZY IN LOVE	16	https://api.spotify.com/v1/albums/4U7rGOkJgtxs27H9L93Xli	640	640	https://i.scdn.co/image/ab67616d0000b273a0df2d59f0ae9426cba3eb36
3cm3EkNQLpKu58btSJT7fz	album	BORN TO BE	10	https://api.spotify.com/v1/albums/3cm3EkNQLpKu58btSJT7fz	640	640	https://i.scdn.co/image/ab67616d0000b273470d0ba5f707b141d1337cf2
5NN55LKbjzX16a7Uf8u7Os	single	Not Shy	6	https://api.spotify.com/v1/albums/5NN55LKbjzX16a7Uf8u7Os	640	640	https://i.scdn.co/image/ab67616d0000b2732f74587e89fe803fa61d748e
7Mxbav9clZ3AVDKThwwgXS	single	IT'z Different	2	https://api.spotify.com/v1/albums/7Mxbav9clZ3AVDKThwwgXS	640	640	https://i.scdn.co/image/ab67616d0000b27389a8fc641c956dc899c0b168
6P01cKb7sdwfnNpuMLNEik	single	KILL MY DOUBT	6	https://api.spotify.com/v1/albums/6P01cKb7sdwfnNpuMLNEik	640	640	https://i.scdn.co/image/ab67616d0000b2734c2fcea217112b13312f8fb2
4lS8nhX8cplsYPzKjvhw6G	single	GUESS WHO	6	https://api.spotify.com/v1/albums/4lS8nhX8cplsYPzKjvhw6G	640	640	https://i.scdn.co/image/ab67616d0000b273131cf6fcb170cda7a7956227
7J41hCLBI2kEwL6RVSxfNx	single	Whiplash - The 5th Mini Album	6	https://api.spotify.com/v1/albums/7J41hCLBI2kEwL6RVSxfNx	640	640	https://i.scdn.co/image/ab67616d0000b2736eb604294f8f58c9078f58b1
4vLGHlTnlIIxMSfefCY0cU	single	SYNK : PARALLEL LINE - Special Digital Single	4	https://api.spotify.com/v1/albums/4vLGHlTnlIIxMSfefCY0cU	640	640	https://i.scdn.co/image/ab67616d0000b273253096eda3b7826c11c7fab8
4SboBpuYojDm02qS4iFeJC	album	Armageddon - The 1st Album	10	https://api.spotify.com/v1/albums/4SboBpuYojDm02qS4iFeJC	640	640	https://i.scdn.co/image/ab67616d0000b273c60843bafc67821cff6df260
5NMtxQJy4wq3mpo3ERVnLs	album	Drama - The 4th Mini Album	7	https://api.spotify.com/v1/albums/5NMtxQJy4wq3mpo3ERVnLs	640	640	https://i.scdn.co/image/ab67616d0000b273c54e39f2ae0dd10731f93c08
55N0UTP5992idhnEYOKYd9	single	iScreaM Vol.26 : Spicy Remix	2	https://api.spotify.com/v1/albums/55N0UTP5992idhnEYOKYd9	640	640	https://i.scdn.co/image/ab67616d0000b27324936098cb2874153291a3f9
4bWGRs1SqNwFXaRDXRAANN	single	Hold On Tight	1	https://api.spotify.com/v1/albums/4bWGRs1SqNwFXaRDXRAANN	640	640	https://i.scdn.co/image/ab67616d0000b273fe31201bbc019b1636066dc3
3vyyDkvYWC36DwgZCYd3Wu	single	Savage - The 1st Mini Album	6	https://api.spotify.com/v1/albums/3vyyDkvYWC36DwgZCYd3Wu	640	640	https://i.scdn.co/image/ab67616d0000b273d8cc2281fcd4519ca020926b
5EYKrEDnKhhcNxGedaRQeK	album	eternal sunshine	13	https://api.spotify.com/v1/albums/5EYKrEDnKhhcNxGedaRQeK	640	640	https://i.scdn.co/image/ab67616d0000b2738b58d20f1b77295730db15b4
27MNgBEnLCKoafz1g2Zu97	single	Santa Tell Me	1	https://api.spotify.com/v1/albums/27MNgBEnLCKoafz1g2Zu97	640	640	https://i.scdn.co/image/ab67616d0000b273a1db745e63940bc06985dea5
6EVYTRG1drKdO8OnIQBeEj	album	My Everything (Deluxe)	15	https://api.spotify.com/v1/albums/6EVYTRG1drKdO8OnIQBeEj	640	640	https://i.scdn.co/image/ab67616d0000b273deec12a28d1e336c5052e9aa
2fYhqwDWXjbpjaIJPEfKFw	album	thank u, next	12	https://api.spotify.com/v1/albums/2fYhqwDWXjbpjaIJPEfKFw	640	640	https://i.scdn.co/image/ab67616d0000b27356ac7b86e090f307e218e9c8
4ZyeHIgdujClXSjC2cSqSb	album	After Hours (Deluxe)	18	https://api.spotify.com/v1/albums/4ZyeHIgdujClXSjC2cSqSb	640	640	https://i.scdn.co/image/ab67616d0000b273b5097b81179824803664aaaf
6kAsgfuulBOuyYLytWX7e2	album	CRAZY (Party Remixes 1)	8	https://api.spotify.com/v1/albums/6kAsgfuulBOuyYLytWX7e2	640	640	https://i.scdn.co/image/ab67616d0000b273d49db78bd7ea1f7229865baa
4IqfdL14SOkeFN2c5ASmGh	single	Smart (Remixes)	9	https://api.spotify.com/v1/albums/4IqfdL14SOkeFN2c5ASmGh	640	640	https://i.scdn.co/image/ab67616d0000b273249dc66f0cb95bed7dacc39e
6Msc3BwzKZ5f5FXmKuUSu6	single	Perfect Night	1	https://api.spotify.com/v1/albums/6Msc3BwzKZ5f5FXmKuUSu6	640	640	https://i.scdn.co/image/ab67616d0000b2735e352f6eccf8cb96d0b247cc
1YCj4PZi08G20y2ekGKY0C	single	EASY	5	https://api.spotify.com/v1/albums/1YCj4PZi08G20y2ekGKY0C	640	640	https://i.scdn.co/image/ab67616d0000b273110f5426b8c149e80804912a
4Oz7K9DRwwGMN49i4NbVDT	album	UNFORGIVEN	13	https://api.spotify.com/v1/albums/4Oz7K9DRwwGMN49i4NbVDT	640	640	https://i.scdn.co/image/ab67616d0000b273d71fd77b89d08bc1bda219c7
538vEfAgLJ6g2I8ubuOlap	single	CRAZY	5	https://api.spotify.com/v1/albums/538vEfAgLJ6g2I8ubuOlap	640	640	https://i.scdn.co/image/ab67616d0000b273485623bc41b6760fc1bca2f4
4Mc7WwYH41hgUWeKX25Sot	single	FEARLESS	5	https://api.spotify.com/v1/albums/4Mc7WwYH41hgUWeKX25Sot	640	640	https://i.scdn.co/image/ab67616d0000b2739030184114911536d5f77555
5V729UqvhwNOcMejx0m55I	single	NewJeans 'Super Shy'	2	https://api.spotify.com/v1/albums/5V729UqvhwNOcMejx0m55I	640	640	https://i.scdn.co/image/ab67616d0000b2733d98a0ae7c78a3a9babaf8af
4N1fROq2oeyLGAlQ1C1j18	single	NewJeans 2nd EP 'Get Up'	6	https://api.spotify.com/v1/albums/4N1fROq2oeyLGAlQ1C1j18	640	640	https://i.scdn.co/image/ab67616d0000b2730744690248ef3ba7b776ea7b
7bnqo1fdJU9nSfXQd3bSMe	single	Ditto	1	https://api.spotify.com/v1/albums/7bnqo1fdJU9nSfXQd3bSMe	640	640	https://i.scdn.co/image/ab67616d0000b273edf5b257be1d6593e81bb45f
0EhZEM4RRz0yioTgucDhJq	single	How Sweet	4	https://api.spotify.com/v1/albums/0EhZEM4RRz0yioTgucDhJq	640	640	https://i.scdn.co/image/ab67616d0000b273b657fbb27b17e7bd4691c2b2
45ozep8uHHnj5CCittuyXj	single	NewJeans 'OMG'	2	https://api.spotify.com/v1/albums/45ozep8uHHnj5CCittuyXj	640	640	https://i.scdn.co/image/ab67616d0000b273d70036292d54f29e8b68ec01
1FVw30SoC91lq1UZ6N9rwN	single	Supernatural	4	https://api.spotify.com/v1/albums/1FVw30SoC91lq1UZ6N9rwN	640	640	https://i.scdn.co/image/ab67616d0000b2737e1eeb0d7cc374a168369c80
1HMLpmZAnNyl9pxvOnTovV	single	NewJeans 1st EP 'New Jeans'	4	https://api.spotify.com/v1/albums/1HMLpmZAnNyl9pxvOnTovV	640	640	https://i.scdn.co/image/ab67616d0000b2739d28fd01859073a3ae6ea209
0rAaP1OBxVCn2cIUZNjGRs	single	GODS	1	https://api.spotify.com/v1/albums/0rAaP1OBxVCn2cIUZNjGRs	640	640	https://i.scdn.co/image/ab67616d0000b273e4179b3fb74beaf0cdfa7a13
2T9P5dSm786uuxA5tkI1Xb	album	Country Squire	9	https://api.spotify.com/v1/albums/2T9P5dSm786uuxA5tkI1Xb	640	640	https://i.scdn.co/image/ab67616d0000b273d41fec800fa501c5bc623083
35LcGAeeMwVeIJrDpB3Gkz	album	Purgatory	10	https://api.spotify.com/v1/albums/35LcGAeeMwVeIJrDpB3Gkz	640	640	https://i.scdn.co/image/ab67616d0000b2735a38bd36056b909ed607689d
7lf0m3iNU59X4r8udCQcB6	album	Live on Red Barn Radio I & II	8	https://api.spotify.com/v1/albums/7lf0m3iNU59X4r8udCQcB6	640	640	https://i.scdn.co/image/ab67616d0000b2739cbbbdd15ff65aaab9a611b0
42nsomRaEURVkNt7IF1IFu	single	Tyler Childers | OurVinyl Sessions	3	https://api.spotify.com/v1/albums/42nsomRaEURVkNt7IF1IFu	640	640	https://i.scdn.co/image/ab67616d0000b273ab7a2287bd2c3b20b27e4342
4YXp2h3rqa0DWsMHIpZ5u6	album	Bottles and Bibles	13	https://api.spotify.com/v1/albums/4YXp2h3rqa0DWsMHIpZ5u6	640	640	https://i.scdn.co/image/ab67616d0000b273662482495c5ac20d03a32c9a
7rSObXhKazzmeZFHuGX1mx	album	Rustin' In The Rain	7	https://api.spotify.com/v1/albums/7rSObXhKazzmeZFHuGX1mx	640	640	https://i.scdn.co/image/ab67616d0000b2737f67b972198a0043fb87076b
7Dwi31xQPuVhLPJRLuSJ8O	album	September's Moon	9	https://api.spotify.com/v1/albums/7Dwi31xQPuVhLPJRLuSJ8O	640	640	https://i.scdn.co/image/ab67616d0000b273e7118f0ce3c4c074afaad91c
3vp3nsXcDH1R7XZP0FBZrV	single	#THEATOUGH	1	https://api.spotify.com/v1/albums/3vp3nsXcDH1R7XZP0FBZrV	640	640	https://i.scdn.co/image/ab67616d0000b273a992bddbfcc8dc02cce81308
2g1EakEaW7fPTZC6vBmBCn	album	Talk That Talk	11	https://api.spotify.com/v1/albums/2g1EakEaW7fPTZC6vBmBCn	640	640	https://i.scdn.co/image/ab67616d0000b273bef074de9ca825bddaeb9f46
5QG3tjE5L9F6O2vCAPph38	album	Loud (Japan Version)	13	https://api.spotify.com/v1/albums/5QG3tjE5L9F6O2vCAPph38	640	640	https://i.scdn.co/image/ab67616d0000b27331548865f7c729290b96c794
4UlGauD7ROb3YbVOFMgW5u	album	ANTI (Deluxe)	16	https://api.spotify.com/v1/albums/4UlGauD7ROb3YbVOFMgW5u	640	640	https://i.scdn.co/image/ab67616d0000b27333c6b920eabcf4c00d7a1093
4OXnPSBtZo8PBFiTOfuumP	album	Good Girl Gone Bad	12	https://api.spotify.com/v1/albums/4OXnPSBtZo8PBFiTOfuumP	640	640	https://i.scdn.co/image/ab67616d0000b273b9ff0a5f40d3406aed5e5e3b
0T23GvNaBUGtMKxZko8LQG	album	Unapologetic (Edited Version)	14	https://api.spotify.com/v1/albums/0T23GvNaBUGtMKxZko8LQG	640	640	https://i.scdn.co/image/ab67616d0000b273e24cbbd5cef05ca77ec67df6
78bpIziExqiI9qztvNFlQu	album	AM	12	https://api.spotify.com/v1/albums/78bpIziExqiI9qztvNFlQu	640	640	https://i.scdn.co/image/ab67616d0000b2734ae1c4c5c45aabe565499163
6rsQnwaoJHxXJRCDBPkBRw	album	Favourite Worst Nightmare (Standard Version)	12	https://api.spotify.com/v1/albums/6rsQnwaoJHxXJRCDBPkBRw	640	640	https://i.scdn.co/image/ab67616d0000b2730c8ac83035e9588e8ad34b90
1Ss0ArMRr91m83mOgRBjSZ	album	GNX	12	https://api.spotify.com/v1/albums/1Ss0ArMRr91m83mOgRBjSZ	640	640	https://i.scdn.co/image/ab67616d0000b27309d6ed214f03fbb663e46531
1nrVofqDRs7cpWXJ49qTnP	album	SOS	23	https://api.spotify.com/v1/albums/1nrVofqDRs7cpWXJ49qTnP	640	640	https://i.scdn.co/image/ab67616d0000b2730c471c36970b9406233842a5
07w0rG5TETcyihsEIZR3qG	album	SOS	23	https://api.spotify.com/v1/albums/07w0rG5TETcyihsEIZR3qG	640	640	https://i.scdn.co/image/ab67616d0000b27370dbc9f47669d120ad874ec1
3pLdWdkj83EYfDN6H2N8MR	album	Black Panther The Album Music From And Inspired By	14	https://api.spotify.com/v1/albums/3pLdWdkj83EYfDN6H2N8MR	640	640	https://i.scdn.co/image/ab67616d0000b273c027ad28821777b00dcaa888
1fmBMCSSkSlvxyoy1vut2k	single	Saturn	5	https://api.spotify.com/v1/albums/1fmBMCSSkSlvxyoy1vut2k	640	640	https://i.scdn.co/image/ab67616d0000b273d70916ee9e40c90380ba5f07
0hvT3yIEysuuvkK73vgdcW	album	GNX	12	https://api.spotify.com/v1/albums/0hvT3yIEysuuvkK73vgdcW	640	640	https://i.scdn.co/image/ab67616d0000b273d9985092cd88bffd97653b58
1nAQbHeOWTfQzbOoFrvndW	album	Planet Her	14	https://api.spotify.com/v1/albums/1nAQbHeOWTfQzbOoFrvndW	640	640	https://i.scdn.co/image/ab67616d0000b273be841ba4bc24340152e3a79a
0OWvUsVTHFXXnGiGht96K4	album	Unreal Unearth: Unaired	23	https://api.spotify.com/v1/albums/0OWvUsVTHFXXnGiGht96K4	640	640	https://i.scdn.co/image/ab67616d0000b2735aa29751874ca4ba06da8877
4Pv7m8D82A1Xun7xNCKZjJ	album	Hozier (Expanded Edition)	15	https://api.spotify.com/v1/albums/4Pv7m8D82A1Xun7xNCKZjJ	640	640	https://i.scdn.co/image/ab67616d0000b2734ca68d59a4a29c856a4a39c2
3qBWNcWifNhUKJAWzswdJY	album	Stick Season (Forever)	30	https://api.spotify.com/v1/albums/3qBWNcWifNhUKJAWzswdJY	640	640	https://i.scdn.co/image/ab67616d0000b273ba6fb0a7e6c53fb8faa96226
2c7gFThUYyo2t6ogAgIYNw	album	Wasteland, Baby!	14	https://api.spotify.com/v1/albums/2c7gFThUYyo2t6ogAgIYNw	640	640	https://i.scdn.co/image/ab67616d0000b2735795e01c151ba5a8ce4bd295
3iPSVi54hsacKKl1xIR2eH	album	Short n' Sweet	12	https://api.spotify.com/v1/albums/3iPSVi54hsacKKl1xIR2eH	640	640	https://i.scdn.co/image/ab67616d0000b273fd8d7a8d96871e791cb1f626
5kDmlA2g9Y1YCbNo2Ufxlz	album	emails i can't send	13	https://api.spotify.com/v1/albums/5kDmlA2g9Y1YCbNo2Ufxlz	640	640	https://i.scdn.co/image/ab67616d0000b273700f7bf79c9f063ad0362bdf
2g4aJTa5ejGpp0O0GKzWAQ	album	emails i can’t send fwd:	17	https://api.spotify.com/v1/albums/2g4aJTa5ejGpp0O0GKzWAQ	640	640	https://i.scdn.co/image/ab67616d0000b2730f45623be014a592a5815827
5JjnoGJyOxfSZUZtk2rRwZ	single	Not Like Us	1	https://api.spotify.com/v1/albums/5JjnoGJyOxfSZUZtk2rRwZ	640	640	https://i.scdn.co/image/ab67616d0000b2731ea0c62b2339cbf493a999ad
40GMAhriYJRO1rsY4YdrZb	album	Views	20	https://api.spotify.com/v1/albums/40GMAhriYJRO1rsY4YdrZb	640	640	https://i.scdn.co/image/ab67616d0000b2739416ed64daf84936d89e671c
6tE9Dnp2zInFij4jKssysL	album	I NEVER LIKED YOU	16	https://api.spotify.com/v1/albums/6tE9Dnp2zInFij4jKssysL	640	640	https://i.scdn.co/image/ab67616d0000b27386badd635b69aea887862214
1ATL5GLyefJaxhQzSPVrLX	album	Scorpion	25	https://api.spotify.com/v1/albums/1ATL5GLyefJaxhQzSPVrLX	640	640	https://i.scdn.co/image/ab67616d0000b273f907de96b9a4fbc04accc0d5
1lXY618HWkwYKJWBRYR4MK	album	More Life	22	https://api.spotify.com/v1/albums/1lXY618HWkwYKJWBRYR4MK	640	640	https://i.scdn.co/image/ab67616d0000b2734f0fd9dad63977146e685700
3cf4iSSKd8ffTncbtKljXw	album	Honestly, Nevermind	14	https://api.spotify.com/v1/albums/3cf4iSSKd8ffTncbtKljXw	640	640	https://i.scdn.co/image/ab67616d0000b2738dc0d801766a5aa6a33cbe37
5oT8PMXGWiPlhcl930fkII	single	100 GIGS	3	https://api.spotify.com/v1/albums/5oT8PMXGWiPlhcl930fkII	640	640	https://i.scdn.co/image/ab67616d0000b273e955f0f0a0471ace604ecdf6
4czdORdCWP9umpbhFXK2fW	album	For All The Dogs	23	https://api.spotify.com/v1/albums/4czdORdCWP9umpbhFXK2fW	640	640	https://i.scdn.co/image/ab67616d0000b2737d384516b23347e92a587ed1
3SpBlxme9WbeQdI9kx7KAV	album	Certified Lover Boy	21	https://api.spotify.com/v1/albums/3SpBlxme9WbeQdI9kx7KAV	640	640	https://i.scdn.co/image/ab67616d0000b273cd945b4e3de57edd28481a3f
78NIQe42qKXahAeZAb3w0h	single	No Face	1	https://api.spotify.com/v1/albums/78NIQe42qKXahAeZAb3w0h	640	640	https://i.scdn.co/image/ab67616d0000b273cf05fc616cf7e38c0e52b888
2GKTroaa4ysyhEdvzpvUoM	album	Summer Nights	9	https://api.spotify.com/v1/albums/2GKTroaa4ysyhEdvzpvUoM	640	640	https://i.scdn.co/image/ab67616d0000b27340d7efd2594a2b6bda60ea18
5052Ip89wdW8EGdpjEpNeq	album	Formula of Love: O+T=<3	16	https://api.spotify.com/v1/albums/5052Ip89wdW8EGdpjEpNeq	640	640	https://i.scdn.co/image/ab67616d0000b273d1961ecb307c9e05ec8f7e82
3aLpWFejbsdyafODLXRqwF	single	FANCY YOU	6	https://api.spotify.com/v1/albums/3aLpWFejbsdyafODLXRqwF	640	640	https://i.scdn.co/image/ab67616d0000b273ff7c2dfd0ed9b2cf6bf9c818
7KYpVsgw7yqbfmGBp9gYiR	album	MEGAN: ACT II	31	https://api.spotify.com/v1/albums/7KYpVsgw7yqbfmGBp9gYiR	640	640	https://i.scdn.co/image/ab67616d0000b2734e3330398bd99c2fc3b21ffe
33jypnU7WULxPaVrjj4RXH	album	Eyes Wide Open	13	https://api.spotify.com/v1/albums/33jypnU7WULxPaVrjj4RXH	640	640	https://i.scdn.co/image/ab67616d0000b2736570fd05bcff5edcb16e617d
3NQBPabmRm3LzVcmtkTLfo	album	Feel Special	7	https://api.spotify.com/v1/albums/3NQBPabmRm3LzVcmtkTLfo	640	640	https://i.scdn.co/image/ab67616d0000b273a6b5e9128d7029ebb48bcf2b
3NZ94nQbqimcu2i71qhc4f	album	BETWEEN 1&2	7	https://api.spotify.com/v1/albums/3NZ94nQbqimcu2i71qhc4f	640	640	https://i.scdn.co/image/ab67616d0000b273c3040848e6ef0e132c5c8340
575TQDOQqc0MAheeEeKWUR	single	With YOU-th	6	https://api.spotify.com/v1/albums/575TQDOQqc0MAheeEeKWUR	640	640	https://i.scdn.co/image/ab67616d0000b273bd8c739ce7e59ae9414c7a26
25VunQEW0x2W6ALND2Mh4g	album	YES or YES	7	https://api.spotify.com/v1/albums/25VunQEW0x2W6ALND2Mh4g	640	640	https://i.scdn.co/image/ab67616d0000b273140ba24506e300382e08e6ec
7hzP5i7StxYG4StECA0rrJ	album	READY TO BE	7	https://api.spotify.com/v1/albums/7hzP5i7StxYG4StECA0rrJ	640	640	https://i.scdn.co/image/ab67616d0000b27359f57a5ca507a3d3fed81ea6
2S3Q7phoa4bZEijkTRYaLu	album	Tyler Hubbard	18	https://api.spotify.com/v1/albums/2S3Q7phoa4bZEijkTRYaLu	640	640	https://i.scdn.co/image/ab67616d0000b27387d9c990b193c3ed11676eb1
2HLqoccnVNqOfm7gpN1Svo	album	Strong	13	https://api.spotify.com/v1/albums/2HLqoccnVNqOfm7gpN1Svo	640	640	https://i.scdn.co/image/ab67616d0000b273c13bcb96beefcc15d3da934a
1a7BlXLCqjTxQh6X8L9JBL	album	Heartland	9	https://api.spotify.com/v1/albums/1a7BlXLCqjTxQh6X8L9JBL	640	640	https://i.scdn.co/image/ab67616d0000b2739d2e62a1bd2f06b5618a101a
2XcBhNn09YlqGjxUhQyVkj	single	Heroes	1	https://api.spotify.com/v1/albums/2XcBhNn09YlqGjxUhQyVkj	640	640	https://i.scdn.co/image/ab67616d0000b273cac8af586461f3776184888f
42rGSwtLPemPlWDWNWLKym	album	My Way	8	https://api.spotify.com/v1/albums/42rGSwtLPemPlWDWNWLKym	640	640	https://i.scdn.co/image/ab67616d0000b273965bf46b3b9a5933ea84467a
5kNJYMb1mTyoqKx1tBTt53	album	Here On Earth (Ultimate Edition)	24	https://api.spotify.com/v1/albums/5kNJYMb1mTyoqKx1tBTt53	640	640	https://i.scdn.co/image/ab67616d0000b273adf1d0bd7b0fae58e6dd24d0
21jF5jlMtzo94wbxmJ18aa	album	30	12	https://api.spotify.com/v1/albums/21jF5jlMtzo94wbxmJ18aa	640	640	https://i.scdn.co/image/ab67616d0000b273c6b577e4c4a6d326354a89f7
0Lg1uZvI312TPqxNWShFXL	album	21	11	https://api.spotify.com/v1/albums/0Lg1uZvI312TPqxNWShFXL	640	640	https://i.scdn.co/image/ab67616d0000b2732118bf9b198b05a95ded6300
6TwN6Lq9glwnG8kNp6chHY	single	Skyfall	1	https://api.spotify.com/v1/albums/6TwN6Lq9glwnG8kNp6chHY	640	640	https://i.scdn.co/image/ab67616d0000b2732737be35cc5245eef495be90
3AvPX1B1HiFROvYjLb5Qwi	album	25	11	https://api.spotify.com/v1/albums/3AvPX1B1HiFROvYjLb5Qwi	640	640	https://i.scdn.co/image/ab67616d0000b27347ce408fb4926d69da6713c2
59ULskOkBMij4zL8pS7mi0	album	19	12	https://api.spotify.com/v1/albums/59ULskOkBMij4zL8pS7mi0	640	640	https://i.scdn.co/image/ab67616d0000b273da737a3e194e3b9a46c1a6a3
6tkjU4Umpo79wwkgPMV3nZ	album	Goodbye & Good Riddance	17	https://api.spotify.com/v1/albums/6tkjU4Umpo79wwkgPMV3nZ	640	640	https://i.scdn.co/image/ab67616d0000b273f7db43292a6a99b21b51d5b4
1btu0SV2DOI5HoFsvUd78F	album	Death Race For Love (Bonus Track Version)	23	https://api.spotify.com/v1/albums/1btu0SV2DOI5HoFsvUd78F	640	640	https://i.scdn.co/image/ab67616d0000b2738b27d35aa2c6dcf99895d664
5wi0oKiF99ZVACf6oTTsp2	single	Let Me Know (I Wonder Why Freestyle)	1	https://api.spotify.com/v1/albums/5wi0oKiF99ZVACf6oTTsp2	640	640	https://i.scdn.co/image/ab67616d0000b273401ea2c7ac7ef87bd32c990f
6n9DKpOxwifT5hOXtgLZSL	album	Legends Never Die	22	https://api.spotify.com/v1/albums/6n9DKpOxwifT5hOXtgLZSL	640	640	https://i.scdn.co/image/ab67616d0000b2733e0698e4ae5ffb82a005aeeb
7lpVrkFA2XivBC5cis1dil	album	The Party Never Ends	18	https://api.spotify.com/v1/albums/7lpVrkFA2XivBC5cis1dil	640	640	https://i.scdn.co/image/ab67616d0000b27395c9ed79b39281af89504f9e
44va7sFuK8IGzrj0BIX8kK	album	Brightest Blue	19	https://api.spotify.com/v1/albums/44va7sFuK8IGzrj0BIX8kK	640	640	https://i.scdn.co/image/ab67616d0000b273156d79bdb60fc5f7af75590b
2IRxVVqbSbqHJo8Zx50LYn	single	Timeless	1	https://api.spotify.com/v1/albums/2IRxVVqbSbqHJo8Zx50LYn	640	640	https://i.scdn.co/image/ab67616d0000b27394f662ef3b5677376d8a78d4
2nkto6YNI4rUYTLqEwWJ3o	album	Flower Boy	14	https://api.spotify.com/v1/albums/2nkto6YNI4rUYTLqEwWJ3o	640	640	https://i.scdn.co/image/ab67616d0000b2738940ac99f49e44f59e6f7fb3
0U28P0QVB1QRxpqp5IHOlH	album	CHROMAKOPIA	14	https://api.spotify.com/v1/albums/0U28P0QVB1QRxpqp5IHOlH	640	640	https://i.scdn.co/image/ab67616d0000b273124e9249fada4ff3c3a0739c
0Ay8XK7BBLgR7zK7oDbRgR	single	I'm Good On People	7	https://api.spotify.com/v1/albums/0Ay8XK7BBLgR7zK7oDbRgR	640	640	https://i.scdn.co/image/ab67616d0000b273753e0a96df3a7e556dd96402
5ED0GoysTq0UklFRc3HQYa	album	Backward Books 2	13	https://api.spotify.com/v1/albums/5ED0GoysTq0UklFRc3HQYa	640	640	https://i.scdn.co/image/ab67616d0000b273ea9a5afa22d98c389bf7c4ec
5hh3C1xDLpwnOT8V1GFRkI	album	A New Life	13	https://api.spotify.com/v1/albums/5hh3C1xDLpwnOT8V1GFRkI	640	640	https://i.scdn.co/image/ab67616d0000b273118ae7915b42ec083a382e7b
4QjMFxRwxRo5sjufctciQ6	album	Memoirs of the Reaper	11	https://api.spotify.com/v1/albums/4QjMFxRwxRo5sjufctciQ6	640	640	https://i.scdn.co/image/ab67616d0000b27326594e5a31a078cedd6b0d48
1aC4MDdz8opixrJpJSPSOI	single	Street Lament	1	https://api.spotify.com/v1/albums/1aC4MDdz8opixrJpJSPSOI	640	640	https://i.scdn.co/image/ab67616d0000b273036740038ec2f9e77ee27103
1nirVIQiTKsN2NH253WDxm	album	Backward Books (Reloaded)	11	https://api.spotify.com/v1/albums/1nirVIQiTKsN2NH253WDxm	640	640	https://i.scdn.co/image/ab67616d0000b273c7e8863b366db8abfa05507f
1aCuchEGLRLOtOe1fbm6j2	album	You Reap What You Sew	17	https://api.spotify.com/v1/albums/1aCuchEGLRLOtOe1fbm6j2	640	640	https://i.scdn.co/image/ab67616d0000b273b4f3bb09ad5d54cc06060aee
1rpCHilZQkw84A3Y9czvMO	album	Bewitched	14	https://api.spotify.com/v1/albums/1rpCHilZQkw84A3Y9czvMO	640	640	https://i.scdn.co/image/ab67616d0000b27374c732f8aa0e0ccbb3d17d96
1Ph9nV8cNv7Gq7yHOlmbgh	single	Spotify Singles Holiday	1	https://api.spotify.com/v1/albums/1Ph9nV8cNv7Gq7yHOlmbgh	640	640	https://i.scdn.co/image/ab67616d0000b273d16831527ee5c1edd9327b78
0Ydm84ftyiWRGOIFkdl30L	album	Everything I Know About Love	13	https://api.spotify.com/v1/albums/0Ydm84ftyiWRGOIFkdl30L	640	640	https://i.scdn.co/image/ab67616d0000b27348341e864d4b4881f56f01b4
2YkyuQGoMV2FlG7mFprnRf	single	Let You Break My Heart Again	1	https://api.spotify.com/v1/albums/2YkyuQGoMV2FlG7mFprnRf	640	640	https://i.scdn.co/image/ab67616d0000b2739457bba66a2daf4456855bb7
73wBVA41AulgjGiL3rBwfe	single	A Night To Remember	1	https://api.spotify.com/v1/albums/73wBVA41AulgjGiL3rBwfe	640	640	https://i.scdn.co/image/ab67616d0000b27303ea1900840b8804f779f7b3
3yAHCdy8s77OpoBvVY9EJp	single	A Very Laufey Holiday	5	https://api.spotify.com/v1/albums/3yAHCdy8s77OpoBvVY9EJp	640	640	https://i.scdn.co/image/ab67616d0000b273723d44f25c6bcc00bcbdea8f
7pooeoqY4uJkTaW70qxm3z	single	Typical of Me EP	7	https://api.spotify.com/v1/albums/7pooeoqY4uJkTaW70qxm3z	640	640	https://i.scdn.co/image/ab67616d0000b273afe473a4a47a4e69ab174069
1hmlhl74JfLyUqmqtCwvFb	album	Bewitched: The Goddess Edition	18	https://api.spotify.com/v1/albums/1hmlhl74JfLyUqmqtCwvFb	640	640	https://i.scdn.co/image/ab67616d0000b27313832cc69a78c53b18a8bc10
3uxIc24nwBIELYyRvmKdNG	single	Territory	1	https://api.spotify.com/v1/albums/3uxIc24nwBIELYyRvmKdNG	640	640	https://i.scdn.co/image/ab67616d0000b273546ece4afb27257f03056312
1DF9B2hfwX4EdgEFwGcRwh	album	Icarus Falls	29	https://api.spotify.com/v1/albums/1DF9B2hfwX4EdgEFwGcRwh	640	640	https://i.scdn.co/image/ab67616d0000b2732bdcb339402ebd78651f09c8
1MPAXuTVL2Ej5x0JHiSPq8	album	reputation Stadium Tour Surprise Song Playlist	46	https://api.spotify.com/v1/albums/1MPAXuTVL2Ej5x0JHiSPq8	640	640	https://i.scdn.co/image/ab67616d0000b27363d77f99117b28af9f656918
5amj9zNeZ3B2EdpBgXrOZ0	album	Mind Of Mine (Deluxe Edition)	18	https://api.spotify.com/v1/albums/5amj9zNeZ3B2EdpBgXrOZ0	640	640	https://i.scdn.co/image/ab67616d0000b273a15e26d05b7ce776b566579d
5wg6T8bCVnRk3ToKy0yXG5	album	Melt (Deluxe)	15	https://api.spotify.com/v1/albums/5wg6T8bCVnRk3ToKy0yXG5	640	640	https://i.scdn.co/image/ab67616d0000b2732752c64f94f9b37ba08f0f22
1m8eXQqp3QCQyR56fgbm6o	single	A Whole New World (End Title) [From "Aladdin"]	1	https://api.spotify.com/v1/albums/1m8eXQqp3QCQyR56fgbm6o	640	640	https://i.scdn.co/image/ab67616d0000b2736c076fc850f473e8eb9a898c
0PGluYePuY9INYN7SQheZ0	album	ROOM UNDER THE STAIRS	15	https://api.spotify.com/v1/albums/0PGluYePuY9INYN7SQheZ0	640	640	https://i.scdn.co/image/ab67616d0000b273dfe6f99373d3fc2784c20f34
2yuQqhSklmfWgn8lmJNk5t	album	Nobody Is Listening	11	https://api.spotify.com/v1/albums/2yuQqhSklmfWgn8lmJNk5t	640	640	https://i.scdn.co/image/ab67616d0000b273f160ff1c91caffd9e24cc736
61ulfFSmmxMhc2wCdmdMkN	album	Merry Christmas	10	https://api.spotify.com/v1/albums/61ulfFSmmxMhc2wCdmdMkN	640	640	https://i.scdn.co/image/ab67616d0000b2734246e3158421f5abb75abc4f
3RPImDZ7Ihh5YR5iJh1gH1	album	Memoirs of an imperfect Angel	21	https://api.spotify.com/v1/albums/3RPImDZ7Ihh5YR5iJh1gH1	640	640	https://i.scdn.co/image/ab67616d0000b273a9e20a20b9fc607d81f9c335
43iBTEWECK7hSnE0p6GgNo	album	The Emancipation of Mimi	14	https://api.spotify.com/v1/albums/43iBTEWECK7hSnE0p6GgNo	640	640	https://i.scdn.co/image/ab67616d0000b273768bc8d9f078db929dfcfbd1
1ibYM4abQtSVQFQWvDSo4J	album	Daydream	12	https://api.spotify.com/v1/albums/1ibYM4abQtSVQFQWvDSo4J	640	640	https://i.scdn.co/image/ab67616d0000b273749e9bfa78277f30ad2c9a9c
3cBk22r1tb6omRQ4jr6SE8	album	It Ain't Safe No More. . .	19	https://api.spotify.com/v1/albums/3cBk22r1tb6omRQ4jr6SE8	640	640	https://i.scdn.co/image/ab67616d0000b273ac8e6d7dae57f0c1c87e230c
31MluXLYC0ZnCSfUZ5T4GX	album	E=MC2 (Deluxe Version)	16	https://api.spotify.com/v1/albums/31MluXLYC0ZnCSfUZ5T4GX	640	640	https://i.scdn.co/image/ab67616d0000b273633bb0a5f75b91c45c3a6b37
4sgYpkIASM1jVlNC8Wp9oF	album	Paramore	17	https://api.spotify.com/v1/albums/4sgYpkIASM1jVlNC8Wp9oF	640	640	https://i.scdn.co/image/ab67616d0000b273532033d0d90736f661c13d35
71rziY9eLo1tA2dBMxrwhc	album	Riot!	12	https://api.spotify.com/v1/albums/71rziY9eLo1tA2dBMxrwhc	640	640	https://i.scdn.co/image/ab67616d0000b273bee754528c08d5ff6799a1eb
27UqZoE1kV6sIV6uQcI28A	album	Brand New Eyes	11	https://api.spotify.com/v1/albums/27UqZoE1kV6sIV6uQcI28A	640	640	https://i.scdn.co/image/ab67616d0000b273e01d7d558032457b0e4883f6
1c9Sx7XdXuMptGyfCB6hHs	album	After Laughter	12	https://api.spotify.com/v1/albums/1c9Sx7XdXuMptGyfCB6hHs	640	640	https://i.scdn.co/image/ab67616d0000b273dbd83e179619408e5d05cc99
70iJhodSPkl7FR1VW4n0KF	single	Decode	1	https://api.spotify.com/v1/albums/70iJhodSPkl7FR1VW4n0KF	640	640	https://i.scdn.co/image/ab67616d0000b273b236d0eae2659e7e7adb8b56
6Lp82GTJXzgtIopT0g7N7k	album	DRIP	9	https://api.spotify.com/v1/albums/6Lp82GTJXzgtIopT0g7N7k	640	640	https://i.scdn.co/image/ab67616d0000b273119800c5fc88785ee3ed1524
0eSbsl3j8jz96LC2NCLPc4	single	BABYMONS7ER	7	https://api.spotify.com/v1/albums/0eSbsl3j8jz96LC2NCLPc4	640	640	https://i.scdn.co/image/ab67616d0000b2734f6afc385052250c766a5683
2CSQuvvt3XHLDX36O3nRv7	single	BATTER UP	1	https://api.spotify.com/v1/albums/2CSQuvvt3XHLDX36O3nRv7	640	640	https://i.scdn.co/image/ab67616d0000b27324e7d3f6bcc7f5594638a4f0
7aJuG4TFXa2hmE4z1yxc3n	album	HIT ME HARD AND SOFT	10	https://api.spotify.com/v1/albums/7aJuG4TFXa2hmE4z1yxc3n	640	640	https://i.scdn.co/image/ab67616d0000b27371d62ea7ea8a5be92d3c1f62
2s1cUyFnqR9htNZydUXTyj	album	Don't Come Easy	10	https://api.spotify.com/v1/albums/2s1cUyFnqR9htNZydUXTyj	640	640	https://i.scdn.co/image/ab67616d0000b273ff1ec6507eacc618f4473b4b
0SZHaLGJNlXFiuGVQVfNZL	album	Reach	13	https://api.spotify.com/v1/albums/0SZHaLGJNlXFiuGVQVfNZL	640	640	https://i.scdn.co/image/ab67616d0000b2736d79d328a40e79504fb4a7c2
5mwOo1zikswhmfHvtqVSXg	album	Pink Moon	11	https://api.spotify.com/v1/albums/5mwOo1zikswhmfHvtqVSXg	640	640	https://i.scdn.co/image/ab67616d0000b273e369195caf5d169bf5e9eafc
0B2E1w5T7PEbZIctZnnt9K	album	Bryter Layter	10	https://api.spotify.com/v1/albums/0B2E1w5T7PEbZIctZnnt9K	640	640	https://i.scdn.co/image/ab67616d0000b2732062d15bea2602a8a2cfe8b7
7IpcJbVxLLEfW0KXB7ndE2	album	Five Leaves Left	10	https://api.spotify.com/v1/albums/7IpcJbVxLLEfW0KXB7ndE2	640	640	https://i.scdn.co/image/ab67616d0000b273bd158c797b1026005c2917bc
1q4B7r3dzzwkarZ1B9bk9e	album	PARTYNEXTDOOR	10	https://api.spotify.com/v1/albums/1q4B7r3dzzwkarZ1B9bk9e	640	640	https://i.scdn.co/image/ab67616d0000b273090b1f9557a6d23c0817bd88
4Oy8aMeS4lDCTK3Ukss3Dd	single	Dreamin	2	https://api.spotify.com/v1/albums/4Oy8aMeS4lDCTK3Ukss3Dd	640	640	https://i.scdn.co/image/ab67616d0000b2737df7878832d569472343b7a7
3mpMvyPWtxJnL3vywQHH5K	album	PARTYNEXTDOOR 4 (P4)	14	https://api.spotify.com/v1/albums/3mpMvyPWtxJnL3vywQHH5K	640	640	https://i.scdn.co/image/ab67616d0000b27322ac75a1f50440962b7f70e6
1xwhNJCfTwuRia7Cpo7IbJ	album	PARTYNEXTDOOR TWO	12	https://api.spotify.com/v1/albums/1xwhNJCfTwuRia7Cpo7IbJ	640	640	https://i.scdn.co/image/ab67616d0000b2736cfa297b0178fd91dca5c4f1
3HAkHqZtXoyEH0Whnamswu	album	PARTYNEXTDOOR	10	https://api.spotify.com/v1/albums/3HAkHqZtXoyEH0Whnamswu	640	640	https://i.scdn.co/image/ab67616d0000b2735adf49e4d5f1eb30646a2adf
1CTk9dG2nyaUovNIQfBzqb	album	PARTYNEXTDOOR 4 (P4)	14	https://api.spotify.com/v1/albums/1CTk9dG2nyaUovNIQfBzqb	640	640	https://i.scdn.co/image/ab67616d0000b2732f738e10048273eb92068a5a
2veXxRriGPw4fFBZQNNMfQ	album	PARTYNEXTDOOR 3 (P3)	16	https://api.spotify.com/v1/albums/2veXxRriGPw4fFBZQNNMfQ	640	640	https://i.scdn.co/image/ab67616d0000b273240b49b7795e0611ccf416b7
6kzoWb4UzvKYgbDfAwgaFq	album	Konvicted	12	https://api.spotify.com/v1/albums/6kzoWb4UzvKYgbDfAwgaFq	640	640	https://i.scdn.co/image/ab67616d0000b273d9bcf5565005950b353bc9cf
77eKpEVxmSr1RhqMlirlTF	album	Trouble Deluxe Edition	23	https://api.spotify.com/v1/albums/77eKpEVxmSr1RhqMlirlTF	640	640	https://i.scdn.co/image/ab67616d0000b2736ec7ab30397ea37295340a41
1Z5oeufZDMMzL8ZlWTZrQg	album	Freedom	14	https://api.spotify.com/v1/albums/1Z5oeufZDMMzL8ZlWTZrQg	640	640	https://i.scdn.co/image/ab67616d0000b273e77aece1352dcc4f4cfd097f
5x2eTJrbEvmOTEcWWWubLy	album	Ra-One	15	https://api.spotify.com/v1/albums/5x2eTJrbEvmOTEcWWWubLy	640	640	https://i.scdn.co/image/ab67616d0000b27344aa56e23e3a89802e6c6347
4SAz7HhY1uBvxF6O9k1iyq	album	Konvicted (Complete Edition)	27	https://api.spotify.com/v1/albums/4SAz7HhY1uBvxF6O9k1iyq	640	640	https://i.scdn.co/image/ab67616d0000b273b339bb65a381f7345296e0d0
10FLjwfpbxLmW8c25Xyc2N	single	Die With A Smile	1	https://api.spotify.com/v1/albums/10FLjwfpbxLmW8c25Xyc2N	640	640	https://i.scdn.co/image/ab67616d0000b27382ea2e9e1858aa012c57cd45
2IYQwwgxgOIn7t3iF6ufFD	single	APT.	1	https://api.spotify.com/v1/albums/2IYQwwgxgOIn7t3iF6ufFD	640	640	https://i.scdn.co/image/ab67616d0000b27336032cb4acd9df050bc2e197
58ufpQsJ1DS5kq4hhzQDiI	album	Unorthodox Jukebox	10	https://api.spotify.com/v1/albums/58ufpQsJ1DS5kq4hhzQDiI	640	640	https://i.scdn.co/image/ab67616d0000b273926f43e7cce571e62720fd46
1uyf3l2d4XYwiEqAb7t7fX	album	Doo-Wops & Hooligans	10	https://api.spotify.com/v1/albums/1uyf3l2d4XYwiEqAb7t7fX	640	640	https://i.scdn.co/image/ab67616d0000b273f6b55ca93bd33211227b502b
4PgleR09JVnm3zY1fW3XBA	album	24K Magic	9	https://api.spotify.com/v1/albums/4PgleR09JVnm3zY1fW3XBA	640	640	https://i.scdn.co/image/ab67616d0000b273232711f7d66a1e19e89e28c5
0kbZ4ZNRs76sSFeGUEErFM	album	BORN PINK	8	https://api.spotify.com/v1/albums/0kbZ4ZNRs76sSFeGUEErFM	640	640	https://i.scdn.co/image/ab67616d0000b273002ef53878df1b4e91c15406
71O60S5gIJSIAhdnrDIh3N	album	THE ALBUM	8	https://api.spotify.com/v1/albums/71O60S5gIJSIAhdnrDIh3N	640	640	https://i.scdn.co/image/ab67616d0000b2737dd8f95320e8ef08aa121dfe
7ikmjsvRzDRzxHN0KXSQdv	single	As If It's Your Last	1	https://api.spotify.com/v1/albums/7ikmjsvRzDRzxHN0KXSQdv	640	640	https://i.scdn.co/image/ab67616d0000b273ac93d8b1bd84fa6b5291ba21
3PNxZ3BELbUXJ1XLktXiHz	single	KILL THIS LOVE	5	https://api.spotify.com/v1/albums/3PNxZ3BELbUXJ1XLktXiHz	640	640	https://i.scdn.co/image/ab67616d0000b273e20e5c366b497518353497b0
0obMz8EHnr3dg6NCUK4xWp	album	Dua Lipa (Complete Edition)	25	https://api.spotify.com/v1/albums/0obMz8EHnr3dg6NCUK4xWp	640	640	https://i.scdn.co/image/ab67616d0000b273ae395b47b186c2bc8c458e0f
7jaSNQUBJbvfbZHLNFrV7P	album	BORN PINK	8	https://api.spotify.com/v1/albums/7jaSNQUBJbvfbZHLNFrV7P	640	640	https://i.scdn.co/image/ab67616d0000b2734aeaaeeb0755f1d8a8b51738
0wOiWrujRbxlKEGWRQpKYc	single	SQUARE UP	4	https://api.spotify.com/v1/albums/0wOiWrujRbxlKEGWRQpKYc	640	640	https://i.scdn.co/image/ab67616d0000b273bfd46639322b597331d9ecef
\.


--
-- Data for Name: albummadeby; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.albummadeby (artist_id, album_id) FROM stdin;
1	1
1	2
2	3
2	4
3	5
3	6
4	7
4	8
\.


--
-- Data for Name: artist; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.artist (artist_id, genre, name, popularity, href, image_height, image_width, image_link) FROM stdin;
1	{pop,rock}	Artist One	85	http://example.com/artist1	640	480	https://m.media-amazon.com/images/I/81nFF-rXdRL._UF1000,1000_QL80_.jpg
2	{hiphop}	Artist Two	78	http://example.com/artist2	640	480	https://www.liluziofficial.com/sites/g/files/g2000016571/files/2021-12/Pluto-x-Baby-Pluto-Cover-Deluxe-PA_0_0.jpg
3	{jazz}	Artist Three	90	http://example.com/artist3	640	480	https://images.squarespace-cdn.com/content/v1/5f6df5bcd8a0286b9df5948b/1616761670933-VAEP4KCO4EU0BZ6VCTN9/204-Kanye-West-Graduation.jpeg
4	{electronic,pop}	Artist Four	82	http://example.com/artist4	640	480	https://upload.wikimedia.org/wikipedia/en/f/f1/808s_%26_Heartbreak.png
5	{classical}	Artist Five	88	http://example.com/artist5	640	480	https://e-cdns-images.dzcdn.net/images/cover/069a5dba671436da9301aad36fc9a983/500x500-000000-80-0-0.jpg
3SozjO3Lat463tQICI9LcE	{}	Tyla	78	https://api.spotify.com/v1/artists/3SozjO3Lat463tQICI9LcE	640	640	https://i.scdn.co/image/ab6761610000e5eba1fca104a7abe5a7031b887d
1MXZ0hsGic96dWRDKwAwdr	{"cali rap","melodic rap"}	Tyla Yaweh	55	https://api.spotify.com/v1/artists/1MXZ0hsGic96dWRDKwAwdr	640	640	https://i.scdn.co/image/ab6761610000e5ebe43df4cc104a9cc9c11b0b97
4V8LLVI7PbaPR0K2TGSxFF	{"hip hop",rap}	Tyler, The Creator	94	https://api.spotify.com/v1/artists/4V8LLVI7PbaPR0K2TGSxFF	640	640	https://i.scdn.co/image/ab6761610000e5ebdfa2b0c7544a772042a12e52
2YZyLoL8N0Wb9xBt1NhZWg	{"conscious hip hop","hip hop",rap,"west coast rap"}	Kendrick Lamar	95	https://api.spotify.com/v1/artists/2YZyLoL8N0Wb9xBt1NhZWg	640	640	https://i.scdn.co/image/ab6761610000e5eb39ba6dcd4355c03de0b50918
687cZJR45JO7jhk1LHIbgq	{"afro r&b",afrobeats,alte,"nigerian pop"}	Tems	78	https://api.spotify.com/v1/artists/687cZJR45JO7jhk1LHIbgq	640	640	https://i.scdn.co/image/ab6761610000e5eb22d7d6f8981c7a27bf68a382
13ZEDW6vyBF12HYcZRr4EV	{"kentucky indie","kentucky roots","outlaw country"}	Tyler Childers	79	https://api.spotify.com/v1/artists/13ZEDW6vyBF12HYcZRr4EV	640	640	https://i.scdn.co/image/ab6761610000e5eb3b3bb0d677529cd524eadfdc
5u7IvRoGPTFjHhP7iLJdEe	{"high vibe"}	Tyla Jane	43	https://api.spotify.com/v1/artists/5u7IvRoGPTFjHhP7iLJdEe	640	640	https://i.scdn.co/image/ab6761610000e5ebf52ef1245cb3f2c562eb01a3
3ZpEKRjHaHANcpk10u6Ntq	{afrobeats}	Ayra Starr	78	https://api.spotify.com/v1/artists/3ZpEKRjHaHANcpk10u6Ntq	640	640	https://i.scdn.co/image/ab6761610000e5eb10175aaa959b847e9f11a17d
63wjVVauFUQ4gBw6QXTT5N	{"modern country pop"}	Tyler Braden	67	https://api.spotify.com/v1/artists/63wjVVauFUQ4gBw6QXTT5N	640	640	https://i.scdn.co/image/ab6761610000e5eb8e756349871f79669c9a0bbe
5p9HO3XC5P3BLxJs5Mtrhm	{"pov: indie","psychedelic pop"}	Djo	76	https://api.spotify.com/v1/artists/5p9HO3XC5P3BLxJs5Mtrhm	640	640	https://i.scdn.co/image/ab6761610000e5eb02fcc327683d53bea9583c69
74KM79TiuVKeVCqs8QtB0B	{pop}	Sabrina Carpenter	94	https://api.spotify.com/v1/artists/74KM79TiuVKeVCqs8QtB0B	640	640	https://i.scdn.co/image/ab6761610000e5ebe053b8338322b9c8609ee7ae
4unxRcCjChwb29UGWhgwxz	{}	Tyler Not the Creator	0	https://api.spotify.com/v1/artists/4unxRcCjChwb29UGWhgwxz	0	0	
3TVXtAsR1Inumwj472S9r4	{"canadian hip hop","canadian pop","hip hop","pop rap",rap}	Drake	96	https://api.spotify.com/v1/artists/3TVXtAsR1Inumwj472S9r4	640	640	https://i.scdn.co/image/ab6761610000e5eb4293385d324db8558179afd9
06HL4z0CvFAxyc27GXpf02	{pop}	Taylor Swift	100	https://api.spotify.com/v1/artists/06HL4z0CvFAxyc27GXpf02	640	640	https://i.scdn.co/image/ab6761610000e5ebe672b5f553298dcdccb0e676
5K4W6rqBFWDnAN6FQUkS6x	{"chicago rap","hip hop",rap}	Kanye West	93	https://api.spotify.com/v1/artists/5K4W6rqBFWDnAN6FQUkS6x	640	640	https://i.scdn.co/image/ab6761610000e5eb6e835a500e791bf9c27a422a
2h93pZq0e7k5yf4dywlkpM	{"lgbtq+ hip hop","neo soul"}	Frank Ocean	89	https://api.spotify.com/v1/artists/2h93pZq0e7k5yf4dywlkpM	640	640	https://i.scdn.co/image/ab6761610000e5ebee3123e593174208f9754fab
7tYKF4w9nC0nq9CsPZTHyP	{pop,r&b,rap}	SZA	91	https://api.spotify.com/v1/artists/7tYKF4w9nC0nq9CsPZTHyP	640	640	https://i.scdn.co/image/ab6761610000e5eb0895066d172e1f51f520bc65
6qqNVTkY8uBg9cP3Jd7DAH	{"art pop",pop}	Billie Eilish	96	https://api.spotify.com/v1/artists/6qqNVTkY8uBg9cP3Jd7DAH	640	640	https://i.scdn.co/image/ab6761610000e5eb4a21b4760d2ecb7b0dcdc8da
1Xyo4u8uXC1ZmMpatF05PJ	{"canadian contemporary r&b","canadian pop",pop}	The Weeknd	96	https://api.spotify.com/v1/artists/1Xyo4u8uXC1ZmMpatF05PJ	640	640	https://i.scdn.co/image/ab6761610000e5eb9e528993a2820267b97f6aae
1RyvyyTE3xzB2ZywiAwp0i	{"atl hip hop","hip hop",rap,"southern hip hop",trap}	Future	93	https://api.spotify.com/v1/artists/1RyvyyTE3xzB2ZywiAwp0i	640	640	https://i.scdn.co/image/ab6761610000e5eb7565b356bc9d9394eefa2ccb
0du5cEVh5yTK9QJze8zA0C	{"dance pop",pop}	Bruno Mars	96	https://api.spotify.com/v1/artists/0du5cEVh5yTK9QJze8zA0C	640	640	https://i.scdn.co/image/ab6761610000e5ebc36dd9eb55fb0db4911f25dd
0Y5tJX1MQlPlqiwlOH1tJY	{rap,"slap house"}	Travis Scott	94	https://api.spotify.com/v1/artists/0Y5tJX1MQlPlqiwlOH1tJY	640	640	https://i.scdn.co/image/ab6761610000e5eb19c2790744c792d05570bb71
4tuJ0bMpJh08umKkEXKUI5	{"alt z"}	Gracie Abrams	91	https://api.spotify.com/v1/artists/4tuJ0bMpJh08umKkEXKUI5	640	640	https://i.scdn.co/image/ab6761610000e5ebf6d51e6f5342d2d363220920
7c0XG5cIJTrrAgEC3ULPiq	{"hip hop","pop rap",r&b,"southern hip hop",trap,"trap soul"}	Ty Dolla $ign	84	https://api.spotify.com/v1/artists/7c0XG5cIJTrrAgEC3ULPiq	640	640	https://i.scdn.co/image/ab6761610000e5eb24b3c0f33bc5e3f6a53f84d7
1Gh0pCAxpjw0Iq3JMoVAwO	{}	Ty Myers	65	https://api.spotify.com/v1/artists/1Gh0pCAxpjw0Iq3JMoVAwO	640	640	https://i.scdn.co/image/ab6761610000e5ebd464dc132dd25feb56bb6792
5LHRHt1k9lMyONurDHEdrp	{"hip hop","pop rap",rap,"southern hip hop",trap}	Tyga	79	https://api.spotify.com/v1/artists/5LHRHt1k9lMyONurDHEdrp	640	640	https://i.scdn.co/image/ab6761610000e5eb1d8e3ecf59f556b8e4fafce8
0blJzvevdXrp21YeI2vbco	{"alternative metal","gothic metal","industrial rock","nu metal"}	Type O Negative	66	https://api.spotify.com/v1/artists/0blJzvevdXrp21YeI2vbco	640	640	https://i.scdn.co/image/ab6761610000e5eb843df562d1bad7f5163fd164
5oOhM2DFWab8XhSdQiITry	{chillwave,downtempo,electronica,indietronica,"intelligent dance music"}	Tycho	58	https://api.spotify.com/v1/artists/5oOhM2DFWab8XhSdQiITry	640	640	https://i.scdn.co/image/ab6761610000e5eb86e6efcd925f506fbc7620cb
3BEV5FcxOtkQJ7lLRKMh3V	{"contemporary country","modern country pop"}	Tyler Hubbard	66	https://api.spotify.com/v1/artists/3BEV5FcxOtkQJ7lLRKMh3V	640	640	https://i.scdn.co/image/ab6761610000e5eb2f6f827fdf212575e1c4f646
0PzvHyRUSw6pCcWi9BYfKk	{}	Tyler Cassidy	38	https://api.spotify.com/v1/artists/0PzvHyRUSw6pCcWi9BYfKk	640	640	https://i.scdn.co/image/ab6761610000e5ebbf9bfff56da61d35283b818d
1xoxekeb8jUVHKJB7m6bfg	{"bedroom soul"}	Tyler Cole	59	https://api.spotify.com/v1/artists/1xoxekeb8jUVHKJB7m6bfg	640	640	https://i.scdn.co/image/ab6761610000e5ebc4e9c6b46ca8e6cb1f546e6a
3oFu5CCLk4p4zLBNo3wrai	{"red dirt"}	Tyler Halverson	46	https://api.spotify.com/v1/artists/3oFu5CCLk4p4zLBNo3wrai	640	640	https://i.scdn.co/image/ab6761610000e5ebe3c7f5627498f1f39b19cdbc
1K15GRZZATsCJyGJ4bYiEz	{"florida drill"}	Luh Tyler	66	https://api.spotify.com/v1/artists/1K15GRZZATsCJyGJ4bYiEz	640	640	https://i.scdn.co/image/ab6761610000e5ebb88f8f119ba7d590405e8a34
4MCBfE4596Uoi2O4DtmEMz	{"chicago rap","melodic rap",rap}	Juice WRLD	90	https://api.spotify.com/v1/artists/4MCBfE4596Uoi2O4DtmEMz	640	640	https://i.scdn.co/image/ab6761610000e5eb1908e1a8b79abf71d5598944
66CXWjxzNUsdJxJ2JdwvnR	{pop}	Ariana Grande	94	https://api.spotify.com/v1/artists/66CXWjxzNUsdJxJ2JdwvnR	640	640	https://i.scdn.co/image/ab6761610000e5eb40b5c07ab77b6b1a9075fdc0
2qoQgPAilErOKCwE2Y8wOG	{"southern hip hop"}	GloRilla	83	https://api.spotify.com/v1/artists/2qoQgPAilErOKCwE2Y8wOG	640	640	https://i.scdn.co/image/ab6761610000e5ebc33cf3ad025517202d8efbc0
2hlmm7s2ICUX0LVIhVFlZQ	{"atl hip hop","melodic rap",rap,trap}	Gunna	88	https://api.spotify.com/v1/artists/2hlmm7s2ICUX0LVIhVFlZQ	640	640	https://i.scdn.co/image/ab6761610000e5ebb978b95b8e03351df8e103af
7oPftvlwr6VrsViSDV7fJY	{"modern rock","permanent wave",punk,rock}	Green Day	83	https://api.spotify.com/v1/artists/7oPftvlwr6VrsViSDV7fJY	640	640	https://i.scdn.co/image/ab6761610000e5eb6ff0cd5ef2ecf733804984bb
3AA28KZvwAUcZuOKwyblJQ	{"alternative hip hop","modern rock",rock}	Gorillaz	81	https://api.spotify.com/v1/artists/3AA28KZvwAUcZuOKwyblJQ	640	640	https://i.scdn.co/image/ab6761610000e5eb2c61d9506d5af5fb502b343f
1Cs0zKBU1kc0i8ypK3B9ai	{"big room","dance pop",edm,pop,"pop dance"}	David Guetta	90	https://api.spotify.com/v1/artists/1Cs0zKBU1kc0i8ypK3B9ai	640	640	https://i.scdn.co/image/ab6761610000e5ebf150017ca69c8793503c2d4f
45dkTj5sMRSjrmBSBeiHym	{pop}	Tate McRae	86	https://api.spotify.com/v1/artists/45dkTj5sMRSjrmBSBeiHym	640	640	https://i.scdn.co/image/ab6761610000e5eb4623c7ed9d1e2d2938fae462
6XkjpgcEsYab502Vr1bBeW	{"musica chihuahuense"}	Grupo Frontera	87	https://api.spotify.com/v1/artists/6XkjpgcEsYab502Vr1bBeW	640	640	https://i.scdn.co/image/ab6761610000e5eb3f244d61f287932d5c958fea
5jG6uRqinuI83luutMpW6y	{"modern country pop"}	Gavin Adcock	70	https://api.spotify.com/v1/artists/5jG6uRqinuI83luutMpW6y	640	640	https://i.scdn.co/image/ab6761610000e5eb3d1ca401960cb15ace83b98d
4TMHGUX5WI7OOm53PqSDAT	{"cosmic american","jam band","psychedelic rock"}	Grateful Dead	67	https://api.spotify.com/v1/artists/4TMHGUX5WI7OOm53PqSDAT	697	1000	https://i.scdn.co/image/bba340d0c2aa4c9cbcbab0a4c3259d8f8e27f0d7
1dKdetem2xEmjgvyymzytS	{banda,"musica mexicana",norteno,sierreno}	Grupo Firme	82	https://api.spotify.com/v1/artists/1dKdetem2xEmjgvyymzytS	640	640	https://i.scdn.co/image/ab6761610000e5eb8d96f038e5ae16ba72809034
4NpFxQe2UvRCAjto3JqlSl	{"modern blues rock","modern hard rock",rock}	Greta Van Fleet	67	https://api.spotify.com/v1/artists/4NpFxQe2UvRCAjto3JqlSl	640	640	https://i.scdn.co/image/ab6761610000e5eb301eb2b9d83cf86efa024ccb
1gW6pz5n1aK249L0GvfQCC	{corrido,norteno,"sad sierreno"}	Grupo Marca Registrada	80	https://api.spotify.com/v1/artists/1gW6pz5n1aK249L0GvfQCC	640	640	https://i.scdn.co/image/ab6761610000e5eb9508af8df57e8aeb9ca50aeb
053q0ukIDRgzwTr4vNSwab	{"art pop","canadian electropop","grave wave",indietronica,metropopolis,neo-synthpop}	Grimes	70	https://api.spotify.com/v1/artists/053q0ukIDRgzwTr4vNSwab	640	640	https://i.scdn.co/image/ab6761610000e5eb34771f759ca81a422f5f2b57
5sXaGoRLSpd7VeyZrLkKwt	{"indie folk","pop folk","stomp and flutter","stomp and holler"}	Gregory Alan Isakov	73	https://api.spotify.com/v1/artists/5sXaGoRLSpd7VeyZrLkKwt	640	640	https://i.scdn.co/image/ab6761610000e5eb4528d0f9bb51b241561a16f3
7liE451ZyJBxZ4pLKgIeEH	{}	Gracie's Corner	54	https://api.spotify.com/v1/artists/7liE451ZyJBxZ4pLKgIeEH	640	640	https://i.scdn.co/image/ab6761610000e5eb297c38e7cb308c053e3353d9
3YdT8QvV4QvY4DfVJhxdcZ	{"post-teen pop"}	Grace VanderWaal	57	https://api.spotify.com/v1/artists/3YdT8QvV4QvY4DfVJhxdcZ	640	640	https://i.scdn.co/image/ab6761610000e5eba60bc0cf0be39ff11bc4500e
662lI9CXPZ0a6ou4CkLr0G	{"singer-songwriter pop"}	GRAHAM	66	https://api.spotify.com/v1/artists/662lI9CXPZ0a6ou4CkLr0G	640	640	https://i.scdn.co/image/ab6761610000e5eb68433ac169224827b59043a0
4ZgQDCtRqZlhLswVS6MHN4	{"modern alternative rock","modern rock","pov: indie",rock}	grandson	66	https://api.spotify.com/v1/artists/4ZgQDCtRqZlhLswVS6MHN4	640	640	https://i.scdn.co/image/ab6761610000e5eb4afdc02ea65bf9a6fa01f3a5
1jfnMuDBl5OaAoU0VwLD8m	{"color noise",sleep,"white noise"}	Granular	65	https://api.spotify.com/v1/artists/1jfnMuDBl5OaAoU0VwLD8m	640	640	https://i.scdn.co/image/ab67616d0000b273bce4fa4688f58b6162a149e9
0ZDuCmctvivaIwQuHrg48n	{}	Gracie Binion	53	https://api.spotify.com/v1/artists/0ZDuCmctvivaIwQuHrg48n	640	640	https://i.scdn.co/image/ab6761610000e5ebcb67c32817326ab3d76e522b
4Uc8Dsxct0oMqx0P6i60ea	{"bedroom pop",pop,"pov: indie"}	Conan Gray	80	https://api.spotify.com/v1/artists/4Uc8Dsxct0oMqx0P6i60ea	640	640	https://i.scdn.co/image/ab6761610000e5ebcc2d67917c6dc6cdfd009964
2xiIXseIJcq3nG7C8fHeBj	{"alternative metal","canadian metal","canadian rock","nu metal",post-grunge,rock}	Three Days Grace	78	https://api.spotify.com/v1/artists/2xiIXseIJcq3nG7C8fHeBj	640	640	https://i.scdn.co/image/ab6761610000e5eb2e619cf7c1577485d14c2043
6y5amJcTjeDgLXIjtQLMst	{r&b}	SAYGRACE	60	https://api.spotify.com/v1/artists/6y5amJcTjeDgLXIjtQLMst	640	640	https://i.scdn.co/image/ab6761610000e5ebfb96ca09fa146037c45c564b
1PJVVIeS5Wu0wbZDhtC0Ht	{}	Grace Potter	55	https://api.spotify.com/v1/artists/1PJVVIeS5Wu0wbZDhtC0Ht	640	640	https://i.scdn.co/image/ab6761610000e5eb8737410727a5d0df043d437f
2f9ZiYA2ic1r1voObUimdd	{"art pop"}	Grace Jones	55	https://api.spotify.com/v1/artists/2f9ZiYA2ic1r1voObUimdd	640	640	https://i.scdn.co/image/ab6761610000e5ebc1c97da9c6326675e8c493cd
49EzPBcvDdWe93QJcA7UPf	{}	Grace Enger	40	https://api.spotify.com/v1/artists/49EzPBcvDdWe93QJcA7UPf	640	640	https://i.scdn.co/image/ab6761610000e5eb3cb80ee21283553662331bcd
0yFeMot541QuRLduP9XAPO	{}	Grace Rolek	54	https://api.spotify.com/v1/artists/0yFeMot541QuRLduP9XAPO	0	0	
5GkuwRdmvp8r48JCPwqM7E	{}	Claire Leslie	39	https://api.spotify.com/v1/artists/5GkuwRdmvp8r48JCPwqM7E	640	640	https://i.scdn.co/image/ab6761610000e5eb6a28a9f91601930572cfa60b
7HcFX1LEnI6zHIHCt8olTl	{banda,"regional mexicano femenil"}	Graciela Beltran	40	https://api.spotify.com/v1/artists/7HcFX1LEnI6zHIHCt8olTl	640	640	https://i.scdn.co/image/ab6761610000e5eb88b24980d36e2cd293201596
2RQXRUsr4IW1f3mKyKsy4B	{"pov: indie","singer-songwriter pop"}	Noah Kahan	86	https://api.spotify.com/v1/artists/2RQXRUsr4IW1f3mKyKsy4B	640	640	https://i.scdn.co/image/ab6761610000e5eb8c52b10e110f62fe45761590
3yZLchlyOSmGC6B6bUhgVU	{}	Gracia Soberana Música	53	https://api.spotify.com/v1/artists/3yZLchlyOSmGC6B6bUhgVU	640	640	https://i.scdn.co/image/ab6761610000e5eb73833af96ae165365372c2b0
4b53XvC9wtlLs8KOLEBkr6	{"bossa nova jazz"}	Gracinha Leporace	47	https://api.spotify.com/v1/artists/4b53XvC9wtlLs8KOLEBkr6	0	0	
1McMsnEElThX1knmY4oliG	{pop}	Olivia Rodrigo	89	https://api.spotify.com/v1/artists/1McMsnEElThX1knmY4oliG	640	640	https://i.scdn.co/image/ab6761610000e5ebe03a98785f3658f0b6461ec4
7EnYA3MomsUMPg4hbWmy5r	{}	Graciela Galmes	44	https://api.spotify.com/v1/artists/7EnYA3MomsUMPg4hbWmy5r	640	640	https://i.scdn.co/image/ab6761610000e5eb019a3b94817cd4cd89ea9114
1GmsPCcpKgF9OhlNXjOsbS	{"alt z","boston folk","indie pop","singer-songwriter pop"}	Lizzy McAlpine	75	https://api.spotify.com/v1/artists/1GmsPCcpKgF9OhlNXjOsbS	640	640	https://i.scdn.co/image/ab6761610000e5eb047494355f49310b5b7e5f2b
4q3ewBCX7sLwd24euuV69X	{reggaeton,"trap latino","urbano latino"}	Bad Bunny	95	https://api.spotify.com/v1/artists/4q3ewBCX7sLwd24euuV69X	640	640	https://i.scdn.co/image/ab6761610000e5eb744a4243fb6cc938011a98f4
1uNFoZAHBGtllmzznpCI3s	{"canadian pop",pop}	Justin Bieber	92	https://api.spotify.com/v1/artists/1uNFoZAHBGtllmzznpCI3s	640	640	https://i.scdn.co/image/ab6761610000e5eb8ae7f2aaa9817a704a87ea36
5pKCCKE2ajJHZ9KAiaK11H	{"barbadian pop",pop,"urban contemporary"}	Rihanna	92	https://api.spotify.com/v1/artists/5pKCCKE2ajJHZ9KAiaK11H	640	640	https://i.scdn.co/image/ab6761610000e5eb99e4fca7c0b7cb166d915789
3tlXnStJ1fFhdScmQeLpuG	{r&b,rap}	Brent Faiyaz	85	https://api.spotify.com/v1/artists/3tlXnStJ1fFhdScmQeLpuG	640	640	https://i.scdn.co/image/ab6761610000e5ebe187dca750abfd3688836309
6qxpnaukVayrQn6ViNvu9I	{"southern hip hop"}	BigXthaPlug	83	https://api.spotify.com/v1/artists/6qxpnaukVayrQn6ViNvu9I	640	640	https://i.scdn.co/image/ab6761610000e5eb67d85a54c927a30a7c94138d
7bXgB6jMjp9ATFy66eO08Z	{r&b,rap}	Chris Brown	89	https://api.spotify.com/v1/artists/7bXgB6jMjp9ATFy66eO08Z	640	640	https://i.scdn.co/image/ab6761610000e5eba48397e590a1c70e2cda7728
0XKOBt59crntr7HQXXO8Yz	{"contemporary country",country,"country road"}	Brooks & Dunn	74	https://api.spotify.com/v1/artists/0XKOBt59crntr7HQXXO8Yz	640	640	https://i.scdn.co/image/ab6761610000e5eb3ef457349ecbd1285b4a0d81
1bdnGJxkbIIys5Jhk1T74v	{ccm,worship}	Brandon Lake	75	https://api.spotify.com/v1/artists/1bdnGJxkbIIys5Jhk1T74v	640	640	https://i.scdn.co/image/ab6761610000e5eb98d26f9f02ab975798151e50
2EMAnMvWE2eb56ToJVfCWs	{"kentucky hip hop",r&b,rap}	Bryson Tiller	83	https://api.spotify.com/v1/artists/2EMAnMvWE2eb56ToJVfCWs	640	640	https://i.scdn.co/image/ab6761610000e5eb078fdd734b7f0aa782328428
40ZNYROS4zLfyyBSs2PGe2	{"classic oklahoma country"}	Zach Bryan	90	https://api.spotify.com/v1/artists/40ZNYROS4zLfyyBSs2PGe2	640	640	https://i.scdn.co/image/ab6761610000e5eb4fd54df35bfcfa0fc9fc2da7
26dSoYclwsYLMAKD3tpOr4	{"dance pop",pop}	Britney Spears	83	https://api.spotify.com/v1/artists/26dSoYclwsYLMAKD3tpOr4	640	640	https://i.scdn.co/image/ab6761610000e5eb3a49b0a3954e460a8a76ed90
5BtHciL0e0zOP7prIHn3pP	{"alternative metal","nu metal",post-grunge}	Breaking Benjamin	73	https://api.spotify.com/v1/artists/5BtHciL0e0zOP7prIHn3pP	640	640	https://i.scdn.co/image/ab6761610000e5ebff528d242b11fdc4261d05da
1Ffb6ejR6Fe5IamqA5oRUF	{"melodic metalcore",metalcore,"modern rock",rock,"uk metalcore"}	Bring Me The Horizon	80	https://api.spotify.com/v1/artists/1Ffb6ejR6Fe5IamqA5oRUF	640	640	https://i.scdn.co/image/ab6761610000e5ebe7c9399d0b5d813c20cbec65
3eqjTLE0HfPfh78zjh6TqT	{"heartland rock","mellow gold","permanent wave",rock,singer-songwriter}	Bruce Springsteen	79	https://api.spotify.com/v1/artists/3eqjTLE0HfPfh78zjh6TqT	640	640	https://i.scdn.co/image/ab6761610000e5eb81df2fa2f937029ec986bbb8
0hDjKSKjl1DC7ovYTDJHe8	{"singer-songwriter pop"}	Bruno Major	67	https://api.spotify.com/v1/artists/0hDjKSKjl1DC7ovYTDJHe8	640	640	https://i.scdn.co/image/ab6761610000e5eb5b43a1fdff498297feb1d128
5JXhkyafynxCvxtov7C1PV	{sertanejo,"sertanejo pop","sertanejo universitario"}	Bruno & Marrone	75	https://api.spotify.com/v1/artists/5JXhkyafynxCvxtov7C1PV	640	640	https://i.scdn.co/image/ab6761610000e5eb8970d7a3f89e360370f0a7b4
5kjb55jtwPnbYXXDvP4x7R	{bajki,"french soundtrack"}	Bruno Coulais	58	https://api.spotify.com/v1/artists/5kjb55jtwPnbYXXDvP4x7R	640	640	https://i.scdn.co/image/ab67616d0000b273ac096468d5988441cf1098d0
6LtXxYMIiKSy2EGHnz1f5j	{"nu gabber"}	Brutalismus 3000	59	https://api.spotify.com/v1/artists/6LtXxYMIiKSy2EGHnz1f5j	640	640	https://i.scdn.co/image/ab6761610000e5ebeef1f44ee58ba1a4e92066e3
5veVxxPm1vzgi6pO2iVA8L	{"brazilian edm","pop nacional"}	Bruno Martini	64	https://api.spotify.com/v1/artists/5veVxxPm1vzgi6pO2iVA8L	640	640	https://i.scdn.co/image/ab6761610000e5eb3d9bd1ac9d00c9f45263ad25
1HY2Jd0NmPuamShAr6KMms	{"art pop","dance pop",pop}	Lady Gaga	92	https://api.spotify.com/v1/artists/1HY2Jd0NmPuamShAr6KMms	640	640	https://i.scdn.co/image/ab6761610000e5eb4b09cd0839c6129c29d22f79
0YdeGzSneJdP1NEKY3EFlR	{"brazilian gospel"}	Bruna Karla	63	https://api.spotify.com/v1/artists/0YdeGzSneJdP1NEKY3EFlR	640	640	https://i.scdn.co/image/ab6761610000e5eb4b3fcf30090adc6ad12db668
70x9rYb58QCNNeNxuO3StS	{agronejo,sertanejo,"sertanejo pop","sertanejo universitario"}	Bruno & Barretto	62	https://api.spotify.com/v1/artists/70x9rYb58QCNNeNxuO3StS	640	640	https://i.scdn.co/image/ab6761610000e5eb08656569423c0c4a85a5af6e
246dkjvS1zLTtiykXe5h60	{"dfw rap","melodic rap",pop,rap}	Post Malone	91	https://api.spotify.com/v1/artists/246dkjvS1zLTtiykXe5h60	640	640	https://i.scdn.co/image/ab6761610000e5ebe17c0aa1714a03d62b5ce4e0
7IOSPo9oGCLWtDEZtmxgTi	{}	MC Bruno MS	69	https://api.spotify.com/v1/artists/7IOSPo9oGCLWtDEZtmxgTi	640	640	https://i.scdn.co/image/ab6761610000e5ebe38a8fe4518e9f54ce868bce
4dpARuHxo51G3z768sgnrY	{"british soul",pop,"pop soul","uk pop"}	Adele	87	https://api.spotify.com/v1/artists/4dpARuHxo51G3z768sgnrY	640	640	https://i.scdn.co/image/ab6761610000e5eb68f6e5892075d7f22615bd17
13ubrt8QOOCPljQ2FL1Kca	{"east coast hip hop","hip hop",rap}	A$AP Rocky	86	https://api.spotify.com/v1/artists/13ubrt8QOOCPljQ2FL1Kca	640	640	https://i.scdn.co/image/ab6761610000e5eb5c58c41a506a0d6b32cc6cad
0hCNtLu0JehylgoiP8L4Gh	{"hip pop",pop,"queens hip hop",rap}	Nicki Minaj	87	https://api.spotify.com/v1/artists/0hCNtLu0JehylgoiP8L4Gh	640	640	https://i.scdn.co/image/ab6761610000e5eb07a50f0a9a8f11e5a1102cbd
7Ln80lUS6He07XvHI8qqHH	{"garage rock","modern rock","permanent wave",rock,"sheffield indie"}	Arctic Monkeys	88	https://api.spotify.com/v1/artists/7Ln80lUS6He07XvHI8qqHH	640	640	https://i.scdn.co/image/ab6761610000e5eb7da39dea0a72f581535fb11f
2R21vXR83lH98kGeO99Y66	{reggaeton,"reggaeton flow","trap boricua","trap latino","urbano latino"}	Anuel AA	89	https://api.spotify.com/v1/artists/2R21vXR83lH98kGeO99Y66	640	640	https://i.scdn.co/image/ab6761610000e5eba23ceb177745632b517cb7b2
64tNsm6TnZe2zpcMVMOoHL	{"alternative metal","alternative rock",grunge,"hard rock","nu metal",rock}	Alice In Chains	75	https://api.spotify.com/v1/artists/64tNsm6TnZe2zpcMVMOoHL	640	640	https://i.scdn.co/image/ab6761610000e5eb6114a63659d0d5c0a801f733
4gvjmrtzydbMpyJaXUtwvP	{"social media pop"}	Addison Rae	76	https://api.spotify.com/v1/artists/4gvjmrtzydbMpyJaXUtwvP	640	640	https://i.scdn.co/image/ab6761610000e5ebe7b11d095987ac3033d9c944
26VFTg2z8YR0cCuwLzESi2	{electropop,etherpop,"indie poptimism",pop}	Halsey	83	https://api.spotify.com/v1/artists/26VFTg2z8YR0cCuwLzESi2	640	640	https://i.scdn.co/image/ab6761610000e5eb7f17140567e7df5799d5c3a9
57nPqD7z62gDdq37US9XJR	{}	Arcane	81	https://api.spotify.com/v1/artists/57nPqD7z62gDdq37US9XJR	640	640	https://i.scdn.co/image/ab6761610000e5eba056b2ecc1a70ab57cdcc10b
4YRxDV8wJFPHPTeXepOstw	{filmi,"modern bollywood"}	Arijit Singh	91	https://api.spotify.com/v1/artists/4YRxDV8wJFPHPTeXepOstw	640	640	https://i.scdn.co/image/ab6761610000e5eb5ba2d75eb08a2d672f9b69b7
0PCCGZ0wGLizHt2KZ7hhA2	{}	Artemas	79	https://api.spotify.com/v1/artists/0PCCGZ0wGLizHt2KZ7hhA2	640	640	https://i.scdn.co/image/ab6761610000e5eb7efee14de876be8c56b01e9d
4SsVbpTthjScTS7U2hmr1X	{"latin hip hop",reggaeton,"trap latino","urbano latino"}	Arcángel	84	https://api.spotify.com/v1/artists/4SsVbpTthjScTS7U2hmr1X	640	640	https://i.scdn.co/image/ab6761610000e5ebafdf17286a0d7a23ad388587
3ZztVuWxHzNpl0THurTFCv	{mathcore,"melodic metalcore",metalcore,"progressive metalcore","uk metalcore"}	Architects	66	https://api.spotify.com/v1/artists/3ZztVuWxHzNpl0THurTFCv	640	640	https://i.scdn.co/image/ab6761610000e5eb4e7b995ea7cf092e6372c6d2
2Lxa3SFNEW0alfRvtdXOul	{banda,corrido,"corridos tumbados","musica mexicana",norteno,sierreno}	Ariel Camacho y Los Plebes Del Rancho	71	https://api.spotify.com/v1/artists/2Lxa3SFNEW0alfRvtdXOul	640	640	https://i.scdn.co/image/ab6761610000e5eb44718c4f816472411cd78cd4
5bSfBBCxY8QAk4Pifveisz	{banda,"musica mexicana",norteno}	La Arrolladora Banda El Limón De Rene Camacho	82	https://api.spotify.com/v1/artists/5bSfBBCxY8QAk4Pifveisz	640	640	https://i.scdn.co/image/ab6761610000e5ebe5bc8559d9c7aa3dce8847d6
3kjuyTCjPG1WMFCiyc5IuB	{"alternative rock","baroque pop","canadian indie","canadian indie rock","chamber pop","indie rock",indietronica,"modern rock","permanent wave","quebec indie",rock}	Arcade Fire	65	https://api.spotify.com/v1/artists/3kjuyTCjPG1WMFCiyc5IuB	640	640	https://i.scdn.co/image/ab6761610000e5eba044e15eee771205956dcbf8
1Z2aqwlKmotGmI3wjJnY93	{"dark r&b"}	arya x	57	https://api.spotify.com/v1/artists/1Z2aqwlKmotGmI3wjJnY93	640	640	https://i.scdn.co/image/ab6761610000e5eb00e2fb85bb35223d076d6af3
5PDN3kzgUe0ns31NnvSfCp	{}	Aryan Armstrong	43	https://api.spotify.com/v1/artists/5PDN3kzgUe0ns31NnvSfCp	640	640	https://i.scdn.co/image/ab67616d0000b2736136af14b468a55c60893e46
6i9rrQVWx65TZ5v9ZDHPtw	{"jewish pop"}	Aryeh Kunstler	30	https://api.spotify.com/v1/artists/6i9rrQVWx65TZ5v9ZDHPtw	640	640	https://i.scdn.co/image/ab6761610000e5ebac1e8af3b3f966007ff766cf
3pWE3vAZ06uBBPsmguhCz2	{}	Aryia	40	https://api.spotify.com/v1/artists/3pWE3vAZ06uBBPsmguhCz2	640	640	https://i.scdn.co/image/ab6761610000e5eb1b062fa9174f8a2e816b98cd
4WfzpEnX3NkUlSUIa8XPFv	{"afghan pop"}	Aryana Sayeed	37	https://api.spotify.com/v1/artists/4WfzpEnX3NkUlSUIa8XPFv	640	640	https://i.scdn.co/image/ab6761610000e5eb8c97a76fadcb8cb077cec8a9
6L7j9oK58YpVLZClqX0iF4	{}	ARY	54	https://api.spotify.com/v1/artists/6L7j9oK58YpVLZClqX0iF4	640	640	https://i.scdn.co/image/ab6761610000e5ebf46881964397d2869c73acd1
0h1zs4CTlU9D2QtgPxptUD	{cantautor,"latin arena pop","latin pop"}	Ricardo Arjona	77	https://api.spotify.com/v1/artists/0h1zs4CTlU9D2QtgPxptUD	640	640	https://i.scdn.co/image/ab6761610000e5ebc39af2ce1337734a4cadadaf
4RzbexUO843fc5SLqKEQCr	{"dark r&b"}	Aaryan Shah	61	https://api.spotify.com/v1/artists/4RzbexUO843fc5SLqKEQCr	640	640	https://i.scdn.co/image/ab6761610000e5eb758c2827e9bcd8268fd7d8b0
7A47sEe0ih6WpKmNCRMu86	{"bedroom soul"}	Jelani Aryeh	50	https://api.spotify.com/v1/artists/7A47sEe0ih6WpKmNCRMu86	640	640	https://i.scdn.co/image/ab6761610000e5ebafcbe837100455da7f64d408
1m0tdSviN7MEKE4ito6M0L	{}	Arya	37	https://api.spotify.com/v1/artists/1m0tdSviN7MEKE4ito6M0L	640	640	https://i.scdn.co/image/ab6761610000e5eb3f8710494caf4736455b5dc8
5eq2uN2yinN4ZJezM2N9Gm	{"marathi pop"}	Aarya Ambekar	48	https://api.spotify.com/v1/artists/5eq2uN2yinN4ZJezM2N9Gm	640	640	https://i.scdn.co/image/ab6761610000e5eb362c78e8ad7dbd8626829491
5O2s6fRMqbwIKGB9QrFrBQ	{"future bounce"}	Arya	28	https://api.spotify.com/v1/artists/5O2s6fRMqbwIKGB9QrFrBQ	640	640	https://i.scdn.co/image/ab6761610000e5eb9a8a61acd79251fcc75b386a
0Wj9YjGnGFIrD6lyThCeZQ	{}	Arya Galih	48	https://api.spotify.com/v1/artists/0Wj9YjGnGFIrD6lyThCeZQ	640	640	https://i.scdn.co/image/ab67616d0000b273469f00f01d6c07342206565b
2gRbcna4mNfKWZeYEEAuCH	{}	arya	6	https://api.spotify.com/v1/artists/2gRbcna4mNfKWZeYEEAuCH	640	640	https://i.scdn.co/image/ab6761610000e5eb711ddc3b6dd13c9aa107ce8d
5RHelvggBYKgBNgCjRdH8H	{"afghan pop"}	Aria Band	36	https://api.spotify.com/v1/artists/5RHelvggBYKgBNgCjRdH8H	640	640	https://i.scdn.co/image/ab6761610000e5ebc91566428e059544cf5ec236
6T2BNiyW0J5qbP0t2MS2Bk	{}	アーリャ（CV：上坂すみれ）	48	https://api.spotify.com/v1/artists/6T2BNiyW0J5qbP0t2MS2Bk	640	640	https://i.scdn.co/image/ab6761610000e5eb2c8be8d965a0f56e2497959e
58dPXkn0hgEY1TY1utbG4a	{}	Araya	30	https://api.spotify.com/v1/artists/58dPXkn0hgEY1TY1utbG4a	640	640	https://i.scdn.co/image/ab6761610000e5ebf75e8c89e2e06efd5b3f68bb
6bInH0qXoeMLAcvWhPXfDV	{}	Arya Sharma	39	https://api.spotify.com/v1/artists/6bInH0qXoeMLAcvWhPXfDV	640	640	https://i.scdn.co/image/ab67616d0000b273e5dabd99d0f669af6cf33705
3wcj11K77LjEY1PkEazffa	{afrobeats,dancehall,"nigerian hip hop","nigerian pop"}	Burna Boy	80	https://api.spotify.com/v1/artists/3wcj11K77LjEY1PkEazffa	640	640	https://i.scdn.co/image/ab6761610000e5eb2d405f4858ce3cd52d409c98
5jTigCDuv898J4oTRvco0w	{}	Arya Shae	18	https://api.spotify.com/v1/artists/5jTigCDuv898J4oTRvco0w	640	640	https://i.scdn.co/image/ab67616d0000b273815382fe0e61507ad0eff2ca
7MVymjNiLo9mq6RUnUqSQB	{}	Ayrra Star	45	https://api.spotify.com/v1/artists/7MVymjNiLo9mq6RUnUqSQB	640	640	https://i.scdn.co/image/ab6761610000e5eb7aa83c5cb2e65735d0562076
26OWeyAKZnIEwZ5dUnHtmq	{}	Arya Star	0	https://api.spotify.com/v1/artists/26OWeyAKZnIEwZ5dUnHtmq	640	640	https://i.scdn.co/image/ab67616d0000b273693f16def56e138ba4a9af95
3a1tBryiczPAZpgoZN9Rzg	{afrobeats,"nigerian pop"}	Asake	77	https://api.spotify.com/v1/artists/3a1tBryiczPAZpgoZN9Rzg	640	640	https://i.scdn.co/image/ab6761610000e5eb0203df702d0792712e78cf2e
3LEzVC11Jtzc1fZWzXtOGY	{}	ARYA GALIH	41	https://api.spotify.com/v1/artists/3LEzVC11Jtzc1fZWzXtOGY	640	640	https://i.scdn.co/image/ab67616d0000b273d451e678463b73d2308b7c43
1ckTqkZpqdla9J677XAstB	{}	ARAYA	31	https://api.spotify.com/v1/artists/1ckTqkZpqdla9J677XAstB	640	640	https://i.scdn.co/image/ab6761610000e5ebec33ac545cb3b77715534cd3
7FlnlrZ1Rqcp2wnJnNfkNl	{}	Shone	26	https://api.spotify.com/v1/artists/7FlnlrZ1Rqcp2wnJnNfkNl	640	640	https://i.scdn.co/image/ab6761610000e5eb83aa554c300164d8827a3d17
1kU2LihJoGzi8Fzf4XtBSZ	{}	Aryan Babu	4	https://api.spotify.com/v1/artists/1kU2LihJoGzi8Fzf4XtBSZ	640	640	https://i.scdn.co/image/ab67616d0000b273b32ecd7876daded5303db976
48SlsaHQKy2yc2VXidmeIU	{}	Arya Satria	18	https://api.spotify.com/v1/artists/48SlsaHQKy2yc2VXidmeIU	640	640	https://i.scdn.co/image/ab67616d0000b2730baa0e59241f4b3ebd00cf5b
1QAJqy2dA3ihHBFIHRphZj	{"ambient pop","dream pop","el paso indie",shoegaze}	Cigarettes After Sex	87	https://api.spotify.com/v1/artists/1QAJqy2dA3ihHBFIHRphZj	640	640	https://i.scdn.co/image/ab6761610000e5eb0e871e0389b9722cc12a4118
1VPmR4DJC1PlOtd0IADAO0	{"cloud rap","dark trap","new orleans rap","underground hip hop"}	$uicideboy$	87	https://api.spotify.com/v1/artists/1VPmR4DJC1PlOtd0IADAO0	640	640	https://i.scdn.co/image/ab6761610000e5ebb0019debdbe359a73295887f
3RNrq3jvMZxD9ZyoOZbQOD	{"alternative metal","funk metal","hard rock","nu metal",post-grunge,"rap metal",rock}	Korn	78	https://api.spotify.com/v1/artists/3RNrq3jvMZxD9ZyoOZbQOD	640	640	https://i.scdn.co/image/ab6761610000e5eb29af2ffb6f4ddd6324f878bc
3yY2gUcIsjMr8hjo51PoJ8	{madchester,"new wave","permanent wave",rock,"uk post-punk"}	The Smiths	80	https://api.spotify.com/v1/artists/3yY2gUcIsjMr8hjo51PoJ8	1516	1000	https://i.scdn.co/image/481b980af463122013e4578c08fb8c5cbfaed1e9
47zz7sob9NUcODy0BTDvKx	{"british soul",sophisti-pop}	Sade	77	https://api.spotify.com/v1/artists/47zz7sob9NUcODy0BTDvKx	640	640	https://i.scdn.co/image/ab6761610000e5eb92883b0e094a36d2f43ad284
6vWDO969PvNqNYHIOW5v0m	{pop,r&b}	Beyoncé	87	https://api.spotify.com/v1/artists/6vWDO969PvNqNYHIOW5v0m	640	640	https://i.scdn.co/image/ab6761610000e5eb247f44069c0bd1781df2f785
08GfvCW09pv2QP4y9sle2a	{"modern country pop"}	Sam Barber	74	https://api.spotify.com/v1/artists/08GfvCW09pv2QP4y9sle2a	640	640	https://i.scdn.co/image/ab6761610000e5ebae73620ee0af55ed826a9db3
2wY79sveU1sp5g7SokKOiI	{pop,"uk pop"}	Sam Smith	84	https://api.spotify.com/v1/artists/2wY79sveU1sp5g7SokKOiI	640	640	https://i.scdn.co/image/ab6761610000e5ebf057d1dce23e7f4d5d0f32e5
6lcwlkAjBPSKnFBZjjZFJs	{"philly indie","pov: indie","slacker rock"}	Alex G	78	https://api.spotify.com/v1/artists/6lcwlkAjBPSKnFBZjjZFJs	640	640	https://i.scdn.co/image/ab6761610000e5eb36923516613d3cbef9dd3952
7GuUYiGZOzQwq4L6gAfy1T	{"melodic rap",plugg}	SahBabii	65	https://api.spotify.com/v1/artists/7GuUYiGZOzQwq4L6gAfy1T	640	640	https://i.scdn.co/image/ab6761610000e5eb6a379e26fd4999a0b9bc9baa
4tm8CEdm4pkQsEh4jIr9Yp	{"mexican hip hop"}	Santa Fe Klan	76	https://api.spotify.com/v1/artists/4tm8CEdm4pkQsEh4jIr9Yp	640	640	https://i.scdn.co/image/ab6761610000e5ebf70d400817421baff34f54f6
1URnnhqYAYcrqrcwql10ft	{"atl hip hop","hip hop",rap}	21 Savage	89	https://api.spotify.com/v1/artists/1URnnhqYAYcrqrcwql10ft	640	640	https://i.scdn.co/image/ab6761610000e5eb4f8f76117470957c0e81e5b2
3o2dn2O0FCVsWDFSh8qxgG	{"power metal","swedish metal","swedish power metal"}	Sabaton	73	https://api.spotify.com/v1/artists/3o2dn2O0FCVsWDFSh8qxgG	640	640	https://i.scdn.co/image/ab6761610000e5eb0f468cde238dfde3ba3c921e
0EdvGhlC1FkGItLOWQzG4J	{"rap rock","reggae fusion","ska mexicano","ska punk"}	Sublime	73	https://api.spotify.com/v1/artists/0EdvGhlC1FkGItLOWQzG4J	640	640	https://i.scdn.co/image/ab6761610000e5ebe726280500259dbdb97a8be4
30DhU7BDmF4PH0JVhu8ZRg	{"alternative r&b",r&b}	Sabrina Claudio	63	https://api.spotify.com/v1/artists/30DhU7BDmF4PH0JVhu8ZRg	640	640	https://i.scdn.co/image/ab6761610000e5eba278d9dfffcd319a9daf83d4
7Hjbimq43OgxaBRpFXic4x	{"alternative r&b","chicago rap"}	Saba	61	https://api.spotify.com/v1/artists/7Hjbimq43OgxaBRpFXic4x	640	640	https://i.scdn.co/image/ab6761610000e5ebed8fc47f905709e79b06f12e
7GlBOeep6PqTfFi59PTUUN	{"indie pop"}	Chappell Roan	88	https://api.spotify.com/v1/artists/7GlBOeep6PqTfFi59PTUUN	640	640	https://i.scdn.co/image/ab6761610000e5ebcde5a0d57c1b79de5fce6bee
3NJ94iuAmmMjbszODYT6pO	{brostep}	Subtronics	65	https://api.spotify.com/v1/artists/3NJ94iuAmmMjbszODYT6pO	640	640	https://i.scdn.co/image/ab6761610000e5ebd331b4900584fc95b630f403
5M52tdBnJaKSvOpJGz8mfZ	{"album rock","alternative metal","birmingham metal","classic rock","hard rock",metal,rock,"stoner rock","uk doom metal"}	Black Sabbath	74	https://api.spotify.com/v1/artists/5M52tdBnJaKSvOpJGz8mfZ	640	640	https://i.scdn.co/image/ab6761610000e5eb4870cd833ebe1092601820c3
3RyXWAkPxxntDFBAeGst6K	{}	Sabrina Austin	49	https://api.spotify.com/v1/artists/3RyXWAkPxxntDFBAeGst6K	640	640	https://i.scdn.co/image/ab67616d0000b27313afc75805e09131af8acd41
7Ee7rIUB6OkmfxeqCKiGPu	{}	Sabrina Gomes	52	https://api.spotify.com/v1/artists/7Ee7rIUB6OkmfxeqCKiGPu	640	640	https://i.scdn.co/image/ab6761610000e5ebce8948a3f691cd3e6dccd736
0ukgrNYk51TkMQr0f2Br4Q	{"irish hip hop"}	Maverick Sabre	66	https://api.spotify.com/v1/artists/0ukgrNYk51TkMQr0f2Br4Q	640	640	https://i.scdn.co/image/ab6761610000e5eb8d28bc19f7b2da51e9a07aba
0sbtGmW8r5bxfXzla8a7eI	{"classic pakistani pop",ghazal,"pakistani folk",qawwali,sufi}	Sabri Brothers	54	https://api.spotify.com/v1/artists/0sbtGmW8r5bxfXzla8a7eI	640	640	https://i.scdn.co/image/ab6761610000e5eb3aee20d42f0858659437199b
2zgQujI3jnTTKJpj9Im76b	{}	Sabrina Jordan	41	https://api.spotify.com/v1/artists/2zgQujI3jnTTKJpj9Im76b	640	640	https://i.scdn.co/image/ab6761610000e5eb109502e66e8e9f2f6233ea51
2TX3RFFIqwzwDjFMJN4nV9	{}	Sabrina Sterling	37	https://api.spotify.com/v1/artists/2TX3RFFIqwzwDjFMJN4nV9	640	640	https://i.scdn.co/image/ab6761610000e5eb0b1d3ad2bb7626408e619c00
7JXdTCq0awJfHZMJJkG0AS	{}	Sabrina Song	32	https://api.spotify.com/v1/artists/7JXdTCq0awJfHZMJJkG0AS	640	640	https://i.scdn.co/image/ab6761610000e5eb5bbda380a1d41bd74b06ef57
5EFPewjksQrnI87VOsvFHh	{cantopop}	Sabrina Cheung 張蔓莎	34	https://api.spotify.com/v1/artists/5EFPewjksQrnI87VOsvFHh	640	640	https://i.scdn.co/image/ab6761610000e5eb8a3eccb779bc924004999893
2L5e9aZqRiqPZQrxaWPNlF	{}	Sabrina C	0	https://api.spotify.com/v1/artists/2L5e9aZqRiqPZQrxaWPNlF	640	640	https://i.scdn.co/image/ab67616d0000b2732182d6c686e2f8731f4f53bc
4Y43D0ynLoyZ3HxOPGxxFq	{}	Cast of Chilling Adventures of Sabrina	33	https://api.spotify.com/v1/artists/4Y43D0ynLoyZ3HxOPGxxFq	640	640	https://i.scdn.co/image/ab67616d0000b2739d1b8897b262c54f7d5c1b9c
7pjVSQ9LH622qKrtksBT6U	{}	Sabrina C	0	https://api.spotify.com/v1/artists/7pjVSQ9LH622qKrtksBT6U	0	0	
06r7F3mEYRJxjksrVsurYJ	{}	Sabrina McGregor	41	https://api.spotify.com/v1/artists/06r7F3mEYRJxjksrVsurYJ	640	640	https://i.scdn.co/image/ab67616d0000b273d6b32b56c232423b228794c2
1YB5pnFfL7Y2vjRJLPxaLU	{"italo disco"}	Sabrina	50	https://api.spotify.com/v1/artists/1YB5pnFfL7Y2vjRJLPxaLU	640	640	https://i.scdn.co/image/ab6761610000e5eb667ed55ad80cf5b62032b641
2Q1edjqWEwugRFcjOFre9M	{}	Sabrina Rose	17	https://api.spotify.com/v1/artists/2Q1edjqWEwugRFcjOFre9M	0	0	
46yuBfwqiADCEQFdNgkqoc	{}	Sabrina Carpentar	0	https://api.spotify.com/v1/artists/46yuBfwqiADCEQFdNgkqoc	640	640	https://i.scdn.co/image/ab67616d0000b273889c818e09a55161b9226a95
1WNezaYI1KdLm48G0AOmx5	{}	Sabrina Barreto	15	https://api.spotify.com/v1/artists/1WNezaYI1KdLm48G0AOmx5	640	640	https://i.scdn.co/image/ab6761610000e5eb8621c79f46ebc7f71142b23f
68udTuSOfqMzhKWzGyttzL	{}	Sabrina Cortese & Michele Biki Panitti	17	https://api.spotify.com/v1/artists/68udTuSOfqMzhKWzGyttzL	640	640	https://i.scdn.co/image/ab67616d0000b27381d9b8938a58e7c9590902e9
35l9BRT7MXmM8bv2WDQiyB	{"bedroom pop",bubblegrunge,"indie pop","pov: indie"}	beabadoobee	81	https://api.spotify.com/v1/artists/35l9BRT7MXmM8bv2WDQiyB	640	640	https://i.scdn.co/image/ab6761610000e5ebe7c6cea0c83857388127fced
2hUTSSvnqOI53rQnaoJEUp	{}	Sabrina Lynn carpenter	0	https://api.spotify.com/v1/artists/2hUTSSvnqOI53rQnaoJEUp	640	640	https://i.scdn.co/image/ab67616d0000b2736842fc915c7038417d5df992
73CFSUP0yJqovZ9Z2MATS6	{}	Sabrina Sapal	21	https://api.spotify.com/v1/artists/73CFSUP0yJqovZ9Z2MATS6	640	640	https://i.scdn.co/image/ab6761610000e5eb48203edeab1a3c2f890d7e09
7pwufEBGfggjoI8twqlsmQ	{"alt z","social media pop"}	Nessa Barrett	73	https://api.spotify.com/v1/artists/7pwufEBGfggjoI8twqlsmQ	640	640	https://i.scdn.co/image/ab6761610000e5eb0a89407d57786c695d637f6f
25uiPmTg16RbhZWAqwLBy5	{"art pop","candy pop",metropopolis,pop,"uk pop"}	Charli xcx	87	https://api.spotify.com/v1/artists/25uiPmTg16RbhZWAqwLBy5	640	640	https://i.scdn.co/image/ab6761610000e5eb936885667ef44c306483c838
6Ghvu1VvMGScGpOUJBAHNH	{"alternative metal","nu metal","rap metal",rock,"sacramento indie"}	Deftones	81	https://api.spotify.com/v1/artists/6Ghvu1VvMGScGpOUJBAHNH	640	640	https://i.scdn.co/image/ab6761610000e5eb4b2da0b72cab26ac518f1f0d
55Aa2cqylxrFIXC767Z865	{"hip hop","new orleans rap","pop rap",rap,trap}	Lil Wayne	88	https://api.spotify.com/v1/artists/55Aa2cqylxrFIXC767Z865	640	640	https://i.scdn.co/image/ab6761610000e5ebc1c08e541eae3cc82c6988c4
4Gso3d4CscCijv0lmajZWs	{rap}	Don Toliver	88	https://api.spotify.com/v1/artists/4Gso3d4CscCijv0lmajZWs	640	640	https://i.scdn.co/image/ab6761610000e5eb62d52993e245cb161f89b01c
20wkVLutqVOYrc0kxFs7rA	{"canadian contemporary r&b"}	Daniel Caesar	87	https://api.spotify.com/v1/artists/20wkVLutqVOYrc0kxFs7rA	640	640	https://i.scdn.co/image/ab6761610000e5ebe5bc630548fb3517cf90edb8
3xvaSlT4xsyk6lY1ESOspO	{"movie tunes"}	Disney	85	https://api.spotify.com/v1/artists/3xvaSlT4xsyk6lY1ESOspO	640	640	https://i.scdn.co/image/ab6761610000e5ebc698d53b77db34027b00f853
4E2rKHVDssGJm2SCDOMMJB	{"alternative r&b"}	Doechii	77	https://api.spotify.com/v1/artists/4E2rKHVDssGJm2SCDOMMJB	640	640	https://i.scdn.co/image/ab6761610000e5ebca2fee52c41d3f58ceb6474b
6jxLcPfLvVwcz7bmzOWwwE	{"southern hip hop"}	DeeBaby	60	https://api.spotify.com/v1/artists/6jxLcPfLvVwcz7bmzOWwwE	640	640	https://i.scdn.co/image/ab6761610000e5ebd5a9dbd31f9ba3ba255ffb7c
568ZhdwyaiCyOGJRtNYhWf	{"album rock","classic rock","hard rock",metal,rock}	Deep Purple	67	https://api.spotify.com/v1/artists/568ZhdwyaiCyOGJRtNYhWf	640	640	https://i.scdn.co/image/ab6761610000e5eb3a475812e97ee788cfd5fd1a
2fBU7rOViK7ywwHCIYEa7h	{"new york drill"}	Dee Billz	62	https://api.spotify.com/v1/artists/2fBU7rOViK7ywwHCIYEa7h	640	640	https://i.scdn.co/image/ab6761610000e5ebdaad3ec204efc20c4cbe2561
3rT8xTwSOMDURtWpPyoKIO	{"alternative country","modern folk rock","new americana","rhode island indie","stomp and holler"}	Deer Tick	45	https://api.spotify.com/v1/artists/3rT8xTwSOMDURtWpPyoKIO	640	640	https://i.scdn.co/image/ab6761610000e5eb1d43f7835ef26612793f215b
6XJykeImeaTIiXaeoORBs5	{sleep}	Deep Sleep Music Collective	62	https://api.spotify.com/v1/artists/6XJykeImeaTIiXaeoORBs5	640	640	https://i.scdn.co/image/ab6761610000e5ebbfaf1432d12405fd7246ed1a
38zTZcuN7nFvVJ6auhc6V3	{"alternative rock","art pop","atlanta indie","dream pop","experimental rock","indie rock",lo-fi,neo-psychedelic,"noise pop","noise rock",shoegaze}	Deerhunter	46	https://api.spotify.com/v1/artists/38zTZcuN7nFvVJ6auhc6V3	640	640	https://i.scdn.co/image/ab6761610000e5eb9e2ec521b797dfccae2110d9
3vMbThcZsIGHUmGb5YtFoY	{"memphis hip hop","tennessee hip hop"}	Dee Mula	48	https://api.spotify.com/v1/artists/3vMbThcZsIGHUmGb5YtFoY	640	640	https://i.scdn.co/image/ab6761610000e5eb834b5206ef092e43ab559bbd
6BF4rM6yrQ3SkKP8rcEdBi	{binaural,"color noise","white noise"}	Deepnoum	60	https://api.spotify.com/v1/artists/6BF4rM6yrQ3SkKP8rcEdBi	640	640	https://i.scdn.co/image/ab6761610000e5eb462a01bd473827dd238abd6f
5qEZVKHzNjB8k5tAT41Iox	{}	Dee-1	41	https://api.spotify.com/v1/artists/5qEZVKHzNjB8k5tAT41Iox	640	640	https://i.scdn.co/image/ab6761610000e5eb267ff95b6451af3107be2936
5QGswxSXQUHzQoc2r9hVPI	{}	Deedee Magno Hall	57	https://api.spotify.com/v1/artists/5QGswxSXQUHzQoc2r9hVPI	640	640	https://i.scdn.co/image/ab6761610000e5eb3bde839bcb62585062dcf3f1
6fxyWrfmjcbj5d12gXeiNV	{"dark trap",drill,"hip hop","miami hip hop",rap,trap,"underground hip hop"}	Denzel Curry	75	https://api.spotify.com/v1/artists/6fxyWrfmjcbj5d12gXeiNV	640	640	https://i.scdn.co/image/ab6761610000e5eb8e265da892579da2139b659f
1Mxqyy3pSjf8kZZL4QVxS0	{"adult standards","easy listening",lounge}	Frank Sinatra	82	https://api.spotify.com/v1/artists/1Mxqyy3pSjf8kZZL4QVxS0	650	999	https://i.scdn.co/image/fc4e0f474fb4c4cb83617aa884dc9fd9822d4411
1HPW4jeRjXBFRoUnSvBzoD	{"rage rap"}	Destroy Lonely	75	https://api.spotify.com/v1/artists/1HPW4jeRjXBFRoUnSvBzoD	640	640	https://i.scdn.co/image/ab6761610000e5eb381595af4349d9b79184f7c2
762310PdDnwsDxAQxzQkfX	{"dance rock","new romantic","new wave","permanent wave",rock,synthpop}	Depeche Mode	76	https://api.spotify.com/v1/artists/762310PdDnwsDxAQxzQkfX	640	640	https://i.scdn.co/image/ab6761610000e5ebaff13c9484fdad590ccfb73c
49e4v89VmlDcFCMyDv9wQ9	{"adult standards","easy listening",lounge,"vocal jazz"}	Dean Martin	77	https://api.spotify.com/v1/artists/49e4v89VmlDcFCMyDv9wQ9	640	640	https://i.scdn.co/image/ab6761610000e5ebadd5e4fe482da659175e36fc
2CIMQHirSU0MQqyYHq0eOx	{"canadian electronic",complextro,edm,"electro house","pop dance","progressive electro house","progressive house"}	deadmau5	68	https://api.spotify.com/v1/artists/2CIMQHirSU0MQqyYHq0eOx	640	640	https://i.scdn.co/image/ab6761610000e5eb89ffabe57a25cedeca3309e7
6S2OmqARrzebs0tKUEyXyp	{pop,"post-teen pop"}	Demi Lovato	79	https://api.spotify.com/v1/artists/6S2OmqARrzebs0tKUEyXyp	640	640	https://i.scdn.co/image/ab6761610000e5ebe106fea940fcf250f8dd5bfe
0YrtvWJMgSdVrk3SfNjTbx	{"alternative rock","chamber pop","indie rock",indietronica,"modern alternative rock","modern rock","seattle indie","washington indie"}	Death Cab for Cutie	64	https://api.spotify.com/v1/artists/0YrtvWJMgSdVrk3SfNjTbx	640	640	https://i.scdn.co/image/ab6761610000e5eb378adae733fc578108e3f534
641zDmmghbd2tTMqrj3HBZ	{}	deeper sleeper	36	https://api.spotify.com/v1/artists/641zDmmghbd2tTMqrj3HBZ	640	640	https://i.scdn.co/image/ab6761610000e5eb66876680a6baf65aba5ddd7a
6CD0HbcaKmuVB3NHJJgSdH	{"indie surf","seattle indie"}	Deep Sea Diver	36	https://api.spotify.com/v1/artists/6CD0HbcaKmuVB3NHJJgSdH	640	640	https://i.scdn.co/image/ab6761610000e5eb9ea0328640e25f45ff5d6db4
2Z6S0daezacaUwUukXQUqJ	{}	Deeps	52	https://api.spotify.com/v1/artists/2Z6S0daezacaUwUukXQUqJ	640	640	https://i.scdn.co/image/ab6761610000e5eb33dbd1b0d165a003e0f39714
0uGApGjjFXKwUOAqYBeX7B	{"deep house","tropical house"}	Deepend	66	https://api.spotify.com/v1/artists/0uGApGjjFXKwUOAqYBeX7B	640	640	https://i.scdn.co/image/ab6761610000e5eb4a5760e46e5707e216e88588
10Bo1ofGMWr6hFD7OM7W7r	{"tech house","uk tech house"}	Deeper Purpose	44	https://api.spotify.com/v1/artists/10Bo1ofGMWr6hFD7OM7W7r	640	640	https://i.scdn.co/image/ab6761610000e5eb9e4611ca7b5f848d2170e639
5aw5WfeOV5ThlwFcfaK9JO	{water,"white noise"}	Deep Horizon Waves	56	https://api.spotify.com/v1/artists/5aw5WfeOV5ThlwFcfaK9JO	640	640	https://i.scdn.co/image/ab67616d0000b27345517f82cf3fa0a0186cf678
1qfR6EcXfL5ihPR5PKYUud	{}	Deep	26	https://api.spotify.com/v1/artists/1qfR6EcXfL5ihPR5PKYUud	640	640	https://i.scdn.co/image/ab6761610000e5eb76135b37b1a2560f4b306536
4pAYkltTzVhqBZuDekCHa3	{healing,"new age"}	Deep Forest	45	https://api.spotify.com/v1/artists/4pAYkltTzVhqBZuDekCHa3	640	640	https://i.scdn.co/image/ab6761610000e5eb567d5bf08636494fb122f15e
5N5RfI8FFXk4WQ8kkjE407	{"pop rock"}	Deep Blue Something	55	https://api.spotify.com/v1/artists/5N5RfI8FFXk4WQ8kkjE407	640	640	https://i.scdn.co/image/ab6761610000e5eb6b788b5cf3dd4a3ae76c72dc
4PY2xnTu90K0hvkgcljRJl	{"tamil pop"}	Deepthi Suresh	67	https://api.spotify.com/v1/artists/4PY2xnTu90K0hvkgcljRJl	640	640	https://i.scdn.co/image/ab6761610000e5eb7382b6c57d286d7036f64de3
12rBrcOPP50qIan8ew4iTP	{"tropical house"}	Deep Chills	61	https://api.spotify.com/v1/artists/12rBrcOPP50qIan8ew4iTP	640	640	https://i.scdn.co/image/ab6761610000e5ebe39f7ca052c108950386cbc8
7bWwZezJmdvexqvK3knjcB	{}	Alexander Blane	4	https://api.spotify.com/v1/artists/7bWwZezJmdvexqvK3knjcB	640	640	https://i.scdn.co/image/ab6761610000e5eb2a06c785efe4ab5bf979a2f9
6b17L4Kon8RsnsCgS5lGoH	{"boston hardcore","hardcore punk","thrash core"}	Deep Wound	14	https://api.spotify.com/v1/artists/6b17L4Kon8RsnsCgS5lGoH	640	640	https://i.scdn.co/image/ab67616d0000b2739c8f0c98e905a0f2e6a81735
3qtgkLExW6jtJ0UeGTevy3	{}	Deep Vibrations	54	https://api.spotify.com/v1/artists/3qtgkLExW6jtJ0UeGTevy3	640	640	https://i.scdn.co/image/ab6761610000e5ebe4dba66de5fee1143fde8406
5wcYaJMgpLDF2IkhFXdIAg	{sleep}	White Noise for Deeper Sleep	47	https://api.spotify.com/v1/artists/5wcYaJMgpLDF2IkhFXdIAg	640	640	https://i.scdn.co/image/ab6761610000e5eb5dd9a57cf9f102942c9ab55a
2PeVKtJXHIrrQmJXD7ju7l	{"christian lo-fi"}	Deeper Well	32	https://api.spotify.com/v1/artists/2PeVKtJXHIrrQmJXD7ju7l	640	640	https://i.scdn.co/image/ab67616d0000b2734db05d201fc4f94391391c3c
1X1f0eZsNTvUUZ48ZGmFtd	{"background music"}	Deep Watch	32	https://api.spotify.com/v1/artists/1X1f0eZsNTvUUZ48ZGmFtd	640	640	https://i.scdn.co/image/ab6761610000e5eb0489f7d2aa940328b4056e41
3fSGnkoBcTdS5F9eEsCHMr	{}	Deep Focus Orchestra	41	https://api.spotify.com/v1/artists/3fSGnkoBcTdS5F9eEsCHMr	640	640	https://i.scdn.co/image/ab67616d0000b273520e6347ef84173313543adc
0tZWU1MM1FlrqgDNeDhkGr	{"healing hz"}	Deap Sleap	47	https://api.spotify.com/v1/artists/0tZWU1MM1FlrqgDNeDhkGr	640	640	https://i.scdn.co/image/ab6761610000e5ebd0d01b29ca7ff116350fafc3
5lxKw9fGS5Sy0pvvlBWdRb	{}	Deep Wave	29	https://api.spotify.com/v1/artists/5lxKw9fGS5Sy0pvvlBWdRb	640	640	https://i.scdn.co/image/ab6761610000e5ebac32da7f6337e6ce90391ef8
4Ph46wgsWTC0UEANb4mjaF	{"reggae rock"}	Landon McNamara	53	https://api.spotify.com/v1/artists/4Ph46wgsWTC0UEANb4mjaF	640	640	https://i.scdn.co/image/ab6761610000e5eb6bd9a6b6e7bf06192929f034
1f2tembsEcgZMaRbWu16Zd	{}	Deep Waters	0	https://api.spotify.com/v1/artists/1f2tembsEcgZMaRbWu16Zd	640	640	https://i.scdn.co/image/ab6761610000e5eb7d9369fcac99de89d844801d
0RAF8tECP3vmRAnhT7VqZK	{"indie surf"}	Deep Sea Peach Tree	29	https://api.spotify.com/v1/artists/0RAF8tECP3vmRAnhT7VqZK	640	640	https://i.scdn.co/image/ab6761610000e5ebbea1635f70e0f7da70d2cbc8
114jVRMj35LNFfr71P0CK8	{"southern china indie"}	Deep Water	15	https://api.spotify.com/v1/artists/114jVRMj35LNFfr71P0CK8	640	640	https://i.scdn.co/image/ab6761610000e5eb000c61965dc7b4600f6665ad
4oGJ3JRyx1DrHD2uwwN5EI	{}	Deep Sleep Walkers	29	https://api.spotify.com/v1/artists/4oGJ3JRyx1DrHD2uwwN5EI	640	640	https://i.scdn.co/image/ab6761610000e5eb8c76dfda090f8e1b45c6d3d8
3qhW7XOHe91hlz2oQxRyyZ	{}	Delta Wave Deep Sleep	35	https://api.spotify.com/v1/artists/3qhW7XOHe91hlz2oQxRyyZ	640	640	https://i.scdn.co/image/ab67616d0000b273d74105ad1e724d2e64e9bbf8
2OrFz59xI0kQpzelSLB80j	{}	Dave Blunts	54	https://api.spotify.com/v1/artists/2OrFz59xI0kQpzelSLB80j	640	640	https://i.scdn.co/image/ab6761610000e5eb7e4761606ea02fce375edba2
1XhgLxpSWwGVyxMUNUifV2	{}	CalmWaves	62	https://api.spotify.com/v1/artists/1XhgLxpSWwGVyxMUNUifV2	640	640	https://i.scdn.co/image/ab6761610000e5ebfdd1fcd08f16621422f90e57
4A0TivfinfALCAMJqqjZIk	{funktronica}	Funk Wav	66	https://api.spotify.com/v1/artists/4A0TivfinfALCAMJqqjZIk	640	640	https://i.scdn.co/image/ab6761610000e5eb52c3a2c1fa4472bb5cf6a9bb
5cNn5kF2qKIOtBQJ2z4FM3	{"florida drill","florida rap"}	Dee Watkins	52	https://api.spotify.com/v1/artists/5cNn5kF2qKIOtBQJ2z4FM3	640	640	https://i.scdn.co/image/ab6761610000e5eb3c0d3b7e640ffa2ddc1cd355
3cXfSIay6WnJkBNrrvlOO1	{}	Deep Sleep Delta Waves	28	https://api.spotify.com/v1/artists/3cXfSIay6WnJkBNrrvlOO1	640	640	https://i.scdn.co/image/ab67616d0000b2737b1e190fb6e3796d529382e1
2CgVSpL4tfbUuHmTGS7wF3	{environmental,sleep}	Ocean Waves For Sleep	61	https://api.spotify.com/v1/artists/2CgVSpL4tfbUuHmTGS7wF3	640	640	https://i.scdn.co/image/ab6761610000e5eb87e0826d136f80b8db5751ec
2RJawMqX9ESxws2KMtHyP3	{"desi hip hop","punjabi hip hop","punjabi pop"}	Deep Jandu	61	https://api.spotify.com/v1/artists/2RJawMqX9ESxws2KMtHyP3	640	640	https://i.scdn.co/image/ab6761610000e5eb0c6f5af8f841431b2891a9ca
6fwSo6vBPTllNVJEQFAiPO	{}	Deep Wave	0	https://api.spotify.com/v1/artists/6fwSo6vBPTllNVJEQFAiPO	640	640	https://i.scdn.co/image/ab67616d0000b27331e59aba9cbd9c93a90c452b
1UfzhwcOR4yfX7yHTPfC9m	{indietronica,"modern alternative rock","modern rock","rochester ny indie","shimmer pop"}	Joywave	55	https://api.spotify.com/v1/artists/1UfzhwcOR4yfX7yHTPfC9m	640	640	https://i.scdn.co/image/ab6761610000e5eb1e490640504ca496c21ac010
5v6DGluwRTVB06xAIx4hfR	{}	Ocean Waves for Deep Sleep	27	https://api.spotify.com/v1/artists/5v6DGluwRTVB06xAIx4hfR	640	640	https://i.scdn.co/image/ab67616d0000b27320c600229479eb7adb137aea
7qmEJi4q9x7OadXWY93kwS	{}	Deep wave echo	23	https://api.spotify.com/v1/artists/7qmEJi4q9x7OadXWY93kwS	640	640	https://i.scdn.co/image/ab6761610000e5eb096a60f0ab101ed8d360d74e
0PS6tNISpLo5tFSH06JA5h	{sleep}	Relax α Wave	63	https://api.spotify.com/v1/artists/0PS6tNISpLo5tFSH06JA5h	640	640	https://i.scdn.co/image/ab6761610000e5ebc66c15b521466380f6e030d8
6I734cgGnMNAYXbDKI6pxm	{"color noise","white noise"}	Dancing Waves	53	https://api.spotify.com/v1/artists/6I734cgGnMNAYXbDKI6pxm	640	640	https://i.scdn.co/image/ab67616d0000b2739bcdf8932518be5460ae28bc
3EIJ8wiUHbgkRCt5cpRrQv	{"deep disco house","uk house"}	Damian Lazarus	43	https://api.spotify.com/v1/artists/3EIJ8wiUHbgkRCt5cpRrQv	640	640	https://i.scdn.co/image/ab6761610000e5ebd3aa0fd5b5cb1beee4931445
4l1cKWYW591xnwEGxpUg3J	{"alternative dance",electropop,indietronica,neo-synthpop,"shimmer pop","swedish electropop","swedish indie pop","swedish synthpop"}	Miike Snow	55	https://api.spotify.com/v1/artists/4l1cKWYW591xnwEGxpUg3J	640	640	https://i.scdn.co/image/ab6761610000e5eb4c4eb4999b61bca344c03a7b
6PY88og97O47AlwuyFFRhr	{}	Tylan1k	30	https://api.spotify.com/v1/artists/6PY88og97O47AlwuyFFRhr	640	640	https://i.scdn.co/image/ab6761610000e5eb7aeebe63db1cdef6a71974c6
54dk86DTKhg2aRkbedpA7d	{}	Mason Musso	0	https://api.spotify.com/v1/artists/54dk86DTKhg2aRkbedpA7d	640	640	https://i.scdn.co/image/ab67616d0000b2739b91ec773f27354295233f0c
3KNJm6d6MviXA6wKoztchk	{}	Tylan1k	0	https://api.spotify.com/v1/artists/3KNJm6d6MviXA6wKoztchk	0	0	
5bIkLcIgg3VV32O5xAscWV	{}	Tylan1k	0	https://api.spotify.com/v1/artists/5bIkLcIgg3VV32O5xAscWV	0	0	
0jlhw9Q6QMjp3eMl7amQBl	{}	Tylan1k	0	https://api.spotify.com/v1/artists/0jlhw9Q6QMjp3eMl7amQBl	0	0	
2ODbg2404zUzTi02qIPEjB	{"cali rap","dfw rap",rap,trap}	Tay-K	66	https://api.spotify.com/v1/artists/2ODbg2404zUzTi02qIPEjB	640	640	https://i.scdn.co/image/ab6761610000e5eb51563869e6c481a80c117878
2uo6zaEg5vmqU0E79NL9zZ	{}	Tylan1k	0	https://api.spotify.com/v1/artists/2uo6zaEg5vmqU0E79NL9zZ	0	0	
0EYsVCjCJu7qkCzgiwMOOb	{}	Tylan1k	0	https://api.spotify.com/v1/artists/0EYsVCjCJu7qkCzgiwMOOb	0	0	
4DnpimI9o8d2GMUTjAdzBA	{}	Tylan1k	0	https://api.spotify.com/v1/artists/4DnpimI9o8d2GMUTjAdzBA	0	0	
4YLtscXsxbVgi031ovDDdh	{"contemporary country","outlaw country"}	Chris Stapleton	83	https://api.spotify.com/v1/artists/4YLtscXsxbVgi031ovDDdh	640	640	https://i.scdn.co/image/ab6761610000e5eba0c87c8f329b436eac8b9784
3vDpQbGnzRbRVirXlfQagB	{"alternative americana","kentucky roots","nashville singer-songwriter","new americana","outlaw country"}	Sturgill Simpson	67	https://api.spotify.com/v1/artists/3vDpQbGnzRbRVirXlfQagB	640	640	https://i.scdn.co/image/ab6761610000e5eb1791f31121a24318e91cbda3
6zLBxLdl60ekBLpawtT63I	{"classic texas country","contemporary country","modern country pop"}	Cody Johnson	78	https://api.spotify.com/v1/artists/6zLBxLdl60ekBLpawtT63I	640	640	https://i.scdn.co/image/ab6761610000e5ebb1fa84619efb4bdf4f5e9c4b
3xYXYzm9H3RzyQgBrYwIcx	{"canadian americana","canadian contemporary country","outlaw country","saskatchewan indie"}	Colter Wall	71	https://api.spotify.com/v1/artists/3xYXYzm9H3RzyQgBrYwIcx	640	640	https://i.scdn.co/image/ab6761610000e5eb1223464273767d64760a0a88
0wyMPXGfOuQzNR54ujR9Ix	{"indie folk","stomp and holler"}	Caamp	70	https://api.spotify.com/v1/artists/0wyMPXGfOuQzNR54ujR9Ix	640	640	https://i.scdn.co/image/ab6761610000e5eb14a8f509151ea8cbba5c75d5
4P2moEkGVqw8nJ5caJLC41	{"video game music"}	Cody Matthew Johnson	40	https://api.spotify.com/v1/artists/4P2moEkGVqw8nJ5caJLC41	640	640	https://i.scdn.co/image/ab6761610000e5eb229b5e9c814e47bd52f6eb58
2v7wIbCkIzxOfT3GnqCexD	{"classic texas country","modern southern rock","outlaw country"}	Cody Jinks	65	https://api.spotify.com/v1/artists/2v7wIbCkIzxOfT3GnqCexD	640	640	https://i.scdn.co/image/ab6761610000e5ebd935f32144e6fd349e4ae4a3
0JykJqImUaRVFZfNDWMRRG	{}	Cody Johns	22	https://api.spotify.com/v1/artists/0JykJqImUaRVFZfNDWMRRG	640	640	https://i.scdn.co/image/ab6761610000e5eb8b5f4bc18de8dc495c86a91d
5QNm7E7RU2m64l6Gliu8Oy	{"contemporary country","modern country pop"}	HARDY	75	https://api.spotify.com/v1/artists/5QNm7E7RU2m64l6Gliu8Oy	640	640	https://i.scdn.co/image/ab6761610000e5eb5d7615e55d9b689a5092b9b8
4XRBDs9OQzyrtybAXvNNkW	{}	Cody Johnstone	23	https://api.spotify.com/v1/artists/4XRBDs9OQzyrtybAXvNNkW	640	640	https://i.scdn.co/image/ab6761610000e5ebe594b5612b8774cb39ea8edc
6tPHARSq45lQ8BSALCfkFC	{"contemporary country","modern country pop"}	Lainey Wilson	76	https://api.spotify.com/v1/artists/6tPHARSq45lQ8BSALCfkFC	640	640	https://i.scdn.co/image/ab6761610000e5ebcb092867a2a4c35434d0128b
4vxw1PsfxNpOJ6LIcjOEYj	{}	Casey Donahew & Cody Johnson	5	https://api.spotify.com/v1/artists/4vxw1PsfxNpOJ6LIcjOEYj	640	640	https://i.scdn.co/image/ab67616d0000b273ad6214d09101dba1445215f0
3oSJ7TBVCWMDMiYjXNiCKE	{"black americana","contemporary country",country,"country road"}	Kane Brown	76	https://api.spotify.com/v1/artists/3oSJ7TBVCWMDMiYjXNiCKE	640	640	https://i.scdn.co/image/ab6761610000e5eb8e67bb39532e8957da2d9bd2
2LzlAqWEHOP9EZmmsJOYV0	{}	Cody Johnson	0	https://api.spotify.com/v1/artists/2LzlAqWEHOP9EZmmsJOYV0	0	0	
4oUHIQIBe0LHzYfvXNW4QM	{"contemporary country"}	Morgan Wallen	90	https://api.spotify.com/v1/artists/4oUHIQIBe0LHzYfvXNW4QM	640	640	https://i.scdn.co/image/ab6761610000e5ebdf42c758479fe40372584e77
4ITkqBlf5eoVCOFwsJCnqo	{"desi pop",filmi,"punjabi pop"}	Harrdy Sandhu	67	https://api.spotify.com/v1/artists/4ITkqBlf5eoVCOFwsJCnqo	640	640	https://i.scdn.co/image/ab6761610000e5eb51a6233108e4c65e402bc3e8
2auaiaYSpjw1XDsvyMf2IQ	{}	HARDY	19	https://api.spotify.com/v1/artists/2auaiaYSpjw1XDsvyMf2IQ	640	640	https://i.scdn.co/image/ab6761610000e5eb7d848ae17e05258765caeba5
6KImCVD70vtIoJWnq6nGn3	{pop}	Harry Styles	85	https://api.spotify.com/v1/artists/6KImCVD70vtIoJWnq6nGn3	640	640	https://i.scdn.co/image/ab6761610000e5ebf7db7c8ede90a019c54590bb
4241uunfsMOZMH1cxYgNJF	{}	HARDY	0	https://api.spotify.com/v1/artists/4241uunfsMOZMH1cxYgNJF	640	640	https://i.scdn.co/image/ab6761610000e5ebffa6af72b5f04ab5e6985cb0
6ZjFtWeHP9XN7FeKSUe80S	{"adult standards","easy listening",lounge,swing}	Bing Crosby	76	https://api.spotify.com/v1/artists/6ZjFtWeHP9XN7FeKSUe80S	640	640	https://i.scdn.co/image/ab6761610000e5ebc3cc7f45922b9adade39ef19
6UsX7gav2WB26QaKeTa7FZ	{}	HARDY	3	https://api.spotify.com/v1/artists/6UsX7gav2WB26QaKeTa7FZ	640	640	https://i.scdn.co/image/ab67616d0000b27380e6a0ca2cf5047edb2b9516
7FqkRutc4zWMrnEAUv3Xwd	{afroswing,grime,"uk hip hop"}	Hardy Caprio	53	https://api.spotify.com/v1/artists/7FqkRutc4zWMrnEAUv3Xwd	640	640	https://i.scdn.co/image/ab6761610000e5eb94c2b6e1717083c090546f83
1cK58C1DFcgiR1UOI01lX2	{}	HARDY	0	https://api.spotify.com/v1/artists/1cK58C1DFcgiR1UOI01lX2	0	0	
0QHgL1lAIqAw0HtD7YldmP	{"hip hop","miami hip hop","pop rap",rap}	DJ Khaled	77	https://api.spotify.com/v1/artists/0QHgL1lAIqAw0HtD7YldmP	640	640	https://i.scdn.co/image/ab6761610000e5eb084f36c2ae2da4a02494e1e5
2o5jDhtHVPhrJdv3cEQ99Z	{"big room",brostep,"dutch edm",edm,house,"pop dance","progressive electro house","slap house",trance}	Tiësto	84	https://api.spotify.com/v1/artists/2o5jDhtHVPhrJdv3cEQ99Z	640	640	https://i.scdn.co/image/ab6761610000e5ebe84e08fb1dfa2bf9b5a61563
540vIaP2JwjQb9dm3aArA4	{"dance pop",edm,"electronic trap",pop,"pop dance"}	DJ Snake	79	https://api.spotify.com/v1/artists/540vIaP2JwjQb9dm3aArA4	640	640	https://i.scdn.co/image/ab6761610000e5ebca97cf089968b569e29d795c
7odc1yu6mbQ91fsh0KK5SJ	{}	DJ Ess	64	https://api.spotify.com/v1/artists/7odc1yu6mbQ91fsh0KK5SJ	640	640	https://i.scdn.co/image/ab6761610000e5eb666a31ddf6c964fd660f12f9
0YinUQ50QDB7ZxSCLyQ40k	{"cali rap","pop rap",rap,"southern hip hop",trap}	Mustard	75	https://api.spotify.com/v1/artists/0YinUQ50QDB7ZxSCLyQ40k	640	640	https://i.scdn.co/image/ab6761610000e5eb54406b7007a449aeaac06c44
0b2XeWDPeBiLeskT6RFqMb	{"g funk",popping,"west coast rap"}	DJ Quik	54	https://api.spotify.com/v1/artists/0b2XeWDPeBiLeskT6RFqMb	640	640	https://i.scdn.co/image/ab67616d0000b273dc3ce2b787ae2ca365f974f0
6TC6ZeVdvCuBSn32h5Msul	{"chopped and screwed",crunk,"dirty south rap","gangster rap","houston rap",trap}	DJ Screw	47	https://api.spotify.com/v1/artists/6TC6ZeVdvCuBSn32h5Msul	640	640	https://i.scdn.co/image/ab6761610000e5ebd595760c4e95bd70b7831bac
5CE2IfdYZEQGIDsfiRm8SI	{downtempo,electronica,"instrumental hip hop","trip hop"}	DJ Shadow	64	https://api.spotify.com/v1/artists/5CE2IfdYZEQGIDsfiRm8SI	640	640	https://i.scdn.co/image/ab6761610000e5eb2dc550fb874e6482c53f9018
204IwDdaHE4ymGk9Kya2pY	{"afrofuturismo brasileiro","brazilian hip hop","rap mineiro"}	Djonga	71	https://api.spotify.com/v1/artists/204IwDdaHE4ymGk9Kya2pY	640	640	https://i.scdn.co/image/ab6761610000e5eba83e9f0e901c17791b83be8b
62huveC2Mmi9nfW0ySqNwo	{kizomba,"musica santomense","portuguese pop"}	Djodje	53	https://api.spotify.com/v1/artists/62huveC2Mmi9nfW0ySqNwo	640	640	https://i.scdn.co/image/ab6761610000e5eb970d84fef1e12ce53c6bfbba
2Invsp3HSrAeJy4u7Retry	{"deep groove house","german tech house"}	Kolter	52	https://api.spotify.com/v1/artists/2Invsp3HSrAeJy4u7Retry	640	640	https://i.scdn.co/image/ab6761610000e5eb16b87c805db3427a862a8f5c
0knGpCTbmG4ctl1wzYRZs4	{"bedroom soul"}	Dijon	59	https://api.spotify.com/v1/artists/0knGpCTbmG4ctl1wzYRZs4	640	640	https://i.scdn.co/image/ab6761610000e5eb8da3e6e26f2cd05958f17a65
2mG8HHQ9S9kcbjcrb5N1FE	{"album rock","candy pop","classic rock","girl group","jangle pop","mellow gold","new romantic","new wave","new wave pop","permanent wave",singer-songwriter,"soft rock"}	The Go-Go's	53	https://api.spotify.com/v1/artists/2mG8HHQ9S9kcbjcrb5N1FE	1000	1000	https://i.scdn.co/image/5506a4ed9d4abd277f4eda5a92239dc68073d46d
73nQT8Arf05XV666SlvrVQ	{barnmusik,barnsagor}	Humlan Djojj	69	https://api.spotify.com/v1/artists/73nQT8Arf05XV666SlvrVQ	640	640	https://i.scdn.co/image/ab6761610000e5eb5817afc4e3f6a057998c23ce
6CwfuxIqcltXDGjfZsMd9A	{metropopolis,pop,"pov: indie","uk alternative pop"}	MARINA	74	https://api.spotify.com/v1/artists/6CwfuxIqcltXDGjfZsMd9A	640	640	https://i.scdn.co/image/ab6761610000e5ebc28e02e9bb9bf19358669fef
2AwGETnRSRSgCezcAfDZA2	{"narodna muzika","yugoslav rock"}	Djordje Balasevic	51	https://api.spotify.com/v1/artists/2AwGETnRSRSgCezcAfDZA2	640	640	https://i.scdn.co/image/ab6761610000e5ebb12f85a107e9caedce3dfe0f
4e9vQfyvvDlcQAkjSdFE4x	{"indie pop"}	Maya Hawke	54	https://api.spotify.com/v1/artists/4e9vQfyvvDlcQAkjSdFE4x	640	640	https://i.scdn.co/image/ab6761610000e5eb027ec0d2440512e800da4d92
6QsGtZ7uN2LulXE0XPpXm6	{}	Djodje	1	https://api.spotify.com/v1/artists/6QsGtZ7uN2LulXE0XPpXm6	0	0	
3zaDigUwjHvjOkSn0NDf9x	{afrobeats,"nigerian pop"}	Bnxn	72	https://api.spotify.com/v1/artists/3zaDigUwjHvjOkSn0NDf9x	640	640	https://i.scdn.co/image/ab6761610000e5ebeaec567710335ec2f7073526
4Q8E3fomRdmnzlhOP14npl	{}	Naomi Achu	48	https://api.spotify.com/v1/artists/4Q8E3fomRdmnzlhOP14npl	640	640	https://i.scdn.co/image/ab6761610000e5eb11cae685ae551b274d771fc6
7KDHP27Ioih4GnvrgYT3vH	{}	Djordje Perovic	19	https://api.spotify.com/v1/artists/7KDHP27Ioih4GnvrgYT3vH	0	0	
3LOm0AZjpwVQebvkyanjDy	{"afro drill",afrobeats,"nigerian pop"}	ODUMODUBLVCK	69	https://api.spotify.com/v1/artists/3LOm0AZjpwVQebvkyanjDy	640	640	https://i.scdn.co/image/ab6761610000e5eb82f1a47cfd8bf74db0953768
3ZWMxnrhKNNvAGRn12BK8L	{}	Djodie	14	https://api.spotify.com/v1/artists/3ZWMxnrhKNNvAGRn12BK8L	0	0	
4sbXXFzEWJY2zsZjelerjX	{"french hip hop","pop urbaine","r&b francais"}	Dadju	75	https://api.spotify.com/v1/artists/4sbXXFzEWJY2zsZjelerjX	640	640	https://i.scdn.co/image/ab6761610000e5eb0910ff09d3b54b114d233aa3
7CEqjE9Hoc1bOdqvFLdXkn	{"decije pesme"}	Đorđe Marjanović	13	https://api.spotify.com/v1/artists/7CEqjE9Hoc1bOdqvFLdXkn	640	640	https://i.scdn.co/image/ab67616d0000b273f05bf90626f2ac6a6c8849d6
4OaSyxqlkp7aVpAZwF02QZ	{}	SABAI	55	https://api.spotify.com/v1/artists/4OaSyxqlkp7aVpAZwF02QZ	640	640	https://i.scdn.co/image/ab6761610000e5eb4f1fc725a2c23f3bb951421d
5cj0lLjcoR7YOSnhnX0Po5	{"dance pop",pop}	Doja Cat	87	https://api.spotify.com/v1/artists/5cj0lLjcoR7YOSnhnX0Po5	640	640	https://i.scdn.co/image/ab6761610000e5ebe94f88ff74ae4ddcab961f97
2OY35ujtCwyMmWa1r1Nbtv	{}	Olivia Rodrigo Illegally Copies Music	0	https://api.spotify.com/v1/artists/2OY35ujtCwyMmWa1r1Nbtv	640	640	https://i.scdn.co/image/ab6761610000e5eb1a69b5f03e576872d41006cb
07FPixHI0liZ8pYVzWrrmX	{}	The Olivia Rodrigo Piano Cover Band	1	https://api.spotify.com/v1/artists/07FPixHI0liZ8pYVzWrrmX	640	640	https://i.scdn.co/image/ab67616d0000b273975306157651ff139f32929b
78MHfShRcHD2Qsl3fOhezE	{}	Olivia Rodrigues	11	https://api.spotify.com/v1/artists/78MHfShRcHD2Qsl3fOhezE	640	640	https://i.scdn.co/image/ab67616d0000b273bb143be3a92f30c27fcaa1c8
3Tjslb8jtcT845Q0ozs8FT	{}	Olivia Isabel Rodrigo	0	https://api.spotify.com/v1/artists/3Tjslb8jtcT845Q0ozs8FT	0	0	
7CTor1zYigfRx4e71Y464u	{}	Olivian Rodrigano	16	https://api.spotify.com/v1/artists/7CTor1zYigfRx4e71Y464u	640	640	https://i.scdn.co/image/ab67616d0000b273bc4cc6b2ee818d9ba98df8ed
6zFYqv1mOsgBRQbae3JJ9e	{"album rock","classic rock","mellow gold","piano rock",rock,singer-songwriter,"soft rock"}	Billy Joel	79	https://api.spotify.com/v1/artists/6zFYqv1mOsgBRQbae3JJ9e	640	640	https://i.scdn.co/image/ab6761610000e5ebb34057d59275011032ef8bc8
1ZN1c1qWEGZNX1pGeKCPpf	{"jam band",jamgrass,"progressive bluegrass"}	Billy Strings	65	https://api.spotify.com/v1/artists/1ZN1c1qWEGZNX1pGeKCPpf	640	640	https://i.scdn.co/image/ab6761610000e5eb532fd0e6740fd3db38933afb
0c173mlxpT3dSFRgMO8XPh	{"detroit hip hop","hip hop","pop rap",r&b,rap,"southern hip hop",trap}	Big Sean	78	https://api.spotify.com/v1/artists/0c173mlxpT3dSFRgMO8XPh	640	640	https://i.scdn.co/image/ab6761610000e5eb3d5b14b45d4c3d10d23b03ff
5me0Irg2ANcsgc93uaYrpb	{"east coast hip hop","gangster rap","hardcore hip hop","hip hop",rap}	The Notorious B.I.G.	79	https://api.spotify.com/v1/artists/5me0Irg2ANcsgc93uaYrpb	1250	1000	https://i.scdn.co/image/1b4858fbd24046a81cace5ee18d19c868262b91f
4evsbyR4r4vo6QfoPRC5Tg	{}	Rihanna Paige	0	https://api.spotify.com/v1/artists/4evsbyR4r4vo6QfoPRC5Tg	0	0	
5QdyldG4Fl4TPiOIeMNpBZ	{"art pop","brooklyn indie","chamber pop",countrygaze,"indie pop","indie rock","pov: indie","small room"}	Big Thief	71	https://api.spotify.com/v1/artists/5QdyldG4Fl4TPiOIeMNpBZ	640	640	https://i.scdn.co/image/ab6761610000e5eba54dfec710033513df46f705
4Kxlr1PRlDKEB0ekOCyHgX	{k-pop,"k-pop boy group"}	BIGBANG	70	https://api.spotify.com/v1/artists/4Kxlr1PRlDKEB0ekOCyHgX	640	640	https://i.scdn.co/image/ab6761610000e5eb597a4257d0022e2ac837fa7d
1ThoqLcyIYvZn7iWbj8fsj	{"classic soul",funk,"quiet storm",soul}	Bill Withers	75	https://api.spotify.com/v1/artists/1ThoqLcyIYvZn7iWbj8fsj	1143	834	https://i.scdn.co/image/96b85aec6907206572527e1eeec6569d5e977a38
5Rc75vGFBWZPgL7EXb4k89	{}	Bilmuri	62	https://api.spotify.com/v1/artists/5Rc75vGFBWZPgL7EXb4k89	640	640	https://i.scdn.co/image/ab6761610000e5eb2cc936eee2a5545edb7b19d1
1By9QBFnjZAoI83BZppHlt	{"contemporary country",country,"country road"}	Billy Currington	66	https://api.spotify.com/v1/artists/1By9QBFnjZAoI83BZppHlt	640	640	https://i.scdn.co/image/ab6761610000e5ebacc30a1cf0224922cdbcc405
7lzordPuZEXxwt9aoVZYmG	{"album rock","classic rock","dance rock","hard rock","new romantic","new wave","new wave pop",rock,"soft rock"}	Billy Idol	72	https://api.spotify.com/v1/artists/7lzordPuZEXxwt9aoVZYmG	640	640	https://i.scdn.co/image/ab6761610000e5ebd42c6334786bfdea92beeb5d
1YzCsTRb22dQkh9lghPIrp	{"adult standards","harlem renaissance",jazz,"jazz blues",soul,swing,"torch song","vocal jazz"}	Billie Holiday	67	https://api.spotify.com/v1/artists/1YzCsTRb22dQkh9lghPIrp	828	1000	https://i.scdn.co/image/4efa6b6871a0f672b78b3d16fd5a03c6cd212d58
4jCbgl5Dmt3uOh8WRQfpPs	{"neo soul"}	Bilal	65	https://api.spotify.com/v1/artists/4jCbgl5Dmt3uOh8WRQfpPs	640	640	https://i.scdn.co/image/ab6761610000e5eb4765d45dd53df43a94d82fa9
4jXfFzeP66Zy67HM2mvIIF	{bebop,"contemporary post-bop","cool jazz",jazz,"jazz piano","vocal jazz"}	Bill Evans	64	https://api.spotify.com/v1/artists/4jXfFzeP66Zy67HM2mvIIF	721	1000	https://i.scdn.co/image/427eff99088d2a1be072a012f04e2406ee7cc24b
39vtb2iiz3079nqfL5nfFc	{"alternative hip hop"}	billy woods	50	https://api.spotify.com/v1/artists/39vtb2iiz3079nqfL5nfFc	640	640	https://i.scdn.co/image/ab6761610000e5ebc5ff9848a8c5437ffb42d646
3Fz2GbraVXhcpXnoi2Oe1r	{"album rock","classic rock","glam metal","hard rock",rock,"soft rock","southern rock"}	Billy Squier	59	https://api.spotify.com/v1/artists/3Fz2GbraVXhcpXnoi2Oe1r	1115	1000	https://i.scdn.co/image/a58dae694e2419439ba72ba5ab95316d53331b19
02YLJJnWC7YQVixkjEBRn7	{"british singer-songwriter","indie anthem-folk"}	Billie Marten	57	https://api.spotify.com/v1/artists/02YLJJnWC7YQVixkjEBRn7	640	640	https://i.scdn.co/image/ab6761610000e5ebbbe4050d8b1d6ede32ef2b4f
53IIk03HWWJ2Z7QwQ9yFHh	{"buffalo hip hop"}	Billie Essco	52	https://api.spotify.com/v1/artists/53IIk03HWWJ2Z7QwQ9yFHh	640	640	https://i.scdn.co/image/ab6761610000e5eba9a3bbab919ab98430957a85
3HZZR57W6HRourgPcpul3B	{otacore}	Billie Bust Up	47	https://api.spotify.com/v1/artists/3HZZR57W6HRourgPcpul3B	640	640	https://i.scdn.co/image/ab67616d0000b273b3e00d8dcf87fce317a1bebc
0MID3D49WKmEGfBINN0VJC	{}	Billianne	52	https://api.spotify.com/v1/artists/0MID3D49WKmEGfBINN0VJC	640	640	https://i.scdn.co/image/ab6761610000e5eb8c224152fcc99bc9c00e0590
0t5043yIoMTnAwLa0uNuic	{}	Billi Royce	50	https://api.spotify.com/v1/artists/0t5043yIoMTnAwLa0uNuic	640	640	https://i.scdn.co/image/ab6761610000e5ebe657398fec964be76e377d07
1MrEurzLcL8ugfP1PrUPWG	{}	Billie Joe Armstrong	45	https://api.spotify.com/v1/artists/1MrEurzLcL8ugfP1PrUPWG	1000	1000	https://i.scdn.co/image/ab6772690000c46ca1107ac09284ddba2ae34bba
3Y7RZ31TRPVadSFVy1o8os	{r&b,rap}	H.E.R.	77	https://api.spotify.com/v1/artists/3Y7RZ31TRPVadSFVy1o8os	640	640	https://i.scdn.co/image/ab6761610000e5eb417db49cde3ed1c5a65e3514
7ILRDgyUahxCwnC2YIeCxA	{choral}	Szabó Dénes	47	https://api.spotify.com/v1/artists/7ILRDgyUahxCwnC2YIeCxA	640	640	https://i.scdn.co/image/ab67616d0000b2732e715853d6c089bae37efb2b
2rbgb3tDxDpfhaN10sQzzE	{"polish underground rap"}	Szamz	47	https://api.spotify.com/v1/artists/2rbgb3tDxDpfhaN10sQzzE	640	640	https://i.scdn.co/image/ab6761610000e5ebb8b63c220ac1a91fd2a4ff07
46O01Gw9HMk3vQtS9VvyGG	{}	Szaran	47	https://api.spotify.com/v1/artists/46O01Gw9HMk3vQtS9VvyGG	640	640	https://i.scdn.co/image/ab6761610000e5eb7cdfdfb3268265e298ec8b91
5tAUplSMo5z8xGJbTGoJo9	{"tropical house"}	Szaby	41	https://api.spotify.com/v1/artists/5tAUplSMo5z8xGJbTGoJo9	640	640	https://i.scdn.co/image/ab6761610000e5ebcd8e7854f2e402a5203530f6
38CPjAAqYV8lTYi6clzbjG	{"spiritual jazz"}	Gábor Szabó	44	https://api.spotify.com/v1/artists/38CPjAAqYV8lTYi6clzbjG	640	640	https://i.scdn.co/image/ab6761610000e5eb3186c7c4749a84a5071a24bb
7kDEAMv0Mem8bBG4vwoENq	{}	Szalai	43	https://api.spotify.com/v1/artists/7kDEAMv0Mem8bBG4vwoENq	640	640	https://i.scdn.co/image/ab6761610000e5ebf7deb2da9c637b6d1bd98d30
642IGmyIGSv4Gqf8DjuEDw	{"hungarian pop"}	Szakács Gergő	38	https://api.spotify.com/v1/artists/642IGmyIGSv4Gqf8DjuEDw	640	640	https://i.scdn.co/image/ab6761610000e5ebe47e87cc252d4fc84d967c40
6S9AbH3NSPIOjb6YVaLfIi	{}	H.E.R.O.	20	https://api.spotify.com/v1/artists/6S9AbH3NSPIOjb6YVaLfIi	640	640	https://i.scdn.co/image/ab6761610000e5eb98af385c67e966d75d7fce1d
6uRJnvQ3f8whVnmeoecv5Z	{classical,"classical performance","german orchestra",orchestra}	Berliner Philharmoniker	75	https://api.spotify.com/v1/artists/6uRJnvQ3f8whVnmeoecv5Z	640	640	https://i.scdn.co/image/ab6761610000e5eb055b7b456a9d22d6ae1ed18f
4q1dqjSd9xq6LncaoAgWSJ	{}	H.I.M.	27	https://api.spotify.com/v1/artists/4q1dqjSd9xq6LncaoAgWSJ	640	640	https://i.scdn.co/image/ab6761610000e5ebb3291041c75cabbdd6961ba3
5V0MlUE1Bft0mbLlND7FJz	{"adult standards",jazz,"jazz blues",soul,swing,"vocal jazz"}	Ella Fitzgerald	73	https://api.spotify.com/v1/artists/5V0MlUE1Bft0mbLlND7FJz	1048	1000	https://i.scdn.co/image/3c1d23141059785c8a863137d176319329dc17ef
57LYzLEk2LcFghVwuWbcuS	{r&b,rap}	Summer Walker	82	https://api.spotify.com/v1/artists/57LYzLEk2LcFghVwuWbcuS	640	640	https://i.scdn.co/image/ab6761610000e5ebe0ff24e6eb6e1c0214f158b6
4qO38FsAm2dNLh0LDswJI7	{}	H.E.R.	2	https://api.spotify.com/v1/artists/4qO38FsAm2dNLh0LDswJI7	640	640	https://i.scdn.co/image/ab6761610000e5eb3d12a50bfad96265b36a4ff7
4CQdcx66F116k2db2Y0rjE	{"trap latino","urbano latino"}	Hades66	75	https://api.spotify.com/v1/artists/4CQdcx66F116k2db2Y0rjE	640	640	https://i.scdn.co/image/ab6761610000e5eb631bd8d5ce368145e2af6ddb
5ZS223C6JyBfXasXxrRqOk	{r&b}	Jhené Aiko	80	https://api.spotify.com/v1/artists/5ZS223C6JyBfXasXxrRqOk	640	640	https://i.scdn.co/image/ab6761610000e5ebbc7ca5ae34cffbb572660ee3
6RHYUtZU6c90TlIso7aePp	{}	H.E.R.O.	0	https://api.spotify.com/v1/artists/6RHYUtZU6c90TlIso7aePp	640	640	https://i.scdn.co/image/ab6761610000e5eb87ff4fc716d19b7a475a9192
5zCaQxjl110XTrm4LQ1CxY	{classical,"classical performance","orchestral performance"}	Herbert von Karajan	71	https://api.spotify.com/v1/artists/5zCaQxjl110XTrm4LQ1CxY	640	640	https://i.scdn.co/image/ab6761610000e5ebf67fde1740e91a88445d5bdd
4MkrS9W3HKGDoFcg6vhbF1	{}	Heroe	36	https://api.spotify.com/v1/artists/4MkrS9W3HKGDoFcg6vhbF1	640	640	https://i.scdn.co/image/ab6761610000e5eb454bd21e0acc8c6a5239647c
4ePE1zCRusA2bnI1T3B5bo	{}	H.E.R.O.	0	https://api.spotify.com/v1/artists/4ePE1zCRusA2bnI1T3B5bo	0	0	
19eLuQmk9aCobbVDHc6eek	{"adult standards",dixieland,"harlem renaissance","jazz trumpet",lounge,"new orleans jazz",soul,swing,"vocal jazz"}	Louis Armstrong	73	https://api.spotify.com/v1/artists/19eLuQmk9aCobbVDHc6eek	1000	1000	https://i.scdn.co/image/ab6772690000c46c4a0e9d5e55f9f3721c3243c5
0woWttG1HQbdvPSxnqWNEf	{}	Hero	28	https://api.spotify.com/v1/artists/0woWttG1HQbdvPSxnqWNEf	0	0	
1QL7yTHrdahRMpvNtn6rI2	{baroque,classical,"early music","english baroque","german baroque"}	George Frideric Handel	67	https://api.spotify.com/v1/artists/1QL7yTHrdahRMpvNtn6rI2	1209	1000	https://i.scdn.co/image/6391390229a5fb88e8e0d71e3e942b427d12d9a8
5bC48lf8QD99jU2lLiJlon	{}	HERO	23	https://api.spotify.com/v1/artists/5bC48lf8QD99jU2lLiJlon	640	640	https://i.scdn.co/image/ab6761610000e5eb1794b5587fc0914ef4fc43ea
2eR5l1dWjSIEfAs0mXgyak	{}	Hayes Bradley	28	https://api.spotify.com/v1/artists/2eR5l1dWjSIEfAs0mXgyak	640	640	https://i.scdn.co/image/ab6761610000e5eb57329ed3adfe73609dfc943a
1r1uxoy19fzMxunt3ONAkG	{"indie pop","la indie","pov: indie"}	Phoebe Bridgers	80	https://api.spotify.com/v1/artists/1r1uxoy19fzMxunt3ONAkG	640	640	https://i.scdn.co/image/ab6761610000e5eb626686e362d30246e816cc5b
3uwAm6vQy7kWPS2bciKWx9	{"bedroom pop","indie pop","norwegian indie","pov: indie"}	girl in red	77	https://api.spotify.com/v1/artists/3uwAm6vQy7kWPS2bciKWx9	640	640	https://i.scdn.co/image/ab6761610000e5ebb3ed437da60866ed52c5238b
1QRj3hoop9Mv5VvHQkwPEp	{"alt z",pop}	Olivia O'Brien	66	https://api.spotify.com/v1/artists/1QRj3hoop9Mv5VvHQkwPEp	640	640	https://i.scdn.co/image/ab6761610000e5ebdedc07bc2d6f72f0041a8c1c
5GIaRpKCtzquc5UUicqe50	{"movie tunes","show tunes"}	Olivia Foa'i	59	https://api.spotify.com/v1/artists/5GIaRpKCtzquc5UUicqe50	640	640	https://i.scdn.co/image/ab6761610000e5eb64dfa45459f43ed8d7dbbce1
5YBSzuCs7WaFKNr7Bky0Uf	{}	Olivia	66	https://api.spotify.com/v1/artists/5YBSzuCs7WaFKNr7Bky0Uf	640	640	https://i.scdn.co/image/ab6761610000e5ebc8a8bdcddc3a59806f32da23
2W8yFh0Ga6Yf3jiayVxwkE	{pop}	Dove Cameron	72	https://api.spotify.com/v1/artists/2W8yFh0Ga6Yf3jiayVxwkE	640	640	https://i.scdn.co/image/ab6761610000e5eb00123a25f73d91bdead7b1c0
2kRfqPViCqYdSGhYSM9R0Q	{pop}	Madison Beer	75	https://api.spotify.com/v1/artists/2kRfqPViCqYdSGhYSM9R0Q	640	640	https://i.scdn.co/image/ab6761610000e5ebe0b37426761bbaa441615c5b
6md7K2UM0UBU0fzI5erQCb	{}	Olivia Olson	57	https://api.spotify.com/v1/artists/6md7K2UM0UBU0fzI5erQCb	640	640	https://i.scdn.co/image/ab6761610000e5eb57269522a0c931beb9e4ae04
00x1fYSGhdqScXBRpSj3DW	{"pop soul"}	Olivia Dean	72	https://api.spotify.com/v1/artists/00x1fYSGhdqScXBRpSj3DW	640	640	https://i.scdn.co/image/ab6761610000e5ebf2f4aa5e873acfe27b190915
188VINPQh5dyNfLUkevKqf	{"post-teen pop"}	Olivia Holt	48	https://api.spotify.com/v1/artists/188VINPQh5dyNfLUkevKqf	640	640	https://i.scdn.co/image/ab6761610000e5eb78f5b8a5f2e1d6e30d6230b9
7bp2lSdh12wcA8LyB1srfJ	{pop}	Sofia Carson	71	https://api.spotify.com/v1/artists/7bp2lSdh12wcA8LyB1srfJ	640	640	https://i.scdn.co/image/ab6761610000e5eba26cb5b1e204b1049ec4d6cb
5rHz8ToPPFn6srjgk3dlrP	{}	Dove Cameron	0	https://api.spotify.com/v1/artists/5rHz8ToPPFn6srjgk3dlrP	640	640	https://i.scdn.co/image/ab67616d0000b273b1d7ea7fa0353c246bc6d4cb
4uBD3fsHzb3IpOTGpicsbH	{"movie tunes"}	Cameron Boyce	65	https://api.spotify.com/v1/artists/4uBD3fsHzb3IpOTGpicsbH	0	0	
5TLQArskPwpPQULjjE2tsW	{}	Alex Lacamoire	73	https://api.spotify.com/v1/artists/5TLQArskPwpPQULjjE2tsW	640	640	https://i.scdn.co/image/ab67616d0000b2735161c380bfea9322a4ef067f
1gV480zBnPy4ktKHfHKxZ5	{}	Cast of EPIC: The Musical	77	https://api.spotify.com/v1/artists/1gV480zBnPy4ktKHfHKxZ5	640	640	https://i.scdn.co/image/ab67616d0000b273aab8e079e15c7ef2f9259814
6dZZZ0SHePIw55MWo0FQC5	{}	dove	9	https://api.spotify.com/v1/artists/6dZZZ0SHePIw55MWo0FQC5	640	640	https://i.scdn.co/image/ab6761610000e5ebc881555acfa00d014278c164
3twuAojvYNrlWZpMkxLm3P	{"alternative hip hop","show tunes"}	Daveed Diggs	71	https://api.spotify.com/v1/artists/3twuAojvYNrlWZpMkxLm3P	640	640	https://i.scdn.co/image/ab6761610000e5ebf638289c7621609519d8ad24
20EGKg0XsxPJ0GRHxfb9LX	{"movie tunes"}	Kylie Cantrall	64	https://api.spotify.com/v1/artists/20EGKg0XsxPJ0GRHxfb9LX	640	640	https://i.scdn.co/image/ab6761610000e5eb0a7fd7e9e6013abac54ae133
60MZiJnAYJd1QOj1woIm0R	{tecnobanda}	Alex Ramirez Y Su Grupo Profetas	53	https://api.spotify.com/v1/artists/60MZiJnAYJd1QOj1woIm0R	640	640	https://i.scdn.co/image/ab6761610000e5eb7c8c7bbf160478e5b365f5f2
5UoIq8uWlFATYy6Zlb3mQr	{}	Alex Blamire	8	https://api.spotify.com/v1/artists/5UoIq8uWlFATYy6Zlb3mQr	640	640	https://i.scdn.co/image/ab67616d0000b273a178707414781f049a6aaa5a
2fTTmPI3XaJwqM19w5QiRz	{}	Alex Banin	47	https://api.spotify.com/v1/artists/2fTTmPI3XaJwqM19w5QiRz	640	640	https://i.scdn.co/image/ab6761610000e5eb88bece79a6428e5c3ea8ca1d
2tshnBOpr9KwkshGucdSBA	{}	Alex Ramirez	11	https://api.spotify.com/v1/artists/2tshnBOpr9KwkshGucdSBA	640	640	https://i.scdn.co/image/ab6761610000e5ebb707c04cdc5c862d0b111e55
3OoMAVxEojcUyAL6vgJiW1	{}	Robert Blamire	8	https://api.spotify.com/v1/artists/3OoMAVxEojcUyAL6vgJiW1	640	640	https://i.scdn.co/image/ab67616d0000b273a178707414781f049a6aaa5a
7L0dN1xkEPi7zTENnOnewa	{}	Alexandra Bleaje	13	https://api.spotify.com/v1/artists/7L0dN1xkEPi7zTENnOnewa	640	640	https://i.scdn.co/image/ab67616d0000b273053521ea273d518f61df93c0
6Wq4V8XqwPdoNH1u26Az3m	{}	Brandon Bladimir	4	https://api.spotify.com/v1/artists/6Wq4V8XqwPdoNH1u26Az3m	640	640	https://i.scdn.co/image/ab67616d0000b273d7b7d958b18e3c76dbd8d0ad
2fhdw35XYvAdWBex2DDBhu	{}	Alex Blanes	2	https://api.spotify.com/v1/artists/2fhdw35XYvAdWBex2DDBhu	640	640	https://i.scdn.co/image/ab6761610000e5ebfb7fbf49a06b7c2980da46a9
4FGPzWzgjURDNT7JQ8pYgH	{"modern country pop"}	Zach Top	74	https://api.spotify.com/v1/artists/4FGPzWzgjURDNT7JQ8pYgH	640	640	https://i.scdn.co/image/ab6761610000e5eb7b22795b151c674a20430256
5ZsFI1h6hIdQRw2ti0hz81	{pop,"uk pop"}	ZAYN	79	https://api.spotify.com/v1/artists/5ZsFI1h6hIdQRw2ti0hz81	640	640	https://i.scdn.co/image/ab6761610000e5eb7a1fba1bb3618ef71355f82a
2qxJFvFYMEDqd7ui6kSAcq	{complextro,edm,"german techno",pop,"pop dance"}	Zedd	76	https://api.spotify.com/v1/artists/2qxJFvFYMEDqd7ui6kSAcq	640	640	https://i.scdn.co/image/ab6761610000e5ebe28762aed82cde1178fb3873
77SW9BnxLY8rJ0RciFqkHh	{"modern alternative rock","modern rock",pop}	The Neighbourhood	86	https://api.spotify.com/v1/artists/77SW9BnxLY8rJ0RciFqkHh	640	640	https://i.scdn.co/image/ab6761610000e5ebdf0b5ac84376a0a4b2166816
67qogtRNI0GjUr8PlaG6Zh	{brostep,"canadian electronic",dubstep,edm,"electro house","progressive electro house"}	Zeds Dead	62	https://api.spotify.com/v1/artists/67qogtRNI0GjUr8PlaG6Zh	640	640	https://i.scdn.co/image/ab6761610000e5ebdfbefb11a6ceee765d4cd98f
3WrFJ7ztbogyGnTHbHJFl2	{"british invasion","classic rock",merseybeat,"psychedelic rock",rock}	The Beatles	86	https://api.spotify.com/v1/artists/3WrFJ7ztbogyGnTHbHJFl2	640	640	https://i.scdn.co/image/ab6761610000e5ebe9348cc01ff5d55971b22433
6yJCxee7QumYr820xdIsjo	{"contemporary country",country,"country road","modern country rock"}	Zac Brown Band	72	https://api.spotify.com/v1/artists/6yJCxee7QumYr820xdIsjo	640	640	https://i.scdn.co/image/ab6761610000e5eb8b236b26cb2d93cfc9f1ada1
2tIP7SsRs7vjIcLrU85W8J	{"australian hip hop"}	The Kid LAROI	85	https://api.spotify.com/v1/artists/2tIP7SsRs7vjIcLrU85W8J	640	640	https://i.scdn.co/image/ab6761610000e5ebebf5c408f4d003817161e061
2AM4ilv6UzW0uMRuqKtDgN	{"album rock","blues rock","classic rock","hard rock",rock}	ZZ Top	72	https://api.spotify.com/v1/artists/2AM4ilv6UzW0uMRuqKtDgN	1000	1000	https://i.scdn.co/image/ab6772690000c46ca56aa897505a21aebecf7ea3
7aJSIsbI5wV8aFi2kkFfPi	{}	ZZ Ward	47	https://api.spotify.com/v1/artists/7aJSIsbI5wV8aFi2kkFfPi	640	640	https://i.scdn.co/image/ab6761610000e5eb3a15859c2d1aa1feafbfb6a1
26j38hvhD7PjC0a4EqdaSn	{}	zzzahara	54	https://api.spotify.com/v1/artists/26j38hvhD7PjC0a4EqdaSn	640	640	https://i.scdn.co/image/ab6761610000e5ebd19c9f202ffe8ec2bcc87921
5ZdULxhIJLbR5bhCzcPTbu	{}	Zzz.	43	https://api.spotify.com/v1/artists/5ZdULxhIJLbR5bhCzcPTbu	640	640	https://i.scdn.co/image/ab6761610000e5eb4be35e8a5287510ce08059b9
7c53ZFyajVMTo08HmvoB6b	{"latin pop"}	zzoilo	61	https://api.spotify.com/v1/artists/7c53ZFyajVMTo08HmvoB6b	640	640	https://i.scdn.co/image/ab6761610000e5eb20fd7b40adc1b615cc1d71b4
1gdaEBrH99AfhsiQNbaSBp	{"classic soul",soul,"soul blues","southern soul blues"}	Z.Z. Hill	34	https://api.spotify.com/v1/artists/1gdaEBrH99AfhsiQNbaSBp	640	640	https://i.scdn.co/image/ab6761610000e5eb770a63d951fdb9fc381fea7c
4MVyzYMgTwdP7Z49wAZHx0	{"album rock","classic rock","hard rock",rock,"southern rock"}	Lynyrd Skynyrd	73	https://api.spotify.com/v1/artists/4MVyzYMgTwdP7Z49wAZHx0	640	640	https://i.scdn.co/image/ab6761610000e5eb451eb07ddc6e68d3e474c2bf
7ulrwifivAXWAZHfZS4hy9	{asmr}	Zzz ASMR	41	https://api.spotify.com/v1/artists/7ulrwifivAXWAZHfZS4hy9	640	640	https://i.scdn.co/image/ab67616d0000b27396d91c9769412742404ab72b
15UsOTVnJzReFVN1VCnxy4	{"emo rap","miami hip hop",rap}	XXXTENTACION	89	https://api.spotify.com/v1/artists/15UsOTVnJzReFVN1VCnxy4	640	640	https://i.scdn.co/image/ab6761610000e5ebf0c20db5ef6c6fbe5135d2e4
711MCceyCBcFnzjGY4Q7Un	{"australian rock","hard rock",rock}	AC/DC	83	https://api.spotify.com/v1/artists/711MCceyCBcFnzjGY4Q7Un	640	640	https://i.scdn.co/image/ab6761610000e5ebc4c77549095c86acb4e77b37
2YvlK6lKiKVjXxsjvNbnqg	{"japanese vgm"}	HOYO-MiX	74	https://api.spotify.com/v1/artists/2YvlK6lKiKVjXxsjvNbnqg	640	640	https://i.scdn.co/image/ab6761610000e5eb9e83221b244b3ec23d8faa58
4aCmpVv3FGAYifR21ITrGX	{}	Zenless Zone Zero	31	https://api.spotify.com/v1/artists/4aCmpVv3FGAYifR21ITrGX	640	640	https://i.scdn.co/image/ab67616d0000b273a6e93133da262d3a0b9eaf19
6WfhRYCdCR8TO6nNr2gBK0	{"anime drill","anime rap"}	Sl!ck	32	https://api.spotify.com/v1/artists/6WfhRYCdCR8TO6nNr2gBK0	640	640	https://i.scdn.co/image/ab6761610000e5ebbf0a9bdabcf8e6748516af59
2Ud3LYClLQlkdXeqnV1Vyb	{}	zZzforthepeople	33	https://api.spotify.com/v1/artists/2Ud3LYClLQlkdXeqnV1Vyb	640	640	https://i.scdn.co/image/ab67616d0000b2731d765259d07b3f2b90c93e9c
1YcGiPbTZ1X2wcw4iv8JWa	{}	Zzzipper	45	https://api.spotify.com/v1/artists/1YcGiPbTZ1X2wcw4iv8JWa	640	640	https://i.scdn.co/image/ab6761610000e5ebb083c4d21535bdba8178c211
2BraeWUjpXi1iuRZB0efxT	{"anime piano"}	zzz - Anime on Piano	25	https://api.spotify.com/v1/artists/2BraeWUjpXi1iuRZB0efxT	640	640	https://i.scdn.co/image/ab6761610000e5eb1f1b6abcc9a859d38a8c08ab
37iR02rEajDOH1D1EAQAzq	{}	Zzz. Archive	19	https://api.spotify.com/v1/artists/37iR02rEajDOH1D1EAQAzq	640	640	https://i.scdn.co/image/ab6761610000e5eb99cd98a1c7ec4ff99a068e46
4LPXI1xw3mAhgZZpxMQhXs	{}	Zzz	25	https://api.spotify.com/v1/artists/4LPXI1xw3mAhgZZpxMQhXs	640	640	https://i.scdn.co/image/ab67616d0000b273b700bf7b696293c6d3527644
0yVi0IM0Ao6fJEs2CwVStv	{}	zzzLega	26	https://api.spotify.com/v1/artists/0yVi0IM0Ao6fJEs2CwVStv	640	640	https://i.scdn.co/image/ab6761610000e5eb45f5509d4b3734b36e965389
33rnQWadiG2aauIwIxPxfB	{"ukrainian phonk"}	ZWE1HVNDXR	67	https://api.spotify.com/v1/artists/33rnQWadiG2aauIwIxPxfB	640	640	https://i.scdn.co/image/ab6761610000e5eb504625a246266424ac0265dd
53kUGCuekuXoSYPISirZpl	{}	Ziahfyah	60	https://api.spotify.com/v1/artists/53kUGCuekuXoSYPISirZpl	640	640	https://i.scdn.co/image/ab6761610000e5eba4aee817c59671a3194f3e22
6MrdwyCIKbpXmTKQBlG3uq	{"chopped and screwed","dirty south rap","houston rap"}	Z-Ro	57	https://api.spotify.com/v1/artists/6MrdwyCIKbpXmTKQBlG3uq	640	640	https://i.scdn.co/image/ab6761610000e5ebebf72bd111f6b1dd166f8265
6nTTVtUnmZWlPju0qzX7Or	{"gym phonk"}	ZODIVK	67	https://api.spotify.com/v1/artists/6nTTVtUnmZWlPju0qzX7Or	640	640	https://i.scdn.co/image/ab6761610000e5ebec99040ac5748c0ed9024ed7
2InQo8UOogrTx73i1O3Oyr	{}	ZEDSU	37	https://api.spotify.com/v1/artists/2InQo8UOogrTx73i1O3Oyr	640	640	https://i.scdn.co/image/ab6761610000e5ebdd7f0af23410022b9d3057a3
50IPPvZYU8gc9n5ypgwsnU	{"aesthetic rap"}	Ze66y	47	https://api.spotify.com/v1/artists/50IPPvZYU8gc9n5ypgwsnU	640	640	https://i.scdn.co/image/ab6761610000e5eb5d0fc8ace3e0e72988e91d83
64fmp7FQFQ4ZTytATtHtIw	{}	zvch	46	https://api.spotify.com/v1/artists/64fmp7FQFQ4ZTytATtHtIw	640	640	https://i.scdn.co/image/ab6761610000e5eb09a8d864e03917e7710d9a6c
5FU1KYJheed7LZIM2r6KrE	{}	dkj	48	https://api.spotify.com/v1/artists/5FU1KYJheed7LZIM2r6KrE	640	640	https://i.scdn.co/image/ab6761610000e5eb70bd09870007b62171ffe5a6
6y9nVKeE4wRW8bDxoxDqL9	{sillycore}	j1gggs	49	https://api.spotify.com/v1/artists/6y9nVKeE4wRW8bDxoxDqL9	640	640	https://i.scdn.co/image/ab6761610000e5eb2a48963f45cc8d25c75aa535
26LmKYZRstUUMu2LC2xen9	{"dark trap","scream rap"}	Zotiyac	44	https://api.spotify.com/v1/artists/26LmKYZRstUUMu2LC2xen9	640	640	https://i.scdn.co/image/ab6761610000e5ebf72e13583a09c81fca3e11a4
3sQcHDk4dv5aUVBtmXOMVo	{}	JoogSzn	35	https://api.spotify.com/v1/artists/3sQcHDk4dv5aUVBtmXOMVo	640	640	https://i.scdn.co/image/ab6761610000e5eb8b2234e8bd0fc1ac35182ea9
31mbdQ8C37rhkcoW6z2BSw	{}	T-Jxint	37	https://api.spotify.com/v1/artists/31mbdQ8C37rhkcoW6z2BSw	640	640	https://i.scdn.co/image/ab6761610000e5ebbf9f4ee3f6e54d18a0418c29
0Nzgjph6U8oX2RwmBfoQvy	{}	Z Money	40	https://api.spotify.com/v1/artists/0Nzgjph6U8oX2RwmBfoQvy	640	640	https://i.scdn.co/image/ab6761610000e5eb9bbd411c01b8da9ae6a714be
5ygIMAnMVdeTje3JtDjUTU	{"memphis hip hop"}	Zed Zilla	33	https://api.spotify.com/v1/artists/5ygIMAnMVdeTje3JtDjUTU	640	640	https://i.scdn.co/image/ab6761610000e5eb71e88b88b282fbb9bf32f96a
1F2CJNiJlAkcgMzktSUc7i	{"alabama rap"}	Luh JoJo	33	https://api.spotify.com/v1/artists/1F2CJNiJlAkcgMzktSUc7i	640	640	https://i.scdn.co/image/ab6761610000e5ebefb3cb2ee4ca6ba0da906e1d
33wEvIq1uCzfPWVNiy4ZRS	{}	Esejj_Jesus	35	https://api.spotify.com/v1/artists/33wEvIq1uCzfPWVNiy4ZRS	640	640	https://i.scdn.co/image/ab67616d0000b273da6f2c842dce80fdb1a31320
1BT6RSmZXLI72Y4AmQlONN	{}	Zig-Zag	38	https://api.spotify.com/v1/artists/1BT6RSmZXLI72Y4AmQlONN	640	640	https://i.scdn.co/image/ab67616d0000b27300219227ce22f7ba0c92d68c
6m8acOBf7WOpC5ikjqcRTr	{"pink noise",scenecore}	zeija	41	https://api.spotify.com/v1/artists/6m8acOBf7WOpC5ikjqcRTr	640	640	https://i.scdn.co/image/ab6761610000e5ebeafb3eea0d1d4fee58cb463a
1NzIfDPUv5QYRXOtv13PRI	{"chinese hip hop"}	Lil Ghost小鬼	46	https://api.spotify.com/v1/artists/1NzIfDPUv5QYRXOtv13PRI	640	640	https://i.scdn.co/image/ab6761610000e5eb2f57e716139e9bfbcdea445a
2N5G51SsGIZgfK794ToXdn	{}	ZHG Juwop	6	https://api.spotify.com/v1/artists/2N5G51SsGIZgfK794ToXdn	640	640	https://i.scdn.co/image/ab67616d0000b273f0bafba5a81c895cac300e1d
3lUQ5KL1fIbPdy7EdEgGNM	{}	Znip	16	https://api.spotify.com/v1/artists/3lUQ5KL1fIbPdy7EdEgGNM	640	640	https://i.scdn.co/image/ab6761610000e5eb780027194de1a50b7bfad64d
3UVdyYFeZh2IROvUmsdgYn	{}	ZOOWOP	12	https://api.spotify.com/v1/artists/3UVdyYFeZh2IROvUmsdgYn	640	640	https://i.scdn.co/image/ab67616d0000b273ceb56def2b47c34d6198e4d2
01Fp32tvWgXBxNk2R8OKmV	{}	ZelooperZ	4	https://api.spotify.com/v1/artists/01Fp32tvWgXBxNk2R8OKmV	0	0	
0QHG7usR0EEcUQOD9KT5lP	{}	ZZFOR3V3R	10	https://api.spotify.com/v1/artists/0QHG7usR0EEcUQOD9KT5lP	640	640	https://i.scdn.co/image/ab6761610000e5eb7e0f98e339c6ac64d8b9a378
3d8sRmOfhRkE8ocTBXJbQS	{}	DJ ZUP RAIii	8	https://api.spotify.com/v1/artists/3d8sRmOfhRkE8ocTBXJbQS	640	640	https://i.scdn.co/image/ab67616d0000b273f126842a2782d9d13632e722
7u4eiQINc54Hm19iLstLI7	{}	ZJK	6	https://api.spotify.com/v1/artists/7u4eiQINc54Hm19iLstLI7	640	640	https://i.scdn.co/image/ab67616d0000b273b4af08a8481ff7d229514a6c
6W3KzLfU9eZUuv92yolKic	{}	eojoop	3	https://api.spotify.com/v1/artists/6W3KzLfU9eZUuv92yolKic	640	640	https://i.scdn.co/image/ab67616d0000b27385a16f15b365dc7952d25f48
6oEuyv3YVxtKqYbezzFC3B	{}	Zzzup	3	https://api.spotify.com/v1/artists/6oEuyv3YVxtKqYbezzFC3B	640	640	https://i.scdn.co/image/ab67616d0000b27336eb9b4cd5d5b1dc77154654
0lMFznJKz5aVld2O6GIWMW	{}	Zigwap	2	https://api.spotify.com/v1/artists/0lMFznJKz5aVld2O6GIWMW	640	640	https://i.scdn.co/image/ab6761610000e5ebc1253cb56dfddf8ad29fce6b
4c9uE9KTJwBzlOEFyMVauk	{}	Utility Belt	4	https://api.spotify.com/v1/artists/4c9uE9KTJwBzlOEFyMVauk	640	640	https://i.scdn.co/image/ab67616d0000b2731531eeb70f13bb55b49cb911
3ZwoBqJWHKYdzgj0E0LkyR	{}	Utility Bill	7	https://api.spotify.com/v1/artists/3ZwoBqJWHKYdzgj0E0LkyR	0	0	
7z6Gx3QpnOARqsuUcjC2C8	{}	Music Utility	17	https://api.spotify.com/v1/artists/7z6Gx3QpnOARqsuUcjC2C8	640	640	https://i.scdn.co/image/ab67616d0000b273ca505dc99b6cc4ae7b50ff44
4czXgYFqdnwNLQOfYBzk7c	{}	User Unauthorized	12	https://api.spotify.com/v1/artists/4czXgYFqdnwNLQOfYBzk7c	640	640	https://i.scdn.co/image/ab6761610000e5eb605dc76a499697e13676aa9a
04ON5lrMBHbeY87L0qb8zQ	{}	Utiliti	4	https://api.spotify.com/v1/artists/04ON5lrMBHbeY87L0qb8zQ	640	640	https://i.scdn.co/image/ab6761610000e5eb3ad81d735e257c702b8efc87
0rk8vUXwBQJKY5auQ6REOM	{}	Futilitarian Librarians	9	https://api.spotify.com/v1/artists/0rk8vUXwBQJKY5auQ6REOM	640	640	https://i.scdn.co/image/ab6761610000e5ebb23fef6a3d1697b49c07943f
3PqU57mJ5Snc2g4vLOXK68	{}	Provisional	14	https://api.spotify.com/v1/artists/3PqU57mJ5Snc2g4vLOXK68	640	640	https://i.scdn.co/image/ab6761610000e5ebb3a045844257677ca7861121
2PqiBPJdeE6d1SQNfZDYjQ	{}	The Dirty Principle	9	https://api.spotify.com/v1/artists/2PqiBPJdeE6d1SQNfZDYjQ	640	640	https://i.scdn.co/image/ab67616d0000b273ca51c8817310223efefdc2c6
3j9yGRnG714l8SIp6IGeQq	{}	Unruly Improvement	5	https://api.spotify.com/v1/artists/3j9yGRnG714l8SIp6IGeQq	640	640	https://i.scdn.co/image/ab67616d0000b273478878f2f4ba259b2a1ad5ab
3MteW1ZRtupRg5722NA38u	{}	TWICE	0	https://api.spotify.com/v1/artists/3MteW1ZRtupRg5722NA38u	0	0	
33XDs750HZNs6RCLh2gG58	{}	Provide Trolley	5	https://api.spotify.com/v1/artists/33XDs750HZNs6RCLh2gG58	640	640	https://i.scdn.co/image/ab67616d0000b273ad0d356a1adeb50eb4f40a81
0cxNfEa3UFPqeMaUudfKtj	{"vgm instrumental"}	User Youth	34	https://api.spotify.com/v1/artists/0cxNfEa3UFPqeMaUudfKtj	640	640	https://i.scdn.co/image/ab6761610000e5eb962cd62f17b8ed1afbcb4f6b
4JSE0WBEsQB69Nrs5trNMW	{}	UBERocity	27	https://api.spotify.com/v1/artists/4JSE0WBEsQB69Nrs5trNMW	640	640	https://i.scdn.co/image/ab6761610000e5ebe19da8f0000a9f7dd1b37b54
4uFqPePvNxqpUyH98rfZWc	{}	Bill Fagerbakke	22	https://api.spotify.com/v1/artists/4uFqPePvNxqpUyH98rfZWc	0	0	
3d2wsbcGj2DqqlKofiPADX	{}	Bill	21	https://api.spotify.com/v1/artists/3d2wsbcGj2DqqlKofiPADX	640	640	https://i.scdn.co/image/ab67616d0000b27334d73ff574e23475c451089c
3mzFG9KBMbkO5OZHkiiQfS	{hardvapour,vaporwave}	Useless	7	https://api.spotify.com/v1/artists/3mzFG9KBMbkO5OZHkiiQfS	640	640	https://i.scdn.co/image/ab67616d0000b273af7eca0b7619169fa4b2f9c4
5141OWBSBjQwsj8VCQY3Y6	{}	The Vanity Plan	4	https://api.spotify.com/v1/artists/5141OWBSBjQwsj8VCQY3Y6	640	640	https://i.scdn.co/image/ab6761610000e5eb2ae76d0f31bcc0dee1075b48
0Wi2fADbhwXlPUWxBmzo99	{"polish hip hop"}	Szpaku	71	https://api.spotify.com/v1/artists/0Wi2fADbhwXlPUWxBmzo99	640	640	https://i.scdn.co/image/ab6761610000e5ebe7690bd74760b524da43acb3
4hSeosKw3pr72gC10igZow	{folktronica}	Szymon	51	https://api.spotify.com/v1/artists/4hSeosKw3pr72gC10igZow	640	640	https://i.scdn.co/image/ab6761610000e5eb3cb7a352b02da7c3087d77f2
5MYqSmIAMjoiBp8suHqGaA	{"background music"}	Szigeti Aliz	44	https://api.spotify.com/v1/artists/5MYqSmIAMjoiBp8suHqGaA	640	640	https://i.scdn.co/image/ab6761610000e5ebea05af6d94cc1526297900d0
0fTSzq9jAh4c36UVb4V7CB	{"gen z singer-songwriter","singer-songwriter pop"}	Alex Warren	77	https://api.spotify.com/v1/artists/0fTSzq9jAh4c36UVb4V7CB	640	640	https://i.scdn.co/image/ab6761610000e5eb16259488e0146d0807b53e62
54Aus3mqSXzHDr5MJMFJal	{}	Ariana Grande-Butera	0	https://api.spotify.com/v1/artists/54Aus3mqSXzHDr5MJMFJal	0	0	
0MaNOO9uwzmb5hnEuTboZv	{}	Ariano Grandino	13	https://api.spotify.com/v1/artists/0MaNOO9uwzmb5hnEuTboZv	640	640	https://i.scdn.co/image/ab67616d0000b273fc9bd2b2f0e125e572992f0b
2FXC3k01G6Gw61bmprjgqS	{"irish singer-songwriter","modern rock",pop,"pov: indie"}	Hozier	86	https://api.spotify.com/v1/artists/2FXC3k01G6Gw61bmprjgqS	640	640	https://i.scdn.co/image/ab6761610000e5ebad85a585103dfc2f3439119a
3nFkdlSjzX9mRTtwJOzDYB	{"east coast hip hop","gangster rap","hip hop","pop rap",rap}	JAY-Z	85	https://api.spotify.com/v1/artists/3nFkdlSjzX9mRTtwJOzDYB	640	640	https://i.scdn.co/image/ab6761610000e5ebc75afcd5a9027f60eaebb5e4
0C4gtx1iHMfuaQ73GKWvtZ	{}	Hudson Westbrook	66	https://api.spotify.com/v1/artists/0C4gtx1iHMfuaQ73GKWvtZ	640	640	https://i.scdn.co/image/ab6761610000e5eba81b5ff1dc6701b0610a6c18
7CajNmpbOovFoOoasH2HaY	{"dance pop",edm,"electro house",house,pop,"progressive house","uk dance"}	Calvin Harris	87	https://api.spotify.com/v1/artists/7CajNmpbOovFoOoasH2HaY	640	640	https://i.scdn.co/image/ab6761610000e5eb014a3c1730d960c66396ed63
508weSx4HBumrGggFmc7br	{"atl trap"}	Hunxho	68	https://api.spotify.com/v1/artists/508weSx4HBumrGggFmc7br	640	640	https://i.scdn.co/image/ab6761610000e5ebd5d737eb2e35a4481f0719d2
0CEFCo8288kQU7mJi25s6E	{"alternative metal","modern rock",post-grunge,"rap metal","rap rock"}	Hollywood Undead	70	https://api.spotify.com/v1/artists/0CEFCo8288kQU7mJi25s6E	640	640	https://i.scdn.co/image/ab6761610000e5eb4159f85a5a40c655380821da
1lKZzN2d4IqiEYxyECIEHI	{"alternative emo",emo,"pop punk"}	Hot Mulligan	62	https://api.spotify.com/v1/artists/1lKZzN2d4IqiEYxyECIEHI	640	640	https://i.scdn.co/image/ab6761610000e5ebf9e7e0a231136fa7894c4882
35WVTyRnKAoaGExqgktVyb	{"modern indie pop"}	Hotel Ugly	77	https://api.spotify.com/v1/artists/35WVTyRnKAoaGExqgktVyb	640	640	https://i.scdn.co/image/ab6761610000e5eb939033cc36c08ab68b33f760
5SHQUMAmEK5KmuSb0aDvsn	{"alternative rock",grunge,"riot grrrl"}	Hole	64	https://api.spotify.com/v1/artists/5SHQUMAmEK5KmuSb0aDvsn	1000	1000	https://i.scdn.co/image/3f070ac89152fcd23f90c1351295d8cc64d54cb2
08GQAI4eElDnROBrJRGE0X	{"album rock","classic rock",rock,"soft rock","yacht rock"}	Fleetwood Mac	83	https://api.spotify.com/v1/artists/08GQAI4eElDnROBrJRGE0X	640	640	https://i.scdn.co/image/ab6761610000e5ebc8752dd511cda8c31e9daee8
7EWU4FhUJM1sZQgQKdENeT	{"conscious hip hop","indie pop rap"}	Hopsin	60	https://api.spotify.com/v1/artists/7EWU4FhUJM1sZQgQKdENeT	640	640	https://i.scdn.co/image/ab6761610000e5eb9291e55f0add696c11e6c545
74cb3MG0x0BOnYNW1uXYnM	{ccm,"christian music","world worship",worship}	Hillsong UNITED	71	https://api.spotify.com/v1/artists/74cb3MG0x0BOnYNW1uXYnM	640	640	https://i.scdn.co/image/ab6761610000e5eb08b1ae876402b0a3c83d0030
4dM6NDYSfLcspt8GLoT5aE	{edm,"electronic trap"}	Hippie Sabotage	68	https://api.spotify.com/v1/artists/4dM6NDYSfLcspt8GLoT5aE	640	640	https://i.scdn.co/image/ab6761610000e5ebc837cf4b3ccc6c9e4b9c7634
1btWGBz4Uu1HozTwb2Lm8A	{"modern rock","pov: indie"}	Hippo Campus	59	https://api.spotify.com/v1/artists/1btWGBz4Uu1HozTwb2Lm8A	640	640	https://i.scdn.co/image/ab6761610000e5eb9ef05592f29329a0135189bf
3aQeKQSyrW4qWr35idm0cy	{"dance pop","gangster rap","hip hop","pop rap",r&b,rap,"southern hip hop",trap,"urban contemporary"}	T-Pain	80	https://api.spotify.com/v1/artists/3aQeKQSyrW4qWr35idm0cy	640	640	https://i.scdn.co/image/ab6761610000e5eb99a856ab4ab752d85e50a750
74aLweE8FHHf4yN5TWv1GM	{"dark rock","finnish alternative rock","gothic metal"}	HIM	63	https://api.spotify.com/v1/artists/74aLweE8FHHf4yN5TWv1GM	641	1000	https://i.scdn.co/image/bceb7fc52d4b64709d487f716befe43ef8273b1a
3SgHzT552wy2W8pNLaLk24	{ccm,"christian music","world worship",worship}	Hillsong Worship	75	https://api.spotify.com/v1/artists/3SgHzT552wy2W8pNLaLk24	640	640	https://i.scdn.co/image/ab6761610000e5eb3fa351bcd2f7a8f06a7bc3ba
2pqd3HsfsvcBGtHvPOg6eg	{"modern alternative rock","modern rock",post-grunge}	Highly Suspect	60	https://api.spotify.com/v1/artists/2pqd3HsfsvcBGtHvPOg6eg	640	640	https://i.scdn.co/image/ab6761610000e5eb891207250e3079c5b315bdfb
5gRZlUdNZWeTJgmyrDHLxN	{}	Azi Sherif	2	https://api.spotify.com/v1/artists/5gRZlUdNZWeTJgmyrDHLxN	0	0	
3phVKYqeq84Ai91CHTQfNq	{"latin christian","latin worship","world worship"}	Hillsong en Español	63	https://api.spotify.com/v1/artists/3phVKYqeq84Ai91CHTQfNq	640	640	https://i.scdn.co/image/ab6761610000e5ebd76cde5ea370fa45b8baad3e
711ulyrAkLHOuraqFr134y	{adoracao,"brazilian gospel","world worship"}	Hillsong Em Português	45	https://api.spotify.com/v1/artists/711ulyrAkLHOuraqFr134y	640	640	https://i.scdn.co/image/ab6761610000e5eb664a872e09545e4be91fb05c
7m4gF38CPATtHrk5HS42WZ	{ccm,"christian music","world worship",worship}	Hillsong Young & Free	62	https://api.spotify.com/v1/artists/7m4gF38CPATtHrk5HS42WZ	640	640	https://i.scdn.co/image/ab6761610000e5ebfd35859df3a7252c67d040f9
4HifcDawZC7mXjiSFLVCl3	{"french worship","world worship"}	Hillsong En Français	43	https://api.spotify.com/v1/artists/4HifcDawZC7mXjiSFLVCl3	640	640	https://i.scdn.co/image/ab6761610000e5eb402150108f78794087d93632
3YCKuqpv9nCsIhJ2v8SMix	{ccm,"christian music",worship}	Elevation Worship	77	https://api.spotify.com/v1/artists/3YCKuqpv9nCsIhJ2v8SMix	640	640	https://i.scdn.co/image/ab6761610000e5eb323706538095e6dc3d6392d1
3W309JwnLuIkPo6A9R4a7K	{"german ccm","german worship","world worship"}	Hillsong Auf Deutsch	39	https://api.spotify.com/v1/artists/3W309JwnLuIkPo6A9R4a7K	640	640	https://i.scdn.co/image/ab6761610000e5eb93aee417bfeee7d2912aef8d
1Pr6QC1iOpXLx1shPTBBhN	{"instrumental worship"}	Hillside Recording	64	https://api.spotify.com/v1/artists/1Pr6QC1iOpXLx1shPTBBhN	640	640	https://i.scdn.co/image/ab6761610000e5eb51eb4794b9232ccfbcee5d21
4i0SfeqdXTLgRZOunMo4TU	{"korean worship","world worship"}	Hillsong 한국어	27	https://api.spotify.com/v1/artists/4i0SfeqdXTLgRZOunMo4TU	640	640	https://i.scdn.co/image/ab6761610000e5ebe4d70ae40075df33c7b2deda
2IzxJqK9NbSIdw7rQVW03P	{"latin christian","latin worship"}	Barak	66	https://api.spotify.com/v1/artists/2IzxJqK9NbSIdw7rQVW03P	640	640	https://i.scdn.co/image/ab6761610000e5eb16a40db4494d272655bcc61f
7zpvy5B9gb5KprNUzNCOEE	{"latin christian","latin worship"}	Miel San Marcos	68	https://api.spotify.com/v1/artists/7zpvy5B9gb5KprNUzNCOEE	640	640	https://i.scdn.co/image/ab6761610000e5eb91dc36133fbb16281d1332c6
337ClCqxF9LJsLhB86Tsf0	{}	Elevation Español	56	https://api.spotify.com/v1/artists/337ClCqxF9LJsLhB86Tsf0	640	640	https://i.scdn.co/image/ab6761610000e5eb699eac76f1f413979453aaf4
5NvKO965JkIJanRuKQPVN6	{"latin christian","latin worship","rock cristiano"}	Rojo	59	https://api.spotify.com/v1/artists/5NvKO965JkIJanRuKQPVN6	640	640	https://i.scdn.co/image/ab6761610000e5ebaa0e92c5bc092f3b1970a898
4UGA0TDpRVVt2SCz8FZOMm	{"latin christian","latin worship"}	Un Corazón	69	https://api.spotify.com/v1/artists/4UGA0TDpRVVt2SCz8FZOMm	640	640	https://i.scdn.co/image/ab6761610000e5eb2cd6d3b4e453685e4539f792
5njxJJEEXE6Kxkr4yiFeJi	{"latin christian","latin worship"}	Kim Richards	68	https://api.spotify.com/v1/artists/5njxJJEEXE6Kxkr4yiFeJi	640	640	https://i.scdn.co/image/ab6761610000e5eb1f86bce650aa11d4764aad82
6vetaGijEBK3wfhtCUWRBS	{"latin christian"}	Lilly Goodman	65	https://api.spotify.com/v1/artists/6vetaGijEBK3wfhtCUWRBS	640	640	https://i.scdn.co/image/ab6761610000e5eb661bbe02a16642b194b8944a
71Q7jmvxx7g06qlWNEU45p	{"latin christian","latin worship"}	Oasis Ministry	61	https://api.spotify.com/v1/artists/71Q7jmvxx7g06qlWNEU45p	640	640	https://i.scdn.co/image/ab6761610000e5eb24681f5d98fe989a5ff5996c
0z4gvV4rjIZ9wHck67ucSV	{"dance pop"}	Akon	84	https://api.spotify.com/v1/artists/0z4gvV4rjIZ9wHck67ucSV	640	640	https://i.scdn.co/image/ab6761610000e5eb3b6ab4190c7435238735b59d
3DiDSECUqqY1AuBP8qtaIa	{"neo soul",pop,r&b}	Alicia Keys	81	https://api.spotify.com/v1/artists/3DiDSECUqqY1AuBP8qtaIa	640	640	https://i.scdn.co/image/ab6761610000e5ebebfd16a3bca87c31c1e20576
4mxWe1mtYIYfP040G38yvS	{country}	Alan Jackson	74	https://api.spotify.com/v1/artists/4mxWe1mtYIYfP040G38yvS	1000	1000	https://i.scdn.co/image/ab6772690000c46c1dce50b93ca0b1e2f459d9e6
6ogn9necmbUdCppmNnGOdi	{"canadian pop","canadian singer-songwriter",lilith,"neo mellow","pop rock",singer-songwriter}	Alanis Morissette	70	https://api.spotify.com/v1/artists/6ogn9necmbUdCppmNnGOdi	640	640	https://i.scdn.co/image/ab6761610000e5ebf6a97342ccd47692b7cdf8c0
2oQX8QiMXOyuqbcZEFsZfm	{dembow,"rap dominicano","trap latino","urbano latino"}	El Alfa	79	https://api.spotify.com/v1/artists/2oQX8QiMXOyuqbcZEFsZfm	640	640	https://i.scdn.co/image/ab6761610000e5ebebc38443c371677783ebd465
3XHO7cRUPCLOr6jwp8vsx5	{"indie rock",indietronica,"modern alternative rock","modern rock",rock,"shimmer pop"}	alt-J	71	https://api.spotify.com/v1/artists/3XHO7cRUPCLOr6jwp8vsx5	640	640	https://i.scdn.co/image/ab6761610000e5eb3fb5214e667e278a20878a6b
1w5Kfo2jwwIPruYS2UWh56	{"alternative metal","alternative rock","classic rock",grunge,"hard rock","permanent wave",rock}	Pearl Jam	77	https://api.spotify.com/v1/artists/1w5Kfo2jwwIPruYS2UWh56	640	640	https://i.scdn.co/image/ab6761610000e5ebe431fb8ba17cdee73e4ce08a
2UazAtjfzqBF0Nho2awK4z	{"alternative metal","alternative rock","classic rock",grunge,"hard rock","nu metal",post-grunge,rock}	Stone Temple Pilots	69	https://api.spotify.com/v1/artists/2UazAtjfzqBF0Nho2awK4z	640	640	https://i.scdn.co/image/ab6761610000e5eb4bb64f87db255d76538b905f
5xUf6j4upBrXZPg6AI4MRK	{"alternative metal","alternative rock","classic rock",grunge,"hard rock","nu metal",rock}	Soundgarden	69	https://api.spotify.com/v1/artists/5xUf6j4upBrXZPg6AI4MRK	640	640	https://i.scdn.co/image/ab6761610000e5ebafa254b2a224584485286526
2yEwvVSSSUkcLeSTNyHKh8	{"alternative metal","art rock","nu metal",post-grunge,"progressive metal","progressive rock",rock}	TOOL	72	https://api.spotify.com/v1/artists/2yEwvVSSSUkcLeSTNyHKh8	640	640	https://i.scdn.co/image/ab6761610000e5eb13f5472b709101616c87cba3
6olE6TJLqED3rqDCT0FyPh	{grunge,"permanent wave",rock}	Nirvana	83	https://api.spotify.com/v1/artists/6olE6TJLqED3rqDCT0FyPh	1057	1000	https://i.scdn.co/image/84282c28d851a700132356381fcfbadc67ff498b
78SHxLdtysAXgywQ4vE0Oa	{"alternative metal","alternative rock",grunge,"nu metal",post-grunge,rock}	Bush	63	https://api.spotify.com/v1/artists/78SHxLdtysAXgywQ4vE0Oa	640	640	https://i.scdn.co/image/ab6761610000e5ebd209395dc5321f4b5163aed4
43sZBwHjahUvgbx1WNIkIz	{"alternative metal","nu metal",post-grunge,rock}	Creed	75	https://api.spotify.com/v1/artists/43sZBwHjahUvgbx1WNIkIz	640	640	https://i.scdn.co/image/ab6761610000e5eb0d86c8971cc4d6fa63d58bae
2fSaE6BXtQy0x7R7v9IOmZ	{"abstract hip hop","alternative hip hop","conscious hip hop"}	Aesop Rock	56	https://api.spotify.com/v1/artists/2fSaE6BXtQy0x7R7v9IOmZ	640	640	https://i.scdn.co/image/ab6761610000e5eb5fd0296520096075b074e5ca
3B4qrTcqIznTU3c3qc2utN	{}	A$ap, Rocky & iHu$tla	0	https://api.spotify.com/v1/artists/3B4qrTcqIznTU3c3qc2utN	0	0	
5dHt1vcEm9qb8fCyLcB3HL	{"hip hop","pop rap",rap,"southern hip hop",trap}	A$AP Ferg	73	https://api.spotify.com/v1/artists/5dHt1vcEm9qb8fCyLcB3HL	640	640	https://i.scdn.co/image/ab6761610000e5eb11b1fd4dfaa772c272ac98ec
7Cn8drnNhDNyoN4cEU4vN9	{}	A$aP Lucky	12	https://api.spotify.com/v1/artists/7Cn8drnNhDNyoN4cEU4vN9	640	640	https://i.scdn.co/image/ab67616d0000b273d64338da75d5d2db48c61e88
3js08t4b2B8qNwlOwEM9wQ	{}	A$AP Cocky	0	https://api.spotify.com/v1/artists/3js08t4b2B8qNwlOwEM9wQ	0	0	
5tQMB0cuNXdCtzovGt55uD	{plugg}	LUCKI	80	https://api.spotify.com/v1/artists/5tQMB0cuNXdCtzovGt55uD	640	640	https://i.scdn.co/image/ab6761610000e5ebb579617cb4227855c3ebeef2
0KeycJnwutRkMab5B7OcpZ	{}	Apostle Lucky Cyril (Ancient Prophet)	0	https://api.spotify.com/v1/artists/0KeycJnwutRkMab5B7OcpZ	0	0	
79GgyVvCPar7rkcxn2n13D	{}	Apostle Lucky Sakals	0	https://api.spotify.com/v1/artists/79GgyVvCPar7rkcxn2n13D	0	0	
5Vuvs6Py2JRU7WiFDVsI7J	{"alternative r&b",r&b}	Lucky Daye	66	https://api.spotify.com/v1/artists/5Vuvs6Py2JRU7WiFDVsI7J	640	640	https://i.scdn.co/image/ab6761610000e5eb59f6672fdf7466d330b815ab
6TSfOloWX6uGLdAhpHc2Og	{}	Apostle Lucky Cyril	0	https://api.spotify.com/v1/artists/6TSfOloWX6uGLdAhpHc2Og	640	640	https://i.scdn.co/image/ab67616d0000b273f52cc0f34062ea35c8aac034
0tPjSrb43a58uznKru1k2P	{"underground hip hop"}	A$AP Twelvyy	52	https://api.spotify.com/v1/artists/0tPjSrb43a58uznKru1k2P	640	640	https://i.scdn.co/image/ab6761610000e5ebaa14968108ba95c2c6588e54
6cHLGE5sDe5HgE6M6jteRY	{}	AP Lucky	0	https://api.spotify.com/v1/artists/6cHLGE5sDe5HgE6M6jteRY	640	640	https://i.scdn.co/image/ab67616d0000b27322985314f1080f30e090c437
4JQoT97WwDc1RJivzxnYOo	{}	Apostle James Pinckney & Voices Of Faith	16	https://api.spotify.com/v1/artists/4JQoT97WwDc1RJivzxnYOo	640	640	https://i.scdn.co/image/ab67616d0000b2736db935915d3d85014f95a5b6
662q9ZkG5AC8UnrOvr8eJM	{}	Apostle K S S A	24	https://api.spotify.com/v1/artists/662q9ZkG5AC8UnrOvr8eJM	640	640	https://i.scdn.co/image/ab67616d0000b27315eb04ea0a741dd2015d561e
3LAYEwm2z41DQQJk6ycvP0	{}	Apostle Joshua Selman	38	https://api.spotify.com/v1/artists/3LAYEwm2z41DQQJk6ycvP0	640	640	https://i.scdn.co/image/ab67616d0000b273c30301f6cbc7872581242dc4
0N3VT14NtkOTyFYBEGhHgP	{"apostolic worship"}	Apostolic Collective	21	https://api.spotify.com/v1/artists/0N3VT14NtkOTyFYBEGhHgP	640	640	https://i.scdn.co/image/ab6761610000e5eb9b4b82cae1634f3d94c15e6b
2BffaWzJsOarBDEZ35wCgc	{}	Rev. Paul S. Cunningham	21	https://api.spotify.com/v1/artists/2BffaWzJsOarBDEZ35wCgc	640	640	https://i.scdn.co/image/ab6761610000e5ebea8c2a27bfb3481af1425559
6eWLOvhK2atCNcwCbZsFdv	{}	Apostles Worship	12	https://api.spotify.com/v1/artists/6eWLOvhK2atCNcwCbZsFdv	640	640	https://i.scdn.co/image/ab6761610000e5eb314b98d17e62383b83cbec40
25k8EsacXsDhZyevW96DXi	{}	Apostle OHAKA	18	https://api.spotify.com/v1/artists/25k8EsacXsDhZyevW96DXi	640	640	https://i.scdn.co/image/ab67616d0000b273acab57d35b221a050c5f65db
6TuYnXr0SDAGIdvKdPK891	{}	Apostle Randy Walker	11	https://api.spotify.com/v1/artists/6TuYnXr0SDAGIdvKdPK891	0	0	
0Y3agQaa6g2r0YmHPOO9rh	{afrobeats,afropop,azontobeats,"ghanaian hip hop","nigerian pop"}	Davido	75	https://api.spotify.com/v1/artists/0Y3agQaa6g2r0YmHPOO9rh	640	640	https://i.scdn.co/image/ab6761610000e5eb1ae40d4e47750c0ac367f993
7qd6KGoABHifvXKeFNe2Yb	{"trap queen"}	Wolftyla	54	https://api.spotify.com/v1/artists/7qd6KGoABHifvXKeFNe2Yb	640	640	https://i.scdn.co/image/ab6761610000e5ebf8e79df9925c0ec0894884bc
6PH3FLQAxtqYy46Zv08bpV	{"sad sierreno"}	Ivan Cornejo	79	https://api.spotify.com/v1/artists/6PH3FLQAxtqYy46Zv08bpV	640	640	https://i.scdn.co/image/ab6761610000e5eb0a052faab8058ca12cd9ff9b
53XhwfbYqKCa1cC15pYq2q	{"modern rock",pop,rock}	Imagine Dragons	89	https://api.spotify.com/v1/artists/53XhwfbYqKCa1cC15pYq2q	640	640	https://i.scdn.co/image/ab6761610000e5ebab47d8dae2b24f5afe7f9d38
23hzc59PkIUau13dqXx5Ef	{}	ian	72	https://api.spotify.com/v1/artists/23hzc59PkIUau13dqXx5Ef	640	640	https://i.scdn.co/image/ab6761610000e5ebfc581edb6be35aef436062f8
3Mcii5XWf6E0lrY3Uky4cA	{"conscious hip hop","g funk","gangster rap","hip hop",rap,"west coast rap"}	Ice Cube	77	https://api.spotify.com/v1/artists/3Mcii5XWf6E0lrY3Uky4cA	640	640	https://i.scdn.co/image/ab6761610000e5eb650e79afafd00492e33d7b8c
3LZZPxNDGDFVSIPqf4JuEf	{"bronx drill"}	Ice Spice	75	https://api.spotify.com/v1/artists/3LZZPxNDGDFVSIPqf4JuEf	640	640	https://i.scdn.co/image/ab6761610000e5eb99878733414d6d04a20a5c3e
73Np75Wv2tju61Eo9Zw4IR	{hollywood,"movie tunes","show tunes"}	Idina Menzel	77	https://api.spotify.com/v1/artists/73Np75Wv2tju61Eo9Zw4IR	640	640	https://i.scdn.co/image/ab6761610000e5eb6e39cafa090a7f726177bbf7
6Xb4ezwoAQC4516kI89nWz	{etherpop,metropopolis}	Imogen Heap	77	https://api.spotify.com/v1/artists/6Xb4ezwoAQC4516kI89nWz	640	640	https://i.scdn.co/image/ab6761610000e5eb7ed0386d30b59531eddd34ba
4xtWjIlVuZwTCeqVAsgEXy	{"rap rock"}	Insane Clown Posse	68	https://api.spotify.com/v1/artists/4xtWjIlVuZwTCeqVAsgEXy	640	640	https://i.scdn.co/image/ab6761610000e5eb534c6d647953f20279d654f8
2KC9Qb60EaY0kW4eH68vr3	{k-pop,"k-pop girl group"}	ITZY	73	https://api.spotify.com/v1/artists/2KC9Qb60EaY0kW4eH68vr3	640	640	https://i.scdn.co/image/ab6761610000e5eb3448062884d4ad30473e964b
3zW0xazqnHoq9QV9zBROVC	{"stutter house"}	it's murph	62	https://api.spotify.com/v1/artists/3zW0xazqnHoq9QV9zBROVC	640	640	https://i.scdn.co/image/ab6761610000e5eb12434bb9f08efd051ae6e145
5Rl15oVamLq7FbSb0NNBNy	{"boy band",pop}	5 Seconds of Summer	77	https://api.spotify.com/v1/artists/5Rl15oVamLq7FbSb0NNBNy	640	640	https://i.scdn.co/image/ab6761610000e5eb5048d9616b459ef90f04b6d8
2LqonMxsplLDdA2IVU5ehr	{}	IT	1	https://api.spotify.com/v1/artists/2LqonMxsplLDdA2IVU5ehr	640	640	https://i.scdn.co/image/ab6761610000e5eb68dd7c24f1ba97a8893cf132
0hIG9FXgjQxT8fKaYceFbA	{classical,"classical performance",violin}	Itzhak Perlman	63	https://api.spotify.com/v1/artists/0hIG9FXgjQxT8fKaYceFbA	778	1000	https://i.scdn.co/image/f1658bc66d1f99ab6d118f26a2abaf7dc33a272f
5vs6ofxROT1d5A6k9PvbC6	{}	IT	3	https://api.spotify.com/v1/artists/5vs6ofxROT1d5A6k9PvbC6	640	640	https://i.scdn.co/image/ab67616d0000b273e43bb035cb3687108646b520
6HjDEec9gKPHqarESVzEwY	{}	It	14	https://api.spotify.com/v1/artists/6HjDEec9gKPHqarESVzEwY	640	640	https://i.scdn.co/image/ab6761610000e5eb660445670e8f2f5121cf04cd
6ObJnVTLETeHSeKhYreB27	{}	ItsArius	64	https://api.spotify.com/v1/artists/6ObJnVTLETeHSeKhYreB27	640	640	https://i.scdn.co/image/ab6761610000e5eba9005ceae710bf31a507ee12
1tiMpNJ4XBqCNeql2pez7s	{"neo-trad prog"}	IT	2	https://api.spotify.com/v1/artists/1tiMpNJ4XBqCNeql2pez7s	640	640	https://i.scdn.co/image/ab6761610000e5eb621b20b881c3fd86d5a13b70
5yaF4LUw7ON1RmE4O8Q03C	{"lo-fi chill","sad lo-fi"}	itssvd	60	https://api.spotify.com/v1/artists/5yaF4LUw7ON1RmE4O8Q03C	640	640	https://i.scdn.co/image/ab6761610000e5eb34db5330352d9da020a23e59
70287pcNpILjcpoBl0soPs	{"jewish pop"}	Itzik Dadya	40	https://api.spotify.com/v1/artists/70287pcNpILjcpoBl0soPs	640	640	https://i.scdn.co/image/ab6761610000e5eb315699fed5772154dd12d04e
6YVMFz59CuY7ngCxTxjpxE	{"k-pop girl group"}	aespa	83	https://api.spotify.com/v1/artists/6YVMFz59CuY7ngCxTxjpxE	640	640	https://i.scdn.co/image/ab6761610000e5ebf7a1090ad3a35a34fc0ecb57
3PALa4TyGOMGVGGZinBHIC	{}	ItzJustChi	32	https://api.spotify.com/v1/artists/3PALa4TyGOMGVGGZinBHIC	640	640	https://i.scdn.co/image/ab6761610000e5ebf373e2529eb33867ad69ed95
4TEK9tIkcoxib4GxT3O4ky	{"5th gen k-pop","k-pop girl group"}	KISS OF LIFE	76	https://api.spotify.com/v1/artists/4TEK9tIkcoxib4GxT3O4ky	640	640	https://i.scdn.co/image/ab6761610000e5eb33a8ccf7ddd38cea1a0eac0d
5M2k6qQmOZBgCD80v4zoWH	{}	Itz Poppa	28	https://api.spotify.com/v1/artists/5M2k6qQmOZBgCD80v4zoWH	640	640	https://i.scdn.co/image/ab6761610000e5eb5857d868e50e2e1e449bf84f
7n2Ycct7Beij7Dj7meI4X0	{k-pop,"k-pop girl group",pop}	TWICE	79	https://api.spotify.com/v1/artists/7n2Ycct7Beij7Dj7meI4X0	640	640	https://i.scdn.co/image/ab6761610000e5ebca6c145421fa9ceb58d6f9d4
20rPZiTB5B15ihzFxxyYfZ	{"jewish pop"}	איציק וינגרטן	32	https://api.spotify.com/v1/artists/20rPZiTB5B15ihzFxxyYfZ	640	640	https://i.scdn.co/image/ab6761610000e5eb83ada7163467d0b0cf89ec52
4SpbR6yFEvexJuaBpgAU5p	{"k-pop girl group"}	LE SSERAFIM	80	https://api.spotify.com/v1/artists/4SpbR6yFEvexJuaBpgAU5p	640	640	https://i.scdn.co/image/ab6761610000e5ebd7d7064b17d00c6f8755eae6
2AfmfGFbe0A0WsTYm0SDTx	{"k-pop girl group"}	(G)I-DLE	75	https://api.spotify.com/v1/artists/2AfmfGFbe0A0WsTYm0SDTx	640	640	https://i.scdn.co/image/ab6761610000e5eb7fd16327c86d500f83be1d6a
4TYswX6bKUjM9rbEL7CMBH	{}	YEJI & RYUJIN of ITZY	36	https://api.spotify.com/v1/artists/4TYswX6bKUjM9rbEL7CMBH	0	0	
1cVxOdk3Ne9GSGtA1gv79f	{}	Itzyoungjay	6	https://api.spotify.com/v1/artists/1cVxOdk3Ne9GSGtA1gv79f	640	640	https://i.scdn.co/image/ab6761610000e5ebf8402a1c775e3e2c5f09cfd5
28ot3wh4oNmoFOdVajibBl	{k-pop,"k-pop girl group"}	NMIXX	68	https://api.spotify.com/v1/artists/28ot3wh4oNmoFOdVajibBl	640	640	https://i.scdn.co/image/ab6761610000e5eb2b9446440d296ce32189024e
6r5HeipYprIewBgpy0lkLE	{}	Tyla Yaweh	25	https://api.spotify.com/v1/artists/6r5HeipYprIewBgpy0lkLE	640	640	https://i.scdn.co/image/ab67616d0000b2735646b72823fa80b339578d5f
1JIw3Z6VQ335kkIWYy5on2	{}	Tyla Yaweh	0	https://api.spotify.com/v1/artists/1JIw3Z6VQ335kkIWYy5on2	0	0	
1v77WKXZdeQYY0nw8f7jHT	{}	Tyla Yaweh & Max P	0	https://api.spotify.com/v1/artists/1v77WKXZdeQYY0nw8f7jHT	0	0	
6OGo5FngSMRjiWHmZA65vj	{}	Tylah Yaweh	0	https://api.spotify.com/v1/artists/6OGo5FngSMRjiWHmZA65vj	0	0	
29Nb175mYlFYUOChWLI92v	{}	tylah yaweh	0	https://api.spotify.com/v1/artists/29Nb175mYlFYUOChWLI92v	0	0	
3D04fb59z3ANxVaeHBfxtW	{ccm,"world worship",worship}	TAYA	68	https://api.spotify.com/v1/artists/3D04fb59z3ANxVaeHBfxtW	640	640	https://i.scdn.co/image/ab6761610000e5eb020f632cd1ab82fc0dff2bb0
70kkdajctXSbqSMJbQO424	{"classic texas country","contemporary country","country dawn"}	Kacey Musgraves	77	https://api.spotify.com/v1/artists/70kkdajctXSbqSMJbQO424	640	640	https://i.scdn.co/image/ab6761610000e5ebc548c7ff983f25641dc71ffe
1Tie3AZgLQZqYEp8Fv4zOZ	{"classic texas country","modern country pop"}	Koe Wetzel	74	https://api.spotify.com/v1/artists/1Tie3AZgLQZqYEp8Fv4zOZ	640	640	https://i.scdn.co/image/ab6761610000e5ebef63196a4cdfd5a8fca36ff0
7Ey4PD4MYsKc5I2dolUwbH	{"album rock","classic rock","hard rock",rock}	Aerosmith	77	https://api.spotify.com/v1/artists/7Ey4PD4MYsKc5I2dolUwbH	640	640	https://i.scdn.co/image/ab6761610000e5ebc5733401b4689b2064458e7d
25iNOjsrnQ3FDVa0CQ0azO	{}	aeter	45	https://api.spotify.com/v1/artists/25iNOjsrnQ3FDVa0CQ0azO	640	640	https://i.scdn.co/image/ab6761610000e5ebef7d2000417285b1cf24b914
53Dh6mRLAQrQVAwNvXiifJ	{}	Aetheria Solara	51	https://api.spotify.com/v1/artists/53Dh6mRLAQrQVAwNvXiifJ	640	640	https://i.scdn.co/image/ab67616d0000b2739e50cc76f992fe768a45814c
25hbSOMmbhgqvonjC876UJ	{"indie pop rap"}	Aer	43	https://api.spotify.com/v1/artists/25hbSOMmbhgqvonjC876UJ	640	640	https://i.scdn.co/image/ab6761610000e5eb22b3966851d82d83b1483085
2PUFZI4SN9XsFMf0i7qEwv	{}	Aeyes Libe	52	https://api.spotify.com/v1/artists/2PUFZI4SN9XsFMf0i7qEwv	640	640	https://i.scdn.co/image/ab67616d0000b2739654a33e827eacd92576694c
52GC47uinFvXuWXBqx83nt	{binaural,"healing hz"}	Aerial Lakes	52	https://api.spotify.com/v1/artists/52GC47uinFvXuWXBqx83nt	640	640	https://i.scdn.co/image/ab6761610000e5eb6687800498675d39310b9ccc
7M5pDtJpCdnftEQZtczYco	{}	Ayesha Erotica	72	https://api.spotify.com/v1/artists/7M5pDtJpCdnftEQZtczYco	640	640	https://i.scdn.co/image/ab6761610000e5eba848c4cdfd0fa81fecb87fb8
52KatchKjz0L2amwBDxxwO	{}	aeseaes	45	https://api.spotify.com/v1/artists/52KatchKjz0L2amwBDxxwO	640	640	https://i.scdn.co/image/ab6761610000e5eb8e15cdc939114033469212e1
36cgvBn0aadzOijnjjwqMN	{"5th gen k-pop"}	ILLIT	77	https://api.spotify.com/v1/artists/36cgvBn0aadzOijnjjwqMN	640	640	https://i.scdn.co/image/ab6761610000e5eb32863b8dca4574c09e4b9295
3zYU33YUxJPzsPrYmpMMiu	{"future funk"}	Aests	43	https://api.spotify.com/v1/artists/3zYU33YUxJPzsPrYmpMMiu	640	640	https://i.scdn.co/image/ab6761610000e5ebe9655665f89cb1a363be2609
6HvZYsbFfjnjFrWF950C9d	{k-pop,"k-pop girl group"}	NewJeans	82	https://api.spotify.com/v1/artists/6HvZYsbFfjnjFrWF950C9d	640	640	https://i.scdn.co/image/ab6761610000e5eb80668ba2b15094d083780ea9
1dPcjRJqgZwJUAxjflkz0W	{}	Aesty	41	https://api.spotify.com/v1/artists/1dPcjRJqgZwJUAxjflkz0W	640	640	https://i.scdn.co/image/ab6761610000e5ebc753d10322857d177f4fd266
1Jgp0YCPHCJx5XD7nlfGVN	{aggrotech,ebm,futurepop,"industrial metal","industrial pop"}	Aesthetic Perfection	41	https://api.spotify.com/v1/artists/1Jgp0YCPHCJx5XD7nlfGVN	640	640	https://i.scdn.co/image/ab6761610000e5ebb49b11f61859ac6f92e1858b
6RHTUrRF63xao58xh9FXYJ	{"k-pop girl group"}	IVE	74	https://api.spotify.com/v1/artists/6RHTUrRF63xao58xh9FXYJ	640	640	https://i.scdn.co/image/ab6761610000e5eb8939960e5144b51d7903899f
4gtLbFXodlyK2UNr3s7yyi	{hardwave}	Aesaph	18	https://api.spotify.com/v1/artists/4gtLbFXodlyK2UNr3s7yyi	640	640	https://i.scdn.co/image/ab6761610000e5ebd11991cfebb98d607eb9f928
5TdAz5vNz923PZe1TAeB2s	{}	Aespar	0	https://api.spotify.com/v1/artists/5TdAz5vNz923PZe1TAeB2s	640	640	https://i.scdn.co/image/ab6761610000e5ebe54cdd3ad9334c7a2b5c4043
2hI2mYVRxGZjwCZrETOCtJ	{"fallen angel","gothic metal","gothic symphonic metal","opera metal","symphonic metal"}	Aesma Daeva	16	https://api.spotify.com/v1/artists/2hI2mYVRxGZjwCZrETOCtJ	640	640	https://i.scdn.co/image/ab67616d0000b2739d7e5497a3e6d3c0e8b2f4b3
3tVQdUvClmAT7URs9V3rsp	{afrobeats,afropop,azonto,"nigerian hip hop","nigerian pop"}	Wizkid	83	https://api.spotify.com/v1/artists/3tVQdUvClmAT7URs9V3rsp	640	640	https://i.scdn.co/image/ab6761610000e5ebfa2e36a9d14dc11f3233bb4a
5INjqkS1o8h1imAzPqGZBb	{"australian psych","modern rock",neo-psychedelic,rock}	Tame Impala	81	https://api.spotify.com/v1/artists/5INjqkS1o8h1imAzPqGZBb	640	640	https://i.scdn.co/image/ab6761610000e5eb90357ef28b3a012a1d1b2fa2
3RwQ26hR2tJtA8F9p2n7jG	{"classic soul",disco,"memphis soul",motown,soul}	The Temptations	69	https://api.spotify.com/v1/artists/3RwQ26hR2tJtA8F9p2n7jG	640	640	https://i.scdn.co/image/ab6761610000e5ebec212a39ffa4182a0fff4e3c
4W48hZAnAHVOC2c8WH8pcq	{indietronica,"modern rock","shimmer pop"}	The Temper Trap	70	https://api.spotify.com/v1/artists/4W48hZAnAHVOC2c8WH8pcq	640	640	https://i.scdn.co/image/ab6761610000e5eba732660add2823e7a3e307ca
3YbOSxo85kla7RID8ugnW3	{grupera,"musica mexicana"}	Los Temerarios	81	https://api.spotify.com/v1/artists/3YbOSxo85kla7RID8ugnW3	640	640	https://i.scdn.co/image/ab6761610000e5eb282bed40bfeb28455afeeed2
4ICXNnHDsi7fJr7IOcbOd0	{}	Tems	1	https://api.spotify.com/v1/artists/4ICXNnHDsi7fJr7IOcbOd0	640	640	https://i.scdn.co/image/ab6761610000e5eb41f40e7fa87e6536dac773a6
0US6Qjw05r2L04QMNTLWfg	{}	Sade Adu	11	https://api.spotify.com/v1/artists/0US6Qjw05r2L04QMNTLWfg	0	0	
5fj4oi7qHDoklvnnYmSBl0	{"emo rap","sad lo-fi","sad rap"}	sadeyes	49	https://api.spotify.com/v1/artists/5fj4oi7qHDoklvnnYmSBl0	640	640	https://i.scdn.co/image/ab6761610000e5eba71136d3024711264f198b71
3BTp1fSLINjL1hQzHbt8yn	{}	Sade	10	https://api.spotify.com/v1/artists/3BTp1fSLINjL1hQzHbt8yn	640	640	https://i.scdn.co/image/ab67616d0000b2731bdd9656ad1a18457ca7c4be
3adMGKhs0hyGuTVpe7hnqC	{choral,"orchestral performance"}	Sir David Willcocks	50	https://api.spotify.com/v1/artists/3adMGKhs0hyGuTVpe7hnqC	197	245	https://i.scdn.co/image/f2ff49be0147c85f9be5479c2dbf74af03f384c2
15cuMltAeCoZL3e5CWgW8c	{}	Sade	6	https://api.spotify.com/v1/artists/15cuMltAeCoZL3e5CWgW8c	640	640	https://i.scdn.co/image/ab67616d0000b273e45877917ef782724784dbfa
63MCBZRiUdnqRsAOJwijiB	{"french hip hop","pop urbaine","rap francais"}	Sadek	52	https://api.spotify.com/v1/artists/63MCBZRiUdnqRsAOJwijiB	640	640	https://i.scdn.co/image/ab6761610000e5eb3a31e2bd0ec15420c828602f
6OQjANXuEPEZmgIVmdptbw	{}	Sadé	1	https://api.spotify.com/v1/artists/6OQjANXuEPEZmgIVmdptbw	640	640	https://i.scdn.co/image/ab67616d0000b2730b762427ecc5a2012b17d11e
1PgsdK1Ll4oK28g6KLPOg1	{"persian hip hop","persian underground hip hop"}	Sadegh	39	https://api.spotify.com/v1/artists/1PgsdK1Ll4oK28g6KLPOg1	640	640	https://i.scdn.co/image/ab6761610000e5eb279df364a07d524d0caba059
6kVTgJksGorYmkayrX7iy1	{}	Sade	1	https://api.spotify.com/v1/artists/6kVTgJksGorYmkayrX7iy1	640	640	https://i.scdn.co/image/ab67616d0000b273009bef816307916ca209c4a6
3vHV92ecrylnUHDM4d2MtC	{"contemporary country","country road","modern country rock"}	Tyler Farr	49	https://api.spotify.com/v1/artists/3vHV92ecrylnUHDM4d2MtC	640	640	https://i.scdn.co/image/ab6761610000e5eb264403d509777042fc618f26
5L1lO4eRHmJ7a0Q6csE5cT	{k-pop}	LISA	82	https://api.spotify.com/v1/artists/5L1lO4eRHmJ7a0Q6csE5cT	640	640	https://i.scdn.co/image/ab6761610000e5eb426faee7010fa829bb527cfb
6Kj05IUgbAag5lcfphA1YS	{}	Tyla-Jane Fairer	0	https://api.spotify.com/v1/artists/6Kj05IUgbAag5lcfphA1YS	0	0	
3n5lfWnQVMg3u4WFdyXh11	{"pub rock"}	Tyla Gang	6	https://api.spotify.com/v1/artists/3n5lfWnQVMg3u4WFdyXh11	1000	1000	https://i.scdn.co/image/4e9c97b66c2e81454e007a0312cb59e4dfa90f44
5bfglVyGJppmmNoC2rhBUG	{"singer-songwriter pop"}	Natalie Jane	63	https://api.spotify.com/v1/artists/5bfglVyGJppmmNoC2rhBUG	640	640	https://i.scdn.co/image/ab6761610000e5eba33e982af1e49d7d715602e4
6TxK6cOTYqtsUa1uTa9IRy	{}	Tyla Dyne	2	https://api.spotify.com/v1/artists/6TxK6cOTYqtsUa1uTa9IRy	640	640	https://i.scdn.co/image/ab6761610000e5ebfdce25944cdb67d3c8e04e88
4ueh4hmRvt62k4BgP8dIS0	{}	Adèle Castillon	64	https://api.spotify.com/v1/artists/4ueh4hmRvt62k4BgP8dIS0	640	640	https://i.scdn.co/image/ab6761610000e5eb7abd02985b5eea7284582447
1z2GIqUV62qrl1J5sXalOT	{}	Adeleye Omotayo	45	https://api.spotify.com/v1/artists/1z2GIqUV62qrl1J5sXalOT	640	640	https://i.scdn.co/image/ab67616d0000b273b1dcaeb349c518c6101a14c6
6Bp3tgTwoSZGKNAXEl0doW	{}	Adele	13	https://api.spotify.com/v1/artists/6Bp3tgTwoSZGKNAXEl0doW	640	640	https://i.scdn.co/image/ab67616d0000b273d1974af719095a3b11b5a8b8
1bRT1Vx1EYt14Md2aDcvYX	{}	Adelede	31	https://api.spotify.com/v1/artists/1bRT1Vx1EYt14Md2aDcvYX	640	640	https://i.scdn.co/image/ab67616d0000b273c32da88ba5bcdf7ef0077cd3
2vuiLlCZ3E92WtUVNM97t7	{}	Adèle	6	https://api.spotify.com/v1/artists/2vuiLlCZ3E92WtUVNM97t7	0	0	
5RRfTrwXUGYiBB0DMV4hyh	{"indie r&b","indie soul"}	Adi Oasis	61	https://api.spotify.com/v1/artists/5RRfTrwXUGYiBB0DMV4hyh	640	640	https://i.scdn.co/image/ab6761610000e5eb5e9a8f9b0d5a7ab7ba4ee1b7
01qLqoDY0rvpSZnbbkNWbj	{}	Adele	0	https://api.spotify.com/v1/artists/01qLqoDY0rvpSZnbbkNWbj	640	640	https://i.scdn.co/image/ab67616d0000b2732d637251b778357dca238c60
1ZjAT2nTrzDIXFfsQ2hWJk	{"alternative metal","christian rock",post-grunge}	Adelitas Way	57	https://api.spotify.com/v1/artists/1ZjAT2nTrzDIXFfsQ2hWJk	640	640	https://i.scdn.co/image/ab6761610000e5eb346f34e83167c89882c20e0e
6XyY86QOPPrYVGvF9ch6wz	{"alternative metal","nu metal",post-grunge,"rap metal",rock}	Linkin Park	94	https://api.spotify.com/v1/artists/6XyY86QOPPrYVGvF9ch6wz	640	640	https://i.scdn.co/image/ab6761610000e5ebc7e6bd9e65eab62a53355576
4O15NlyKLIASxsJ0PrXPfz	{"hip hop","melodic rap","philly rap","rage rap",rap,trap}	Lil Uzi Vert	87	https://api.spotify.com/v1/artists/4O15NlyKLIASxsJ0PrXPfz	640	640	https://i.scdn.co/image/ab6761610000e5eba8ce348f34f18241d3249fa9
00FQb4jTyendYWaN8pK0wa	{"art pop",pop}	Lana Del Rey	92	https://api.spotify.com/v1/artists/00FQb4jTyendYWaN8pK0wa	640	640	https://i.scdn.co/image/ab6761610000e5ebb99cacf8acd5378206767261
4AK6F7OLvEQ5QYCBNiQWHq	{"boy band",pop,"post-teen pop","talent show"}	One Direction	90	https://api.spotify.com/v1/artists/4AK6F7OLvEQ5QYCBNiQWHq	1000	1000	https://i.scdn.co/image/5bb443424a1ad71603c43d67f5af1a04da6bb3c8
7gW0r5CkdEUMm42w9XpyZO	{"gen z singer-songwriter"}	Laufey	83	https://api.spotify.com/v1/artists/7gW0r5CkdEUMm42w9XpyZO	640	640	https://i.scdn.co/image/ab6761610000e5eb71eb8f92b86868400ed4e006
718COspgdWOnwOFpJHRZHS	{"contemporary country",country}	Luke Combs	87	https://api.spotify.com/v1/artists/718COspgdWOnwOFpJHRZHS	640	640	https://i.scdn.co/image/ab6761610000e5ebbd634295d99c61823c517c3f
12GqGscKJx3aE4t07u7eVZ	{"corridos tumbados","sad sierreno"}	Peso Pluma	93	https://api.spotify.com/v1/artists/12GqGscKJx3aE4t07u7eVZ	640	640	https://i.scdn.co/image/ab6761610000e5ebe5283f5b671cf618b82a2696
3ZBESU3zLAKxmN3oStglry	{}	Lil Wayne	1	https://api.spotify.com/v1/artists/3ZBESU3zLAKxmN3oStglry	0	0	
21O7WwRkik43ErKppxDKJq	{"country rap",crunk,"dirty south rap","memphis hip hop"}	Lil Wyte	52	https://api.spotify.com/v1/artists/21O7WwRkik43ErKppxDKJq	640	640	https://i.scdn.co/image/ab6761610000e5eb02e536bd3380f7eeca1f474b
0IntH0pazyvLXyp3YdsPVa	{}	Lil Wayne	0	https://api.spotify.com/v1/artists/0IntH0pazyvLXyp3YdsPVa	0	0	
5ZILeW5fWflmqXJVxiPVSh	{}	Lil Bow Wow, Lil' Wayne, Lil' Zane & Sammie	16	https://api.spotify.com/v1/artists/5ZILeW5fWflmqXJVxiPVSh	0	0	
1QNPG6DQzm7WN8eMHVjnLt	{}	Lil Wayne	0	https://api.spotify.com/v1/artists/1QNPG6DQzm7WN8eMHVjnLt	0	0	
5TFAleOJ7VJt3yieCFy8J8	{phonk}	Lil Kaine	41	https://api.spotify.com/v1/artists/5TFAleOJ7VJt3yieCFy8J8	640	640	https://i.scdn.co/image/ab6761610000e5ebfa96b92332faa2a23cf10dbf
17lzZA2AlOHwCwFALHttmp	{"atl hip hop","hip hop","pop rap",rap,"southern hip hop",trap}	2 Chainz	76	https://api.spotify.com/v1/artists/17lzZA2AlOHwCwFALHttmp	640	640	https://i.scdn.co/image/ab6761610000e5ebf556662d187b9191c421be1c
6M3SAx0swxIBg7xDO1rQF3	{}	Lil Wyte	1	https://api.spotify.com/v1/artists/6M3SAx0swxIBg7xDO1rQF3	0	0	
6uL40PEjXAOolbu1w6MtFR	{}	Lil Wyte	0	https://api.spotify.com/v1/artists/6uL40PEjXAOolbu1w6MtFR	0	0	
4Ga1P7PMIsmqEZqhYZQgDo	{"melodic rap",pluggnb,rap}	Lil Tecca	83	https://api.spotify.com/v1/artists/4Ga1P7PMIsmqEZqhYZQgDo	640	640	https://i.scdn.co/image/ab6761610000e5ebeeba43c460454fcababda14f
0ktQyBsFidxvy9e6naHXMo	{"san diego rap"}	Lil Weirdo	46	https://api.spotify.com/v1/artists/0ktQyBsFidxvy9e6naHXMo	640	640	https://i.scdn.co/image/ab67616d0000b273aa4a9bd6d26af5d67727a711
06xB32qjGoxmLYxQtAK435	{}	Lil Wyte	0	https://api.spotify.com/v1/artists/06xB32qjGoxmLYxQtAK435	0	0	
5ULJ18n8PZ9rJv5kYsZByV	{"cali rap"}	Lil Pete	53	https://api.spotify.com/v1/artists/5ULJ18n8PZ9rJv5kYsZByV	640	640	https://i.scdn.co/image/ab6761610000e5eb9be69a804eeec02f7fc2a601
7sfl4Xt5KmfyDs2T3SVSMK	{"atl hip hop",crunk,"dance pop","dirty south rap","old school atlanta hip hop","pop rap","southern hip hop",trap}	Lil Jon	75	https://api.spotify.com/v1/artists/7sfl4Xt5KmfyDs2T3SVSMK	640	640	https://i.scdn.co/image/ab6761610000e5ebf893feb44e74c8b4c15ecc95
06hHdzNDDucldLv8rHFmnI	{}	Lil Wyte	0	https://api.spotify.com/v1/artists/06hHdzNDDucldLv8rHFmnI	0	0	
2SJhf6rTOU53g8yBdAjPby	{glitchcore,plugg,"rage rap"}	SoFaygo	61	https://api.spotify.com/v1/artists/2SJhf6rTOU53g8yBdAjPby	640	640	https://i.scdn.co/image/ab6761610000e5ebb71f4d560676d261488ac383
76raIy8boaM9sf9gMGXGJ5	{}	Lil Texas	56	https://api.spotify.com/v1/artists/76raIy8boaM9sf9gMGXGJ5	640	640	https://i.scdn.co/image/ab6761610000e5eb96285b84fe0607dd6c5322d4
51Q6RZOMEMuZHySsfWLTtk	{"rap underground argentino"}	Lil Troca	54	https://api.spotify.com/v1/artists/51Q6RZOMEMuZHySsfWLTtk	640	640	https://i.scdn.co/image/ab6761610000e5eb0e511501d44a5ce8cb6a32af
1fFo8rlI8L0Cf2jQtrJ3WK	{}	Lil Texxan	25	https://api.spotify.com/v1/artists/1fFo8rlI8L0Cf2jQtrJ3WK	640	640	https://i.scdn.co/image/ab6761610000e5eb9386c81da7ddfaa9240d222f
3gBZUcNeVumkeeJ19CY2sX	{"rage rap"}	Ken Carson	82	https://api.spotify.com/v1/artists/3gBZUcNeVumkeeJ19CY2sX	640	640	https://i.scdn.co/image/ab6761610000e5eb95ccca370d8bd50e84c222bc
62ZZ5XZHCUg0O6QMPzEAQQ	{deboxe}	Lil Tec	31	https://api.spotify.com/v1/artists/62ZZ5XZHCUg0O6QMPzEAQQ	640	640	https://i.scdn.co/image/ab6761610000e5eb538bf544dbb027dd687113d9
6AgTAQt8XS6jRWi4sX7w49	{"chicago rap",rap}	Polo G	81	https://api.spotify.com/v1/artists/6AgTAQt8XS6jRWi4sX7w49	640	640	https://i.scdn.co/image/ab6761610000e5ebbedf3bdf589da06d1567196c
0zE4RVLWlAoCvYXEMCcgqZ	{}	Harper Zilmer	32	https://api.spotify.com/v1/artists/0zE4RVLWlAoCvYXEMCcgqZ	640	640	https://i.scdn.co/image/ab67616d0000b2731f4fe3d2cae83990b2f89d69
50co4Is1HCEo8bhOyUWKpn	{"atl hip hop","atl trap","gangster rap","hip hop","melodic rap",rap,trap}	Young Thug	86	https://api.spotify.com/v1/artists/50co4Is1HCEo8bhOyUWKpn	640	640	https://i.scdn.co/image/ab6761610000e5eb547d2b41c9f2c97318aad0ed
3o4OtMGLmvvLSx19ZjtuSn	{}	GUNNAR	34	https://api.spotify.com/v1/artists/3o4OtMGLmvvLSx19ZjtuSn	640	640	https://i.scdn.co/image/ab6761610000e5eb539a500ff029fed156103ba2
5f7VJjfbwm532GiveGC0ZK	{"atl hip hop","atl trap",rap,trap}	Lil Baby	87	https://api.spotify.com/v1/artists/5f7VJjfbwm532GiveGC0ZK	640	640	https://i.scdn.co/image/ab6761610000e5eb6cad3eff5adc29e20f189a6c
1MaT8tk94UkY3k2thWudot	{"country rap","grand rapids indie",redneck}	Gunnar & The Grizzly Boys	28	https://api.spotify.com/v1/artists/1MaT8tk94UkY3k2thWudot	640	640	https://i.scdn.co/image/ab6761610000e5eb21172c49c078713d6aeedb90
75rIDQKK20dAv1E4BWuxpX	{}	Gunna	26	https://api.spotify.com/v1/artists/75rIDQKK20dAv1E4BWuxpX	0	0	
3hcs9uc56yIGFCSy9leWe7	{"chicago drill","chicago rap",drill,"hip hop","pop rap",rap,trap}	Lil Durk	82	https://api.spotify.com/v1/artists/3hcs9uc56yIGFCSy9leWe7	640	640	https://i.scdn.co/image/ab6761610000e5eb09791422702c3fa9780468d4
0ABk515kENDyATUdpCKVfW	{"alternative hip hop","boom bap","buffalo hip hop","drumless hip hop","hip hop","upstate ny rap"}	Westside Gunn	71	https://api.spotify.com/v1/artists/0ABk515kENDyATUdpCKVfW	640	640	https://i.scdn.co/image/ab6761610000e5eb10b517960f313575989c44c1
5bMWqtq53Eo8vLcTDMMpWI	{}	Gunna	23	https://api.spotify.com/v1/artists/5bMWqtq53Eo8vLcTDMMpWI	0	0	
4kYSro6naA4h99UJvo89HB	{pop,rap}	Cardi B	81	https://api.spotify.com/v1/artists/4kYSro6naA4h99UJvo89HB	640	640	https://i.scdn.co/image/ab6761610000e5eb4e8a7e14e2f602eb9af24e31
6hp4wIhq8NcXOVX1mxCXDs	{}	nicki minajj	16	https://api.spotify.com/v1/artists/6hp4wIhq8NcXOVX1mxCXDs	0	0	
4E6qYqhEd16jLWcW6GegAv	{}	David Guetta - Nicki Minaj - Flo Rida	25	https://api.spotify.com/v1/artists/4E6qYqhEd16jLWcW6GegAv	0	0	
2DzYK5GbcRpiemrN7BIOtH	{}	Nickie Minaj	9	https://api.spotify.com/v1/artists/2DzYK5GbcRpiemrN7BIOtH	0	0	
181bsRPaVXVlUKXrxwZfHK	{"houston rap",pop,rap,"trap queen"}	Megan Thee Stallion	83	https://api.spotify.com/v1/artists/181bsRPaVXVlUKXrxwZfHK	640	640	https://i.scdn.co/image/ab6761610000e5eba300c2e412844ab60e397b1b
74KWwhJpAX5zv2H7qBT2rS	{}	Nicki Minaj Covermix @ Whikey bar TLV	2	https://api.spotify.com/v1/artists/74KWwhJpAX5zv2H7qBT2rS	0	0	
5vAmdDKv89ZNCxcA68xzOK	{}	Nicki Minaj Tribute Team	0	https://api.spotify.com/v1/artists/5vAmdDKv89ZNCxcA68xzOK	640	640	https://i.scdn.co/image/ab67616d0000b2734c1aea81dee5816dab51526b
3DbwFQlvLxRSi2uX8mf81A	{"trap queen"}	Sexyy Red	82	https://api.spotify.com/v1/artists/3DbwFQlvLxRSi2uX8mf81A	640	640	https://i.scdn.co/image/ab6761610000e5ebd341871daa2c688ea24dcf02
1Db5GsIoVWYktPoD2nnPZZ	{"latin arena pop","latin pop","mexican pop"}	Gloria Trevi	73	https://api.spotify.com/v1/artists/1Db5GsIoVWYktPoD2nnPZZ	640	640	https://i.scdn.co/image/ab6761610000e5eb6e92715e5a693bb6acbc343e
54rMJ1dSf7D3CcPDIEd10C	{}	Glorilla	21	https://api.spotify.com/v1/artists/54rMJ1dSf7D3CcPDIEd10C	0	0	
7gkyxEHNVxCkCODiLti0mp	{}	GloRilla	5	https://api.spotify.com/v1/artists/7gkyxEHNVxCkCODiLti0mp	0	0	
7rXMvXRnWHaSwnVvPeUUfw	{"funk carioca","pop lgbtq+ brasileira"}	Gloria Groove	73	https://api.spotify.com/v1/artists/7rXMvXRnWHaSwnVvPeUUfw	640	640	https://i.scdn.co/image/ab6761610000e5eb40d903006ac86513ece09120
6V6WCgi7waF55bJmylC4H5	{disco,"soft rock"}	Gloria Gaynor	65	https://api.spotify.com/v1/artists/6V6WCgi7waF55bJmylC4H5	640	640	https://i.scdn.co/image/ab6761610000e5ebb75ca1c0223fc450dfe3c1ec
5IFCkqu9J6xdWeYMk5I889	{"new wave pop","soft rock"}	Gloria Estefan	65	https://api.spotify.com/v1/artists/5IFCkqu9J6xdWeYMk5I889	640	640	https://i.scdn.co/image/ab6761610000e5ebcb6ddcef04b60c7078151ac7
48ls9cAsk8aLXPlwDtaKn2	{}	Glo	38	https://api.spotify.com/v1/artists/48ls9cAsk8aLXPlwDtaKn2	640	640	https://i.scdn.co/image/ab6761610000e5ebda2deb59bb4235131905b586
0kcRONM6a4rdlgIhP3DCyN	{}	Florent Sabaton	8	https://api.spotify.com/v1/artists/0kcRONM6a4rdlgIhP3DCyN	640	640	https://i.scdn.co/image/ab67616d0000b2736f9c8127cdb4eda15413b6d3
5HFkc3t0HYETL4JeEbDB1v	{"german metal","german power metal","power metal"}	Powerwolf	65	https://api.spotify.com/v1/artists/5HFkc3t0HYETL4JeEbDB1v	640	640	https://i.scdn.co/image/ab6761610000e5ebfa98bd6af388ecfe167efbd8
6gy4Fsc3iuNQ5qkYdOzF7h	{}	Sabato Scola	18	https://api.spotify.com/v1/artists/6gy4Fsc3iuNQ5qkYdOzF7h	640	640	https://i.scdn.co/image/ab6761610000e5eb22cab94df063f8eeda3a0ad4
6lGzC0JJCotCU9QZ2Lgi8T	{"melodic metal","power metal"}	Civil War	38	https://api.spotify.com/v1/artists/6lGzC0JJCotCU9QZ2Lgi8T	640	640	https://i.scdn.co/image/ab6761610000e5eb5ec3818a12e0a32108c8ae7b
36ZqMC7zjLgKhxKc1l9g0X	{"argentine telepop"}	Oriana Sabatini	34	https://api.spotify.com/v1/artists/36ZqMC7zjLgKhxKc1l9g0X	0	0	
2tRsMl4eGxwoNabM08Dm4I	{"album rock","alternative metal","birmingham metal","glam metal","hard rock",metal,rock}	Judas Priest	67	https://api.spotify.com/v1/artists/2tRsMl4eGxwoNabM08Dm4I	640	640	https://i.scdn.co/image/ab6761610000e5eb4b3cfc24737acb15e73e8bd6
3Xsbt3SpTm3khXvVVP8qzT	{}	Sabatoj	6	https://api.spotify.com/v1/artists/3Xsbt3SpTm3khXvVVP8qzT	640	640	https://i.scdn.co/image/ab67616d0000b273a70f971e23b755d3ca9981f7
62uiaKAdkbY94iXJnXyKzc	{}	Peyton Parrish	64	https://api.spotify.com/v1/artists/62uiaKAdkbY94iXJnXyKzc	640	640	https://i.scdn.co/image/ab6761610000e5ebb972be214c898c268e35b2bb
4Jg2c59WAqnm44FUmdiCMx	{"italian jazz","italian lounge"}	Paolo Di Sabatino	20	https://api.spotify.com/v1/artists/4Jg2c59WAqnm44FUmdiCMx	640	640	https://i.scdn.co/image/ab67616d0000b273760bd12f91dd8f80ddbe3047
38CTf5ABSpBvKlPZ0qwMnt	{}	Floriani	37	https://api.spotify.com/v1/artists/38CTf5ABSpBvKlPZ0qwMnt	640	640	https://i.scdn.co/image/ab6761610000e5ebc35702e2f713605499b78b1f
00NGHcG4bH5iYLnpc7UYzl	{}	Florian Helgath	27	https://api.spotify.com/v1/artists/00NGHcG4bH5iYLnpc7UYzl	1000	1000	https://i.scdn.co/image/ab6772690000c46c8a6aac7125eb9bca9b492566
4XnXWl1WsBVbDvkEG9jZij	{}	Florent F	30	https://api.spotify.com/v1/artists/4XnXWl1WsBVbDvkEG9jZij	0	0	
3TIlkDLL5iVkwYjKo5KUQZ	{"classical clarinet"}	Florent Héau	24	https://api.spotify.com/v1/artists/3TIlkDLL5iVkwYjKo5KUQZ	640	640	https://i.scdn.co/image/ab67616d0000b273fc85397c229a3dbf8c94c550
0ao2BTNuScvLPmfeOrbeaO	{}	Sankt Florianer Sängerknaben	20	https://api.spotify.com/v1/artists/0ao2BTNuScvLPmfeOrbeaO	640	640	https://i.scdn.co/image/ab67616d0000b273e914b184cfd07338ee3f1a6b
6QGBU0y1thiKuCdX6UyFJB	{"metal cover"}	Florian Haack	26	https://api.spotify.com/v1/artists/6QGBU0y1thiKuCdX6UyFJB	640	640	https://i.scdn.co/image/ab6761610000e5eb0247fc914f62ddf484dbaea1
3u41yvYi4ylHamsT1Ksu4l	{}	Florent Salfati	9	https://api.spotify.com/v1/artists/3u41yvYi4ylHamsT1Ksu4l	640	640	https://i.scdn.co/image/ab67616d0000b273887da276648e950fcaae53cb
2Lc2XJPebxG3cwCltevhOA	{}	Florent Nisse	18	https://api.spotify.com/v1/artists/2Lc2XJPebxG3cwCltevhOA	640	640	https://i.scdn.co/image/ab6761610000e5eb8e8cf2051248acb3f1de2198
5v2LIYlOo5trlhCfR9V2Un	{}	Florent K	10	https://api.spotify.com/v1/artists/5v2LIYlOo5trlhCfR9V2Un	0	0	
5qo1gkQBni17Mee3CC5Gze	{}	Floriani	21	https://api.spotify.com/v1/artists/5qo1gkQBni17Mee3CC5Gze	640	640	https://i.scdn.co/image/ab67616d0000b2735a022e7f0670461d233af5d0
0YC192cP3KPCRWx8zr8MfZ	{"german soundtrack","orchestral soundtrack",soundtrack}	Hans Zimmer	79	https://api.spotify.com/v1/artists/0YC192cP3KPCRWx8zr8MfZ	640	640	https://i.scdn.co/image/ab6761610000e5eb371632043a8c12bb7eeeaf9d
4yanWaefFUJnIUV0aITdvV	{neo-classical}	Florian Christl	59	https://api.spotify.com/v1/artists/4yanWaefFUJnIUV0aITdvV	640	640	https://i.scdn.co/image/ab6761610000e5eb2a0a84501005d6b892801e88
3mRu9OfTtO7fJIyXg4nWX2	{}	Floriani	19	https://api.spotify.com/v1/artists/3mRu9OfTtO7fJIyXg4nWX2	0	0	
1g2rBoWONHzfurvm2ESnz0	{}	Flori Vivea	53	https://api.spotify.com/v1/artists/1g2rBoWONHzfurvm2ESnz0	640	640	https://i.scdn.co/image/ab6761610000e5eb66708196aafe7497e74bf4a2
5oMNNPoFGc4QzaQehA2WHA	{epicore}	Florian Bur	42	https://api.spotify.com/v1/artists/5oMNNPoFGc4QzaQehA2WHA	640	640	https://i.scdn.co/image/ab6761610000e5ebccaae89de3136d0a9d2c881e
7dtC84FkhalFSKToofOdOv	{"argentine telepop"}	Floricienta	60	https://api.spotify.com/v1/artists/7dtC84FkhalFSKToofOdOv	640	640	https://i.scdn.co/image/ab6761610000e5ebd2e85425b01a3f6ec7fda144
605nzjdqXRmYdEJ6wqCUC1	{}	Florian Fickel	61	https://api.spotify.com/v1/artists/605nzjdqXRmYdEJ6wqCUC1	640	640	https://i.scdn.co/image/ab67616d0000b27380886d416b5342d4dba21373
6kuAjH8jM4yaKQhZekTUgL	{"classical clarinet","classical performance"}	Sabine Meyer	43	https://api.spotify.com/v1/artists/6kuAjH8jM4yaKQhZekTUgL	1000	1000	https://i.scdn.co/image/ab6772690000c46ce0e4512fcf9d12660d74e2c0
3dRfiJ2650SZu6GbydcHNb	{"orchestral soundtrack",soundtrack}	John Williams	76	https://api.spotify.com/v1/artists/3dRfiJ2650SZu6GbydcHNb	640	640	https://i.scdn.co/image/ab6761610000e5eb86b13e4d2e65ebf694384ef4
6ozJOabZpwD8cSxLTljn1y	{}	Hans Zimmer	9	https://api.spotify.com/v1/artists/6ozJOabZpwD8cSxLTljn1y	640	640	https://i.scdn.co/image/ab67616d0000b2738af9ca34814736c7c3136e73
5qBZETtyzfYnXOobDXbmcD	{"orchestral soundtrack",soundtrack}	Danny Elfman	68	https://api.spotify.com/v1/artists/5qBZETtyzfYnXOobDXbmcD	640	640	https://i.scdn.co/image/ab6761610000e5ebf741706530dbd36d43078b98
4gHPHbdFlZ0QVFsA59oLXY	{}	Hans Zimmert	0	https://api.spotify.com/v1/artists/4gHPHbdFlZ0QVFsA59oLXY	0	0	
2M4eNCvV3CJUswavkhAQg2	{"orchestral soundtrack",soundtrack}	James Newton Howard	65	https://api.spotify.com/v1/artists/2M4eNCvV3CJUswavkhAQg2	640	640	https://i.scdn.co/image/ab6761610000e5ebe9d190a9e39a772d84b068ab
2cd7H2nZ9SW4UZ1zs9RrgV	{}	Hans Zimmermann	1	https://api.spotify.com/v1/artists/2cd7H2nZ9SW4UZ1zs9RrgV	0	0	
6dU7gPN2BhEPfO5QHLt7es	{"british soundtrack",epicore,"orchestral soundtrack",soundtrack,"video game music"}	Lorne Balfe	60	https://api.spotify.com/v1/artists/6dU7gPN2BhEPfO5QHLt7es	640	640	https://i.scdn.co/image/ab6761610000e5eb9f83c28b83ec36891d73cc9c
2rtiFSHMwS8RYbI9ojNE4V	{}	Hans Zimmerman	0	https://api.spotify.com/v1/artists/2rtiFSHMwS8RYbI9ojNE4V	0	0	
5lR7yDVN4z9kahOiUSlMhe	{"british choir","cambridge choir",choral,polyphony,puirt-a-beul,"vocal ensemble"}	The King's Singers	48	https://api.spotify.com/v1/artists/5lR7yDVN4z9kahOiUSlMhe	640	640	https://i.scdn.co/image/ab6761610000e5ebe4536d632bb182e3f82baaaf
4XJkunmXvyPXlaGC6DRs7Z	{}	Sabine Mayer	2	https://api.spotify.com/v1/artists/4XJkunmXvyPXlaGC6DRs7Z	640	640	https://i.scdn.co/image/ab6761610000e5eb8e0e86d96b4154af74d6d8f7
6Xh7v5MIGGv7AmQAlkXYTj	{"chamber ensemble","wind ensemble"}	Bläserensemble Sabine Meyer	9	https://api.spotify.com/v1/artists/6Xh7v5MIGGv7AmQAlkXYTj	640	640	https://i.scdn.co/image/ab67616d0000b273ec13c22a166f1ae54c2bb8e8
3Y4FNEIT10xASCqCbeE5d8	{}	Sabine Menne	48	https://api.spotify.com/v1/artists/3Y4FNEIT10xASCqCbeE5d8	0	0	
4f4cBNdunntK7jjfqb2V8D	{}	Sabine Ebert	36	https://api.spotify.com/v1/artists/4f4cBNdunntK7jjfqb2V8D	640	640	https://i.scdn.co/image/ab6761610000e5ebd44051fd1d2d01914b37d7c3
3X6EbfFFvkQkNXWvxlD54B	{}	Sabine Meyer	0	https://api.spotify.com/v1/artists/3X6EbfFFvkQkNXWvxlD54B	0	0	
3ygqQTBSK8J8EcverijxFD	{"kleine hoerspiel",lesen}	Sabine Städing	54	https://api.spotify.com/v1/artists/3ygqQTBSK8J8EcverijxFD	640	640	https://i.scdn.co/image/ab67616d0000b27382047b3ed1c21970ef040520
20sGPJyLYuUnVFSibqyLcv	{}	Bläserensemble Sabine Meyer	0	https://api.spotify.com/v1/artists/20sGPJyLYuUnVFSibqyLcv	0	0	
512nOQNOGP0aGolJKmDmNc	{}	Sabine Mayer	3	https://api.spotify.com/v1/artists/512nOQNOGP0aGolJKmDmNc	0	0	
36zTxLFTkhVEBJPV7t7c53	{}	The King's Singers	0	https://api.spotify.com/v1/artists/36zTxLFTkhVEBJPV7t7c53	0	0	
0f3PsS9IQ6whvNMFFKnpjl	{"british choir","cambridge choir",choral}	Choir of King's College, Cambridge	59	https://api.spotify.com/v1/artists/0f3PsS9IQ6whvNMFFKnpjl	640	640	https://i.scdn.co/image/ab6761610000e5eb6de6da5cea55bb5be533c5ae
4fQ8ICweDyHal9bbu11ghQ	{}	Jacob Collier	0	https://api.spotify.com/v1/artists/4fQ8ICweDyHal9bbu11ghQ	640	640	https://i.scdn.co/image/ab67616d0000b27343fc5946f73a2a76d53cc8eb
32nW8kGbs65y8CSlIvREuc	{"british choir",choral,"contemporary choir","vocal ensemble"}	VOCES8	54	https://api.spotify.com/v1/artists/32nW8kGbs65y8CSlIvREuc	640	640	https://i.scdn.co/image/ab6761610000e5eb1e0676651235a324bd58ada3
3lNoC2bKLzZiPYrpz9Nw0g	{}	Kingdom Singers	0	https://api.spotify.com/v1/artists/3lNoC2bKLzZiPYrpz9Nw0g	640	640	https://i.scdn.co/image/ab67616d0000b2737c68b2f7bec0806a75660984
0ugRf6ECGBFRCHlv9iG1No	{"cambridge choir",choral}	Stephen Cleobury	61	https://api.spotify.com/v1/artists/0ugRf6ECGBFRCHlv9iG1No	640	640	https://i.scdn.co/image/ab6761610000e5ebfc30241356fcf2910dba20f5
7G3B79TrI2C9QqBD8rYVoZ	{}	The Kingdom Singers	0	https://api.spotify.com/v1/artists/7G3B79TrI2C9QqBD8rYVoZ	640	640	https://i.scdn.co/image/ab67616d0000b27326b4dbdbe6e4a256e67ab32c
0daVGEYMVnQZ3NZIpIuFWn	{"british choir","cambridge choir","chamber choir",choral}	The Cambridge Singers	55	https://api.spotify.com/v1/artists/0daVGEYMVnQZ3NZIpIuFWn	640	640	https://i.scdn.co/image/ab6761610000e5eb09712c640f09dd5ca01ac99a
5sIevy0icg6ydijFnLVDyK	{}	The Bob King Singers	0	https://api.spotify.com/v1/artists/5sIevy0icg6ydijFnLVDyK	0	0	
0TImkz4nPqjegtVSMZnMRq	{"atl hip hop","contemporary r&b","dance pop","girl group","hip pop",r&b,"urban contemporary"}	TLC	72	https://api.spotify.com/v1/artists/0TImkz4nPqjegtVSMZnMRq	640	640	https://i.scdn.co/image/ab6761610000e5eb7356ae4581e46319f99c813a
3diftVOq7aEIebXKkC34oR	{"indie viet",v-pop,"vietnamese hip hop","vietnamese melodic rap"}	tlinh	68	https://api.spotify.com/v1/artists/3diftVOq7aEIebXKkC34oR	640	640	https://i.scdn.co/image/ab6761610000e5eb230e62752ca87da1d85d0445
6ccIoUe0YFANnBMT6Utygw	{}	TLG Dooda	50	https://api.spotify.com/v1/artists/6ccIoUe0YFANnBMT6Utygw	0	0	
3EqIT21zjIO7NkPdNYPM4i	{}	Trigga Lok 1400	40	https://api.spotify.com/v1/artists/3EqIT21zjIO7NkPdNYPM4i	640	640	https://i.scdn.co/image/ab67616d0000b273f8740a3178c1edd6f82ef7ac
4O25we9NnfJU5zPhprB5uT	{}	TLG Dooda	37	https://api.spotify.com/v1/artists/4O25we9NnfJU5zPhprB5uT	640	640	https://i.scdn.co/image/ab67616d0000b27378e222f78002c091a67e17f6
47dC2tIVeFjNtRXcCE53O8	{"folklore veracruzano","mariachi cristiano"}	Tlen Huicani	44	https://api.spotify.com/v1/artists/47dC2tIVeFjNtRXcCE53O8	640	640	https://i.scdn.co/image/ab6761610000e5eb4a4871090227b8976fe9ebe7
5vn9OXNUriBwKg5XtmbNEd	{"alabama rap","memphis hip hop"}	TLE Cinco	30	https://api.spotify.com/v1/artists/5vn9OXNUriBwKg5XtmbNEd	640	640	https://i.scdn.co/image/ab6761610000e5eb9d78ae6b1f013b84a934b6bc
1Y8cdNmUJH7yBTd9yOvr5i	{"dance pop","girl group",pop,r&b,"urban contemporary"}	Destiny's Child	73	https://api.spotify.com/v1/artists/1Y8cdNmUJH7yBTd9yOvr5i	640	640	https://i.scdn.co/image/ab6761610000e5ebf75e64532704bd6acf0b4e76
1HFz1PXpCzdOJdyShiTD8y	{}	Jakub tłumaczenia	45	https://api.spotify.com/v1/artists/1HFz1PXpCzdOJdyShiTD8y	640	640	https://i.scdn.co/image/ab6761610000e5eb6de4ac1c602582c904ee8b3f
6KF6XPVpveOW82GRFgwFsX	{}	Tlya X An	13	https://api.spotify.com/v1/artists/6KF6XPVpveOW82GRFgwFsX	640	640	https://i.scdn.co/image/ab6761610000e5eb1b9afeee76bd1a59a8c9e47a
0C1fyA450mwAwgekD3aLFK	{}	Tlyriks and J-illz	0	https://api.spotify.com/v1/artists/0C1fyA450mwAwgekD3aLFK	640	640	https://i.scdn.co/image/ab67616d0000b27381d18c95fdcf2ddff3464f83
1jhwjd7u20IjIav1o3uQ5o	{}	TLyfe	0	https://api.spotify.com/v1/artists/1jhwjd7u20IjIav1o3uQ5o	0	0	
1rponCKhxKirGzo31Hc8Wl	{}	Tlybabynesico	0	https://api.spotify.com/v1/artists/1rponCKhxKirGzo31Hc8Wl	640	640	https://i.scdn.co/image/ab67616d0000b2731b95c35b6ae25159235889fe
0iwEoxvlOX3sG2mp59xbqj	{}	TLYB	0	https://api.spotify.com/v1/artists/0iwEoxvlOX3sG2mp59xbqj	640	640	https://i.scdn.co/image/ab67616d0000b2737f0292f0e1e01fd4c43d7504
5CcqoiURXLAAtbSMcjX9mR	{}	T'lya	0	https://api.spotify.com/v1/artists/5CcqoiURXLAAtbSMcjX9mR	0	0	
00sazWvoTLOqg5MFwC68Um	{"compositional ambient","french soundtrack"}	Yann Tiersen	66	https://api.spotify.com/v1/artists/00sazWvoTLOqg5MFwC68Um	640	640	https://i.scdn.co/image/ab6761610000e5eb68f9f1d20b6ad0f4c4c27ba6
1GGuHxhQ7Xq5xKvhL9SZ2m	{}	Albert Tlyachev	0	https://api.spotify.com/v1/artists/1GGuHxhQ7Xq5xKvhL9SZ2m	640	640	https://i.scdn.co/image/ab67616d0000b27339c9c3b2d3cfd83b8c323677
0ShIDxVge1wTZgXENQgyje	{"circassian folk"}	Albert Tlyache	0	https://api.spotify.com/v1/artists/0ShIDxVge1wTZgXENQgyje	0	0	
1Xylc3o4UrD53lo9CvFvVg	{pop,scandipop,"swedish electropop","swedish pop"}	Zara Larsson	77	https://api.spotify.com/v1/artists/1Xylc3o4UrD53lo9CvFvVg	640	640	https://i.scdn.co/image/ab6761610000e5eb7619ca2683b434e139040f70
1UH80jhsYsFztK0anu2FNS	{"indie hip hop","meme rap","social media pop"}	Zack Fox	51	https://api.spotify.com/v1/artists/1UH80jhsYsFztK0anu2FNS	640	640	https://i.scdn.co/image/ab6761610000e5eb9bcefc58f0ceb5ec7c6a5e7a
5aHlyw2WWqZW0HLICBuv7U	{"alt z","gen z singer-songwriter","singer-songwriter pop"}	Zach Hood	59	https://api.spotify.com/v1/artists/5aHlyw2WWqZW0HLICBuv7U	640	640	https://i.scdn.co/image/ab6761610000e5ebebe91002d8237dd922969e7b
5YgOA27qcu8nSl1lp5ektj	{}	Zach Templar	57	https://api.spotify.com/v1/artists/5YgOA27qcu8nSl1lp5ektj	640	640	https://i.scdn.co/image/ab6761610000e5eb2d3c11c2ce9ccdd03a6dab8f
7d00Y5kG1ZIPvWNl8LgHqB	{}	Zach John King	45	https://api.spotify.com/v1/artists/7d00Y5kG1ZIPvWNl8LgHqB	640	640	https://i.scdn.co/image/ab6761610000e5ebea3d5f1592aeecb00ea3f9a6
6g10GEtmIVqIQBhPZh4ScQ	{ccm}	Zach Williams	63	https://api.spotify.com/v1/artists/6g10GEtmIVqIQBhPZh4ScQ	640	640	https://i.scdn.co/image/ab6761610000e5ebc73ef74b1863cb7d3f30eaf8
4Q5AMYQRVkVB3GZxjSK5BS	{"anime rap"}	Zach Boucher	42	https://api.spotify.com/v1/artists/4Q5AMYQRVkVB3GZxjSK5BS	640	640	https://i.scdn.co/image/ab6761610000e5eb8470b69c69e17017b22dbc5b
1W2W85bJ8lG3g409Lm6goy	{}	Zach Paradis	41	https://api.spotify.com/v1/artists/1W2W85bJ8lG3g409Lm6goy	640	640	https://i.scdn.co/image/ab6761610000e5ebd0c2594cae428c1d31176c74
4Y8LpEiP4uKTP02lSYEWJV	{"modern country pop"}	HIXTAPE	64	https://api.spotify.com/v1/artists/4Y8LpEiP4uKTP02lSYEWJV	640	640	https://i.scdn.co/image/ab6761610000e5ebb06643977ba6cf1b8792c2ad
2ErsJAz6qJ5cqjoVAvfvaC	{"modern country pop"}	Charles Wesley Godwin	65	https://api.spotify.com/v1/artists/2ErsJAz6qJ5cqjoVAvfvaC	640	640	https://i.scdn.co/image/ab6761610000e5ebda21b4ddf4c6cbfac0ba23e7
46lEQmDJLJeyltECJYJv1Y	{"modern country pop","oklahoma country"}	Wyatt Flores	69	https://api.spotify.com/v1/artists/46lEQmDJLJeyltECJYJv1Y	640	640	https://i.scdn.co/image/ab6761610000e5eb533704125ec6cf849f22219d
3bLSAQPeix7Xm2e5Gtn48R	{bluegrass,"neo-traditional bluegrass","new americana"}	The Steeldrivers	61	https://api.spotify.com/v1/artists/3bLSAQPeix7Xm2e5Gtn48R	640	640	https://i.scdn.co/image/ab6761610000e5eb19e2ff3fab5dfc10018a3bf0
6rJqqRce0Kvo2dJUXoHleC	{"contemporary country",country,"country road","country rock"}	Alabama	67	https://api.spotify.com/v1/artists/6rJqqRce0Kvo2dJUXoHleC	960	960	https://i.scdn.co/image/e62bc7c5b919ceb8145d0c73e8d04c7b8b066f73
1YSA4byX5AL1zoTsSTlB03	{"red dirt"}	Turnpike Troubadours	62	https://api.spotify.com/v1/artists/1YSA4byX5AL1zoTsSTlB03	640	640	https://i.scdn.co/image/ab6761610000e5eb0c9828e2676a518acb904c8c
7HnPsSFnXUJ8XiHt1UuQ23	{"country rap"}	Struggle Jennings	60	https://api.spotify.com/v1/artists/7HnPsSFnXUJ8XiHt1UuQ23	640	640	https://i.scdn.co/image/ab6761610000e5eb9302f87d7a0c3963f9a7f6d6
4gHYwyqJOALI9pJO1QCzq8	{"apostolic worship"}	Davies.	55	https://api.spotify.com/v1/artists/4gHYwyqJOALI9pJO1QCzq8	640	640	https://i.scdn.co/image/ab6761610000e5ebdd12795103b412d0f433870e
2jqLJvBYhbA8qNe37kbSaU	{"contemporary gospel",gospel}	Charles Jenkins & Fellowship Chicago	43	https://api.spotify.com/v1/artists/2jqLJvBYhbA8qNe37kbSaU	640	640	https://i.scdn.co/image/ab6761610000e5eb150ebf2574cb8bd440537003
4HRAisqWU6muzcJTkGMquz	{}	Aaron Williams	44	https://api.spotify.com/v1/artists/4HRAisqWU6muzcJTkGMquz	640	640	https://i.scdn.co/image/ab6761610000e5eb5efb1f99f0d807e5f2b1b45b
4b55lXHPorwxp0HHq0W6ab	{}	Charles Weems	42	https://api.spotify.com/v1/artists/4b55lXHPorwxp0HHq0W6ab	640	640	https://i.scdn.co/image/ab67616d0000b2733054b557c4715b91a4aeb863
0KtfH8xMqqBDN4KKTK4aff	{}	Charles Wesley	20	https://api.spotify.com/v1/artists/0KtfH8xMqqBDN4KKTK4aff	640	640	https://i.scdn.co/image/ab67616d0000b27391aa211a607b257bd528981a
2AQVIbXzroJV8VBwKdy7Pc	{"christian uplift","roots worship"}	Wilder Adkins	34	https://api.spotify.com/v1/artists/2AQVIbXzroJV8VBwKdy7Pc	640	640	https://i.scdn.co/image/ab6761610000e5ebea9b5c6441edb1a503d3adfc
2u1ISXVRljasFOG51aSqjP	{"southern gospel"}	Old Time Gospel Hour Quartet	35	https://api.spotify.com/v1/artists/2u1ISXVRljasFOG51aSqjP	640	640	https://i.scdn.co/image/ab67616d0000b27388ce3566acb64bfd8049cc35
22ZIKMGhmGY3VJaj3VdPSM	{}	Carl & Wes	37	https://api.spotify.com/v1/artists/22ZIKMGhmGY3VJaj3VdPSM	640	640	https://i.scdn.co/image/ab6761610000e5ebd2c84164ba0d6a96e82aef67
3mWDcLkpeZ5aReUNWoOadU	{"classic praise","roots worship"}	Bob Kauflin	43	https://api.spotify.com/v1/artists/3mWDcLkpeZ5aReUNWoOadU	640	640	https://i.scdn.co/image/ab67616d0000b2738108be026d28c5fec232f6b3
2x9SpqnPi8rlE9pjHBwmSC	{"alternative rock","art punk","dance rock","funk rock","new wave","permanent wave",post-punk,rock,zolo}	Talking Heads	71	https://api.spotify.com/v1/artists/2x9SpqnPi8rlE9pjHBwmSC	500	500	https://i.scdn.co/image/e4c5b04fce8706c87663357b1f78522a3a5c641b
24XtlMhEMNdi822vi0MhY1	{emo,"neon pop punk","pop punk",post-hardcore,screamo}	Taking Back Sunday	63	https://api.spotify.com/v1/artists/24XtlMhEMNdi822vi0MhY1	640	640	https://i.scdn.co/image/ab6761610000e5eb24bdac8749defae31e78a82d
3JsHnjpbhX4SnySpvpa9DK	{j-division,"korean ost"}	V	83	https://api.spotify.com/v1/artists/3JsHnjpbhX4SnySpvpa9DK	640	640	https://i.scdn.co/image/ab6761610000e5eb8e7d00d3aae87cf8fc6946e2
4CB8mmEbDXVxkzNpJgkj65	{}	Salish Matter	34	https://api.spotify.com/v1/artists/4CB8mmEbDXVxkzNpJgkj65	640	640	https://i.scdn.co/image/ab67616d0000b2739584185e27f41b28d287edcc
0DwbGCdaD8YLRiVUEiV70Q	{}	Taylor Swift Piano Covers	33	https://api.spotify.com/v1/artists/0DwbGCdaD8YLRiVUEiV70Q	640	640	https://i.scdn.co/image/ab67616d0000b2738160a48bb1693050f496b11e
3vZoN5cnYOycsJ5KsFkjo5	{}	Taylor Swift - Evermore - Piano Covers	5	https://api.spotify.com/v1/artists/3vZoN5cnYOycsJ5KsFkjo5	640	640	https://i.scdn.co/image/ab67616d0000b273785702c6f41f1fa6d6c3d2b1
6jJ0s89eD6GaHleKKya26X	{pop}	Katy Perry	86	https://api.spotify.com/v1/artists/6jJ0s89eD6GaHleKKya26X	640	640	https://i.scdn.co/image/ab6761610000e5eb5e5f676a99a81dba06cc3db6
7oW3aIseIypoEqcOqvzUfS	{}	taylorr swiftt	7	https://api.spotify.com/v1/artists/7oW3aIseIypoEqcOqvzUfS	0	0	
1Vvvx45Apu6dQqwuZQxtgW	{"children's music"}	Kidz Bop Kids	68	https://api.spotify.com/v1/artists/1Vvvx45Apu6dQqwuZQxtgW	640	640	https://i.scdn.co/image/ab6761610000e5eb2c0e8cce5f3b65427b3331bd
0CkM1sLkP3yQW8I7ja51am	{}	Brandon Taylor Smith	36	https://api.spotify.com/v1/artists/0CkM1sLkP3yQW8I7ja51am	640	640	https://i.scdn.co/image/ab67616d0000b273dfa911b8ed663b571d9dab70
5YGY8feqx7naU7z4HrwZM6	{pop}	Miley Cyrus	84	https://api.spotify.com/v1/artists/5YGY8feqx7naU7z4HrwZM6	640	640	https://i.scdn.co/image/ab6761610000e5ebb4ba86c361191d48cbeb4b32
0e9oqWi0jdx4q0B5CQDLXo	{}	Nidal Wonder	37	https://api.spotify.com/v1/artists/0e9oqWi0jdx4q0B5CQDLXo	640	640	https://i.scdn.co/image/ab6761610000e5eb5bedcede61929815d802a5ad
22qEk3r4Gv0yKjscRNjHSB	{}	Bailey Spinn	46	https://api.spotify.com/v1/artists/22qEk3r4Gv0yKjscRNjHSB	640	640	https://i.scdn.co/image/ab6761610000e5ebde878846581a1e7b25978f3b
3QJUFtGBGL05vo0kCJZsmT	{"alt z","modern indie pop"}	salem ilese	64	https://api.spotify.com/v1/artists/3QJUFtGBGL05vo0kCJZsmT	640	640	https://i.scdn.co/image/ab6761610000e5eb3da79849ed72fe525fb8ac00
5JwBh2LjExqTDve2dSTXmQ	{"social media pop"}	Cash and Maverick	40	https://api.spotify.com/v1/artists/5JwBh2LjExqTDve2dSTXmQ	640	640	https://i.scdn.co/image/ab6761610000e5eb237a5ab76ea5fd00dd09d714
2kytM35nXuQfdxPeoLgE0K	{meme}	Frizk	54	https://api.spotify.com/v1/artists/2kytM35nXuQfdxPeoLgE0K	640	640	https://i.scdn.co/image/ab6761610000e5ebb0136a982cbc359d8bc35163
5OLl3QAQOcnab5ofRR05jM	{"movie tunes"}	Wish - Cast	55	https://api.spotify.com/v1/artists/5OLl3QAQOcnab5ofRR05jM	640	640	https://i.scdn.co/image/ab6761610000e5eb92e018e86af4508148e986ad
3X9hlPTLBIZ9pEONCQnjTm	{"alt z"}	DEZI	47	https://api.spotify.com/v1/artists/3X9hlPTLBIZ9pEONCQnjTm	640	640	https://i.scdn.co/image/ab6761610000e5ebe9b8987f22f6109d0a66dddc
0iv7RfSxMSAvCzCVnxys6g	{meme}	Tiko	50	https://api.spotify.com/v1/artists/0iv7RfSxMSAvCzCVnxys6g	640	640	https://i.scdn.co/image/ab6761610000e5eb2ddecde6dafacf68bd59b0f3
1U1el3k54VvEUzo3ybLPlM	{"colombian pop"}	Kali Uchis	86	https://api.spotify.com/v1/artists/1U1el3k54VvEUzo3ybLPlM	640	640	https://i.scdn.co/image/ab6761610000e5eb51dfdac248da65a860963b68
3T913bfZT1NlIHJkbmHY2D	{}	Kendrick Lamar Jackson	0	https://api.spotify.com/v1/artists/3T913bfZT1NlIHJkbmHY2D	0	0	
6BunlKXw4BT2CrQACSjDPW	{}	Kendrick Lamar's Moneytrees	0	https://api.spotify.com/v1/artists/6BunlKXw4BT2CrQACSjDPW	0	0	
45x3EhL7jyAvMaLf6a3aJT	{}	Kendrick Ramal	0	https://api.spotify.com/v1/artists/45x3EhL7jyAvMaLf6a3aJT	0	0	
6l3HvQ5sa6mXTsMTB19rO5	{"conscious hip hop","hip hop","north carolina hip hop",rap}	J. Cole	87	https://api.spotify.com/v1/artists/6l3HvQ5sa6mXTsMTB19rO5	640	640	https://i.scdn.co/image/ab6761610000e5eb4b053c29fd4b317ff825f0dc
28ExwzUQsvgJooOI0X1mr3	{"conscious hip hop","hip hop",rap,"southern hip hop",trap}	Jay Rock	72	https://api.spotify.com/v1/artists/28ExwzUQsvgJooOI0X1mr3	640	640	https://i.scdn.co/image/ab6761610000e5eb9c48431caf52a2d0f38433ff
67nwj3Y5sZQLl72VNUHEYE	{"pop rap",r&b,rap,"southern hip hop",trap}	Wale	71	https://api.spotify.com/v1/artists/67nwj3Y5sZQLl72VNUHEYE	640	640	https://i.scdn.co/image/ab6761610000e5eb204ce9bb25bd19a056cac78a
0P1li4GURXaPNnFwVSZzHx	{necrotrap}	Jackson Rose	55	https://api.spotify.com/v1/artists/0P1li4GURXaPNnFwVSZzHx	640	640	https://i.scdn.co/image/ab6761610000e5ebe480377fdd09a651341e6c8a
70gP6Ry4Uo0Yx6uzPIdaiJ	{"queens hip hop","sudanese hip hop","sudanese pop","underground hip hop"}	Bas	66	https://api.spotify.com/v1/artists/70gP6Ry4Uo0Yx6uzPIdaiJ	640	640	https://i.scdn.co/image/ab6761610000e5eb765400c3d2b3a23e55008735
1kfWoWgCugPkyxQP8lkRlY	{k-pop}	Jackson Wang	62	https://api.spotify.com/v1/artists/1kfWoWgCugPkyxQP8lkRlY	640	640	https://i.scdn.co/image/ab6761610000e5eb0405e7cc11aecb995703d398
4mwdnO2jZrMmMVrjcHsZBv	{"atl hip hop","indie hip hop"}	Kenny Mason	62	https://api.spotify.com/v1/artists/4mwdnO2jZrMmMVrjcHsZBv	640	640	https://i.scdn.co/image/ab6761610000e5eb54afa59224c6b339e5cdab9f
6KOqPxwfNAmZPkiCnDE9yT	{"mellow gold","new romantic","new wave","new wave pop","permanent wave",singer-songwriter,sophisti-pop}	Joe Jackson	53	https://api.spotify.com/v1/artists/6KOqPxwfNAmZPkiCnDE9yT	640	640	https://i.scdn.co/image/ab6761610000e5eba4e4ffea944ea037683faf51
6udveWUgX4vu75FF0DTrXV	{k-pop,"korean r&b"}	TAEYANG	70	https://api.spotify.com/v1/artists/6udveWUgX4vu75FF0DTrXV	640	640	https://i.scdn.co/image/ab6761610000e5eb496189630cd3cb0c7b593fee
1gpC3lSInhq9N1WlGdANcR	{}	Jackson Walker	30	https://api.spotify.com/v1/artists/1gpC3lSInhq9N1WlGdANcR	640	640	https://i.scdn.co/image/ab67616d0000b2738a87b68981ac4a6f78cd2367
2F5W6Rsxwzg0plQ0w8dSyt	{mandopop,"taiwan pop"}	Leehom Wang	60	https://api.spotify.com/v1/artists/2F5W6Rsxwzg0plQ0w8dSyt	640	640	https://i.scdn.co/image/ab6761610000e5eb44cc73a57e7a317ee89158d4
7MtdY1LjSnjTTKJHGmHqf3	{}	Jackson Wendell	26	https://api.spotify.com/v1/artists/7MtdY1LjSnjTTKJHGmHqf3	640	640	https://i.scdn.co/image/ab6761610000e5ebf2eb0ff9de317aa8cef16cac
4XDi67ZENZcbfKnvMnTYsI	{k-pop,k-rap,"korean r&b"}	Jay Park	67	https://api.spotify.com/v1/artists/4XDi67ZENZcbfKnvMnTYsI	640	640	https://i.scdn.co/image/ab6761610000e5ebbaec57292a885401901ce138
2D6zj0qjOnRRtTGiwB1BLG	{}	Jackson Banfield	23	https://api.spotify.com/v1/artists/2D6zj0qjOnRRtTGiwB1BLG	640	640	https://i.scdn.co/image/ab6761610000e5eb7072fa44068a121b165bf424
4XpUIb8uuNlIWVKmgKZXC0	{k-pop,"korean r&b"}	ZICO	67	https://api.spotify.com/v1/artists/4XpUIb8uuNlIWVKmgKZXC0	640	640	https://i.scdn.co/image/ab6761610000e5ebbc333412dcb39d8ef2bd91cc
2eAUt3uGVV4YJlyM9ZW161	{}	Jackson Ganga	39	https://api.spotify.com/v1/artists/2eAUt3uGVV4YJlyM9ZW161	640	640	https://i.scdn.co/image/ab6761610000e5ebf7473254f7944684de9d1952
0aPQ4JCmwFUithlkHsQ9dC	{}	TAEYANG	0	https://api.spotify.com/v1/artists/0aPQ4JCmwFUithlkHsQ9dC	640	640	https://i.scdn.co/image/ab67616d0000b273fa46955e0cbb222c7668f31a
3HJVw8aEtFqoc3raJVE8am	{k-pop,"k-pop boy group"}	GD X TAEYANG	47	https://api.spotify.com/v1/artists/3HJVw8aEtFqoc3raJVE8am	640	640	https://i.scdn.co/image/ab6761610000e5eb297e7c351824ad6c818be5de
6SKusTjOAPsTZ6kareKQdm	{k-pop}	TAEYONG	61	https://api.spotify.com/v1/artists/6SKusTjOAPsTZ6kareKQdm	640	640	https://i.scdn.co/image/ab6761610000e5eb46c7620b97e6eb932d79d97a
3qNVuliS40BLgXGxhdBdqu	{k-pop}	TAEYEON	69	https://api.spotify.com/v1/artists/3qNVuliS40BLgXGxhdBdqu	640	640	https://i.scdn.co/image/ab6761610000e5ebb5d9ebbbbe3fff5a330b40c8
2m4h0CbwUpKHuztR4F49Rp	{}	YOO TAE YANG	18	https://api.spotify.com/v1/artists/2m4h0CbwUpKHuztR4F49Rp	640	640	https://i.scdn.co/image/ab67616d0000b2731e91d00bd7db5949fa1753bb
3Xb9bG2D3TY9zlEVNIUdJD	{}	Pyeon-anhan Taeyang	14	https://api.spotify.com/v1/artists/3Xb9bG2D3TY9zlEVNIUdJD	640	640	https://i.scdn.co/image/ab67616d0000b273c8d011d361c608217c394ec8
30b9WulBM8sFuBo17nNq9c	{k-pop,k-rap}	G-DRAGON	72	https://api.spotify.com/v1/artists/30b9WulBM8sFuBo17nNq9c	640	640	https://i.scdn.co/image/ab6761610000e5eb99234fca18ba6bc8e75620ca
76O95etHbUJbwUxvPG0jxr	{}	Taeyang Lee	0	https://api.spotify.com/v1/artists/76O95etHbUJbwUxvPG0jxr	640	640	https://i.scdn.co/image/ab67616d0000b273f09a72274eaa3af8bfd66e7e
2pH3wEn4eYlMMIIQyKPbVR	{"british power metal","fantasy metal",metal,"power metal","speed metal"}	DragonForce	60	https://api.spotify.com/v1/artists/2pH3wEn4eYlMMIIQyKPbVR	640	640	https://i.scdn.co/image/ab6761610000e5eb2c0d92dae9b4af4c8a565c3b
1bj5GrcLom5gZFF5t949Xl	{"disco house",edm,"electro house","filter house",house,"pop dance","vocal house"}	Martin Solveig	64	https://api.spotify.com/v1/artists/1bj5GrcLom5gZFF5t949Xl	640	640	https://i.scdn.co/image/ab6761610000e5eb7520cf8cf5c0395d388ce696
68KmkJeZGfwe1OUaivBa2L	{k-pop,"k-pop boy group"}	ATEEZ	77	https://api.spotify.com/v1/artists/68KmkJeZGfwe1OUaivBa2L	640	640	https://i.scdn.co/image/ab6761610000e5ebd28d311ccd01e2fd8917cb5c
2wDlv5Qp9pffOqnO4vdn8L	{anime,j-pop,j-rock}	Dragon Ash	49	https://api.spotify.com/v1/artists/2wDlv5Qp9pffOqnO4vdn8L	640	640	https://i.scdn.co/image/ab6761610000e5eb3eee12431ec79039d53f848a
14xXa1VUXUsNgPgRoyXn2O	{}	Dragon Gate Music	26	https://api.spotify.com/v1/artists/14xXa1VUXUsNgPgRoyXn2O	640	640	https://i.scdn.co/image/ab67616d0000b2732540d802334c1f842fb711ab
0LOK81e9H5lr61HlGGHqwA	{"k-pop girl group"}	XG	74	https://api.spotify.com/v1/artists/0LOK81e9H5lr61HlGGHqwA	640	640	https://i.scdn.co/image/ab6761610000e5ebcc1b96a354e2088071c5aec5
0qgh2Na4NslWFCd0pkRYYI	{"japanese power metal","kawaii metal"}	Dragon Guardian	25	https://api.spotify.com/v1/artists/0qgh2Na4NslWFCd0pkRYYI	640	640	https://i.scdn.co/image/ab67616d0000b27305463d2037ed54a7384c56fd
0vA45SriohIjcLXbwPhF2p	{}	C!naH	57	https://api.spotify.com/v1/artists/0vA45SriohIjcLXbwPhF2p	640	640	https://i.scdn.co/image/ab67616d0000b273a9f66eb28e383a847d255028
6TD2JHhQtji2AoV8s2eQ15	{}	Dragon Ash	0	https://api.spotify.com/v1/artists/6TD2JHhQtji2AoV8s2eQ15	640	640	https://i.scdn.co/image/ab67616d0000b273efa42d4495df965668dd4be5
2dSWXwLgHi3PrwT9l1CKDq	{}	Kj	33	https://api.spotify.com/v1/artists/2dSWXwLgHi3PrwT9l1CKDq	640	640	https://i.scdn.co/image/ab6761610000e5eb81b9fbd8ea4a762f868c8764
5FUrbgTxrPhKZERimHF0Ek	{}	Taylor Ash	45	https://api.spotify.com/v1/artists/5FUrbgTxrPhKZERimHF0Ek	640	640	https://i.scdn.co/image/ab6761610000e5eba699fa6577f0b44e45bc7758
64iZ0Xrv6Cbb4ZTWayUTXZ	{}	The Dragonfather	28	https://api.spotify.com/v1/artists/64iZ0Xrv6Cbb4ZTWayUTXZ	640	640	https://i.scdn.co/image/ab6761610000e5ebf1a1c62bd01afd682a706557
3aGcyUfKO5lAKGyFY0MSyF	{otacore,pixel}	AXIE	52	https://api.spotify.com/v1/artists/3aGcyUfKO5lAKGyFY0MSyF	640	640	https://i.scdn.co/image/ab6761610000e5ebfe1e4bb5ac6f26c57d2fab57
6MX00uZgCShmqdv9C6EgzG	{}	DRAGON SHANN	30	https://api.spotify.com/v1/artists/6MX00uZgCShmqdv9C6EgzG	640	640	https://i.scdn.co/image/ab67616d0000b273804366cf0f0e43d2fe91fc0b
0gnBpQrAfWy73XpB4ZZZYX	{otacore,pixel,vocaloid}	Crusher-P	53	https://api.spotify.com/v1/artists/0gnBpQrAfWy73XpB4ZZZYX	640	640	https://i.scdn.co/image/ab6761610000e5eb3dde9801b0e89d6d8d48cce3
3kNWENaTd7pb0xFqNuq7Sc	{}	Alohaii	48	https://api.spotify.com/v1/artists/3kNWENaTd7pb0xFqNuq7Sc	640	640	https://i.scdn.co/image/ab6761610000e5eb5f8e1941759863bcc8dd3edf
28LEEBOMfrBTp4y2Dd45Rq	{}	ItxAmritansh	8	https://api.spotify.com/v1/artists/28LEEBOMfrBTp4y2Dd45Rq	640	640	https://i.scdn.co/image/ab6761610000e5eb13d5b89a58486873b122b3ac
0ztCHnDpvaOS9cZKOUi67Z	{"ukrainian phonk"}	ITXSHI	6	https://api.spotify.com/v1/artists/0ztCHnDpvaOS9cZKOUi67Z	640	640	https://i.scdn.co/image/ab6761610000e5eb28e95f91582842ef46f0657f
4T8MWHg8GPL6F5MY1ch6ig	{}	It'x Prince	0	https://api.spotify.com/v1/artists/4T8MWHg8GPL6F5MY1ch6ig	0	0	
4Zs8Wgs11xXD8sZf6F4PXF	{}	itxzza	0	https://api.spotify.com/v1/artists/4Zs8Wgs11xXD8sZf6F4PXF	640	640	https://i.scdn.co/image/ab67616d0000b273ec974e291b07e09ba2e5aa9c
42Z2xuuhjdq6HwkTYjbhQZ	{}	Itxia Navarro	1	https://api.spotify.com/v1/artists/42Z2xuuhjdq6HwkTYjbhQZ	640	640	https://i.scdn.co/image/ab6761610000e5eb456e99bb5d545a98290caaba
73LyNkx5TFU0KlWD0fQSss	{}	Itzik Dadya	5	https://api.spotify.com/v1/artists/73LyNkx5TFU0KlWD0fQSss	0	0	
0CuturgM8Dw7OkliCBb2j3	{}	Itzik Dadya	0	https://api.spotify.com/v1/artists/0CuturgM8Dw7OkliCBb2j3	0	0	
0aSwrYjzy6LBJ3McIUxcsv	{}	Itzik Dadya	2	https://api.spotify.com/v1/artists/0aSwrYjzy6LBJ3McIUxcsv	0	0	
7tmAeCPxbtOgvC7NUpdrxZ	{}	Itzik Dadya	0	https://api.spotify.com/v1/artists/7tmAeCPxbtOgvC7NUpdrxZ	0	0	
2BFlnV6PiwBY8BHMh2sYx5	{}	Itzik Eshel	32	https://api.spotify.com/v1/artists/2BFlnV6PiwBY8BHMh2sYx5	640	640	https://i.scdn.co/image/ab67616d0000b273d269a2ab3014a9f78b18a8bb
5wa0W9DnRzkGL4vU4FMjQa	{}	Itzik Dadya	0	https://api.spotify.com/v1/artists/5wa0W9DnRzkGL4vU4FMjQa	0	0	
76BvfDVhLQR66ZCGaYNDHM	{mizrahi}	Itzik Kala	30	https://api.spotify.com/v1/artists/76BvfDVhLQR66ZCGaYNDHM	640	640	https://i.scdn.co/image/ab67616d0000b2730cc780aa625443111490bff0
3tZUy5tRdzX8UTNKQdUzbN	{}	Itzik Shamli	27	https://api.spotify.com/v1/artists/3tZUy5tRdzX8UTNKQdUzbN	640	640	https://i.scdn.co/image/ab67616d0000b273f15e3fc534aee942992d39dc
6VdxGMRiiFQhI8F0FkuQZg	{"israeli mediterranean",mizrahi}	Itay Levi	56	https://api.spotify.com/v1/artists/6VdxGMRiiFQhI8F0FkuQZg	640	640	https://i.scdn.co/image/ab6761610000e5eb5a3b5a9775462b792fc1e59a
699OTQXzgjhIYAHMy9RyPD	{"atl hip hop",plugg,pluggnb,"rage rap",rap}	Playboi Carti	90	https://api.spotify.com/v1/artists/699OTQXzgjhIYAHMy9RyPD	640	640	https://i.scdn.co/image/ab6761610000e5ebba50ca67ffc3097f6ea1710a
2HPaUgqeutzr3jx5a9WyDV	{r&b,rap,"urban contemporary"}	PARTYNEXTDOOR	85	https://api.spotify.com/v1/artists/2HPaUgqeutzr3jx5a9WyDV	640	640	https://i.scdn.co/image/ab6761610000e5eb957320981e31e862bc2fb844
74XFHRwlV6OrjEM0A2NCMF	{"candy pop","modern rock",pixie,pop,"pop emo","pop punk",rock}	Paramore	80	https://api.spotify.com/v1/artists/74XFHRwlV6OrjEM0A2NCMF	640	640	https://i.scdn.co/image/ab6761610000e5ebb10c34546a4ca2d7faeb8865
4iJLPqClelZOBCBifm8Fzv	{"modern rock","pop punk",screamo}	Pierce The Veil	75	https://api.spotify.com/v1/artists/4iJLPqClelZOBCBifm8Fzv	640	640	https://i.scdn.co/image/ab6761610000e5ebc9461fa3257fbddc14c33202
0k17h0D3J5VfsdmQ1iZtE9	{"album rock","art rock","classic rock","progressive rock","psychedelic rock",rock,"symphonic rock"}	Pink Floyd	80	https://api.spotify.com/v1/artists/0k17h0D3J5VfsdmQ1iZtE9	977	1000	https://i.scdn.co/image/e69f71e2be4b67b82af90fb8e9d805715e0684fa
4hBn9wuG4ToKpJUMdtvEXw	{}	LUCA PARTYNEXTDOOR	0	https://api.spotify.com/v1/artists/4hBn9wuG4ToKpJUMdtvEXw	640	640	https://i.scdn.co/image/ab67616d0000b273c8f9ca11dd9f2082c1b8820f
2jku7tDXc6XoB6MO2hFuqg	{"canadian hip hop","canadian trap","melodic rap","pop rap",r&b,rap,trap}	Tory Lanez	82	https://api.spotify.com/v1/artists/2jku7tDXc6XoB6MO2hFuqg	640	640	https://i.scdn.co/image/ab6761610000e5ebbd5d3e1b363c3e26710661c3
2OnO7YP2QQcLeJaoOSVVTG	{}	Prod.@brent faiyaz	0	https://api.spotify.com/v1/artists/2OnO7YP2QQcLeJaoOSVVTG	0	0	
2ICR2m4hOBPhaYiZB3rnLW	{"experimental r&b"}	Sonder	73	https://api.spotify.com/v1/artists/2ICR2m4hOBPhaYiZB3rnLW	640	640	https://i.scdn.co/image/ab6761610000e5ebfc55ad52c4f90c036acc8c15
4mskfuiHWZ3nX3qAdeaGiR	{}	Drake Milligan	57	https://api.spotify.com/v1/artists/4mskfuiHWZ3nX3qAdeaGiR	640	640	https://i.scdn.co/image/ab6761610000e5eb4e64411f2f0155d1af9a7c19
0p4ViyfJUTW0IT4SCBLexf	{"cali rap"}	Drakeo the Ruler	62	https://api.spotify.com/v1/artists/0p4ViyfJUTW0IT4SCBLexf	640	640	https://i.scdn.co/image/ab6761610000e5eba603aef1d62687aa6af6f01f
03ilIKH0i08IxmjKcn63ne	{}	Drake Bell	52	https://api.spotify.com/v1/artists/03ilIKH0i08IxmjKcn63ne	640	640	https://i.scdn.co/image/ab6761610000e5ebf022697d475649654541eecc
29ijED2bnnprp2TciAK1aO	{"modern country rock"}	Drake White	50	https://api.spotify.com/v1/artists/29ijED2bnnprp2TciAK1aO	640	640	https://i.scdn.co/image/ab6761610000e5ebfcdf7ed1c10fd9f03bd2e14e
5c3GLXai8YOMid29ZEuR9y	{"british folk",folk,melancholia,singer-songwriter}	Nick Drake	63	https://api.spotify.com/v1/artists/5c3GLXai8YOMid29ZEuR9y	1484	1000	https://i.scdn.co/image/d364b498f85ae764cd278fbba9a8ed7f00c3e434
3FAHbk1rUdevR4DtNIG5h4	{}	Drake Jr	37	https://api.spotify.com/v1/artists/3FAHbk1rUdevR4DtNIG5h4	640	640	https://i.scdn.co/image/ab67616d0000b27343b77f61105987f85be187dd
3zE5jV6Uw9hhdWCXM8hS3j	{"mississippi indie"}	The Weeks	32	https://api.spotify.com/v1/artists/3zE5jV6Uw9hhdWCXM8hS3j	640	640	https://i.scdn.co/image/ab6761610000e5eb8118fd1beb8e2af89554aead
3Z73qbDrey1ubsAofhOoz6	{}	Weekend	38	https://api.spotify.com/v1/artists/3Z73qbDrey1ubsAofhOoz6	640	640	https://i.scdn.co/image/ab67616d0000b273a12e3c153e997995e3e5d406
5t1D0pmHVT0FmuCMAPsGqo	{}	The Weekend Run Club	17	https://api.spotify.com/v1/artists/5t1D0pmHVT0FmuCMAPsGqo	640	640	https://i.scdn.co/image/ab6761610000e5eb540a34d96e513e35dfe19d27
2JVLB6xMAa3vXDD89dktLZ	{"background jazz product"}	The Weekend Quintet	24	https://api.spotify.com/v1/artists/2JVLB6xMAa3vXDD89dktLZ	640	640	https://i.scdn.co/image/ab67616d0000b273f193056b7d22ecb54e201b13
1P6U1dCeHxPui5pIrGmndZ	{"ambient pop",downtempo,electronica,indietronica,"trip hop"}	Air	65	https://api.spotify.com/v1/artists/1P6U1dCeHxPui5pIrGmndZ	640	640	https://i.scdn.co/image/ab6761610000e5ebb3f06b20f1391c3d1b2c14e7
6eUKZXaKkcviH0Ku9w2n3V	{pop,"singer-songwriter pop","uk pop"}	Ed Sheeran	89	https://api.spotify.com/v1/artists/6eUKZXaKkcviH0Ku9w2n3V	640	640	https://i.scdn.co/image/ab6761610000e5eb784daff754ecfe0464ddbeb9
4xXCRXOfQKQ2gjWxNhNzYW	{"soft rock"}	Air Supply	72	https://api.spotify.com/v1/artists/4xXCRXOfQKQ2gjWxNhNzYW	640	640	https://i.scdn.co/image/ab6761610000e5eb79bedf7da0a906b84128f3af
5aIqB5nVVvmFsvSdExz408	{baroque,classical,"early music","german baroque"}	Johann Sebastian Bach	79	https://api.spotify.com/v1/artists/5aIqB5nVVvmFsvSdExz408	479	479	https://i.scdn.co/image/a2ec08fe69ecec2748fbc764aede8f1b03ae8f88
3UpIbyXfGzmHG6TMH4dJEk	{ectofolk,lilith,"new wave pop","permanent wave",singer-songwriter}	Aimee Mann	51	https://api.spotify.com/v1/artists/3UpIbyXfGzmHG6TMH4dJEk	640	640	https://i.scdn.co/image/ab6761610000e5eba7a33e1bce1d8c9b6a173d6a
4XQI4hyuy5xun1ou3SM8Oe	{"gen z singer-songwriter"}	Aidan Bissett	55	https://api.spotify.com/v1/artists/4XQI4hyuy5xun1ou3SM8Oe	640	640	https://i.scdn.co/image/ab6761610000e5eb6b70c3dd72d6270b2e8aa9e3
7xovAENFxmyEWhzbnHsB3Z	{"la indie",metropopolis}	The Airborne Toxic Event	49	https://api.spotify.com/v1/artists/7xovAENFxmyEWhzbnHsB3Z	640	640	https://i.scdn.co/image/ab6761610000e5ebc19497c55f6194216961636a
0X2BH1fck6amBIoJhDVmmJ	{indietronica,metropopolis,pop,"uk pop"}	Ellie Goulding	81	https://api.spotify.com/v1/artists/0X2BH1fck6amBIoJhDVmmJ	640	640	https://i.scdn.co/image/ab6761610000e5ebc3cd7dc428871e8985d62b9a
33TMePuoaglO2gkBOLa7E6	{}	Edward Christopher Sheeran	13	https://api.spotify.com/v1/artists/33TMePuoaglO2gkBOLa7E6	0	0	
2Vvz9VlewaR5wMQPrEZhC2	{}	Ed Sheeran;Amy Wadge	0	https://api.spotify.com/v1/artists/2Vvz9VlewaR5wMQPrEZhC2	0	0	
69OdrDqV3GdEhvyP8iZwks	{}	Ed Sheeranivashan	0	https://api.spotify.com/v1/artists/69OdrDqV3GdEhvyP8iZwks	640	640	https://i.scdn.co/image/ab67616d0000b273553b2a14481811c1546d3183
2czT7fmCNgyXkQAZqjYBb8	{}	Ed Sheeran Band	1	https://api.spotify.com/v1/artists/2czT7fmCNgyXkQAZqjYBb8	640	640	https://i.scdn.co/image/ab67616d0000b2730270a4af75af4b9902e13432
1bgoHMYkNqVC9PTOrQECts	{}	Ed Sheeran Taylor Swift	1	https://api.spotify.com/v1/artists/1bgoHMYkNqVC9PTOrQECts	0	0	
50ONAFAExZtLZ262PCSeUi	{}	Halse	0	https://api.spotify.com/v1/artists/50ONAFAExZtLZ262PCSeUi	640	640	https://i.scdn.co/image/ab67616d0000b273496ac2aa00562ed01fc58bf0
6om12Ev5ppgoMy3OYSoech	{"alternative metal","nu metal",post-grunge}	Halestorm	66	https://api.spotify.com/v1/artists/6om12Ev5ppgoMy3OYSoech	640	640	https://i.scdn.co/image/ab6761610000e5eb35d58aafc40646040e1f5f16
73MDShZzdL4vUGMkmXOG6X	{countrygaze,"indie pop","portland indie","small room"}	Haley Heynderickx	61	https://api.spotify.com/v1/artists/73MDShZzdL4vUGMkmXOG6X	640	640	https://i.scdn.co/image/ab6761610000e5ebfc16d138f217def8c931ffda
2cnMpRsOVqtPMfq7YiFE6K	{"album rock","classic rock","hard rock",rock}	Van Halen	73	https://api.spotify.com/v1/artists/2cnMpRsOVqtPMfq7YiFE6K	640	640	https://i.scdn.co/image/ab6761610000e5ebd8475001d2700686e1008dfb
5cKlE8f6b26h61Ml7m052Q	{idol}	Haley Reinhart	64	https://api.spotify.com/v1/artists/5cKlE8f6b26h61Ml7m052Q	640	640	https://i.scdn.co/image/ab6761610000e5ebe194a295555b6aa53e4cbc04
0lgVcf8dTasIKGGkuoizb4	{}	Halsen	30	https://api.spotify.com/v1/artists/0lgVcf8dTasIKGGkuoizb4	640	640	https://i.scdn.co/image/ab6761610000e5ebb6341175272092e6191cb39d
3HsVtnnjOUToyJThxaoBfx	{}	Halle	56	https://api.spotify.com/v1/artists/3HsVtnnjOUToyJThxaoBfx	640	640	https://i.scdn.co/image/ab6761610000e5ebe71cba4e0c9c4fd7ea1b3129
1sKIizVYeHkGy7Tjmn9QRj	{"melodic dubstep"}	HALIENE	53	https://api.spotify.com/v1/artists/1sKIizVYeHkGy7Tjmn9QRj	640	640	https://i.scdn.co/image/ab6761610000e5eb9d3168904c56f0a429d4555c
6Ww3OMFzCaO33ulKh1LBFN	{opm,"pinoy reggae"}	Hale	64	https://api.spotify.com/v1/artists/6Ww3OMFzCaO33ulKh1LBFN	640	640	https://i.scdn.co/image/ab6761610000e5eb42db0c86075ec3fd160d301c
64M6ah0SkkRsnPGtGiRAbb	{"dance pop",pop}	Bebe Rexha	81	https://api.spotify.com/v1/artists/64M6ah0SkkRsnPGtGiRAbb	640	640	https://i.scdn.co/image/ab6761610000e5ebead1540fa76796266fadba33
4XuOM2K7MfXMP6cinOPido	{}	Logan Halstead	38	https://api.spotify.com/v1/artists/4XuOM2K7MfXMP6cinOPido	640	640	https://i.scdn.co/image/ab6761610000e5eb8afaa1db75ffb023baca4eea
7hLpnZ1mYSpffXs0PRVWMC	{}	Hals	0	https://api.spotify.com/v1/artists/7hLpnZ1mYSpffXs0PRVWMC	640	640	https://i.scdn.co/image/ab67616d0000b27327ed07be56086b0bea6a306b
0Cioop2zjxXxtcPUme7R46	{"indie jazz","jazz brass","nu jazz","uk contemporary jazz"}	Matthew Halsall	45	https://api.spotify.com/v1/artists/0Cioop2zjxXxtcPUme7R46	640	640	https://i.scdn.co/image/ab6761610000e5eb187aa328ce74db49e1b28576
2XCUv3yDlQNmj33821JoMh	{}	Hals	0	https://api.spotify.com/v1/artists/2XCUv3yDlQNmj33821JoMh	0	0	
4hbv1KOjm3u9K5BrmWDOwM	{}	Halston Dare	24	https://api.spotify.com/v1/artists/4hbv1KOjm3u9K5BrmWDOwM	640	640	https://i.scdn.co/image/ab6761610000e5eba39681a7033701a7c1108f27
3QbwwBVHCVDEDrVpvUcCwj	{melancholia}	Neil Halstead	35	https://api.spotify.com/v1/artists/3QbwwBVHCVDEDrVpvUcCwj	1000	1000	https://i.scdn.co/image/ab6772690000c46cb762c10c92da495dc5081751
0sNCNblXQopxO3mIssE1dG	{}	Halsoon	25	https://api.spotify.com/v1/artists/0sNCNblXQopxO3mIssE1dG	640	640	https://i.scdn.co/image/ab6761610000e5ebfc28dd0268c91e201bdaaa23
77tT1kLj6mCWtFNqiOmP9H	{"album rock","classic rock","mellow gold",rock,singer-songwriter,"soft rock","yacht rock"}	Daryl Hall & John Oates	77	https://api.spotify.com/v1/artists/77tT1kLj6mCWtFNqiOmP9H	640	640	https://i.scdn.co/image/ab6761610000e5ebae81417d966e209b735b1160
0Tbadays3Z2K3BxmvjL34J	{"anime rap",otacore}	HalaCG	52	https://api.spotify.com/v1/artists/0Tbadays3Z2K3BxmvjL34J	640	640	https://i.scdn.co/image/ab6761610000e5eb576819745878aba217ace2d8
6EPlBSH2RSiettczlz7ihV	{"brooklyn drill","nyc rap"}	Sleepy Hallow	77	https://api.spotify.com/v1/artists/6EPlBSH2RSiettczlz7ihV	640	640	https://i.scdn.co/image/ab6761610000e5eb85563828c7493e4edf175379
7sOR7gk6XUlGnxj3p9F54k	{"alt z","pov: indie"}	half•alive	63	https://api.spotify.com/v1/artists/7sOR7gk6XUlGnxj3p9F54k	640	640	https://i.scdn.co/image/ab6761610000e5eba4f202963dd12ab6044bdb97
3AVA9bUTMNoJ9RrbmB0YfW	{"video game music"}	Halo	61	https://api.spotify.com/v1/artists/3AVA9bUTMNoJ9RrbmB0YfW	640	640	https://i.scdn.co/image/ab6761610000e5eb34d5c2df5ed7b94adbfc1756
5vTG3EyFrsARtIGDWZNRzu	{"indonesian folk"}	Hal	66	https://api.spotify.com/v1/artists/5vTG3EyFrsARtIGDWZNRzu	640	640	https://i.scdn.co/image/ab6761610000e5eb8bb201d0f1db30219c4ab3ee
5xd2Tg7Zo8755eCy8Gxkp8	{"latin arena pop","latin pop","mexican pop"}	Ha*Ash	77	https://api.spotify.com/v1/artists/5xd2Tg7Zo8755eCy8Gxkp8	640	640	https://i.scdn.co/image/ab6761610000e5eba334e265d71cda1ad75417fd
6pNgnvzBa6Bthsv8SrZJYl	{}	Hatsune Miku	68	https://api.spotify.com/v1/artists/6pNgnvzBa6Bthsv8SrZJYl	640	640	https://i.scdn.co/image/ab6761610000e5ebba025c8f62612b2ca6bfa375
22wbnEMDvgVIAGdFeek6ET	{"singer-songwriter pop"}	Benson Boone	86	https://api.spotify.com/v1/artists/22wbnEMDvgVIAGdFeek6ET	640	640	https://i.scdn.co/image/ab6761610000e5ebd2b2a1cea3b6b44f4bae14b2
03r4iKL2g2442PT9n2UKsx	{"alternative rock","east coast hip hop","golden age hip hop","hip hop","old school hip hop",rap,"rap rock",rock}	Beastie Boys	70	https://api.spotify.com/v1/artists/03r4iKL2g2442PT9n2UKsx	771	1000	https://i.scdn.co/image/705bcd56dc5dbf9ebc578a3ba8094e6d622862c2
1yxSLGMDHlW21z4YXirZDS	{"dance pop",pop,"pop rap"}	Black Eyed Peas	81	https://api.spotify.com/v1/artists/1yxSLGMDHlW21z4YXirZDS	640	640	https://i.scdn.co/image/ab6761610000e5eb6abca3789c7f4826ed99db2e
4obzFoKoKRHIphyHzJ35G3	{"latin pop","latin viral pop","rap latina",reggaeton,"trap latino","urbano latino"}	Becky G	79	https://api.spotify.com/v1/artists/4obzFoKoKRHIphyHzJ35G3	640	640	https://i.scdn.co/image/ab6761610000e5eb689f28b643fd40a523e00a96
3oDbviiivRWhXwIE8hxkVV	{"baroque pop","classic rock","folk rock","mellow gold","psychedelic rock",rock,singer-songwriter,"sunshine pop"}	The Beach Boys	74	https://api.spotify.com/v1/artists/3oDbviiivRWhXwIE8hxkVV	640	640	https://i.scdn.co/image/ab6761610000e5eba9b0551ed72f8f2ac2a5a685
56ZTgzPBDge0OvCGgMO3OY	{"art pop","baltimore indie","dream pop",dreamo,"indie rock",indietronica,"modern dream pop","pov: indie"}	Beach House	74	https://api.spotify.com/v1/artists/56ZTgzPBDge0OvCGgMO3OY	640	640	https://i.scdn.co/image/ab6761610000e5ebb3e38a46a56a423d8f741c09
6vwjIs0tbIiseJMR3pqwiL	{"melodic metalcore",metalcore,"pop punk"}	Beartooth	63	https://api.spotify.com/v1/artists/6vwjIs0tbIiseJMR3pqwiL	640	640	https://i.scdn.co/image/ab6761610000e5ebd2219c00e2fa1f2aaddcbf24
2vnB6tuQMaQpORiRdvXF9H	{bubblegrunge,"chicago indie","indie pop","pov: indie"}	Beach Bunny	70	https://api.spotify.com/v1/artists/2vnB6tuQMaQpORiRdvXF9H	640	640	https://i.scdn.co/image/ab6761610000e5ebc76f04ab8987c4fb298abb3c
7I3bkknknQkIiatWiupQgD	{"pov: indie"}	Beach Weather	71	https://api.spotify.com/v1/artists/7I3bkknknQkIiatWiupQgD	640	640	https://i.scdn.co/image/ab6761610000e5eb5f316929b9b3b61a5edb8139
1o2NpYGqHiCq7FoiYdyd1x	{"alt z",pop,"talent show"}	Bea Miller	68	https://api.spotify.com/v1/artists/1o2NpYGqHiCq7FoiYdyd1x	640	640	https://i.scdn.co/image/ab6761610000e5ebdaaf5f75751b6379c108993c
1bwUhKRmEkOZ1wuTnV9XjC	{"brooklyn indie","indie garage rock","indie rock","indie surf","noise pop",popgaze,shoegaze}	Beach Fossils	54	https://api.spotify.com/v1/artists/1bwUhKRmEkOZ1wuTnV9XjC	640	640	https://i.scdn.co/image/ab6761610000e5eb444c5095572ca29a287308d7
1vaQ6v3pOFxAIrFoPrAcom	{"alternative r&b"}	Ari Lennox	63	https://api.spotify.com/v1/artists/1vaQ6v3pOFxAIrFoPrAcom	640	640	https://i.scdn.co/image/ab6761610000e5eb1c01565fc4815f6ba7b67575
5s31VTVh96lZBPphv51mIH	{corrido,sierreno}	Ariel Camacho	60	https://api.spotify.com/v1/artists/5s31VTVh96lZBPphv51mIH	1000	1000	https://i.scdn.co/image/80b6faab65d77c1ed134344d522d910c010a5593
7hOGhpa8RMSuDOWntGIAJt	{electropop,"indie poptimism"}	A R I Z O N A	57	https://api.spotify.com/v1/artists/7hOGhpa8RMSuDOWntGIAJt	640	640	https://i.scdn.co/image/ab6761610000e5eb1a32165c7ab5afa3d8e9395d
09cKncAQn28NqTUORLMwSR	{"gym phonk"}	Ariis	75	https://api.spotify.com/v1/artists/09cKncAQn28NqTUORLMwSR	640	640	https://i.scdn.co/image/ab6761610000e5eb14acbf4655de583c7134d65e
25jJ6vyXwTRa0e6XCcdR6U	{"dark r&b","sped up"}	Ari Abdul	68	https://api.spotify.com/v1/artists/25jJ6vyXwTRa0e6XCcdR6U	640	640	https://i.scdn.co/image/ab6761610000e5ebf372b858515edeed5458cce1
6TvjXbopXg71XRM9OZWqUc	{"alternative r&b"}	Arin Ray	52	https://api.spotify.com/v1/artists/6TvjXbopXg71XRM9OZWqUc	640	640	https://i.scdn.co/image/ab6761610000e5eb522b8dac8f914dda9139edfb
6hfwwpXqZPRC9CsKI7qtv1	{etherpop}	Alina Baraz	65	https://api.spotify.com/v1/artists/6hfwwpXqZPRC9CsKI7qtv1	640	640	https://i.scdn.co/image/ab6761610000e5eb04bd5a6bee2cdd5536651e77
2tfYLaE1d6o1E8pEJ7VFWx	{}	Arina Ferora	50	https://api.spotify.com/v1/artists/2tfYLaE1d6o1E8pEJ7VFWx	640	640	https://i.scdn.co/image/ab67616d0000b2731aca79c28d96ec368fd08370
3fGeV1KgIn62PRp2MvbBlE	{}	Ariana Madix	16	https://api.spotify.com/v1/artists/3fGeV1KgIn62PRp2MvbBlE	640	640	https://i.scdn.co/image/ab67616d0000b27365feed3b778f2c927e9782a1
1JE6HNFhYkqW9OG9dpH1R9	{"west bengali pop"}	Arindom	51	https://api.spotify.com/v1/artists/1JE6HNFhYkqW9OG9dpH1R9	640	640	https://i.scdn.co/image/ab6761610000e5eb81854a2fb5f497e692575d97
6tC4njgw0jeDWSkOZlI4yL	{}	Arin Hanson	20	https://api.spotify.com/v1/artists/6tC4njgw0jeDWSkOZlI4yL	640	640	https://i.scdn.co/image/ab67616d0000b273234c261770ca46d1fe2926ff
7nM52sn64aU3P5Dm3HMcA8	{}	Arinn	37	https://api.spotify.com/v1/artists/7nM52sn64aU3P5Dm3HMcA8	640	640	https://i.scdn.co/image/ab6761610000e5eb245455048e8d784afaf30d4d
5OgwzGn5UDvxa2jNYIFLSP	{}	Arina Krondeva	0	https://api.spotify.com/v1/artists/5OgwzGn5UDvxa2jNYIFLSP	640	640	https://i.scdn.co/image/ab6761610000e5eb5ae6a146081e6437dac079f9
0urTpYCsixqZwgNTkPJOJ4	{"contemporary r&b","dance pop","hip pop",r&b,"urban contemporary"}	Aaliyah	68	https://api.spotify.com/v1/artists/0urTpYCsixqZwgNTkPJOJ4	640	640	https://i.scdn.co/image/ab6761610000e5ebd2493cea701d45401cc79ffd
4uWxbvCdc8gBGvbEBjm1r7	{}	ARINA	16	https://api.spotify.com/v1/artists/4uWxbvCdc8gBGvbEBjm1r7	640	640	https://i.scdn.co/image/ab6761610000e5eb44e6499be3b50381d409acd3
47rdIe6iVdhYOZOgyTqQPN	{}	AeSPe	10	https://api.spotify.com/v1/artists/47rdIe6iVdhYOZOgyTqQPN	640	640	https://i.scdn.co/image/ab6761610000e5eb9618c7ab26d5eecb6f9144d6
20JZFwl6HVl6yg8a4H3ZqK	{pop}	Panic! At The Disco	78	https://api.spotify.com/v1/artists/20JZFwl6HVl6yg8a4H3ZqK	640	640	https://i.scdn.co/image/ab6761610000e5ebb256ae9a4b82bfff97776ae2
14pVkFUHDL207LzLHtSA18	{"alternative metal","groove metal","hard rock",metal,"nu metal","old school thrash",rock,"texas metal"}	Pantera	72	https://api.spotify.com/v1/artists/14pVkFUHDL207LzLHtSA18	640	640	https://i.scdn.co/image/ab6761610000e5ebe21999c0102c240bdf094d9b
0Z8XVUAOBPM4x12wKnFHEQ	{"classic texas country","contemporary country","modern country pop","texas country"}	Parker McCollum	68	https://api.spotify.com/v1/artists/0Z8XVUAOBPM4x12wKnFHEQ	640	640	https://i.scdn.co/image/ab6761610000e5eb930713f716f5b210bb11e99d
32vWCbZh0xZ4o9gkz4PsEU	{"classic country pop",country,"country dawn"}	Dolly Parton	75	https://api.spotify.com/v1/artists/32vWCbZh0xZ4o9gkz4PsEU	640	640	https://i.scdn.co/image/ab6761610000e5eb33c82e34ebf51636457796ff
4RddZ3iHvSpGV4dvATac9X	{"alternative metal","nu metal","rap metal","rap rock",rock}	Papa Roach	74	https://api.spotify.com/v1/artists/4RddZ3iHvSpGV4dvATac9X	640	640	https://i.scdn.co/image/ab6761610000e5eb16d84e1083c232e86f299f01
2EXpthNgSeTDeX8nGwxppp	{"singer-songwriter pop"}	Paris Paloma	71	https://api.spotify.com/v1/artists/2EXpthNgSeTDeX8nGwxppp	640	640	https://i.scdn.co/image/ab6761610000e5ebe3405040145b2ab1d8e25651
4STHEaNw4mPZ2tzheohgXB	{"classic rock","mellow gold",rock,"soft rock"}	Paul McCartney	75	https://api.spotify.com/v1/artists/4STHEaNw4mPZ2tzheohgXB	640	640	https://i.scdn.co/image/ab6761610000e5eb03bf2fe26e397122faa3d323
3Nbau9SoiH72jmJdUTqjOY	{hel}	Lzzy Hale	50	https://api.spotify.com/v1/artists/3Nbau9SoiH72jmJdUTqjOY	640	640	https://i.scdn.co/image/ab6761610000e5eb95096c25c459cf4272d962d5
3CE6MgsLpKMDfYFtexgc8U	{"atl drill"}	LAZER DIM 700	65	https://api.spotify.com/v1/artists/3CE6MgsLpKMDfYFtexgc8U	640	640	https://i.scdn.co/image/ab6761610000e5ebfe0cea5bc0a174383f178852
6O2ODylN42JL651p1vcIYQ	{"pop edm"}	LZRD	34	https://api.spotify.com/v1/artists/6O2ODylN42JL651p1vcIYQ	640	640	https://i.scdn.co/image/ab6761610000e5eb57070034ae98f688344190c3
3HnjTikMlwQmZt88pd5ONe	{"london rap"}	LZee	41	https://api.spotify.com/v1/artists/3HnjTikMlwQmZt88pd5ONe	640	640	https://i.scdn.co/image/ab6761610000e5eb765071ea75d0a9a8ffe50112
4voFhcFTxIkBl8zvVmRlGm	{}	Lzothy	28	https://api.spotify.com/v1/artists/4voFhcFTxIkBl8zvVmRlGm	640	640	https://i.scdn.co/image/ab67616d0000b273471fde0dd7231c527a8ebe0d
6M8qH4HiYZgaQuSTdpLpe3	{}	LZRCAT	0	https://api.spotify.com/v1/artists/6M8qH4HiYZgaQuSTdpLpe3	640	640	https://i.scdn.co/image/ab67616d0000b273e9a0fac0ab2b984e2c7e830e
6yUTk9DYrsGPhR8s181E53	{"study beats"}	LzmD	30	https://api.spotify.com/v1/artists/6yUTk9DYrsGPhR8s181E53	640	640	https://i.scdn.co/image/ab67616d0000b2738ff495c843d057ce40db9f93
56oDRnqbIiwx4mymNEv7dS	{"escape room","minnesota hip hop",pop,"trap queen"}	Lizzo	70	https://api.spotify.com/v1/artists/56oDRnqbIiwx4mymNEv7dS	640	640	https://i.scdn.co/image/ab6761610000e5eb0d66b3670294bf801847dae2
1Np9GsrPO7dlczjvdehBxs	{"movie tunes"}	Ariana DeBose	58	https://api.spotify.com/v1/artists/1Np9GsrPO7dlczjvdehBxs	640	640	https://i.scdn.co/image/ab6761610000e5eb1412f72ac5ccf3998308b7d5
5wugb0kaq0J6nyQ5Xgd17i	{"dance pop","girl group","post-teen pop"}	Aly & AJ	55	https://api.spotify.com/v1/artists/5wugb0kaq0J6nyQ5Xgd17i	640	640	https://i.scdn.co/image/ab6761610000e5eb2adf122bf5cfdc67e5194814
6k8y1np6q05Us6dNn3vmF8	{}	Arianna	50	https://api.spotify.com/v1/artists/6k8y1np6q05Us6dNn3vmF8	640	640	https://i.scdn.co/image/ab6761610000e5ebd5ca2bc479b8223a06ee9929
67E0wqAIfyT2erdSnMLzRI	{}	Arianne	44	https://api.spotify.com/v1/artists/67E0wqAIfyT2erdSnMLzRI	640	640	https://i.scdn.co/image/ab67616d0000b273ccc359a68b723568690acb56
5ZpkHItfsaTaVtErDGDJ4v	{"seattle hip hop"}	Ariana DeBoo	36	https://api.spotify.com/v1/artists/5ZpkHItfsaTaVtErDGDJ4v	640	640	https://i.scdn.co/image/ab6761610000e5eb8bef7dc22399bf855568d368
6neK0Nwb4rkGnehK4zL8iN	{}	Ariana Savalas	35	https://api.spotify.com/v1/artists/6neK0Nwb4rkGnehK4zL8iN	640	640	https://i.scdn.co/image/ab6761610000e5eb9662773446acbd5b4dd9c05b
68d11JsEv9tvWgVGVhLvUm	{}	Ariana Greenblatt	30	https://api.spotify.com/v1/artists/68d11JsEv9tvWgVGVhLvUm	640	640	https://i.scdn.co/image/ab6761610000e5ebac523de780d5d67f76fbcc91
1NYI7uYqkBiSyu4UAmjri9	{}	Ariana G	8	https://api.spotify.com/v1/artists/1NYI7uYqkBiSyu4UAmjri9	0	0	
4cOY0iUSp0UERCk4I23uoH	{"canadian folk"}	Ariana Gillis	28	https://api.spotify.com/v1/artists/4cOY0iUSp0UERCk4I23uoH	640	640	https://i.scdn.co/image/ab6761610000e5eb0778d7a1661a4e71f8490e1e
3ga5L7qMI06NaxNFj1rIWa	{}	ariana greny	9	https://api.spotify.com/v1/artists/3ga5L7qMI06NaxNFj1rIWa	640	640	https://i.scdn.co/image/ab67616d0000b2735ca0c67a762c0be86cf2f3a7
6oDAugLEiz4mYjZga0iP3Y	{}	Ariana Marroquín	31	https://api.spotify.com/v1/artists/6oDAugLEiz4mYjZga0iP3Y	640	640	https://i.scdn.co/image/ab6761610000e5ebb5ef50e005df002b4facf88d
380s7W9WNGrjTgAD9GSTn4	{}	Ariana Rey	28	https://api.spotify.com/v1/artists/380s7W9WNGrjTgAD9GSTn4	640	640	https://i.scdn.co/image/ab67616d0000b27308a295abff6daf5e4d0da7a0
5HgPIUp6b7DVdhWK3tkl83	{}	Ariana and the Rose	22	https://api.spotify.com/v1/artists/5HgPIUp6b7DVdhWK3tkl83	640	640	https://i.scdn.co/image/ab6761610000e5eb456c82553e0efcb7e13365b1
3PyJHH2wyfQK3WZrk9rpmP	{"alt z","escape room"}	Ashnikko	74	https://api.spotify.com/v1/artists/3PyJHH2wyfQK3WZrk9rpmP	640	640	https://i.scdn.co/image/ab6761610000e5eb12393f2112b9496d048b6736
2vd2HnNh4pdYa9gDVHFjEu	{"alternative metal","christian metal","melodic metalcore",metalcore,"nu metal"}	As I Lay Dying	62	https://api.spotify.com/v1/artists/2vd2HnNh4pdYa9gDVHFjEu	640	640	https://i.scdn.co/image/ab6761610000e5eb8f72b126ff150aff04fea7d3
1caBfBEapzw8z2Qz9q0OaQ	{"alternative metal",metalcore,"pop punk",post-grunge,trancecore,"uk metalcore"}	Asking Alexandria	66	https://api.spotify.com/v1/artists/1caBfBEapzw8z2Qz9q0OaQ	640	640	https://i.scdn.co/image/ab6761610000e5ebd07f0b3d8b5c9576f15f1fb1
5rkVyNGXEgeUqKkB5ccK83	{"dance pop","hip pop",r&b,"urban contemporary"}	Ashanti	73	https://api.spotify.com/v1/artists/5rkVyNGXEgeUqKkB5ccK83	640	640	https://i.scdn.co/image/ab6761610000e5eb1ebb81323a96e465ad20b932
6P5NO5hzJbuOqSdyPB7SJM	{"alt z"}	Ashe	70	https://api.spotify.com/v1/artists/6P5NO5hzJbuOqSdyPB7SJM	640	640	https://i.scdn.co/image/ab6761610000e5ebb050124f9b78ef36d375cdbb
371jpyGdoChzUASOIG2ECV	{"arkansas country","contemporary country",country,"country road"}	Ashley McBryde	55	https://api.spotify.com/v1/artists/371jpyGdoChzUASOIG2ECV	640	640	https://i.scdn.co/image/ab6761610000e5ebc6c4251dcfed58fdb6599f8b
6c6AFxe8TNGpwn9HknlFja	{}	Aszait	15	https://api.spotify.com/v1/artists/6c6AFxe8TNGpwn9HknlFja	640	640	https://i.scdn.co/image/ab6761610000e5eb2f2f32fe47d690d546978c35
1ntDn3k9ydbY02Ownpobt4	{}	Azshara	12	https://api.spotify.com/v1/artists/1ntDn3k9ydbY02Ownpobt4	640	640	https://i.scdn.co/image/ab6761610000e5eba405c55683ff306d7365116d
3WaFfvDfmyim9uB0r5jrBb	{}	ASZA	8	https://api.spotify.com/v1/artists/3WaFfvDfmyim9uB0r5jrBb	640	640	https://i.scdn.co/image/ab67616d0000b27325a5836d5cedbc3b2ba16a2b
6fqjJNsLs7g6F3PXy01Xnw	{"cali rap"}	AzChike	70	https://api.spotify.com/v1/artists/6fqjJNsLs7g6F3PXy01Xnw	640	640	https://i.scdn.co/image/ab6761610000e5eba248322fd54646c0d43192c6
5b7Q9zgjfCrre6K3VBm7Ky	{}	Aszni	6	https://api.spotify.com/v1/artists/5b7Q9zgjfCrre6K3VBm7Ky	0	0	
2k5DY2QDU3kBi5DX7OQlWj	{"tech house"}	Azzecca	42	https://api.spotify.com/v1/artists/2k5DY2QDU3kBi5DX7OQlWj	640	640	https://i.scdn.co/image/ab6761610000e5eb323a8cecfc571cb4dc557f33
0L49ToWbSbrtWTicggirnK	{}	Amin ASZ	24	https://api.spotify.com/v1/artists/0L49ToWbSbrtWTicggirnK	640	640	https://i.scdn.co/image/ab6761610000e5ebc8ccfbb7a7259cca23477e90
7gRhy3MIPHQo5CXYfWaw9I	{"escape room","hip house","lgbtq+ hip hop","trap queen"}	Azealia Banks	65	https://api.spotify.com/v1/artists/7gRhy3MIPHQo5CXYfWaw9I	640	640	https://i.scdn.co/image/ab6761610000e5eb1b227136246869eb248cafef
3UCi24E4GZghILezsKJml9	{}	Aszu	5	https://api.spotify.com/v1/artists/3UCi24E4GZghILezsKJml9	640	640	https://i.scdn.co/image/ab6761610000e5ebdaf347b5e57b12f28d6ae3ce
1sVmXkzX2ukc6QvasrDBES	{"desi pop",filmi,"modern bollywood"}	Asees Kaur	73	https://api.spotify.com/v1/artists/1sVmXkzX2ukc6QvasrDBES	640	640	https://i.scdn.co/image/ab6761610000e5eb3f765cdf4d31f22a2ffed8be
5ct8AlcDgWMp4O25vbcjpC	{"video game music"}	Assassin's Creed	64	https://api.spotify.com/v1/artists/5ct8AlcDgWMp4O25vbcjpC	640	640	https://i.scdn.co/image/ab6761610000e5ebcd219b884bd0120e8cde48bc
1dwRnam2taNMv8H3VR6isd	{"jam band"}	Assembly of Dust	29	https://api.spotify.com/v1/artists/1dwRnam2taNMv8H3VR6isd	640	640	https://i.scdn.co/image/ab6761610000e5eb50440967afe639afc0b30f10
2kuNswDC82PL9xRbfaZJaS	{"bubblegum pop","classic garage rock","country rock","folk rock","mellow gold",singer-songwriter,"soft rock","sunshine pop"}	The Association	47	https://api.spotify.com/v1/artists/2kuNswDC82PL9xRbfaZJaS	977	1000	https://i.scdn.co/image/12b6e1639f825d48564b201aec846639bade25d8
6MQnUjIjnIOfHDFzqBJOAl	{"arab pop","classic arab pop",khaliji,"syrian pop"}	Assala Nasri	60	https://api.spotify.com/v1/artists/6MQnUjIjnIOfHDFzqBJOAl	640	640	https://i.scdn.co/image/ab6761610000e5eb8277d8746def29edc194708f
3tqosLbNFNekyZyO2KJ6qd	{"cali rap"}	Mike Sherm	68	https://api.spotify.com/v1/artists/3tqosLbNFNekyZyO2KJ6qd	640	640	https://i.scdn.co/image/ab6761610000e5eb6c1b1df5d31def15ddae9d69
1GKYNY4rIPnOuTfC0J1IWw	{ccm,"deep ccm","roots worship"}	Audrey Assad	59	https://api.spotify.com/v1/artists/1GKYNY4rIPnOuTfC0J1IWw	640	640	https://i.scdn.co/image/ab6761610000e5eb18b8703bced62bbf1983a1a0
4DMQiWPgJwVnIn7pmURP6n	{}	ASS	5	https://api.spotify.com/v1/artists/4DMQiWPgJwVnIn7pmURP6n	640	640	https://i.scdn.co/image/ab67616d0000b273cde82f8ac08e519e3ec2e9e6
76o2j4IrL2Tkj3EhokRVQF	{environmental}	Lluvia PQ	34	https://api.spotify.com/v1/artists/76o2j4IrL2Tkj3EhokRVQF	640	640	https://i.scdn.co/image/ab67616d0000b273f79119d7d275238691f5646f
3JjvsPeGMbDJqsphe2z8xU	{k-pop,"k-pop boy group"}	P1Harmony	65	https://api.spotify.com/v1/artists/3JjvsPeGMbDJqsphe2z8xU	640	640	https://i.scdn.co/image/ab6761610000e5ebd98405c251c8c0e1e0839ada
4VRbszUcidhNZpdjxbwgzB	{}	PQM	8	https://api.spotify.com/v1/artists/4VRbszUcidhNZpdjxbwgzB	640	640	https://i.scdn.co/image/ab67616d0000b273149ade6547ff2a47668e428e
3dpoYRManj6SfCZIGHO0HH	{"classic progressive house"}	PQM	15	https://api.spotify.com/v1/artists/3dpoYRManj6SfCZIGHO0HH	640	640	https://i.scdn.co/image/ab67616d0000b27383b5deae4d8319e866aa56f3
4KEHIUSoWCcqrk8AddTE1O	{"diy emo","dream pop",zoomergaze}	Panchiko	62	https://api.spotify.com/v1/artists/4KEHIUSoWCcqrk8AddTE1O	640	640	https://i.scdn.co/image/ab6761610000e5eb714fa6e5682f730d0c82609c
1bomaUCAZ9rmUa3t76d03O	{}	3300PQ	18	https://api.spotify.com/v1/artists/1bomaUCAZ9rmUa3t76d03O	0	0	
55kVVkR2XiJoKzdfb7nkEP	{"funk consciente","funk ostentacao"}	MC PQD	34	https://api.spotify.com/v1/artists/55kVVkR2XiJoKzdfb7nkEP	640	640	https://i.scdn.co/image/ab6761610000e5eb9398c5dd2722f6eb7066bc20
2u1aL8XADqj0nJFHMKRjNw	{"viral rap"}	ppcocaine	53	https://api.spotify.com/v1/artists/2u1aL8XADqj0nJFHMKRjNw	640	640	https://i.scdn.co/image/ab6761610000e5eb71d43e93bbe6d95f30217eb8
3VVkGhgmHXSOGqxVLqSkzT	{}	ppom	39	https://api.spotify.com/v1/artists/3VVkGhgmHXSOGqxVLqSkzT	640	640	https://i.scdn.co/image/ab67616d0000b273f402ff46eb99c52d10d3bc55
5F1aAS1duwlzExnPs3l2Xe	{"memphis hip hop","southern hip hop","tennessee hip hop",trap}	Pooh Shiesty	69	https://api.spotify.com/v1/artists/5F1aAS1duwlzExnPs3l2Xe	640	640	https://i.scdn.co/image/ab6761610000e5eb1dfee43816a04d0a3f89bb15
2tB09djNHoTug9dRlPY30k	{asmr}	ASMR PPOMO	39	https://api.spotify.com/v1/artists/2tB09djNHoTug9dRlPY30k	640	640	https://i.scdn.co/image/ab6761610000e5ebd987a68a05f5cac4a9fab4da
6lXKYUh0HSPl13s1aQNZcw	{glitchcore}	pposture	8	https://api.spotify.com/v1/artists/6lXKYUh0HSPl13s1aQNZcw	640	640	https://i.scdn.co/image/ab6761610000e5eba181077b8a0f3cff35fccc23
5x5u5ZCzIaSfcI8kwYt71y	{}	Ppoiid	15	https://api.spotify.com/v1/artists/5x5u5ZCzIaSfcI8kwYt71y	640	640	https://i.scdn.co/image/ab67616d0000b273c1d3bcb3a5bcfb405d84a276
0YHgnSkV3S5mvSSCTRWDi5	{deathgrass}	Poor Man's Poison	66	https://api.spotify.com/v1/artists/0YHgnSkV3S5mvSSCTRWDi5	640	640	https://i.scdn.co/image/ab6761610000e5eb722d0d90fff7b80f6ec6a6a2
6PXtKR8Yaw5DS6s00igKiX	{}	P.Pospíchal	21	https://api.spotify.com/v1/artists/6PXtKR8Yaw5DS6s00igKiX	0	0	
0eDvMgVFoNV3TpwtrVCoTj	{"brooklyn drill","hip hop",rap}	Pop Smoke	80	https://api.spotify.com/v1/artists/0eDvMgVFoNV3TpwtrVCoTj	640	640	https://i.scdn.co/image/ab6761610000e5eb597f9edd2cd1a892d4412b09
5zpNiDA9xLFWQfPCJOQNGN	{agronejo,sertanejo,"sertanejo pop","sertanejo universitario"}	Pedro Paulo & Alex	63	https://api.spotify.com/v1/artists/5zpNiDA9xLFWQfPCJOQNGN	640	640	https://i.scdn.co/image/ab6761610000e5ebe7970eaa2ae92190ca46793b
1xrRqVDsJaZPw0sXme5i2T	{t-pop}	PP Krit	60	https://api.spotify.com/v1/artists/1xrRqVDsJaZPw0sXme5i2T	640	640	https://i.scdn.co/image/ab6761610000e5ebef1b22d1cac337f7981fdf83
6kGGvTWOWaF26tZF5hy19z	{"acid trance",sovietwave}	PPK	35	https://api.spotify.com/v1/artists/6kGGvTWOWaF26tZF5hy19z	640	640	https://i.scdn.co/image/ab6761610000e5eb8446233d59f7942677935e3c
6yZgSbQMnAFpQRgv7EMRzZ	{"cloud rap","emo rap"}	Caspr	37	https://api.spotify.com/v1/artists/6yZgSbQMnAFpQRgv7EMRzZ	640	640	https://i.scdn.co/image/ab6761610000e5eb212568e6c589e20668dbd477
5TjpsMnYz8lxTr91olqbEh	{soul}	P.P. Arnold	33	https://api.spotify.com/v1/artists/5TjpsMnYz8lxTr91olqbEh	640	640	https://i.scdn.co/image/ab6761610000e5ebd27a128d593241beef4e6f68
4aCvJneLXFoKTe1919Zk0J	{}	PPF	37	https://api.spotify.com/v1/artists/4aCvJneLXFoKTe1919Zk0J	640	640	https://i.scdn.co/image/ab6761610000e5ebe65a2d1b4f1bc25ceff89b35
5mlbvTfWUOfDrUIK6dkNzv	{"alt z"}	Poppy	69	https://api.spotify.com/v1/artists/5mlbvTfWUOfDrUIK6dkNzv	640	640	https://i.scdn.co/image/ab6761610000e5ebdee6c517fd076a2f1f8a2723
5NGO30tJxFlKixkPSgXcFE	{"album rock","classic rock","permanent wave",rock}	The Police	78	https://api.spotify.com/v1/artists/5NGO30tJxFlKixkPSgXcFE	641	1000	https://i.scdn.co/image/1f73a61faca2942cd5ea29c2143184db8645f0b3
4nXOZlYoAD67hF9aUEncMY	{"cloud rap","dark trap","miami hip hop","underground hip hop"}	Pouya	70	https://api.spotify.com/v1/artists/4nXOZlYoAD67hF9aUEncMY	640	640	https://i.scdn.co/image/ab6761610000e5ebaf092b39f981fdcfb5e72d2c
3dz0NnIZhtKKeXZxLOxCam	{complextro,edm,"electro house","pop dance","progressive electro house"}	Porter Robinson	65	https://api.spotify.com/v1/artists/3dz0NnIZhtKKeXZxLOxCam	640	640	https://i.scdn.co/image/ab6761610000e5eb1ac12dcb2cc4fc7c740c5e0c
4vGrte8FDu062Ntj0RsPiZ	{"instrumental rock"}	Polyphia	62	https://api.spotify.com/v1/artists/4vGrte8FDu062Ntj0RsPiZ	640	640	https://i.scdn.co/image/ab6761610000e5ebd0d5560f6b2ebe39a6d20704
2KsP6tYLJlTBvSUxnwlVWa	{"dance pop",pop,"pop dance","pop rap"}	Mike Posner	71	https://api.spotify.com/v1/artists/2KsP6tYLJlTBvSUxnwlVWa	640	640	https://i.scdn.co/image/ab6761610000e5eb5ca6c70cd9661b2eca98999f
6bmlMHgSheBauioMgKv2tn	{"sad lo-fi","sad rap"}	Powfu	70	https://api.spotify.com/v1/artists/6bmlMHgSheBauioMgKv2tn	640	640	https://i.scdn.co/image/ab6761610000e5eba7978c860303da52742e7551
3TmaQHOfq1olDKHtE38zYT	{"crossover thrash","new wave of thrash metal","sludge metal","texas hardcore","thrash metal"}	Power Trip	45	https://api.spotify.com/v1/artists/3TmaQHOfq1olDKHtE38zYT	640	640	https://i.scdn.co/image/ab6761610000e5ebf4cdcf0affdd2438366226ac
5imUS9dQyCbAjUEJJ9QyWC	{"alternative metal","funk metal","industrial metal","nu metal","rap metal"}	Powerman 5000	54	https://api.spotify.com/v1/artists/5imUS9dQyCbAjUEJJ9QyWC	640	640	https://i.scdn.co/image/ab6761610000e5eb0f957682f8d10f3cc8c81b69
0fYw4bch7qTxBZLS3rSVMj	{"underground hip hop"}	Powers Pleasant	54	https://api.spotify.com/v1/artists/0fYw4bch7qTxBZLS3rSVMj	640	640	https://i.scdn.co/image/ab6761610000e5ebdea9b27120f2891bd6941fce
3GghVvugpv9nXQ2YFzZNzN	{"workout product"}	Power Music Workout	53	https://api.spotify.com/v1/artists/3GghVvugpv9nXQ2YFzZNzN	640	640	https://i.scdn.co/image/ab6761610000e5eb74b47c77fa46343b84ddc0fb
7cTXTmhaqdEVifI1B33cnx	{cartoon}	Power Rangers	42	https://api.spotify.com/v1/artists/7cTXTmhaqdEVifI1B33cnx	640	640	https://i.scdn.co/image/ab67616d0000b27393526e60e9350aabbd07b4bf
3EAHF3jdnHHdko5DBrhRUP	{"british soundtrack","orchestral soundtrack",soundtrack}	John Powell	66	https://api.spotify.com/v1/artists/3EAHF3jdnHHdko5DBrhRUP	640	640	https://i.scdn.co/image/ab6761610000e5eb7407d140005a90a2fcb34c43
3aycZMYDTnN0trM2XnTI4Y	{"5th gen k-pop"}	POW	46	https://api.spotify.com/v1/artists/3aycZMYDTnN0trM2XnTI4Y	640	640	https://i.scdn.co/image/ab6761610000e5eb0d37f930c647ec323dc6852b
3Alz3IxsrOfvx4mpnJ8dLl	{"color noise","white noise"}	Power of Noise	48	https://api.spotify.com/v1/artists/3Alz3IxsrOfvx4mpnJ8dLl	640	640	https://i.scdn.co/image/ab67616d0000b2737a054607d0a8a3632f0b0d3e
6J0DfXSDiMxIHVrnRcDn7M	{"comic metal"}	Powerglove	34	https://api.spotify.com/v1/artists/6J0DfXSDiMxIHVrnRcDn7M	640	640	https://i.scdn.co/image/ab6761610000e5eb98e7d273258510de38ab3da8
2Y2xczQZGeREFBYrHHqNeM	{}	POWE	0	https://api.spotify.com/v1/artists/2Y2xczQZGeREFBYrHHqNeM	0	0	
5a2EaR3hamoenG9rDuVn8j	{funk,"funk rock","minneapolis sound",rock,"synth funk"}	Prince	72	https://api.spotify.com/v1/artists/5a2EaR3hamoenG9rDuVn8j	640	640	https://i.scdn.co/image/ab6761610000e5ebeaca358712b3fe4ed9814640
0PtAKo6lD6mflcFF1qU1Ev	{}	Power	11	https://api.spotify.com/v1/artists/0PtAKo6lD6mflcFF1qU1Ev	640	640	https://i.scdn.co/image/ab67616d0000b273424e6127e88d946338084b2d
0PGB0xsAyDqHHlvNQcgq5S	{"indie poptimism","la pop"}	POWERS	45	https://api.spotify.com/v1/artists/0PGB0xsAyDqHHlvNQcgq5S	640	640	https://i.scdn.co/image/ab6761610000e5eb1c3c536939713fdfc8fd27ab
1EemADz12kjlGwkpY4EINv	{"dance rock","new romantic","new wave","new wave pop"}	The Power Station	38	https://api.spotify.com/v1/artists/1EemADz12kjlGwkpY4EINv	715	999	https://i.scdn.co/image/a56b9a8e2b869d2d454a39a0824532aa56790711
0hrMKLqgNEIemiF4Ag8dTI	{hyper-rock}	Sophie Powers	49	https://api.spotify.com/v1/artists/0hrMKLqgNEIemiF4Ag8dTI	640	640	https://i.scdn.co/image/ab6761610000e5eb692e965f9db1a837431f8ddc
4VvUmr1EbU5VUNigyfqjim	{"neon pop punk",pixie}	Powerspace	9	https://api.spotify.com/v1/artists/4VvUmr1EbU5VUNigyfqjim	640	640	https://i.scdn.co/image/ab67616d0000b273873c6699aa1a62d4f6f927c1
4X8TR9pBFyewFlIDYt1o2s	{"sad rap"}	Kevin Powers	47	https://api.spotify.com/v1/artists/4X8TR9pBFyewFlIDYt1o2s	640	640	https://i.scdn.co/image/ab6761610000e5ebbb8347c63b07757e58d98703
6mdiAmATAx73kdxrNrnlao	{"alternative metal","hard rock",metal,nwobhm,rock}	Iron Maiden	75	https://api.spotify.com/v1/artists/6mdiAmATAx73kdxrNrnlao	640	640	https://i.scdn.co/image/ab6761610000e5ebf9978ad4808f6f2723124d19
65BxFegOKWTiwG3DGCckef	{"antiviral pop",otacore,pixel}	Markiplier	46	https://api.spotify.com/v1/artists/65BxFegOKWTiwG3DGCckef	640	640	https://i.scdn.co/image/ab67616d0000b273b035aed922befe259a1e2800
4qEGLVNJT3OfCqBKsRHvcG	{}	Power's Out	1	https://api.spotify.com/v1/artists/4qEGLVNJT3OfCqBKsRHvcG	640	640	https://i.scdn.co/image/ab6761610000e5eb9f5ff5bc56d17857e4b6e6f5
18lNSN6X6zTKS4zBaNRbXX	{}	Powers and the People	4	https://api.spotify.com/v1/artists/18lNSN6X6zTKS4zBaNRbXX	640	640	https://i.scdn.co/image/ab6761610000e5ebf56c67bfc94e38f8325066d6
2kDXtCACfXXLm0pJ9jPfUG	{"california hardcore","crust punk",grindcore,"hardcore punk",powerviolence,"thrash core"}	Spazz	31	https://api.spotify.com/v1/artists/2kDXtCACfXXLm0pJ9jPfUG	640	640	https://i.scdn.co/image/ab67616d0000b27300a921fa13ac3d7e8809ecc3
6s22t5Y3prQHyaHWUN1R1C	{"pov: indie"}	AJR	73	https://api.spotify.com/v1/artists/6s22t5Y3prQHyaHWUN1R1C	640	640	https://i.scdn.co/image/ab6761610000e5ebe65fa0329c232ac6f5040f80
6mEQK9m2krja6X1cfsAjfl	{"japanese teen pop"}	Ado	76	https://api.spotify.com/v1/artists/6mEQK9m2krja6X1cfsAjfl	640	640	https://i.scdn.co/image/ab6761610000e5ebf3bb04995cb61f04936424ee
6pV5zH2LzjOUHaAvENdMMa	{corrido}	Neton Vega	84	https://api.spotify.com/v1/artists/6pV5zH2LzjOUHaAvENdMMa	640	640	https://i.scdn.co/image/ab6761610000e5eba3870e9e7f452ee529131108
2jl4qd6UbzeCmImT4nWbtA	{}	Nettspend	64	https://api.spotify.com/v1/artists/2jl4qd6UbzeCmImT4nWbtA	640	640	https://i.scdn.co/image/ab6761610000e5eba73de6811e4e94321bfd2239
21E3waRsmPlU7jZsS13rcj	{"dance pop",pop,r&b,"urban contemporary"}	Ne-Yo	83	https://api.spotify.com/v1/artists/21E3waRsmPlU7jZsS13rcj	640	640	https://i.scdn.co/image/ab6761610000e5ebca118e3822061f7b7f6bc537
2gBjLmx6zQnFGQJCAQpRgw	{"dance pop","gangster rap","hip hop","pop rap",rap,"st louis rap","urban contemporary"}	Nelly	76	https://api.spotify.com/v1/artists/2gBjLmx6zQnFGQJCAQpRgw	749	1000	https://i.scdn.co/image/3677690af58abb70a5c5fd58d69db4d1ad705d4f
6v8FB84lnmJs434UJf2Mrm	{"canadian singer-songwriter","classic canadian rock","classic rock","folk rock","mellow gold","permanent wave",rock,"roots rock",singer-songwriter}	Neil Young	69	https://api.spotify.com/v1/artists/6v8FB84lnmJs434UJf2Mrm	640	640	https://i.scdn.co/image/ab6761610000e5ebbae8276dffd864ebac759b76
2jw70GZXlAI8QzWeY2bgRc	{"canadian latin","canadian pop","dance pop",pop}	Nelly Furtado	78	https://api.spotify.com/v1/artists/2jw70GZXlAI8QzWeY2bgRc	640	640	https://i.scdn.co/image/ab6761610000e5ebd2ce0bf5614b54bd44e059d5
5W5bDNCqJ1jbCgTxDD0Cb3	{"classic country pop","classic texas country",country,"country rock","nashville sound","outlaw country",singer-songwriter}	Willie Nelson	72	https://api.spotify.com/v1/artists/5W5bDNCqJ1jbCgTxDD0Cb3	1000	1000	https://i.scdn.co/image/ab6772690000c46c82a531f8f5067e13517f5b15
6fOMl44jA4Sp5b9PpYCkzz	{"hip hop","pop rap"}	NF	80	https://api.spotify.com/v1/artists/6fOMl44jA4Sp5b9PpYCkzz	640	640	https://i.scdn.co/image/ab6761610000e5eb1cf142a710a2f3d9b7a62da1
7wlFDEWiM5OoIAt8RSli8b	{"baton rouge rap",rap}	YoungBoy Never Broke Again	83	https://api.spotify.com/v1/artists/7wlFDEWiM5OoIAt8RSli8b	640	640	https://i.scdn.co/image/ab6761610000e5ebb1d6eaf7ad3417765577cac4
6deZN1bslXzeGvOLaLMOIF	{"alternative metal","canadian rock",post-grunge}	Nickelback	80	https://api.spotify.com/v1/artists/6deZN1bslXzeGvOLaLMOIF	640	640	https://i.scdn.co/image/ab6761610000e5eb4ad382f899596d8c7b9e8e09
0elWFr7TW8piilVRYJUe4P	{corrido,"corridos tumbados","musica mexicana","sad sierreno",sierreno}	Natanael Cano	89	https://api.spotify.com/v1/artists/0elWFr7TW8piilVRYJUe4P	640	640	https://i.scdn.co/image/ab6761610000e5eb7e2078873c8ccd9f968de1cf
0ErzCpIMyLcjPiwT4elrtZ	{"memphis hip hop",rap}	NLE Choppa	81	https://api.spotify.com/v1/artists/0ErzCpIMyLcjPiwT4elrtZ	640	640	https://i.scdn.co/image/ab6761610000e5ebe2c985e8509fc8788a5a5208
0yNLKJebCb8Aueb54LYya3	{"alternative rock","dance rock",madchester,"new romantic","new wave","permanent wave",post-punk,synthpop,"uk post-punk"}	New Order	67	https://api.spotify.com/v1/artists/0yNLKJebCb8Aueb54LYya3	640	640	https://i.scdn.co/image/ab6761610000e5eba080a8e96758f416301578f9
4ghjRm4M2vChDfTUycx0Ce	{easycore,"neon pop punk","pop punk"}	New Found Glory	59	https://api.spotify.com/v1/artists/4ghjRm4M2vChDfTUycx0Ce	640	640	https://i.scdn.co/image/ab6761610000e5eb700da92fd7837bba20d58713
69bG9tC62d8oTFC9aTTosn	{"toronto indie"}	New West	71	https://api.spotify.com/v1/artists/69bG9tC62d8oTFC9aTTosn	640	640	https://i.scdn.co/image/ab6761610000e5eb32a5faa77c82348cf5d13590
1mFX1QlezK1lNPKQJkhwWb	{"boy band","contemporary r&b","new jack swing",r&b,"urban contemporary"}	New Edition	59	https://api.spotify.com/v1/artists/1mFX1QlezK1lNPKQJkhwWb	1376	1000	https://i.scdn.co/image/44e1b32aa085bd943fabd36678804d3fd3b8fb67
1csBgT42N4pPPs1HJhxXIK	{"orchestral soundtrack",soundtrack}	Thomas Newman	65	https://api.spotify.com/v1/artists/1csBgT42N4pPPs1HJhxXIK	640	640	https://i.scdn.co/image/ab6761610000e5eb57d373e62254d0aba7d663d9
1SZMaiNHfdUuU0qZKZ6y62	{ccm,"christian alternative rock","christian music"}	Newsboys	59	https://api.spotify.com/v1/artists/1SZMaiNHfdUuU0qZKZ6y62	640	640	https://i.scdn.co/image/ab6761610000e5ebf73abfd8875cf2d603b86bb3
55qiaow2sDYtjqu1mwRua6	{"boy band"}	New Kids On The Block	57	https://api.spotify.com/v1/artists/55qiaow2sDYtjqu1mwRua6	640	640	https://i.scdn.co/image/ab6761610000e5ebafbfd2419f09f43d625c2a3e
3driPpCh1JEUnPFKGyHXDr	{post-grunge}	New Medicine	60	https://api.spotify.com/v1/artists/3driPpCh1JEUnPFKGyHXDr	640	640	https://i.scdn.co/image/ab6761610000e5eb1211fa20d1de8cf6a1b94351
3V55LhyAuJhGcDacGbj6ez	{}	NEW	3	https://api.spotify.com/v1/artists/3V55LhyAuJhGcDacGbj6ez	640	640	https://i.scdn.co/image/ab67616d0000b273fa5d234475d6f63d3eb58a09
4QLa9DWZEpFrBhNG5UWXF1	{charva}	NewEra	56	https://api.spotify.com/v1/artists/4QLa9DWZEpFrBhNG5UWXF1	640	640	https://i.scdn.co/image/ab6761610000e5eb3f99f312abf74c66c939071d
2ztuZ95DKP7O7DDAxCKYen	{t-pop}	Newery	51	https://api.spotify.com/v1/artists/2ztuZ95DKP7O7DDAxCKYen	640	640	https://i.scdn.co/image/ab6761610000e5eb037fa8c91d35bc7bc3650136
7vu3z34rL6rJiJVJyi9CfD	{"baroque ensemble","classical performance","italian baroque ensemble"}	Accademia Bizantina	41	https://api.spotify.com/v1/artists/7vu3z34rL6rJiJVJyi9CfD	640	640	https://i.scdn.co/image/ab6761610000e5eb15b623264c974339466614ef
41MozSoPIsD1dJM0CLPjZF	{k-pop,"k-pop girl group",pop}	BLACKPINK	81	https://api.spotify.com/v1/artists/41MozSoPIsD1dJM0CLPjZF	640	640	https://i.scdn.co/image/ab6761610000e5ebc9690bc711d04b3d4fd4b87c
5Hz3IW691fbgGqLk4yvlNN	{"social media pop"}	Tayler Holder	50	https://api.spotify.com/v1/artists/5Hz3IW691fbgGqLk4yvlNN	640	640	https://i.scdn.co/image/ab6761610000e5eb3a6189c4f1d6223058cf52eb
5xkFVS6IwwgHEAaRzXc9U3	{"memphis hip hop"}	Tay Keith	62	https://api.spotify.com/v1/artists/5xkFVS6IwwgHEAaRzXc9U3	640	640	https://i.scdn.co/image/ab6761610000e5eb068e85220fa3811a3ada928d
7gU9VyFRN3JWPJ5oHOil60	{"pop urbaine","r&b francais"}	Tayc	74	https://api.spotify.com/v1/artists/7gU9VyFRN3JWPJ5oHOil60	640	640	https://i.scdn.co/image/ab6761610000e5eb986f5e1c6f66dc40537407c3
1A0WloDoRE88uUwo3wensY	{"singer-songwriter pop"}	Taylor Acorn	57	https://api.spotify.com/v1/artists/1A0WloDoRE88uUwo3wensY	640	640	https://i.scdn.co/image/ab6761610000e5eb9dafd3869c0ebb815a367ad7
1294QqYm1VuxxjRiL9M0h9	{"alt z","modern indie pop"}	UPSAHL	59	https://api.spotify.com/v1/artists/1294QqYm1VuxxjRiL9M0h9	640	640	https://i.scdn.co/image/ab6761610000e5eb631c9afc72085c1cfc50a923
58nB2Z6IiDdTUTwHYw56xI	{redneck}	Taylor Ray Holbrook	53	https://api.spotify.com/v1/artists/58nB2Z6IiDdTUTwHYw56xI	640	640	https://i.scdn.co/image/ab6761610000e5eba0fc6e8727e4183e95e344f7
0vn7UBvSQECKJm2817Yf1P	{"classic rock",folk,"folk rock","mellow gold",singer-songwriter,"soft rock"}	James Taylor	68	https://api.spotify.com/v1/artists/0vn7UBvSQECKJm2817Yf1P	640	640	https://i.scdn.co/image/ab6761610000e5eb5921cb8f2ec7bf6b5e725bcc
32lVGr0fSRGT6okLKHiP68	{freestyle,hi-nrg,"new romantic","new wave pop","soft rock",synthpop}	Taylor Dayne	57	https://api.spotify.com/v1/artists/32lVGr0fSRGT6okLKHiP68	640	640	https://i.scdn.co/image/ab6761610000e5ebb38a27d7686117d36d5a526a
790FomKkXshlbRYZFtlgla	{reggaeton,"reggaeton colombiano","urbano latino"}	KAROL G	91	https://api.spotify.com/v1/artists/790FomKkXshlbRYZFtlgla	640	640	https://i.scdn.co/image/ab6761610000e5eb4b0754aefc9db490e02205ec
46SHBwWsqBkxI7EeeBEQG7	{"florida drill","florida rap","melodic rap","miami hip hop",rap,trap,"trap latino"}	Kodak Black	82	https://api.spotify.com/v1/artists/46SHBwWsqBkxI7EeeBEQG7	640	640	https://i.scdn.co/image/ab6761610000e5eb70c05cf4dc9a7d3ffd02ba19
6LqNN22kT3074XbTVUrhzX	{"dance pop",pop}	Kesha	81	https://api.spotify.com/v1/artists/6LqNN22kT3074XbTVUrhzX	640	640	https://i.scdn.co/image/ab6761610000e5eb2ac07249400857d8b16dc17a
3RqBeV12Tt7A8xH3zBDDUF	{"contemporary country",country}	Kelsea Ballerini	74	https://api.spotify.com/v1/artists/3RqBeV12Tt7A8xH3zBDDUF	640	640	https://i.scdn.co/image/ab6761610000e5ebb66b3897322ef6750b37afb4
1gPhS1zisyXr5dHTYZyiMe	{"baton rouge rap","pop rap",rap,"southern hip hop",trap}	Kevin Gates	73	https://api.spotify.com/v1/artists/1gPhS1zisyXr5dHTYZyiMe	640	640	https://i.scdn.co/image/ab6761610000e5eb180a7912dbf0e40790292ba3
0RESbWvOMyua0yuyVrztJ5	{"memphis hip hop",rap,"southern hip hop","tennessee hip hop",trap}	Key Glock	77	https://api.spotify.com/v1/artists/0RESbWvOMyua0yuyVrztJ5	640	640	https://i.scdn.co/image/ab6761610000e5ebf41237ee3772ce99a8f92cb5
0cGUm45nv7Z6M6qdXYQGTX	{pop,r&b,rap}	Kehlani	77	https://api.spotify.com/v1/artists/0cGUm45nv7Z6M6qdXYQGTX	640	640	https://i.scdn.co/image/ab6761610000e5eb7c1477b5efba46636dbe1874
3BmGtnKgCSGYIUhmivXKWX	{"dance pop",pop,"talent show"}	Kelly Clarkson	80	https://api.spotify.com/v1/artists/3BmGtnKgCSGYIUhmivXKWX	640	640	https://i.scdn.co/image/ab6761610000e5eb1dd7d8fbcaa03fca3619b644
3pc0bOVB5whxmD50W79wwO	{"chill r&b"}	keshi	78	https://api.spotify.com/v1/artists/3pc0bOVB5whxmD50W79wwO	640	640	https://i.scdn.co/image/ab6761610000e5ebe6f96cf550aeaf3a51d6a0bb
3grHWM9bx2E9vwJCdlRv9O	{"contemporary country",country,"country road"}	Kenny Chesney	71	https://api.spotify.com/v1/artists/3grHWM9bx2E9vwJCdlRv9O	640	640	https://i.scdn.co/image/ab6761610000e5eb5de44c9558a47909debca2cd
6I3M904Y9IwgDjrQ9pANiB	{"smooth jazz","smooth saxophone"}	Kenny G	67	https://api.spotify.com/v1/artists/6I3M904Y9IwgDjrQ9pANiB	640	640	https://i.scdn.co/image/ab6761610000e5ebfce79bf01d99f9434108b56e
4tw2Lmn9tTPUv7Gy7mVPI4	{"classic country pop",country,"nashville sound","soft rock"}	Kenny Rogers	72	https://api.spotify.com/v1/artists/4tw2Lmn9tTPUv7Gy7mVPI4	640	640	https://i.scdn.co/image/ab6761610000e5eb43eec847b2e3aaa5f4edbd23
31VFEohvhOUKrtAONEBhMG	{"latin viral pop","urbano mexicano"}	Kenia OS	77	https://api.spotify.com/v1/artists/31VFEohvhOUKrtAONEBhMG	640	640	https://i.scdn.co/image/ab6761610000e5ebdcb3728154b37101ca529ad7
1snhtMLeb2DYoMOcVbb8iB	{anime,j-pop}	Kenshi Yonezu	75	https://api.spotify.com/v1/artists/1snhtMLeb2DYoMOcVbb8iB	640	640	https://i.scdn.co/image/ab6761610000e5ebd7ca899f6e53b54976a8594b
3Y3xIwWyq5wnNHPp5gPjOW	{"album rock","classic rock","mellow gold","new wave pop",singer-songwriter,"soft rock","yacht rock"}	Kenny Loggins	68	https://api.spotify.com/v1/artists/3Y3xIwWyq5wnNHPp5gPjOW	640	640	https://i.scdn.co/image/ab6761610000e5ebe5ade0d346536449c7a75b48
1WMwuNKzEFtU6pPkdtryYS	{reggaeton,"reggaeton flow","trap latino","urbano latino"}	Kendo Kaponi	65	https://api.spotify.com/v1/artists/1WMwuNKzEFtU6pPkdtryYS	640	640	https://i.scdn.co/image/ab6761610000e5eba6db079799d908caddf93b30
69UfPJgUmFFAVT740qGVZi	{}	Ken Darby Singers	64	https://api.spotify.com/v1/artists/69UfPJgUmFFAVT740qGVZi	0	0	
6xfqnpe2HnLVUaYXs2F8YS	{hollywood,"movie tunes"}	Anna Kendrick	67	https://api.spotify.com/v1/artists/6xfqnpe2HnLVUaYXs2F8YS	640	640	https://i.scdn.co/image/ab67616d0000b273bf912e74770477b7464d16b1
61i5hkPM85ZcIxRsg61Hkl	{"dark r&b"}	Kendyle Paige	54	https://api.spotify.com/v1/artists/61i5hkPM85ZcIxRsg61Hkl	640	640	https://i.scdn.co/image/ab6761610000e5eb6b79f2efc3998f7a72f00350
4IS4EyXNmiI2w5SRCjMtEF	{"french pop"}	Kendji Girac	65	https://api.spotify.com/v1/artists/4IS4EyXNmiI2w5SRCjMtEF	640	640	https://i.scdn.co/image/ab6761610000e5eb5d3e7a978b6e16422bcfca90
2IQF92w0RMFsspuMr89Ylj	{}	Kendrettes	48	https://api.spotify.com/v1/artists/2IQF92w0RMFsspuMr89Ylj	640	640	https://i.scdn.co/image/ab67616d0000b2734a93840427e8038b05f84a25
7rwhybBLjf5jWQsmXfwJhd	{"instrumental worship",neo-classical}	Kendra Logozar	45	https://api.spotify.com/v1/artists/7rwhybBLjf5jWQsmXfwJhd	640	640	https://i.scdn.co/image/ab6761610000e5ebced8e12ad01ab95c339507ef
7rtM2wPKQlFpsm0C4qJlDk	{}	Kendra Morris	39	https://api.spotify.com/v1/artists/7rtM2wPKQlFpsm0C4qJlDk	640	640	https://i.scdn.co/image/ab6761610000e5eb83559f7d066bd94d2e94f708
0qrHiWumZtqyV65tKmFWFR	{}	Kendrick P.	33	https://api.spotify.com/v1/artists/0qrHiWumZtqyV65tKmFWFR	640	640	https://i.scdn.co/image/ab6761610000e5ebabc1608ebaef9d5ac74effe8
2Uuon75BhnuuxdKLYn4wHn	{"classic soul",disco,funk,motown,"p funk",post-disco,"quiet storm",soul}	Eddie Kendricks	41	https://api.spotify.com/v1/artists/2Uuon75BhnuuxdKLYn4wHn	1280	676	https://i.scdn.co/image/664f1a004773bd74a4ff5104818e4f383ef95a5e
49W4g6VTNSlLOE6b6AGXaI	{}	cjaoob	33	https://api.spotify.com/v1/artists/49W4g6VTNSlLOE6b6AGXaI	640	640	https://i.scdn.co/image/ab6761610000e5ebbf9bdfa6e7023f742be6ab92
75JUEt35aoE78J5sd8uryW	{}	KENDRICK TARANTINO	18	https://api.spotify.com/v1/artists/75JUEt35aoE78J5sd8uryW	640	640	https://i.scdn.co/image/ab67616d0000b27301b3eec758c49d6f9dc1834e
1d0f2TQJF6CgmJ9o52kH4x	{"atl trap"}	Cassius Jay	34	https://api.spotify.com/v1/artists/1d0f2TQJF6CgmJ9o52kH4x	640	640	https://i.scdn.co/image/ab6761610000e5eb95e2a6f9efcd24582465ddb3
3DTDRsuiV7QV036kYu2dB1	{}	VuxVux	21	https://api.spotify.com/v1/artists/3DTDRsuiV7QV036kYu2dB1	640	640	https://i.scdn.co/image/ab6761610000e5ebe98dc41a530b8bddc00e5ac7
0GMXYY1IJDXZuAipiKl1ci	{}	Kendrick Hatake	4	https://api.spotify.com/v1/artists/0GMXYY1IJDXZuAipiKl1ci	640	640	https://i.scdn.co/image/ab6761610000e5eb2e9ce6e9592a7f0a229c01e1
3xidVCWg60r8Wdm6g9VCux	{"contemporary jazz","contemporary post-bop","jazz drums"}	Kendrick Scott	31	https://api.spotify.com/v1/artists/3xidVCWg60r8Wdm6g9VCux	640	640	https://i.scdn.co/image/ab6761610000e5eb5b2d2f0b750eb725d30431b7
3Nc3vycu3NLmfOLxGKPXLj	{}	Cap Kendricks	41	https://api.spotify.com/v1/artists/3Nc3vycu3NLmfOLxGKPXLj	640	640	https://i.scdn.co/image/ab6761610000e5eb4bc5005deebf674f5ac95fc0
32oIaXntT3aJfovPq7TtfA	{}	Kendric	3	https://api.spotify.com/v1/artists/32oIaXntT3aJfovPq7TtfA	640	640	https://i.scdn.co/image/ab67616d0000b273ab2c2145e046d33d9fe76d6a
2m9mfX3Zrunl6vVzuWfFTA	{}	Kendric	0	https://api.spotify.com/v1/artists/2m9mfX3Zrunl6vVzuWfFTA	640	640	https://i.scdn.co/image/ab6761610000e5eb678e345d7c3beb3f2a753798
1lpbHnnuoeSXu5LFcJdHDw	{}	Kendrick	17	https://api.spotify.com/v1/artists/1lpbHnnuoeSXu5LFcJdHDw	0	0	
0rsNJXvRpHA1MbqZbHQRlT	{}	Kendri	0	https://api.spotify.com/v1/artists/0rsNJXvRpHA1MbqZbHQRlT	640	640	https://i.scdn.co/image/ab67616d0000b273b784d099d1bc5b3315a5fe82
4IeJn2u7sn8wUz625qM2f1	{"social media pop"}	Kendall K	22	https://api.spotify.com/v1/artists/4IeJn2u7sn8wUz625qM2f1	640	640	https://i.scdn.co/image/ab67616d0000b273b79dcdc3c63ef09a5a97d5a7
0i8PDnJ9EfCBQVbKmwiP2d	{}	Kend	0	https://api.spotify.com/v1/artists/0i8PDnJ9EfCBQVbKmwiP2d	640	640	https://i.scdn.co/image/ab6761610000e5eb49cc41440a678a5645274c04
4tUn7sutPr7l4vGs8n4iq4	{}	Kend	2	https://api.spotify.com/v1/artists/4tUn7sutPr7l4vGs8n4iq4	640	640	https://i.scdn.co/image/ab6761610000e5ebe4ff690f13419fefa2e2dac5
0TnOYISbd1XYRBk9myaseg	{"dance pop","miami hip hop",pop}	Pitbull	86	https://api.spotify.com/v1/artists/0TnOYISbd1XYRBk9myaseg	640	640	https://i.scdn.co/image/ab6761610000e5eb4051627b19277613e0e62a34
29YEIiGDj5agFJ2Bda2dkO	{}	Kendra Erika	34	https://api.spotify.com/v1/artists/29YEIiGDj5agFJ2Bda2dkO	640	640	https://i.scdn.co/image/ab6761610000e5eb22f3316dbab4984f6c5e2a50
5OO1ihdKw6zpn7TfQwRiBX	{}	Kendra Williams	34	https://api.spotify.com/v1/artists/5OO1ihdKw6zpn7TfQwRiBX	640	640	https://i.scdn.co/image/ab6761610000e5eb837ffec49b27d614b51d2af0
5pWUVnrc1y0FpWZ6VCy0Hg	{"social media pop"}	kenzie	58	https://api.spotify.com/v1/artists/5pWUVnrc1y0FpWZ6VCy0Hg	640	640	https://i.scdn.co/image/ab6761610000e5eb4019999dff1177ce3d039fec
1nzgtKYFckznkcVMR3Gg4z	{"social media pop","uk hip hop"}	KSI	71	https://api.spotify.com/v1/artists/1nzgtKYFckznkcVMR3Gg4z	640	640	https://i.scdn.co/image/ab6761610000e5ebcb4ae963f0c01900f3e17712
77IKXFvO7SpWrq8hflrUXc	{"christian hip hop"}	KB	63	https://api.spotify.com/v1/artists/77IKXFvO7SpWrq8hflrUXc	640	640	https://i.scdn.co/image/ab6761610000e5ebd460ec67fe43e79761f30643
0cmqAB0gdr6ObvjNrQJAQr	{"alternative hip hop","boom bap","drumless hip hop","east coast hip hop"}	Ka	48	https://api.spotify.com/v1/artists/0cmqAB0gdr6ObvjNrQJAQr	640	640	https://i.scdn.co/image/ab6761610000e5eb3eafb0c79f17cb8fa66b8426
07XSN3sPlIlB2L2XNcTwJw	{"glam rock","hard rock",rock}	KISS	74	https://api.spotify.com/v1/artists/07XSN3sPlIlB2L2XNcTwJw	640	640	https://i.scdn.co/image/ab6761610000e5ebd8205a492a79bfe4b34c567a
4gOc8TsQed9eqnqJct2c5v	{"k-pop girl group"}	K/DA	64	https://api.spotify.com/v1/artists/4gOc8TsQed9eqnqJct2c5v	640	640	https://i.scdn.co/image/ab6761610000e5ebdc1dc943555dfa1ee2a107e5
1XtR9vPQD6cjmHlR5PuHPu	{"urbano mexicano"}	Kevin AMF	73	https://api.spotify.com/v1/artists/1XtR9vPQD6cjmHlR5PuHPu	640	640	https://i.scdn.co/image/ab6761610000e5ebe9d9473aa252065b582c272a
6OBGbSaBUvQtk9wpQfDbOE	{"indie triste"}	Kevin Kaarl	75	https://api.spotify.com/v1/artists/6OBGbSaBUvQtk9wpQfDbOE	640	640	https://i.scdn.co/image/ab6761610000e5eb5e5682cc07a92ae91692976b
19Io533x1pKQu6ZuisGek5	{}	LIA (ITZY)	39	https://api.spotify.com/v1/artists/19Io533x1pKQu6ZuisGek5	640	640	https://i.scdn.co/image/ab67616d0000b273d9cc8b7bfb9917402e584b9c
4VCv7CpyrcYIs1eN3cKhB1	{}	ItzYaBoiiJaime	7	https://api.spotify.com/v1/artists/4VCv7CpyrcYIs1eN3cKhB1	640	640	https://i.scdn.co/image/ab6761610000e5ebb965d332bb8959ac83c3b988
2BUUAEl4BwFRA9NBDgMWSf	{"cloud rap","dark trap","rage rap"}	ITSOKTOCRY	41	https://api.spotify.com/v1/artists/2BUUAEl4BwFRA9NBDgMWSf	640	640	https://i.scdn.co/image/ab6761610000e5eb3e4e9ae5a0635c013098276c
2EZQxHo3rQp1mnOUNdrOvl	{}	IT	2	https://api.spotify.com/v1/artists/2EZQxHo3rQp1mnOUNdrOvl	0	0	
3HqSLMAZ3g3d5poNaI7GOU	{k-pop,pop}	IU	71	https://api.spotify.com/v1/artists/3HqSLMAZ3g3d5poNaI7GOU	640	640	https://i.scdn.co/image/ab6761610000e5ebbd0642ff425698afac5caffd
3INQXGoSUrJbjowIMrvtnE	{}	IGB	32	https://api.spotify.com/v1/artists/3INQXGoSUrJbjowIMrvtnE	640	640	https://i.scdn.co/image/ab6761610000e5ebba07eed68beec6874477611a
3luonLzvSOxdU8ytCaEIK8	{"russian witch house","witch house"}	IC3PEAK	59	https://api.spotify.com/v1/artists/3luonLzvSOxdU8ytCaEIK8	640	640	https://i.scdn.co/image/ab6761610000e5ebb59b1b08cd059fed5bfc3347
6DPYiyq5kWVQS4RGwxzPC7	{"g funk","gangster rap","hip hop",rap,"west coast rap"}	Dr. Dre	82	https://api.spotify.com/v1/artists/6DPYiyq5kWVQS4RGwxzPC7	1005	1000	https://i.scdn.co/image/83d2489cade1dadcdc533ddbcd74993d0ca6d4cb
6Cqtx9fpxzggIMuKn0RGCp	{}	Dream Supplier	82	https://api.spotify.com/v1/artists/6Cqtx9fpxzggIMuKn0RGCp	640	640	https://i.scdn.co/image/ab6761610000e5ebb6f0bf7ad35d39d2491c8d52
2aaLAng2L2aWD2FClzwiep	{metal,"progressive metal"}	Dream Theater	64	https://api.spotify.com/v1/artists/2aaLAng2L2aWD2FClzwiep	640	640	https://i.scdn.co/image/ab6761610000e5eb6c2390469c190a49f3926865
7w9jdhcgHNdiPeNPUoFSlx	{"boston punk","boston rock","celtic punk","celtic rock",punk}	Dropkick Murphys	62	https://api.spotify.com/v1/artists/7w9jdhcgHNdiPeNPUoFSlx	640	640	https://i.scdn.co/image/ab6761610000e5eb2b3032f701dee12a10157f83
5oNgAs7j5XcBMzWv3HAnHG	{"dirty south rap","philly rap","southern hip hop",trap}	DJ Drama	66	https://api.spotify.com/v1/artists/5oNgAs7j5XcBMzWv3HAnHG	640	640	https://i.scdn.co/image/ab6761610000e5eb53ab08562b594332034c6aca
7FAAkDlPg6pg0860CIDzmu	{"california hardcore"}	DRAIN	46	https://api.spotify.com/v1/artists/7FAAkDlPg6pg0860CIDzmu	640	640	https://i.scdn.co/image/ab6761610000e5ebe3850e09ebed9df667c9f162
3bbyEDM22FIFzuaCTYFonZ	{}	Drakir Nature	44	https://api.spotify.com/v1/artists/3bbyEDM22FIFzuaCTYFonZ	640	640	https://i.scdn.co/image/ab67616d0000b27389c8d9ada4cbaafbc316c548
7kaJOOAkXnnaA7nlEb9p0H	{}	Taylor Swifta	0	https://api.spotify.com/v1/artists/7kaJOOAkXnnaA7nlEb9p0H	640	640	https://i.scdn.co/image/ab67616d0000b273d280a0345333842e408c03d1
5WUlDfRSoLAfcVSX1WnrxN	{pop}	Sia	87	https://api.spotify.com/v1/artists/5WUlDfRSoLAfcVSX1WnrxN	640	640	https://i.scdn.co/image/ab6761610000e5eb911dd6caa410128a05ab99aa
1KCSPY1glIKqW2TotWuXOR	{"dance pop",pop}	P!nk	82	https://api.spotify.com/v1/artists/1KCSPY1glIKqW2TotWuXOR	640	640	https://i.scdn.co/image/ab6761610000e5eb7bbad89a61061304ec842588
6Dy8gfZKwnrGI6G0V0aehZ	{}	Sabl3	43	https://api.spotify.com/v1/artists/6Dy8gfZKwnrGI6G0V0aehZ	640	640	https://i.scdn.co/image/ab6761610000e5eb9fa50165474d7eb7d75fd837
5rRyGasapvQWgfTijFs2mq	{}	Sable	46	https://api.spotify.com/v1/artists/5rRyGasapvQWgfTijFs2mq	640	640	https://i.scdn.co/image/ab6761610000e5eb141c2c35dbcd846ef36a5a41
1oH2B8tcHn4Gpl2bmmyd4A	{"mexican hip hop","sad sierreno","tamaulipas rap"}	La Santa Grifa	77	https://api.spotify.com/v1/artists/1oH2B8tcHn4Gpl2bmmyd4A	640	640	https://i.scdn.co/image/ab6761610000e5eb6fb848e6126054ad4f4dbb70
0WI8OfWCRvK4nGHmKfFQmd	{"latin christian","rap cristiano","reggaeton cristiano"}	Alex Zurdo	69	https://api.spotify.com/v1/artists/0WI8OfWCRvK4nGHmKfFQmd	640	640	https://i.scdn.co/image/ab6761610000e5eb12c0822b1e7b9c895dff1ed3
0bC6e2YtIRLbKx2txHFmEo	{}	alex_g_offline	68	https://api.spotify.com/v1/artists/0bC6e2YtIRLbKx2txHFmEo	640	640	https://i.scdn.co/image/ab67616d0000b273072e2599e77865ae194b8345
6slyJwua5e5GuhuP82sTHR	{"latin christian","mariachi cristiano","reggaeton cristiano"}	Alex Campos	66	https://api.spotify.com/v1/artists/6slyJwua5e5GuhuP82sTHR	640	640	https://i.scdn.co/image/ab6761610000e5eb712ec02b8119a82f53798349
7tU1VKOuxiNZwBZC6RHidA	{"latin hip hop",reggaeton,"urbano latino"}	Alexis y Fido	70	https://api.spotify.com/v1/artists/7tU1VKOuxiNZwBZC6RHidA	640	640	https://i.scdn.co/image/ab6761610000e5eba0a8c2fafcbdce31dcf62881
5qSM9F3Ei58tG08tXrJjSi	{}	Alex Jean	58	https://api.spotify.com/v1/artists/5qSM9F3Ei58tG08tXrJjSi	640	640	https://i.scdn.co/image/ab6761610000e5eb944b0a0667b676f995af4314
2DspEsT7UXGKd2VaaedgG4	{reggaeton,"trap latino","urbano latino"}	Alex Rose	72	https://api.spotify.com/v1/artists/2DspEsT7UXGKd2VaaedgG4	640	640	https://i.scdn.co/image/ab6761610000e5ebe1acf7ad58706bf65696507b
70LuGDrcHRTN0dQJoLN7rf	{"singer-songwriter pop"}	Alex Sampson	55	https://api.spotify.com/v1/artists/70LuGDrcHRTN0dQJoLN7rf	640	640	https://i.scdn.co/image/ab6761610000e5ebfd3df1ee966df703e552f694
6LTuNjs7CVV7pJQi088r4o	{}	itzyahboyfattzbabyy	4	https://api.spotify.com/v1/artists/6LTuNjs7CVV7pJQi088r4o	640	640	https://i.scdn.co/image/ab6761610000e5ebb4875ec55e398ed7479e5427
5RgilsTbpogtECkhDgcOZh	{"classic israeli pop","israeli rock"}	Itzhak Klepter	41	https://api.spotify.com/v1/artists/5RgilsTbpogtECkhDgcOZh	640	640	https://i.scdn.co/image/ab6761610000e5eb940ee49384925f1699a2951e
0PlTbBrPOOOmJzprmZ4cdM	{"pop venezolano","reggaeton colombiano"}	Itzza Primera	36	https://api.spotify.com/v1/artists/0PlTbBrPOOOmJzprmZ4cdM	640	640	https://i.scdn.co/image/ab6761610000e5eb7dec5d1a01dfd685f844c2ab
1GhO4jjafkz7yzMcGjGizT	{"chinese classical","chinese soundtrack"}	Tan Dun	43	https://api.spotify.com/v1/artists/1GhO4jjafkz7yzMcGjGizT	640	640	https://i.scdn.co/image/ab6761610000e5eb7aec79c774eed27be1209287
2dXFwhUnd9jN8l7GuMc3S3	{}	Itziar Ituño	31	https://api.spotify.com/v1/artists/2dXFwhUnd9jN8l7GuMc3S3	640	640	https://i.scdn.co/image/ab67616d0000b273fec70ed7e993f5b67cad79d9
20iZXzMb8LoWXOeca32i82	{classical,"classical performance","russian classical piano"}	Vladimir Ashkenazy	53	https://api.spotify.com/v1/artists/20iZXzMb8LoWXOeca32i82	640	640	https://i.scdn.co/image/ab6761610000e5eba5a4a932f73faefc19b4e24f
0B7XoFQlIqKN1EX52q5kOY	{}	Itz Akrit	29	https://api.spotify.com/v1/artists/0B7XoFQlIqKN1EX52q5kOY	640	640	https://i.scdn.co/image/ab6761610000e5ebd0f1e23788a7eadf06f4b9b7
4gzpq5DPGxSnKTe4SA8HAU	{"permanent wave",pop}	Coldplay	91	https://api.spotify.com/v1/artists/4gzpq5DPGxSnKTe4SA8HAU	640	640	https://i.scdn.co/image/ab6761610000e5eb1ba8fc5f5c73e7e9313cc6eb
5OWksQm7ONWIGZqMXovSli	{}	Calmly	85	https://api.spotify.com/v1/artists/5OWksQm7ONWIGZqMXovSli	640	640	https://i.scdn.co/image/ab6761610000e5eb8d20b240a306b76178f9f88c
0huGjMyP507tBCARyzSkrv	{"hip hop","pop rap",rap,trap,"underground hip hop"}	Cordae	72	https://api.spotify.com/v1/artists/0huGjMyP507tBCARyzSkrv	640	640	https://i.scdn.co/image/ab6761610000e5eb9161ad9d53d8c24e2c79d5a5
5zixe6AbgXPqt4c1uSl94L	{"singer-songwriter pop"}	Connor Price	75	https://api.spotify.com/v1/artists/5zixe6AbgXPqt4c1uSl94L	640	640	https://i.scdn.co/image/ab6761610000e5eb00835d03b5d032c8b22153f6
6SXTTUJxIVwMbc1POrviTr	{"children's music","preschool children's music"}	CoComelon	74	https://api.spotify.com/v1/artists/6SXTTUJxIVwMbc1POrviTr	640	640	https://i.scdn.co/image/ab6761610000e5eb4dd598a24ddb25d596be92ee
3utxjLheHaVEd9bPjQRsy8	{"modern alternative rock"}	Coheed and Cambria	61	https://api.spotify.com/v1/artists/3utxjLheHaVEd9bPjQRsy8	640	640	https://i.scdn.co/image/ab6761610000e5ebbff9d794acaadead8e742f9e
2GHclqNVjqGuiE5mA7BEoc	{"alternative hip hop","chicago rap","conscious hip hop","hardcore hip hop","hip hop","political hip hop"}	Common	62	https://api.spotify.com/v1/artists/2GHclqNVjqGuiE5mA7BEoc	640	640	https://i.scdn.co/image/ab6761610000e5eb6354c88f58d8a99b91e0d965
1iJdyDcY98X3GMnUesl7tf	{trap,"underground hip hop"}	Comethazine	59	https://api.spotify.com/v1/artists/1iJdyDcY98X3GMnUesl7tf	640	640	https://i.scdn.co/image/ab6761610000e5ebf0e6e0fd5c70f8f002ca12d4
5wL65gvidIfXPAR2Pu0ptA	{"calming instrumental"}	Comet 1993	72	https://api.spotify.com/v1/artists/5wL65gvidIfXPAR2Pu0ptA	640	640	https://i.scdn.co/image/ab67616d0000b2736d64650f47a45bc6aefb283e
4j0qbafzqnGf4ARF8tY4VL	{"reggae rock"}	Common Kings	57	https://api.spotify.com/v1/artists/4j0qbafzqnGf4ARF8tY4VL	640	640	https://i.scdn.co/image/ab6761610000e5eb414564b3f8ce2043c33f9fc4
6twIAGnYuIT1pncMAsXnEm	{"adult standards",disco,funk,"mellow gold",motown,"quiet storm","soft rock",soul}	Commodores	66	https://api.spotify.com/v1/artists/6twIAGnYuIT1pncMAsXnEm	640	640	https://i.scdn.co/image/ab6761610000e5eb21a213a4fe1a6f9b45d3f7f9
5ql9xfx4hMKIN545Yr7QOY	{}	El Comando Exclusivo	59	https://api.spotify.com/v1/artists/5ql9xfx4hMKIN545Yr7QOY	640	640	https://i.scdn.co/image/ab6761610000e5eb2f1b00defc8145a0aca00a88
0qIvyEbG7IlL8dgeOfUVsM	{}	COM	0	https://api.spotify.com/v1/artists/0qIvyEbG7IlL8dgeOfUVsM	640	640	https://i.scdn.co/image/ab6761610000e5eb770be0df4e3cd2f799de75b6
63ab8tkJBvinaZbF5m6x0l	{}	Còm	0	https://api.spotify.com/v1/artists/63ab8tkJBvinaZbF5m6x0l	640	640	https://i.scdn.co/image/ab67616d0000b27362b2c0c42cdd154805ace3a0
5v8jlSmAQfrkTjAlpUfWtu	{"adult standards","easy listening"}	Perry Como	72	https://api.spotify.com/v1/artists/5v8jlSmAQfrkTjAlpUfWtu	1233	1000	https://i.scdn.co/image/67994599f4a13b71c23e0fdfc2ffbf9ab94bb513
67f7GZXNMGRn98lqrtIdrN	{"canadian hardcore","canadian punk","hardcore punk","melodic hardcore","melodic metalcore","modern melodic hardcore","skate punk"}	Comeback Kid	47	https://api.spotify.com/v1/artists/67f7GZXNMGRn98lqrtIdrN	640	640	https://i.scdn.co/image/ab6761610000e5eb7e4473ebf584e6bd4b4dabbf
1KFyAcbh3WZJcSoWwk2uKR	{"boston indie"}	Come	11	https://api.spotify.com/v1/artists/1KFyAcbh3WZJcSoWwk2uKR	655	1000	https://i.scdn.co/image/8727404cd7b7db3ed4af5fe6b22d7dc9f88a4869
27DGFhdWUeudNFbPJROkWF	{"deep tropical house"}	Comet Blue	49	https://api.spotify.com/v1/artists/27DGFhdWUeudNFbPJROkWF	840	840	https://i.scdn.co/image/b2c598b916f2485e0570dbb5ac7a87f1ec3b6a1b
1GFUlKnxfAUnQchvgHnT8H	{"comedie musicale"}	Côme	10	https://api.spotify.com/v1/artists/1GFUlKnxfAUnQchvgHnT8H	640	640	https://i.scdn.co/image/ab6761610000e5eb43bb3b01a681d6a19ad767b6
3yVB4N2PhQy60dAxzCoNdQ	{broadway}	'Come From Away' Company	47	https://api.spotify.com/v1/artists/3yVB4N2PhQy60dAxzCoNdQ	0	0	
6OQUApGlZySyxHVbLTm44B	{}	COME	2	https://api.spotify.com/v1/artists/6OQUApGlZySyxHVbLTm44B	640	640	https://i.scdn.co/image/ab6761610000e5ebd940f3d03f323a227544a74e
1tX1brodBbo5XgrAqHqP83	{}	Cōme	3	https://api.spotify.com/v1/artists/1tX1brodBbo5XgrAqHqP83	640	640	https://i.scdn.co/image/ab6761610000e5eb12b5fd51ce07ab90c612f21c
7hUqDEJnvDAU7TuYlC74cy	{}	comet	46	https://api.spotify.com/v1/artists/7hUqDEJnvDAU7TuYlC74cy	640	640	https://i.scdn.co/image/ab6761610000e5eb11371cf3c50ab2aef190e8bf
1VEvoJM7vWgbRdc4Y482yW	{}	Comethazinee	0	https://api.spotify.com/v1/artists/1VEvoJM7vWgbRdc4Y482yW	640	640	https://i.scdn.co/image/ab67616d0000b27333e3fb0010d753bbd11ec0c5
1q2nUylEqrRJkiDkXa39Mw	{"westcoast flow"}	YoungThreat	69	https://api.spotify.com/v1/artists/1q2nUylEqrRJkiDkXa39Mw	640	640	https://i.scdn.co/image/ab67616d0000b273de2e894be75c77ef187fee37
50B2p4iLmj1mKx1s0BVPyI	{}	Comethazine Cold	0	https://api.spotify.com/v1/artists/50B2p4iLmj1mKx1s0BVPyI	640	640	https://i.scdn.co/image/ab67616d0000b2730d1dc69122ab59113d36e3ed
4AA474G2hRfrHyGrfyDseO	{"cali rap","sacramento hip hop"}	Mozzy	63	https://api.spotify.com/v1/artists/4AA474G2hRfrHyGrfyDseO	640	640	https://i.scdn.co/image/ab6761610000e5eb95c2739935f8e72ed3fafb97
5NP7UCOiZjLS7bmaeMvqdY	{}	comethazine malcolm	0	https://api.spotify.com/v1/artists/5NP7UCOiZjLS7bmaeMvqdY	0	0	
7hT5GQVXlvbKUy8tWa5Vkl	{}	Drexthejoint	53	https://api.spotify.com/v1/artists/7hT5GQVXlvbKUy8tWa5Vkl	640	640	https://i.scdn.co/image/ab6761610000e5eb1061d57bbcb41939073c0a29
0jkqzWx5N4y8CmFFiUCkRz	{"cali rap"}	MemoTheMafioso	57	https://api.spotify.com/v1/artists/0jkqzWx5N4y8CmFFiUCkRz	640	640	https://i.scdn.co/image/ab6761610000e5ebe0c70f8369e2260ecf43b93b
1OuuJcg5OofM36OyEzoB2X	{}	CHASETHEMONEY	53	https://api.spotify.com/v1/artists/1OuuJcg5OofM36OyEzoB2X	640	640	https://i.scdn.co/image/ab6761610000e5eb4c4aca55d184c7361acca175
0KpCz7V5XRkqKuM1JDf56O	{"boston hip hop","underground hip hop"}	Cousin Stizz	48	https://api.spotify.com/v1/artists/0KpCz7V5XRkqKuM1JDf56O	640	640	https://i.scdn.co/image/ab6761610000e5ebed244cecddeef789892c3d9a
0hF6lbAjRsq4svrQUr5sgU	{"new york drill"}	Kyle Richh	74	https://api.spotify.com/v1/artists/0hF6lbAjRsq4svrQUr5sgU	640	640	https://i.scdn.co/image/ab6761610000e5ebf86a5c19fa729633acdb5a25
5QnWJJjxPlTSN59B8yJoOk	{}	507KAZ	67	https://api.spotify.com/v1/artists/5QnWJJjxPlTSN59B8yJoOk	640	640	https://i.scdn.co/image/ab6761610000e5ebd5c0fee943fbf48242938f2f
3MFp4cYuYtTZe3d3xkLLbr	{rock-and-roll,rockabilly}	Bill Haley & His Comets	55	https://api.spotify.com/v1/artists/3MFp4cYuYtTZe3d3xkLLbr	640	640	https://i.scdn.co/image/ab67616d0000b2739060a2c0a01366ee03274597
3FzR76m21CEmbcnj3CWHLS	{"cumbia sonidera"}	Cometas Azules	25	https://api.spotify.com/v1/artists/3FzR76m21CEmbcnj3CWHLS	640	640	https://i.scdn.co/image/ab67616d0000b27321edd9b22d7b99f0cc00ff83
4aCmCOKYjTP04lcfQVXYys	{}	Cometta	29	https://api.spotify.com/v1/artists/4aCmCOKYjTP04lcfQVXYys	640	640	https://i.scdn.co/image/ab6761610000e5eb74cf9442d14a3fc4411428dd
0ywBEn3tITirlskY3SZBei	{}	Heembeezy	61	https://api.spotify.com/v1/artists/0ywBEn3tITirlskY3SZBei	640	640	https://i.scdn.co/image/ab6761610000e5eb6bf6435adfdfc310aaacee12
66zzXcMMv6ivjCSSkBn8Uq	{"indie rock peruano"}	Cometa a la Deriva	28	https://api.spotify.com/v1/artists/66zzXcMMv6ivjCSSkBn8Uq	640	640	https://i.scdn.co/image/ab6761610000e5eb689a910380517274459cda7b
0E3pLs4jXz9tDQGY8m1A1d	{"florida drill","melodic rap","southern hip hop"}	JayDaYoungan	65	https://api.spotify.com/v1/artists/0E3pLs4jXz9tDQGY8m1A1d	640	640	https://i.scdn.co/image/ab6761610000e5eb1bf75b8817656060957c1253
6OjtkJDlAZzlzAydEn78cK	{pluggnb}	Bktherula	61	https://api.spotify.com/v1/artists/6OjtkJDlAZzlzAydEn78cK	640	640	https://i.scdn.co/image/ab6761610000e5eb1dcf3b8e2c14abdf84301bd8
60p7G6IdFcd9Pyk86uAnrs	{}	Comet	13	https://api.spotify.com/v1/artists/60p7G6IdFcd9Pyk86uAnrs	640	640	https://i.scdn.co/image/ab6761610000e5ebf14a4d9bd4c978cda9dd5472
2ZNGdMoA9RSXhAAT9xAIEx	{}	Comet	32	https://api.spotify.com/v1/artists/2ZNGdMoA9RSXhAAT9xAIEx	640	640	https://i.scdn.co/image/ab6761610000e5eb1c98c5232f6c9fc98737047b
5JYeZHW8LXcqpnRvBJQKPN	{}	Comet	8	https://api.spotify.com/v1/artists/5JYeZHW8LXcqpnRvBJQKPN	640	640	https://i.scdn.co/image/ab67616d0000b27326e09795ea151dd7354529d7
5aarApq5ohWDVppxu8lg2c	{}	Comet	4	https://api.spotify.com/v1/artists/5aarApq5ohWDVppxu8lg2c	640	640	https://i.scdn.co/image/ab6761610000e5eb15f861beef000fcfed228a42
0Z5FMozvx15nUSUA6a9kkU	{"british jazz","chamber psych"}	The Comet Is Coming	38	https://api.spotify.com/v1/artists/0Z5FMozvx15nUSUA6a9kkU	640	640	https://i.scdn.co/image/ab6761610000e5eb64d5703bc39fcaf1f132846e
6dtGP6DjwbBC9xE7lYN7sZ	{}	Comet	12	https://api.spotify.com/v1/artists/6dtGP6DjwbBC9xE7lYN7sZ	640	640	https://i.scdn.co/image/ab6761610000e5eb8bf2c05e7dc5efb1bbbb37c8
57oZtqKTXkDBrNbxV3QZCY	{}	Cometh	0	https://api.spotify.com/v1/artists/57oZtqKTXkDBrNbxV3QZCY	640	640	https://i.scdn.co/image/ab67616d0000b273576ccd7acf80f2f101941c56
08rmAaVKmQgI0k3n3j0d1b	{}	COMETLILGOLD	9	https://api.spotify.com/v1/artists/08rmAaVKmQgI0k3n3j0d1b	640	640	https://i.scdn.co/image/ab6761610000e5eb22294470807a71088d967115
76JyRfZDqhAIow2Awv91iW	{"pop r&b"}	B. Smyth	52	https://api.spotify.com/v1/artists/76JyRfZDqhAIow2Awv91iW	640	640	https://i.scdn.co/image/ab6761610000e5ebd9d27c8ec245f607cbc21304
5p9aalXlIMSGKmey78Ah5v	{"anime rap"}	OmarCameUp	46	https://api.spotify.com/v1/artists/5p9aalXlIMSGKmey78Ah5v	640	640	https://i.scdn.co/image/ab6761610000e5ebefcc0fb79123b259b29af5f0
4dDi0WAh01ruRSx8cvrH8N	{}	COMETLILGOLD	0	https://api.spotify.com/v1/artists/4dDi0WAh01ruRSx8cvrH8N	0	0	
20kAERGCnqfyGydzop8bfg	{"aesthetic rap"}	Lil God Dan	54	https://api.spotify.com/v1/artists/20kAERGCnqfyGydzop8bfg	640	640	https://i.scdn.co/image/ab6761610000e5eb6157799f17e5a9011e20e1cc
7pHer2DG8slVuGW81bAHQO	{}	COMETLILGOLD	0	https://api.spotify.com/v1/artists/7pHer2DG8slVuGW81bAHQO	0	0	
73sV26yCMzpIeYxesG3jdV	{"new york drill"}	Sdot Go	56	https://api.spotify.com/v1/artists/73sV26yCMzpIeYxesG3jdV	640	640	https://i.scdn.co/image/ab6761610000e5eb4222fa14808223779c2b5191
1YEPfkn0orLgVjNZxY6JKl	{}	Lil' Goldy	29	https://api.spotify.com/v1/artists/1YEPfkn0orLgVjNZxY6JKl	640	640	https://i.scdn.co/image/ab67616d0000b27313d37fbb6a153143975ea6c6
2Umb1vqA23pk61tGfZZawH	{}	LJGOLD	29	https://api.spotify.com/v1/artists/2Umb1vqA23pk61tGfZZawH	640	640	https://i.scdn.co/image/ab6761610000e5eb360fd7c917de14835c34cabe
7fXZjftwnHKiVazF0Tnro7	{}	DontGottaTalk	39	https://api.spotify.com/v1/artists/7fXZjftwnHKiVazF0Tnro7	640	640	https://i.scdn.co/image/ab6761610000e5ebe1516790142c838588b321ee
68ousdyH7lBXYu9U7SX2ys	{"miami indie"}	Supergold	33	https://api.spotify.com/v1/artists/68ousdyH7lBXYu9U7SX2ys	640	640	https://i.scdn.co/image/ab6761610000e5ebe764403e9b86cf815f1fab71
7pxMeIUrXBgGTOeeIIJAwY	{"new york drill"}	Pj Glizzy	41	https://api.spotify.com/v1/artists/7pxMeIUrXBgGTOeeIIJAwY	640	640	https://i.scdn.co/image/ab6761610000e5eb1b93c80f3b139fcb2448148f
2JdZlNYqYJ8xY0a5nFlXdO	{"aesthetic rap"}	KYSLINGO	54	https://api.spotify.com/v1/artists/2JdZlNYqYJ8xY0a5nFlXdO	640	640	https://i.scdn.co/image/ab6761610000e5ebdbc00abfa769ec312027b666
0LGKNkqCNnflIi35z00rGu	{}	PayGotti	43	https://api.spotify.com/v1/artists/0LGKNkqCNnflIi35z00rGu	640	640	https://i.scdn.co/image/ab6761610000e5ebcd9d1e45489c4c50028ffdcd
3vpv7sEkwDmtjDVP3Q0bXH	{"dfw rap"}	Go Yayo	40	https://api.spotify.com/v1/artists/3vpv7sEkwDmtjDVP3Q0bXH	640	640	https://i.scdn.co/image/ab6761610000e5eb4c61f2400d3f0b512bedf9f1
13agz6eAo0H3o06HYuOWtz	{"cali rap"}	Lingo	26	https://api.spotify.com/v1/artists/13agz6eAo0H3o06HYuOWtz	640	640	https://i.scdn.co/image/ab67616d0000b273384f0ac6cce78a430fcb1f5f
33yc6xMTZ1Pg5TJvUGq1Dh	{}	g0ogo	28	https://api.spotify.com/v1/artists/33yc6xMTZ1Pg5TJvUGq1Dh	640	640	https://i.scdn.co/image/ab6761610000e5eb6a6a0f6f9a8f0d065447050b
6oQuhKRw4sZQLQAEvzah2p	{}	Lij9	34	https://api.spotify.com/v1/artists/6oQuhKRw4sZQLQAEvzah2p	640	640	https://i.scdn.co/image/ab6761610000e5ebb2311e468ed52369087af0d5
6ModyM3VpmFaIurSFWLbVC	{}	COMET	2	https://api.spotify.com/v1/artists/6ModyM3VpmFaIurSFWLbVC	640	640	https://i.scdn.co/image/ab67616d0000b273f3d97fe2cddf4546f443c437
2fGbRvL9pWpXTq9zIKm6wG	{}	COMET	0	https://api.spotify.com/v1/artists/2fGbRvL9pWpXTq9zIKm6wG	640	640	https://i.scdn.co/image/ab67616d0000b27349a06520f3c9ad013ecae022
4Qjrt2HViE2TGDstNiiBok	{}	Comet 1993	37	https://api.spotify.com/v1/artists/4Qjrt2HViE2TGDstNiiBok	640	640	https://i.scdn.co/image/ab67616d0000b273420b6564f2156bbaba6aa27c
2wouN3QXejYa5tKetYdcVX	{chillwave,indietronica,vaporwave}	Com Truise	58	https://api.spotify.com/v1/artists/2wouN3QXejYa5tKetYdcVX	640	640	https://i.scdn.co/image/ab6761610000e5eb9ee8f1bb8c981f3865d8e7c5
48UrAAuut2mSFi2k9KmV1c	{}	コメティック	32	https://api.spotify.com/v1/artists/48UrAAuut2mSFi2k9KmV1c	640	640	https://i.scdn.co/image/ab6761610000e5eb6c5d614eee5b02457e50443b
7mcE0EmrnPmyAGU3UBJrFg	{}	LOVELI LORI	60	https://api.spotify.com/v1/artists/7mcE0EmrnPmyAGU3UBJrFg	640	640	https://i.scdn.co/image/ab6761610000e5ebf04a41e755740df7063d355e
1kzMgoLmkpbvtrxSZ63k5D	{}	Compton Ro2co	42	https://api.spotify.com/v1/artists/1kzMgoLmkpbvtrxSZ63k5D	640	640	https://i.scdn.co/image/ab6761610000e5ebb187889aa79cf4498cc73f5c
7J5UWTbsUFjoSQZQCQCqbQ	{"westcoast flow"}	Siete7x	71	https://api.spotify.com/v1/artists/7J5UWTbsUFjoSQZQCQCqbQ	640	640	https://i.scdn.co/image/ab6761610000e5eb98ec8eb18a6537a9db1b9de0
4ix2z6eBWQ6MeihaX04mB6	{"atl drill"}	Lil Tony Official	57	https://api.spotify.com/v1/artists/4ix2z6eBWQ6MeihaX04mB6	640	640	https://i.scdn.co/image/ab6761610000e5eb1ce8765803c436347a480ac5
5z5Wgdaa8Z16FrWxXdmXCT	{"cali rap","sacramento hip hop"}	C.M.L.	46	https://api.spotify.com/v1/artists/5z5Wgdaa8Z16FrWxXdmXCT	640	640	https://i.scdn.co/image/ab6761610000e5eb95f8b76ed81e760ac77b3c6e
4dZBZceC6PDa9XCr3mJwq2	{}	Luhh Dyl	50	https://api.spotify.com/v1/artists/4dZBZceC6PDa9XCr3mJwq2	640	640	https://i.scdn.co/image/ab6761610000e5eb572a298d7fd60bc42756c395
43s6uFZrdusv7ggmDSpO41	{"new york drill"}	TaTa	63	https://api.spotify.com/v1/artists/43s6uFZrdusv7ggmDSpO41	640	640	https://i.scdn.co/image/ab6761610000e5eb37a465ddc4a787a925f81464
5A6mIOIg7290CgPHiDmq2b	{}	Camo!	50	https://api.spotify.com/v1/artists/5A6mIOIg7290CgPHiDmq2b	640	640	https://i.scdn.co/image/ab6761610000e5eb18198ec2c7d4bb30867b3566
1vANzzDo9L1ZyCKJaYQQvq	{"latin viral pop"}	Lodovica Comello	51	https://api.spotify.com/v1/artists/1vANzzDo9L1ZyCKJaYQQvq	640	640	https://i.scdn.co/image/ab6761610000e5eb319d982017a50890b6587a54
6NQgMwGc3jvdwGZKUbhhHi	{"cali rap","westcoast flow"}	Haiti Babii	51	https://api.spotify.com/v1/artists/6NQgMwGc3jvdwGZKUbhhHi	640	640	https://i.scdn.co/image/ab6761610000e5eb15a02ff225e523da8e3770e6
43jdbuMS6AWyAgcG2I8Lmy	{"cali rap"}	Lul Tys	49	https://api.spotify.com/v1/artists/43jdbuMS6AWyAgcG2I8Lmy	640	640	https://i.scdn.co/image/ab67616d0000b273506041d8e10d86bdf43c4c5e
5yw4tA8D5uG7tT3NaDvq10	{"social media pop"}	Stellar	69	https://api.spotify.com/v1/artists/5yw4tA8D5uG7tT3NaDvq10	640	640	https://i.scdn.co/image/ab6761610000e5eb345f5d936d8bc62daf2b814a
64JnTLWu6BRluLTlgge3FB	{meme}	Uglyburger0	55	https://api.spotify.com/v1/artists/64JnTLWu6BRluLTlgge3FB	640	640	https://i.scdn.co/image/ab6761610000e5eb543ddef4d333179172ed7ae1
2JOcd5fTnpi3nDz3wrYhMy	{}	Comet Girl	20	https://api.spotify.com/v1/artists/2JOcd5fTnpi3nDz3wrYhMy	640	640	https://i.scdn.co/image/ab6761610000e5ebf884b5a0cff1a1200a2f08ed
48TS8a0wo5yMUbcAsEQ7Zd	{parody}	Chad Wild Clay	18	https://api.spotify.com/v1/artists/48TS8a0wo5yMUbcAsEQ7Zd	640	640	https://i.scdn.co/image/ab67616d0000b2731bf9c581db0200323efb74a8
4MoBfHmVFfnOFYd7JzRnPU	{}	COME	0	https://api.spotify.com/v1/artists/4MoBfHmVFfnOFYd7JzRnPU	640	640	https://i.scdn.co/image/ab67616d0000b2739a8020d139d5330147157eaa
2mJOGcLR3aCHkM1uAF93or	{"classic j-pop",j-pop}	DREAMS COME TRUE	62	https://api.spotify.com/v1/artists/2mJOGcLR3aCHkM1uAF93or	640	640	https://i.scdn.co/image/ab6761610000e5ebb5db235af61dcbda639c1a97
0aVMBsEZXFGkshh81e8YQ2	{}	COMPUTERKAT	6	https://api.spotify.com/v1/artists/0aVMBsEZXFGkshh81e8YQ2	640	640	https://i.scdn.co/image/ab6761610000e5ebbd45bc9b67876119e922221a
2suncKjLshz1nuccvmWMn3	{}	COMA.	37	https://api.spotify.com/v1/artists/2suncKjLshz1nuccvmWMn3	640	640	https://i.scdn.co/image/ab6761610000e5ebc7a93ebac0ddef044737ce4a
3YJDqtTSjydvUpTvU1fJ6O	{otacore,pixel,"rhythm game"}	CG5	65	https://api.spotify.com/v1/artists/3YJDqtTSjydvUpTvU1fJ6O	640	640	https://i.scdn.co/image/ab6761610000e5ebde20df35956a484d8383d3af
0tzSBCPJZmHTdOA3ZV2mN3	{k-pop}	CL	57	https://api.spotify.com/v1/artists/0tzSBCPJZmHTdOA3ZV2mN3	640	640	https://i.scdn.co/image/ab6761610000e5ebc67fe879798c208fcf056dde
4uFZsG1vXrPcvnZ4iSQyrx	{pixel,"video game music"}	C418	74	https://api.spotify.com/v1/artists/4uFZsG1vXrPcvnZ4iSQyrx	640	640	https://i.scdn.co/image/ab6761610000e5eba9b8234e3071836212561d19
0ZxZlO7oWCSYMXhehpyMvE	{"pov: indie"}	COIN	62	https://api.spotify.com/v1/artists/0ZxZlO7oWCSYMXhehpyMvE	640	640	https://i.scdn.co/image/ab6761610000e5ebab3a96f5e65abd85ea2c2ec3
7yntSJ6uojO3z6GFUVwhAW	{"pov: indie"}	CORPSE	65	https://api.spotify.com/v1/artists/7yntSJ6uojO3z6GFUVwhAW	640	640	https://i.scdn.co/image/ab6761610000e5ebed2fd5aa8e1c20922c190d30
1AHswQqsDNmu1xaE8KpBne	{"escape room","pink noise"}	COBRAH	58	https://api.spotify.com/v1/artists/1AHswQqsDNmu1xaE8KpBne	640	640	https://i.scdn.co/image/ab6761610000e5eb200a491805083139f4c2dbba
3FvwVFWRyvxmLyVBO9nBmM	{}	COLORS	55	https://api.spotify.com/v1/artists/3FvwVFWRyvxmLyVBO9nBmM	640	640	https://i.scdn.co/image/ab6761610000e5ebbca2ee0acf42558663d81e77
2kFFIxf8oy58ydskv0UdOj	{"japanese shoegaze"}	溶けない名前	41	https://api.spotify.com/v1/artists/2kFFIxf8oy58ydskv0UdOj	640	640	https://i.scdn.co/image/ab67616d0000b273dff789f068666535569ddb64
73sIBHcqh3Z3NyqHKZ7FOL	{"atl hip hop","hip hop",rap}	Childish Gambino	81	https://api.spotify.com/v1/artists/73sIBHcqh3Z3NyqHKZ7FOL	640	640	https://i.scdn.co/image/ab6761610000e5ebc3dc5429b676b16d451e5f77
7cYEt1pqMgXJdq00hAwVpT	{"alternative r&b"}	Chase Atlantic	84	https://api.spotify.com/v1/artists/7cYEt1pqMgXJdq00hAwVpT	640	640	https://i.scdn.co/image/ab6761610000e5eb5d10a5bb5f78cd7819cbfad7
0L8ExT028jH3ddEcZwqJJ5	{"alternative rock","funk metal","funk rock","permanent wave",rock}	Red Hot Chili Peppers	85	https://api.spotify.com/v1/artists/0L8ExT028jH3ddEcZwqJJ5	640	640	https://i.scdn.co/image/ab6761610000e5ebc33cc15260b767ddec982ce8
15iVAtD3s3FsQR4w1v6M0P	{"chicago bop","chicago drill","chicago rap",drill,"hip hop",rap,trap}	Chief Keef	78	https://api.spotify.com/v1/artists/15iVAtD3s3FsQR4w1v6M0P	640	640	https://i.scdn.co/image/ab6761610000e5ebdff560bdff062729566aacea
2rmkQLzj0k4nZdQehOUByO	{corrido}	Chino Pacas	83	https://api.spotify.com/v1/artists/2rmkQLzj0k4nZdQehOUByO	640	640	https://i.scdn.co/image/ab6761610000e5eb52f3df55b54da325acb93e84
72OaDtakiy6yFqkt4TsiFt	{"dance pop",pop}	Cher	73	https://api.spotify.com/v1/artists/72OaDtakiy6yFqkt4TsiFt	640	640	https://i.scdn.co/image/ab6761610000e5eb951b9e5d4f1f502691aeef1f
37230BxxYs9ksS7OkZw3IU	{reggaeton,"reggaeton flow","trap latino","urbano latino"}	Chencho Corleone	80	https://api.spotify.com/v1/artists/37230BxxYs9ksS7OkZw3IU	640	640	https://i.scdn.co/image/ab6761610000e5eb7ab9ab65a8d38cad451d3417
5A7T1LAGJg5NXySBoIKUmF	{"rage rap"}	che	62	https://api.spotify.com/v1/artists/5A7T1LAGJg5NXySBoIKUmF	640	640	https://i.scdn.co/image/ab6761610000e5eb24b2704fc11442ee03f37379
69GGBxA162lTqCwzJG5jLp	{pop}	The Chainsmokers	83	https://api.spotify.com/v1/artists/69GGBxA162lTqCwzJG5jLp	640	640	https://i.scdn.co/image/ab6761610000e5eb44434ab91c37f5407f8e83b6
56dO9zeHKuU5Gvfc2kxHNw	{"alternative metal","christian rock","nu metal",post-grunge}	Chevelle	66	https://api.spotify.com/v1/artists/56dO9zeHKuU5Gvfc2kxHNw	640	640	https://i.scdn.co/image/ab6761610000e5eb6411cad01afe7d60b448dabc
5JMLG56F1X5mFmWNmS0iAp	{"alt z"}	Chelsea Cutler	69	https://api.spotify.com/v1/artists/5JMLG56F1X5mFmWNmS0iAp	640	640	https://i.scdn.co/image/ab6761610000e5eb59a8d157830e44e260fe9669
3rxeQlsv0Sc2nyYaZ5W71T	{"cool jazz",jazz,"jazz trumpet","vocal jazz"}	Chet Baker	67	https://api.spotify.com/v1/artists/3rxeQlsv0Sc2nyYaZ5W71T	817	1000	https://i.scdn.co/image/8fd767aa91ecd8e5720b424812e2a17586834ac2
1EmdfupUQDpXOcb4Nj2mBH	{}	Chezile	70	https://api.spotify.com/v1/artists/1EmdfupUQDpXOcb4Nj2mBH	640	640	https://i.scdn.co/image/ab6761610000e5eb305734f8a1106c4b6db15018
7FBcuc1gsnv6Y1nwFtNRCb	{emo,"modern rock","pop punk","pov: indie",rock}	My Chemical Romance	81	https://api.spotify.com/v1/artists/7FBcuc1gsnv6Y1nwFtNRCb	640	640	https://i.scdn.co/image/ab6761610000e5eb9c00ad0308287b38b8fdabc2
1GhPHrq36VKCY3ucVaZCfo	{"alternative dance","big beat",breakbeat,electronica,rave,"trip hop"}	The Chemical Brothers	62	https://api.spotify.com/v1/artists/1GhPHrq36VKCY3ucVaZCfo	640	640	https://i.scdn.co/image/ab6761610000e5ebae05213e52565bfd7e7489b3
6fJTyAeSgv4A1LR9LamLnY	{cyberpunk,electro-industrial,industrial,"industrial metal","industrial rock"}	Chemlab	34	https://api.spotify.com/v1/artists/6fJTyAeSgv4A1LR9LamLnY	640	640	https://i.scdn.co/image/ab67616d0000b273c21bf09af1a9b3b9a3d421f0
55VydwMyCuGcavwPuhutPL	{"alternative metal","neon pop punk","pop emo",post-grunge,post-hardcore,screamo}	The Used	63	https://api.spotify.com/v1/artists/55VydwMyCuGcavwPuhutPL	640	640	https://i.scdn.co/image/ab6761610000e5eb23386906645d2552106a61be
3Wl6XL61V0pRkj13dgItId	{"christmas instrumental"}	Chemayne	44	https://api.spotify.com/v1/artists/3Wl6XL61V0pRkj13dgItId	640	640	https://i.scdn.co/image/ab67616d0000b273c312706f6c85687561d1f330
257kEbQnBziYfmtmqiNuNE	{j-pop}	CHEMISTRY	51	https://api.spotify.com/v1/artists/257kEbQnBziYfmtmqiNuNE	640	640	https://i.scdn.co/image/ab6761610000e5ebd82451606ffeaa15c5d4a9f2
1LMsUz65sLJNuTAQOFGk6m	{"musica costena"}	Chema y Su Grupo Talento de Pueblo	33	https://api.spotify.com/v1/artists/1LMsUz65sLJNuTAQOFGk6m	640	640	https://i.scdn.co/image/ab67616d0000b2731c23b176e89be0de4ea5cbed
7LgAW1ZiEd8f3HtCMGFaGx	{"brazilian edm"}	Chemical Surf	50	https://api.spotify.com/v1/artists/7LgAW1ZiEd8f3HtCMGFaGx	640	640	https://i.scdn.co/image/ab6761610000e5eb95937743bc43f4408033e7c6
3gbyZPIeAMEYfANGE9ZLiC	{}	chemical-x	10	https://api.spotify.com/v1/artists/3gbyZPIeAMEYfANGE9ZLiC	640	640	https://i.scdn.co/image/ab6761610000e5eb16affee0f5ef3f3bf0c2e77e
5eKLa1xyHLq8ERWmT1CRHj	{"big beat",breakbeat,electronica}	The Crystal Method	50	https://api.spotify.com/v1/artists/5eKLa1xyHLq8ERWmT1CRHj	640	640	https://i.scdn.co/image/ab6761610000e5ebd12e8c61240cbd023dee7743
2sSGPbdZJkaSE2AbcGOACx	{"bedroom pop","la indie"}	The Marías	80	https://api.spotify.com/v1/artists/2sSGPbdZJkaSE2AbcGOACx	640	640	https://i.scdn.co/image/ab6761610000e5ebaf586afa2b397f1288683a76
4k1ELeJKT1ISyDv8JivPpB	{"big beat",breakbeat,"dance rock","hardcore techno",rave}	The Prodigy	67	https://api.spotify.com/v1/artists/4k1ELeJKT1ISyDv8JivPpB	640	640	https://i.scdn.co/image/ab6761610000e5eb147841812056c247407811f3
7CxmjwMuTIH0894MiWbt8M	{}	Chemi	0	https://api.spotify.com/v1/artists/7CxmjwMuTIH0894MiWbt8M	0	0	
6TIYQ3jFPwQSRmorSezPxX	{"ohio hip hop","pop rap"}	mgk	79	https://api.spotify.com/v1/artists/6TIYQ3jFPwQSRmorSezPxX	640	640	https://i.scdn.co/image/ab6761610000e5eb6659c0c409fee150c1f7c879
4xRYI6VqpkE3UwrDrAZL8L	{"conscious hip hop","hip hop","pop rap",rap}	Logic	75	https://api.spotify.com/v1/artists/4xRYI6VqpkE3UwrDrAZL8L	640	640	https://i.scdn.co/image/ab6761610000e5eb94678f7d5353a9b680f60d23
7k4Dpllqvlq0BtHSjTvewW	{hypertechno,"techno remix"}	Chemicals	44	https://api.spotify.com/v1/artists/7k4Dpllqvlq0BtHSjTvewW	640	640	https://i.scdn.co/image/ab6761610000e5ebb0024ba9af19233a0182c095
39T6qqI0jDtSWWioX8eGJz	{"album rock","classic rock","country rock","folk rock","mellow gold",rock,singer-songwriter,"soft rock","yacht rock"}	The Doobie Brothers	70	https://api.spotify.com/v1/artists/39T6qqI0jDtSWWioX8eGJz	640	640	https://i.scdn.co/image/ab6761610000e5eb68a38c02f356fae44e7dd63b
0X380XXQSNBYuleKzav5UO	{"alternative metal","alternative rock",cyberpunk,"electronic rock",grunge,industrial,"industrial metal","industrial rock","nu metal",post-grunge,rock}	Nine Inch Nails	68	https://api.spotify.com/v1/artists/0X380XXQSNBYuleKzav5UO	640	640	https://i.scdn.co/image/ab6761610000e5eb047095c90419cf2a97266f77
6A43Djmhbe9100UwnI7epV	{"alternative rock","pop rock",post-grunge,"sacramento indie"}	CAKE	64	https://api.spotify.com/v1/artists/6A43Djmhbe9100UwnI7epV	640	640	https://i.scdn.co/image/ab6761610000e5ebb8bf71301acec36f0256c0f8
19I4tYiChJoxEO5EuviXpz	{"alternative metal","nu metal","pop punk",post-grunge,punk,screamo}	AFI	62	https://api.spotify.com/v1/artists/19I4tYiChJoxEO5EuviXpz	640	640	https://i.scdn.co/image/ab6761610000e5ebbdecf4762da0117e96e03fb8
3OsRAKCvk37zwYcnzRf5XF	{downtempo,electronica}	Moby	71	https://api.spotify.com/v1/artists/3OsRAKCvk37zwYcnzRf5XF	640	640	https://i.scdn.co/image/ab6761610000e5eb85e8c6cc75e2810460c84564
3Z7thZHrtFvqp8OpPffPKp	{"big beat",breakbeat,electronica,"funky breaks","trip hop"}	Propellerheads	44	https://api.spotify.com/v1/artists/3Z7thZHrtFvqp8OpPffPKp	1221	1000	https://i.scdn.co/image/e6b24e7bb959dc4a78c161c390d64ef3430a8c3a
3vbKDsSS70ZX9D2OcvbZmS	{"alternative rock",anti-folk,"permanent wave",rock,"slacker rock"}	Beck	67	https://api.spotify.com/v1/artists/3vbKDsSS70ZX9D2OcvbZmS	640	640	https://i.scdn.co/image/ab6761610000e5eb917df61d55ce3ab98d43351a
4tZwfgrHOc3mvqYlEYSvVi	{electro,"filter house",rock}	Daft Punk	82	https://api.spotify.com/v1/artists/4tZwfgrHOc3mvqYlEYSvVi	640	640	https://i.scdn.co/image/ab6761610000e5eba7bfd7835b5c1eee0c95fa6e
3V4IvzRQYP5mzuVtkcHgVa	{cyberpunk,"industrial metal","industrial rock","neue deutsche harte"}	KMFDM	54	https://api.spotify.com/v1/artists/3V4IvzRQYP5mzuVtkcHgVa	640	640	https://i.scdn.co/image/ab6761610000e5eb6a76d5a5d332ac3af978720e
4ZIBrskTJWmkJUvM7uAu1o	{metalcore,"neon pop punk","pop punk",post-hardcore,screamo}	Chiodos	52	https://api.spotify.com/v1/artists/4ZIBrskTJWmkJUvM7uAu1o	640	640	https://i.scdn.co/image/ab6761610000e5ebd6d001dc971f38973265d42d
5DslL3PUa3BcRlCCEP64A4	{"synth punk"}	The Hellp	51	https://api.spotify.com/v1/artists/5DslL3PUa3BcRlCCEP64A4	640	640	https://i.scdn.co/image/ab6761610000e5eb4b36191a7219740bb7ac63de
1CMml5seBEaxQzlmaGxMPx	{"indie garage rock","indie surf"}	The Buttertones	51	https://api.spotify.com/v1/artists/1CMml5seBEaxQzlmaGxMPx	640	640	https://i.scdn.co/image/ab6761610000e5eb0ca6ac22a1f4db64940f5da8
1DXylZlWbVvlckNqwvjTEt	{"alternative metal",industrial,"industrial metal","industrial rock","nu metal"}	Ministry	52	https://api.spotify.com/v1/artists/1DXylZlWbVvlckNqwvjTEt	640	640	https://i.scdn.co/image/ab6761610000e5eba6c17a36dc51a24feec25a48
1l2oLiukA9i5jEtIyNWIEP	{cyberpunk,darksynth,synthwave}	Carpenter Brut	56	https://api.spotify.com/v1/artists/1l2oLiukA9i5jEtIyNWIEP	640	640	https://i.scdn.co/image/ab6761610000e5eb98c84a7831bbcef2d6b5cc57
0UKfenbZb15sqhfPC6zbt3	{"alternative rock","art punk","dance rock","new romantic","new wave","new wave pop",post-punk,"synth punk",synthpop,zolo}	DEVO	55	https://api.spotify.com/v1/artists/0UKfenbZb15sqhfPC6zbt3	658	999	https://i.scdn.co/image/39a7e5e551639397c9ee7801e0e1755cf2affd1c
7HqrSDuI9lHuH1CDismTFg	{"alternative hip hop","hardcore hip hop","hip hop"}	AZ	57	https://api.spotify.com/v1/artists/7HqrSDuI9lHuH1CDismTFg	640	640	https://i.scdn.co/image/ab6761610000e5eb6de585ce055095290e66eaef
6h3rSZ8VLK7a5vXjEmhfuD	{"classic soul",disco,funk,"jazz funk","p funk",post-disco,"quiet storm",soul}	The Brothers Johnson	53	https://api.spotify.com/v1/artists/6h3rSZ8VLK7a5vXjEmhfuD	1130	1000	https://i.scdn.co/image/da974f58395fa763d0559071e73774cdc54ff3f9
2qT62DYO8Ajb276vUJmvhz	{"alternative rock","art punk","art rock",beatlesque,"new romantic","new wave","new wave pop",post-punk,"power pop","uk post-punk",zolo}	XTC	51	https://api.spotify.com/v1/artists/2qT62DYO8Ajb276vUJmvhz	683	1000	https://i.scdn.co/image/e6540622c946b42edd4c461f86fac6c3ca0ac61d
1eVEVL20zNLcGrPDOR691N	{"new romantic","new wave","permanent wave",ska,"ska revival"}	The English Beat	46	https://api.spotify.com/v1/artists/1eVEVL20zNLcGrPDOR691N	640	640	https://i.scdn.co/image/ab67616d0000b273fd4b0aa9db46867f1e2a8470
4uYwLU7k03RCQSRXGtQGg0	{"alternative metal","electronic rock","industrial metal","industrial rock","nu metal",post-grunge}	Orgy	50	https://api.spotify.com/v1/artists/4uYwLU7k03RCQSRXGtQGg0	640	640	https://i.scdn.co/image/ab67616d0000b273e7692be3f17e50f0c5f49116
0I7KLVHA1tXcQTJOrzcCv6	{"bongo flava"}	Chemical	9	https://api.spotify.com/v1/artists/0I7KLVHA1tXcQTJOrzcCv6	640	640	https://i.scdn.co/image/ab6761610000e5eb434b888c1c477d21762ebdec
11KvBkmbbdquNIPsdDyOqY	{}	The Chemical's	0	https://api.spotify.com/v1/artists/11KvBkmbbdquNIPsdDyOqY	640	640	https://i.scdn.co/image/ab6761610000e5eb7770ba1eb219c2b7ed1b42ef
2FvjP4xMXLotgRAztLbLX0	{}	The Most Wanted	40	https://api.spotify.com/v1/artists/2FvjP4xMXLotgRAztLbLX0	640	640	https://i.scdn.co/image/ab6761610000e5eb8412b00cea4ea8969da36b1a
41Q0HrwWBtuUkJc7C1Rp6K	{"alternative metal","alternative rock","funk metal","funk rock","nu metal","pop rock","rap rock","reggae fusion"}	311	63	https://api.spotify.com/v1/artists/41Q0HrwWBtuUkJc7C1Rp6K	640	640	https://i.scdn.co/image/ab6761610000e5eb580d1c8b58c11f498e0760c5
38PEBUtIITuIACuoVLRHBr	{}	The Chemicals	1	https://api.spotify.com/v1/artists/38PEBUtIITuIACuoVLRHBr	640	640	https://i.scdn.co/image/ab6761610000e5eb35bbc9625e57915851529eb3
4uWXeAHAmlHXkVYJtUASg5	{}	The Chemical War	0	https://api.spotify.com/v1/artists/4uWXeAHAmlHXkVYJtUASg5	640	640	https://i.scdn.co/image/ab67616d0000b2738c31ca48c998809f2359a150
4OBwhqJvJJWKhx1CMq1Z4y	{}	Chemical Boy	0	https://api.spotify.com/v1/artists/4OBwhqJvJJWKhx1CMq1Z4y	640	640	https://i.scdn.co/image/ab6761610000e5ebaf1e97a6f25b405bcd2ba78e
2yiXoBSrSKnSBV4TBXiv4h	{}	The Bad Chemicals	0	https://api.spotify.com/v1/artists/2yiXoBSrSKnSBV4TBXiv4h	0	0	
2soWDofAQaAeFnIa3gjfVw	{}	The Chemical Distance	0	https://api.spotify.com/v1/artists/2soWDofAQaAeFnIa3gjfVw	640	640	https://i.scdn.co/image/ab67616d0000b273a2495c0a7ed5ec10ba47f62c
0IJYcPi729j6zu8IeZmbjq	{}	TheChemist	22	https://api.spotify.com/v1/artists/0IJYcPi729j6zu8IeZmbjq	640	640	https://i.scdn.co/image/ab6761610000e5ebb559142ac06f5e795159abca
2IS9rTtWwEfUEY4u3mecIT	{"chamber orchestra"}	The Chamber Orchestra Of London	52	https://api.spotify.com/v1/artists/2IS9rTtWwEfUEY4u3mecIT	640	640	https://i.scdn.co/image/ab67616d0000b2731125f1ac6ddb29dd7556517c
1LB8qB5BPb3MHQrfkvifXU	{"album rock",beatlesque,"classic rock","glam metal","glam rock","hard rock","mellow gold","power pop",rock,singer-songwriter,"soft rock"}	Cheap Trick	61	https://api.spotify.com/v1/artists/1LB8qB5BPb3MHQrfkvifXU	1000	1000	https://i.scdn.co/image/ab6772690000c46c5ad27b7aba43e761f7e3ec46
0eVyjRhzZKke2KFYTcDkeu	{"alternative hip hop","drumless hip hop","hip hop","instrumental hip hop","west coast rap"}	The Alchemist	73	https://api.spotify.com/v1/artists/0eVyjRhzZKke2KFYTcDkeu	427	570	https://i.scdn.co/image/8a0d2c9a5bb08a3fd8e6ad457014022cb232525b
6TD08jYeuN128P2MZTbc8E	{"american orchestra","classical performance",orchestra}	Chicago Symphony Orchestra	55	https://api.spotify.com/v1/artists/6TD08jYeuN128P2MZTbc8E	640	640	https://i.scdn.co/image/ab6761610000e5eb7e3487f5797a7920b45a184c
07d5etnpjriczFBB8pxmRe	{"alternative r&b","chicago rap"}	BJ The Chicago Kid	60	https://api.spotify.com/v1/artists/07d5etnpjriczFBB8pxmRe	640	640	https://i.scdn.co/image/ab6761610000e5eb5c57299410c9b68fee2ed781
4salDzkGmfycRqNUbyBphh	{"album rock","classic rock","glam metal","hard rock","mellow gold","progressive rock",rock,"soft rock"}	Styx	62	https://api.spotify.com/v1/artists/4salDzkGmfycRqNUbyBphh	640	640	https://i.scdn.co/image/ab6761610000e5ebc2a482e06d5e31e6cc6cf7ec
6kHqXdtT1ojaXisSUA4mby	{kavkaz,"russian hip hop"}	The Chemodan	37	https://api.spotify.com/v1/artists/6kHqXdtT1ojaXisSUA4mby	640	640	https://i.scdn.co/image/ab6761610000e5eb2976155b5a9410632c014a03
25IG9fa7cbdmCIy3OnuH57	{"contemporary country",country,"country dawn"}	The Chicks	67	https://api.spotify.com/v1/artists/25IG9fa7cbdmCIy3OnuH57	640	640	https://i.scdn.co/image/ab6761610000e5eb43d9d87bba466538f5c40901
12d4iIvTOk7JkI6ecvc3ca	{"album rock","classic rock",country,"country rock","southern rock"}	The Charlie Daniels Band	60	https://api.spotify.com/v1/artists/12d4iIvTOk7JkI6ecvc3ca	640	640	https://i.scdn.co/image/ab6761610000e5eb84e8dcb90d1d55643d417744
1SCWcYnoEh1978ycTDhZoW	{"children's music"}	Alvin & The Chipmunks	57	https://api.spotify.com/v1/artists/1SCWcYnoEh1978ycTDhZoW	1000	1000	https://i.scdn.co/image/75447d3644a78f052d46e33f9d9d214017b81ced
0spHbv2fw49lDMkbOAdaqX	{wrestling}	WWE	66	https://api.spotify.com/v1/artists/0spHbv2fw49lDMkbOAdaqX	640	640	https://i.scdn.co/image/ab6761610000e5eb172d5c6e9176e108edf89c19
6ereX9sq3PEIBLASJA8YEW	{}	cosmic collective	41	https://api.spotify.com/v1/artists/6ereX9sq3PEIBLASJA8YEW	640	640	https://i.scdn.co/image/ab6761610000e5eb71059cbfba8eea68a65ab563
4ntkql3f3ect7NDRUJ7aAY	{"girl group","movie tunes","post-teen pop"}	The Cheetah Girls	49	https://api.spotify.com/v1/artists/4ntkql3f3ect7NDRUJ7aAY	640	640	https://i.scdn.co/image/ab6761610000e5eb43c7cf8b33edbad7c8d0bb6e
3yt4IVDHz0luREG9Uf9xrp	{"surf music"}	The Champs	49	https://api.spotify.com/v1/artists/3yt4IVDHz0luREG9Uf9xrp	292	344	https://i.scdn.co/image/1ec59b5e51d4f0e44a44fe2ff994c22ffab0105f
1aQ7P3HtKOQFW16ebjiks1	{"australian garage punk","brisbane punk"}	The Chats	53	https://api.spotify.com/v1/artists/1aQ7P3HtKOQFW16ebjiks1	640	640	https://i.scdn.co/image/ab6761610000e5eba43a92d50e11b126604d710e
2yQf6b8hxahZaT5dHlWaB1	{"east coast hip hop","hardcore hip hop"}	Raekwon	64	https://api.spotify.com/v1/artists/2yQf6b8hxahZaT5dHlWaB1	1000	1000	https://i.scdn.co/image/03463cee551c78964f76b0067307fba60982129e
2ZfogSsOWP4mVfEqfpLXCt	{"australian rock","dream pop","new romantic","new wave"}	The Church	52	https://api.spotify.com/v1/artists/2ZfogSsOWP4mVfEqfpLXCt	640	640	https://i.scdn.co/image/ab6761610000e5ebf87738dae4fe74422080fa5c
0WdNVS1rOeusXfVUx3tYOL	{}	The Chenille Sisters	27	https://api.spotify.com/v1/artists/0WdNVS1rOeusXfVUx3tYOL	640	1000	https://i.scdn.co/image/a27885670ddc60fe091203c60f724790a1740fb2
2iSZ41LUUYVcz5At9Xuz7T	{doo-wop}	The Chords	53	https://api.spotify.com/v1/artists/2iSZ41LUUYVcz5At9Xuz7T	1195	1000	https://i.scdn.co/image/708fbf09f9ef98730447e12350d711369bbe0568
0TfWxv8ygT7qBnqxqyYige	{"pop worship",worship}	The Church Will Sing	51	https://api.spotify.com/v1/artists/0TfWxv8ygT7qBnqxqyYige	640	640	https://i.scdn.co/image/ab6761610000e5ebc6d262fba61dfaa2ad50c2ae
1anyVhU62p31KFi8MEzkbf	{"chicago rap","conscious hip hop","hip hop","pop rap",rap,trap}	Chance the Rapper	75	https://api.spotify.com/v1/artists/1anyVhU62p31KFi8MEzkbf	640	640	https://i.scdn.co/image/ab6761610000e5ebe8717f034edfa96049ece459
62GnBjssWSXBlKvQohT2Bk	{"classic girl group",doo-wop,"vocal harmony group"}	The Chordettes	54	https://api.spotify.com/v1/artists/62GnBjssWSXBlKvQohT2Bk	640	640	https://i.scdn.co/image/ab67616d0000b2739982ca6766d2f5800a47605f
5nSGBmlgUdqWNExnOX8VtV	{environmental,sleep,sound,water}	Rain Sounds	83	https://api.spotify.com/v1/artists/5nSGBmlgUdqWNExnOX8VtV	640	640	https://i.scdn.co/image/ab6761610000e5eb51055ae5a7950c3399243e59
7BFr36uI1dzJyo6tpa5Ued	{"chicago soul","classic soul",disco,funk,"quiet storm",soul,"southern soul"}	The Chi-Lites	48	https://api.spotify.com/v1/artists/7BFr36uI1dzJyo6tpa5Ued	640	640	https://i.scdn.co/image/ab6761610000e5eb8548d37fd495839b1c28ccc1
4lxfqrEsLX6N1N4OCSkILp	{"rock drums","soft rock"}	Phil Collins	78	https://api.spotify.com/v1/artists/4lxfqrEsLX6N1N4OCSkILp	640	640	https://i.scdn.co/image/ab6761610000e5ebd4e38c4e3e5c82774740e28d
7bu3H8JO7d0UbMoVzbo70s	{"new wave","permanent wave",rock,"uk post-punk"}	The Cure	79	https://api.spotify.com/v1/artists/7bu3H8JO7d0UbMoVzbo70s	640	640	https://i.scdn.co/image/ab6761610000e5ebdd427c765c409ec02dc3a868
6DCIj8jNaNpBz8e5oKFPtp	{"album rock","classic rock","hard rock","mellow gold","new romantic","new wave","new wave pop","permanent wave","power pop",rock,singer-songwriter,"soft rock",synthpop}	The Cars	67	https://api.spotify.com/v1/artists/6DCIj8jNaNpBz8e5oKFPtp	1000	1000	https://i.scdn.co/image/ccef506dcc1eafa2f44270918b3ba962e67ea3ad
7t0rwkOPGlDPEhaOcVtOt9	{"irish rock","pop rock",rock}	The Cranberries	78	https://api.spotify.com/v1/artists/7t0rwkOPGlDPEhaOcVtOt9	667	1000	https://i.scdn.co/image/143c01f407ed64a4b3bcbc92d24c05ef80981251
3RGLhK1IP9jnYFH4BRFJBS	{"alternative rock","permanent wave",punk,rock}	The Clash	72	https://api.spotify.com/v1/artists/3RGLhK1IP9jnYFH4BRFJBS	676	1000	https://i.scdn.co/image/ab470b275daa38351810a1eb91d107ebdb821302
5U6leWxYKsuTkd4kXcF1a6	{"grand rapids indie","michigan indie","pov: indie"}	The Crane Wives	64	https://api.spotify.com/v1/artists/5U6leWxYKsuTkd4kXcF1a6	640	640	https://i.scdn.co/image/ab6761610000e5eb18e891f1b9349d4df35864d5
49DW3KvkyjHO35mK1JnSyS	{"album rock","hard rock","new wave",rock}	The Cult	60	https://api.spotify.com/v1/artists/49DW3KvkyjHO35mK1JnSyS	640	640	https://i.scdn.co/image/ab6761610000e5ebdf38241a863ac3fe6eeee047
0eAIEUK12iNUmSrx7FnHKD	{}	Drak	17	https://api.spotify.com/v1/artists/0eAIEUK12iNUmSrx7FnHKD	640	640	https://i.scdn.co/image/ab67616d0000b27348cbf91a3c58eb807d0a92a1
3Qz5wik7LV8VSiGzbfj2yZ	{}	Dragon Ball	28	https://api.spotify.com/v1/artists/3Qz5wik7LV8VSiGzbfj2yZ	640	640	https://i.scdn.co/image/ab6761610000e5ebaf903286a003a3a767194713
5298BtBsIkjSsWwvpRR7sg	{}	DreTL	22	https://api.spotify.com/v1/artists/5298BtBsIkjSsWwvpRR7sg	640	640	https://i.scdn.co/image/ab6761610000e5eb87bff0a04d5676f35700ffc6
6LArUyIoMiHmDvvOAsE2cd	{pixel}	Dream	49	https://api.spotify.com/v1/artists/6LArUyIoMiHmDvvOAsE2cd	640	640	https://i.scdn.co/image/ab6761610000e5eb6f7500437ff98a04fd97b8c5
1aw0Cdl1DIrtUrUA6fGbAR	{"argentine reggae","rock en espanol"}	Dread Mar I	73	https://api.spotify.com/v1/artists/1aw0Cdl1DIrtUrUA6fGbAR	640	640	https://i.scdn.co/image/ab6761610000e5eb39fd3a6442b87feaa2d55fe0
5Qi4Bb7a8C0a00NZcA77L0	{"detroit hip hop","gangster rap","hip hop"}	D12	66	https://api.spotify.com/v1/artists/5Qi4Bb7a8C0a00NZcA77L0	640	640	https://i.scdn.co/image/ab6761610000e5eb4f52827861ae9b860a5e62f6
2CQZr2RPZmrcvDnaod1ldC	{k-pop}	D.O.	66	https://api.spotify.com/v1/artists/2CQZr2RPZmrcvDnaod1ldC	640	640	https://i.scdn.co/image/ab6761610000e5eb202096eb5086c39a21851705
1HwM5zlC5qNWhJtM00yXzG	{"detroit hip hop","east coast hip hop","gangster rap","hardcore hip hop","hip hop",rap}	DMX	72	https://api.spotify.com/v1/artists/1HwM5zlC5qNWhJtM00yXzG	1000	1000	https://i.scdn.co/image/ab6772690000c46c3074f51af22630a1c86da016
5icKdCmMhNMYoAzVBAWt39	{"canadian hip hop","ottawa rap"}	Dax	68	https://api.spotify.com/v1/artists/5icKdCmMhNMYoAzVBAWt39	640	640	https://i.scdn.co/image/ab6761610000e5eb2a9440635255a6f4f132fc64
2THPifY3pg9crvJrg9yOzr	{"bronx drill","new york drill"}	Dthang	55	https://api.spotify.com/v1/artists/2THPifY3pg9crvJrg9yOzr	640	640	https://i.scdn.co/image/ab6761610000e5ebd90858a354951856955df28b
3LxyybGMussJaKdrdt5MET	{"trap queen"}	Diamond The Body	32	https://api.spotify.com/v1/artists/3LxyybGMussJaKdrdt5MET	640	640	https://i.scdn.co/image/ab6761610000e5eb1dac2115e130b1931d7c5f2b
37ioGUZGhKk7VjWIocx8kM	{"cloud rap francais","french hip hop","pop urbaine","rap conscient","rap francais"}	DTF	61	https://api.spotify.com/v1/artists/37ioGUZGhKk7VjWIocx8kM	640	640	https://i.scdn.co/image/ab6761610000e5eb7d68e3fe4001bd0aa89d7c01
0kZR17VlNrcdJAOTq0APrU	{}	Dtay Known	4	https://api.spotify.com/v1/artists/0kZR17VlNrcdJAOTq0APrU	640	640	https://i.scdn.co/image/ab67616d0000b273e5172f1d6454e0a0db0b4bde
5kfMU816qY0ujqEt3xIHqR	{"cumbia 420"}	DT.Bilardo	58	https://api.spotify.com/v1/artists/5kfMU816qY0ujqEt3xIHqR	640	640	https://i.scdn.co/image/ab6761610000e5eb9cb3aad8bcaa7faa1cfea221
6UYPzNMXXBGcGywqMUwqn2	{}	Dtrue	40	https://api.spotify.com/v1/artists/6UYPzNMXXBGcGywqMUwqn2	640	640	https://i.scdn.co/image/ab6761610000e5ebc49bd2e387c0a8b6e62926ff
6kZWqUZqptyxb8Ki5DyBAg	{afroswing}	DTG	54	https://api.spotify.com/v1/artists/6kZWqUZqptyxb8Ki5DyBAg	640	640	https://i.scdn.co/image/ab6761610000e5eb01811f2063f92befc968380e
5k3KbrfdrZTfasGvrebyzr	{"boston drill","brockton hip hop"}	DTheFlyest	32	https://api.spotify.com/v1/artists/5k3KbrfdrZTfasGvrebyzr	640	640	https://i.scdn.co/image/ab6761610000e5eb26a5d223f89dd14692f44d18
032G6RVkSFgnMbGs2v3ufc	{}	DTE Lil DayDay	41	https://api.spotify.com/v1/artists/032G6RVkSFgnMbGs2v3ufc	640	640	https://i.scdn.co/image/ab6761610000e5eb8a329cf2b8017d8418c59577
4a5dX5Y0Q6ib3nR6zzpHwX	{"chill house","tropical house"}	DT James	53	https://api.spotify.com/v1/artists/4a5dX5Y0Q6ib3nR6zzpHwX	640	640	https://i.scdn.co/image/ab6761610000e5ebbaf819c2e271b22ceedeaec9
4mPRJSwzaC22uNMnj6yB0e	{}	DTAILR	48	https://api.spotify.com/v1/artists/4mPRJSwzaC22uNMnj6yB0e	640	640	https://i.scdn.co/image/ab6761610000e5eb39b021b344fc9d8cfe8aa22f
5L9ssI4l4DKU1za4ZwvKvG	{v-pop}	DTAP	47	https://api.spotify.com/v1/artists/5L9ssI4l4DKU1za4ZwvKvG	640	640	https://i.scdn.co/image/ab6761610000e5eb64c495717c271408458fa96d
3v8WhNMUiwgGkkLHIkpQOA	{}	Dta	0	https://api.spotify.com/v1/artists/3v8WhNMUiwgGkkLHIkpQOA	640	640	https://i.scdn.co/image/ab67616d0000b2739a09ad3a7e92bd3f4bdca801
6kNzhTpSxGfG0dxqMuraWy	{}	DTale	46	https://api.spotify.com/v1/artists/6kNzhTpSxGfG0dxqMuraWy	640	640	https://i.scdn.co/image/ab6761610000e5ebd2cf6fc5279978ecc7223063
7dGJo4pcD2V6oG8kP0tJRR	{"detroit hip hop","hip hop",rap}	Eminem	93	https://api.spotify.com/v1/artists/7dGJo4pcD2V6oG8kP0tJRR	640	640	https://i.scdn.co/image/ab6761610000e5eba00b11c129b27a88fc72f36b
3Ft0q1e2a8wz3mboOmPmI9	{}	TheDooo	44	https://api.spotify.com/v1/artists/3Ft0q1e2a8wz3mboOmPmI9	640	640	https://i.scdn.co/image/ab6761610000e5eb9df558ebc6f29bc24809f286
1W3FSF1BLpY3hlVIgvenLz	{"dirty south rap","hip pop",r&b,"southern hip hop",trap,"urban contemporary"}	The-Dream	66	https://api.spotify.com/v1/artists/1W3FSF1BLpY3hlVIgvenLz	640	640	https://i.scdn.co/image/ab6761610000e5eba01ad0bea0957a2e3b7c3ced
5Yz2RjLWPx1PcIRoiot9Sc	{"desi pop"}	The Doorbeen	45	https://api.spotify.com/v1/artists/5Yz2RjLWPx1PcIRoiot9Sc	640	640	https://i.scdn.co/image/ab6761610000e5eb8191af3c6f61c7e93e04a3fe
3gFZrEpUIUphZLOUPOBD85	{}	Thed	39	https://api.spotify.com/v1/artists/3gFZrEpUIUphZLOUPOBD85	640	640	https://i.scdn.co/image/ab6761610000e5eb3e38ef0e06d17ae18a3aff26
0hYtrPQ05Qu1N5r0QcpoDp	{}	The Deep	37	https://api.spotify.com/v1/artists/0hYtrPQ05Qu1N5r0QcpoDp	640	640	https://i.scdn.co/image/ab6761610000e5ebff19d619c1b05ddfbefd6990
2LjKvBfEcbCAG4HHcBWCkR	{}	Thed	0	https://api.spotify.com/v1/artists/2LjKvBfEcbCAG4HHcBWCkR	0	0	
1YQg0jqLV5RT98HjMXxzaO	{"german viral rap"}	TheDoDo	47	https://api.spotify.com/v1/artists/1YQg0jqLV5RT98HjMXxzaO	640	640	https://i.scdn.co/image/ab6761610000e5eb477ec5ce1ed46505ce8242ab
0urSXJOUkJ0NRo9nqvchmE	{}	THEDDG	24	https://api.spotify.com/v1/artists/0urSXJOUkJ0NRo9nqvchmE	640	640	https://i.scdn.co/image/ab67616d0000b273160f5425e289a9d237cbe74e
4ug92W02N1YsgX0t5wuXSl	{"canadian americana","saskatchewan indie"}	The Deep Dark Woods	33	https://api.spotify.com/v1/artists/4ug92W02N1YsgX0t5wuXSl	640	640	https://i.scdn.co/image/ab6761610000e5eb65a718e05e28c82f904c473a
22bE4uQ6baNwSHPVcDxLCe	{"album rock","british invasion","classic rock",rock}	The Rolling Stones	80	https://api.spotify.com/v1/artists/22bE4uQ6baNwSHPVcDxLCe	640	640	https://i.scdn.co/image/ab6761610000e5ebe4cea917b68726aadb4854b8
6IKlXZEFOvk9itrP1s0knJ	{"modern country pop"}	The Red Clay Strays	73	https://api.spotify.com/v1/artists/6IKlXZEFOvk9itrP1s0knJ	640	640	https://i.scdn.co/image/ab6761610000e5eb1f87bfc1e824789e91573493
7CyeXFnOrfC1N6z4naIpgo	{"brill building pop","classic girl group",motown,rock-and-roll}	The Ronettes	73	https://api.spotify.com/v1/artists/7CyeXFnOrfC1N6z4naIpgo	640	640	https://i.scdn.co/image/ab6761610000e5ebc47897b69089f59e31817f26
0MvSBMGRQJY3mRwIbJsqF1	{"british orchestra",orchestra}	Royal Philharmonic Orchestra	71	https://api.spotify.com/v1/artists/0MvSBMGRQJY3mRwIbJsqF1	640	640	https://i.scdn.co/image/ab6761610000e5ebf9cd4a9062ded7cb2b8a351b
1pPmIToKXyGdsCF6LmqLmI	{"atl hip hop","melodic rap",plugg,rap,trap}	Rich The Kid	68	https://api.spotify.com/v1/artists/1pPmIToKXyGdsCF6LmqLmI	640	640	https://i.scdn.co/image/ab6761610000e5eb831fd7e9e9fe1b0217791b94
74eX4C98E4FCrAMl39qRsJ	{"alternative metal","canadian metal","canadian rock","nu metal",post-grunge}	Theory of a Deadman	64	https://api.spotify.com/v1/artists/74eX4C98E4FCrAMl39qRsJ	640	640	https://i.scdn.co/image/ab6761610000e5eb6cff6acc48314698c7d9ce87
1SImpQO0GbjRgvlwCcCtFo	{"alternative metal","neon pop punk","pop punk",post-grunge,screamo}	The Red Jumpsuit Apparatus	65	https://api.spotify.com/v1/artists/1SImpQO0GbjRgvlwCcCtFo	640	640	https://i.scdn.co/image/ab6761610000e5ebb4223cca4841b3e52a7133f1
1co4F2pPNH8JjTutZkmgSm	{"alternative rock","early us punk","permanent wave",punk,rock}	Ramones	68	https://api.spotify.com/v1/artists/1co4F2pPNH8JjTutZkmgSm	640	640	https://i.scdn.co/image/ab6761610000e5eb5b9f46a5c5bf8243179d56b0
2W8UTum7bU7ue6m0r14H97	{"classic soul",disco,funk,"memphis soul",motown,post-disco,"quiet storm",soul,"southern soul"}	The Dramatics	51	https://api.spotify.com/v1/artists/2W8UTum7bU7ue6m0r14H97	640	640	https://i.scdn.co/image/ab6761610000e5ebd15f13462e344608adf2b103
0npnqS0C9n5uuuBQC4oEWE	{}	The Dryes	26	https://api.spotify.com/v1/artists/0npnqS0C9n5uuuBQC4oEWE	640	640	https://i.scdn.co/image/ab6761610000e5ebc2fd2010666ab7ee78f5b713
1QfpRUtH14JLoY6F6AYmwt	{"la indie"}	The Rare Occasions	66	https://api.spotify.com/v1/artists/1QfpRUtH14JLoY6F6AYmwt	640	640	https://i.scdn.co/image/ab6761610000e5ebdfbb3ce9689cd670c2a0d43a
780gQrGXtyD1k3U5PtCJVs	{}	THE DRAF FILA	14	https://api.spotify.com/v1/artists/780gQrGXtyD1k3U5PtCJVs	640	640	https://i.scdn.co/image/ab6761610000e5eb69e6568b848f24e0d9ec17b7
5mr4WfWPzgdI4YDjLldD2U	{}	thedreamofficialll	16	https://api.spotify.com/v1/artists/5mr4WfWPzgdI4YDjLldD2U	640	640	https://i.scdn.co/image/ab6761610000e5eb893e7299c62d5f9e0ae98283
4Uux6BdaCNrVFQ0bqGRtfh	{"classic texas country","red dirt","texas country"}	Randall King	56	https://api.spotify.com/v1/artists/4Uux6BdaCNrVFQ0bqGRtfh	640	640	https://i.scdn.co/image/ab6761610000e5eba10ce76da5bac168995839ca
32Dm8babudNSOuAasp3Bjz	{"detroit indie"}	The Dropout	16	https://api.spotify.com/v1/artists/32Dm8babudNSOuAasp3Bjz	640	640	https://i.scdn.co/image/ab6761610000e5eb2186c5751643b9e1b53c3ac9
0oeUpvxWsC8bWS6SnpU8b9	{"auckland indie",indietronica,"kiwi rock",metropopolis}	The Naked And Famous	57	https://api.spotify.com/v1/artists/0oeUpvxWsC8bWS6SnpU8b9	640	640	https://i.scdn.co/image/ab6761610000e5eb1b0c23f02c20730e909961e9
0HQiwspXm03L5BmzTgK1hV	{"instrumental worship"}	The Maker & The Instrument	47	https://api.spotify.com/v1/artists/0HQiwspXm03L5BmzTgK1hV	640	640	https://i.scdn.co/image/ab67616d0000b2733497b8e2cf0a71a4a0b0c599
2HpfqDQ8DBQlnrbAsdIh7s	{corecore}	Take Care	65	https://api.spotify.com/v1/artists/2HpfqDQ8DBQlnrbAsdIh7s	640	640	https://i.scdn.co/image/ab6761610000e5ebce78ab0b536fd4ca2820e04f
3LTXHU3DhiYzGIgF2PP8Q8	{dance-punk,"danish alternative rock","danish rock","garage rock","modern dream pop"}	The Raveonettes	45	https://api.spotify.com/v1/artists/3LTXHU3DhiYzGIgF2PP8Q8	640	640	https://i.scdn.co/image/ab6761610000e5eb4edbb3b6552e04410318175a
3QTDHixorJelOLxoxcjqGx	{"alternative r&b","la pop"}	SiR	67	https://api.spotify.com/v1/artists/3QTDHixorJelOLxoxcjqGx	640	640	https://i.scdn.co/image/ab6761610000e5eb49650981041de1e313be97d8
76aGEtm2km31C2cxSqv7kF	{}	Dta	0	https://api.spotify.com/v1/artists/76aGEtm2km31C2cxSqv7kF	640	640	https://i.scdn.co/image/ab6761610000e5eb25f3d644eb8c64ac6079ae9e
1Ia5iTYHMBsMQfi7Fbcbuw	{gymcore,"melodic groove metal","uk metalcore"}	The Raven Age	42	https://api.spotify.com/v1/artists/1Ia5iTYHMBsMQfi7Fbcbuw	640	640	https://i.scdn.co/image/ab6761610000e5eb0963b13e74771274258fea8c
5M0lbkGluOPXLeFjApw8r8	{trap,"underground hip hop","viral trap","virginia hip hop"}	DRAM	60	https://api.spotify.com/v1/artists/5M0lbkGluOPXLeFjApw8r8	640	640	https://i.scdn.co/image/ab6761610000e5ebee20a82c49b45b9fbc3baead
7mDQwcnDUGuSoggxbUtVc1	{"british indie rock",dance-punk,"new rave"}	The Rakes	31	https://api.spotify.com/v1/artists/7mDQwcnDUGuSoggxbUtVc1	490	490	https://i.scdn.co/image/fd23d610c0f8bcb7604cf5431c1dc199dbda633e
2407RaDfx1PiDh10UEfjnE	{}	thedrakeeffect	0	https://api.spotify.com/v1/artists/2407RaDfx1PiDh10UEfjnE	640	640	https://i.scdn.co/image/ab67616d0000b2739d8b1df4d7432f34715f11a1
6O5rS1kQDtvHBHdIyL1VR7	{"children's choir","south african choral"}	Drakensberg Boys Choir	21	https://api.spotify.com/v1/artists/6O5rS1kQDtvHBHdIyL1VR7	640	640	https://i.scdn.co/image/ab6761610000e5ebe0dd19ef3e11d4fba701e1a4
7LvvNoUPwTZpgXDWBRrfHg	{"indie soul"}	DRAMA	59	https://api.spotify.com/v1/artists/7LvvNoUPwTZpgXDWBRrfHg	640	640	https://i.scdn.co/image/ab6761610000e5ebe0fab40ca94631e8a0936e5c
1akUOJhf77cbKJveLHgxpy	{chutney,"jamaican ska",rocksteady}	Byron Lee & The Dragonaires	34	https://api.spotify.com/v1/artists/1akUOJhf77cbKJveLHgxpy	640	640	https://i.scdn.co/image/ab67616d0000b273e6eb14291e4a0a4814e22b5c
0guZKs4ntZMFAib7eHGU81	{}	The Drake Brothers	12	https://api.spotify.com/v1/artists/0guZKs4ntZMFAib7eHGU81	640	640	https://i.scdn.co/image/ab6761610000e5eb486a599dbe9b0bdbe30698d9
1glhPMhwoZYEKBBhDS6V47	{"memphis hip hop"}	DracBaby	37	https://api.spotify.com/v1/artists/1glhPMhwoZYEKBBhDS6V47	640	640	https://i.scdn.co/image/ab67616d0000b273416d97672a11bb741c04dfc8
7iWYk2JkhclMU2oHP0er5c	{}	DTAGG	18	https://api.spotify.com/v1/artists/7iWYk2JkhclMU2oHP0er5c	640	640	https://i.scdn.co/image/ab6761610000e5eb287b851a33e13d1f160ca58d
4U0kiWR6IHsthT88GvOKm1	{}	Dta	0	https://api.spotify.com/v1/artists/4U0kiWR6IHsthT88GvOKm1	640	640	https://i.scdn.co/image/ab67616d0000b273cab13caae0e92be5d337ff35
1NJKXHFftFMDRARB9xmUyV	{}	DTA	12	https://api.spotify.com/v1/artists/1NJKXHFftFMDRARB9xmUyV	640	640	https://i.scdn.co/image/ab6761610000e5eb84840c94db3d580811554a63
7lowQI2hK1P6uDijmyQcvo	{}	Dtay	0	https://api.spotify.com/v1/artists/7lowQI2hK1P6uDijmyQcvo	0	0	
6ngjWC5jnjXoBp7TZnIx6F	{}	Dtay	0	https://api.spotify.com/v1/artists/6ngjWC5jnjXoBp7TZnIx6F	0	0	
48YLmkxFt7qeW6IDxMgPLP	{}	Dtay	0	https://api.spotify.com/v1/artists/48YLmkxFt7qeW6IDxMgPLP	0	0	
0D47IfqCu4e0rfL0oFFXAn	{}	Dtay	0	https://api.spotify.com/v1/artists/0D47IfqCu4e0rfL0oFFXAn	640	640	https://i.scdn.co/image/ab67616d0000b27335c17d09973c354bd9d1d2b8
4ILi4D796nlBxlTm137jhI	{}	Dtaylz the Profit	7	https://api.spotify.com/v1/artists/4ILi4D796nlBxlTm137jhI	640	640	https://i.scdn.co/image/ab6761610000e5ebebcf0cab9251f8918228d403
5vROwunI3FXq4OFKkUsXeL	{}	Dtay	0	https://api.spotify.com/v1/artists/5vROwunI3FXq4OFKkUsXeL	0	0	
5MMkL1axcHCtC0DaVpnMbf	{}	Dtayls	4	https://api.spotify.com/v1/artists/5MMkL1axcHCtC0DaVpnMbf	640	640	https://i.scdn.co/image/ab67616d0000b2731d09a74b6c6ad079211e7d28
3LB97b7MxzHUjZtogRnnzO	{}	DTAYL	10	https://api.spotify.com/v1/artists/3LB97b7MxzHUjZtogRnnzO	640	640	https://i.scdn.co/image/ab6761610000e5eb35c9aafb7550e17b76716978
4cZzyigGiJBp4fE7yCuPyx	{}	Dtaylz	0	https://api.spotify.com/v1/artists/4cZzyigGiJBp4fE7yCuPyx	0	0	
2sJBBweYKNnvQOXUt9wHpG	{}	Dtaylz the Profit	0	https://api.spotify.com/v1/artists/2sJBBweYKNnvQOXUt9wHpG	0	0	
6ZpoL2C83LGsXXAqGiM1cz	{}	Dtayls	0	https://api.spotify.com/v1/artists/6ZpoL2C83LGsXXAqGiM1cz	0	0	
5CiDDC8ES7XB8PopAZrUFI	{}	Dtayls	0	https://api.spotify.com/v1/artists/5CiDDC8ES7XB8PopAZrUFI	0	0	
3nTzjZKqgNnAhAhUsnKAq6	{}	Dtaylurr	3	https://api.spotify.com/v1/artists/3nTzjZKqgNnAhAhUsnKAq6	640	640	https://i.scdn.co/image/ab6761610000e5ebc0c6aa4a099264a148b1127f
7bYZbOOMuSHn0NEE71aNWh	{}	DTaylor	0	https://api.spotify.com/v1/artists/7bYZbOOMuSHn0NEE71aNWh	640	640	https://i.scdn.co/image/ab67616d0000b2732db4aa7ce4eea778e0705a9e
2O5LlZjAQdGyHqSdJvUxpW	{}	dtaylor	0	https://api.spotify.com/v1/artists/2O5LlZjAQdGyHqSdJvUxpW	0	0	
2XPIkWRa1vKm3Na9tuCdaQ	{}	D.Taylor	0	https://api.spotify.com/v1/artists/2XPIkWRa1vKm3Na9tuCdaQ	640	640	https://i.scdn.co/image/ab67616d0000b2733fef4faef465913712e665b4
42ivk20PKu1xUsnBMT7eP2	{}	D.Taylor	0	https://api.spotify.com/v1/artists/42ivk20PKu1xUsnBMT7eP2	640	640	https://i.scdn.co/image/ab6761610000e5eb507877f54d4273bd647f3280
2bu9m2B3C5EcfTITGxEO3s	{}	D. Taylor	0	https://api.spotify.com/v1/artists/2bu9m2B3C5EcfTITGxEO3s	640	640	https://i.scdn.co/image/ab6761610000e5eb8e8ca9c5544906737c468b37
40iPKEnWcc3uo4mmkPlXaQ	{}	Dtaylor	0	https://api.spotify.com/v1/artists/40iPKEnWcc3uo4mmkPlXaQ	640	640	https://i.scdn.co/image/ab67616d0000b273159dd12a245ff724ce8e489b
4hsODnHwgqmRM8ym63GA3S	{}	Taylor S Brooks	54	https://api.spotify.com/v1/artists/4hsODnHwgqmRM8ym63GA3S	640	640	https://i.scdn.co/image/ab67616d0000b27394398f0e4f5e5e381e2dfeed
2M3GH9JFk7Z62j2XarUJ1g	{}	Sydney Taylor Band	49	https://api.spotify.com/v1/artists/2M3GH9JFk7Z62j2XarUJ1g	640	640	https://i.scdn.co/image/ab6761610000e5eb251526e8fe3eb33f3424361e
4RG7tWsxcGEyY5EtLKW4X7	{}	Taylor Stone	39	https://api.spotify.com/v1/artists/4RG7tWsxcGEyY5EtLKW4X7	640	640	https://i.scdn.co/image/ab67616d0000b273a893d2f6c3d3a9fab9104203
0fhN6BHa9pN66ZnsrI5NUR	{"light music","post-romantic era","victorian britain"}	Samuel Coleridge-Taylor	41	https://api.spotify.com/v1/artists/0fhN6BHa9pN66ZnsrI5NUR	1000	1000	https://i.scdn.co/image/f0df97f483fa812b9ae9313d60af2060e7d3d07d
4U2c0PjUOI1bev9LGx6kHk	{}	Taylor swi	4	https://api.spotify.com/v1/artists/4U2c0PjUOI1bev9LGx6kHk	640	640	https://i.scdn.co/image/ab6761610000e5eba4d2d1716a1f7e7e160f4d1a
5enXh7VYtH8x63M7coq9tJ	{"indie r&b"}	Taylor Hill	51	https://api.spotify.com/v1/artists/5enXh7VYtH8x63M7coq9tJ	640	640	https://i.scdn.co/image/ab6761610000e5eb84132b84923af22a62ca8ac2
27feHJH3VKyk8FgOndiWU8	{}	Taylr Renee	42	https://api.spotify.com/v1/artists/27feHJH3VKyk8FgOndiWU8	640	640	https://i.scdn.co/image/ab6761610000e5ebc93aaa949639c73ea1b7e2df
3Fxg10eJ6YmvUdM2PPB4Zk	{"alt z"}	Taylor Bickett	48	https://api.spotify.com/v1/artists/3Fxg10eJ6YmvUdM2PPB4Zk	640	640	https://i.scdn.co/image/ab6761610000e5eb2ff3da9621af6552908556a0
0BF6oSukHpVi4HOfSsqKKK	{}	Taylor Shaffer	23	https://api.spotify.com/v1/artists/0BF6oSukHpVi4HOfSsqKKK	640	640	https://i.scdn.co/image/ab6761610000e5eb7d7d3cf041e39343cf5d5e49
5KZN09Gq54DniaMMM7rKCQ	{"australian pop","australian talent show"}	Bella Taylor Smith	34	https://api.spotify.com/v1/artists/5KZN09Gq54DniaMMM7rKCQ	640	640	https://i.scdn.co/image/ab6761610000e5eb13c38a93647bf12948730d3d
2Q3eZMfDQgT8MhPowKFXYO	{"dance pop",europop,"girl group"}	t.A.T.u.	65	https://api.spotify.com/v1/artists/2Q3eZMfDQgT8MhPowKFXYO	640	640	https://i.scdn.co/image/ab6761610000e5ebc8bb15d091287d6ce663d430
7mvhRvEAHiCTQHUnH7fgnv	{"japanese electropop"}	Tatsuya Kitani	69	https://api.spotify.com/v1/artists/7mvhRvEAHiCTQHUnH7fgnv	640	640	https://i.scdn.co/image/ab6761610000e5eb8f3b2ac021a12b2bd5f19edd
41hQ0PoEyj9xEBhwt73aWC	{"classic city pop"}	Tatsuro Yamashita	40	https://api.spotify.com/v1/artists/41hQ0PoEyj9xEBhwt73aWC	640	640	https://i.scdn.co/image/ab67616d0000b273a7177b1d4c69494024e02579
3IJ21966TwNZI24MwZHMu4	{"trap queen"}	Baby Tate	67	https://api.spotify.com/v1/artists/3IJ21966TwNZI24MwZHMu4	640	640	https://i.scdn.co/image/ab6761610000e5ebe7b0d119183e74ec390d7aec
5CEosSs2y4M9THNGI6mej8	{"persian pop"}	Amir Tataloo	52	https://api.spotify.com/v1/artists/5CEosSs2y4M9THNGI6mej8	640	640	https://i.scdn.co/image/ab6761610000e5eb6ad0f879d5d1ada19160ae36
0shHIQr8VamXbzM66kwGQo	{}	TATOOL	65	https://api.spotify.com/v1/artists/0shHIQr8VamXbzM66kwGQo	640	640	https://i.scdn.co/image/ab6761610000e5eb692342f99b7e00437a6cf15e
21ZeKPiS8g1orRXq1XmR9M	{}	Renner	14	https://api.spotify.com/v1/artists/21ZeKPiS8g1orRXq1XmR9M	640	640	https://i.scdn.co/image/ab6761610000e5eb5cec3f4917dc6b4d890a7717
6NvsNA4Ea62yJh7ePTS8gz	{"dark r&b"}	Josh Levi	57	https://api.spotify.com/v1/artists/6NvsNA4Ea62yJh7ePTS8gz	640	640	https://i.scdn.co/image/ab6761610000e5ebf63069d4872e37faeab236e2
4jwROPSUkTkohLCRiyjiZZ	{"alternative r&b"}	DESTIN CONRAD	57	https://api.spotify.com/v1/artists/4jwROPSUkTkohLCRiyjiZZ	640	640	https://i.scdn.co/image/ab6761610000e5eb92c1a9250391de17476e59c3
4nDoRrQiYLoBzwC5BhVJzF	{"dance pop",pop}	Camila Cabello	83	https://api.spotify.com/v1/artists/4nDoRrQiYLoBzwC5BhVJzF	640	640	https://i.scdn.co/image/ab6761610000e5eb76470faf6330235edbcb90a9
7nqOGRxlXj7N2JYbgNEjYH	{k-pop,"k-pop boy group"}	SEVENTEEN	82	https://api.spotify.com/v1/artists/7nqOGRxlXj7N2JYbgNEjYH	640	640	https://i.scdn.co/image/ab6761610000e5eb8912a840e637dacc0d5c7828
6uRXUjochRDA9d5Sq2tZZd	{"swedish idol pop"}	Omar Rudberg	57	https://api.spotify.com/v1/artists/6uRXUjochRDA9d5Sq2tZZd	640	640	https://i.scdn.co/image/ab6761610000e5ebe63ad3cdc6f5828446d24e3a
48h7yHsfBqw7A2Asj60mQP	{"country pop"}	Tyler Dial	29	https://api.spotify.com/v1/artists/48h7yHsfBqw7A2Asj60mQP	640	640	https://i.scdn.co/image/ab6761610000e5eb401fb51676d24adb69185fc9
4iHNK0tOyZPYnBU7nGAgpQ	{"dance pop",pop,"urban contemporary"}	Mariah Carey	85	https://api.spotify.com/v1/artists/4iHNK0tOyZPYnBU7nGAgpQ	640	640	https://i.scdn.co/image/ab6761610000e5eb35c3eff5d73f7e20ba3c9a2e
66ihevNkSYNzRAl44dx6jJ	{corrido,"musica mexicana","sad sierreno",sierreno}	Carin Leon	87	https://api.spotify.com/v1/artists/66ihevNkSYNzRAl44dx6jJ	640	640	https://i.scdn.co/image/ab6761610000e5eb374620b17c4a16d8c99f2369
4xFUf1FHVy696Q1JQZMTRj	{"classic oklahoma country","contemporary country",country,"country dawn","dance pop",pop}	Carrie Underwood	73	https://api.spotify.com/v1/artists/4xFUf1FHVy696Q1JQZMTRj	640	640	https://i.scdn.co/image/ab6761610000e5eb6d81a16f9d1b2abf04e765a6
39j6wByxxNDb92rODch4mT	{}	Kim Chaewon of LE SSERAFIM	34	https://api.spotify.com/v1/artists/39j6wByxxNDb92rODch4mT	0	0	
1oSPZhvZMIrWW5I41kPkkY	{k-pop}	Jimin	88	https://api.spotify.com/v1/artists/1oSPZhvZMIrWW5I41kPkkY	640	640	https://i.scdn.co/image/ab6761610000e5ebcb08296cca5a2d197caabb79
13yWtUnz63q5VIs5SwoMhy	{}	HUH YUNJIN	63	https://api.spotify.com/v1/artists/13yWtUnz63q5VIs5SwoMhy	640	640	https://i.scdn.co/image/ab6761610000e5ebc3ac1bd308a02d51b44697fa
0ghlgldX5Dd6720Q3qFyQB	{k-pop,"k-pop boy group"}	TOMORROW X TOGETHER	81	https://api.spotify.com/v1/artists/0ghlgldX5Dd6720Q3qFyQB	640	640	https://i.scdn.co/image/ab6761610000e5ebb4ada047a1c3089342294290
2dIgFjalVxs4ThymZ67YCE	{k-pop,"k-pop boy group",pop}	Stray Kids	86	https://api.spotify.com/v1/artists/2dIgFjalVxs4ThymZ67YCE	640	640	https://i.scdn.co/image/ab6761610000e5ebdbe356bad5c3576e77dbf36f
5vV3bFXnN6D6N3Nj4xRvaV	{k-pop}	Jin	86	https://api.spotify.com/v1/artists/5vV3bFXnN6D6N3Nj4xRvaV	640	640	https://i.scdn.co/image/ab6761610000e5eb6d4ee2bb960bc4d9c0a4ce45
5OI8f36YWTxeJVfICzIW5X	{}	Taylr	35	https://api.spotify.com/v1/artists/5OI8f36YWTxeJVfICzIW5X	640	640	https://i.scdn.co/image/ab6761610000e5ebe5dcbb6393302128c2ff92f8
58UBJKivVPuMtOMjOa31bD	{}	TAYLR RAY	19	https://api.spotify.com/v1/artists/58UBJKivVPuMtOMjOa31bD	640	640	https://i.scdn.co/image/ab6761610000e5eb6a7efc56a6971f24744fa63c
1Mv9A0NXeZKp3GitLsLsQw	{}	Taylr Woods	11	https://api.spotify.com/v1/artists/1Mv9A0NXeZKp3GitLsLsQw	640	640	https://i.scdn.co/image/ab6761610000e5eb8ada0dee082fcb748c02c096
3l6CxWFgrONP61drg6i629	{}	Taylr	3	https://api.spotify.com/v1/artists/3l6CxWFgrONP61drg6i629	640	640	https://i.scdn.co/image/ab6761610000e5eba48f0936e86fe86551e6d111
4bOX0uYmwH8bNfSkjayOiC	{}	Taylre Nelson	3	https://api.spotify.com/v1/artists/4bOX0uYmwH8bNfSkjayOiC	0	0	
0avMDS4HyoCEP6RqZJWpY2	{countrygaze,"indie pop","modern dream pop"}	Ethel Cain	69	https://api.spotify.com/v1/artists/0avMDS4HyoCEP6RqZJWpY2	640	640	https://i.scdn.co/image/ab6761610000e5eb16146e3106ac2917bd526c6b
6BRxQ8cD3eqnrVj6WKDok8	{"modern country pop"}	Ella Langley	74	https://api.spotify.com/v1/artists/6BRxQ8cD3eqnrVj6WKDok8	640	640	https://i.scdn.co/image/ab6761610000e5eb490943c99e9466219703d72e
3PhoLpVuITZKcymswpck5b	{"glam rock","mellow gold","piano rock",rock}	Elton John	85	https://api.spotify.com/v1/artists/3PhoLpVuITZKcymswpck5b	640	640	https://i.scdn.co/image/ab6761610000e5eb0a7388b95df960b5c0da8970
3A5tHz1SfngyOZM2gItYKu	{"alternative hip hop","drumless hip hop","experimental hip hop","hip hop",rap,"underground hip hop"}	Earl Sweatshirt	71	https://api.spotify.com/v1/artists/3A5tHz1SfngyOZM2gItYKu	640	640	https://i.scdn.co/image/ab6761610000e5ebd5183ad16c1eae15a1c378c7
105Paee9vmV5rfLSG652e1	{hollywood,"movie tunes"}	Ewan McGregor	54	https://api.spotify.com/v1/artists/105Paee9vmV5rfLSG652e1	1000	1000	https://i.scdn.co/image/4f4b7d3b7f76e3c57d3004ba0d99368cdb7e3276
4QQgXkCYTt3BlENzhyNETg	{disco,funk,"jazz funk",motown,soul}	Earth, Wind & Fire	76	https://api.spotify.com/v1/artists/4QQgXkCYTt3BlENzhyNETg	640	640	https://i.scdn.co/image/ab6761610000e5eb9722e16a886767adf1178f92
47jj8O3bfaoJYIPABYBtEc	{}	Ewy	44	https://api.spotify.com/v1/artists/47jj8O3bfaoJYIPABYBtEc	640	640	https://i.scdn.co/image/ab6761610000e5eb37b1289c782353e9ea67daa5
66nRwizU4pVCI9CFybrGop	{}	Baby Kaely	24	https://api.spotify.com/v1/artists/66nRwizU4pVCI9CFybrGop	640	640	https://i.scdn.co/image/ab6761610000e5eb91168f0135cb6dc0d056ba95
0FnDCrmcQT8qz5TEsZIYw5	{j-rap,"josei rap"}	Awich	62	https://api.spotify.com/v1/artists/0FnDCrmcQT8qz5TEsZIYw5	640	640	https://i.scdn.co/image/ab6761610000e5ebe79ca14925346a8efb82b793
68Tu5kmhurThXqZeRgsKi1	{fingerstyle}	Ewan Dobson	27	https://api.spotify.com/v1/artists/68Tu5kmhurThXqZeRgsKi1	640	640	https://i.scdn.co/image/ab6761610000e5eb073891e304835c059a76a57a
4d2NUjh9ZrzG1ZZdhpSDKH	{"scottish techno"}	Ewan McVicar	50	https://api.spotify.com/v1/artists/4d2NUjh9ZrzG1ZZdhpSDKH	640	640	https://i.scdn.co/image/ab6761610000e5eb66c7e11d867026430398151d
3tetInyzmPXATzLBTzl125	{"american folk revival","british folk","irish folk"}	Ewan MacColl	32	https://api.spotify.com/v1/artists/3tetInyzmPXATzLBTzl125	640	640	https://i.scdn.co/image/ab6761610000e5ebd0e794a6f060b897a77e8847
6xajh3A5qhxsNffhhBNntC	{"czech pop","polish pop"}	Ewa Farna	53	https://api.spotify.com/v1/artists/6xajh3A5qhxsNffhhBNntC	640	640	https://i.scdn.co/image/ab6761610000e5eb7c6d88e14d04bfbc4c95505a
0ahwsBHHnBKJwmH62nYCQA	{}	EWM Kdoe	34	https://api.spotify.com/v1/artists/0ahwsBHHnBKJwmH62nYCQA	640	640	https://i.scdn.co/image/ab6761610000e5eb0a6fd4f16787a47fd344473f
5ApXzDVk6mjD8qZLsBxMjH	{}	NewJeansNim	12	https://api.spotify.com/v1/artists/5ApXzDVk6mjD8qZLsBxMjH	640	640	https://i.scdn.co/image/ab67616d0000b27319e1f5b0cbe36c8635ef362a
6LK7EEHFApe9FZbFRFyBDN	{"northern soul"}	The Newbeats	27	https://api.spotify.com/v1/artists/6LK7EEHFApe9FZbFRFyBDN	806	1000	https://i.scdn.co/image/c52950e15f784275de9f268dc2ca4b46bbc70048
5zysAE2ng4N9fyBNMdqTgo	{}	NEWBEATS	17	https://api.spotify.com/v1/artists/5zysAE2ng4N9fyBNMdqTgo	640	640	https://i.scdn.co/image/ab67616d0000b2730b47879e5daf5602207c671c
3Nrfpe0tUJi4K4DXYWgMUX	{k-pop,"k-pop boy group",pop}	BTS	87	https://api.spotify.com/v1/artists/3Nrfpe0tUJi4K4DXYWgMUX	640	640	https://i.scdn.co/image/ab6761610000e5ebd642648235ebf3460d2d1f6a
4j1Usj1sKyLB9CDpSZSZ2C	{}	Tyan G	49	https://api.spotify.com/v1/artists/4j1Usj1sKyLB9CDpSZSZ2C	640	640	https://i.scdn.co/image/ab6761610000e5eb79e405c23efb4f029eb52eef
0TQyaoEDvRCU1BiA0VrTcC	{cuarteto}	Tyago Griffo	46	https://api.spotify.com/v1/artists/0TQyaoEDvRCU1BiA0VrTcC	640	640	https://i.scdn.co/image/ab6761610000e5ebd6f57c1af91528cc4b7906b0
66vSqcuzv8SVnjREqkJLL3	{}	Tyanna	36	https://api.spotify.com/v1/artists/66vSqcuzv8SVnjREqkJLL3	640	640	https://i.scdn.co/image/ab6761610000e5eba0f0584e8408354e36f2e9bf
31z9f9AyPawiq0qlBO1M3i	{"new americana","outlaw country"}	Ryan Bingham	60	https://api.spotify.com/v1/artists/31z9f9AyPawiq0qlBO1M3i	640	640	https://i.scdn.co/image/ab6761610000e5ebe91d2667892142d29ca62111
47DIrvE03m9rQzgFXu9eJo	{}	Aditya Iyengar	46	https://api.spotify.com/v1/artists/47DIrvE03m9rQzgFXu9eJo	640	640	https://i.scdn.co/image/ab6761610000e5eb9b44c509dfd86bdc136e0b37
7j6DKwmjbxvpQO8h914uEz	{reggaeton,"trap colombiano","trap latino","urbano latino"}	Ryan Castro	82	https://api.spotify.com/v1/artists/7j6DKwmjbxvpQO8h914uEz	640	640	https://i.scdn.co/image/ab6761610000e5eb659c5094f83939153e30933b
4bL34J5iZitrBLMZ9LZJTu	{carnatic,"indian classical"}	Tyagaraja	27	https://api.spotify.com/v1/artists/4bL34J5iZitrBLMZ9LZJTu	640	640	https://i.scdn.co/image/ab67616d0000b273436014e72b394700fca0d045
2cFlDK6zJnYSpslCOs4Xfi	{}	Tyalaxandar	4	https://api.spotify.com/v1/artists/2cFlDK6zJnYSpslCOs4Xfi	640	640	https://i.scdn.co/image/d38873dde9cbd5a37af02817873cec072da45294
0kaUBrs0r3rulhBhjWtTlj	{}	Tyago e Gabriel	33	https://api.spotify.com/v1/artists/0kaUBrs0r3rulhBhjWtTlj	640	640	https://i.scdn.co/image/ab6761610000e5eb4a79ea5c3a87062974461674
7BbERzGvIzvgGbtExDXWGC	{}	Tyago Baby	23	https://api.spotify.com/v1/artists/7BbERzGvIzvgGbtExDXWGC	640	640	https://i.scdn.co/image/ab6761610000e5eb0a48421673f8fbdf338b9215
5FhhDu8U5gwHXd2dyjEsrS	{}	TYAGO 021	22	https://api.spotify.com/v1/artists/5FhhDu8U5gwHXd2dyjEsrS	640	640	https://i.scdn.co/image/ab6761610000e5eb4316dd82020815a9d5909e02
5EY95ChcW9VAxCfZOlYmGS	{}	Tyago K	13	https://api.spotify.com/v1/artists/5EY95ChcW9VAxCfZOlYmGS	640	640	https://i.scdn.co/image/ab6761610000e5eb423f4fa87a7c7deb62c17a7a
5wTnSPIdogh7kzmjNUOm1u	{}	John Tyalor	0	https://api.spotify.com/v1/artists/5wTnSPIdogh7kzmjNUOm1u	0	0	
74mBAIyWeNaNq89mmszPF7	{}	Tyago França	10	https://api.spotify.com/v1/artists/74mBAIyWeNaNq89mmszPF7	640	640	https://i.scdn.co/image/ab67616d0000b273f61ebd88f1c3f7a3b806f2a6
6IkfE2JyVoKwBZXvuytKX3	{"modern country pop"}	Oliver Anthony Music	64	https://api.spotify.com/v1/artists/6IkfE2JyVoKwBZXvuytKX3	640	640	https://i.scdn.co/image/ab6761610000e5ebc98f2b2e51b8b42a525942e5
73z7IaMZWklUITS2qrtXzW	{otacore,pixel}	Chi-Chi	54	https://api.spotify.com/v1/artists/73z7IaMZWklUITS2qrtXzW	640	640	https://i.scdn.co/image/ab6761610000e5eb2bf094b2463554caddfd7b95
7bxG51u5eddqEHSaI0nvXy	{}	Chi-Chi	37	https://api.spotify.com/v1/artists/7bxG51u5eddqEHSaI0nvXy	0	0	
3ls1Lwf5mCUgGljvESjcke	{}	Chini	44	https://api.spotify.com/v1/artists/3ls1Lwf5mCUgGljvESjcke	640	640	https://i.scdn.co/image/ab6761610000e5eb993d6ba930567a50f829fa50
55RduYdbv0MXVwh9ALbOUi	{}	JustNaz	42	https://api.spotify.com/v1/artists/55RduYdbv0MXVwh9ALbOUi	640	640	https://i.scdn.co/image/ab6761610000e5ebde6995b80bddb314509d7368
58824Rt9tfmZFSdWXFAZvn	{"bronx drill"}	CHII WVTTZ	42	https://api.spotify.com/v1/artists/58824Rt9tfmZFSdWXFAZvn	640	640	https://i.scdn.co/image/ab6761610000e5eb1f8a74dc1980f6d82cdd8ac5
3GA691xqhLltr1iV1BmwUy	{}	Itz Chriz	3	https://api.spotify.com/v1/artists/3GA691xqhLltr1iV1BmwUy	0	0	
2lFUx3ImC4kgfMhq2mcCmu	{}	Chii Wvttz	30	https://api.spotify.com/v1/artists/2lFUx3ImC4kgfMhq2mcCmu	0	0	
1mcTU81TzQhprhouKaTkpq	{"puerto rican pop",reggaeton,"trap latino","urbano latino"}	Rauw Alejandro	94	https://api.spotify.com/v1/artists/1mcTU81TzQhprhouKaTkpq	640	640	https://i.scdn.co/image/ab6761610000e5ebb271c8a0507c4c1ea795d989
45TgXXqMDdF8BkjA83OM7z	{"florida rap"}	Rod Wave	81	https://api.spotify.com/v1/artists/45TgXXqMDdF8BkjA83OM7z	640	640	https://i.scdn.co/image/ab6761610000e5eb8674f92cf33931fa4cd298c2
4Z8W4fKeB5YxbusRsdQVPb	{"alternative rock","art rock",melancholia,"oxford indie","permanent wave",rock}	Radiohead	84	https://api.spotify.com/v1/artists/4Z8W4fKeB5YxbusRsdQVPb	640	640	https://i.scdn.co/image/ab6761610000e5eba03696716c9ee605006047fd
3eVa5w3URK5duf6eyVDbu9	{k-pop}	ROSÉ	86	https://api.spotify.com/v1/artists/3eVa5w3URK5duf6eyVDbu9	640	640	https://i.scdn.co/image/ab6761610000e5eb727a1f1f508238a20ac9fdbf
2QMsj4XJ7ne2hojxt6v5eb	{"contemporary country","modern country pop"}	Riley Green	77	https://api.spotify.com/v1/artists/2QMsj4XJ7ne2hojxt6v5eb	640	640	https://i.scdn.co/image/ab6761610000e5eb5dc967d7e443e2ef4a7552b6
6O1vRHWVGKJTnWuJmItnsx	{"detroit hip hop","flint hip hop"}	Rio Da Yung Og	65	https://api.spotify.com/v1/artists/6O1vRHWVGKJTnWuJmItnsx	640	640	https://i.scdn.co/image/ab6761610000e5eb11a67e413a6158fc223fc24b
5lHRUCqkQZCIWeX7xG4sYT	{"atl hip hop",rap,"southern hip hop",trap}	Rich Homie Quan	69	https://api.spotify.com/v1/artists/5lHRUCqkQZCIWeX7xG4sYT	640	640	https://i.scdn.co/image/ab6761610000e5ebf4b802f5eb81d33fd2db292f
6Wr3hh341P84m3EI8qdn9O	{"alternative metal","chicago hardcore","chicago punk","hardcore punk","modern rock","pop punk",post-grunge,punk}	Rise Against	73	https://api.spotify.com/v1/artists/6Wr3hh341P84m3EI8qdn9O	640	640	https://i.scdn.co/image/ab6761610000e5eb8e19de59bac2628eb8929156
1sBkRIssrMs1AbVkOJbc7a	{"dirty south rap","gangster rap","hip hop",rap,"southern hip hop",trap}	Rick Ross	77	https://api.spotify.com/v1/artists/1sBkRIssrMs1AbVkOJbc7a	640	640	https://i.scdn.co/image/ab6761610000e5eb8196a8109c28a8b8aca28fae
4b0WsB47XCa9F83BmwQ7WX	{"adult standards","brill building pop","folk rock","mellow gold",motown,rock-and-roll,rockabilly}	The Righteous Brothers	65	https://api.spotify.com/v1/artists/4b0WsB47XCa9F83BmwQ7WX	1292	1000	https://i.scdn.co/image/21584a935b760f20b4b08f7f9ddd012c12437798
5fKc00Wh60ggl0QptZ2aBx	{"mexican rock-and-roll","musica tamaulipeca",norteno,ranchera,tropical}	Rigo Tovar	65	https://api.spotify.com/v1/artists/5fKc00Wh60ggl0QptZ2aBx	640	640	https://i.scdn.co/image/ab67616d0000b273afb64d23ceb1b377a15ad4ca
4ofCBoyEiGSePFAG500xev	{"pop dance","pop edm","slap house","uk dance"}	Regard	70	https://api.spotify.com/v1/artists/4ofCBoyEiGSePFAG500xev	640	640	https://i.scdn.co/image/ab6761610000e5eb3a40d117d52a9fe3aacf304f
1RLyo2y5E2gYCywyAWjBBb	{}	Rig	4	https://api.spotify.com/v1/artists/1RLyo2y5E2gYCywyAWjBBb	640	640	https://i.scdn.co/image/ab6761610000e5eb2b253a47e3186ce42be1894f
6xdMznrxlCHNrfEDccJ5OV	{}	Rig	2	https://api.spotify.com/v1/artists/6xdMznrxlCHNrfEDccJ5OV	640	640	https://i.scdn.co/image/ab6761610000e5eba509e3e15a80409bbbf237ae
15ajdFAi5bjj5pS9laBfBL	{}	Right Said Fred	51	https://api.spotify.com/v1/artists/15ajdFAi5bjj5pS9laBfBL	640	640	https://i.scdn.co/image/ab6761610000e5ebf3814669cfe701a7f5bd058e
229UFdizfbzeAKfFXYpA4Q	{}	RiG	0	https://api.spotify.com/v1/artists/229UFdizfbzeAKfFXYpA4Q	640	640	https://i.scdn.co/image/ab6761610000e5eb6e4929673a4d5497ba846b97
0BV1VR5KuCQYes0I4XyZVr	{"cumbia del sureste","cumbia sonidera"}	Rigo Dominguez Y Su Grupo Audaz	50	https://api.spotify.com/v1/artists/0BV1VR5KuCQYes0I4XyZVr	640	640	https://i.scdn.co/image/ab6761610000e5eb99dd7e0c00b82289d9614a18
1EI0NtLHoh9KBziYCeN1vM	{"black americana",folk,"new americana","north carolina roots"}	Rhiannon Giddens	49	https://api.spotify.com/v1/artists/1EI0NtLHoh9KBziYCeN1vM	640	640	https://i.scdn.co/image/ab6761610000e5ebfb30bd7ab972880fa7ee3205
1Y1SeMq5T5Rj953tsDWPCL	{}	Rihanna Shepherd	5	https://api.spotify.com/v1/artists/1Y1SeMq5T5Rj953tsDWPCL	640	640	https://i.scdn.co/image/ab67616d0000b27365603de00ba0d171154d6738
3nOgE07daPxPJ0y3aMK9LK	{}	Rihannon	18	https://api.spotify.com/v1/artists/3nOgE07daPxPJ0y3aMK9LK	640	640	https://i.scdn.co/image/ab67616d0000b273d536d6cb345c04d18186da1f
43Qktap74HhjP3Uyi801zn	{}	Rihanna Cover Band	4	https://api.spotify.com/v1/artists/43Qktap74HhjP3Uyi801zn	640	640	https://i.scdn.co/image/ab67616d0000b273e53f23811a7859ae73295e6f
2hv9oBOxgWSFnZJPW6UL58	{}	Arctic Monkeys Tribute Band	1	https://api.spotify.com/v1/artists/2hv9oBOxgWSFnZJPW6UL58	640	640	https://i.scdn.co/image/ab67616d0000b2734ce69bc80497562fb53d7447
58weT4m0eMXcHFTJlSAgsz	{}	Anthem Arctic Monkeys	0	https://api.spotify.com/v1/artists/58weT4m0eMXcHFTJlSAgsz	640	640	https://i.scdn.co/image/ab67616d0000b273d5e2835c40fa1eafe34133b1
0Y6dVaC9DZtPNH4591M42W	{"pov: indie"}	TV Girl	84	https://api.spotify.com/v1/artists/0Y6dVaC9DZtPNH4591M42W	640	640	https://i.scdn.co/image/ab6761610000e5ebd80695211689a9c8c3fee3b0
26T3LtbuGT1Fu9m0eRq5X3	{"modern alternative rock","modern rock","pov: indie","punk blues",rock}	Cage The Elephant	76	https://api.spotify.com/v1/artists/26T3LtbuGT1Fu9m0eRq5X3	640	640	https://i.scdn.co/image/ab6761610000e5eb766df8f443e0160f7b35545d
2MMXs21RASEwAmU7gRheQ0	{corrido,"corridos tumbados","musica mexicana",norteno,sierreno}	Arsenal Efectivo	51	https://api.spotify.com/v1/artists/2MMXs21RASEwAmU7gRheQ0	640	640	https://i.scdn.co/image/ab6761610000e5eb574b42f9bad9961afc2a3544
7j5PGC0BF48rRtcmgbVvOT	{"indonesian pop"}	Arsy Widianto	66	https://api.spotify.com/v1/artists/7j5PGC0BF48rRtcmgbVvOT	640	640	https://i.scdn.co/image/ab6761610000e5ebcfbb23382ea9a0dfbd371077
5eQGqzkt479Fgnn4IJMJu1	{}	Arsenic Kitchen	23	https://api.spotify.com/v1/artists/5eQGqzkt479Fgnn4IJMJu1	640	640	https://i.scdn.co/image/ab6761610000e5eba2406b34634b563f05c0061a
2agVn7WN25qyDw97VbJHJM	{handbells}	Arsis Handbell Ensemble	39	https://api.spotify.com/v1/artists/2agVn7WN25qyDw97VbJHJM	640	640	https://i.scdn.co/image/ab67616d0000b2731415dd782d66814af373270d
24StNQXP5gjZmG95zAZ9KZ	{deathcore,"melodic metalcore",nintendocore,trancecore}	Arsonists Get All The Girls	26	https://api.spotify.com/v1/artists/24StNQXP5gjZmG95zAZ9KZ	640	640	https://i.scdn.co/image/ab6761610000e5eb0899bb292270c2c04d274ddb
0Cxzwf66gFnNRbOeLVIahi	{}	Arseniy Gusev	40	https://api.spotify.com/v1/artists/0Cxzwf66gFnNRbOeLVIahi	640	640	https://i.scdn.co/image/ab6761610000e5ebb339cda5f854f333b7f10e0c
5qUAtC3NwSLYme4JqjlGfQ	{"korean ost"}	YOUNGJAE	52	https://api.spotify.com/v1/artists/5qUAtC3NwSLYme4JqjlGfQ	640	640	https://i.scdn.co/image/ab67616d0000b273ade3576209d8ffa5f1d62796
7j1diUTtFReVVJxSQG3veO	{"american melodeath","brutal death metal",deathgrind,"melodic death metal","technical death metal","technical melodic death metal","virginia metal"}	Arsis	29	https://api.spotify.com/v1/artists/7j1diUTtFReVVJxSQG3veO	640	640	https://i.scdn.co/image/ab6761610000e5eb8c03a590ea94be4d422018c8
5p7f24Rk5HkUZsaS3BLG5F	{pop}	Hailee Steinfeld	69	https://api.spotify.com/v1/artists/5p7f24Rk5HkUZsaS3BLG5F	640	640	https://i.scdn.co/image/ab6761610000e5eba961383967f3a3a54e794a15
1ZyPVE0wXLVuEGEYpoFx22	{"country rap",redneck}	Chris Hosier	47	https://api.spotify.com/v1/artists/1ZyPVE0wXLVuEGEYpoFx22	640	640	https://i.scdn.co/image/ab6761610000e5eb98c6ae73d7061fc9d266f952
4si0Z3C5HiS4pt5L7Z631M	{}	Andrew Hozier-Byrne	27	https://api.spotify.com/v1/artists/4si0Z3C5HiS4pt5L7Z631M	640	640	https://i.scdn.co/image/ab67616d0000b273f06deed58ebd41c319d90f79
0xzjo86IdvxUxuSPQ4rZyO	{}	Hozier	9	https://api.spotify.com/v1/artists/0xzjo86IdvxUxuSPQ4rZyO	0	0	
62kcvRjVeEwErjsNGXDLi9	{}	Andrew Hozier Byrne	14	https://api.spotify.com/v1/artists/62kcvRjVeEwErjsNGXDLi9	0	0	
16oZKvXb6WkQlVAjwo2Wbg	{folk-pop,"modern rock","neo mellow","stomp and holler"}	The Lumineers	79	https://api.spotify.com/v1/artists/16oZKvXb6WkQlVAjwo2Wbg	640	640	https://i.scdn.co/image/ab6761610000e5ebcd78dff00211f22f2c10ffdb
62XFE3tunH58PVwTFVjEUI	{}	Hozier Cash	0	https://api.spotify.com/v1/artists/62XFE3tunH58PVwTFVjEUI	640	640	https://i.scdn.co/image/ab67616d0000b2739eadb613f121695bd59b7e9b
4A9luWHjT9sLC0ZFZ3TmpS	{}	Drake	6	https://api.spotify.com/v1/artists/4A9luWHjT9sLC0ZFZ3TmpS	640	640	https://i.scdn.co/image/ab6761610000e5ebdef433873b650a9ba25011e7
1Is3qz6wgG4z3sAPzHxKm5	{sillycore}	Inanimate Insanity	46	https://api.spotify.com/v1/artists/1Is3qz6wgG4z3sAPzHxKm5	640	640	https://i.scdn.co/image/ab6761610000e5eb1107eae272d99e667d0fef01
3YQKmKGau1PzlVlkL1iodx	{"modern rock",pop,"pov: indie",rock}	Twenty One Pilots	84	https://api.spotify.com/v1/artists/3YQKmKGau1PzlVlkL1iodx	640	640	https://i.scdn.co/image/ab6761610000e5eb274df4dfcb960867eccedfb5
536BYVgOnRky0xjsPT96zl	{"indie rock",indietronica,"irish rock","modern alternative rock","modern rock","northern irish indie"}	Two Door Cinema Club	71	https://api.spotify.com/v1/artists/536BYVgOnRky0xjsPT96zl	640	640	https://i.scdn.co/image/ab6761610000e5eb86faeb97a905a571b2c361a0
6vbY3hOaCAhC7VjucswgdS	{"chicago rap","dirty south rap","gangster rap",trap}	Twista	67	https://api.spotify.com/v1/artists/6vbY3hOaCAhC7VjucswgdS	640	640	https://i.scdn.co/image/ab6761610000e5eb9180d83c13785479032d5b97
0lZ2oIRdMsQfFEPmOa3YyL	{}	TWXN	67	https://api.spotify.com/v1/artists/0lZ2oIRdMsQfFEPmOa3YyL	640	640	https://i.scdn.co/image/ab6761610000e5eb7e59ac0856214f352cb15f8e
5sWHDYs0csV6RS48xBl0tH	{"indie poptimism","modern rock"}	Two Feet	71	https://api.spotify.com/v1/artists/5sWHDYs0csV6RS48xBl0tH	640	640	https://i.scdn.co/image/ab6761610000e5ebfcaa268ce48afd467463ef76
44Ewva5aHOX00EwaX2D2mh	{}	Two Friends	57	https://api.spotify.com/v1/artists/44Ewva5aHOX00EwaX2D2mh	640	640	https://i.scdn.co/image/ab6761610000e5ebe5e95db16973a669b7fbe111
0IwZVmMMGE7nNXS7vN9SIo	{"k-pop girl group"}	MISAMO	69	https://api.spotify.com/v1/artists/0IwZVmMMGE7nNXS7vN9SIo	640	640	https://i.scdn.co/image/ab6761610000e5eb8bb0411b0375cd719eac306b
4GgBKgxhc649frZDHcXIEz	{"5th gen k-pop"}	TWS	63	https://api.spotify.com/v1/artists/4GgBKgxhc649frZDHcXIEz	640	640	https://i.scdn.co/image/ab6761610000e5eb0c2d1f65e6920a7368a63e1a
6tV2P2SciHytsSDufKr57B	{"tropical house"}	TWOPILOTS	68	https://api.spotify.com/v1/artists/6tV2P2SciHytsSDufKr57B	640	640	https://i.scdn.co/image/ab6761610000e5ebce8d61d2aa176bd46924c35a
2aMAN8kMJ7eUOAuPUYOwI7	{horrorcore,"rap rock"}	Twiztid	50	https://api.spotify.com/v1/artists/2aMAN8kMJ7eUOAuPUYOwI7	640	640	https://i.scdn.co/image/ab6761610000e5ebf82f3260fde2230fb1d72716
7b85ve82Sh36a3UAx74wut	{"album rock","classic rock","glam metal","hard rock",metal,rock}	Twisted Sister	62	https://api.spotify.com/v1/artists/7b85ve82Sh36a3UAx74wut	589	1000	https://i.scdn.co/image/758604f17b98e5db650adeebf9cf8cb55feda0f0
7wxXs62y8Gjf6c6pxrnWIl	{"dark post-punk","gothic rock"}	Twin Tribes	55	https://api.spotify.com/v1/artists/7wxXs62y8Gjf6c6pxrnWIl	640	640	https://i.scdn.co/image/ab6761610000e5ebf8f6fdb51921225829c6b52f
3mGCLimuzOdod4Lnegny4d	{sleep}	Twinkle Twinkle Little Rock Star	56	https://api.spotify.com/v1/artists/3mGCLimuzOdod4Lnegny4d	640	640	https://i.scdn.co/image/ab6761610000e5eb07d87d7977d69144163b543d
5NYEE4kgrEZPlM3DxUsTyc	{"la indie"}	Twin Temple	43	https://api.spotify.com/v1/artists/5NYEE4kgrEZPlM3DxUsTyc	640	640	https://i.scdn.co/image/ab6761610000e5eba3cee5514626e25a2d344b6d
4xEsDLdD6DgtKhlCCJq4Ri	{"slowed and reverb"}	twilight	64	https://api.spotify.com/v1/artists/4xEsDLdD6DgtKhlCCJq4Ri	640	640	https://i.scdn.co/image/ab6761610000e5eb280184619ff5e26744023f60
4WfO14YgktUYkdLMrHgTeF	{}	TWINSICK	47	https://api.spotify.com/v1/artists/4WfO14YgktUYkdLMrHgTeF	640	640	https://i.scdn.co/image/ab6761610000e5eb1001d80a87ac22bd23ed289e
2yp6zqk49KOKKrOSSsUb75	{"latin worship","peruvian indie","rock cristiano"}	TWICE	53	https://api.spotify.com/v1/artists/2yp6zqk49KOKKrOSSsUb75	640	640	https://i.scdn.co/image/ab6761610000e5eb608ce3b80a64cd6c7743ff5a
1z4g3DjTBBZKhvAroFlhOM	{k-pop,"k-pop girl group"}	Red Velvet	72	https://api.spotify.com/v1/artists/1z4g3DjTBBZKhvAroFlhOM	640	640	https://i.scdn.co/image/ab6761610000e5eb02a562ea6b1dc718394010ac
1WdM0BAEXN9RpUdPOzEZdx	{}	Twice As Nice	35	https://api.spotify.com/v1/artists/1WdM0BAEXN9RpUdPOzEZdx	640	640	https://i.scdn.co/image/ab67616d0000b273a16e6867b1a5f9e38bd42226
3pthbcw421plaJoQeGMrjr	{"bubblegum dance","sped up"}	Lucky Twice	51	https://api.spotify.com/v1/artists/3pthbcw421plaJoQeGMrjr	640	640	https://i.scdn.co/image/ab6761610000e5ebc04498495fe5c7b300dc2ef3
3VZpdLA6YIQ31tgBgOg2Az	{}	Twice	0	https://api.spotify.com/v1/artists/3VZpdLA6YIQ31tgBgOg2Az	640	640	https://i.scdn.co/image/ab6761610000e5eb1285bd2d1f005e9b4b5d8e6a
1gIaahQbTZ8EX77uQw62Vc	{"indie anthem-folk","nashville indie"}	Twiceyoung	34	https://api.spotify.com/v1/artists/1gIaahQbTZ8EX77uQw62Vc	640	640	https://i.scdn.co/image/ab6761610000e5ebb3d9fc35c0843e95555a7b05
3qiHUAX7zY4Qnjx8TNUzVx	{pluggnb,"rage rap"}	Yeat	83	https://api.spotify.com/v1/artists/3qiHUAX7zY4Qnjx8TNUzVx	640	640	https://i.scdn.co/image/ab6761610000e5eb2f87a26be4c22046527a8047
3HiuzBlSW7pGDXlSFMhO2g	{"memphis hip hop",rap,"southern hip hop","tennessee hip hop",trap}	Young Dolph	73	https://api.spotify.com/v1/artists/3HiuzBlSW7pGDXlSFMhO2g	640	640	https://i.scdn.co/image/ab6761610000e5eb392af601eddfa5a0c705141d
2kCcBybjl3SAtIcwdWpUe3	{"cloud rap","emo rap","lgbtq+ hip hop"}	Lil Peep	86	https://api.spotify.com/v1/artists/2kCcBybjl3SAtIcwdWpUe3	640	640	https://i.scdn.co/image/ab6761610000e5eb3d9d59e200e82fa53d8781a1
6gtIvaBCrswcltfMt67LMn	{meme}	Yuno Miles	53	https://api.spotify.com/v1/artists/6gtIvaBCrswcltfMt67LMn	640	640	https://i.scdn.co/image/ab6761610000e5eb86ed8fc26889fbf6fe968118
2YOYua8FpudSEiB9s88IgQ	{"meme rap","minnesota hip hop"}	Yung Gravy	68	https://api.spotify.com/v1/artists/2YOYua8FpudSEiB9s88IgQ	640	640	https://i.scdn.co/image/ab6761610000e5eb7f7ee3a571416b4cc53d7fc4
2IvkS5MXK0vPGnwyJsrEyV	{"contemporary country",country,"country road"}	Eric Church	73	https://api.spotify.com/v1/artists/2IvkS5MXK0vPGnwyJsrEyV	640	640	https://i.scdn.co/image/ab6761610000e5eb9d21d0550d0281cb03de2d1a
0BvkDsjIUla7X0k6CSWh1I	{"contemporary country",country,"country road","modern country rock"}	Luke Bryan	77	https://api.spotify.com/v1/artists/0BvkDsjIUla7X0k6CSWh1I	640	640	https://i.scdn.co/image/ab6761610000e5eb9754cf0a7b838caafa4b8b55
2qanRMyA5bNuTvz1dK45OP	{}	ADÉLA	47	https://api.spotify.com/v1/artists/2qanRMyA5bNuTvz1dK45OP	640	640	https://i.scdn.co/image/ab6761610000e5eb8a4f035670f19f2ff615a577
3n4ersmDo55xV4fPSCKpXb	{"alternative metal","industrial metal","nu metal",post-grunge,"rap metal"}	Adema	46	https://api.spotify.com/v1/artists/3n4ersmDo55xV4fPSCKpXb	640	640	https://i.scdn.co/image/ab6761610000e5eb7d99949b3f26c9eb73a5a367
2IK173RXLiCSQ8fhDlAb3s	{afrobeats,afropop,alte,azontobeats,"nigerian hip hop","nigerian pop"}	Adekunle Gold	64	https://api.spotify.com/v1/artists/2IK173RXLiCSQ8fhDlAb3s	640	640	https://i.scdn.co/image/ab6761610000e5eb23f64d0bad4924415de3c6f8
5bdLiUDd0rIMAkT1y6zLaE	{"instrumental lullaby"}	Adelmar Borrego	59	https://api.spotify.com/v1/artists/5bdLiUDd0rIMAkT1y6zLaE	640	640	https://i.scdn.co/image/ab6761610000e5eb902dd29ac49e834d1913e40f
28ZFEGg2RNdrtoaFqxA6vj	{"knoxville indie"}	Adeem the Artist	27	https://api.spotify.com/v1/artists/28ZFEGg2RNdrtoaFqxA6vj	640	640	https://i.scdn.co/image/ab6761610000e5ebce6d64bc0e7d4b083e1307fe
4aKWmkWAKviFlyvHYPTNQY	{countrygaze,"indie pop","small room"}	Adrianne Lenker	75	https://api.spotify.com/v1/artists/4aKWmkWAKviFlyvHYPTNQY	640	640	https://i.scdn.co/image/ab6761610000e5eb5a7d5278cf9deda53119028c
2LB9H0px4qWbCHg9Axzhga	{comic}	Adam Sandler	48	https://api.spotify.com/v1/artists/2LB9H0px4qWbCHg9Axzhga	1000	1000	https://i.scdn.co/image/588a1dd68ec7e6df49d6c6fc5482a6fc8db33687
2loEsOijJ6XiGzWYFXMIRk	{"melodic house"}	Adam Port	77	https://api.spotify.com/v1/artists/2loEsOijJ6XiGzWYFXMIRk	640	640	https://i.scdn.co/image/ab6761610000e5eb722acdd4bb9e3aac45436d08
6R2UojZrKYDr0RiP9jROAJ	{}	Adrien Nunez	53	https://api.spotify.com/v1/artists/6R2UojZrKYDr0RiP9jROAJ	640	640	https://i.scdn.co/image/ab6761610000e5ebc67ec792dd123604dee1a323
4bYPcJP5jwMhSivRcqie2n	{"deep talent show"}	Adam Levine	73	https://api.spotify.com/v1/artists/4bYPcJP5jwMhSivRcqie2n	640	640	https://i.scdn.co/image/ab6761610000e5eb4a61c7615c8125e832ffc32c
6prmLEyn4LfHlD9NnXWlf7	{"dance pop",idol,pop,"post-teen pop"}	Adam Lambert	61	https://api.spotify.com/v1/artists/6prmLEyn4LfHlD9NnXWlf7	640	640	https://i.scdn.co/image/ab6761610000e5ebca8eeadf722d0b64eb019cce
70nxnxEqDQIEWneRjg2Q4O	{salsa,"salsa venezolana",tropical}	Adolescent's Orquesta	73	https://api.spotify.com/v1/artists/70nxnxEqDQIEWneRjg2Q4O	640	640	https://i.scdn.co/image/ab6761610000e5ebf8f5ba0990e6787acef49117
5mzaVDcZ3hqKlFwWjj1jpL	{}	ADÉLA	3	https://api.spotify.com/v1/artists/5mzaVDcZ3hqKlFwWjj1jpL	640	640	https://i.scdn.co/image/ab6761610000e5eb132084c1a09d135237e95a95
3rZBkgoRHG8M9jQL0QPNMi	{"german pop"}	Adel Tawil	62	https://api.spotify.com/v1/artists/3rZBkgoRHG8M9jQL0QPNMi	640	640	https://i.scdn.co/image/ab6761610000e5eb5a374e40b81ecfc0bf4614bd
1t22AdiJ8P9eXOnoJ8xPJT	{"memphis hip hop"}	YTB Fatt	60	https://api.spotify.com/v1/artists/1t22AdiJ8P9eXOnoJ8xPJT	640	640	https://i.scdn.co/image/ab6761610000e5eb9c39182e2684ad8378c01701
0YsYhESxyHC1kuMm9Mbm3C	{}	YT	53	https://api.spotify.com/v1/artists/0YsYhESxyHC1kuMm9Mbm3C	640	640	https://i.scdn.co/image/ab6761610000e5ebd8642316aa762af17d66637b
19a3CyNYu4XK3SFPh8ICCP	{}	YTM Lilvent	32	https://api.spotify.com/v1/artists/19a3CyNYu4XK3SFPh8ICCP	640	640	https://i.scdn.co/image/ab6761610000e5eb83233de7778917920a564d09
2KVT1V0QF5lMW5PmSoOgPJ	{}	YTD	49	https://api.spotify.com/v1/artists/2KVT1V0QF5lMW5PmSoOgPJ	640	640	https://i.scdn.co/image/ab6761610000e5eba85fbcfc08ddb1b03d7bab0d
4QsNZ1JTLzhVSAzMxjLe7b	{"indie hip hop"}	YTK	44	https://api.spotify.com/v1/artists/4QsNZ1JTLzhVSAzMxjLe7b	640	640	https://i.scdn.co/image/ab6761610000e5ebf0c26d9dbda22814b033fd95
1x82Mu3wakMkldMW5kEiP4	{nerdcore}	YTCracker	29	https://api.spotify.com/v1/artists/1x82Mu3wakMkldMW5kEiP4	640	640	https://i.scdn.co/image/ab6761610000e5ebaaa245fb3c3c74ecfc65d510
48coPMNidGPoELlajbIh2e	{}	Yttermarken	44	https://api.spotify.com/v1/artists/48coPMNidGPoELlajbIh2e	640	640	https://i.scdn.co/image/ab6761610000e5eb0569a430c493052010005ca0
5qTx6amAEpOiXxb6KQjquZ	{"dutch edm"}	Ytram	40	https://api.spotify.com/v1/artists/5qTx6amAEpOiXxb6KQjquZ	640	640	https://i.scdn.co/image/ab6761610000e5eb48627645e31742b340d43c20
5PHYg0IcnpyZJ1y9euAx4i	{}	YTB Trench	39	https://api.spotify.com/v1/artists/5PHYg0IcnpyZJ1y9euAx4i	640	640	https://i.scdn.co/image/ab6761610000e5eb2018fcbeed7104053c05f89f
33YsWRCg88zGFdA0xjxeLO	{}	YFG FATSO	53	https://api.spotify.com/v1/artists/33YsWRCg88zGFdA0xjxeLO	640	640	https://i.scdn.co/image/ab6761610000e5ebafd17a663bed6ae9fdc0e5c4
3jOstUTkEu2JkjvRdBA5Gu	{"alternative rock","modern power pop","modern rock","permanent wave",rock}	Weezer	76	https://api.spotify.com/v1/artists/3jOstUTkEu2JkjvRdBA5Gu	640	640	https://i.scdn.co/image/ab6761610000e5eb3cd35451daa1b690cfbbb2d4
0QUBaF6Rtta4TTmxYYfzux	{shush}	White Noise Radiance	84	https://api.spotify.com/v1/artists/0QUBaF6Rtta4TTmxYYfzux	640	640	https://i.scdn.co/image/ab6761610000e5eba9ee173e9fbacd3273fe5381
137W8MRPWKqSmrBGDBFSop	{"hip hop","pittsburgh rap","pop rap",rap,"southern hip hop",trap}	Wiz Khalifa	83	https://api.spotify.com/v1/artists/137W8MRPWKqSmrBGDBFSop	640	640	https://i.scdn.co/image/ab6761610000e5ebc66b0a8c3268f0b6556f64a8
4eGEs8WIwrq0nSsPqDNf40	{}	Adele	0	https://api.spotify.com/v1/artists/4eGEs8WIwrq0nSsPqDNf40	640	640	https://i.scdn.co/image/ab67616d0000b2731c194671f0588ae8002a9230
5xffPF1512oHpP36VFtOKg	{}	Adele	0	https://api.spotify.com/v1/artists/5xffPF1512oHpP36VFtOKg	0	0	
1HxZD2RvBiEPQeDZ1ZVKth	{}	Taylors	0	https://api.spotify.com/v1/artists/1HxZD2RvBiEPQeDZ1ZVKth	640	640	https://i.scdn.co/image/ab67616d0000b27396155bbc661c7c0d7d12f259
7cWAsRKW1DL0pRUXWyCDsX	{"family gospel"}	The Taylors	23	https://api.spotify.com/v1/artists/7cWAsRKW1DL0pRUXWyCDsX	1000	1000	https://i.scdn.co/image/69d4c6e071ea949df77e19ab3a9b39606f5add9f
71ZUjeK7Y7ELruTeS2Nd7X	{}	teylors	45	https://api.spotify.com/v1/artists/71ZUjeK7Y7ELruTeS2Nd7X	640	640	https://i.scdn.co/image/ab6761610000e5eb6fdb513342be5e14975fb97f
6iw0GipaAI3E8kQGYtt5RR	{"latin viral rap"}	Adan JFW	50	https://api.spotify.com/v1/artists/6iw0GipaAI3E8kQGYtt5RR	640	640	https://i.scdn.co/image/ab6761610000e5eb2b143957a108ebeb146a1c02
4KJ6UBdVO4PqLqSr3w13RL	{"burmese pop"}	Adjustor	39	https://api.spotify.com/v1/artists/4KJ6UBdVO4PqLqSr3w13RL	640	640	https://i.scdn.co/image/ab6761610000e5eb99411692aa05ec5ff65e3c45
15scl9frNMCi7Uul6mgtrC	{}	AT	46	https://api.spotify.com/v1/artists/15scl9frNMCi7Uul6mgtrC	640	640	https://i.scdn.co/image/ab6761610000e5ebb9b7656cb2c281086b11d4fc
4v3TdUm3EQL3lBUO5FFAEV	{"pakistani indie"}	Ariana	12	https://api.spotify.com/v1/artists/4v3TdUm3EQL3lBUO5FFAEV	640	640	https://i.scdn.co/image/ab67616d0000b273846120d495381cc06718ff66
4mSE6EY6HWmw2aEJ4aCp4K	{}	Ariana	12	https://api.spotify.com/v1/artists/4mSE6EY6HWmw2aEJ4aCp4K	640	640	https://i.scdn.co/image/ab6761610000e5eb73979c40f2459e3e417a130b
0ICn3Cbc4mMeLmTvwnqXYu	{"classic russian rock","russian heavy metal","russian metal","russian rock"}	Aria	46	https://api.spotify.com/v1/artists/0ICn3Cbc4mMeLmTvwnqXYu	640	640	https://i.scdn.co/image/ab6761610000e5ebc445948101b99823b6510694
0C8ZW7ezQVs4URX5aX7Kqx	{pop,"post-teen pop"}	Selena Gomez	83	https://api.spotify.com/v1/artists/0C8ZW7ezQVs4URX5aX7Kqx	640	640	https://i.scdn.co/image/ab6761610000e5ebc3c753851496854e29abff7a
3Y4EQUPoAoMmzHwq4LUYtl	{corrido,sierreno}	Adrian Chaparro	50	https://api.spotify.com/v1/artists/3Y4EQUPoAoMmzHwq4LUYtl	640	640	https://i.scdn.co/image/ab6761610000e5eb1b0a9b6d38eb8afca29e327f
2xzyIzdjfeXX6FIQtlAAyw	{}	ARIZONATEARS	66	https://api.spotify.com/v1/artists/2xzyIzdjfeXX6FIQtlAAyw	640	640	https://i.scdn.co/image/ab6761610000e5eb7a1f987819887e8404272ba7
7yO4IdJjCEPz7YgZMe25iS	{"hip hop",rap,"southern hip hop",trap}	A$AP Mob	59	https://api.spotify.com/v1/artists/7yO4IdJjCEPz7YgZMe25iS	640	640	https://i.scdn.co/image/ab6761610000e5eb566918b7180f8965defe862e
7zkwepHPyac6tCYl0fL0co	{"bedroom soul"}	ASTN	57	https://api.spotify.com/v1/artists/7zkwepHPyac6tCYl0fL0co	640	640	https://i.scdn.co/image/ab6761610000e5eba59a135d52c4e95d28f3f5b9
660U1sbp7uNWcb2BYcQHAK	{}	ASMRZ	47	https://api.spotify.com/v1/artists/660U1sbp7uNWcb2BYcQHAK	640	640	https://i.scdn.co/image/ab67616d0000b2733f476b962eb78cb7e480a299
4dUtkvti3zJhBb007LRALS	{}	ASIA	13	https://api.spotify.com/v1/artists/4dUtkvti3zJhBb007LRALS	640	640	https://i.scdn.co/image/ab6761610000e5eb2348e81c629fc36937d82a58
7ivkAId7fKuhHHCKi28jSy	{asmr}	Jojo's ASMR	55	https://api.spotify.com/v1/artists/7ivkAId7fKuhHHCKi28jSy	640	640	https://i.scdn.co/image/ab67616d0000b273797d63830768ad363a13d2d4
2hgP9Ap2tc10R5jrQaEpMT	{chanson}	Charles Aznavour	69	https://api.spotify.com/v1/artists/2hgP9Ap2tc10R5jrQaEpMT	640	640	https://i.scdn.co/image/ab6761610000e5eb9df3ab10872287c871c7a1be
2NjfafEappzvGGGDdMRJMP	{"canadian hip hop","underground hip hop"}	Azizi Gibson	47	https://api.spotify.com/v1/artists/2NjfafEappzvGGGDdMRJMP	640	640	https://i.scdn.co/image/ab6761610000e5ebd2bb1e212d2641cfeefab78b
39KEQQAG9JhIt71g9NEVhh	{"albanian hip hop","german hip hop"}	Azet	71	https://api.spotify.com/v1/artists/39KEQQAG9JhIt71g9NEVhh	640	640	https://i.scdn.co/image/ab6761610000e5eb894850bb103dc08830d172ce
4VHa48wXlsDA2vWfgIi7cX	{"westcoast flow"}	Dody6	72	https://api.spotify.com/v1/artists/4VHa48wXlsDA2vWfgIi7cX	640	640	https://i.scdn.co/image/ab67616d0000b2739709549c1b7ca4d436c71d3f
7xUEVAixJOG51xLGQvRCLH	{sillycore}	AZALI	55	https://api.spotify.com/v1/artists/7xUEVAixJOG51xLGQvRCLH	640	640	https://i.scdn.co/image/ab6761610000e5eb75c119f5749fa65e2d2589b9
5lYcr7Yue9FUB7MJDBtTJx	{"brazilian boogie","jazz funk","psicodelia brasileira"}	Azymuth	45	https://api.spotify.com/v1/artists/5lYcr7Yue9FUB7MJDBtTJx	640	640	https://i.scdn.co/image/ab6761610000e5eb144da18ac252e1c9a7e92f97
0ZCO8oVkMj897cKgFH7fRW	{"gruperas inmortales","musica mexicana",nu-cumbia,ranchera,tropical}	Los Ángeles Azules	79	https://api.spotify.com/v1/artists/0ZCO8oVkMj897cKgFH7fRW	640	640	https://i.scdn.co/image/ab6761610000e5eb8d751eb2c4670d689d23734e
3PGcAW6SrOkoVtZjxyrPNT	{}	Casey Gibson	11	https://api.spotify.com/v1/artists/3PGcAW6SrOkoVtZjxyrPNT	640	640	https://i.scdn.co/image/ab6761610000e5eb07eec76914eed286b2d5e169
29AxIpgZLT4OzXm9sZp9db	{}	Azi Schwartz	4	https://api.spotify.com/v1/artists/29AxIpgZLT4OzXm9sZp9db	640	640	https://i.scdn.co/image/ab67616d0000b273a5938093830b76d311ac136b
6XBuNdfElYNkSgQxhbFH8O	{}	Mail Gibson	4	https://api.spotify.com/v1/artists/6XBuNdfElYNkSgQxhbFH8O	0	0	
1TXVzVnb7tdPrBYjXUvgTz	{}	Azi Sakwe	10	https://api.spotify.com/v1/artists/1TXVzVnb7tdPrBYjXUvgTz	640	640	https://i.scdn.co/image/ab67616d0000b273c2f822a8993e85f17a4a30f0
6kXhEQa7f3qsfbqf4RRhSD	{}	AZIZA	5	https://api.spotify.com/v1/artists/6kXhEQa7f3qsfbqf4RRhSD	640	640	https://i.scdn.co/image/ab67616d0000b2730dca61a7ba2cb499a753853e
7m7QmArzuk1vHjPK384Upz	{}	Aziza Askarova	8	https://api.spotify.com/v1/artists/7m7QmArzuk1vHjPK384Upz	640	640	https://i.scdn.co/image/ab6761610000e5eba2bb70b5f53ae9c89015683f
3MdXrJWsbVzdn6fe5JYkSQ	{"trap queen"}	Latto	80	https://api.spotify.com/v1/artists/3MdXrJWsbVzdn6fe5JYkSQ	640	640	https://i.scdn.co/image/ab6761610000e5eba11b0b5c37498f5dddb1bd7b
1dfeR4HaWDbWqFHLkxsg1d	{"classic rock","glam rock",rock}	Queen	86	https://api.spotify.com/v1/artists/1dfeR4HaWDbWqFHLkxsg1d	806	999	https://i.scdn.co/image/b040846ceba13c3e9c125d68389491094e7f2982
6XTGKOV9jceQ6f67lnhpbF	{"urbano mexicano"}	LATIN MAFIA	77	https://api.spotify.com/v1/artists/6XTGKOV9jceQ6f67lnhpbF	640	640	https://i.scdn.co/image/ab6761610000e5ebc9c8ef1f2e82c8313cc29781
2C6i0I5RiGzDKN9IAF8reh	{banda,"musica mexicana",norteno}	Banda MS de Sergio Lizárraga	81	https://api.spotify.com/v1/artists/2C6i0I5RiGzDKN9IAF8reh	640	640	https://i.scdn.co/image/ab6761610000e5eb4c54fb31ca39c862f2b4de9d
5Gx8P1gIKW3R4Cp2ufHMF6	{}	Laufey Eliasdóttir	0	https://api.spotify.com/v1/artists/5Gx8P1gIKW3R4Cp2ufHMF6	640	640	https://i.scdn.co/image/ab67616d0000b273546ece4afb27257f03056312
2uYWxilOVlUdk4oV9DvwqK	{"brooklyn indie","pov: indie"}	Mitski	84	https://api.spotify.com/v1/artists/2uYWxilOVlUdk4oV9DvwqK	640	640	https://i.scdn.co/image/ab6761610000e5eb4bdb3888818637acb71c4a13
6vsxBeDjpiWdIqAmKT5jgD	{}	Laufey Soffía	2	https://api.spotify.com/v1/artists/6vsxBeDjpiWdIqAmKT5jgD	640	640	https://i.scdn.co/image/ab67616d0000b2733dc06ad597751450911fb71c
3ihqBDvvrn1KTUbZldVitX	{}	Laufey Sigurðardóttir	0	https://api.spotify.com/v1/artists/3ihqBDvvrn1KTUbZldVitX	0	0	
4Ws6ROTxMJDWMVYTYllox0	{}	Laufey Sigurðardóttir	1	https://api.spotify.com/v1/artists/4Ws6ROTxMJDWMVYTYllox0	640	640	https://i.scdn.co/image/ab67616d0000b27392bf1c7baac7ff9c31fdba1f
5szilpXHcwOqnyKLqGco5j	{"atlanta indie","indie pop"}	Faye Webster	74	https://api.spotify.com/v1/artists/5szilpXHcwOqnyKLqGco5j	640	640	https://i.scdn.co/image/ab6761610000e5eb4935804c2a7f4d6a22525607
2jhem560Z4AsBBhUbrv9A8	{}	Laufey Linden	0	https://api.spotify.com/v1/artists/2jhem560Z4AsBBhUbrv9A8	0	0	
7FYjm6rpA48XYpV3iIr0GI	{}	Laufey Elíasdóttir	0	https://api.spotify.com/v1/artists/7FYjm6rpA48XYpV3iIr0GI	640	640	https://i.scdn.co/image/ab6761610000e5eb691f0de6de34dc56ede1c3c6
5msDm73VmQmIrVGin1x4lZ	{}	Laufey Eliasdottir	0	https://api.spotify.com/v1/artists/5msDm73VmQmIrVGin1x4lZ	640	640	https://i.scdn.co/image/ab67616d0000b2734b8891ef12c6e80739ec7259
3l0CmX0FuQjFxr8SK7Vqag	{"bedroom pop","indie pop","pov: indie"}	Clairo	82	https://api.spotify.com/v1/artists/3l0CmX0FuQjFxr8SK7Vqag	640	640	https://i.scdn.co/image/ab6761610000e5eb4804c4a44c85afea1a72d1bd
5pUo3fmmHT8bhCyHE52hA6	{pop}	Liam Payne	72	https://api.spotify.com/v1/artists/5pUo3fmmHT8bhCyHE52hA6	640	640	https://i.scdn.co/image/ab6761610000e5eb4b2a3fffa1076ea1c920dcb2
6PUZZX4GCzeFS0GaDWxVwz	{nasheed,rif,sholawat}	Maher Zain	67	https://api.spotify.com/v1/artists/6PUZZX4GCzeFS0GaDWxVwz	640	640	https://i.scdn.co/image/ab6761610000e5ebb59139ceed47f11c026333f3
1Hsdzj7Dlq2I7tHP7501T4	{pop}	Niall Horan	77	https://api.spotify.com/v1/artists/1Hsdzj7Dlq2I7tHP7501T4	640	640	https://i.scdn.co/image/ab6761610000e5ebeccc1cde8e9fdcf1c9289897
3g5sxvKldw7Kss4e5FPSXb	{"pop lgbtq+ brasileira"}	Zaynara	44	https://api.spotify.com/v1/artists/3g5sxvKldw7Kss4e5FPSXb	640	640	https://i.scdn.co/image/ab6761610000e5ebdf7b1c165bb570c1576f7a0b
57WHJIHrjOE3iAxpihhMnp	{pop}	Louis Tomlinson	68	https://api.spotify.com/v1/artists/57WHJIHrjOE3iAxpihhMnp	640	640	https://i.scdn.co/image/ab6761610000e5ebe169df750e95452a1de99692
1mceaxtjWdEmwoDVAlkC41	{"atl hip hop","melodic rap","memphis hip hop",trap}	Zaytoven	55	https://api.spotify.com/v1/artists/1mceaxtjWdEmwoDVAlkC41	640	640	https://i.scdn.co/image/ab6761610000e5eb1c2bd35434fb9a4873631fee
3pCdpK2DVRSs77L9RtxFy0	{"arab pop",dabke,"lebanese pop"}	Melhem Zein	45	https://api.spotify.com/v1/artists/3pCdpK2DVRSs77L9RtxFy0	640	640	https://i.scdn.co/image/ab6761610000e5eb34900f31bef863fb61d497b7
7nkr1fevjIVmgx5biwAWVo	{}	Taylour Paige	48	https://api.spotify.com/v1/artists/7nkr1fevjIVmgx5biwAWVo	640	640	https://i.scdn.co/image/ab6761610000e5eb8e5a8ed4bb07804dc8ebe8b0
1f0vGTFXE64SLuypBV8zB0	{broadway,"show tunes"}	Taylor Louderman	52	https://api.spotify.com/v1/artists/1f0vGTFXE64SLuypBV8zB0	640	640	https://i.scdn.co/image/ab6761610000e5eb1a15c0765808044ffc633803
163tK9Wjr9P9DmM0AVK7lm	{"art pop",metropopolis,"nz pop",pop}	Lorde	78	https://api.spotify.com/v1/artists/163tK9Wjr9P9DmM0AVK7lm	640	640	https://i.scdn.co/image/ab6761610000e5ebc4902f080d3620b3e6da80c3
480xKab3lUPhBBnCzlzqIu	{"bow pop","pop violin"}	Taylor Davis	50	https://api.spotify.com/v1/artists/480xKab3lUPhBBnCzlzqIu	640	640	https://i.scdn.co/image/ab6761610000e5ebcefd7abc8e4cfd9680005cab
4oPMm2idleIKLdBWgZilSi	{"crossover thrash","hardcore punk","horror punk",punk}	T.S.O.L.	45	https://api.spotify.com/v1/artists/4oPMm2idleIKLdBWgZilSi	656	931	https://i.scdn.co/image/454f15409f813f721bda56e03553e1962d345bd2
1ZwdS5xdxEREPySFridCfh	{"g funk","gangster rap","hip hop",rap,"west coast rap"}	2Pac	82	https://api.spotify.com/v1/artists/1ZwdS5xdxEREPySFridCfh	640	640	https://i.scdn.co/image/ab6761610000e5eb7f5cc432c9c109248ebec1ac
5OSQDUNmll299ldFIF1Dau	{"neo classical metal","progressive metal"}	Trans-Siberian Orchestra	65	https://api.spotify.com/v1/artists/5OSQDUNmll299ldFIF1Dau	640	640	https://i.scdn.co/image/ab6761610000e5eb0b8b465430abcd6d5ef5bf76
6tYVXU1sKSsk6SIdkfIWGu	{"battle rap","new jersey rap","new jersey underground rap"}	Tsu Surf	41	https://api.spotify.com/v1/artists/6tYVXU1sKSsk6SIdkfIWGu	640	640	https://i.scdn.co/image/ab6761610000e5eb6028dad2db1183c257d74083
3MKCzCnpzw3TjUYs2v7vDA	{classical,"late romantic era","russian romanticism"}	Pyotr Ilyich Tchaikovsky	73	https://api.spotify.com/v1/artists/3MKCzCnpzw3TjUYs2v7vDA	1000	1000	https://i.scdn.co/image/9a7c31f43e22a95f6d3c57baf4f87a3a9d2b93e0
6fHEaFnFgMxMAtDt7mFoQ3	{hyperpop}	tsubi club	46	https://api.spotify.com/v1/artists/6fHEaFnFgMxMAtDt7mFoQ3	640	640	https://i.scdn.co/image/ab6761610000e5ebeee493ec56e88ee9a2e5c5ce
2DaxqgrOhkeH0fpeiQq2f4	{beatlesque,britpop,madchester,"permanent wave",rock}	Oasis	81	https://api.spotify.com/v1/artists/2DaxqgrOhkeH0fpeiQq2f4	640	640	https://i.scdn.co/image/ab6761610000e5eb0522e98a6f0cf1ddbee9a74f
3l9G1G9MxH6DaRhwLklaf5	{corrido}	Oscar Maydon	88	https://api.spotify.com/v1/artists/3l9G1G9MxH6DaRhwLklaf5	640	640	https://i.scdn.co/image/ab6761610000e5eb505626c3e5b3feebe828f206
1G9G7WwrXka3Z1r7aIDjI7	{"atl hip hop","dirty south rap","hip hop","old school atlanta hip hop",rap,"southern hip hop"}	Outkast	77	https://api.spotify.com/v1/artists/1G9G7WwrXka3Z1r7aIDjI7	640	640	https://i.scdn.co/image/ab6761610000e5eb0cb3f95b9f8f7337e135a925
1i8SpTcr7yvPOmcqrbnVXY	{"puerto rican pop",reggaeton,"trap latino","urbano latino"}	Ozuna	87	https://api.spotify.com/v1/artists/1i8SpTcr7yvPOmcqrbnVXY	640	640	https://i.scdn.co/image/ab6761610000e5ebc80f303b208a480f52e8180b
3iXeAZ8862AyoZ5ZGg800O	{"modern country pop"}	Ole 60	66	https://api.spotify.com/v1/artists/3iXeAZ8862AyoZ5ZGg800O	640	640	https://i.scdn.co/image/ab6761610000e5eb1f2e27598503a9eeddf176b6
5Pwc4xIPtQLFEnJriah9YJ	{"piano rock",pop}	OneRepublic	85	https://api.spotify.com/v1/artists/5Pwc4xIPtQLFEnJriah9YJ	640	640	https://i.scdn.co/image/ab6761610000e5eb57138b98e7ddd5a86ee97a9b
3dHnXBJdd4O9KXwP1kxF6L	{"philly drill"}	OT7 Quanny	64	https://api.spotify.com/v1/artists/3dHnXBJdd4O9KXwP1kxF6L	640	640	https://i.scdn.co/image/ab6761610000e5ebc06f9dd754f9c5c5b00a196c
60df5JBRRPcnSpsIMxxwQm	{"classic soul","memphis soul",soul,"soul blues","southern soul","vocal jazz"}	Otis Redding	74	https://api.spotify.com/v1/artists/60df5JBRRPcnSpsIMxxwQm	751	1000	https://i.scdn.co/image/4ad89c805aff0fb76b01b6b62b39e21fcd8943c3
2VxINnkFPw2Sd6MiyKxN4B	{"bedroom r&b",zoomergaze}	otuka	62	https://api.spotify.com/v1/artists/2VxINnkFPw2Sd6MiyKxN4B	640	640	https://i.scdn.co/image/ab6761610000e5eb5cd698b5accf2a317d39a937
3IaKn0ExWTMPqa0mscUYw3	{"chicago rap"}	Only The Family	63	https://api.spotify.com/v1/artists/3IaKn0ExWTMPqa0mscUYw3	640	640	https://i.scdn.co/image/ab6761610000e5ebdb3e94ba3ffb90a51d69bdfb
6iswhpc2w6na3lS1vehFXF	{"alternative metal","industrial metal","nu metal","rap metal",slayer}	Otep	45	https://api.spotify.com/v1/artists/6iswhpc2w6na3lS1vehFXF	640	640	https://i.scdn.co/image/ab6761610000e5ebc8225a9adb7b9e045d30897d
2kL4eDtAl8mixMQr6bndD1	{"westcoast flow"}	OTM	52	https://api.spotify.com/v1/artists/2kL4eDtAl8mixMQr6bndD1	640	640	https://i.scdn.co/image/ab6761610000e5eb45f0fdbd39d03a868d950091
6VuMaDnrHyPL1p4EHjYLi7	{pop,"viral pop"}	Charlie Puth	81	https://api.spotify.com/v1/artists/6VuMaDnrHyPL1p4EHjYLi7	640	640	https://i.scdn.co/image/ab6761610000e5ebd5594e3ae145bbb2c096366d
1F102kNzMqsmOpF7AfFmm5	{downtempo,"downtempo bass","glitch hop",psybass,psychill,psydub}	Ott	41	https://api.spotify.com/v1/artists/1F102kNzMqsmOpF7AfFmm5	640	640	https://i.scdn.co/image/ab6761610000e5ebe724ce154c8582deee3138d9
2ziB7fzrXBoh1HUPS6sVFn	{"alternative metal","alternative rock",grunge,"hard rock","nu metal","permanent wave",post-grunge,rock,supergroup}	Audioslave	70	https://api.spotify.com/v1/artists/2ziB7fzrXBoh1HUPS6sVFn	640	640	https://i.scdn.co/image/ab6761610000e5eb5a865295befda9e060a72cb0
1Zatb2YN4erBOoSivOXc0o	{"southern hip hop",trap}	O.T. Genasis	53	https://api.spotify.com/v1/artists/1Zatb2YN4erBOoSivOXc0o	640	640	https://i.scdn.co/image/ab6761610000e5eb6aea835a2e35e92e7a65eec9
0DR4z5jMA1eqx0CmHBUpkr	{"classic schlager",oktoberfest,schlager}	DJ Ötzi	60	https://api.spotify.com/v1/artists/0DR4z5jMA1eqx0CmHBUpkr	640	640	https://i.scdn.co/image/ab6761610000e5eb4914286a51bd951a97a17752
7h4O0UWGwnRrmunr2e8mQZ	{}	Otzdarva	22	https://api.spotify.com/v1/artists/7h4O0UWGwnRrmunr2e8mQZ	0	0	
1KeVLyDZPWLjONQPEplRFK	{deathrock}	Ötzi	13	https://api.spotify.com/v1/artists/1KeVLyDZPWLjONQPEplRFK	640	640	https://i.scdn.co/image/ab6761610000e5eb72223fbef600a04fc4a89b16
6uI2KKGvDh27bByTg5RAeF	{"french indietronica"}	Otzeki	29	https://api.spotify.com/v1/artists/6uI2KKGvDh27bByTg5RAeF	640	640	https://i.scdn.co/image/ab6761610000e5eb679a01f677d5e608dec3e8ea
1Rzt4qkfCYJA2r5tsp9USY	{}	Said OTZ	30	https://api.spotify.com/v1/artists/1Rzt4qkfCYJA2r5tsp9USY	640	640	https://i.scdn.co/image/ab6761610000e5ebf73191e50ea4799174ffda80
213MrGzuo2Y7Pt3foSroEx	{"baltimore hip hop"}	OTR CHAZ	35	https://api.spotify.com/v1/artists/213MrGzuo2Y7Pt3foSroEx	640	640	https://i.scdn.co/image/ab6761610000e5eba62d44a91fc3afef4bcb9421
1f28qMfGcptwHMrdphIxS8	{}	Otz	6	https://api.spotify.com/v1/artists/1f28qMfGcptwHMrdphIxS8	640	640	https://i.scdn.co/image/ab6761610000e5eb285ad26c81084ed1db1b7ef6
3Ri4H12KFyu98LMjSoij5V	{"american metalcore"}	Bad Omens	74	https://api.spotify.com/v1/artists/3Ri4H12KFyu98LMjSoij5V	640	640	https://i.scdn.co/image/ab6761610000e5eb5d4b995885f2d687bb5c48ac
48zEowASEXWsK6lgP1xotZ	{}	Baby Sleeps	82	https://api.spotify.com/v1/artists/48zEowASEXWsK6lgP1xotZ	640	640	https://i.scdn.co/image/ab67616d0000b273237279ea995c783d8627c3f5
0sKsReKseslDlhxmbN6wLk	{"detroit hip hop","scam rap"}	BabyTron	70	https://api.spotify.com/v1/artists/0sKsReKseslDlhxmbN6wLk	640	640	https://i.scdn.co/image/ab6761610000e5eb1ff261f69fb001b1b8a38ea2
7nixcnKd43u9a29ZMawfnh	{"white noise"}	Background White Noise	81	https://api.spotify.com/v1/artists/7nixcnKd43u9a29ZMawfnh	640	640	https://i.scdn.co/image/ab67616d0000b273f7490d7c169169bf7a659c37
1J1pGfTqp5ReVIX8Z1Wzsg	{}	BabyChiefDoit	69	https://api.spotify.com/v1/artists/1J1pGfTqp5ReVIX8Z1Wzsg	640	640	https://i.scdn.co/image/ab6761610000e5ebe04ed5954e30621dd235ce5e
3win9vGIxFfBRag9S63wwf	{"contemporary country","modern country pop"}	Bailey Zimmerman	77	https://api.spotify.com/v1/artists/3win9vGIxFfBRag9S63wwf	640	640	https://i.scdn.co/image/ab6761610000e5ebc57dc614781a71b1387c3f3f
5SXuuuRpukkTvsLuUknva1	{"hip hop",rap}	Baby Keem	78	https://api.spotify.com/v1/artists/5SXuuuRpukkTvsLuUknva1	640	640	https://i.scdn.co/image/ab6761610000e5ebd6f2323c1971fd5a70cd0255
5rSXSAkZ67PYJSvpUpkOr7	{"boy band","dance pop",pop}	Backstreet Boys	78	https://api.spotify.com/v1/artists/5rSXSAkZ67PYJSvpUpkOr7	640	640	https://i.scdn.co/image/ab6761610000e5ebd792783a725a0ed42866204c
630wzNP2OL7fl4Xl0GnMWq	{"idol rock",j-metal,"kawaii metal"}	BABYMETAL	70	https://api.spotify.com/v1/artists/630wzNP2OL7fl4Xl0GnMWq	640	640	https://i.scdn.co/image/ab6761610000e5eb2c0d80b9de67c2819bb4dbc0
15oLsNy8mZYaIukh4eDhXy	{"detroit hip hop","detroit trap","scam rap"}	Baby Smoove	66	https://api.spotify.com/v1/artists/15oLsNy8mZYaIukh4eDhXy	640	640	https://i.scdn.co/image/ab6761610000e5eb8041c618aa428fa897cd0ef6
1IppGzPqPv70sKbraW5Q2L	{"atl drill"}	Baby Kia	61	https://api.spotify.com/v1/artists/1IppGzPqPv70sKbraW5Q2L	640	640	https://i.scdn.co/image/ab6761610000e5ebb9d1b5ef76cf80fd6c3653ab
1SIocsqdEefUTE6XKGUiVS	{"5th gen k-pop"}	BABYMONSTER	79	https://api.spotify.com/v1/artists/1SIocsqdEefUTE6XKGUiVS	640	640	https://i.scdn.co/image/ab6761610000e5ebb419d66ef21661311c806bfe
59tlsKpLWoLTxjNNS2wdPi	{}	Tape B	55	https://api.spotify.com/v1/artists/59tlsKpLWoLTxjNNS2wdPi	640	640	https://i.scdn.co/image/ab6761610000e5eb7781019fba8bb957a3d82723
5GyVJzooUpg9hZonyyIEfI	{}	ARO	17	https://api.spotify.com/v1/artists/5GyVJzooUpg9hZonyyIEfI	640	640	https://i.scdn.co/image/ab6761610000e5eb24de489da08dba204b466cec
1mYsTxnqsietFxj1OgoGbG	{filmi}	A.R. Rahman	82	https://api.spotify.com/v1/artists/1mYsTxnqsietFxj1OgoGbG	640	640	https://i.scdn.co/image/ab6761610000e5ebb19af0ea736c6228d6eb539c
0aI0llD36ZH9ZDplS8TblP	{}	ARrC	34	https://api.spotify.com/v1/artists/0aI0llD36ZH9ZDplS8TblP	640	640	https://i.scdn.co/image/ab6761610000e5eb56c97145fb0163e7cb48405b
7mGI9Sd66FqHjIkwzkgbG7	{"pop dance"}	AR/CO	62	https://api.spotify.com/v1/artists/7mGI9Sd66FqHjIkwzkgbG7	640	640	https://i.scdn.co/image/ab6761610000e5eb6898a67deb8d51e11949faaf
5jxe5kzLkm5ICEy03BcLwo	{"alberta hip hop"}	ARDN	46	https://api.spotify.com/v1/artists/5jxe5kzLkm5ICEy03BcLwo	640	640	https://i.scdn.co/image/ab6761610000e5ebf25b704a220904e69153cb6d
3mMogqf2JyBUQZxFZlC79w	{"singer-songwriter pop"}	Arden Jones	57	https://api.spotify.com/v1/artists/3mMogqf2JyBUQZxFZlC79w	640	640	https://i.scdn.co/image/ab6761610000e5eb3cb68e49020929b690490204
7slgZPVvhm6u7yR6H2US5k	{}	Eli G	36	https://api.spotify.com/v1/artists/7slgZPVvhm6u7yR6H2US5k	640	640	https://i.scdn.co/image/ab6761610000e5ebdb1c717b96c22b2ee536c767
7IG0fEAR9mz2PBckWjAfS8	{"white noise"}	Ardeon	60	https://api.spotify.com/v1/artists/7IG0fEAR9mz2PBckWjAfS8	640	640	https://i.scdn.co/image/ab67616d0000b2732fb0bd73192bd5095e22e863
1IoXFZAHav40LKFvTOPaXW	{}	JaWill	34	https://api.spotify.com/v1/artists/1IoXFZAHav40LKFvTOPaXW	640	640	https://i.scdn.co/image/ab6761610000e5eb8b68c7a624c7e3e85ee19962
2Wwiu1wnq1W8AMYbWuRFDH	{"murcia indie","spanish indie pop","spanish rock"}	Arde Bogotá	67	https://api.spotify.com/v1/artists/2Wwiu1wnq1W8AMYbWuRFDH	640	640	https://i.scdn.co/image/ab6761610000e5ebb0e5a5d40c435714859d315c
7HY1ISUuRotG01FVu0PKWh	{"chill abstract hip hop"}	mynameisntjmack	52	https://api.spotify.com/v1/artists/7HY1ISUuRotG01FVu0PKWh	640	640	https://i.scdn.co/image/ab6761610000e5eb07ecc0441f2544adce24a46f
2NuLlZIDbKWaBBfqIOoWAz	{}	Ardee	45	https://api.spotify.com/v1/artists/2NuLlZIDbKWaBBfqIOoWAz	640	640	https://i.scdn.co/image/ab6761610000e5eb3d2228c52e4943492b6b457b
70KxgbZNsd9xOttXW67mh3	{"indie hip hop"}	grouptherapy.	43	https://api.spotify.com/v1/artists/70KxgbZNsd9xOttXW67mh3	640	640	https://i.scdn.co/image/ab6761610000e5eb30858cc7266beb4fe2eeb247
3TkSKriI4EZmTxSFyzs0fd	{"indonesian indie","indonesian jazz","indonesian pop","jazz pop"}	Ardhito Pramono	63	https://api.spotify.com/v1/artists/3TkSKriI4EZmTxSFyzs0fd	640	640	https://i.scdn.co/image/ab6761610000e5ebe8a47fac892453717b0bf3f7
7moBZujRHUZsfdHu9eAkG1	{}	AEMIA	33	https://api.spotify.com/v1/artists/7moBZujRHUZsfdHu9eAkG1	640	640	https://i.scdn.co/image/ab6761610000e5eb9b35cff68edde64bd17b7529
3ZJStQDXX96pzh1ynhB7HB	{}	AEMIA	6	https://api.spotify.com/v1/artists/3ZJStQDXX96pzh1ynhB7HB	640	640	https://i.scdn.co/image/ab6761610000e5eb5d9f3c47a0c7c678e281f80b
7ue360AGmUFYGTR6gaT2i8	{wrestling}	All Elite Wrestling	39	https://api.spotify.com/v1/artists/7ue360AGmUFYGTR6gaT2i8	640	640	https://i.scdn.co/image/ab6761610000e5ebc0dba4bf63a40075fcdf0558
0hiaaC6G04w7QbL7QPSpS8	{}	Kourosh zz	12	https://api.spotify.com/v1/artists/0hiaaC6G04w7QbL7QPSpS8	640	640	https://i.scdn.co/image/ab6761610000e5eb943939bcf8db235a8f41917e
4UWcOm40hIpudoHIcpQQxg	{}	AE	16	https://api.spotify.com/v1/artists/4UWcOm40hIpudoHIcpQQxg	640	640	https://i.scdn.co/image/ab6761610000e5eb53efc87d8f296d3657003524
6n1fB5NgTsFNdT4JHpVMe1	{"ambient psychill","ambient trance",psychill}	AES DANA	32	https://api.spotify.com/v1/artists/6n1fB5NgTsFNdT4JHpVMe1	1000	1000	https://i.scdn.co/image/15a73a6eee957bfcdb477f1376e56a530d5e210e
2qwDjeSYANOOBFU8jwtBXx	{}	KARINA	44	https://api.spotify.com/v1/artists/2qwDjeSYANOOBFU8jwtBXx	640	640	https://i.scdn.co/image/ab6761610000e5ebd57cec71915fe90346a37df6
3xfKQzxUhn983GLrYs3puB	{}	Aesthetic Instrumentals	38	https://api.spotify.com/v1/artists/3xfKQzxUhn983GLrYs3puB	640	640	https://i.scdn.co/image/ab67616d0000b273831d1e5ec4a29dad74c084d8
6rzTjsgzFb8d7OUeuXykAV	{}	Aesthetic Future	39	https://api.spotify.com/v1/artists/6rzTjsgzFb8d7OUeuXykAV	640	640	https://i.scdn.co/image/ab6761610000e5eb87292d7b205cc57cd0ac0bbb
14UGBvYPLpI2OfCvtuDrJf	{"dembow dominicano"}	TYKING	45	https://api.spotify.com/v1/artists/14UGBvYPLpI2OfCvtuDrJf	640	640	https://i.scdn.co/image/ab6761610000e5eb648a723ec4c7043685487d99
7fKN1QW4r5adgN6HlPZ6eo	{}	tyke james	23	https://api.spotify.com/v1/artists/7fKN1QW4r5adgN6HlPZ6eo	640	640	https://i.scdn.co/image/ab6761610000e5ebccb49873a3863629873550a4
0Yf2kOVTtWIw0lJsAkfE5s	{"glam metal","melodic hard rock","sleaze rock"}	Tyketto	32	https://api.spotify.com/v1/artists/0Yf2kOVTtWIw0lJsAkfE5s	640	640	https://i.scdn.co/image/ab6761610000e5eb7172aceb08d6dbb241225e96
1vCgLj2vW4KhX5axAs3TPh	{"minneapolis sound"}	Tyka Nelson	8	https://api.spotify.com/v1/artists/1vCgLj2vW4KhX5axAs3TPh	1420	1000	https://i.scdn.co/image/4eed987d332b3f9ec4b5f7e00e20f9f4d5f9895c
1YtTF1pj1ZFufjkP0BEfWE	{"german soundtrack",soundtrack}	Tom Tykwer	44	https://api.spotify.com/v1/artists/1YtTF1pj1ZFufjkP0BEfWE	1000	1000	https://i.scdn.co/image/ab6772690000c46c1d28fb58e99b09b5bd1a9c37
6al3iibttw05hdIhCuc76q	{}	TyKim	22	https://api.spotify.com/v1/artists/6al3iibttw05hdIhCuc76q	640	640	https://i.scdn.co/image/ab6761610000e5ebea806f5148c7b40e1f7b3d31
2UEnGfKnVIbZOLUkMw2ZuC	{}	TYKING	25	https://api.spotify.com/v1/artists/2UEnGfKnVIbZOLUkMw2ZuC	0	0	
4z85Glof8wylJsLi93ukHm	{}	tylerhateslife	48	https://api.spotify.com/v1/artists/4z85Glof8wylJsLi93ukHm	640	640	https://i.scdn.co/image/ab6761610000e5eb4a1d237c91e72bbdb3fcca2a
0MqXw0plXKIaJtM342hIag	{"dark r&b"}	Layto	56	https://api.spotify.com/v1/artists/0MqXw0plXKIaJtM342hIag	640	640	https://i.scdn.co/image/ab6761610000e5eb2277e68c21ca4b8c7e520381
6ay740FQIPgTMahZqP9Opx	{"lo-fi study"}	TyLuv.	44	https://api.spotify.com/v1/artists/6ay740FQIPgTMahZqP9Opx	640	640	https://i.scdn.co/image/ab6761610000e5eb3417148b0b9b92e7a3e55ff3
3U1jsFYwwJHv7VB4Frf3F4	{"rage rap"}	TyFontaine	43	https://api.spotify.com/v1/artists/3U1jsFYwwJHv7VB4Frf3F4	640	640	https://i.scdn.co/image/ab6761610000e5ebe92bf00ca8745e2bb831c8a7
0vDWMoBRb7jLK9iZz2PI17	{"anime rap"}	Tyler Clark	40	https://api.spotify.com/v1/artists/0vDWMoBRb7jLK9iZz2PI17	640	640	https://i.scdn.co/image/ab6761610000e5eba00cbe441aee95d5e0d1310b
6m0Je9Z408QX7tN93Iv7hm	{}	Tyler Smyth	45	https://api.spotify.com/v1/artists/6m0Je9Z408QX7tN93Iv7hm	640	640	https://i.scdn.co/image/ab6761610000e5eb5883eb4859ccaba0763521b3
75fIuwXxhZ1atNzWLMrgF0	{"orchestral soundtrack",soundtrack}	Tyler Bates	53	https://api.spotify.com/v1/artists/75fIuwXxhZ1atNzWLMrgF0	640	640	https://i.scdn.co/image/ab6761610000e5eb73faac0084f61517186d6de9
4k4EIaXDU8iKDBMRhrV6Ic	{"lo-fi sleep"}	Tyler.l	41	https://api.spotify.com/v1/artists/4k4EIaXDU8iKDBMRhrV6Ic	640	640	https://i.scdn.co/image/ab6761610000e5eb5a0383151777346585ca504a
6jRmwlzMVSICyO97aN7UnT	{hollywood,"show tunes"}	Taye Diggs	57	https://api.spotify.com/v1/artists/6jRmwlzMVSICyO97aN7UnT	0	0	
6WnqYkxBgnTIHxbv9PiV6d	{}	Nick Drake	2	https://api.spotify.com/v1/artists/6WnqYkxBgnTIHxbv9PiV6d	640	640	https://i.scdn.co/image/ab67616d0000b27373d67e01b68797b4c2c4f31d
3jfLD5DtjrE6sk5cYpNhJQ	{"uk worship"}	Nick & Becky Drake	23	https://api.spotify.com/v1/artists/3jfLD5DtjrE6sk5cYpNhJQ	640	640	https://i.scdn.co/image/ab6761610000e5eb89746eb9666f8fd6302031b1
2ApaG60P4r0yhBoDCGD8YG	{"alternative rock","indie rock",melancholia,singer-songwriter}	Elliott Smith	68	https://api.spotify.com/v1/artists/2ApaG60P4r0yhBoDCGD8YG	640	640	https://i.scdn.co/image/ab6761610000e5eb079739b801ab3f105866b76f
0eNKZJBEFsEubfbIn6WhRe	{}	The Nick Drake remembrance sonorities	13	https://api.spotify.com/v1/artists/0eNKZJBEFsEubfbIn6WhRe	640	640	https://i.scdn.co/image/ab67616d0000b273f3b21b2de34bf6818fe78c1d
0IwlY33zbBXN7zlS9DP2Cj	{experimental,melancholia,singer-songwriter}	Nico	61	https://api.spotify.com/v1/artists/0IwlY33zbBXN7zlS9DP2Cj	1071	811	https://i.scdn.co/image/677676052b80931c35666be501d1f0d5c97397c9
6IFSaWFnrPT8PHun78KCAO	{}	Nick Straker	27	https://api.spotify.com/v1/artists/6IFSaWFnrPT8PHun78KCAO	640	640	https://i.scdn.co/image/ab67616d0000b2733431acc88d48f5960d8511f5
2QoU3awHVdcHS8LrZEKvSM	{"alternative country","alternative rock","chicago indie",folk,"indie rock","roots rock","stomp and holler"}	Wilco	60	https://api.spotify.com/v1/artists/2QoU3awHVdcHS8LrZEKvSM	640	640	https://i.scdn.co/image/ab6761610000e5ebb990b82996651d23ab4df7e8
1789Un2gEvELbBTnHoS9Rl	{"british folk"}	Molly Drake	38	https://api.spotify.com/v1/artists/1789Un2gEvELbBTnHoS9Rl	300	500	https://i.scdn.co/image/83e02935a38a48b49ab11cea406cb9bf979122dd
5wXWPsAdClojSCbb2djQOF	{}	Nicked Drake	1	https://api.spotify.com/v1/artists/5wXWPsAdClojSCbb2djQOF	640	640	https://i.scdn.co/image/ab67616d0000b273c51b5e3aa0348a1119a1ccc7
4OGGiAjLVEwHzuivxqONpy	{jawaiian}	Akoni	24	https://api.spotify.com/v1/artists/4OGGiAjLVEwHzuivxqONpy	640	640	https://i.scdn.co/image/ab6761610000e5eb4077823b7045a34df96847b6
0M3pSxdvt34gJpWKusGZUs	{}	Akon	0	https://api.spotify.com/v1/artists/0M3pSxdvt34gJpWKusGZUs	640	640	https://i.scdn.co/image/ab67616d0000b273c9ba032af953b30b613a5a50
7AnQGuknGCDEvr1t4n6Ink	{}	Aliaune "Akon" Thiam	40	https://api.spotify.com/v1/artists/7AnQGuknGCDEvr1t4n6Ink	0	0	
7MABvOr8VVnYof6K5bi4nr	{}	Akon	0	https://api.spotify.com/v1/artists/7MABvOr8VVnYof6K5bi4nr	0	0	
7pmtJlgZPmrnYpUwuADqy2	{"pinoy indie","pinoy singer-songwriter"}	Akong Ayalam	25	https://api.spotify.com/v1/artists/7pmtJlgZPmrnYpUwuADqy2	640	640	https://i.scdn.co/image/ab6761610000e5ebcad5695846c962a8198d871f
266csn0Mn42WuJ1j8rGB5k	{}	Ailani Akoni	26	https://api.spotify.com/v1/artists/266csn0Mn42WuJ1j8rGB5k	640	640	https://i.scdn.co/image/ab67616d0000b27377f818ee926e6d6df38d68ea
7vbBAaG8SOVhkoLuRdg5Jn	{}	AKOVIANI	48	https://api.spotify.com/v1/artists/7vbBAaG8SOVhkoLuRdg5Jn	640	640	https://i.scdn.co/image/ab6761610000e5eb8f9d9df8f27934dfbdfad1a1
6eAEj7UncZ4frjFluEyNYn	{}	Akon dereck	16	https://api.spotify.com/v1/artists/6eAEj7UncZ4frjFluEyNYn	640	640	https://i.scdn.co/image/ab67616d0000b273efbc348c98cb214027852212
4LLpKhyESsyAXpc4laK94U	{"hip hop","pittsburgh rap",rap}	Mac Miller	84	https://api.spotify.com/v1/artists/4LLpKhyESsyAXpc4laK94U	640	640	https://i.scdn.co/image/ab6761610000e5ebed3b89aa602145fde71a163a
5Ppie0uPnbnvGBYRwYmlt0	{"contemporary country","modern country pop"}	Megan Moroney	77	https://api.spotify.com/v1/artists/5Ppie0uPnbnvGBYRwYmlt0	640	640	https://i.scdn.co/image/ab6761610000e5ebd0eb86d3ac3beaad7efb77d8
0iEtIxbK0KxaSlF7G42ZOp	{rap}	Metro Boomin	89	https://api.spotify.com/v1/artists/0iEtIxbK0KxaSlF7G42ZOp	640	640	https://i.scdn.co/image/ab6761610000e5ebdf9a1555f53a20087b8c5a5c
2ye2Wgw4gimLv2eAKyk1NB	{"hard rock",metal,"old school thrash",rock,"thrash metal"}	Metallica	84	https://api.spotify.com/v1/artists/2ye2Wgw4gimLv2eAKyk1NB	640	640	https://i.scdn.co/image/ab6761610000e5eb69ca98dd3083f1082d740e44
0SwO7SWeDHJijQ3XNS7xEE	{"alternative rock","indie rock",indietronica,"modern rock",rock}	MGMT	75	https://api.spotify.com/v1/artists/0SwO7SWeDHJijQ3XNS7xEE	640	640	https://i.scdn.co/image/ab6761610000e5eb9dccdc8f4087cbe2bdedc9d3
3Sz7ZnJQBIHsXLUSo0OQtM	{"edmonton indie","lo-fi indie","pov: indie","slacker rock"}	Mac DeMarco	82	https://api.spotify.com/v1/artists/3Sz7ZnJQBIHsXLUSo0OQtM	640	640	https://i.scdn.co/image/ab6761610000e5eb3cef7752073cbbd2cc04c6f0
4NZvixzsSefsNiIqXn0NDe	{"indie pop"}	Maggie Rogers	71	https://api.spotify.com/v1/artists/4NZvixzsSefsNiIqXn0NDe	640	640	https://i.scdn.co/image/ab6761610000e5eb42ac28bac739fd27c568cf4b
04gDigrS5kc9YWfZHwBETP	{pop}	Maroon 5	87	https://api.spotify.com/v1/artists/04gDigrS5kc9YWfZHwBETP	640	640	https://i.scdn.co/image/ab6761610000e5ebf8349dfb619a7f842242de77
2VYQTNDsvvKN9wmU5W7xpj	{"alternative metal","hard rock",industrial,"industrial metal","industrial rock","nu metal",post-grunge,rock}	Marilyn Manson	73	https://api.spotify.com/v1/artists/2VYQTNDsvvKN9wmU5W7xpj	640	640	https://i.scdn.co/image/ab6761610000e5eb9420fc7bac8669f61a9f45c3
64KEffDW9EtZ1y2vBYgq8T	{brostep,edm,pop,"progressive electro house"}	Marshmello	85	https://api.spotify.com/v1/artists/64KEffDW9EtZ1y2vBYgq8T	640	640	https://i.scdn.co/image/ab6761610000e5eb53ca421f91678c26b4f15512
7okwEbXzyT2VffBmyQBWLz	{"latin arena pop","latin pop","latin rock","mexican pop","mexican rock","rock en espanol"}	Maná	80	https://api.spotify.com/v1/artists/7okwEbXzyT2VffBmyQBWLz	640	640	https://i.scdn.co/image/ab6761610000e5eb152dcec8175d19fb12eeb8e0
4pU3BpenOZFEBzORx2YBJW	{"classical tenor",opera,"operatic pop"}	Plácido Domingo	57	https://api.spotify.com/v1/artists/4pU3BpenOZFEBzORx2YBJW	887	1000	https://i.scdn.co/image/cd7bd083928d11461642bf32df6f5bda813785f9
6FBDaR13swtiWwGhX1WQsP	{"alternative metal","modern rock","pop punk",punk,rock,"socal pop punk"}	blink-182	79	https://api.spotify.com/v1/artists/6FBDaR13swtiWwGhX1WQsP	640	640	https://i.scdn.co/image/ab6761610000e5eb5da36f8b98dd965336a1507a
1TA5sGRlKUJXBN4ZyJuDIX	{reggaeton,"urbano latino"}	Blessd	84	https://api.spotify.com/v1/artists/1TA5sGRlKUJXBN4ZyJuDIX	640	640	https://i.scdn.co/image/ab6761610000e5eb1b5902b400971bc07d3473dd
1UTPBmNbXNTittyMJrNkvw	{"classic oklahoma country","contemporary country",country,"country road"}	Blake Shelton	75	https://api.spotify.com/v1/artists/1UTPBmNbXNTittyMJrNkvw	640	640	https://i.scdn.co/image/ab6761610000e5eb1d9cd77aefadad6aaf469636
4qXC0i02bSFstECuXP2ZpL	{"pop rap","westcoast flow"}	Blxst	69	https://api.spotify.com/v1/artists/4qXC0i02bSFstECuXP2ZpL	640	640	https://i.scdn.co/image/ab6761610000e5eb7882cddd99f8586dfb9b11a5
6LEeAFiJF8OuPx747e1wxR	{"alternative r&b","art pop","escape room","indie soul",indietronica,metropopolis}	Blood Orange	70	https://api.spotify.com/v1/artists/6LEeAFiJF8OuPx747e1wxR	640	640	https://i.scdn.co/image/ab6761610000e5ebdf57ac60b6e397648a4f530f
2cFrymmkijnjDg9SS92EPM	{"alt z",pop}	blackbear	75	https://api.spotify.com/v1/artists/2cFrymmkijnjDg9SS92EPM	640	640	https://i.scdn.co/image/ab6761610000e5eb4f7d049994ac00ed885bfbf2
2xvtxDNInKDV4AvGmjw6d1	{"cloud rap",drain,glitchcore,"underground hip hop"}	Bladee	70	https://api.spotify.com/v1/artists/2xvtxDNInKDV4AvGmjw6d1	640	640	https://i.scdn.co/image/ab6761610000e5eb43633ee607e147dfd024a198
4IVAbR2w4JJNJDDRFP3E83	{"atl hip hop","melodic rap",r&b,rap,trap}	6LACK	74	https://api.spotify.com/v1/artists/4IVAbR2w4JJNJDDRFP3E83	640	640	https://i.scdn.co/image/ab6761610000e5ebf8e7a2d1a01fd98e43ee57dc
7mnBLXK823vNxN3UWB7Gfz	{"alternative rock","blues rock","garage rock","indie rock",indietronica,"modern blues rock","modern rock","punk blues",rock}	The Black Keys	73	https://api.spotify.com/v1/artists/7mnBLXK823vNxN3UWB7Gfz	640	640	https://i.scdn.co/image/ab6761610000e5eb12a6369237c73c25794b6ed9
6wMr4zKPrrR0UVz08WtUWc	{"south african house","south african pop dance"}	Black Coffee	66	https://api.spotify.com/v1/artists/6wMr4zKPrrR0UVz08WtUWc	640	640	https://i.scdn.co/image/ab6761610000e5eb980bed716b6784a79aabf00e
5Mhs3Eu8lU6sRCtRYsmABV	{"alternative rock","california hardcore","hardcore punk",punk}	Black Flag	50	https://api.spotify.com/v1/artists/5Mhs3Eu8lU6sRCtRYsmABV	640	640	https://i.scdn.co/image/ab6761610000e5eb64f57c3f54c287c42cadf773
6O7MpKrY91vlCd4Osi6XKs	{"alternative metal","pop punk"}	Black Veil Brides	63	https://api.spotify.com/v1/artists/6O7MpKrY91vlCd4Osi6XKs	640	640	https://i.scdn.co/image/ab6761610000e5eb2f603df69ba8f1a6f1b7b4a9
\.


--
-- Data for Name: track; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.track (track_id, name, track_number, popularity, href, image_height, image_width, image_link, album_id) FROM stdin;
1	Track 1A1	1	80	http://example.com/track1A1	640	480	https://m.media-amazon.com/images/I/81nFF-rXdRL._UF1000,1000_QL80_.jpg	1
2	Track 1A2	2	78	http://example.com/track1A2	640	480	https://www.liluziofficial.com/sites/g/files/g2000016571/files/2021-12/Pluto-x-Baby-Pluto-Cover-Deluxe-PA_0_0.jpg	2
3	Track 1A3	3	85	http://example.com/track1A3	640	480	https://images.squarespace-cdn.com/content/v1/5f6df5bcd8a0286b9df5948b/1616761670933-VAEP4KCO4EU0BZ6VCTN9/204-Kanye-West-Graduation.jpeg	3
4	Track 1A4	4	82	http://example.com/track1A4	640	480	https://upload.wikimedia.org/wikipedia/en/f/f1/808s_%26_Heartbreak.png	4
5	Track 1A5	5	75	http://example.com/track1A5	640	480	https://e-cdns-images.dzcdn.net/images/cover/069a5dba671436da9301aad36fc9a983/500x500-000000-80-0-0.jpg	5
6	Track No Album 1	1	70	http://example.com/trackNoAlbum1	640	480	https://upload.wikimedia.org/wikipedia/en/f/f1/808s_%26_Heartbreak.png	\N
7	Track No Album 2	1	68	http://example.com/trackNoAlbum2	640	480	https://m.media-amazon.com/images/I/81nFF-rXdRL._UF1000,1000_QL80_.jpg	\N
8	Collab Track 1	1	90	http://example.com/collab1	640	480	https://images.squarespace-cdn.com/content/v1/5f6df5bcd8a0286b9df5948b/1616761670933-VAEP4KCO4EU0BZ6VCTN9/204-Kanye-West-Graduation.jpeg	2
9	Collab Track 2	2	88	http://example.com/collab2	640	480	https://www.liluziofficial.com/sites/g/files/g2000016571/files/2021-12/Pluto-x-Baby-Pluto-Cover-Deluxe-PA_0_0.jpg	3
3rUGC1vUpkDG9CZFHMur1t	greedy	1	86	https://api.spotify.com/v1/tracks/3rUGC1vUpkDG9CZFHMur1t	640	640	https://i.scdn.co/image/ab67616d0000b27322fd802bc61db666c7c81aa8	3UOV8XvCwMKaATRNXrYCjN
24XihnoVPWXlKJ4BgXqjVM	It's ok I'm ok	1	84	https://api.spotify.com/v1/tracks/24XihnoVPWXlKJ4BgXqjVM	640	640	https://i.scdn.co/image/ab67616d0000b273cd9a93745f6a7cd54deaab22	5qfivA7g2aAhAIPnSb0csp
1f18HzFpegqvH4ibGJyeMJ	2 hands	1	83	https://api.spotify.com/v1/tracks/1f18HzFpegqvH4ibGJyeMJ	640	640	https://i.scdn.co/image/ab67616d0000b2733b53b3afd0c28613b964769e	2BdJwrx2wMJi7x06wWkUFg
4E63weMCaNZuGPEFMnuEi8	exes	7	83	https://api.spotify.com/v1/tracks/4E63weMCaNZuGPEFMnuEi8	640	640	https://i.scdn.co/image/ab67616d0000b27377eb7a5b9367de79c3b92a49	0OUOx6rJXtL66AzTnP9KUE
4l0RmWt52FxpVxMNni6i63	you broke me first	5	82	https://api.spotify.com/v1/tracks/4l0RmWt52FxpVxMNni6i63	640	640	https://i.scdn.co/image/ab67616d0000b2736c2b76e0d78170d577add561	1BaHo66NCQNx6ku0hPn9bR
51hyZpbJlIgZIaX3TtMxmu	run for the hills	3	80	https://api.spotify.com/v1/tracks/51hyZpbJlIgZIaX3TtMxmu	640	640	https://i.scdn.co/image/ab67616d0000b27377eb7a5b9367de79c3b92a49	0OUOx6rJXtL66AzTnP9KUE
36gcliMRX1vCpgnrZE3dFZ	10:35	3	75	https://api.spotify.com/v1/tracks/36gcliMRX1vCpgnrZE3dFZ	640	640	https://i.scdn.co/image/ab67616d0000b273cf8c47967e5c6bbc7dca5abb	1Pl9ZGXwayXPg5qRVpYo74
7l9IqDtVWJurTvkQHq1BGh	she's all i wanna be	8	78	https://api.spotify.com/v1/tracks/7l9IqDtVWJurTvkQHq1BGh	640	640	https://i.scdn.co/image/ab67616d0000b273f7108342ef45a402af8206b2	5fhTetHew6Eph6HfQ9O5gJ
7l97ElWmIdVHWUaOeeU5ZC	that way	3	77	https://api.spotify.com/v1/tracks/7l97ElWmIdVHWUaOeeU5ZC	640	640	https://i.scdn.co/image/ab67616d0000b273cdfe41cd475f8ad3a29b3537	1fK6nUQDMeIciyfhAADix8
6qmvAJSUfVGMubvI2awW7p	uh oh	1	72	https://api.spotify.com/v1/tracks/6qmvAJSUfVGMubvI2awW7p	640	640	https://i.scdn.co/image/ab67616d0000b2733d0cdc5c7c52338a5a92cec9	0m9hqW0RDEHPNXxhiFUGSq
5aIVCx5tnk0ntmdiinnYvw	Water	1	84	https://api.spotify.com/v1/tracks/5aIVCx5tnk0ntmdiinnYvw	640	640	https://i.scdn.co/image/ab67616d0000b273d20231861e86a6f74ef2393e	22sXXkKgjEuawIFL1e1tRw
1Cbl3Yq8rHo7hhDQmLQagU	PUSH 2 START	2	79	https://api.spotify.com/v1/tracks/1Cbl3Yq8rHo7hhDQmLQagU	640	640	https://i.scdn.co/image/ab67616d0000b27334d2121bebebc1e7d9a0c369	5QsVRNOKVMCeVAIUoOQJ13
6XpEm7VJ7TZxZTawH8BCSW	Jump	9	73	https://api.spotify.com/v1/tracks/6XpEm7VJ7TZxZTawH8BCSW	640	640	https://i.scdn.co/image/ab67616d0000b273af0b5968b8bad3923b2ea76b	3KGVOGmIbinlrR97aFufGE
7axl6v0Yv4ksLVMt6XItpc	Truth or Dare	4	70	https://api.spotify.com/v1/tracks/7axl6v0Yv4ksLVMt6XItpc	640	640	https://i.scdn.co/image/ab67616d0000b273af0b5968b8bad3923b2ea76b	3KGVOGmIbinlrR97aFufGE
40ds3xedbMkWhszkGnZwxi	ART	10	71	https://api.spotify.com/v1/tracks/40ds3xedbMkWhszkGnZwxi	640	640	https://i.scdn.co/image/ab67616d0000b273af0b5968b8bad3923b2ea76b	3KGVOGmIbinlrR97aFufGE
3qSk5TP4A8gQIsb8iNVwnx	One Call	1	66	https://api.spotify.com/v1/tracks/3qSk5TP4A8gQIsb8iNVwnx	640	640	https://i.scdn.co/image/ab67616d0000b2738613cdc715d4fd0af252a715	4jrDs3Kg7zJlgQnIZrZP8a
4Q2IUQo8YuoCqiRrDazKK4	Water	1	66	https://api.spotify.com/v1/tracks/4Q2IUQo8YuoCqiRrDazKK4	640	640	https://i.scdn.co/image/ab67616d0000b2732b35ec31acfe3aa18986f2df	2GyIYK9C2K870xKjo5HI9D
3qeMtqV38UWPZfps7mPTUE	No.1 (feat. Tems)	5	62	https://api.spotify.com/v1/tracks/3qeMtqV38UWPZfps7mPTUE	640	640	https://i.scdn.co/image/ab67616d0000b273af0b5968b8bad3923b2ea76b	3KGVOGmIbinlrR97aFufGE
4Oh1zkPShpImBJOBOKMMAq	BACK to YOU	3	63	https://api.spotify.com/v1/tracks/4Oh1zkPShpImBJOBOKMMAq	640	640	https://i.scdn.co/image/ab67616d0000b27334d2121bebebc1e7d9a0c369	5QsVRNOKVMCeVAIUoOQJ13
4rIVgjxHV6yviwGWxn9TXx	Water - Remix	14	56	https://api.spotify.com/v1/tracks/4rIVgjxHV6yviwGWxn9TXx	640	640	https://i.scdn.co/image/ab67616d0000b273af0b5968b8bad3923b2ea76b	3KGVOGmIbinlrR97aFufGE
1BxfuPKGuaTgP7aM0Bbdwr	Cruel Summer	2	89	https://api.spotify.com/v1/tracks/1BxfuPKGuaTgP7aM0Bbdwr	640	640	https://i.scdn.co/image/ab67616d0000b273e787cffec20aa2a396a61647	1NAmidJlEaVgA3MpcPFYGq
2OzhQlSqBEmt7hmkYxfT6m	Fortnight (feat. Post Malone)	1	84	https://api.spotify.com/v1/tracks/2OzhQlSqBEmt7hmkYxfT6m	640	640	https://i.scdn.co/image/ab67616d0000b2735076e4160d018e378f488c33	1Mo4aZ8pdj6L1jx8zSwJnt
4q5YezDOIPcoLr8R81x9qy	I Can Do It With a Broken Heart	13	82	https://api.spotify.com/v1/tracks/4q5YezDOIPcoLr8R81x9qy	640	640	https://i.scdn.co/image/ab67616d0000b2735076e4160d018e378f488c33	1Mo4aZ8pdj6L1jx8zSwJnt
3hUxzQpSfdDqwM3ZTFQY0K	august	8	83	https://api.spotify.com/v1/tracks/3hUxzQpSfdDqwM3ZTFQY0K	640	640	https://i.scdn.co/image/ab67616d0000b27395f754318336a07e85ec59bc	2fenSS68JI1h4Fo296JfGr
4R2kfaDFhslZEMJqAFNpdd	cardigan	2	83	https://api.spotify.com/v1/tracks/4R2kfaDFhslZEMJqAFNpdd	640	640	https://i.scdn.co/image/ab67616d0000b27395f754318336a07e85ec59bc	2fenSS68JI1h4Fo296JfGr
1dGr1c8CrMLDpV6mPbImSI	Lover	3	84	https://api.spotify.com/v1/tracks/1dGr1c8CrMLDpV6mPbImSI	640	640	https://i.scdn.co/image/ab67616d0000b273e787cffec20aa2a396a61647	1NAmidJlEaVgA3MpcPFYGq
1R0a2iXumgCiFb7HEZ7gUE	Don’t Blame Me	4	82	https://api.spotify.com/v1/tracks/1R0a2iXumgCiFb7HEZ7gUE	640	640	https://i.scdn.co/image/ab67616d0000b273da5d5aeeabacacc1263c0f4b	6DEjYFkNZh67HP7R9PSZvv
0V3wPSX9ygBnCm8psDIegu	Anti-Hero	3	81	https://api.spotify.com/v1/tracks/0V3wPSX9ygBnCm8psDIegu	640	640	https://i.scdn.co/image/ab67616d0000b273bb54dde68cd23e2a268ae0f5	151w1FgRZfnKZA9FEcg9Z3
1p80LdxRV74UKvL8gnD7ky	Blank Space	2	69	https://api.spotify.com/v1/tracks/1p80LdxRV74UKvL8gnD7ky	640	640	https://i.scdn.co/image/ab67616d0000b2739abdf14e6058bd3903686148	2QJmrSgbdM35R67eoGQo4j
0W0iAC1VGlB82PI6elxFYf	Guilty as Sin?	9	77	https://api.spotify.com/v1/tracks/0W0iAC1VGlB82PI6elxFYf	640	640	https://i.scdn.co/image/ab67616d0000b2735076e4160d018e378f488c33	1Mo4aZ8pdj6L1jx8zSwJnt
06BeeZaS4YArThfTMu80QS	Imaginary Friend	2	70	https://api.spotify.com/v1/tracks/06BeeZaS4YArThfTMu80QS	640	640	https://i.scdn.co/image/ab67616d0000b273dd734636e6d28fdc528a839d	4CRfobFgSG0GOzplgTI79s
1dqN2j0jL4qB72CNgCdQ09	GOLD	1	70	https://api.spotify.com/v1/tracks/1dqN2j0jL4qB72CNgCdQ09	640	640	https://i.scdn.co/image/ab67616d0000b273dd734636e6d28fdc528a839d	4CRfobFgSG0GOzplgTI79s
4pspYVQGFHLPEFgQPD1J7e	WANNABE	1	67	https://api.spotify.com/v1/tracks/4pspYVQGFHLPEFgQPD1J7e	640	640	https://i.scdn.co/image/ab67616d0000b273fc620c06721e90a534cc5dab	7ynKAohxfwPUZzvU8f1p1U
56Yxkm62GtEpnPyG7TvwLY	LOCO	1	66	https://api.spotify.com/v1/tracks/56Yxkm62GtEpnPyG7TvwLY	640	640	https://i.scdn.co/image/ab67616d0000b273a0df2d59f0ae9426cba3eb36	4U7rGOkJgtxs27H9L93Xli
2HQALWSN6IF4BYrSADMJ0w	UNTOUCHABLE	2	63	https://api.spotify.com/v1/tracks/2HQALWSN6IF4BYrSADMJ0w	640	640	https://i.scdn.co/image/ab67616d0000b273470d0ba5f707b141d1337cf2	3cm3EkNQLpKu58btSJT7fz
1ehags7lQMM1qX94VJkoaf	Not Shy	1	63	https://api.spotify.com/v1/tracks/1ehags7lQMM1qX94VJkoaf	640	640	https://i.scdn.co/image/ab67616d0000b2732f74587e89fe803fa61d748e	5NN55LKbjzX16a7Uf8u7Os
1V3Zn1TUGzYui1WCVa04ES	VAY (Feat. Changbin of Stray Kids)	6	63	https://api.spotify.com/v1/tracks/1V3Zn1TUGzYui1WCVa04ES	640	640	https://i.scdn.co/image/ab67616d0000b273dd734636e6d28fdc528a839d	4CRfobFgSG0GOzplgTI79s
38rUIlTX93Aoif3WcY1wv6	DALLA DALLA	1	62	https://api.spotify.com/v1/tracks/38rUIlTX93Aoif3WcY1wv6	640	640	https://i.scdn.co/image/ab67616d0000b27389a8fc641c956dc899c0b168	7Mxbav9clZ3AVDKThwwgXS
3syxwxJqX5jpgjNYmvzdW6	CAKE	2	61	https://api.spotify.com/v1/tracks/3syxwxJqX5jpgjNYmvzdW6	640	640	https://i.scdn.co/image/ab67616d0000b2734c2fcea217112b13312f8fb2	6P01cKb7sdwfnNpuMLNEik
1Wcr8zrKqbUX0zwN8Dbr16	In the morning	1	60	https://api.spotify.com/v1/tracks/1Wcr8zrKqbUX0zwN8Dbr16	640	640	https://i.scdn.co/image/ab67616d0000b273131cf6fcb170cda7a7956227	4lS8nhX8cplsYPzKjvhw6G
3coRPMnFg2dJcPu5RMloa9	Whiplash	1	80	https://api.spotify.com/v1/tracks/3coRPMnFg2dJcPu5RMloa9	640	640	https://i.scdn.co/image/ab67616d0000b2736eb604294f8f58c9078f58b1	7J41hCLBI2kEwL6RVSxfNx
5sjnkOfTLCLNfkkchI2re2	UP - KARINA Solo	1	81	https://api.spotify.com/v1/tracks/5sjnkOfTLCLNfkkchI2re2	640	640	https://i.scdn.co/image/ab67616d0000b273253096eda3b7826c11c7fab8	4vLGHlTnlIIxMSfefCY0cU
5lKnZbdGCBViitE1Ce5TZh	Supernova	1	73	https://api.spotify.com/v1/tracks/5lKnZbdGCBViitE1Ce5TZh	640	640	https://i.scdn.co/image/ab67616d0000b273c60843bafc67821cff6df260	4SboBpuYojDm02qS4iFeJC
4b2fMv44GAYpsDSK4ihbsI	Armageddon	2	72	https://api.spotify.com/v1/tracks/4b2fMv44GAYpsDSK4ihbsI	640	640	https://i.scdn.co/image/ab67616d0000b273c60843bafc67821cff6df260	4SboBpuYojDm02qS4iFeJC
5XWlyfo0kZ8LF7VSyfS4Ew	Drama	1	78	https://api.spotify.com/v1/tracks/5XWlyfo0kZ8LF7VSyfS4Ew	640	640	https://i.scdn.co/image/ab67616d0000b273c54e39f2ae0dd10731f93c08	5NMtxQJy4wq3mpo3ERVnLs
3gtlthEgyulDfT8dWdKsnv	Spicy	2	68	https://api.spotify.com/v1/tracks/3gtlthEgyulDfT8dWdKsnv	640	640	https://i.scdn.co/image/ab67616d0000b27324936098cb2874153291a3f9	55N0UTP5992idhnEYOKYd9
6pIuPm3u7QgUFAX1V0D9wY	Dopamine - GISELLE Solo	2	70	https://api.spotify.com/v1/tracks/6pIuPm3u7QgUFAX1V0D9wY	640	640	https://i.scdn.co/image/ab67616d0000b273253096eda3b7826c11c7fab8	4vLGHlTnlIIxMSfefCY0cU
1o844wI52S3TjXGBwvGcc7	Hold On Tight	1	69	https://api.spotify.com/v1/tracks/1o844wI52S3TjXGBwvGcc7	640	640	https://i.scdn.co/image/ab67616d0000b273fe31201bbc019b1636066dc3	4bWGRs1SqNwFXaRDXRAANN
2xoA126GEgFhrYzRaTH7E4	Spark - WINTER Solo	4	69	https://api.spotify.com/v1/tracks/2xoA126GEgFhrYzRaTH7E4	640	640	https://i.scdn.co/image/ab67616d0000b273253096eda3b7826c11c7fab8	4vLGHlTnlIIxMSfefCY0cU
3dbLT62Cvs46Ju7a8gpr36	Savage	2	69	https://api.spotify.com/v1/tracks/3dbLT62Cvs46Ju7a8gpr36	640	640	https://i.scdn.co/image/ab67616d0000b273d8cc2281fcd4519ca020926b	3vyyDkvYWC36DwgZCYd3Wu
51ZQ1vr10ffzbwIjDCwqm4	we can't be friends (wait for your love)	10	86	https://api.spotify.com/v1/tracks/51ZQ1vr10ffzbwIjDCwqm4	640	640	https://i.scdn.co/image/ab67616d0000b2738b58d20f1b77295730db15b4	5EYKrEDnKhhcNxGedaRQeK
0lizgQ7Qw35od7CYaoMBZb	Santa Tell Me	1	87	https://api.spotify.com/v1/tracks/0lizgQ7Qw35od7CYaoMBZb	640	640	https://i.scdn.co/image/ab67616d0000b273a1db745e63940bc06985dea5	27MNgBEnLCKoafz1g2Zu97
0Lmbke3KNVFXtoH2mMSHCw	the boy is mine	8	82	https://api.spotify.com/v1/tracks/0Lmbke3KNVFXtoH2mMSHCw	640	640	https://i.scdn.co/image/ab67616d0000b2738b58d20f1b77295730db15b4	5EYKrEDnKhhcNxGedaRQeK
7xoUc6faLbCqZO6fQEYprd	One Last Time	3	82	https://api.spotify.com/v1/tracks/7xoUc6faLbCqZO6fQEYprd	640	640	https://i.scdn.co/image/ab67616d0000b273deec12a28d1e336c5052e9aa	6EVYTRG1drKdO8OnIQBeEj
6ocbgoVGwYJhOv1GgI9NsF	7 rings	10	82	https://api.spotify.com/v1/tracks/6ocbgoVGwYJhOv1GgI9NsF	640	640	https://i.scdn.co/image/ab67616d0000b27356ac7b86e090f307e218e9c8	2fYhqwDWXjbpjaIJPEfKFw
4gxEY3Mh5FZZDAJAKPNrCS	CRAZY	1	80	https://api.spotify.com/v1/tracks/4gxEY3Mh5FZZDAJAKPNrCS	640	640	https://i.scdn.co/image/ab67616d0000b273d49db78bd7ea1f7229865baa	6kAsgfuulBOuyYLytWX7e2
3lwK3WyKAI5bUuGY1OgGbZ	Smart	1	75	https://api.spotify.com/v1/tracks/3lwK3WyKAI5bUuGY1OgGbZ	640	640	https://i.scdn.co/image/ab67616d0000b273249dc66f0cb95bed7dacc39e	4IqfdL14SOkeFN2c5ASmGh
74X2u8JMVooG2QbjRxXwR8	Perfect Night	1	77	https://api.spotify.com/v1/tracks/74X2u8JMVooG2QbjRxXwR8	640	640	https://i.scdn.co/image/ab67616d0000b2735e352f6eccf8cb96d0b247cc	6Msc3BwzKZ5f5FXmKuUSu6
2O4Bb2WCkjlTPO827OnBMI	EASY	2	75	https://api.spotify.com/v1/tracks/2O4Bb2WCkjlTPO827OnBMI	640	640	https://i.scdn.co/image/ab67616d0000b273110f5426b8c149e80804912a	1YCj4PZi08G20y2ekGKY0C
0bMoNdAnxNR0OuQbGDovrr	ANTIFRAGILE	5	72	https://api.spotify.com/v1/tracks/0bMoNdAnxNR0OuQbGDovrr	640	640	https://i.scdn.co/image/ab67616d0000b273d71fd77b89d08bc1bda219c7	4Oz7K9DRwwGMN49i4NbVDT
7vjfnsnDXZGK4PSq54ISjc	1-800-hot-n-fun	4	75	https://api.spotify.com/v1/tracks/7vjfnsnDXZGK4PSq54ISjc	640	640	https://i.scdn.co/image/ab67616d0000b273485623bc41b6760fc1bca2f4	538vEfAgLJ6g2I8ubuOlap
4K8jDTlNhZWEdnzZVGRMtN	FEARLESS (2023 Ver.)	2	67	https://api.spotify.com/v1/tracks/4K8jDTlNhZWEdnzZVGRMtN	640	640	https://i.scdn.co/image/ab67616d0000b273d71fd77b89d08bc1bda219c7	4Oz7K9DRwwGMN49i4NbVDT
4QhnNyKDsAkXPwHkSnuc89	Eve, Psyche & The Bluebeard’s wife	10	70	https://api.spotify.com/v1/tracks/4QhnNyKDsAkXPwHkSnuc89	640	640	https://i.scdn.co/image/ab67616d0000b273d71fd77b89d08bc1bda219c7	4Oz7K9DRwwGMN49i4NbVDT
51vRumtqbkNW9wrKfESwfu	UNFORGIVEN (feat. Nile Rodgers)	8	70	https://api.spotify.com/v1/tracks/51vRumtqbkNW9wrKfESwfu	640	640	https://i.scdn.co/image/ab67616d0000b273d71fd77b89d08bc1bda219c7	4Oz7K9DRwwGMN49i4NbVDT
6wBpO4Xc4YgShnENGSFA1M	Sour Grapes	5	68	https://api.spotify.com/v1/tracks/6wBpO4Xc4YgShnENGSFA1M	640	640	https://i.scdn.co/image/ab67616d0000b2739030184114911536d5f77555	4Mc7WwYH41hgUWeKX25Sot
5sdQOyqq2IDhvmx2lHOpwd	Super Shy	2	78	https://api.spotify.com/v1/tracks/5sdQOyqq2IDhvmx2lHOpwd	640	640	https://i.scdn.co/image/ab67616d0000b2733d98a0ae7c78a3a9babaf8af	5V729UqvhwNOcMejx0m55I
56v8WEnGzLByGsDAXDiv4d	ETA	3	78	https://api.spotify.com/v1/tracks/56v8WEnGzLByGsDAXDiv4d	640	640	https://i.scdn.co/image/ab67616d0000b2730744690248ef3ba7b776ea7b	4N1fROq2oeyLGAlQ1C1j18
3r8RuvgbX9s7ammBn07D3W	Ditto	1	77	https://api.spotify.com/v1/tracks/3r8RuvgbX9s7ammBn07D3W	640	640	https://i.scdn.co/image/ab67616d0000b273edf5b257be1d6593e81bb45f	7bnqo1fdJU9nSfXQd3bSMe
38tXZcL1gZRfbqfOG0VMTH	How Sweet	1	78	https://api.spotify.com/v1/tracks/38tXZcL1gZRfbqfOG0VMTH	640	640	https://i.scdn.co/image/ab67616d0000b273b657fbb27b17e7bd4691c2b2	0EhZEM4RRz0yioTgucDhJq
65FftemJ1DbbZ45DUfHJXE	OMG	1	77	https://api.spotify.com/v1/tracks/65FftemJ1DbbZ45DUfHJXE	640	640	https://i.scdn.co/image/ab67616d0000b273d70036292d54f29e8b68ec01	45ozep8uHHnj5CCittuyXj
5ocSQW5sIUIOFojwXEz9Ki	Supernatural	1	77	https://api.spotify.com/v1/tracks/5ocSQW5sIUIOFojwXEz9Ki	640	640	https://i.scdn.co/image/ab67616d0000b2737e1eeb0d7cc374a168369c80	1FVw30SoC91lq1UZ6N9rwN
6rdkCkjk6D12xRpdMXy0I2	New Jeans	1	76	https://api.spotify.com/v1/tracks/6rdkCkjk6D12xRpdMXy0I2	640	640	https://i.scdn.co/image/ab67616d0000b2733d98a0ae7c78a3a9babaf8af	5V729UqvhwNOcMejx0m55I
0a4MMyCrzT0En247IhqZbD	Hype Boy	2	76	https://api.spotify.com/v1/tracks/0a4MMyCrzT0En247IhqZbD	640	640	https://i.scdn.co/image/ab67616d0000b2739d28fd01859073a3ae6ea209	1HMLpmZAnNyl9pxvOnTovV
2pIUpMhHL6L9Z5lnKxJJr9	Attention	1	74	https://api.spotify.com/v1/tracks/2pIUpMhHL6L9Z5lnKxJJr9	640	640	https://i.scdn.co/image/ab67616d0000b2739d28fd01859073a3ae6ea209	1HMLpmZAnNyl9pxvOnTovV
210JJAa9nJOgNa0YNrsT5g	GODS	1	73	https://api.spotify.com/v1/tracks/210JJAa9nJOgNa0YNrsT5g	640	640	https://i.scdn.co/image/ab67616d0000b273e4179b3fb74beaf0cdfa7a13	0rAaP1OBxVCn2cIUZNjGRs
0fCwTrRNfoNk962ati8n2K	All Your'n	8	77	https://api.spotify.com/v1/tracks/0fCwTrRNfoNk962ati8n2K	640	640	https://i.scdn.co/image/ab67616d0000b273d41fec800fa501c5bc623083	2T9P5dSm786uuxA5tkI1Xb
2tgQaL85WoRfgEa4hFQgrE	Feathered Indians	2	77	https://api.spotify.com/v1/tracks/2tgQaL85WoRfgEa4hFQgrE	640	640	https://i.scdn.co/image/ab67616d0000b2735a38bd36056b909ed607689d	35LcGAeeMwVeIJrDpB3Gkz
19MkwMrRjO7773zpuGss1o	Shake the Frost (Live)	1	76	https://api.spotify.com/v1/tracks/19MkwMrRjO7773zpuGss1o	640	640	https://i.scdn.co/image/ab67616d0000b2739cbbbdd15ff65aaab9a611b0	7lf0m3iNU59X4r8udCQcB6
4a2uqVlpRChHj32EjJLu7G	Nose On The Grindstone (OurVinyl Sessions)	1	74	https://api.spotify.com/v1/tracks/4a2uqVlpRChHj32EjJLu7G	640	640	https://i.scdn.co/image/ab67616d0000b273ab7a2287bd2c3b20b27e4342	42nsomRaEURVkNt7IF1IFu
3t5OV1asJHmOlf23T08CLv	Lady May	10	73	https://api.spotify.com/v1/tracks/3t5OV1asJHmOlf23T08CLv	640	640	https://i.scdn.co/image/ab67616d0000b2735a38bd36056b909ed607689d	35LcGAeeMwVeIJrDpB3Gkz
4Oz6xl8qhJTdjYZeT98V4m	Follow You To Virgie (OurVinyl Sessions)	3	72	https://api.spotify.com/v1/tracks/4Oz6xl8qhJTdjYZeT98V4m	640	640	https://i.scdn.co/image/ab67616d0000b273ab7a2287bd2c3b20b27e4342	42nsomRaEURVkNt7IF1IFu
3R6yNicsZrWF8ybl02imcB	Charleston Girl (Live)	3	71	https://api.spotify.com/v1/tracks/3R6yNicsZrWF8ybl02imcB	640	640	https://i.scdn.co/image/ab67616d0000b2739cbbbdd15ff65aaab9a611b0	7lf0m3iNU59X4r8udCQcB6
3Fq4shhJdENQhwlLk9qoDx	Coal	4	70	https://api.spotify.com/v1/tracks/3Fq4shhJdENQhwlLk9qoDx	640	640	https://i.scdn.co/image/ab67616d0000b273662482495c5ac20d03a32c9a	4YXp2h3rqa0DWsMHIpZ5u6
0fbR95FEaJUxiQYaqZZukv	Whitehouse Road	5	68	https://api.spotify.com/v1/tracks/0fbR95FEaJUxiQYaqZZukv	640	640	https://i.scdn.co/image/ab67616d0000b2735a38bd36056b909ed607689d	35LcGAeeMwVeIJrDpB3Gkz
1y3CG6thNhG1ndaNW0JuEp	In Your Love	6	65	https://api.spotify.com/v1/tracks/1y3CG6thNhG1ndaNW0JuEp	640	640	https://i.scdn.co/image/ab67616d0000b2737f67b972198a0043fb87076b	7rSObXhKazzmeZFHuGX1mx
5M7tzrnenJIkEti0NX9Qjd	EggShells	4	37	https://api.spotify.com/v1/tracks/5M7tzrnenJIkEti0NX9Qjd	640	640	https://i.scdn.co/image/ab67616d0000b273e7118f0ce3c4c074afaad91c	7Dwi31xQPuVhLPJRLuSJ8O
6RtvMFAOMDuxs8qN0pG5sm	Mr.Wrong	5	31	https://api.spotify.com/v1/tracks/6RtvMFAOMDuxs8qN0pG5sm	640	640	https://i.scdn.co/image/ab67616d0000b273e7118f0ce3c4c074afaad91c	7Dwi31xQPuVhLPJRLuSJ8O
7KqX72T3aYy1skEG0zGT1a	Instead	6	31	https://api.spotify.com/v1/tracks/7KqX72T3aYy1skEG0zGT1a	640	640	https://i.scdn.co/image/ab67616d0000b273e7118f0ce3c4c074afaad91c	7Dwi31xQPuVhLPJRLuSJ8O
6btP4wDeviyma56bB9oY8D	Good Riddance	1	29	https://api.spotify.com/v1/tracks/6btP4wDeviyma56bB9oY8D	640	640	https://i.scdn.co/image/ab67616d0000b273e7118f0ce3c4c074afaad91c	7Dwi31xQPuVhLPJRLuSJ8O
1pVn1Dpw28D8uP8PO79C54	Wait 4 Me	2	29	https://api.spotify.com/v1/tracks/1pVn1Dpw28D8uP8PO79C54	640	640	https://i.scdn.co/image/ab67616d0000b273e7118f0ce3c4c074afaad91c	7Dwi31xQPuVhLPJRLuSJ8O
7AwkYTuUBDQbhh3nTVfV2M	Heartless	8	28	https://api.spotify.com/v1/tracks/7AwkYTuUBDQbhh3nTVfV2M	640	640	https://i.scdn.co/image/ab67616d0000b273e7118f0ce3c4c074afaad91c	7Dwi31xQPuVhLPJRLuSJ8O
3eWJITipdIngr1PHgqS3ck	Care 4 Me	3	27	https://api.spotify.com/v1/tracks/3eWJITipdIngr1PHgqS3ck	640	640	https://i.scdn.co/image/ab67616d0000b273e7118f0ce3c4c074afaad91c	7Dwi31xQPuVhLPJRLuSJ8O
4z3bPPKMmluEFJPOflpC8l	Time Alone	9	28	https://api.spotify.com/v1/tracks/4z3bPPKMmluEFJPOflpC8l	640	640	https://i.scdn.co/image/ab67616d0000b273e7118f0ce3c4c074afaad91c	7Dwi31xQPuVhLPJRLuSJ8O
4NldYMKXXseuMQqbHmxjte	Want From Me	7	26	https://api.spotify.com/v1/tracks/4NldYMKXXseuMQqbHmxjte	640	640	https://i.scdn.co/image/ab67616d0000b273e7118f0ce3c4c074afaad91c	7Dwi31xQPuVhLPJRLuSJ8O
0OhULsSUe8SzOaT08KZO14	#THEATOUGH	1	15	https://api.spotify.com/v1/tracks/0OhULsSUe8SzOaT08KZO14	640	640	https://i.scdn.co/image/ab67616d0000b273a992bddbfcc8dc02cce81308	3vp3nsXcDH1R7XZP0FBZrV
6qn9YLKt13AGvpq9jfO8py	We Found Love	3	81	https://api.spotify.com/v1/tracks/6qn9YLKt13AGvpq9jfO8py	640	640	https://i.scdn.co/image/ab67616d0000b273bef074de9ca825bddaeb9f46	2g1EakEaW7fPTZC6vBmBCn
2ENexcMEMsYk0rVJigVD3i	Only Girl (In The World)	5	82	https://api.spotify.com/v1/tracks/2ENexcMEMsYk0rVJigVD3i	640	640	https://i.scdn.co/image/ab67616d0000b27331548865f7c729290b96c794	5QG3tjE5L9F6O2vCAPph38
5oO3drDxtziYU2H1X23ZIp	Love On The Brain	11	83	https://api.spotify.com/v1/tracks/5oO3drDxtziYU2H1X23ZIp	640	640	https://i.scdn.co/image/ab67616d0000b27333c6b920eabcf4c00d7a1093	4UlGauD7ROb3YbVOFMgW5u
2yPoXCs7BSIUrucMdK5PzV	Umbrella	1	70	https://api.spotify.com/v1/tracks/2yPoXCs7BSIUrucMdK5PzV	640	640	https://i.scdn.co/image/ab67616d0000b273b9ff0a5f40d3406aed5e5e3b	4OXnPSBtZo8PBFiTOfuumP
789CxjEOtO76BVD1A9yJQH	Stay	9	71	https://api.spotify.com/v1/tracks/789CxjEOtO76BVD1A9yJQH	640	640	https://i.scdn.co/image/ab67616d0000b273e24cbbd5cef05ca77ec67df6	0T23GvNaBUGtMKxZko8LQG
7ySUcLPVX7KudhnmNcgY2D	S&M	1	81	https://api.spotify.com/v1/tracks/7ySUcLPVX7KudhnmNcgY2D	640	640	https://i.scdn.co/image/ab67616d0000b27331548865f7c729290b96c794	5QG3tjE5L9F6O2vCAPph38
1Jo0Zg7XlrA6z0mFTZVdkn	Don't Stop The Music	3	69	https://api.spotify.com/v1/tracks/1Jo0Zg7XlrA6z0mFTZVdkn	640	640	https://i.scdn.co/image/ab67616d0000b273b9ff0a5f40d3406aed5e5e3b	4OXnPSBtZo8PBFiTOfuumP
1z9kQ14XBSN0r2v6fx4IdG	Diamonds	2	70	https://api.spotify.com/v1/tracks/1z9kQ14XBSN0r2v6fx4IdG	640	640	https://i.scdn.co/image/ab67616d0000b273e24cbbd5cef05ca77ec67df6	0T23GvNaBUGtMKxZko8LQG
5EcG8eMMlwkHRVa4aTR1qd	Breakin' Dishes	4	68	https://api.spotify.com/v1/tracks/5EcG8eMMlwkHRVa4aTR1qd	640	640	https://i.scdn.co/image/ab67616d0000b273b9ff0a5f40d3406aed5e5e3b	4OXnPSBtZo8PBFiTOfuumP
4pAl7FkDMNBsjykPXo91B3	Needed Me	7	80	https://api.spotify.com/v1/tracks/4pAl7FkDMNBsjykPXo91B3	640	640	https://i.scdn.co/image/ab67616d0000b27333c6b920eabcf4c00d7a1093	4UlGauD7ROb3YbVOFMgW5u
5XeFesFbtLpXzIVDNQP22n	I Wanna Be Yours	12	90	https://api.spotify.com/v1/tracks/5XeFesFbtLpXzIVDNQP22n	640	640	https://i.scdn.co/image/ab67616d0000b2734ae1c4c5c45aabe565499163	78bpIziExqiI9qztvNFlQu
58ge6dfP91o9oXMzq3XkIS	505	12	80	https://api.spotify.com/v1/tracks/58ge6dfP91o9oXMzq3XkIS	640	640	https://i.scdn.co/image/ab67616d0000b2730c8ac83035e9588e8ad34b90	6rsQnwaoJHxXJRCDBPkBRw
086myS9r57YsLbJpU0TgK9	Why'd You Only Call Me When You're High?	9	84	https://api.spotify.com/v1/tracks/086myS9r57YsLbJpU0TgK9	640	640	https://i.scdn.co/image/ab67616d0000b2734ae1c4c5c45aabe565499163	78bpIziExqiI9qztvNFlQu
5TTGoX70AFrTvuEtqHK37S	No. 1 Party Anthem	6	84	https://api.spotify.com/v1/tracks/5TTGoX70AFrTvuEtqHK37S	640	640	https://i.scdn.co/image/ab67616d0000b2734ae1c4c5c45aabe565499163	78bpIziExqiI9qztvNFlQu
5FVd6KXrgO9B3JPmC8OPst	Do I Wanna Know?	1	84	https://api.spotify.com/v1/tracks/5FVd6KXrgO9B3JPmC8OPst	640	640	https://i.scdn.co/image/ab67616d0000b2734ae1c4c5c45aabe565499163	78bpIziExqiI9qztvNFlQu
2AT8iROs4FQueDv2c8q2KE	R U Mine?	2	79	https://api.spotify.com/v1/tracks/2AT8iROs4FQueDv2c8q2KE	640	640	https://i.scdn.co/image/ab67616d0000b2734ae1c4c5c45aabe565499163	78bpIziExqiI9qztvNFlQu
7e8utCy2JlSB8dRHKi49xM	Fluorescent Adolescent	5	69	https://api.spotify.com/v1/tracks/7e8utCy2JlSB8dRHKi49xM	640	640	https://i.scdn.co/image/ab67616d0000b2730c8ac83035e9588e8ad34b90	6rsQnwaoJHxXJRCDBPkBRw
0NdTUS4UiNYCNn5FgVqKQY	Snap Out Of It	10	77	https://api.spotify.com/v1/tracks/0NdTUS4UiNYCNn5FgVqKQY	640	640	https://i.scdn.co/image/ab67616d0000b2734ae1c4c5c45aabe565499163	78bpIziExqiI9qztvNFlQu
7nzsY8vlnKdvGOEE0rjAXZ	Arabella	4	74	https://api.spotify.com/v1/tracks/7nzsY8vlnKdvGOEE0rjAXZ	640	640	https://i.scdn.co/image/ab67616d0000b2734ae1c4c5c45aabe565499163	78bpIziExqiI9qztvNFlQu
2LGdO5MtFdyphi2EihANZG	Knee Socks	11	73	https://api.spotify.com/v1/tracks/2LGdO5MtFdyphi2EihANZG	640	640	https://i.scdn.co/image/ab67616d0000b2734ae1c4c5c45aabe565499163	78bpIziExqiI9qztvNFlQu
2CGNAOSuO1MEFCbBRgUzjd	luther (with sza)	3	77	https://api.spotify.com/v1/tracks/2CGNAOSuO1MEFCbBRgUzjd	640	640	https://i.scdn.co/image/ab67616d0000b27309d6ed214f03fbb663e46531	1Ss0ArMRr91m83mOgRBjSZ
1Qrg8KqiBpW07V7PNxwwwL	Kill Bill	2	86	https://api.spotify.com/v1/tracks/1Qrg8KqiBpW07V7PNxwwwL	640	640	https://i.scdn.co/image/ab67616d0000b2730c471c36970b9406233842a5	1nrVofqDRs7cpWXJ49qTnP
4iZ4pt7kvcaH6Yo8UoZ4s2	Snooze	8	86	https://api.spotify.com/v1/tracks/4iZ4pt7kvcaH6Yo8UoZ4s2	640	640	https://i.scdn.co/image/ab67616d0000b27370dbc9f47669d120ad874ec1	07w0rG5TETcyihsEIZR3qG
3GCdLUSnKSMJhs4Tj6CV3s	All The Stars (with SZA)	2	85	https://api.spotify.com/v1/tracks/3GCdLUSnKSMJhs4Tj6CV3s	640	640	https://i.scdn.co/image/ab67616d0000b273c027ad28821777b00dcaa888	3pLdWdkj83EYfDN6H2N8MR
5Y35SjAfXjjG0sFQ3KOxmm	Nobody Gets Me	14	84	https://api.spotify.com/v1/tracks/5Y35SjAfXjjG0sFQ3KOxmm	640	640	https://i.scdn.co/image/ab67616d0000b27370dbc9f47669d120ad874ec1	07w0rG5TETcyihsEIZR3qG
1bjeWoagtHmUKputLVyDxQ	Saturn	1	85	https://api.spotify.com/v1/tracks/1bjeWoagtHmUKputLVyDxQ	640	640	https://i.scdn.co/image/ab67616d0000b273d70916ee9e40c90380ba5f07	1fmBMCSSkSlvxyoy1vut2k
0wgOhYnqZKjOHr6bmdz0aN	gloria (with sza)	12	83	https://api.spotify.com/v1/tracks/0wgOhYnqZKjOHr6bmdz0aN	640	640	https://i.scdn.co/image/ab67616d0000b273d9985092cd88bffd97653b58	0hvT3yIEysuuvkK73vgdcW
6koKhrBBcExADvWuOgceNZ	Open Arms (feat. Travis Scott)	20	80	https://api.spotify.com/v1/tracks/6koKhrBBcExADvWuOgceNZ	640	640	https://i.scdn.co/image/ab67616d0000b2730c471c36970b9406233842a5	1nrVofqDRs7cpWXJ49qTnP
4PMqSO5qyjpvzhlLI5GnID	Good Days	22	79	https://api.spotify.com/v1/tracks/4PMqSO5qyjpvzhlLI5GnID	640	640	https://i.scdn.co/image/ab67616d0000b27370dbc9f47669d120ad874ec1	07w0rG5TETcyihsEIZR3qG
3DarAbFujv6eYNliUTyqtz	Kiss Me More (feat. SZA)	14	80	https://api.spotify.com/v1/tracks/3DarAbFujv6eYNliUTyqtz	640	640	https://i.scdn.co/image/ab67616d0000b273be841ba4bc24340152e3a79a	1nAQbHeOWTfQzbOoFrvndW
76JKIsdKrAfWUMjaA0u7v5	Too Sweet	1	78	https://api.spotify.com/v1/tracks/76JKIsdKrAfWUMjaA0u7v5	640	640	https://i.scdn.co/image/ab67616d0000b2735aa29751874ca4ba06da8877	0OWvUsVTHFXXnGiGht96K4
1CS7Sd1u5tWkstBhpssyjP	Take Me to Church	1	80	https://api.spotify.com/v1/tracks/1CS7Sd1u5tWkstBhpssyjP	640	640	https://i.scdn.co/image/ab67616d0000b2734ca68d59a4a29c856a4a39c2	4Pv7m8D82A1Xun7xNCKZjJ
5TgEJ62DOzBpGxZ7WRsrqb	Work Song	9	77	https://api.spotify.com/v1/tracks/5TgEJ62DOzBpGxZ7WRsrqb	640	640	https://i.scdn.co/image/ab67616d0000b2734ca68d59a4a29c856a4a39c2	4Pv7m8D82A1Xun7xNCKZjJ
6pBeLF2GZS3NNwV4DBvtg5	Northern Attitude (with Hozier)	26	61	https://api.spotify.com/v1/tracks/6pBeLF2GZS3NNwV4DBvtg5	640	640	https://i.scdn.co/image/ab67616d0000b273ba6fb0a7e6c53fb8faa96226	3qBWNcWifNhUKJAWzswdJY
2DNXgvkyv35vTWvdgjs7qn	Someone New	4	74	https://api.spotify.com/v1/tracks/2DNXgvkyv35vTWvdgjs7qn	640	640	https://i.scdn.co/image/ab67616d0000b2734ca68d59a4a29c856a4a39c2	4Pv7m8D82A1Xun7xNCKZjJ
5Apvsk0suoivI1H8CmBglv	Almost (Sweet Music)	2	74	https://api.spotify.com/v1/tracks/5Apvsk0suoivI1H8CmBglv	640	640	https://i.scdn.co/image/ab67616d0000b2735795e01c151ba5a8ce4bd295	2c7gFThUYyo2t6ogAgIYNw
37zuIvk4KBkAxxLJsxJaHq	Would That I	12	74	https://api.spotify.com/v1/tracks/37zuIvk4KBkAxxLJsxJaHq	640	640	https://i.scdn.co/image/ab67616d0000b2735795e01c151ba5a8ce4bd295	2c7gFThUYyo2t6ogAgIYNw
57V4uc2b2diZ4RPHXWecb9	Like Real People Do	10	72	https://api.spotify.com/v1/tracks/57V4uc2b2diZ4RPHXWecb9	640	640	https://i.scdn.co/image/ab67616d0000b2734ca68d59a4a29c856a4a39c2	4Pv7m8D82A1Xun7xNCKZjJ
5aRZk9oWIYUB5alrTs8TTV	From Eden	6	70	https://api.spotify.com/v1/tracks/5aRZk9oWIYUB5alrTs8TTV	640	640	https://i.scdn.co/image/ab67616d0000b2734ca68d59a4a29c856a4a39c2	4Pv7m8D82A1Xun7xNCKZjJ
1C042FLYy7rP3MfnkOcnha	Cherry Wine - Live	13	68	https://api.spotify.com/v1/tracks/1C042FLYy7rP3MfnkOcnha	640	640	https://i.scdn.co/image/ab67616d0000b2734ca68d59a4a29c856a4a39c2	4Pv7m8D82A1Xun7xNCKZjJ
5G2f63n7IPVPPjfNIGih7Q	Taste	1	93	https://api.spotify.com/v1/tracks/5G2f63n7IPVPPjfNIGih7Q	640	640	https://i.scdn.co/image/ab67616d0000b273fd8d7a8d96871e791cb1f626	3iPSVi54hsacKKl1xIR2eH
2HRqTpkrJO5ggZyyK6NPWz	Espresso	7	88	https://api.spotify.com/v1/tracks/2HRqTpkrJO5ggZyyK6NPWz	640	640	https://i.scdn.co/image/ab67616d0000b273fd8d7a8d96871e791cb1f626	3iPSVi54hsacKKl1xIR2eH
2tHwzyyOLoWSFqYNjeVMzj	Please Please Please	2	87	https://api.spotify.com/v1/tracks/2tHwzyyOLoWSFqYNjeVMzj	640	640	https://i.scdn.co/image/ab67616d0000b273fd8d7a8d96871e791cb1f626	3iPSVi54hsacKKl1xIR2eH
1UHS8Rf6h5Ar3CDWRd3wjF	Bed Chem	6	90	https://api.spotify.com/v1/tracks/1UHS8Rf6h5Ar3CDWRd3wjF	640	640	https://i.scdn.co/image/ab67616d0000b273fd8d7a8d96871e791cb1f626	3iPSVi54hsacKKl1xIR2eH
21B4gaTWnTkuSh77iWEXdS	Juno	10	88	https://api.spotify.com/v1/tracks/21B4gaTWnTkuSh77iWEXdS	640	640	https://i.scdn.co/image/ab67616d0000b273fd8d7a8d96871e791cb1f626	3iPSVi54hsacKKl1xIR2eH
6dgUya35uo964z7GZXM07g	Nonsense	9	86	https://api.spotify.com/v1/tracks/6dgUya35uo964z7GZXM07g	640	640	https://i.scdn.co/image/ab67616d0000b273700f7bf79c9f063ad0362bdf	5kDmlA2g9Y1YCbNo2Ufxlz
102YUQbYmwdBXS7jwamI90	Good Graces	3	85	https://api.spotify.com/v1/tracks/102YUQbYmwdBXS7jwamI90	640	640	https://i.scdn.co/image/ab67616d0000b273fd8d7a8d96871e791cb1f626	3iPSVi54hsacKKl1xIR2eH
2Zo1PcszsT9WQ0ANntJbID	Feather	15	84	https://api.spotify.com/v1/tracks/2Zo1PcszsT9WQ0ANntJbID	640	640	https://i.scdn.co/image/ab67616d0000b2730f45623be014a592a5815827	2g4aJTa5ejGpp0O0GKzWAQ
5oIVNm56t6OIf9ZjdEG3ud	Coincidence	5	82	https://api.spotify.com/v1/tracks/5oIVNm56t6OIf9ZjdEG3ud	640	640	https://i.scdn.co/image/ab67616d0000b273fd8d7a8d96871e791cb1f626	3iPSVi54hsacKKl1xIR2eH
3iPIDAFybaoyqX7hvAfWkl	Sharpest Tool	4	80	https://api.spotify.com/v1/tracks/3iPIDAFybaoyqX7hvAfWkl	640	640	https://i.scdn.co/image/ab67616d0000b273fd8d7a8d96871e791cb1f626	3iPSVi54hsacKKl1xIR2eH
0nj9Bq5sHDiTxSHunhgkFb	squabble up	2	89	https://api.spotify.com/v1/tracks/0nj9Bq5sHDiTxSHunhgkFb	640	640	https://i.scdn.co/image/ab67616d0000b273d9985092cd88bffd97653b58	0hvT3yIEysuuvkK73vgdcW
0aB0v4027ukVziUGwVGYpG	tv off (feat. lefty gunplay)	7	89	https://api.spotify.com/v1/tracks/0aB0v4027ukVziUGwVGYpG	640	640	https://i.scdn.co/image/ab67616d0000b273d9985092cd88bffd97653b58	0hvT3yIEysuuvkK73vgdcW
6AI3ezQ4o3HUoP6Dhudph3	Not Like Us	1	88	https://api.spotify.com/v1/tracks/6AI3ezQ4o3HUoP6Dhudph3	640	640	https://i.scdn.co/image/ab67616d0000b2731ea0c62b2339cbf493a999ad	5JjnoGJyOxfSZUZtk2rRwZ
5gOfC9UzZQzTyShqPMrpjT	wacced out murals	1	87	https://api.spotify.com/v1/tracks/5gOfC9UzZQzTyShqPMrpjT	640	640	https://i.scdn.co/image/ab67616d0000b273d9985092cd88bffd97653b58	0hvT3yIEysuuvkK73vgdcW
5S8VwnB4sLi6W0lYTWYylu	hey now (feat. dody6)	5	86	https://api.spotify.com/v1/tracks/5S8VwnB4sLi6W0lYTWYylu	640	640	https://i.scdn.co/image/ab67616d0000b273d9985092cd88bffd97653b58	0hvT3yIEysuuvkK73vgdcW
0RgjEkSbeuStKfT2Pa4Zai	reincarnated	6	86	https://api.spotify.com/v1/tracks/0RgjEkSbeuStKfT2Pa4Zai	640	640	https://i.scdn.co/image/ab67616d0000b273d9985092cd88bffd97653b58	0hvT3yIEysuuvkK73vgdcW
5ho7VSXSmI2KM2nDjcnLyz	man at the garden	4	85	https://api.spotify.com/v1/tracks/5ho7VSXSmI2KM2nDjcnLyz	640	640	https://i.scdn.co/image/ab67616d0000b273d9985092cd88bffd97653b58	0hvT3yIEysuuvkK73vgdcW
1zi7xx7UVEFkmKfv06H8x0	One Dance	12	85	https://api.spotify.com/v1/tracks/1zi7xx7UVEFkmKfv06H8x0	640	640	https://i.scdn.co/image/ab67616d0000b2739416ed64daf84936d89e671c	40GMAhriYJRO1rsY4YdrZb
59nOXPmaKlBfGMDeOVGrIK	WAIT FOR U (feat. Drake & Tems)	7	82	https://api.spotify.com/v1/tracks/59nOXPmaKlBfGMDeOVGrIK	640	640	https://i.scdn.co/image/ab67616d0000b27386badd635b69aea887862214	6tE9Dnp2zInFij4jKssysL
6DCZcSspjsKoFjzjrWoCdn	God's Plan	5	81	https://api.spotify.com/v1/tracks/6DCZcSspjsKoFjzjrWoCdn	640	640	https://i.scdn.co/image/ab67616d0000b273f907de96b9a4fbc04accc0d5	1ATL5GLyefJaxhQzSPVrLX
5mCPDVBb16L4XQwDdbRUpz	Passionfruit	3	80	https://api.spotify.com/v1/tracks/5mCPDVBb16L4XQwDdbRUpz	640	640	https://i.scdn.co/image/ab67616d0000b2734f0fd9dad63977146e685700	1lXY618HWkwYKJWBRYR4MK
3F5CgOj3wFlRv51JsHbxhe	Jimmy Cooks (feat. 21 Savage)	14	79	https://api.spotify.com/v1/tracks/3F5CgOj3wFlRv51JsHbxhe	640	640	https://i.scdn.co/image/ab67616d0000b2738dc0d801766a5aa6a33cbe37	3cf4iSSKd8ffTncbtKljXw
1eroCliWpJrEu1V7VSObcO	Circadian Rhythm	1	79	https://api.spotify.com/v1/tracks/1eroCliWpJrEu1V7VSObcO	640	640	https://i.scdn.co/image/ab67616d0000b273e955f0f0a0471ace604ecdf6	5oT8PMXGWiPlhcl930fkII
1yeB8MUNeLo9Ek1UEpsyz6	Rich Baby Daddy (feat. Sexyy Red & SZA)	20	78	https://api.spotify.com/v1/tracks/1yeB8MUNeLo9Ek1UEpsyz6	640	640	https://i.scdn.co/image/ab67616d0000b2737d384516b23347e92a587ed1	4czdORdCWP9umpbhFXK2fW
40iJIUlhi6renaREYGeIDS	Fair Trade (with Travis Scott)	6	78	https://api.spotify.com/v1/tracks/40iJIUlhi6renaREYGeIDS	640	640	https://i.scdn.co/image/ab67616d0000b273cd945b4e3de57edd28481a3f	3SpBlxme9WbeQdI9kx7KAV
6n3HGiq4v35D6eFOSwqYuo	Teenage Fever	14	77	https://api.spotify.com/v1/tracks/6n3HGiq4v35D6eFOSwqYuo	640	640	https://i.scdn.co/image/ab67616d0000b2734f0fd9dad63977146e685700	1lXY618HWkwYKJWBRYR4MK
1560osUcXrnov6yuOjXvc1	No Face	1	77	https://api.spotify.com/v1/tracks/1560osUcXrnov6yuOjXvc1	640	640	https://i.scdn.co/image/ab67616d0000b273cf05fc616cf7e38c0e52b888	78NIQe42qKXahAeZAb3w0h
3zhbXKFjUDw40pTYyCgt1Y	What is Love?	4	71	https://api.spotify.com/v1/tracks/3zhbXKFjUDw40pTYyCgt1Y	640	640	https://i.scdn.co/image/ab67616d0000b27340d7efd2594a2b6bda60ea18	2GKTroaa4ysyhEdvzpvUoM
308Ir17KlNdlrbVLHWhlLe	The Feels	15	68	https://api.spotify.com/v1/tracks/308Ir17KlNdlrbVLHWhlLe	640	640	https://i.scdn.co/image/ab67616d0000b273d1961ecb307c9e05ec8f7e82	5052Ip89wdW8EGdpjEpNeq
2qQpFbqqkLOGySgNK8wBXt	FANCY	1	70	https://api.spotify.com/v1/tracks/2qQpFbqqkLOGySgNK8wBXt	640	640	https://i.scdn.co/image/ab67616d0000b273ff7c2dfd0ed9b2cf6bf9c818	3aLpWFejbsdyafODLXRqwF
0DanydI1wKqKkKjn0qKoVR	Mamushi (Remix) [feat. TWICE]	7	68	https://api.spotify.com/v1/tracks/0DanydI1wKqKkKjn0qKoVR	640	640	https://i.scdn.co/image/ab67616d0000b2734e3330398bd99c2fc3b21ffe	7KYpVsgw7yqbfmGBp9gYiR
37ZtpRBkHcaq6hHy0X98zn	I CAN'T STOP ME	1	68	https://api.spotify.com/v1/tracks/37ZtpRBkHcaq6hHy0X98zn	640	640	https://i.scdn.co/image/ab67616d0000b2736570fd05bcff5edcb16e617d	33jypnU7WULxPaVrjj4RXH
3Hz3tTQwOdM6XkA0ALB2G9	Feel Special	1	66	https://api.spotify.com/v1/tracks/3Hz3tTQwOdM6XkA0ALB2G9	640	640	https://i.scdn.co/image/ab67616d0000b273a6b5e9128d7029ebb48bcf2b	3NQBPabmRm3LzVcmtkTLfo
0RDqNCRBGrSegk16Avfzuq	Talk that Talk	1	66	https://api.spotify.com/v1/tracks/0RDqNCRBGrSegk16Avfzuq	640	640	https://i.scdn.co/image/ab67616d0000b273c3040848e6ef0e132c5c8340	3NZ94nQbqimcu2i71qhc4f
7cIn67LEvk16v6komC8znS	ONE SPARK	2	65	https://api.spotify.com/v1/tracks/7cIn67LEvk16v6komC8znS	640	640	https://i.scdn.co/image/ab67616d0000b273bd8c739ce7e59ae9414c7a26	575TQDOQqc0MAheeEeKWUR
26OVhEqFDQH0Ij77QtmGP9	YES or YES	1	64	https://api.spotify.com/v1/tracks/26OVhEqFDQH0Ij77QtmGP9	640	640	https://i.scdn.co/image/ab67616d0000b273140ba24506e300382e08e6ec	25VunQEW0x2W6ALND2Mh4g
5IN9W6eUfk3014My9awagX	MOONLIGHT SUNRISE	2	61	https://api.spotify.com/v1/tracks/5IN9W6eUfk3014My9awagX	640	640	https://i.scdn.co/image/ab67616d0000b27359f57a5ca507a3d3fed81ea6	7hzP5i7StxYG4StECA0rrJ
2KtGiBi5CrX2ERPD2PAS34	Dancin’ In The Country	1	70	https://api.spotify.com/v1/tracks/2KtGiBi5CrX2ERPD2PAS34	640	640	https://i.scdn.co/image/ab67616d0000b27387d9c990b193c3ed11676eb1	2S3Q7phoa4bZEijkTRYaLu
0U4iRayct65wsaBMQGiLbg	5 Foot 9	2	67	https://api.spotify.com/v1/tracks/0U4iRayct65wsaBMQGiLbg	640	640	https://i.scdn.co/image/ab67616d0000b27387d9c990b193c3ed11676eb1	2S3Q7phoa4bZEijkTRYaLu
119cU5gffLzRlsEGSshPNQ	Park	2	64	https://api.spotify.com/v1/tracks/119cU5gffLzRlsEGSshPNQ	640	640	https://i.scdn.co/image/ab67616d0000b273c13bcb96beefcc15d3da934a	2HLqoccnVNqOfm7gpN1Svo
5KtUilYzUZOvhyrLTlLoXT	Back Then Right Now	6	55	https://api.spotify.com/v1/tracks/5KtUilYzUZOvhyrLTlLoXT	640	640	https://i.scdn.co/image/ab67616d0000b273c13bcb96beefcc15d3da934a	2HLqoccnVNqOfm7gpN1Svo
24MH7MzHl5XAYlmMdn85CF	Country Boy Do (feat. Tyler Hubbard)	5	53	https://api.spotify.com/v1/tracks/24MH7MzHl5XAYlmMdn85CF	640	640	https://i.scdn.co/image/ab67616d0000b2739d2e62a1bd2f06b5618a101a	1a7BlXLCqjTxQh6X8L9JBL
2ui7Km7H0UBxGZ3DAsyG3N	Me For Me	5	49	https://api.spotify.com/v1/tracks/2ui7Km7H0UBxGZ3DAsyG3N	640	640	https://i.scdn.co/image/ab67616d0000b27387d9c990b193c3ed11676eb1	2S3Q7phoa4bZEijkTRYaLu
4UdvVA89evbBrj6hnDa5oM	Wish You Would	1	48	https://api.spotify.com/v1/tracks/4UdvVA89evbBrj6hnDa5oM	640	640	https://i.scdn.co/image/ab67616d0000b273c13bcb96beefcc15d3da934a	2HLqoccnVNqOfm7gpN1Svo
3ZtpF25rlCwrLWLI12OCd5	Heroes	1	50	https://api.spotify.com/v1/tracks/3ZtpF25rlCwrLWLI12OCd5	640	640	https://i.scdn.co/image/ab67616d0000b273cac8af586461f3776184888f	2XcBhNn09YlqGjxUhQyVkj
3qppdX325WO677KrczGZrv	My Way (feat Tyler Hubbard)	1	49	https://api.spotify.com/v1/tracks/3qppdX325WO677KrczGZrv	640	640	https://i.scdn.co/image/ab67616d0000b273965bf46b3b9a5933ea84467a	42rGSwtLPemPlWDWNWLKym
7ighoI7pr7eE4r0gyXZwX7	Undivided	17	42	https://api.spotify.com/v1/tracks/7ighoI7pr7eE4r0gyXZwX7	640	640	https://i.scdn.co/image/ab67616d0000b273adf1d0bd7b0fae58e6dd24d0	5kNJYMb1mTyoqKx1tBTt53
46IZ0fSY2mpAiktS3KOqds	Easy On Me	2	82	https://api.spotify.com/v1/tracks/46IZ0fSY2mpAiktS3KOqds	640	640	https://i.scdn.co/image/ab67616d0000b273c6b577e4c4a6d326354a89f7	21jF5jlMtzo94wbxmJ18aa
73CMRj62VK8nUS4ezD2wvi	Set Fire to the Rain	5	77	https://api.spotify.com/v1/tracks/73CMRj62VK8nUS4ezD2wvi	640	640	https://i.scdn.co/image/ab67616d0000b2732118bf9b198b05a95ded6300	0Lg1uZvI312TPqxNWShFXL
1zwMYTA5nlNjZxYrvBB2pV	Someone Like You	11	77	https://api.spotify.com/v1/tracks/1zwMYTA5nlNjZxYrvBB2pV	640	640	https://i.scdn.co/image/ab67616d0000b2732118bf9b198b05a95ded6300	0Lg1uZvI312TPqxNWShFXL
6VObnIkLVruX4UVyxWhlqm	Skyfall	1	84	https://api.spotify.com/v1/tracks/6VObnIkLVruX4UVyxWhlqm	640	640	https://i.scdn.co/image/ab67616d0000b2732737be35cc5245eef495be90	6TwN6Lq9glwnG8kNp6chHY
1c8gk2PeTE04A1pIDH9YMk	Rolling in the Deep	1	77	https://api.spotify.com/v1/tracks/1c8gk2PeTE04A1pIDH9YMk	640	640	https://i.scdn.co/image/ab67616d0000b2732118bf9b198b05a95ded6300	0Lg1uZvI312TPqxNWShFXL
7B5Npv8NjjTCzk8PLpU66h	Love In The Dark	8	72	https://api.spotify.com/v1/tracks/7B5Npv8NjjTCzk8PLpU66h	640	640	https://i.scdn.co/image/ab67616d0000b27347ce408fb4926d69da6713c2	3AvPX1B1HiFROvYjLb5Qwi
7GgWAITsYJaRM3r50rfh5w	When We Were Young	4	71	https://api.spotify.com/v1/tracks/7GgWAITsYJaRM3r50rfh5w	640	640	https://i.scdn.co/image/ab67616d0000b27347ce408fb4926d69da6713c2	3AvPX1B1HiFROvYjLb5Qwi
5FgPwJ7Nh2FVmIXviKl2VF	Make You Feel My Love	9	70	https://api.spotify.com/v1/tracks/5FgPwJ7Nh2FVmIXviKl2VF	640	640	https://i.scdn.co/image/ab67616d0000b273da737a3e194e3b9a46c1a6a3	59ULskOkBMij4zL8pS7mi0
62PaSfnXSMyLshYJrlTuL3	Hello	1	71	https://api.spotify.com/v1/tracks/62PaSfnXSMyLshYJrlTuL3	640	640	https://i.scdn.co/image/ab67616d0000b27347ce408fb4926d69da6713c2	3AvPX1B1HiFROvYjLb5Qwi
56pHllZT7QOacB0bP56ofx	Chasing Pavements	3	68	https://api.spotify.com/v1/tracks/56pHllZT7QOacB0bP56ofx	640	640	https://i.scdn.co/image/ab67616d0000b273da737a3e194e3b9a46c1a6a3	59ULskOkBMij4zL8pS7mi0
4VXIryQMWpIdGgYR4TrjT1	All Girls Are The Same	2	85	https://api.spotify.com/v1/tracks/4VXIryQMWpIdGgYR4TrjT1	640	640	https://i.scdn.co/image/ab67616d0000b273f7db43292a6a99b21b51d5b4	6tkjU4Umpo79wwkgPMV3nZ
285pBltuF7vW8TeWk8hdRR	Lucid Dreams	3	85	https://api.spotify.com/v1/tracks/285pBltuF7vW8TeWk8hdRR	640	640	https://i.scdn.co/image/ab67616d0000b273f7db43292a6a99b21b51d5b4	6tkjU4Umpo79wwkgPMV3nZ
6iaSML1PIYq936g62BDtBq	Robbery	8	80	https://api.spotify.com/v1/tracks/6iaSML1PIYq936g62BDtBq	640	640	https://i.scdn.co/image/ab67616d0000b2738b27d35aa2c6dcf99895d664	1btu0SV2DOI5HoFsvUd78F
3oDkdAySo1VQQG0ptV7uwa	Lean Wit Me	7	79	https://api.spotify.com/v1/tracks/3oDkdAySo1VQQG0ptV7uwa	640	640	https://i.scdn.co/image/ab67616d0000b273f7db43292a6a99b21b51d5b4	6tkjU4Umpo79wwkgPMV3nZ
3wwo0bJvDSorOpNfzEkfXx	Let Me Know (I Wonder Why Freestyle)	1	79	https://api.spotify.com/v1/tracks/3wwo0bJvDSorOpNfzEkfXx	640	640	https://i.scdn.co/image/ab67616d0000b273401ea2c7ac7ef87bd32c990f	5wi0oKiF99ZVACf6oTTsp2
2U5WueTLIK5WJLD7mvDODv	Wishing Well	15	79	https://api.spotify.com/v1/tracks/2U5WueTLIK5WJLD7mvDODv	640	640	https://i.scdn.co/image/ab67616d0000b2733e0698e4ae5ffb82a005aeeb	6n9DKpOxwifT5hOXtgLZSL
5wujBwqG7INdStqGd4tRMX	Armed And Dangerous	5	78	https://api.spotify.com/v1/tracks/5wujBwqG7INdStqGd4tRMX	640	640	https://i.scdn.co/image/ab67616d0000b273f7db43292a6a99b21b51d5b4	6tkjU4Umpo79wwkgPMV3nZ
3Fq192aYDVyTn0DmwdofZm	AGATS2 (Insecure) [with Nicki Minaj]	3	69	https://api.spotify.com/v1/tracks/3Fq192aYDVyTn0DmwdofZm	640	640	https://i.scdn.co/image/ab67616d0000b27395c9ed79b39281af89504f9e	7lpVrkFA2XivBC5cis1dil
15og0pCEcTFWEXOFKdcJlU	Hate Me	5	75	https://api.spotify.com/v1/tracks/15og0pCEcTFWEXOFKdcJlU	640	640	https://i.scdn.co/image/ab67616d0000b273156d79bdb60fc5f7af75590b	44va7sFuK8IGzrj0BIX8kK
1a7WZZZH7LzyvorhpOJFTe	Wasted (feat. Lil Uzi Vert)	4	77	https://api.spotify.com/v1/tracks/1a7WZZZH7LzyvorhpOJFTe	640	640	https://i.scdn.co/image/ab67616d0000b273f7db43292a6a99b21b51d5b4	6tkjU4Umpo79wwkgPMV3nZ
1Es7AUAhQvapIcoh3qMKDL	Timeless (with Playboi Carti)	1	92	https://api.spotify.com/v1/tracks/1Es7AUAhQvapIcoh3qMKDL	640	640	https://i.scdn.co/image/ab67616d0000b27394f662ef3b5677376d8a78d4	2IRxVVqbSbqHJo8Zx50LYn
7KA4W4McWYRpgf0fWsJZWB	See You Again (feat. Kali Uchis)	4	90	https://api.spotify.com/v1/tracks/7KA4W4McWYRpgf0fWsJZWB	640	640	https://i.scdn.co/image/ab67616d0000b2738940ac99f49e44f59e6f7fb3	2nkto6YNI4rUYTLqEwWJ3o
1QoyuMHNBe7lg3YW4Qtll4	St. Chroma (feat. Daniel Caesar)	1	89	https://api.spotify.com/v1/tracks/1QoyuMHNBe7lg3YW4Qtll4	640	640	https://i.scdn.co/image/ab67616d0000b273124e9249fada4ff3c3a0739c	0U28P0QVB1QRxpqp5IHOlH
3tFed7YsjGnIfxeLEQwx3R	Sticky (feat. GloRilla, Sexyy Red & Lil Wayne)	8	89	https://api.spotify.com/v1/tracks/3tFed7YsjGnIfxeLEQwx3R	640	640	https://i.scdn.co/image/ab67616d0000b273124e9249fada4ff3c3a0739c	0U28P0QVB1QRxpqp5IHOlH
6jbYpRPTEFl1HFKHk1IC0m	Like Him (feat. Lola Young)	12	88	https://api.spotify.com/v1/tracks/6jbYpRPTEFl1HFKHk1IC0m	640	640	https://i.scdn.co/image/ab67616d0000b273124e9249fada4ff3c3a0739c	0U28P0QVB1QRxpqp5IHOlH
0VaeksJaXy5R1nvcTMh3Xk	Darling, I (feat. Teezo Touchdown)	4	87	https://api.spotify.com/v1/tracks/0VaeksJaXy5R1nvcTMh3Xk	640	640	https://i.scdn.co/image/ab67616d0000b273124e9249fada4ff3c3a0739c	0U28P0QVB1QRxpqp5IHOlH
5RePVWy39tLpHH0WwXgBsK	Rah Tah Tah	2	86	https://api.spotify.com/v1/tracks/5RePVWy39tLpHH0WwXgBsK	640	640	https://i.scdn.co/image/ab67616d0000b273124e9249fada4ff3c3a0739c	0U28P0QVB1QRxpqp5IHOlH
1YdtGoSYDvVQKoUqSDXX41	Noid	3	83	https://api.spotify.com/v1/tracks/1YdtGoSYDvVQKoUqSDXX41	640	640	https://i.scdn.co/image/ab67616d0000b273124e9249fada4ff3c3a0739c	0U28P0QVB1QRxpqp5IHOlH
2aYHxnMF2umAavtgBvmkY1	Thought I Was Dead (feat. ScHoolboy Q & Santigold)	11	84	https://api.spotify.com/v1/tracks/2aYHxnMF2umAavtgBvmkY1	640	640	https://i.scdn.co/image/ab67616d0000b273124e9249fada4ff3c3a0739c	0U28P0QVB1QRxpqp5IHOlH
35D1RA5uVFVhMc1qX80TaQ	Balloon (feat. Doechii)	13	82	https://api.spotify.com/v1/tracks/35D1RA5uVFVhMc1qX80TaQ	640	640	https://i.scdn.co/image/ab67616d0000b273124e9249fada4ff3c3a0739c	0U28P0QVB1QRxpqp5IHOlH
5Iq6PtpGJuebUN5gv5tvig	Cobra	6	43	https://api.spotify.com/v1/tracks/5Iq6PtpGJuebUN5gv5tvig	640	640	https://i.scdn.co/image/ab67616d0000b273753e0a96df3a7e556dd96402	0Ay8XK7BBLgR7zK7oDbRgR
5R6Q2E0wC10LDfrLLcKtwD	Rain	5	42	https://api.spotify.com/v1/tracks/5R6Q2E0wC10LDfrLLcKtwD	640	640	https://i.scdn.co/image/ab67616d0000b273ea9a5afa22d98c389bf7c4ec	5ED0GoysTq0UklFRc3HQYa
6fcL88TZ5Feq7Rlj2O6sgC	Cabaret	9	41	https://api.spotify.com/v1/tracks/6fcL88TZ5Feq7Rlj2O6sgC	640	640	https://i.scdn.co/image/ab67616d0000b273118ae7915b42ec083a382e7b	5hh3C1xDLpwnOT8V1GFRkI
3E09FskNEcBwWSnFce7yfw	High	6	39	https://api.spotify.com/v1/tracks/3E09FskNEcBwWSnFce7yfw	640	640	https://i.scdn.co/image/ab67616d0000b27326594e5a31a078cedd6b0d48	4QjMFxRwxRo5sjufctciQ6
2AlQ9Y9lBRefAw7as1ESSE	Street Lament	1	39	https://api.spotify.com/v1/tracks/2AlQ9Y9lBRefAw7as1ESSE	640	640	https://i.scdn.co/image/ab67616d0000b273036740038ec2f9e77ee27103	1aC4MDdz8opixrJpJSPSOI
1ZZ7uKV0hrObw31mVLACmo	Cruel Intentions	7	38	https://api.spotify.com/v1/tracks/1ZZ7uKV0hrObw31mVLACmo	640	640	https://i.scdn.co/image/ab67616d0000b273ea9a5afa22d98c389bf7c4ec	5ED0GoysTq0UklFRc3HQYa
4MO87XkFlT0lStoqTiA4Ro	Smoking with the Gods	5	36	https://api.spotify.com/v1/tracks/4MO87XkFlT0lStoqTiA4Ro	640	640	https://i.scdn.co/image/ab67616d0000b273c7e8863b366db8abfa05507f	1nirVIQiTKsN2NH253WDxm
6OiuR69RVzW7jjzculyZss	Hate To Say It (feat. Freddie Gibbs)	5	28	https://api.spotify.com/v1/tracks/6OiuR69RVzW7jjzculyZss	640	640	https://i.scdn.co/image/ab67616d0000b273b4f3bb09ad5d54cc06060aee	1aCuchEGLRLOtOe1fbm6j2
43iIQbw5hx986dUEZbr3eN	From The Start	10	81	https://api.spotify.com/v1/tracks/43iIQbw5hx986dUEZbr3eN	640	640	https://i.scdn.co/image/ab67616d0000b27374c732f8aa0e0ccbb3d17d96	1rpCHilZQkw84A3Y9czvMO
1LmkdWSxjCV7wKTPsCvYWN	Winter Wonderland - Spotify Singles Holiday	1	80	https://api.spotify.com/v1/tracks/1LmkdWSxjCV7wKTPsCvYWN	640	640	https://i.scdn.co/image/ab67616d0000b273d16831527ee5c1edd9327b78	1Ph9nV8cNv7Gq7yHOlmbgh
4KGGeE7RJsgLNZmnxGFlOj	Falling Behind	10	79	https://api.spotify.com/v1/tracks/4KGGeE7RJsgLNZmnxGFlOj	640	640	https://i.scdn.co/image/ab67616d0000b27348341e864d4b4881f56f01b4	0Ydm84ftyiWRGOIFkdl30L
08PdFBcXzpkn1cWNgmKqhn	Promise	9	76	https://api.spotify.com/v1/tracks/08PdFBcXzpkn1cWNgmKqhn	640	640	https://i.scdn.co/image/ab67616d0000b27374c732f8aa0e0ccbb3d17d96	1rpCHilZQkw84A3Y9czvMO
6cx5CvFhqN19efStehJqoW	Valentine	3	76	https://api.spotify.com/v1/tracks/6cx5CvFhqN19efStehJqoW	640	640	https://i.scdn.co/image/ab67616d0000b27348341e864d4b4881f56f01b4	0Ydm84ftyiWRGOIFkdl30L
709p9UGPAuyImWf1Z3vjRo	Let You Break My Heart Again	1	76	https://api.spotify.com/v1/tracks/709p9UGPAuyImWf1Z3vjRo	640	640	https://i.scdn.co/image/ab67616d0000b2739457bba66a2daf4456855bb7	2YkyuQGoMV2FlG7mFprnRf
180AbZduI6bYQIzwCHRwu9	A Night To Remember	1	75	https://api.spotify.com/v1/tracks/180AbZduI6bYQIzwCHRwu9	640	640	https://i.scdn.co/image/ab67616d0000b27303ea1900840b8804f779f7b3	73wBVA41AulgjGiL3rBwfe
4jHl6jgzZOnS4nGamPZ1Uk	Santa Baby	1	73	https://api.spotify.com/v1/tracks/4jHl6jgzZOnS4nGamPZ1Uk	640	640	https://i.scdn.co/image/ab67616d0000b273723d44f25c6bcc00bcbdea8f	3yAHCdy8s77OpoBvVY9EJp
5zHLswJplBXyPstFSSMIOH	I Wish You Love	4	70	https://api.spotify.com/v1/tracks/5zHLswJplBXyPstFSSMIOH	640	640	https://i.scdn.co/image/ab67616d0000b273afe473a4a47a4e69ab174069	7pooeoqY4uJkTaW70qxm3z
2SPbioo65CuUB3H0aW1ID5	Bored	15	70	https://api.spotify.com/v1/tracks/2SPbioo65CuUB3H0aW1ID5	640	640	https://i.scdn.co/image/ab67616d0000b27313832cc69a78c53b18a8bc10	1hmlhl74JfLyUqmqtCwvFb
5MV1fxYLoXAGRqbE9kpF5L	Territory	1	0	https://api.spotify.com/v1/tracks/5MV1fxYLoXAGRqbE9kpF5L	640	640	https://i.scdn.co/image/ab67616d0000b273546ece4afb27257f03056312	3uxIc24nwBIELYyRvmKdNG
3e7sxremeOE3wTySiOhGiP	Dusk Till Dawn (feat. Sia) - Radio Edit	29	81	https://api.spotify.com/v1/tracks/3e7sxremeOE3wTySiOhGiP	640	640	https://i.scdn.co/image/ab67616d0000b2732bdcb339402ebd78651f09c8	1DF9B2hfwX4EdgEFwGcRwh
5Mysty4YeFTdu2Xm7O2yHM	Love, Maybe	3	70	https://api.spotify.com/v1/tracks/5Mysty4YeFTdu2Xm7O2yHM	640	640	https://i.scdn.co/image/ab67616d0000b273119800c5fc88785ee3ed1524	6Lp82GTJXzgtIopT0g7N7k
55n9yjI6qqXh5F2mYvUc2y	I Don’t Wanna Live Forever (Fifty Shades Darker)	10	79	https://api.spotify.com/v1/tracks/55n9yjI6qqXh5F2mYvUc2y	640	640	https://i.scdn.co/image/ab67616d0000b27363d77f99117b28af9f656918	1MPAXuTVL2Ej5x0JHiSPq8
0PDUDa38GO8lMxLCRc4lL1	PILLOWTALK	2	79	https://api.spotify.com/v1/tracks/0PDUDa38GO8lMxLCRc4lL1	640	640	https://i.scdn.co/image/ab67616d0000b273a15e26d05b7ce776b566579d	5amj9zNeZ3B2EdpBgXrOZ0
2ez6qvOTHKeI3ss80NGqnI	Trampoline (with ZAYN)	15	66	https://api.spotify.com/v1/tracks/2ez6qvOTHKeI3ss80NGqnI	640	640	https://i.scdn.co/image/ab67616d0000b2732752c64f94f9b37ba08f0f22	5wg6T8bCVnRk3ToKy0yXG5
1iWHabUgUuuKLBa0TzTHfk	A Whole New World (End Title) - From "Aladdin"	1	63	https://api.spotify.com/v1/tracks/1iWHabUgUuuKLBa0TzTHfk	640	640	https://i.scdn.co/image/ab67616d0000b2736c076fc850f473e8eb9a898c	1m8eXQqp3QCQyR56fgbm6o
4266h07udCdZ83jswW10IG	Stardust	7	64	https://api.spotify.com/v1/tracks/4266h07udCdZ83jswW10IG	640	640	https://i.scdn.co/image/ab67616d0000b273dfe6f99373d3fc2784c20f34	0PGluYePuY9INYN7SQheZ0
2cEmWBBlCfR9wWrY9JmTyt	Let Me	1	64	https://api.spotify.com/v1/tracks/2cEmWBBlCfR9wWrY9JmTyt	640	640	https://i.scdn.co/image/ab67616d0000b2732bdcb339402ebd78651f09c8	1DF9B2hfwX4EdgEFwGcRwh
6ZHRi0QxzSnlevyhyNkj4a	Sweat	7	63	https://api.spotify.com/v1/tracks/6ZHRi0QxzSnlevyhyNkj4a	640	640	https://i.scdn.co/image/ab67616d0000b273f160ff1c91caffd9e24cc736	2yuQqhSklmfWgn8lmJNk5t
6lvsJDZ7336YmpBzcNGhbe	fOoL fOr YoU	10	63	https://api.spotify.com/v1/tracks/6lvsJDZ7336YmpBzcNGhbe	640	640	https://i.scdn.co/image/ab67616d0000b273a15e26d05b7ce776b566579d	5amj9zNeZ3B2EdpBgXrOZ0
7xUqG3PXz7i8soy6tiWG66	What I Am	2	58	https://api.spotify.com/v1/tracks/7xUqG3PXz7i8soy6tiWG66	640	640	https://i.scdn.co/image/ab67616d0000b273dfe6f99373d3fc2784c20f34	0PGluYePuY9INYN7SQheZ0
0bYg9bo50gSsH3LtXe2SQn	All I Want for Christmas Is You	2	91	https://api.spotify.com/v1/tracks/0bYg9bo50gSsH3LtXe2SQn	640	640	https://i.scdn.co/image/ab67616d0000b2734246e3158421f5abb75abc4f	61ulfFSmmxMhc2wCdmdMkN
3IcIIZMMS7UArJJPtEHXG8	Obsessed	2	69	https://api.spotify.com/v1/tracks/3IcIIZMMS7UArJJPtEHXG8	640	640	https://i.scdn.co/image/ab67616d0000b273a9e20a20b9fc607d81f9c335	3RPImDZ7Ihh5YR5iJh1gH1
3PIDciSFdrQxSQSihim3hN	Christmas (Baby Please Come Home)	4	78	https://api.spotify.com/v1/tracks/3PIDciSFdrQxSQSihim3hN	640	640	https://i.scdn.co/image/ab67616d0000b2734246e3158421f5abb75abc4f	61ulfFSmmxMhc2wCdmdMkN
3LmvfNUQtglbTrydsdIqFU	We Belong Together	2	69	https://api.spotify.com/v1/tracks/3LmvfNUQtglbTrydsdIqFU	640	640	https://i.scdn.co/image/ab67616d0000b273768bc8d9f078db929dfcfbd1	43iBTEWECK7hSnE0p6GgNo
6xkryXuiZU360Lngd4sx13	Fantasy	1	74	https://api.spotify.com/v1/tracks/6xkryXuiZU360Lngd4sx13	640	640	https://i.scdn.co/image/ab67616d0000b273749e9bfa78277f30ad2c9a9c	1ibYM4abQtSVQFQWvDSo4J
0YImOCkIJ2PWhCXaURCZnY	I Know What You Want (feat. Flipmode Squad)	12	69	https://api.spotify.com/v1/tracks/0YImOCkIJ2PWhCXaURCZnY	640	640	https://i.scdn.co/image/ab67616d0000b273ac8e6d7dae57f0c1c87e230c	3cBk22r1tb6omRQ4jr6SE8
2aBxt229cbLDOvtL7Xbb9x	Always Be My Baby	5	71	https://api.spotify.com/v1/tracks/2aBxt229cbLDOvtL7Xbb9x	640	640	https://i.scdn.co/image/ab67616d0000b273749e9bfa78277f30ad2c9a9c	1ibYM4abQtSVQFQWvDSo4J
2aEuXA1KswHlCGPOuPmCOW	Touch My Body	2	71	https://api.spotify.com/v1/tracks/2aEuXA1KswHlCGPOuPmCOW	640	640	https://i.scdn.co/image/ab67616d0000b273633bb0a5f75b91c45c3a6b37	31MluXLYC0ZnCSfUZ5T4GX
1yjY7rpaAQvKwpdUliHx0d	Still into You	9	78	https://api.spotify.com/v1/tracks/1yjY7rpaAQvKwpdUliHx0d	640	640	https://i.scdn.co/image/ab67616d0000b273532033d0d90736f661c13d35	4sgYpkIASM1jVlNC8Wp9oF
6SpLc7EXZIPpy0sVko0aoU	Misery Business	4	73	https://api.spotify.com/v1/tracks/6SpLc7EXZIPpy0sVko0aoU	640	640	https://i.scdn.co/image/ab67616d0000b273bee754528c08d5ff6799a1eb	71rziY9eLo1tA2dBMxrwhc
7JIuqL4ZqkpfGKQhYlrirs	The Only Exception	6	74	https://api.spotify.com/v1/tracks/7JIuqL4ZqkpfGKQhYlrirs	640	640	https://i.scdn.co/image/ab67616d0000b273e01d7d558032457b0e4883f6	27UqZoE1kV6sIV6uQcI28A
1Bv3h7Vc4AaYA2BcSM3rVd	All I Wanted	11	72	https://api.spotify.com/v1/tracks/1Bv3h7Vc4AaYA2BcSM3rVd	640	640	https://i.scdn.co/image/ab67616d0000b273e01d7d558032457b0e4883f6	27UqZoE1kV6sIV6uQcI28A
0w5Bdu51Ka25Pf3hojsKHh	Hard Times	1	73	https://api.spotify.com/v1/tracks/0w5Bdu51Ka25Pf3hojsKHh	640	640	https://i.scdn.co/image/ab67616d0000b273dbd83e179619408e5d05cc99	1c9Sx7XdXuMptGyfCB6hHs
1ZLtE9tSJdaUiIJ9YoKHQe	Decode	1	71	https://api.spotify.com/v1/tracks/1ZLtE9tSJdaUiIJ9YoKHQe	640	640	https://i.scdn.co/image/ab67616d0000b273b236d0eae2659e7e7adb8b56	70iJhodSPkl7FR1VW4n0KF
1j8z4TTjJ1YOdoFEDwJTQa	Ain't It Fun	6	71	https://api.spotify.com/v1/tracks/1j8z4TTjJ1YOdoFEDwJTQa	640	640	https://i.scdn.co/image/ab67616d0000b273532033d0d90736f661c13d35	4sgYpkIASM1jVlNC8Wp9oF
1JdKrFyoU05abww0Zv0ayQ	That's What You Get	2	66	https://api.spotify.com/v1/tracks/1JdKrFyoU05abww0Zv0ayQ	640	640	https://i.scdn.co/image/ab67616d0000b273bee754528c08d5ff6799a1eb	71rziY9eLo1tA2dBMxrwhc
47No93LxERvV6MtOAmQzHS	Ignorance	2	67	https://api.spotify.com/v1/tracks/47No93LxERvV6MtOAmQzHS	640	640	https://i.scdn.co/image/ab67616d0000b273e01d7d558032457b0e4883f6	27UqZoE1kV6sIV6uQcI28A
3VA4sjTMSTTF02hFGmlpJh	crushcrushcrush	8	65	https://api.spotify.com/v1/tracks/3VA4sjTMSTTF02hFGmlpJh	640	640	https://i.scdn.co/image/ab67616d0000b273bee754528c08d5ff6799a1eb	71rziY9eLo1tA2dBMxrwhc
198zDKzyktXRG1PGpidY9h	DRIP	2	82	https://api.spotify.com/v1/tracks/198zDKzyktXRG1PGpidY9h	640	640	https://i.scdn.co/image/ab67616d0000b273119800c5fc88785ee3ed1524	6Lp82GTJXzgtIopT0g7N7k
1njlnn8ZKHI77Pe9szIONR	SHEESH	2	78	https://api.spotify.com/v1/tracks/1njlnn8ZKHI77Pe9szIONR	640	640	https://i.scdn.co/image/ab67616d0000b2734f6afc385052250c766a5683	0eSbsl3j8jz96LC2NCLPc4
6b6KXDbDn0s0Jepxm8a3nr	FOREVER	8	71	https://api.spotify.com/v1/tracks/6b6KXDbDn0s0Jepxm8a3nr	640	640	https://i.scdn.co/image/ab67616d0000b273119800c5fc88785ee3ed1524	6Lp82GTJXzgtIopT0g7N7k
0Rq9lIn9fl4wiW9Tg72ifr	CLIK CLAK	1	75	https://api.spotify.com/v1/tracks/0Rq9lIn9fl4wiW9Tg72ifr	640	640	https://i.scdn.co/image/ab67616d0000b273119800c5fc88785ee3ed1524	6Lp82GTJXzgtIopT0g7N7k
7GDgpad2BQVuDUzaxHFakc	LIKE THAT	3	75	https://api.spotify.com/v1/tracks/7GDgpad2BQVuDUzaxHFakc	640	640	https://i.scdn.co/image/ab67616d0000b2734f6afc385052250c766a5683	0eSbsl3j8jz96LC2NCLPc4
3VBj0lzjmhTzVFPEDOjNCG	BATTER UP	1	74	https://api.spotify.com/v1/tracks/3VBj0lzjmhTzVFPEDOjNCG	640	640	https://i.scdn.co/image/ab67616d0000b27324e7d3f6bcc7f5594638a4f0	2CSQuvvt3XHLDX36O3nRv7
0QICKhP44TRnb4EurQ3tN9	BILLIONAIRE	5	71	https://api.spotify.com/v1/tracks/0QICKhP44TRnb4EurQ3tN9	640	640	https://i.scdn.co/image/ab67616d0000b273119800c5fc88785ee3ed1524	6Lp82GTJXzgtIopT0g7N7k
3entdIWiOuQfcXIkJEABsV	Really Like You	4	69	https://api.spotify.com/v1/tracks/3entdIWiOuQfcXIkJEABsV	640	640	https://i.scdn.co/image/ab67616d0000b273119800c5fc88785ee3ed1524	6Lp82GTJXzgtIopT0g7N7k
7uGZIgNGAM4y7cyLj9SPlw	Love In My Heart	6	68	https://api.spotify.com/v1/tracks/7uGZIgNGAM4y7cyLj9SPlw	640	640	https://i.scdn.co/image/ab67616d0000b273119800c5fc88785ee3ed1524	6Lp82GTJXzgtIopT0g7N7k
6dOtVTDdiauQNBQEDOtlAB	BIRDS OF A FEATHER	4	97	https://api.spotify.com/v1/tracks/6dOtVTDdiauQNBQEDOtlAB	640	640	https://i.scdn.co/image/ab67616d0000b27371d62ea7ea8a5be92d3c1f62	7aJuG4TFXa2hmE4z1yxc3n
3QaPy1KgI7nu9FJEQUgn6h	WILDFLOWER	5	93	https://api.spotify.com/v1/tracks/3QaPy1KgI7nu9FJEQUgn6h	640	640	https://i.scdn.co/image/ab67616d0000b27371d62ea7ea8a5be92d3c1f62	7aJuG4TFXa2hmE4z1yxc3n
4SsfCsnDwaxFQqdKQlkobV	Forever Young	1	38	https://api.spotify.com/v1/tracks/4SsfCsnDwaxFQqdKQlkobV	640	640	https://i.scdn.co/image/ab67616d0000b273ff1ec6507eacc618f4473b4b	2s1cUyFnqR9htNZydUXTyj
04BlRbsGOG1GfUIZP9UYzY	Wings	2	31	https://api.spotify.com/v1/tracks/04BlRbsGOG1GfUIZP9UYzY	640	640	https://i.scdn.co/image/ab67616d0000b273ff1ec6507eacc618f4473b4b	2s1cUyFnqR9htNZydUXTyj
22oHyyevmnxIrcohevWNlB	Burning Down Inside	3	29	https://api.spotify.com/v1/tracks/22oHyyevmnxIrcohevWNlB	640	640	https://i.scdn.co/image/ab67616d0000b273ff1ec6507eacc618f4473b4b	2s1cUyFnqR9htNZydUXTyj
6XDg8V4Faoti0F353vuJcu	Standing Alone	5	27	https://api.spotify.com/v1/tracks/6XDg8V4Faoti0F353vuJcu	640	640	https://i.scdn.co/image/ab67616d0000b273ff1ec6507eacc618f4473b4b	2s1cUyFnqR9htNZydUXTyj
7IFInaUj8WLilemk2q1M8i	Seasons	4	22	https://api.spotify.com/v1/tracks/7IFInaUj8WLilemk2q1M8i	640	640	https://i.scdn.co/image/ab67616d0000b273ff1ec6507eacc618f4473b4b	2s1cUyFnqR9htNZydUXTyj
1vy6qGRQ43ahIjn2fCNc0t	Sail Away	10	21	https://api.spotify.com/v1/tracks/1vy6qGRQ43ahIjn2fCNc0t	640	640	https://i.scdn.co/image/ab67616d0000b273ff1ec6507eacc618f4473b4b	2s1cUyFnqR9htNZydUXTyj
3itJCcnOgDoMkc62EvN22m	Reach	1	18	https://api.spotify.com/v1/tracks/3itJCcnOgDoMkc62EvN22m	640	640	https://i.scdn.co/image/ab67616d0000b2736d79d328a40e79504fb4a7c2	0SZHaLGJNlXFiuGVQVfNZL
27woCOBiNKM26QqtMNM2fb	Nothing But Love	8	18	https://api.spotify.com/v1/tracks/27woCOBiNKM26QqtMNM2fb	640	640	https://i.scdn.co/image/ab67616d0000b273ff1ec6507eacc618f4473b4b	2s1cUyFnqR9htNZydUXTyj
4lCjhjpIaDOb8G3pAhPw8L	The Run	12	18	https://api.spotify.com/v1/tracks/4lCjhjpIaDOb8G3pAhPw8L	640	640	https://i.scdn.co/image/ab67616d0000b2736d79d328a40e79504fb4a7c2	0SZHaLGJNlXFiuGVQVfNZL
7giDHQF8IcA9P3xgnwCIfY	Lay Your Body Down	6	18	https://api.spotify.com/v1/tracks/7giDHQF8IcA9P3xgnwCIfY	640	640	https://i.scdn.co/image/ab67616d0000b273ff1ec6507eacc618f4473b4b	2s1cUyFnqR9htNZydUXTyj
4KROoGIaPaR1pBHPnR3bwC	Pink Moon	1	65	https://api.spotify.com/v1/tracks/4KROoGIaPaR1pBHPnR3bwC	640	640	https://i.scdn.co/image/ab67616d0000b273e369195caf5d169bf5e9eafc	5mwOo1zikswhmfHvtqVSXg
5QUeSXjTMHbq1fW5da2waF	Place To Be	2	62	https://api.spotify.com/v1/tracks/5QUeSXjTMHbq1fW5da2waF	640	640	https://i.scdn.co/image/ab67616d0000b273e369195caf5d169bf5e9eafc	5mwOo1zikswhmfHvtqVSXg
7pdmBld4yW3WIUkrxHyb5r	Northern Sky	9	60	https://api.spotify.com/v1/tracks/7pdmBld4yW3WIUkrxHyb5r	640	640	https://i.scdn.co/image/ab67616d0000b2732062d15bea2602a8a2cfe8b7	0B2E1w5T7PEbZIctZnnt9K
5ir0VEsMI7cLhN6SEiaKol	Road	3	57	https://api.spotify.com/v1/tracks/5ir0VEsMI7cLhN6SEiaKol	640	640	https://i.scdn.co/image/ab67616d0000b273e369195caf5d169bf5e9eafc	5mwOo1zikswhmfHvtqVSXg
6wuekNiL0KqFbvfdwuequN	One Of These Things First	4	55	https://api.spotify.com/v1/tracks/6wuekNiL0KqFbvfdwuequN	640	640	https://i.scdn.co/image/ab67616d0000b2732062d15bea2602a8a2cfe8b7	0B2E1w5T7PEbZIctZnnt9K
6meH4I9A4WZtD3z8hnQKqr	From The Morning	11	55	https://api.spotify.com/v1/tracks/6meH4I9A4WZtD3z8hnQKqr	640	640	https://i.scdn.co/image/ab67616d0000b273e369195caf5d169bf5e9eafc	5mwOo1zikswhmfHvtqVSXg
66790TBuwlIrGxWWTVc6yl	Day Is Done	5	54	https://api.spotify.com/v1/tracks/66790TBuwlIrGxWWTVc6yl	640	640	https://i.scdn.co/image/ab67616d0000b273bd158c797b1026005c2917bc	7IpcJbVxLLEfW0KXB7ndE2
3Uh7rAb7F0XGVpEEDwfH1k	River Man	2	53	https://api.spotify.com/v1/tracks/3Uh7rAb7F0XGVpEEDwfH1k	640	640	https://i.scdn.co/image/ab67616d0000b273bd158c797b1026005c2917bc	7IpcJbVxLLEfW0KXB7ndE2
1drLQNS9D5z9lBP4DbtO2R	Saturday Sun	10	53	https://api.spotify.com/v1/tracks/1drLQNS9D5z9lBP4DbtO2R	640	640	https://i.scdn.co/image/ab67616d0000b273bd158c797b1026005c2917bc	7IpcJbVxLLEfW0KXB7ndE2
4Cg0paoTgxlo2LC85HKaab	Which Will	4	52	https://api.spotify.com/v1/tracks/4Cg0paoTgxlo2LC85HKaab	640	640	https://i.scdn.co/image/ab67616d0000b273e369195caf5d169bf5e9eafc	5mwOo1zikswhmfHvtqVSXg
5fEB6ZmVkg63GZg9qO86jh	Break from Toronto	6	83	https://api.spotify.com/v1/tracks/5fEB6ZmVkg63GZg9qO86jh	640	640	https://i.scdn.co/image/ab67616d0000b273090b1f9557a6d23c0817bd88	1q4B7r3dzzwkarZ1B9bk9e
35sZOqVnTQNIGWGURrFdLh	Dreamin	1	81	https://api.spotify.com/v1/tracks/35sZOqVnTQNIGWGURrFdLh	640	640	https://i.scdn.co/image/ab67616d0000b2737df7878832d569472343b7a7	4Oy8aMeS4lDCTK3Ukss3Dd
12VH4g5pTMZmrUVzfJq7F7	M a k e I t T o T h e M o r n i n g	5	80	https://api.spotify.com/v1/tracks/12VH4g5pTMZmrUVzfJq7F7	640	640	https://i.scdn.co/image/ab67616d0000b27322ac75a1f50440962b7f70e6	3mpMvyPWtxJnL3vywQHH5K
5c3luoCub1Z1Gg74NdNtuq	Belong to the City	5	79	https://api.spotify.com/v1/tracks/5c3luoCub1Z1Gg74NdNtuq	640	640	https://i.scdn.co/image/ab67616d0000b2736cfa297b0178fd91dca5c4f1	1xwhNJCfTwuRia7Cpo7IbJ
1zhMHgotgZXkLCXpqNRnPK	N o C h i l l	6	78	https://api.spotify.com/v1/tracks/1zhMHgotgZXkLCXpqNRnPK	640	640	https://i.scdn.co/image/ab67616d0000b27322ac75a1f50440962b7f70e6	3mpMvyPWtxJnL3vywQHH5K
236P5yLtfnHgTMxevc0q6F	TBH	7	76	https://api.spotify.com/v1/tracks/236P5yLtfnHgTMxevc0q6F	640	640	https://i.scdn.co/image/ab67616d0000b2735adf49e4d5f1eb30646a2adf	3HAkHqZtXoyEH0Whnamswu
3JEJwjqLkg2Jbau5922CAb	Her Way	4	76	https://api.spotify.com/v1/tracks/3JEJwjqLkg2Jbau5922CAb	640	640	https://i.scdn.co/image/ab67616d0000b2736cfa297b0178fd91dca5c4f1	1xwhNJCfTwuRia7Cpo7IbJ
0NHvTrD8Igke3fawcp3njY	Wus Good / Curious	8	74	https://api.spotify.com/v1/tracks/0NHvTrD8Igke3fawcp3njY	640	640	https://i.scdn.co/image/ab67616d0000b273090b1f9557a6d23c0817bd88	1q4B7r3dzzwkarZ1B9bk9e
2d93r7U06Wx7uJfU2q9Nza	F o r C e r t a i n	9	69	https://api.spotify.com/v1/tracks/2d93r7U06Wx7uJfU2q9Nza	640	640	https://i.scdn.co/image/ab67616d0000b2732f738e10048273eb92068a5a	1CTk9dG2nyaUovNIQfBzqb
6cEguiQecbXrFlsnMi2ysr	Come and See Me (feat. Drake)	15	72	https://api.spotify.com/v1/tracks/6cEguiQecbXrFlsnMi2ysr	640	640	https://i.scdn.co/image/ab67616d0000b273240b49b7795e0611ccf416b7	2veXxRriGPw4fFBZQNNMfQ
2kQuhkFX7uSVepCD3h29g5	Smack That	3	83	https://api.spotify.com/v1/tracks/2kQuhkFX7uSVepCD3h29g5	640	640	https://i.scdn.co/image/ab67616d0000b273d9bcf5565005950b353bc9cf	6kzoWb4UzvKYgbDfAwgaFq
4v7DCN09hgXkKazefkznDQ	Lonely	8	78	https://api.spotify.com/v1/tracks/4v7DCN09hgXkKazefkznDQ	640	640	https://i.scdn.co/image/ab67616d0000b2736ec7ab30397ea37295340a41	77eKpEVxmSr1RhqMlirlTF
5Ravsw8TmHN5wBiYPPYUFw	Right Now (Na Na Na)	1	77	https://api.spotify.com/v1/tracks/5Ravsw8TmHN5wBiYPPYUFw	640	640	https://i.scdn.co/image/ab67616d0000b273e77aece1352dcc4f4cfd097f	1Z5oeufZDMMzL8ZlWTZrQg
0CXVjQI9wsqaGeIARkkpYc	I Wanna Love You	4	74	https://api.spotify.com/v1/tracks/0CXVjQI9wsqaGeIARkkpYc	640	640	https://i.scdn.co/image/ab67616d0000b273d9bcf5565005950b353bc9cf	6kzoWb4UzvKYgbDfAwgaFq
7I6DceMT3utDOHjcYCbrr4	Don't Matter	12	74	https://api.spotify.com/v1/tracks/7I6DceMT3utDOHjcYCbrr4	640	640	https://i.scdn.co/image/ab67616d0000b273d9bcf5565005950b353bc9cf	6kzoWb4UzvKYgbDfAwgaFq
0EH7sgeiFqDa3eS7ieW2zs	Chammak Challo	1	72	https://api.spotify.com/v1/tracks/0EH7sgeiFqDa3eS7ieW2zs	640	640	https://i.scdn.co/image/ab67616d0000b27344aa56e23e3a89802e6c6347	5x2eTJrbEvmOTEcWWWubLy
48EQasc6XD0pOQtkIOWqOC	Locked Up	1	68	https://api.spotify.com/v1/tracks/48EQasc6XD0pOQtkIOWqOC	640	640	https://i.scdn.co/image/ab67616d0000b2736ec7ab30397ea37295340a41	77eKpEVxmSr1RhqMlirlTF
1GLx5tpDdwEFiA7KaikvX2	Beautiful	2	71	https://api.spotify.com/v1/tracks/1GLx5tpDdwEFiA7KaikvX2	640	640	https://i.scdn.co/image/ab67616d0000b273e77aece1352dcc4f4cfd097f	1Z5oeufZDMMzL8ZlWTZrQg
61BqwgSRTyWH9M4uPjsC3B	Sorry, Blame It On Me	13	66	https://api.spotify.com/v1/tracks/61BqwgSRTyWH9M4uPjsC3B	640	640	https://i.scdn.co/image/ab67616d0000b273b339bb65a381f7345296e0d0	4SAz7HhY1uBvxF6O9k1iyq
6uq9QQLcdeUbhe5T7ZUFl4	Be With You	9	66	https://api.spotify.com/v1/tracks/6uq9QQLcdeUbhe5T7ZUFl4	640	640	https://i.scdn.co/image/ab67616d0000b273e77aece1352dcc4f4cfd097f	1Z5oeufZDMMzL8ZlWTZrQg
2plbrEY59IikOBgBGLjaoe	Die With A Smile	1	100	https://api.spotify.com/v1/tracks/2plbrEY59IikOBgBGLjaoe	640	640	https://i.scdn.co/image/ab67616d0000b27382ea2e9e1858aa012c57cd45	10FLjwfpbxLmW8c25Xyc2N
5vNRhkKd0yEAg8suGBpjeY	APT.	1	99	https://api.spotify.com/v1/tracks/5vNRhkKd0yEAg8suGBpjeY	640	640	https://i.scdn.co/image/ab67616d0000b27336032cb4acd9df050bc2e197	2IYQwwgxgOIn7t3iF6ufFD
3w3y8KPTfNeOKPiqUTakBh	Locked out of Heaven	2	89	https://api.spotify.com/v1/tracks/3w3y8KPTfNeOKPiqUTakBh	640	640	https://i.scdn.co/image/ab67616d0000b273926f43e7cce571e62720fd46	58ufpQsJ1DS5kq4hhzQDiI
7BqBn9nzAq8spo5e7cZ0dJ	Just the Way You Are	2	86	https://api.spotify.com/v1/tracks/7BqBn9nzAq8spo5e7cZ0dJ	640	640	https://i.scdn.co/image/ab67616d0000b273f6b55ca93bd33211227b502b	1uyf3l2d4XYwiEqAb7t7fX
0KKkJNfGyhkQ5aFogxQAPU	That's What I Like	4	89	https://api.spotify.com/v1/tracks/0KKkJNfGyhkQ5aFogxQAPU	640	640	https://i.scdn.co/image/ab67616d0000b273232711f7d66a1e19e89e28c5	4PgleR09JVnm3zY1fW3XBA
0nJW01T7XtvILxQgC5J7Wh	When I Was Your Man	6	86	https://api.spotify.com/v1/tracks/0nJW01T7XtvILxQgC5J7Wh	640	640	https://i.scdn.co/image/ab67616d0000b273926f43e7cce571e62720fd46	58ufpQsJ1DS5kq4hhzQDiI
2tJulUYLDKOg9XrtVkMgcJ	Grenade	1	78	https://api.spotify.com/v1/tracks/2tJulUYLDKOg9XrtVkMgcJ	640	640	https://i.scdn.co/image/ab67616d0000b273f6b55ca93bd33211227b502b	1uyf3l2d4XYwiEqAb7t7fX
161DnLWsx1i3u1JT05lzqU	Talking to the Moon	7	81	https://api.spotify.com/v1/tracks/161DnLWsx1i3u1JT05lzqU	640	640	https://i.scdn.co/image/ab67616d0000b273f6b55ca93bd33211227b502b	1uyf3l2d4XYwiEqAb7t7fX
5zwwW9Oq7ubSxoCGyW1nbY	Pink Venom	1	69	https://api.spotify.com/v1/tracks/5zwwW9Oq7ubSxoCGyW1nbY	640	640	https://i.scdn.co/image/ab67616d0000b273002ef53878df1b4e91c15406	0kbZ4ZNRs76sSFeGUEErFM
7gRFDGEzF9UkBV233yv2dc	Shut Down	2	68	https://api.spotify.com/v1/tracks/7gRFDGEzF9UkBV233yv2dc	640	640	https://i.scdn.co/image/ab67616d0000b273002ef53878df1b4e91c15406	0kbZ4ZNRs76sSFeGUEErFM
4SFknyjLcyTLJFPKD2m96o	How You Like That	1	71	https://api.spotify.com/v1/tracks/4SFknyjLcyTLJFPKD2m96o	640	640	https://i.scdn.co/image/ab67616d0000b2737dd8f95320e8ef08aa121dfe	71O60S5gIJSIAhdnrDIh3N
4ZxOuNHhpyOj4gv52MtQpT	As If It's Your Last	1	73	https://api.spotify.com/v1/tracks/4ZxOuNHhpyOj4gv52MtQpT	640	640	https://i.scdn.co/image/ab67616d0000b273ac93d8b1bd84fa6b5291ba21	7ikmjsvRzDRzxHN0KXSQdv
6hvczQ05jc1yGlp9zhb95V	Kill This Love	1	70	https://api.spotify.com/v1/tracks/6hvczQ05jc1yGlp9zhb95V	640	640	https://i.scdn.co/image/ab67616d0000b273e20e5c366b497518353497b0	3PNxZ3BELbUXJ1XLktXiHz
4Ws314Ylb27BVsvlZOy30C	Lovesick Girls	5	68	https://api.spotify.com/v1/tracks/4Ws314Ylb27BVsvlZOy30C	640	640	https://i.scdn.co/image/ab67616d0000b2737dd8f95320e8ef08aa121dfe	71O60S5gIJSIAhdnrDIh3N
7jr3iPu4O4bTCVwLMbdU2i	Kiss and Make Up	20	71	https://api.spotify.com/v1/tracks/7jr3iPu4O4bTCVwLMbdU2i	640	640	https://i.scdn.co/image/ab67616d0000b273ae395b47b186c2bc8c458e0f	0obMz8EHnr3dg6NCUK4xWp
0L8LOav65XwLjCLS11gNPD	Typa Girl	3	68	https://api.spotify.com/v1/tracks/0L8LOav65XwLjCLS11gNPD	640	640	https://i.scdn.co/image/ab67616d0000b2734aeaaeeb0755f1d8a8b51738	7jaSNQUBJbvfbZHLNFrV7P
1XnpzbOGptRwfJhZgLbmSr	Pretty Savage	3	68	https://api.spotify.com/v1/tracks/1XnpzbOGptRwfJhZgLbmSr	640	640	https://i.scdn.co/image/ab67616d0000b2737dd8f95320e8ef08aa121dfe	71O60S5gIJSIAhdnrDIh3N
4lQsB3ERTWSNaAN1IkuNRl	DDU-DU DDU-DU	1	68	https://api.spotify.com/v1/tracks/4lQsB3ERTWSNaAN1IkuNRl	640	640	https://i.scdn.co/image/ab67616d0000b273bfd46639322b597331d9ecef	0wOiWrujRbxlKEGWRQpKYc
\.


--
-- Data for Name: trackmadeby; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.trackmadeby (artist_id, track_id) FROM stdin;
1	1
1	2
1	3
1	4
1	5
2	6
2	7
1	8
2	8
1	9
3	9
45dkTj5sMRSjrmBSBeiHym	3rUGC1vUpkDG9CZFHMur1t
45dkTj5sMRSjrmBSBeiHym	24XihnoVPWXlKJ4BgXqjVM
45dkTj5sMRSjrmBSBeiHym	1f18HzFpegqvH4ibGJyeMJ
45dkTj5sMRSjrmBSBeiHym	4E63weMCaNZuGPEFMnuEi8
45dkTj5sMRSjrmBSBeiHym	4l0RmWt52FxpVxMNni6i63
45dkTj5sMRSjrmBSBeiHym	51hyZpbJlIgZIaX3TtMxmu
45dkTj5sMRSjrmBSBeiHym	36gcliMRX1vCpgnrZE3dFZ
45dkTj5sMRSjrmBSBeiHym	7l9IqDtVWJurTvkQHq1BGh
45dkTj5sMRSjrmBSBeiHym	7l97ElWmIdVHWUaOeeU5ZC
45dkTj5sMRSjrmBSBeiHym	6qmvAJSUfVGMubvI2awW7p
3SozjO3Lat463tQICI9LcE	5aIVCx5tnk0ntmdiinnYvw
3SozjO3Lat463tQICI9LcE	1Cbl3Yq8rHo7hhDQmLQagU
3SozjO3Lat463tQICI9LcE	6XpEm7VJ7TZxZTawH8BCSW
3SozjO3Lat463tQICI9LcE	7axl6v0Yv4ksLVMt6XItpc
3SozjO3Lat463tQICI9LcE	40ds3xedbMkWhszkGnZwxi
3SozjO3Lat463tQICI9LcE	3qSk5TP4A8gQIsb8iNVwnx
3SozjO3Lat463tQICI9LcE	4Q2IUQo8YuoCqiRrDazKK4
3SozjO3Lat463tQICI9LcE	3qeMtqV38UWPZfps7mPTUE
3SozjO3Lat463tQICI9LcE	4Oh1zkPShpImBJOBOKMMAq
3SozjO3Lat463tQICI9LcE	4rIVgjxHV6yviwGWxn9TXx
06HL4z0CvFAxyc27GXpf02	1BxfuPKGuaTgP7aM0Bbdwr
06HL4z0CvFAxyc27GXpf02	2OzhQlSqBEmt7hmkYxfT6m
06HL4z0CvFAxyc27GXpf02	4q5YezDOIPcoLr8R81x9qy
06HL4z0CvFAxyc27GXpf02	3hUxzQpSfdDqwM3ZTFQY0K
06HL4z0CvFAxyc27GXpf02	4R2kfaDFhslZEMJqAFNpdd
06HL4z0CvFAxyc27GXpf02	1dGr1c8CrMLDpV6mPbImSI
06HL4z0CvFAxyc27GXpf02	1R0a2iXumgCiFb7HEZ7gUE
06HL4z0CvFAxyc27GXpf02	0V3wPSX9ygBnCm8psDIegu
06HL4z0CvFAxyc27GXpf02	1p80LdxRV74UKvL8gnD7ky
06HL4z0CvFAxyc27GXpf02	0W0iAC1VGlB82PI6elxFYf
2KC9Qb60EaY0kW4eH68vr3	06BeeZaS4YArThfTMu80QS
2KC9Qb60EaY0kW4eH68vr3	1dqN2j0jL4qB72CNgCdQ09
2KC9Qb60EaY0kW4eH68vr3	4pspYVQGFHLPEFgQPD1J7e
2KC9Qb60EaY0kW4eH68vr3	56Yxkm62GtEpnPyG7TvwLY
2KC9Qb60EaY0kW4eH68vr3	2HQALWSN6IF4BYrSADMJ0w
2KC9Qb60EaY0kW4eH68vr3	1ehags7lQMM1qX94VJkoaf
2KC9Qb60EaY0kW4eH68vr3	1V3Zn1TUGzYui1WCVa04ES
2KC9Qb60EaY0kW4eH68vr3	38rUIlTX93Aoif3WcY1wv6
2KC9Qb60EaY0kW4eH68vr3	3syxwxJqX5jpgjNYmvzdW6
2KC9Qb60EaY0kW4eH68vr3	1Wcr8zrKqbUX0zwN8Dbr16
6YVMFz59CuY7ngCxTxjpxE	3coRPMnFg2dJcPu5RMloa9
6YVMFz59CuY7ngCxTxjpxE	5sjnkOfTLCLNfkkchI2re2
6YVMFz59CuY7ngCxTxjpxE	5lKnZbdGCBViitE1Ce5TZh
6YVMFz59CuY7ngCxTxjpxE	4b2fMv44GAYpsDSK4ihbsI
6YVMFz59CuY7ngCxTxjpxE	5XWlyfo0kZ8LF7VSyfS4Ew
6YVMFz59CuY7ngCxTxjpxE	3gtlthEgyulDfT8dWdKsnv
6YVMFz59CuY7ngCxTxjpxE	6pIuPm3u7QgUFAX1V0D9wY
6YVMFz59CuY7ngCxTxjpxE	1o844wI52S3TjXGBwvGcc7
6YVMFz59CuY7ngCxTxjpxE	2xoA126GEgFhrYzRaTH7E4
6YVMFz59CuY7ngCxTxjpxE	3dbLT62Cvs46Ju7a8gpr36
66CXWjxzNUsdJxJ2JdwvnR	51ZQ1vr10ffzbwIjDCwqm4
66CXWjxzNUsdJxJ2JdwvnR	0lizgQ7Qw35od7CYaoMBZb
66CXWjxzNUsdJxJ2JdwvnR	0Lmbke3KNVFXtoH2mMSHCw
66CXWjxzNUsdJxJ2JdwvnR	7xoUc6faLbCqZO6fQEYprd
66CXWjxzNUsdJxJ2JdwvnR	6ocbgoVGwYJhOv1GgI9NsF
4SpbR6yFEvexJuaBpgAU5p	4gxEY3Mh5FZZDAJAKPNrCS
4SpbR6yFEvexJuaBpgAU5p	3lwK3WyKAI5bUuGY1OgGbZ
4SpbR6yFEvexJuaBpgAU5p	74X2u8JMVooG2QbjRxXwR8
4SpbR6yFEvexJuaBpgAU5p	2O4Bb2WCkjlTPO827OnBMI
4SpbR6yFEvexJuaBpgAU5p	0bMoNdAnxNR0OuQbGDovrr
4SpbR6yFEvexJuaBpgAU5p	7vjfnsnDXZGK4PSq54ISjc
4SpbR6yFEvexJuaBpgAU5p	4K8jDTlNhZWEdnzZVGRMtN
4SpbR6yFEvexJuaBpgAU5p	4QhnNyKDsAkXPwHkSnuc89
4SpbR6yFEvexJuaBpgAU5p	51vRumtqbkNW9wrKfESwfu
4SpbR6yFEvexJuaBpgAU5p	6wBpO4Xc4YgShnENGSFA1M
6HvZYsbFfjnjFrWF950C9d	5sdQOyqq2IDhvmx2lHOpwd
6HvZYsbFfjnjFrWF950C9d	56v8WEnGzLByGsDAXDiv4d
6HvZYsbFfjnjFrWF950C9d	3r8RuvgbX9s7ammBn07D3W
6HvZYsbFfjnjFrWF950C9d	38tXZcL1gZRfbqfOG0VMTH
6HvZYsbFfjnjFrWF950C9d	65FftemJ1DbbZ45DUfHJXE
6HvZYsbFfjnjFrWF950C9d	5ocSQW5sIUIOFojwXEz9Ki
6HvZYsbFfjnjFrWF950C9d	6rdkCkjk6D12xRpdMXy0I2
6HvZYsbFfjnjFrWF950C9d	0a4MMyCrzT0En247IhqZbD
6HvZYsbFfjnjFrWF950C9d	2pIUpMhHL6L9Z5lnKxJJr9
6HvZYsbFfjnjFrWF950C9d	210JJAa9nJOgNa0YNrsT5g
13ZEDW6vyBF12HYcZRr4EV	0fCwTrRNfoNk962ati8n2K
13ZEDW6vyBF12HYcZRr4EV	2tgQaL85WoRfgEa4hFQgrE
13ZEDW6vyBF12HYcZRr4EV	19MkwMrRjO7773zpuGss1o
13ZEDW6vyBF12HYcZRr4EV	4a2uqVlpRChHj32EjJLu7G
13ZEDW6vyBF12HYcZRr4EV	3t5OV1asJHmOlf23T08CLv
13ZEDW6vyBF12HYcZRr4EV	4Oz6xl8qhJTdjYZeT98V4m
13ZEDW6vyBF12HYcZRr4EV	3R6yNicsZrWF8ybl02imcB
13ZEDW6vyBF12HYcZRr4EV	3Fq4shhJdENQhwlLk9qoDx
13ZEDW6vyBF12HYcZRr4EV	0fbR95FEaJUxiQYaqZZukv
13ZEDW6vyBF12HYcZRr4EV	1y3CG6thNhG1ndaNW0JuEp
3PALa4TyGOMGVGGZinBHIC	5M7tzrnenJIkEti0NX9Qjd
3PALa4TyGOMGVGGZinBHIC	6RtvMFAOMDuxs8qN0pG5sm
3PALa4TyGOMGVGGZinBHIC	7KqX72T3aYy1skEG0zGT1a
3PALa4TyGOMGVGGZinBHIC	6btP4wDeviyma56bB9oY8D
3PALa4TyGOMGVGGZinBHIC	1pVn1Dpw28D8uP8PO79C54
3PALa4TyGOMGVGGZinBHIC	7AwkYTuUBDQbhh3nTVfV2M
3PALa4TyGOMGVGGZinBHIC	3eWJITipdIngr1PHgqS3ck
3PALa4TyGOMGVGGZinBHIC	4z3bPPKMmluEFJPOflpC8l
3PALa4TyGOMGVGGZinBHIC	4NldYMKXXseuMQqbHmxjte
3PALa4TyGOMGVGGZinBHIC	0OhULsSUe8SzOaT08KZO14
5pKCCKE2ajJHZ9KAiaK11H	6qn9YLKt13AGvpq9jfO8py
5pKCCKE2ajJHZ9KAiaK11H	2ENexcMEMsYk0rVJigVD3i
5pKCCKE2ajJHZ9KAiaK11H	5oO3drDxtziYU2H1X23ZIp
5pKCCKE2ajJHZ9KAiaK11H	2yPoXCs7BSIUrucMdK5PzV
5pKCCKE2ajJHZ9KAiaK11H	789CxjEOtO76BVD1A9yJQH
5pKCCKE2ajJHZ9KAiaK11H	7ySUcLPVX7KudhnmNcgY2D
5pKCCKE2ajJHZ9KAiaK11H	1Jo0Zg7XlrA6z0mFTZVdkn
5pKCCKE2ajJHZ9KAiaK11H	1z9kQ14XBSN0r2v6fx4IdG
5pKCCKE2ajJHZ9KAiaK11H	5EcG8eMMlwkHRVa4aTR1qd
5pKCCKE2ajJHZ9KAiaK11H	4pAl7FkDMNBsjykPXo91B3
7Ln80lUS6He07XvHI8qqHH	5XeFesFbtLpXzIVDNQP22n
7Ln80lUS6He07XvHI8qqHH	58ge6dfP91o9oXMzq3XkIS
7Ln80lUS6He07XvHI8qqHH	086myS9r57YsLbJpU0TgK9
7Ln80lUS6He07XvHI8qqHH	5TTGoX70AFrTvuEtqHK37S
7Ln80lUS6He07XvHI8qqHH	5FVd6KXrgO9B3JPmC8OPst
7Ln80lUS6He07XvHI8qqHH	2AT8iROs4FQueDv2c8q2KE
7Ln80lUS6He07XvHI8qqHH	7e8utCy2JlSB8dRHKi49xM
7Ln80lUS6He07XvHI8qqHH	0NdTUS4UiNYCNn5FgVqKQY
7Ln80lUS6He07XvHI8qqHH	7nzsY8vlnKdvGOEE0rjAXZ
7Ln80lUS6He07XvHI8qqHH	2LGdO5MtFdyphi2EihANZG
7tYKF4w9nC0nq9CsPZTHyP	2CGNAOSuO1MEFCbBRgUzjd
7tYKF4w9nC0nq9CsPZTHyP	1Qrg8KqiBpW07V7PNxwwwL
7tYKF4w9nC0nq9CsPZTHyP	4iZ4pt7kvcaH6Yo8UoZ4s2
7tYKF4w9nC0nq9CsPZTHyP	3GCdLUSnKSMJhs4Tj6CV3s
7tYKF4w9nC0nq9CsPZTHyP	5Y35SjAfXjjG0sFQ3KOxmm
7tYKF4w9nC0nq9CsPZTHyP	1bjeWoagtHmUKputLVyDxQ
7tYKF4w9nC0nq9CsPZTHyP	0wgOhYnqZKjOHr6bmdz0aN
7tYKF4w9nC0nq9CsPZTHyP	6koKhrBBcExADvWuOgceNZ
7tYKF4w9nC0nq9CsPZTHyP	4PMqSO5qyjpvzhlLI5GnID
7tYKF4w9nC0nq9CsPZTHyP	3DarAbFujv6eYNliUTyqtz
2FXC3k01G6Gw61bmprjgqS	76JKIsdKrAfWUMjaA0u7v5
2FXC3k01G6Gw61bmprjgqS	1CS7Sd1u5tWkstBhpssyjP
2FXC3k01G6Gw61bmprjgqS	5TgEJ62DOzBpGxZ7WRsrqb
2FXC3k01G6Gw61bmprjgqS	6pBeLF2GZS3NNwV4DBvtg5
2FXC3k01G6Gw61bmprjgqS	2DNXgvkyv35vTWvdgjs7qn
2FXC3k01G6Gw61bmprjgqS	5Apvsk0suoivI1H8CmBglv
2FXC3k01G6Gw61bmprjgqS	37zuIvk4KBkAxxLJsxJaHq
2FXC3k01G6Gw61bmprjgqS	57V4uc2b2diZ4RPHXWecb9
2FXC3k01G6Gw61bmprjgqS	5aRZk9oWIYUB5alrTs8TTV
2FXC3k01G6Gw61bmprjgqS	1C042FLYy7rP3MfnkOcnha
74KM79TiuVKeVCqs8QtB0B	5G2f63n7IPVPPjfNIGih7Q
74KM79TiuVKeVCqs8QtB0B	2HRqTpkrJO5ggZyyK6NPWz
74KM79TiuVKeVCqs8QtB0B	2tHwzyyOLoWSFqYNjeVMzj
74KM79TiuVKeVCqs8QtB0B	1UHS8Rf6h5Ar3CDWRd3wjF
74KM79TiuVKeVCqs8QtB0B	21B4gaTWnTkuSh77iWEXdS
74KM79TiuVKeVCqs8QtB0B	6dgUya35uo964z7GZXM07g
74KM79TiuVKeVCqs8QtB0B	102YUQbYmwdBXS7jwamI90
74KM79TiuVKeVCqs8QtB0B	2Zo1PcszsT9WQ0ANntJbID
74KM79TiuVKeVCqs8QtB0B	5oIVNm56t6OIf9ZjdEG3ud
74KM79TiuVKeVCqs8QtB0B	3iPIDAFybaoyqX7hvAfWkl
2YZyLoL8N0Wb9xBt1NhZWg	2CGNAOSuO1MEFCbBRgUzjd
2YZyLoL8N0Wb9xBt1NhZWg	0nj9Bq5sHDiTxSHunhgkFb
2YZyLoL8N0Wb9xBt1NhZWg	0aB0v4027ukVziUGwVGYpG
2YZyLoL8N0Wb9xBt1NhZWg	6AI3ezQ4o3HUoP6Dhudph3
2YZyLoL8N0Wb9xBt1NhZWg	5gOfC9UzZQzTyShqPMrpjT
2YZyLoL8N0Wb9xBt1NhZWg	5S8VwnB4sLi6W0lYTWYylu
2YZyLoL8N0Wb9xBt1NhZWg	0RgjEkSbeuStKfT2Pa4Zai
2YZyLoL8N0Wb9xBt1NhZWg	3GCdLUSnKSMJhs4Tj6CV3s
2YZyLoL8N0Wb9xBt1NhZWg	5ho7VSXSmI2KM2nDjcnLyz
3TVXtAsR1Inumwj472S9r4	1zi7xx7UVEFkmKfv06H8x0
3TVXtAsR1Inumwj472S9r4	59nOXPmaKlBfGMDeOVGrIK
3TVXtAsR1Inumwj472S9r4	6DCZcSspjsKoFjzjrWoCdn
3TVXtAsR1Inumwj472S9r4	5mCPDVBb16L4XQwDdbRUpz
3TVXtAsR1Inumwj472S9r4	3F5CgOj3wFlRv51JsHbxhe
3TVXtAsR1Inumwj472S9r4	1eroCliWpJrEu1V7VSObcO
3TVXtAsR1Inumwj472S9r4	1yeB8MUNeLo9Ek1UEpsyz6
3TVXtAsR1Inumwj472S9r4	40iJIUlhi6renaREYGeIDS
3TVXtAsR1Inumwj472S9r4	6n3HGiq4v35D6eFOSwqYuo
3TVXtAsR1Inumwj472S9r4	1560osUcXrnov6yuOjXvc1
7n2Ycct7Beij7Dj7meI4X0	3zhbXKFjUDw40pTYyCgt1Y
7n2Ycct7Beij7Dj7meI4X0	308Ir17KlNdlrbVLHWhlLe
7n2Ycct7Beij7Dj7meI4X0	2qQpFbqqkLOGySgNK8wBXt
7n2Ycct7Beij7Dj7meI4X0	0DanydI1wKqKkKjn0qKoVR
7n2Ycct7Beij7Dj7meI4X0	37ZtpRBkHcaq6hHy0X98zn
7n2Ycct7Beij7Dj7meI4X0	3Hz3tTQwOdM6XkA0ALB2G9
7n2Ycct7Beij7Dj7meI4X0	0RDqNCRBGrSegk16Avfzuq
7n2Ycct7Beij7Dj7meI4X0	7cIn67LEvk16v6komC8znS
7n2Ycct7Beij7Dj7meI4X0	26OVhEqFDQH0Ij77QtmGP9
7n2Ycct7Beij7Dj7meI4X0	5IN9W6eUfk3014My9awagX
3BEV5FcxOtkQJ7lLRKMh3V	2KtGiBi5CrX2ERPD2PAS34
3BEV5FcxOtkQJ7lLRKMh3V	0U4iRayct65wsaBMQGiLbg
3BEV5FcxOtkQJ7lLRKMh3V	119cU5gffLzRlsEGSshPNQ
3BEV5FcxOtkQJ7lLRKMh3V	5KtUilYzUZOvhyrLTlLoXT
3BEV5FcxOtkQJ7lLRKMh3V	24MH7MzHl5XAYlmMdn85CF
3BEV5FcxOtkQJ7lLRKMh3V	2ui7Km7H0UBxGZ3DAsyG3N
3BEV5FcxOtkQJ7lLRKMh3V	4UdvVA89evbBrj6hnDa5oM
3BEV5FcxOtkQJ7lLRKMh3V	3ZtpF25rlCwrLWLI12OCd5
3BEV5FcxOtkQJ7lLRKMh3V	3qppdX325WO677KrczGZrv
3BEV5FcxOtkQJ7lLRKMh3V	7ighoI7pr7eE4r0gyXZwX7
4dpARuHxo51G3z768sgnrY	46IZ0fSY2mpAiktS3KOqds
4dpARuHxo51G3z768sgnrY	73CMRj62VK8nUS4ezD2wvi
4dpARuHxo51G3z768sgnrY	1zwMYTA5nlNjZxYrvBB2pV
4dpARuHxo51G3z768sgnrY	6VObnIkLVruX4UVyxWhlqm
4dpARuHxo51G3z768sgnrY	1c8gk2PeTE04A1pIDH9YMk
4dpARuHxo51G3z768sgnrY	7B5Npv8NjjTCzk8PLpU66h
4dpARuHxo51G3z768sgnrY	7GgWAITsYJaRM3r50rfh5w
4dpARuHxo51G3z768sgnrY	5FgPwJ7Nh2FVmIXviKl2VF
4dpARuHxo51G3z768sgnrY	62PaSfnXSMyLshYJrlTuL3
4dpARuHxo51G3z768sgnrY	56pHllZT7QOacB0bP56ofx
4MCBfE4596Uoi2O4DtmEMz	4VXIryQMWpIdGgYR4TrjT1
4MCBfE4596Uoi2O4DtmEMz	285pBltuF7vW8TeWk8hdRR
4MCBfE4596Uoi2O4DtmEMz	6iaSML1PIYq936g62BDtBq
4MCBfE4596Uoi2O4DtmEMz	3oDkdAySo1VQQG0ptV7uwa
4MCBfE4596Uoi2O4DtmEMz	3wwo0bJvDSorOpNfzEkfXx
4MCBfE4596Uoi2O4DtmEMz	2U5WueTLIK5WJLD7mvDODv
4MCBfE4596Uoi2O4DtmEMz	5wujBwqG7INdStqGd4tRMX
4MCBfE4596Uoi2O4DtmEMz	3Fq192aYDVyTn0DmwdofZm
4MCBfE4596Uoi2O4DtmEMz	15og0pCEcTFWEXOFKdcJlU
4MCBfE4596Uoi2O4DtmEMz	1a7WZZZH7LzyvorhpOJFTe
1Xyo4u8uXC1ZmMpatF05PJ	1Es7AUAhQvapIcoh3qMKDL
4V8LLVI7PbaPR0K2TGSxFF	7KA4W4McWYRpgf0fWsJZWB
4V8LLVI7PbaPR0K2TGSxFF	1QoyuMHNBe7lg3YW4Qtll4
4V8LLVI7PbaPR0K2TGSxFF	3tFed7YsjGnIfxeLEQwx3R
4V8LLVI7PbaPR0K2TGSxFF	6jbYpRPTEFl1HFKHk1IC0m
4V8LLVI7PbaPR0K2TGSxFF	0VaeksJaXy5R1nvcTMh3Xk
4V8LLVI7PbaPR0K2TGSxFF	5RePVWy39tLpHH0WwXgBsK
4V8LLVI7PbaPR0K2TGSxFF	1YdtGoSYDvVQKoUqSDXX41
4V8LLVI7PbaPR0K2TGSxFF	2aYHxnMF2umAavtgBvmkY1
4V8LLVI7PbaPR0K2TGSxFF	35D1RA5uVFVhMc1qX80TaQ
2NjfafEappzvGGGDdMRJMP	5Iq6PtpGJuebUN5gv5tvig
2NjfafEappzvGGGDdMRJMP	5R6Q2E0wC10LDfrLLcKtwD
2NjfafEappzvGGGDdMRJMP	6fcL88TZ5Feq7Rlj2O6sgC
2NjfafEappzvGGGDdMRJMP	3E09FskNEcBwWSnFce7yfw
2NjfafEappzvGGGDdMRJMP	2AlQ9Y9lBRefAw7as1ESSE
2NjfafEappzvGGGDdMRJMP	1ZZ7uKV0hrObw31mVLACmo
2NjfafEappzvGGGDdMRJMP	4MO87XkFlT0lStoqTiA4Ro
2NjfafEappzvGGGDdMRJMP	6OiuR69RVzW7jjzculyZss
7gW0r5CkdEUMm42w9XpyZO	43iIQbw5hx986dUEZbr3eN
7gW0r5CkdEUMm42w9XpyZO	1LmkdWSxjCV7wKTPsCvYWN
7gW0r5CkdEUMm42w9XpyZO	4KGGeE7RJsgLNZmnxGFlOj
7gW0r5CkdEUMm42w9XpyZO	08PdFBcXzpkn1cWNgmKqhn
7gW0r5CkdEUMm42w9XpyZO	6cx5CvFhqN19efStehJqoW
7gW0r5CkdEUMm42w9XpyZO	709p9UGPAuyImWf1Z3vjRo
7gW0r5CkdEUMm42w9XpyZO	180AbZduI6bYQIzwCHRwu9
7gW0r5CkdEUMm42w9XpyZO	4jHl6jgzZOnS4nGamPZ1Uk
7gW0r5CkdEUMm42w9XpyZO	5zHLswJplBXyPstFSSMIOH
7gW0r5CkdEUMm42w9XpyZO	2SPbioo65CuUB3H0aW1ID5
5Gx8P1gIKW3R4Cp2ufHMF6	5MV1fxYLoXAGRqbE9kpF5L
5ZsFI1h6hIdQRw2ti0hz81	3e7sxremeOE3wTySiOhGiP
5ZsFI1h6hIdQRw2ti0hz81	55n9yjI6qqXh5F2mYvUc2y
5ZsFI1h6hIdQRw2ti0hz81	0PDUDa38GO8lMxLCRc4lL1
5ZsFI1h6hIdQRw2ti0hz81	2ez6qvOTHKeI3ss80NGqnI
5ZsFI1h6hIdQRw2ti0hz81	1iWHabUgUuuKLBa0TzTHfk
5ZsFI1h6hIdQRw2ti0hz81	4266h07udCdZ83jswW10IG
5ZsFI1h6hIdQRw2ti0hz81	2cEmWBBlCfR9wWrY9JmTyt
5ZsFI1h6hIdQRw2ti0hz81	6ZHRi0QxzSnlevyhyNkj4a
5ZsFI1h6hIdQRw2ti0hz81	6lvsJDZ7336YmpBzcNGhbe
5ZsFI1h6hIdQRw2ti0hz81	7xUqG3PXz7i8soy6tiWG66
4iHNK0tOyZPYnBU7nGAgpQ	0bYg9bo50gSsH3LtXe2SQn
4iHNK0tOyZPYnBU7nGAgpQ	3IcIIZMMS7UArJJPtEHXG8
4iHNK0tOyZPYnBU7nGAgpQ	3PIDciSFdrQxSQSihim3hN
4iHNK0tOyZPYnBU7nGAgpQ	3LmvfNUQtglbTrydsdIqFU
4iHNK0tOyZPYnBU7nGAgpQ	6xkryXuiZU360Lngd4sx13
4iHNK0tOyZPYnBU7nGAgpQ	0YImOCkIJ2PWhCXaURCZnY
4iHNK0tOyZPYnBU7nGAgpQ	2aBxt229cbLDOvtL7Xbb9x
4iHNK0tOyZPYnBU7nGAgpQ	2aEuXA1KswHlCGPOuPmCOW
74XFHRwlV6OrjEM0A2NCMF	1yjY7rpaAQvKwpdUliHx0d
74XFHRwlV6OrjEM0A2NCMF	6SpLc7EXZIPpy0sVko0aoU
74XFHRwlV6OrjEM0A2NCMF	7JIuqL4ZqkpfGKQhYlrirs
74XFHRwlV6OrjEM0A2NCMF	1Bv3h7Vc4AaYA2BcSM3rVd
74XFHRwlV6OrjEM0A2NCMF	0w5Bdu51Ka25Pf3hojsKHh
74XFHRwlV6OrjEM0A2NCMF	1ZLtE9tSJdaUiIJ9YoKHQe
74XFHRwlV6OrjEM0A2NCMF	1j8z4TTjJ1YOdoFEDwJTQa
74XFHRwlV6OrjEM0A2NCMF	1JdKrFyoU05abww0Zv0ayQ
74XFHRwlV6OrjEM0A2NCMF	47No93LxERvV6MtOAmQzHS
74XFHRwlV6OrjEM0A2NCMF	3VA4sjTMSTTF02hFGmlpJh
1SIocsqdEefUTE6XKGUiVS	198zDKzyktXRG1PGpidY9h
1SIocsqdEefUTE6XKGUiVS	1njlnn8ZKHI77Pe9szIONR
1SIocsqdEefUTE6XKGUiVS	6b6KXDbDn0s0Jepxm8a3nr
1SIocsqdEefUTE6XKGUiVS	0Rq9lIn9fl4wiW9Tg72ifr
1SIocsqdEefUTE6XKGUiVS	7GDgpad2BQVuDUzaxHFakc
1SIocsqdEefUTE6XKGUiVS	3VBj0lzjmhTzVFPEDOjNCG
1SIocsqdEefUTE6XKGUiVS	0QICKhP44TRnb4EurQ3tN9
1SIocsqdEefUTE6XKGUiVS	5Mysty4YeFTdu2Xm7O2yHM
1SIocsqdEefUTE6XKGUiVS	3entdIWiOuQfcXIkJEABsV
1SIocsqdEefUTE6XKGUiVS	7uGZIgNGAM4y7cyLj9SPlw
6qqNVTkY8uBg9cP3Jd7DAH	6dOtVTDdiauQNBQEDOtlAB
6qqNVTkY8uBg9cP3Jd7DAH	3QaPy1KgI7nu9FJEQUgn6h
0Yf2kOVTtWIw0lJsAkfE5s	4SsfCsnDwaxFQqdKQlkobV
0Yf2kOVTtWIw0lJsAkfE5s	04BlRbsGOG1GfUIZP9UYzY
0Yf2kOVTtWIw0lJsAkfE5s	22oHyyevmnxIrcohevWNlB
0Yf2kOVTtWIw0lJsAkfE5s	6XDg8V4Faoti0F353vuJcu
0Yf2kOVTtWIw0lJsAkfE5s	7IFInaUj8WLilemk2q1M8i
0Yf2kOVTtWIw0lJsAkfE5s	1vy6qGRQ43ahIjn2fCNc0t
0Yf2kOVTtWIw0lJsAkfE5s	3itJCcnOgDoMkc62EvN22m
0Yf2kOVTtWIw0lJsAkfE5s	27woCOBiNKM26QqtMNM2fb
0Yf2kOVTtWIw0lJsAkfE5s	4lCjhjpIaDOb8G3pAhPw8L
0Yf2kOVTtWIw0lJsAkfE5s	7giDHQF8IcA9P3xgnwCIfY
5c3GLXai8YOMid29ZEuR9y	4KROoGIaPaR1pBHPnR3bwC
5c3GLXai8YOMid29ZEuR9y	5QUeSXjTMHbq1fW5da2waF
5c3GLXai8YOMid29ZEuR9y	7pdmBld4yW3WIUkrxHyb5r
5c3GLXai8YOMid29ZEuR9y	5ir0VEsMI7cLhN6SEiaKol
5c3GLXai8YOMid29ZEuR9y	6wuekNiL0KqFbvfdwuequN
5c3GLXai8YOMid29ZEuR9y	6meH4I9A4WZtD3z8hnQKqr
5c3GLXai8YOMid29ZEuR9y	66790TBuwlIrGxWWTVc6yl
5c3GLXai8YOMid29ZEuR9y	3Uh7rAb7F0XGVpEEDwfH1k
5c3GLXai8YOMid29ZEuR9y	1drLQNS9D5z9lBP4DbtO2R
5c3GLXai8YOMid29ZEuR9y	4Cg0paoTgxlo2LC85HKaab
2HPaUgqeutzr3jx5a9WyDV	5fEB6ZmVkg63GZg9qO86jh
2HPaUgqeutzr3jx5a9WyDV	35sZOqVnTQNIGWGURrFdLh
2HPaUgqeutzr3jx5a9WyDV	12VH4g5pTMZmrUVzfJq7F7
2HPaUgqeutzr3jx5a9WyDV	5c3luoCub1Z1Gg74NdNtuq
2HPaUgqeutzr3jx5a9WyDV	1zhMHgotgZXkLCXpqNRnPK
2HPaUgqeutzr3jx5a9WyDV	236P5yLtfnHgTMxevc0q6F
2HPaUgqeutzr3jx5a9WyDV	3JEJwjqLkg2Jbau5922CAb
2HPaUgqeutzr3jx5a9WyDV	0NHvTrD8Igke3fawcp3njY
2HPaUgqeutzr3jx5a9WyDV	2d93r7U06Wx7uJfU2q9Nza
2HPaUgqeutzr3jx5a9WyDV	6cEguiQecbXrFlsnMi2ysr
0z4gvV4rjIZ9wHck67ucSV	2kQuhkFX7uSVepCD3h29g5
0z4gvV4rjIZ9wHck67ucSV	4v7DCN09hgXkKazefkznDQ
0z4gvV4rjIZ9wHck67ucSV	5Ravsw8TmHN5wBiYPPYUFw
0z4gvV4rjIZ9wHck67ucSV	0CXVjQI9wsqaGeIARkkpYc
0z4gvV4rjIZ9wHck67ucSV	7I6DceMT3utDOHjcYCbrr4
0z4gvV4rjIZ9wHck67ucSV	0EH7sgeiFqDa3eS7ieW2zs
0z4gvV4rjIZ9wHck67ucSV	48EQasc6XD0pOQtkIOWqOC
0z4gvV4rjIZ9wHck67ucSV	1GLx5tpDdwEFiA7KaikvX2
0z4gvV4rjIZ9wHck67ucSV	61BqwgSRTyWH9M4uPjsC3B
0z4gvV4rjIZ9wHck67ucSV	6uq9QQLcdeUbhe5T7ZUFl4
0du5cEVh5yTK9QJze8zA0C	2plbrEY59IikOBgBGLjaoe
0du5cEVh5yTK9QJze8zA0C	5vNRhkKd0yEAg8suGBpjeY
0du5cEVh5yTK9QJze8zA0C	3w3y8KPTfNeOKPiqUTakBh
0du5cEVh5yTK9QJze8zA0C	7BqBn9nzAq8spo5e7cZ0dJ
0du5cEVh5yTK9QJze8zA0C	0KKkJNfGyhkQ5aFogxQAPU
0du5cEVh5yTK9QJze8zA0C	0nJW01T7XtvILxQgC5J7Wh
0du5cEVh5yTK9QJze8zA0C	2tJulUYLDKOg9XrtVkMgcJ
0du5cEVh5yTK9QJze8zA0C	161DnLWsx1i3u1JT05lzqU
41MozSoPIsD1dJM0CLPjZF	5zwwW9Oq7ubSxoCGyW1nbY
41MozSoPIsD1dJM0CLPjZF	7gRFDGEzF9UkBV233yv2dc
41MozSoPIsD1dJM0CLPjZF	4SFknyjLcyTLJFPKD2m96o
41MozSoPIsD1dJM0CLPjZF	4ZxOuNHhpyOj4gv52MtQpT
41MozSoPIsD1dJM0CLPjZF	6hvczQ05jc1yGlp9zhb95V
41MozSoPIsD1dJM0CLPjZF	4Ws314Ylb27BVsvlZOy30C
41MozSoPIsD1dJM0CLPjZF	7jr3iPu4O4bTCVwLMbdU2i
41MozSoPIsD1dJM0CLPjZF	0L8LOav65XwLjCLS11gNPD
41MozSoPIsD1dJM0CLPjZF	1XnpzbOGptRwfJhZgLbmSr
41MozSoPIsD1dJM0CLPjZF	4lQsB3ERTWSNaAN1IkuNRl
\.


--
-- Name: album album_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.album
    ADD CONSTRAINT album_pkey PRIMARY KEY (album_id);


--
-- Name: albummadeby albummadeby_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.albummadeby
    ADD CONSTRAINT albummadeby_pkey PRIMARY KEY (artist_id, album_id);


--
-- Name: artist artist_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.artist
    ADD CONSTRAINT artist_pkey PRIMARY KEY (artist_id);


--
-- Name: track track_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.track
    ADD CONSTRAINT track_pkey PRIMARY KEY (track_id);


--
-- Name: trackmadeby trackmadeby_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trackmadeby
    ADD CONSTRAINT trackmadeby_pkey PRIMARY KEY (artist_id, track_id);


--
-- Name: albummadeby albummadeby_album_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.albummadeby
    ADD CONSTRAINT albummadeby_album_id_fkey FOREIGN KEY (album_id) REFERENCES public.album(album_id);


--
-- Name: albummadeby albummadeby_artist_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.albummadeby
    ADD CONSTRAINT albummadeby_artist_id_fkey FOREIGN KEY (artist_id) REFERENCES public.artist(artist_id);


--
-- Name: track track_album_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.track
    ADD CONSTRAINT track_album_id_fkey FOREIGN KEY (album_id) REFERENCES public.album(album_id) ON DELETE SET NULL;


--
-- Name: trackmadeby trackmadeby_artist_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trackmadeby
    ADD CONSTRAINT trackmadeby_artist_id_fkey FOREIGN KEY (artist_id) REFERENCES public.artist(artist_id);


--
-- Name: trackmadeby trackmadeby_track_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trackmadeby
    ADD CONSTRAINT trackmadeby_track_id_fkey FOREIGN KEY (track_id) REFERENCES public.track(track_id);


--
-- PostgreSQL database dump complete
--

