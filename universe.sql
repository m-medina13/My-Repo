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
    galaxy_type character varying(20) NOT NULL,
    distance_in_ly integer,
    size_in_ly integer
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
    name character varying(20),
    is_spherical boolean NOT NULL,
    age_in_billion_years numeric(4,1) NOT NULL,
    size_in_km numeric(8,2)
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
    name character varying(20),
    no_of_moons integer NOT NULL,
    age_in_billion_years numeric(8,2),
    size_in_km numeric(8,2),
    has_life boolean NOT NULL,
    distance_from_sun_in_million_km numeric(8,2)
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
-- Name: solar_system; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.solar_system (
    solar_system_id integer NOT NULL,
    name character varying(20) NOT NULL,
    "position" text NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.solar_system OWNER TO freecodecamp;

--
-- Name: solar_system_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.solar_system_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solar_system_planet_id_seq OWNER TO freecodecamp;

--
-- Name: solar_system_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.solar_system_planet_id_seq OWNED BY public.solar_system.planet_id;


--
-- Name: solar_system_solar_system_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.solar_system_solar_system_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solar_system_solar_system_id_seq OWNER TO freecodecamp;

--
-- Name: solar_system_solar_system_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.solar_system_solar_system_id_seq OWNED BY public.solar_system.solar_system_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    color character varying(20) NOT NULL,
    temp_in_kelvin integer,
    spectral_type character varying(10),
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


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
-- Name: solar_system solar_system_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system ALTER COLUMN solar_system_id SET DEFAULT nextval('public.solar_system_solar_system_id_seq'::regclass);


--
-- Name: solar_system planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system ALTER COLUMN planet_id SET DEFAULT nextval('public.solar_system_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Milky Way', 'spiral', 26670, 52850);
INSERT INTO public.galaxy VALUES (3, 'Backward', 'spiral', 111000000, 61366);
INSERT INTO public.galaxy VALUES (4, 'Cigar', 'irregular', 11420000, 18500);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'spiral', 29350000, 25000);
INSERT INTO public.galaxy VALUES (6, 'Sunflower', 'spiral', 27000000, 49000);
INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'spiral', 2537000, 110000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', true, 4.5, 1737.40);
INSERT INTO public.moon VALUES (2, 'Ganymede', true, 4.5, 2634.10);
INSERT INTO public.moon VALUES (3, 'Europa', true, 4.5, 1560.80);
INSERT INTO public.moon VALUES (4, 'Callisto', true, 4.5, 2410.30);
INSERT INTO public.moon VALUES (5, 'Amalthea', false, 4.5, 83.50);
INSERT INTO public.moon VALUES (6, 'Titan', true, 4.0, 2574.70);
INSERT INTO public.moon VALUES (7, 'Rhea', true, 4.0, 763.80);
INSERT INTO public.moon VALUES (8, 'Dione', true, 4.0, 561.40);
INSERT INTO public.moon VALUES (9, 'Phoebe', false, 4.0, 106.50);
INSERT INTO public.moon VALUES (10, 'Pandora', false, 0.0, 40.70);
INSERT INTO public.moon VALUES (11, 'Titania', true, 4.6, 788.40);
INSERT INTO public.moon VALUES (12, 'Miranda', true, 0.1, 235.80);
INSERT INTO public.moon VALUES (13, 'Ariel', true, 0.0, 578.90);
INSERT INTO public.moon VALUES (14, 'Portia', true, 0.0, 67.60);
INSERT INTO public.moon VALUES (15, 'Juliet', false, 0.0, 46.80);
INSERT INTO public.moon VALUES (16, 'Triton', true, 4.5, 1353.40);
INSERT INTO public.moon VALUES (17, 'Larissa', false, 0.0, 97.00);
INSERT INTO public.moon VALUES (18, 'Thalassa', false, 0.0, 41.00);
INSERT INTO public.moon VALUES (19, 'Charon', true, 0.0, 606.00);
INSERT INTO public.moon VALUES (20, 'Kerberos', false, 0.0, 12.00);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 0, 4.50, 2439.70, false, 69.67);
INSERT INTO public.planet VALUES (2, 'Venus', 0, 4.50, 6051.80, false, 108.64);
INSERT INTO public.planet VALUES (3, 'Earth', 1, 4.54, 6371.00, true, 147.75);
INSERT INTO public.planet VALUES (4, 'Mars', 2, 4.60, 3389.50, false, 227.84);
INSERT INTO public.planet VALUES (5, 'Jupiter', 80, 4.60, 69911.00, false, 740.90);
INSERT INTO public.planet VALUES (6, 'Saturn', 83, 4.50, 58232.00, false, 1470.80);
INSERT INTO public.planet VALUES (7, 'Uranus', 27, 4.50, 25362.00, false, 2942.50);
INSERT INTO public.planet VALUES (8, 'Neptune', 14, 4.50, 21622.00, false, 4473.70);
INSERT INTO public.planet VALUES (9, 'Pluto', 4, 4.60, 1188.30, false, 5900.00);
INSERT INTO public.planet VALUES (10, 'Eris', 1, 4.50, 1163.00, false, 10125.00);
INSERT INTO public.planet VALUES (11, 'Haumea', 2, 4.50, 816.00, false, 6452.00);
INSERT INTO public.planet VALUES (12, 'Makemake', 0, 4.50, 715.00, false, 6847.00);
INSERT INTO public.planet VALUES (13, 'Ceres', 0, 4.57, 473.00, false, 413.00);


--
-- Data for Name: solar_system; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.solar_system VALUES (1, 'Mercury', 'inner', 1);
INSERT INTO public.solar_system VALUES (2, 'Venus', 'inner', 2);
INSERT INTO public.solar_system VALUES (3, 'Earth', 'inner', 3);
INSERT INTO public.solar_system VALUES (4, 'Mars', 'inner', 4);
INSERT INTO public.solar_system VALUES (5, 'Jupiter', 'inner', 5);
INSERT INTO public.solar_system VALUES (6, 'Saturn', 'outer', 6);
INSERT INTO public.solar_system VALUES (7, 'Uranus', 'outer', 7);
INSERT INTO public.solar_system VALUES (8, 'Neptune', 'outer', 8);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Polaris', 'yellow', 6000, 'F7lb', 2);
INSERT INTO public.star VALUES (2, 'Sirius', 'blue-white', 9940, 'A0', 2);
INSERT INTO public.star VALUES (3, 'Sun', 'white', 5778, 'G2V', 2);
INSERT INTO public.star VALUES (4, 'Antares', 'red', 3500, 'M1lb', 2);
INSERT INTO public.star VALUES (5, 'Pollux', 'orange', 4865, 'K0lllb', 2);
INSERT INTO public.star VALUES (6, 'Altair', 'white', 7550, 'A7V', 2);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: solar_system_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.solar_system_planet_id_seq', 8, true);


--
-- Name: solar_system_solar_system_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.solar_system_solar_system_id_seq', 8, true);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 6, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: solar_system solar_system_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_pkey PRIMARY KEY (solar_system_id);


--
-- Name: solar_system solar_system_solar_system_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_solar_system_id_key UNIQUE (solar_system_id);


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
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

