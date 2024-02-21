--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    name character varying(30),
    mass numeric(4,1) NOT NULL,
    size integer NOT NULL,
    population text,
    isreal boolean
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
    name character varying(30),
    radius integer NOT NULL,
    mass integer NOT NULL,
    planet_id integer
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
    name character varying(30),
    size integer NOT NULL,
    temperature integer NOT NULL,
    atmosphere boolean,
    star_id integer
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
    name character varying(30),
    brightness integer NOT NULL,
    temperature integer NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_discoverer; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star_discoverer (
    star_discoverer_id integer NOT NULL,
    star_id integer NOT NULL,
    name character varying(30),
    year integer NOT NULL
);


ALTER TABLE public.star_discoverer OWNER TO freecodecamp;

--
-- Name: star_discoverer_star_discoverer_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_discoverer_star_discoverer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_discoverer_star_discoverer_id_seq OWNER TO freecodecamp;

--
-- Name: star_discoverer_star_discoverer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_discoverer_star_discoverer_id_seq OWNED BY public.star_discoverer.star_discoverer_id;


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
-- Name: star_discoverer star_discoverer_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_discoverer ALTER COLUMN star_discoverer_id SET DEFAULT nextval('public.star_discoverer_star_discoverer_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 890.0, 26, '250', true);
INSERT INTO public.galaxy VALUES (2, 'Chocolate Way', 10.0, 20, '30', false);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', 100.0, 20, '400', true);
INSERT INTO public.galaxy VALUES (4, 'LMC', 120.0, 30, '500', true);
INSERT INTO public.galaxy VALUES (5, 'Cigar', 120.0, 31, '600', true);
INSERT INTO public.galaxy VALUES (6, 'PPP', 5.0, 6, '10', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 100, 300, 3);
INSERT INTO public.moon VALUES (2, 'Deimos', 50, 60, 4);
INSERT INTO public.moon VALUES (3, 'Phobos', 55, 66, 4);
INSERT INTO public.moon VALUES (4, 'Amalthea', 60, 70, 5);
INSERT INTO public.moon VALUES (5, 'Callisto', 66, 77, 5);
INSERT INTO public.moon VALUES (6, 'Europa', 10, 20, 5);
INSERT INTO public.moon VALUES (7, 'Ganymede', 11, 12, 5);
INSERT INTO public.moon VALUES (8, 'Io', 6, 15, 5);
INSERT INTO public.moon VALUES (9, 'Dione', 7, 30, 6);
INSERT INTO public.moon VALUES (10, 'Enceladus', 55, 66, 6);
INSERT INTO public.moon VALUES (11, 'Hyperion', 77, 88, 6);
INSERT INTO public.moon VALUES (12, 'Iapetus', 111, 222, 6);
INSERT INTO public.moon VALUES (13, 'Mimas', 12, 65, 6);
INSERT INTO public.moon VALUES (14, 'Phoebe', 67, 12, 6);
INSERT INTO public.moon VALUES (15, 'Ariel', 45, 44, 7);
INSERT INTO public.moon VALUES (16, 'Miranda', 123, 45, 7);
INSERT INTO public.moon VALUES (17, 'Oberon', 98, 14, 7);
INSERT INTO public.moon VALUES (18, 'Nereid', 11, 22, 8);
INSERT INTO public.moon VALUES (19, 'Triton', 33, 44, 8);
INSERT INTO public.moon VALUES (20, 'Charon', 100, 300, 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 50, 1, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 60, -10, false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 70, 30, true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 80, 100, false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 90, 300, false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 100, 20, false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 10, 30, false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 20, 90, false, 1);
INSERT INTO public.planet VALUES (9, 'Corot', 220, 555, true, 3);
INSERT INTO public.planet VALUES (10, 'Kepler', 330, 444, false, 4);
INSERT INTO public.planet VALUES (11, 'Haumea', 440, 333, false, 5);
INSERT INTO public.planet VALUES (12, 'Ceres', 550, 222, false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 500, 300, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 100, 200, 3);
INSERT INTO public.star VALUES (3, 'Sirius', 50, 20, 4);
INSERT INTO public.star VALUES (4, 'Ran', 400, 300, 3);
INSERT INTO public.star VALUES (5, 'Ross', 100, 200, 3);
INSERT INTO public.star VALUES (6, 'Struve', 30, 90, 6);


--
-- Data for Name: star_discoverer; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star_discoverer VALUES (1, 1, 'Kopernik', 1540);
INSERT INTO public.star_discoverer VALUES (2, 2, 'Innes', 1915);
INSERT INTO public.star_discoverer VALUES (3, 3, 'Clark', 1862);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_discoverer_star_discoverer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_discoverer_star_discoverer_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


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
-- Name: star_discoverer star_discoverer_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_discoverer
    ADD CONSTRAINT star_discoverer_pkey PRIMARY KEY (star_discoverer_id);


--
-- Name: star_discoverer star_discoverer_year_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_discoverer
    ADD CONSTRAINT star_discoverer_year_key UNIQUE (year);


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
-- Name: star_discoverer star_discoverer_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_discoverer
    ADD CONSTRAINT star_discoverer_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

