--
-- PostgreSQL database dump
--

-- Dumped from database version 12.8 (Ubuntu 12.8-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.8 (Ubuntu 12.8-0ubuntu0.20.04.1)

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
-- Name: migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    "timestamp" bigint NOT NULL,
    name character varying NOT NULL
);


--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: pokemons; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pokemons (
    id integer NOT NULL,
    name character varying NOT NULL,
    number integer NOT NULL,
    image character varying NOT NULL,
    weight integer NOT NULL,
    height integer NOT NULL,
    "baseExp" integer NOT NULL,
    description character varying NOT NULL,
    "inMyPokemons" boolean NOT NULL
);


--
-- Name: pokemons_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pokemons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pokemons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pokemons_id_seq OWNED BY public.pokemons.id;


--
-- Name: sessions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sessions (
    id integer NOT NULL,
    token character varying NOT NULL,
    "userId" integer NOT NULL
);


--
-- Name: sessions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.sessions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sessions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.sessions_id_seq OWNED BY public.sessions.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id integer NOT NULL,
    email character varying NOT NULL,
    password character varying NOT NULL
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- Name: pokemons id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pokemons ALTER COLUMN id SET DEFAULT nextval('public.pokemons_id_seq'::regclass);


--
-- Name: sessions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sessions ALTER COLUMN id SET DEFAULT nextval('public.sessions_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.migrations VALUES (1, 1629141061919, 'usersAndSessions1629141061919');
INSERT INTO public.migrations VALUES (2, 1629213231446, 'pokemons1629213231446');


--
-- Data for Name: pokemons; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pokemons VALUES (1, 'bulbasaur', 1, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/1.png', 69, 7, 64, 'overgrow, chlorophyll', false);
INSERT INTO public.pokemons VALUES (2, 'ivysaur', 2, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/2.png', 130, 10, 142, 'overgrow, chlorophyll', false);
INSERT INTO public.pokemons VALUES (3, 'venusaur', 3, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/3.png', 1000, 20, 236, 'overgrow, chlorophyll', false);
INSERT INTO public.pokemons VALUES (4, 'charmander', 5, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/4.png', 85, 6, 62, 'blaze, solar-power', false);
INSERT INTO public.pokemons VALUES (5, 'charmeleon', 6, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/5.png', 190, 11, 142, 'blaze, solar-power', false);
INSERT INTO public.pokemons VALUES (6, 'charizard', 7, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/6.png', 905, 17, 240, 'blaze, solar-power', false);
INSERT INTO public.pokemons VALUES (7, 'squirtle', 10, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/7.png', 90, 5, 63, 'torrent, rain-dish', false);
INSERT INTO public.pokemons VALUES (8, 'wartortle', 11, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/8.png', 225, 10, 142, 'torrent, rain-dish', false);
INSERT INTO public.pokemons VALUES (9, 'blastoise', 12, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/9.png', 855, 16, 239, 'torrent, rain-dish', false);
INSERT INTO public.pokemons VALUES (10, 'caterpie', 14, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/10.png', 29, 3, 39, 'shield-dust, run-away', false);
INSERT INTO public.pokemons VALUES (11, 'metapod', 15, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/11.png', 99, 7, 72, 'shed-skin', false);
INSERT INTO public.pokemons VALUES (12, 'butterfree', 16, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/12.png', 320, 11, 178, 'compound-eyes, tinted-lens', false);
INSERT INTO public.pokemons VALUES (13, 'weedle', 17, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/13.png', 32, 3, 39, 'shield-dust, run-away', false);
INSERT INTO public.pokemons VALUES (14, 'kakuna', 18, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/14.png', 100, 6, 72, 'shed-skin', false);
INSERT INTO public.pokemons VALUES (15, 'beedrill', 19, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/15.png', 295, 10, 178, 'swarm, sniper', false);
INSERT INTO public.pokemons VALUES (16, 'pidgey', 21, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/16.png', 18, 3, 50, 'keen-eye, tangled-feet, big-pecks', false);
INSERT INTO public.pokemons VALUES (17, 'pidgeotto', 22, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/17.png', 300, 11, 122, 'keen-eye, tangled-feet, big-pecks', false);
INSERT INTO public.pokemons VALUES (18, 'pidgeot', 23, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/18.png', 395, 15, 216, 'keen-eye, tangled-feet, big-pecks', false);
INSERT INTO public.pokemons VALUES (20, 'raticate', 27, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/20.png', 185, 7, 145, 'run-away, guts, hustle', false);
INSERT INTO public.pokemons VALUES (21, 'spearow', 30, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/21.png', 20, 3, 52, 'keen-eye, sniper', false);
INSERT INTO public.pokemons VALUES (22, 'fearow', 31, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/22.png', 380, 12, 155, 'keen-eye, sniper', false);
INSERT INTO public.pokemons VALUES (23, 'ekans', 32, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/23.png', 69, 20, 58, 'intimidate, shed-skin, unnerve', false);
INSERT INTO public.pokemons VALUES (24, 'arbok', 33, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/24.png', 650, 35, 157, 'intimidate, shed-skin, unnerve', false);
INSERT INTO public.pokemons VALUES (25, 'pikachu', 35, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png', 60, 4, 112, 'static, lightning-rod', false);
INSERT INTO public.pokemons VALUES (26, 'raichu', 49, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/26.png', 300, 8, 218, 'static, lightning-rod', false);
INSERT INTO public.pokemons VALUES (27, 'sandshrew', 51, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/27.png', 120, 6, 60, 'sand-veil, sand-rush', false);
INSERT INTO public.pokemons VALUES (28, 'sandslash', 53, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/28.png', 295, 10, 158, 'sand-veil, sand-rush', false);
INSERT INTO public.pokemons VALUES (29, 'nidoran-f', 55, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/29.png', 70, 4, 55, 'poison-point, rivalry, hustle', false);
INSERT INTO public.pokemons VALUES (30, 'nidorina', 56, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/30.png', 200, 8, 128, 'poison-point, rivalry, hustle', false);
INSERT INTO public.pokemons VALUES (31, 'nidoqueen', 57, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/31.png', 600, 13, 227, 'poison-point, rivalry, sheer-force', false);
INSERT INTO public.pokemons VALUES (32, 'nidoran-m', 58, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/32.png', 90, 5, 55, 'poison-point, rivalry, hustle', false);
INSERT INTO public.pokemons VALUES (33, 'nidorino', 59, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/33.png', 195, 9, 128, 'poison-point, rivalry, hustle', false);
INSERT INTO public.pokemons VALUES (34, 'nidoking', 60, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/34.png', 620, 14, 227, 'poison-point, rivalry, sheer-force', false);
INSERT INTO public.pokemons VALUES (35, 'clefairy', 62, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/35.png', 75, 6, 113, 'cute-charm, magic-guard, friend-guard', false);
INSERT INTO public.pokemons VALUES (36, 'clefable', 63, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/36.png', 400, 13, 217, 'cute-charm, magic-guard, unaware', false);
INSERT INTO public.pokemons VALUES (37, 'vulpix', 64, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/37.png', 99, 6, 60, 'flash-fire, drought', false);
INSERT INTO public.pokemons VALUES (38, 'ninetales', 66, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/38.png', 199, 11, 177, 'flash-fire, drought', false);
INSERT INTO public.pokemons VALUES (39, 'jigglypuff', 69, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/39.png', 55, 5, 95, 'cute-charm, competitive, friend-guard', false);
INSERT INTO public.pokemons VALUES (40, 'wigglytuff', 70, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/40.png', 120, 10, 196, 'cute-charm, competitive, frisk', false);
INSERT INTO public.pokemons VALUES (41, 'zubat', 71, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/41.png', 75, 8, 49, 'inner-focus, infiltrator', false);
INSERT INTO public.pokemons VALUES (42, 'golbat', 72, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/42.png', 550, 16, 159, 'inner-focus, infiltrator', false);
INSERT INTO public.pokemons VALUES (43, 'oddish', 74, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/43.png', 54, 5, 64, 'chlorophyll, run-away', false);
INSERT INTO public.pokemons VALUES (44, 'gloom', 75, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/44.png', 86, 8, 138, 'chlorophyll, stench', false);
INSERT INTO public.pokemons VALUES (45, 'vileplume', 76, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/45.png', 186, 12, 221, 'chlorophyll, effect-spore', false);
INSERT INTO public.pokemons VALUES (46, 'paras', 78, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/46.png', 54, 3, 57, 'effect-spore, dry-skin, damp', false);
INSERT INTO public.pokemons VALUES (47, 'parasect', 79, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/47.png', 295, 10, 142, 'effect-spore, dry-skin, damp', false);
INSERT INTO public.pokemons VALUES (48, 'venonat', 80, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/48.png', 300, 10, 61, 'compound-eyes, tinted-lens, run-away', false);
INSERT INTO public.pokemons VALUES (49, 'venomoth', 81, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/49.png', 125, 15, 158, 'shield-dust, tinted-lens, wonder-skin', false);
INSERT INTO public.pokemons VALUES (50, 'diglett', 82, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/50.png', 8, 2, 53, 'sand-veil, arena-trap, sand-force', false);
INSERT INTO public.pokemons VALUES (51, 'dugtrio', 84, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/51.png', 333, 7, 149, 'sand-veil, arena-trap, sand-force', false);
INSERT INTO public.pokemons VALUES (52, 'meowth', 86, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/52.png', 42, 4, 58, 'pickup, technician, unnerve', false);
INSERT INTO public.pokemons VALUES (53, 'persian', 88, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/53.png', 320, 10, 154, 'limber, technician, unnerve', false);
INSERT INTO public.pokemons VALUES (54, 'psyduck', 90, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/54.png', 196, 8, 64, 'damp, cloud-nine, swift-swim', false);
INSERT INTO public.pokemons VALUES (55, 'golduck', 91, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/55.png', 766, 17, 175, 'damp, cloud-nine, swift-swim', false);
INSERT INTO public.pokemons VALUES (56, 'mankey', 92, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/56.png', 280, 5, 61, 'vital-spirit, anger-point, defiant', false);
INSERT INTO public.pokemons VALUES (57, 'primeape', 93, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/57.png', 320, 10, 159, 'vital-spirit, anger-point, defiant', false);
INSERT INTO public.pokemons VALUES (58, 'growlithe', 94, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/58.png', 190, 7, 70, 'intimidate, flash-fire, justified', false);
INSERT INTO public.pokemons VALUES (59, 'arcanine', 95, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/59.png', 1550, 19, 194, 'intimidate, flash-fire, justified', false);
INSERT INTO public.pokemons VALUES (60, 'poliwag', 96, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/60.png', 124, 6, 60, 'water-absorb, damp, swift-swim', false);
INSERT INTO public.pokemons VALUES (61, 'poliwhirl', 97, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/61.png', 200, 10, 135, 'water-absorb, damp, swift-swim', false);
INSERT INTO public.pokemons VALUES (62, 'poliwrath', 98, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/62.png', 540, 13, 230, 'water-absorb, damp, swift-swim', false);
INSERT INTO public.pokemons VALUES (63, 'abra', 100, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/63.png', 195, 9, 62, 'synchronize, inner-focus, magic-guard', false);
INSERT INTO public.pokemons VALUES (64, 'kadabra', 101, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/64.png', 565, 13, 140, 'synchronize, inner-focus, magic-guard', false);
INSERT INTO public.pokemons VALUES (65, 'alakazam', 102, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/65.png', 480, 15, 225, 'synchronize, inner-focus, magic-guard', false);
INSERT INTO public.pokemons VALUES (66, 'machop', 104, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/66.png', 195, 8, 61, 'guts, no-guard, steadfast', false);
INSERT INTO public.pokemons VALUES (67, 'machoke', 105, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/67.png', 705, 15, 142, 'guts, no-guard, steadfast', false);
INSERT INTO public.pokemons VALUES (68, 'machamp', 106, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/68.png', 1300, 16, 227, 'guts, no-guard, steadfast', false);
INSERT INTO public.pokemons VALUES (69, 'bellsprout', 107, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/69.png', 40, 7, 60, 'chlorophyll, gluttony', false);
INSERT INTO public.pokemons VALUES (70, 'weepinbell', 108, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/70.png', 64, 10, 137, 'chlorophyll, gluttony', false);
INSERT INTO public.pokemons VALUES (71, 'victreebel', 109, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/71.png', 155, 17, 221, 'chlorophyll, gluttony', false);
INSERT INTO public.pokemons VALUES (72, 'tentacool', 110, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/72.png', 455, 9, 67, 'clear-body, liquid-ooze, rain-dish', false);
INSERT INTO public.pokemons VALUES (73, 'tentacruel', 111, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/73.png', 550, 16, 180, 'clear-body, liquid-ooze, rain-dish', false);
INSERT INTO public.pokemons VALUES (74, 'geodude', 112, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/74.png', 200, 4, 60, 'rock-head, sturdy, sand-veil', false);
INSERT INTO public.pokemons VALUES (75, 'graveler', 114, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/75.png', 1050, 10, 137, 'rock-head, sturdy, sand-veil', false);
INSERT INTO public.pokemons VALUES (76, 'golem', 116, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/76.png', 3000, 14, 223, 'rock-head, sturdy, sand-veil', false);
INSERT INTO public.pokemons VALUES (77, 'ponyta', 118, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/77.png', 300, 10, 82, 'run-away, flash-fire, flame-body', false);
INSERT INTO public.pokemons VALUES (78, 'rapidash', 119, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/78.png', 950, 17, 175, 'run-away, flash-fire, flame-body', false);
INSERT INTO public.pokemons VALUES (79, 'slowpoke', 120, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/79.png', 360, 12, 63, 'oblivious, own-tempo, regenerator', false);
INSERT INTO public.pokemons VALUES (80, 'slowbro', 121, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/80.png', 785, 16, 172, 'oblivious, own-tempo, regenerator', false);
INSERT INTO public.pokemons VALUES (81, 'magnemite', 124, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/81.png', 60, 3, 65, 'magnet-pull, sturdy, analytic', false);
INSERT INTO public.pokemons VALUES (82, 'magneton', 125, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/82.png', 600, 10, 163, 'magnet-pull, sturdy, analytic', false);
INSERT INTO public.pokemons VALUES (83, 'farfetchd', 127, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/83.png', 150, 8, 132, 'keen-eye, inner-focus, defiant', false);
INSERT INTO public.pokemons VALUES (84, 'doduo', 128, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/84.png', 392, 14, 62, 'run-away, early-bird, tangled-feet', false);
INSERT INTO public.pokemons VALUES (85, 'dodrio', 129, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/85.png', 852, 18, 165, 'run-away, early-bird, tangled-feet', false);
INSERT INTO public.pokemons VALUES (86, 'seel', 130, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/86.png', 900, 11, 65, 'thick-fat, hydration, ice-body', false);
INSERT INTO public.pokemons VALUES (87, 'dewgong', 131, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/87.png', 1200, 17, 166, 'thick-fat, hydration, ice-body', false);
INSERT INTO public.pokemons VALUES (88, 'grimer', 132, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/88.png', 300, 9, 65, 'stench, sticky-hold, poison-touch', false);
INSERT INTO public.pokemons VALUES (89, 'muk', 134, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/89.png', 300, 12, 175, 'stench, sticky-hold, poison-touch', false);
INSERT INTO public.pokemons VALUES (90, 'shellder', 136, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/90.png', 40, 3, 61, 'shell-armor, skill-link, overcoat', false);
INSERT INTO public.pokemons VALUES (91, 'cloyster', 137, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/91.png', 1325, 15, 184, 'shell-armor, skill-link, overcoat', false);
INSERT INTO public.pokemons VALUES (92, 'gastly', 138, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/92.png', 1, 13, 62, 'levitate', false);
INSERT INTO public.pokemons VALUES (93, 'haunter', 139, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/93.png', 1, 16, 142, 'levitate', false);
INSERT INTO public.pokemons VALUES (94, 'gengar', 140, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/94.png', 405, 15, 225, 'cursed-body', false);
INSERT INTO public.pokemons VALUES (95, 'onix', 142, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/95.png', 2100, 88, 77, 'rock-head, sturdy, weak-armor', false);
INSERT INTO public.pokemons VALUES (96, 'drowzee', 145, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/96.png', 324, 10, 66, 'insomnia, forewarn, inner-focus', false);
INSERT INTO public.pokemons VALUES (97, 'hypno', 146, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/97.png', 756, 16, 169, 'insomnia, forewarn, inner-focus', false);
INSERT INTO public.pokemons VALUES (98, 'krabby', 147, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/98.png', 65, 4, 65, 'hyper-cutter, shell-armor, sheer-force', false);
INSERT INTO public.pokemons VALUES (99, 'kingler', 148, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/99.png', 600, 13, 166, 'hyper-cutter, shell-armor, sheer-force', false);
INSERT INTO public.pokemons VALUES (100, 'voltorb', 149, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/100.png', 104, 5, 66, 'soundproof, static, aftermath', false);
INSERT INTO public.pokemons VALUES (19, 'rattata', 25, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/19.png', 35, 3, 51, 'run-away, guts, hustle', false);


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.sessions VALUES (3, 'f34dbbcc-ece8-4d54-93b4-a6bba44ca783', 1);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.users VALUES (1, 'fulano@email.com', '$2b$10$/ZTxN6iPOeoNBorfCepWXOZbPFd/LbGAeqCfFBkg/DTPln3cG.0yS');


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.migrations_id_seq', 2, true);


--
-- Name: pokemons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pokemons_id_seq', 100, true);


--
-- Name: sessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.sessions_id_seq', 3, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- Name: sessions PK_3238ef96f18b355b671619111bc; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT "PK_3238ef96f18b355b671619111bc" PRIMARY KEY (id);


--
-- Name: migrations PK_8c82d7f526340ab734260ea46be; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT "PK_8c82d7f526340ab734260ea46be" PRIMARY KEY (id);


--
-- Name: pokemons PK_a3172290413af616d9cfa1fdc9a; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pokemons
    ADD CONSTRAINT "PK_a3172290413af616d9cfa1fdc9a" PRIMARY KEY (id);


--
-- Name: users PK_a3ffb1c0c8416b9fc6f907b7433; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT "PK_a3ffb1c0c8416b9fc6f907b7433" PRIMARY KEY (id);


--
-- Name: sessions REL_57de40bc620f456c7311aa3a1e; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT "REL_57de40bc620f456c7311aa3a1e" UNIQUE ("userId");


--
-- Name: sessions FK_57de40bc620f456c7311aa3a1e6; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT "FK_57de40bc620f456c7311aa3a1e6" FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

