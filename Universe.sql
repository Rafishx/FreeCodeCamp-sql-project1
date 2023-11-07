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
-- Name: fun_fact; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.fun_fact (
    fun_fact_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255) NOT NULL,
    truth boolean
);


ALTER TABLE public.fun_fact OWNER TO freecodecamp;

--
-- Name: fun_fact_fun_fact_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.fun_fact_fun_fact_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fun_fact_fun_fact_id_seq OWNER TO freecodecamp;

--
-- Name: fun_fact_fun_fact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.fun_fact_fun_fact_id_seq OWNED BY public.fun_fact.fun_fact_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    age_in_millions_of_years integer,
    galaxy_type text,
    has_life boolean,
    is_spherical boolean,
    num numeric
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255) NOT NULL,
    age_in_millions_of_years integer,
    moon_type text,
    has_life boolean,
    planet_id integer,
    num numeric
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
    name character varying(255) NOT NULL,
    age_in_millions_of_years integer,
    planet_type text,
    has_life boolean,
    star_id integer,
    num numeric
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
    name character varying(255) NOT NULL,
    age_in_millions_of_years integer,
    star_type text,
    has_life boolean,
    galaxy_id integer,
    num numeric
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
-- Name: fun_fact fun_fact_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fun_fact ALTER COLUMN fun_fact_id SET DEFAULT nextval('public.fun_fact_fun_fact_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


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
-- Data for Name: fun_fact; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.fun_fact VALUES (1, 'The Sun is big!', 'The Sun is a massive ball of hot gas in the center of our solar system.', true);
INSERT INTO public.fun_fact VALUES (2, 'Earth is round', 'Despite early beliefs, Earth is an oblate spheroid, not flat.', true);
INSERT INTO public.fun_fact VALUES (3, 'Moon landing', 'Apollo 11 was the first mission to successfully land humans on the Moon in 1969.', true);
INSERT INTO public.fun_fact VALUES (4, 'The Great Wall of China', 'The Great Wall of China is not visible from space without aid.', false);
INSERT INTO public.fun_fact VALUES (5, 'Water on Mars', 'Evidence suggests that liquid water exists on Mars, which is exciting for potential life.', true);
INSERT INTO public.fun_fact VALUES (6, 'Black Holes', 'Black holes are regions in space with gravitational forces so strong that nothing can escape, not even light.', true);
INSERT INTO public.fun_fact VALUES (7, 'Dinosaurs Extinction', 'The most widely accepted theory is that a comet or asteroid impact caused the mass extinction of dinosaurs.', true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13000, 'Spiral', false, true, 1);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 22000, 'Spiral', false, true, 1);
INSERT INTO public.galaxy VALUES (3, 'Sombrero', 10000, 'Spiral', false, true, 1);
INSERT INTO public.galaxy VALUES (4, 'Triangulum', 12000, 'Spiral', false, true, 1);
INSERT INTO public.galaxy VALUES (5, 'Pinwheel', 13000, 'Spiral', false, true, 1);
INSERT INTO public.galaxy VALUES (6, 'Bode''s', 15000, 'Irregular', false, false, 1);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (32, 'Ganymede', 4500, 'Natural', false, 4, 1);
INSERT INTO public.moon VALUES (33, 'Callisto', 4500, 'Natural', false, 4, 1);
INSERT INTO public.moon VALUES (34, 'Luna', 4500, 'Natural', false, 1, 1);
INSERT INTO public.moon VALUES (35, 'Charon', 4500, 'Natural', false, 7, 1);
INSERT INTO public.moon VALUES (36, 'Phoebe', 4500, 'Natural', false, 8, 1);
INSERT INTO public.moon VALUES (37, 'Mimas', 4500, 'Natural', false, 8, 1);
INSERT INTO public.moon VALUES (38, 'Oberon', 4500, 'Natural', false, 9, 1);
INSERT INTO public.moon VALUES (39, 'Enceladus', 4500, 'Natural', false, 8, 1);
INSERT INTO public.moon VALUES (40, 'Hyperion', 4500, 'Natural', false, 8, 1);
INSERT INTO public.moon VALUES (41, 'Rhea', 4500, 'Natural', false, 8, 1);
INSERT INTO public.moon VALUES (42, 'Europa', 4500, 'Natural', false, 10, 1);
INSERT INTO public.moon VALUES (43, 'Prometheus', 4500, 'Natural', false, 8, 1);
INSERT INTO public.moon VALUES (44, 'Dione', 4500, 'Natural', false, 8, 1);
INSERT INTO public.moon VALUES (60, 'Iapetus', 4500, 'Natural', false, 8, 1);
INSERT INTO public.moon VALUES (61, 'Umbriel', 4500, 'Natural', false, 9, 1);
INSERT INTO public.moon VALUES (62, 'Ariel', 4500, 'Natural', false, 9, 1);
INSERT INTO public.moon VALUES (63, 'Miranda', 4500, 'Natural', false, 9, 1);
INSERT INTO public.moon VALUES (64, 'Caliban', 4500, 'Natural', false, 10, 1);
INSERT INTO public.moon VALUES (65, 'Sycorax', 4500, 'Natural', false, 10, 1);
INSERT INTO public.moon VALUES (66, 'Prospero', 4500, 'Natural', false, 10, 1);
INSERT INTO public.moon VALUES (67, 'Setebos', 4500, 'Natural', false, 10, 1);
INSERT INTO public.moon VALUES (68, 'Ferdinand', 4500, 'Natural', false, 10, 1);
INSERT INTO public.moon VALUES (69, 'Pandora', 4500, 'Natural', false, 11, 1);
INSERT INTO public.moon VALUES (70, 'Pan', 4500, 'Natural', false, 11, 1);
INSERT INTO public.moon VALUES (71, 'Atlas', 4500, 'Natural', false, 11, 1);
INSERT INTO public.moon VALUES (72, 'Epimetheus', 4500, 'Natural', false, 11, 1);
INSERT INTO public.moon VALUES (73, 'Janus', 4500, 'Natural', false, 11, 1);
INSERT INTO public.moon VALUES (74, 'Methone', 4500, 'Natural', false, 11, 1);
INSERT INTO public.moon VALUES (75, 'Telesto', 4500, 'Natural', false, 11, 1);
INSERT INTO public.moon VALUES (76, 'Calypso', 4500, 'Natural', false, 11, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 4500, 'Terrestrial', true, 1, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 4500, 'Terrestrial', false, 1, 1);
INSERT INTO public.planet VALUES (3, 'Venus', 4500, 'Terrestrial', false, 1, 1);
INSERT INTO public.planet VALUES (4, 'Jupiter', 4500, 'Gas Giant', false, 2, 1);
INSERT INTO public.planet VALUES (5, 'Saturn', 4500, 'Gas Giant', false, 2, 1);
INSERT INTO public.planet VALUES (6, 'Neptune', 4500, 'Ice Giant', false, 2, 1);
INSERT INTO public.planet VALUES (7, 'Pluto', 4500, 'Dwarf', false, 3, 1);
INSERT INTO public.planet VALUES (8, 'Mercury', 4500, 'Terrestrial', false, 4, 1);
INSERT INTO public.planet VALUES (9, 'Uranus', 4500, 'Ice Giant', false, 4, 1);
INSERT INTO public.planet VALUES (10, 'Kepler-186f', 4500, 'Exoplanet', false, 5, 1);
INSERT INTO public.planet VALUES (11, 'Gliese 581c', 4500, 'Exoplanet', false, 5, 1);
INSERT INTO public.planet VALUES (12, 'HD 209458 b', 4500, 'Exoplanet', false, 6, 1);
INSERT INTO public.planet VALUES (13, 'Proxima Centauri b', 4500, 'Exoplanet', false, 6, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4600, 'G-type', false, 1, 1);
INSERT INTO public.star VALUES (2, 'Alpha Centauri A', 6000, 'G-type', false, 1, 1);
INSERT INTO public.star VALUES (3, 'Sirius', 230, 'A-type', false, 1, 1);
INSERT INTO public.star VALUES (4, 'Vega', 360, 'A-type', false, 1, 1);
INSERT INTO public.star VALUES (5, 'Polaris', 70, 'F-type', false, 1, 1);
INSERT INTO public.star VALUES (6, 'Betelgeuse', 10000, 'M-type', false, 2, 1);


--
-- Name: fun_fact_fun_fact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.fun_fact_fun_fact_id_seq', 7, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 76, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: fun_fact fun_fact_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fun_fact
    ADD CONSTRAINT fun_fact_name_key UNIQUE (name);


--
-- Name: fun_fact fun_fact_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fun_fact
    ADD CONSTRAINT fun_fact_pkey PRIMARY KEY (fun_fact_id);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

