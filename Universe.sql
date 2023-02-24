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
    name character varying(50) NOT NULL,
    g_int_1 integer,
    g_int_2 integer,
    g_num numeric NOT NULL,
    g_text text,
    g_bool_1 boolean,
    g_bool_2 boolean,
    star_id integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_g_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_g_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_g_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_g_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_g_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    m_int_1 integer,
    m_int_2 integer,
    m_num numeric NOT NULL,
    m_text text,
    m_bool_1 boolean,
    m_bool_2 boolean,
    planet_id integer,
    moon_un character varying(20)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_m_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_m_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_m_id_seq OWNER TO freecodecamp;

--
-- Name: moon_m_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_m_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    p_int_1 integer,
    p_int_2 integer,
    p_num numeric NOT NULL,
    p_text text,
    p_bool_1 boolean,
    p_bool_2 boolean,
    star_id integer,
    planet_un character varying(20)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_p_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_p_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_p_id_seq OWNER TO freecodecamp;

--
-- Name: planet_p_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_p_id_seq OWNED BY public.planet.planet_id;


--
-- Name: rockets; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.rockets (
    rockets_id integer NOT NULL,
    name character varying(50),
    rockets_count integer NOT NULL,
    rockets_mel character varying(10) NOT NULL,
    rockets_code character varying(10) NOT NULL
);


ALTER TABLE public.rockets OWNER TO freecodecamp;

--
-- Name: rockets_rockets_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.rockets_rockets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rockets_rockets_id_seq OWNER TO freecodecamp;

--
-- Name: rockets_rockets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.rockets_rockets_id_seq OWNED BY public.rockets.rockets_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    s_int_1 integer,
    s_int_2 integer,
    s_num numeric NOT NULL,
    s_text text,
    s_bool_1 boolean,
    s_bool_2 boolean,
    galaxy_id integer,
    star_un character varying(20)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_s_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_s_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_s_id_seq OWNER TO freecodecamp;

--
-- Name: star_s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_s_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_g_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_m_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_p_id_seq'::regclass);


