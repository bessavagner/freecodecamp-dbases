--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    emperor character varying(20) NOT NULL,
    kingdom_id integer,
    type character varying(15)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: kingdom; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.kingdom (
    kingdom_id integer NOT NULL,
    name character varying(20) NOT NULL,
    king character varying(10) NOT NULL,
    description text
);


ALTER TABLE public.kingdom OWNER TO freecodecamp;

--
-- Name: kingdom_kingdom_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.kingdom_kingdom_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.kingdom_kingdom_id_seq OWNER TO freecodecamp;

--
-- Name: kingdom_kingdom_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.kingdom_kingdom_id_seq OWNED BY public.kingdom.kingdom_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    type character varying(20),
    planet_id integer,
    tech_level integer,
    size numeric(9,2)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    has_life boolean,
    star_id integer,
    tech_level integer,
    size numeric(9,2)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    galaxy_id integer NOT NULL,
    is_system boolean,
    class character varying(15)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: kingdom kingdom_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.kingdom ALTER COLUMN kingdom_id SET DEFAULT nextval('public.kingdom_kingdom_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Thanos', 'Gamora', 1, 'Military');
INSERT INTO public.galaxy VALUES (2, 'Alderon', 'Tivan', 1, 'Enterpernuour');
INSERT INTO public.galaxy VALUES (3, 'Sokoia', 'Barat', 1, 'Farmer');
INSERT INTO public.galaxy VALUES (4, 'Kahmar Taj', 'Dr. Strange', 2, 'Technological');
INSERT INTO public.galaxy VALUES (6, 'Prime', 'Ultron', 2, 'Research');
INSERT INTO public.galaxy VALUES (5, 'Noir', 'Venon', 2, 'Military');


--
-- Data for Name: kingdom; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.kingdom VALUES (1, 'Ultimate Realm', 'Dr. Doom', 'Last source of real power');
INSERT INTO public.kingdom VALUES (2, 'Dominance', 'Khang', 'Where time and space merges');
INSERT INTO public.kingdom VALUES (3, 'Void', 'Galactus', 'There is nothing left but he');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Nova 1', 'Artificial', 1, 87, 12398.00);
INSERT INTO public.moon VALUES (2, 'Nova 2', 'Artiicial', 1, 56, 12308.00);
INSERT INTO public.moon VALUES (3, 'Toon', 'Natural', 2, 0, 12329.00);
INSERT INTO public.moon VALUES (4, 'Lo 1', 'Artificial', 3, 87, 12398.00);
INSERT INTO public.moon VALUES (5, 'Lo 2', 'Artiicial', 3, 56, 12308.00);
INSERT INTO public.moon VALUES (6, 'Toony', 'Natural', 2, 0, 12329.00);
INSERT INTO public.moon VALUES (7, 'Y 1', 'Artificial', 6, 87, 12398.00);
INSERT INTO public.moon VALUES (8, 'Io 2', 'Artiicial', 4, 56, 12308.00);
INSERT INTO public.moon VALUES (9, 'Ny', 'Natural', 5, 0, 12329.00);
INSERT INTO public.moon VALUES (10, 'Kan', 'Artificial', 7, 87, 12398.00);
INSERT INTO public.moon VALUES (11, 'Ini 2', 'Artiicial', 8, 56, 12308.00);
INSERT INTO public.moon VALUES (12, 'M89', 'Natural', 9, 0, 12329.00);
INSERT INTO public.moon VALUES (16, 'Nn', 'Artificial', 11, 87, 12398.00);
INSERT INTO public.moon VALUES (17, 'Mf1', 'Artiicial', 12, 56, 12308.00);
INSERT INTO public.moon VALUES (18, 'KG78', 'Natural', 12, 0, 12329.00);
INSERT INTO public.moon VALUES (19, 'Mmno', 'Artificial', 11, 87, 12398.00);
INSERT INTO public.moon VALUES (20, 'M', 'Artiicial', 12, 56, 12308.00);
INSERT INTO public.moon VALUES (21, 'Ko', 'Natural', 12, 0, 12329.00);
INSERT INTO public.moon VALUES (23, 'Iota', 'Artificial', 1, 87, 12398.00);
INSERT INTO public.moon VALUES (24, 'Lom', 'Artiicial', 10, 56, 12308.00);
INSERT INTO public.moon VALUES (25, 'Ko2', 'Natural', 11, 0, 12329.00);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Nova', true, 2, 105, 120390.40);
INSERT INTO public.planet VALUES (2, 'Eli', true, 6, 45, 1234.90);
INSERT INTO public.planet VALUES (3, 'Ellen', true, 6, 56, 23232.60);
INSERT INTO public.planet VALUES (4, 'Honn', true, 7, 78, 123809.78);
INSERT INTO public.planet VALUES (5, 'Ely', false, 7, 0, 232.00);
INSERT INTO public.planet VALUES (6, 'Haisten', true, 10, 66, 32443.70);
INSERT INTO public.planet VALUES (7, 'El', true, 11, 12, 10234.90);
INSERT INTO public.planet VALUES (8, 'Kyn', true, 13, 67, 230232.60);
INSERT INTO public.planet VALUES (9, 'Ynn', false, 13, 0, 1809.78);
INSERT INTO public.planet VALUES (10, 'Yonn', true, 13, 34, 232000.00);
INSERT INTO public.planet VALUES (11, 'Sty', true, 14, 56, 443.70);
INSERT INTO public.planet VALUES (12, 'Lars', true, 15, 567, 345674.90);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'M023', 1, false, '');
INSERT INTO public.star VALUES (2, 'Nova Sun', 1, true, 'red');
INSERT INTO public.star VALUES (3, 'M024', 1, false, '');
INSERT INTO public.star VALUES (4, 'M025', 1, false, '');
INSERT INTO public.star VALUES (5, 'K-12', 2, false, '');
INSERT INTO public.star VALUES (6, 'Biron', 2, true, 'white');
INSERT INTO public.star VALUES (7, 'Banner', 2, true, 'red');
INSERT INTO public.star VALUES (8, 'KG-7', 2, false, '');
INSERT INTO public.star VALUES (9, '1280-9', 3, false, '');
INSERT INTO public.star VALUES (10, 'Palmer', 3, true, 'orange');
INSERT INTO public.star VALUES (11, 'Baxton', 3, true, 'red');
INSERT INTO public.star VALUES (12, 'Z-321', 4, false, '');
INSERT INTO public.star VALUES (13, 'Z-0', 4, true, 'red');
INSERT INTO public.star VALUES (14, 'Z-1', 4, true, 'red');
INSERT INTO public.star VALUES (16, 'pluto', 5, true, 'red');
INSERT INTO public.star VALUES (15, 'mobius', 5, true, 'neutron');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: kingdom_kingdom_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.kingdom_kingdom_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 25, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 16, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: kingdom kingdom_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.kingdom
    ADD CONSTRAINT kingdom_name_key UNIQUE (name);


--
-- Name: kingdom kingdom_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.kingdom
    ADD CONSTRAINT kingdom_pkey PRIMARY KEY (kingdom_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy kingdom; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT kingdom FOREIGN KEY (kingdom_id) REFERENCES public.kingdom(kingdom_id);


--
-- Name: moon planet_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_moon FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: planet star_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_planet FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

