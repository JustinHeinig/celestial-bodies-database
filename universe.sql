--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    name character varying(50) NOT NULL,
    blackhole_id integer NOT NULL,
    number integer,
    hwefheiw text
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackhole_blackhole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackhole_blackhole_id_seq OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackhole_blackhole_id_seq OWNED BY public.blackhole.blackhole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    "integer" integer,
    star_id integer,
    number integer,
    numbere integer,
    numberes integer,
    hwefheiw text
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
    name character varying(50) NOT NULL,
    "integer" integer,
    "boolean" boolean,
    number integer,
    numbere integer,
    numberes integer,
    hwefheiw text,
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
    name character varying(50) NOT NULL,
    "integer" integer,
    "numeric" numeric(10,1),
    text text,
    "boolean" boolean,
    hwefheiw text,
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
    name character varying(50) NOT NULL,
    "integer" integer,
    galaxy_id integer,
    number integer,
    numberes integer,
    numbere integer,
    hwefheiw text
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
-- Name: blackhole blackhole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackhole_id SET DEFAULT nextval('public.blackhole_blackhole_id_seq'::regclass);


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
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES ('a', 27, NULL, NULL);
INSERT INTO public.blackhole VALUES ('b', 28, NULL, NULL);
INSERT INTO public.blackhole VALUES ('c', 29, NULL, NULL);
INSERT INTO public.blackhole VALUES ('d', 30, NULL, NULL);
INSERT INTO public.blackhole VALUES ('e', 31, NULL, NULL);
INSERT INTO public.blackhole VALUES ('f', 32, NULL, NULL);
INSERT INTO public.blackhole VALUES ('g', 33, NULL, NULL);
INSERT INTO public.blackhole VALUES ('h', 34, NULL, NULL);
INSERT INTO public.blackhole VALUES ('i', 35, NULL, NULL);
INSERT INTO public.blackhole VALUES ('j', 36, NULL, NULL);
INSERT INTO public.blackhole VALUES ('k', 37, NULL, NULL);
INSERT INTO public.blackhole VALUES ('l', 38, NULL, NULL);
INSERT INTO public.blackhole VALUES ('m', 39, NULL, NULL);
INSERT INTO public.blackhole VALUES ('n', 40, NULL, NULL);
INSERT INTO public.blackhole VALUES ('o', 41, NULL, NULL);
INSERT INTO public.blackhole VALUES ('p', 42, NULL, NULL);
INSERT INTO public.blackhole VALUES ('q', 43, NULL, NULL);
INSERT INTO public.blackhole VALUES ('r', 44, NULL, NULL);
INSERT INTO public.blackhole VALUES ('s', 45, NULL, NULL);
INSERT INTO public.blackhole VALUES ('t', 46, NULL, NULL);
INSERT INTO public.blackhole VALUES ('u', 47, NULL, NULL);
INSERT INTO public.blackhole VALUES ('v', 48, NULL, NULL);
INSERT INTO public.blackhole VALUES ('w', 49, NULL, NULL);
INSERT INTO public.blackhole VALUES ('x', 50, NULL, NULL);
INSERT INTO public.blackhole VALUES ('y', 51, NULL, NULL);
INSERT INTO public.blackhole VALUES ('z', 52, NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'a', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'b', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'c', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'd', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'e', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'f', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'g', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (8, 'h', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (9, 'i', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (10, 'j', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (11, 'k', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (12, 'l', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (13, 'm', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (14, 'n', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (15, 'o', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (16, 'p', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (17, 'q', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (18, 'r', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (19, 's', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (20, 't', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (21, 'u', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (22, 'v', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (23, 'w', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (24, 'x', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (25, 'y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (26, 'z', NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'a', NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'b', NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (3, 'c', NULL, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (4, 'd', NULL, NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (5, 'e', NULL, NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (6, 'f', NULL, NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (7, 'g', NULL, NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (8, 'h', NULL, NULL, NULL, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (9, 'i', NULL, NULL, NULL, NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES (10, 'j', NULL, NULL, NULL, NULL, NULL, NULL, 10);
INSERT INTO public.moon VALUES (11, 'k', NULL, NULL, NULL, NULL, NULL, NULL, 11);
INSERT INTO public.moon VALUES (12, 'l', NULL, NULL, NULL, NULL, NULL, NULL, 12);
INSERT INTO public.moon VALUES (13, 'm', NULL, NULL, NULL, NULL, NULL, NULL, 13);
INSERT INTO public.moon VALUES (14, 'n', NULL, NULL, NULL, NULL, NULL, NULL, 14);
INSERT INTO public.moon VALUES (15, 'o', NULL, NULL, NULL, NULL, NULL, NULL, 15);
INSERT INTO public.moon VALUES (16, 'p', NULL, NULL, NULL, NULL, NULL, NULL, 16);
INSERT INTO public.moon VALUES (17, 'q', NULL, NULL, NULL, NULL, NULL, NULL, 17);
INSERT INTO public.moon VALUES (18, 'r', NULL, NULL, NULL, NULL, NULL, NULL, 18);
INSERT INTO public.moon VALUES (19, 's', NULL, NULL, NULL, NULL, NULL, NULL, 19);
INSERT INTO public.moon VALUES (20, 't', NULL, NULL, NULL, NULL, NULL, NULL, 20);
INSERT INTO public.moon VALUES (21, 'u', NULL, NULL, NULL, NULL, NULL, NULL, 21);
INSERT INTO public.moon VALUES (22, 'v', NULL, NULL, NULL, NULL, NULL, NULL, 22);
INSERT INTO public.moon VALUES (23, 'w', NULL, NULL, NULL, NULL, NULL, NULL, 23);
INSERT INTO public.moon VALUES (24, 'x', NULL, NULL, NULL, NULL, NULL, NULL, 24);
INSERT INTO public.moon VALUES (25, 'y', NULL, NULL, NULL, NULL, NULL, NULL, 25);
INSERT INTO public.moon VALUES (26, 'z', NULL, NULL, NULL, NULL, NULL, NULL, 26);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'a', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'b', NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (3, 'c', NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (4, 'd', NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (5, 'e', NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (6, 'f', NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (7, 'g', NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.planet VALUES (8, 'h', NULL, NULL, NULL, NULL, NULL, 8);
INSERT INTO public.planet VALUES (9, 'i', NULL, NULL, NULL, NULL, NULL, 9);
INSERT INTO public.planet VALUES (10, 'j', NULL, NULL, NULL, NULL, NULL, 10);
INSERT INTO public.planet VALUES (11, 'k', NULL, NULL, NULL, NULL, NULL, 11);
INSERT INTO public.planet VALUES (12, 'l', NULL, NULL, NULL, NULL, NULL, 12);
INSERT INTO public.planet VALUES (13, 'm', NULL, NULL, NULL, NULL, NULL, 13);
INSERT INTO public.planet VALUES (14, 'n', NULL, NULL, NULL, NULL, NULL, 14);
INSERT INTO public.planet VALUES (15, 'o', NULL, NULL, NULL, NULL, NULL, 15);
INSERT INTO public.planet VALUES (16, 'p', NULL, NULL, NULL, NULL, NULL, 16);
INSERT INTO public.planet VALUES (17, 'q', NULL, NULL, NULL, NULL, NULL, 17);
INSERT INTO public.planet VALUES (18, 'r', NULL, NULL, NULL, NULL, NULL, 18);
INSERT INTO public.planet VALUES (19, 's', NULL, NULL, NULL, NULL, NULL, 19);
INSERT INTO public.planet VALUES (20, 't', NULL, NULL, NULL, NULL, NULL, 20);
INSERT INTO public.planet VALUES (21, 'u', NULL, NULL, NULL, NULL, NULL, 21);
INSERT INTO public.planet VALUES (22, 'v', NULL, NULL, NULL, NULL, NULL, 22);
INSERT INTO public.planet VALUES (23, 'w', NULL, NULL, NULL, NULL, NULL, 23);
INSERT INTO public.planet VALUES (24, 'x', NULL, NULL, NULL, NULL, NULL, 24);
INSERT INTO public.planet VALUES (25, 'y', NULL, NULL, NULL, NULL, NULL, 25);
INSERT INTO public.planet VALUES (26, 'z', NULL, NULL, NULL, NULL, NULL, 26);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'a', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (2, 'b', NULL, 2, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 'c', NULL, 3, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 'd', NULL, 4, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 'e', NULL, 5, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'f', NULL, 6, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (7, 'g', NULL, 7, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (8, 'h', NULL, 8, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (9, 'i', NULL, 9, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (10, 'j', NULL, 10, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (11, 'k', NULL, 11, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (12, 'l', NULL, 12, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (13, 'm', NULL, 13, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (14, 'n', NULL, 14, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (15, 'o', NULL, 15, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (16, 'p', NULL, 16, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (17, 'q', NULL, 17, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (18, 'r', NULL, 18, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (19, 's', NULL, 19, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (20, 't', NULL, 20, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (21, 'u', NULL, 21, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (22, 'v', NULL, 22, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (23, 'w', NULL, 23, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (24, 'x', NULL, 24, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (25, 'y', NULL, 25, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (26, 'z', NULL, 26, NULL, NULL, NULL, NULL);


--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackhole_blackhole_id_seq', 53, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 26, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 26, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 26, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 26, true);


--
-- Name: blackhole blackhole_hwefheiw_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_hwefheiw_key UNIQUE (hwefheiw);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


--
-- Name: galaxy galaxy_hwefheiw_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_hwefheiw_key UNIQUE (hwefheiw);


--
-- Name: galaxy galaxy_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_unique UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_hwefheiw_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_hwefheiw_key UNIQUE (hwefheiw);


--
-- Name: moon moon_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_unique UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_hwefheiw_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_hwefheiw_key UNIQUE (hwefheiw);


--
-- Name: planet planet_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_unique UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_hwefheiw_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_hwefheiw_key UNIQUE (hwefheiw);


--
-- Name: star star_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_unique UNIQUE (star_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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
-- PostgreSQL database dump complete
--