--
-- Name: rockets rockets_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rockets ALTER COLUMN rockets_id SET DEFAULT nextval('public.rockets_rockets_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_s_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'akaTai', 123, 123, 111, 'text1', true, true, 1);
INSERT INTO public.galaxy VALUES (2, 'akaWu', 144, 213, 121, 'text2', true, true, 2);
INSERT INTO public.galaxy VALUES (3, 'akaWang', 32, 13, 155, 'text3', true, true, 3);
INSERT INTO public.galaxy VALUES (4, 'akaKane', 22, 243, 321, 'text4', true, true, 4);
INSERT INTO public.galaxy VALUES (5, 'akaTang', 44, 55, 555, 'text5', true, true, 5);
INSERT INTO public.galaxy VALUES (6, 'akaZong', 77, 743, 521, 'text6', true, true, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon1', 11, 11, 11, 'Moon1', true, true, 1, NULL);
INSERT INTO public.moon VALUES (2, 'Moon2', 12, 12, 12, 'Moon2', true, true, 2, NULL);
INSERT INTO public.moon VALUES (3, 'Moon3', 11, 11, 11, 'Moon3', true, true, 3, NULL);
INSERT INTO public.moon VALUES (4, 'Moon4', 12, 12, 12, 'Moon4', true, true, 4, NULL);
INSERT INTO public.moon VALUES (5, 'Moon5', 11, 11, 11, 'Moon5', true, true, 5, NULL);
INSERT INTO public.moon VALUES (6, 'Moon6', 12, 12, 12, 'Moon6', true, true, 6, NULL);
INSERT INTO public.moon VALUES (11, 'Moon7', 11, 11, 11, 'Moon7', true, true, 1, NULL);
INSERT INTO public.moon VALUES (12, 'Moon8', 12, 12, 12, 'Moon8', true, true, 2, NULL);
INSERT INTO public.moon VALUES (13, 'Moon9', 11, 11, 11, 'Moon9', true, true, 3, NULL);
INSERT INTO public.moon VALUES (14, 'Moon10', 12, 12, 12, 'Moon10', true, true, 4, NULL);
INSERT INTO public.moon VALUES (15, 'Moon11', 11, 11, 11, 'Moon11', true, true, 5, NULL);
INSERT INTO public.moon VALUES (16, 'Moon12', 12, 12, 12, 'Moon12', true, true, 6, NULL);
INSERT INTO public.moon VALUES (17, 'Moon13', 11, 11, 11, 'Moon13', true, true, 1, NULL);
INSERT INTO public.moon VALUES (18, 'Moon14', 12, 12, 12, 'Moon14', true, true, 2, NULL);
INSERT INTO public.moon VALUES (19, 'Moon15', 11, 11, 11, 'Moon15', true, true, 3, NULL);
INSERT INTO public.moon VALUES (20, 'Moon16', 12, 12, 12, 'Moon16', true, true, 4, NULL);
INSERT INTO public.moon VALUES (21, 'Moon17', 11, 11, 11, 'Moon17', true, true, 5, NULL);
INSERT INTO public.moon VALUES (22, 'Moon18', 12, 12, 12, 'Moon18', true, true, 6, NULL);
INSERT INTO public.moon VALUES (23, 'Moon19', 11, 11, 11, 'Moon19', true, true, 1, NULL);
INSERT INTO public.moon VALUES (24, 'Moon20', 12, 12, 12, 'Moon20', true, true, 2, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'AA', 1, 1, 1, 'AA_Planet', true, true, 1, NULL);
INSERT INTO public.planet VALUES (2, 'BB', 2, 2, 2, 'BB_Planet', true, true, 2, NULL);
INSERT INTO public.planet VALUES (3, 'CC', 3, 3, 3, 'CC_Planet', true, true, 3, NULL);
INSERT INTO public.planet VALUES (4, 'DD', 4, 4, 4, 'DD_Planet', true, true, 4, NULL);
INSERT INTO public.planet VALUES (5, 'EE', 5, 5, 5, 'EE_Planet', true, true, 5, NULL);
INSERT INTO public.planet VALUES (6, 'FF', 6, 6, 6, 'FF_Planet', true, true, 6, NULL);
INSERT INTO public.planet VALUES (9, 'GG', 7, 7, 7, 'GG_Planet', true, true, 1, NULL);
INSERT INTO public.planet VALUES (10, 'HH', 8, 8, 8, 'HH_Planet', true, true, 2, NULL);
INSERT INTO public.planet VALUES (11, 'II', 9, 9, 9, 'II_Planet', true, true, 3, NULL);
INSERT INTO public.planet VALUES (12, 'JJ', 10, 10, 10, 'JJ_Planet', true, true, 4, NULL);
INSERT INTO public.planet VALUES (13, 'KK', 11, 11, 11, 'KK_Planet', true, true, 5, NULL);
INSERT INTO public.planet VALUES (14, 'LL', 12, 12, 12, 'LL_Planet', true, true, 6, NULL);


--
-- Data for Name: rockets; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.rockets VALUES (1, 'TS', 100, 'TSS', 'TSCODE');
INSERT INTO public.rockets VALUES (2, 'HV', 500, 'HVS', 'HVSCODE');
INSERT INTO public.rockets VALUES (3, 'CR', 2500, 'CRS', 'CRSCODE');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'fire', 44, 55, 555, 'text5', true, true, 1, NULL);
INSERT INTO public.star VALUES (2, 'water', 77, 743, 521, 'text6', true, true, 2, NULL);
INSERT INTO public.star VALUES (3, 'stone', 44, 55, 555, 'text5', true, true, 3, NULL);
INSERT INTO public.star VALUES (4, 'vol', 77, 743, 521, 'text6', true, true, 4, NULL);
INSERT INTO public.star VALUES (5, 'freeze', 44, 55, 555, 'text5', true, true, 5, NULL);
INSERT INTO public.star VALUES (6, 'wind', 77, 743, 521, 'text6', true, true, 6, NULL);


--
-- Name: galaxy_g_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_g_id_seq', 6, true);


--
-- Name: moon_m_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_m_id_seq', 24, true);


--
-- Name: planet_p_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_p_id_seq', 14, true);


--
-- Name: rockets_rockets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.rockets_rockets_id_seq', 3, true);


--
-- Name: star_s_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_s_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_un_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_un_key UNIQUE (moon_un);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: galaxy name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_un_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_un_key UNIQUE (planet_un);


--
-- Name: rockets rockets_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rockets
    ADD CONSTRAINT rockets_pkey PRIMARY KEY (rockets_id);


--
-- Name: rockets rockets_rockets_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rockets
    ADD CONSTRAINT rockets_rockets_code_key UNIQUE (rockets_code);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_un_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_un_key UNIQUE (star_un);


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

