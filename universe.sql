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
    name character varying(50) NOT NULL,
    age_in_millions_of_years integer,
    number_of_star_systems integer,
    description text,
    distance_from_nearest_neighbour integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    distance_from_planet integer,
    diameter integer,
    description text,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    diameter integer,
    distance_from_star integer,
    rotation_speed numeric(4,2),
    description text,
    star_id integer NOT NULL,
    is_rogue boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    diameter integer,
    temperature_in_c integer,
    is_dying boolean,
    description text,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: ufo; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.ufo (
    ufo_id integer NOT NULL,
    name character varying(50) NOT NULL,
    last_seen integer
);


ALTER TABLE public.ufo OWNER TO freecodecamp;

--
-- Name: ufo_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.ufo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ufo_id_seq OWNER TO freecodecamp;

--
-- Name: ufo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.ufo_id_seq OWNED BY public.ufo.ufo_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Name: ufo ufo_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ufo ALTER COLUMN ufo_id SET DEFAULT nextval('public.ufo_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'bodes galaxy', 25436, 232, 'Also known as Messier 81. The largest galaxy in the M81 Group. It harbors a supermassive black hole 70 million times the mass of the Sun.', 5);
INSERT INTO public.galaxy VALUES (2, 'cartwheel galaxy', 26545, 4324, 'The largest in the Cartwheel Galaxy group, made up of four spiral galaxies', 556);
INSERT INTO public.galaxy VALUES (3, 'Coma Pinwheel Galaxy', 687585685, 3653, 'Also known as Messier 99 or M99', 234);
INSERT INTO public.galaxy VALUES (4, 'Eye of God', 24352524, 234, 'A prototype for multi-arm spiral galaxies', 2477);
INSERT INTO public.galaxy VALUES (5, 'Large Magellanic Cloud', 67567, 23451, 'This is the fourth-largest galaxy in the Local Group, and forms a pair with the SMC, and from recent research, may not be part of the Milky Way system of satellites at all.', 8973);
INSERT INTO public.galaxy VALUES (6, 'Small Magellanic Cloud', 9384, 123, 'This forms a pair with the LMC, and from recent research, may not be part of the Milky Way system of satellites at all.', 273864);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Dione', 2134, 3456, '', 1);
INSERT INTO public.moon VALUES (2, 'Enceladus', 23, 3456, '', 1);
INSERT INTO public.moon VALUES (3, 'Hyperion', 46534, 24, '', 1);
INSERT INTO public.moon VALUES (4, 'Iapetus', 345, 66645, '', 1);
INSERT INTO public.moon VALUES (5, 'Mimas', 123, 4565, '', 2);
INSERT INTO public.moon VALUES (6, 'Phoebe', 3456, 13, '', 2);
INSERT INTO public.moon VALUES (7, 'Rhea', 847, 387, '', 3);
INSERT INTO public.moon VALUES (8, 'Tethys', 1236, 4214, '', 3);
INSERT INTO public.moon VALUES (9, 'Titan', 873, 72348, '', 4);
INSERT INTO public.moon VALUES (10, 'Ariel', 3726, 23763, '', 4);
INSERT INTO public.moon VALUES (11, 'Miranda', 2873, 27364, '', 5);
INSERT INTO public.moon VALUES (12, 'Oberon', 18196, 346, '', 6);
INSERT INTO public.moon VALUES (13, 'Titania', 87623, 235, '', 7);
INSERT INTO public.moon VALUES (14, 'Umbriel', 89894, 234, '', 8);
INSERT INTO public.moon VALUES (15, 'Nereid', 245, 457, '', 9);
INSERT INTO public.moon VALUES (16, 'Triton', 3464, 56873, '', 9);
INSERT INTO public.moon VALUES (17, 'Charon', 5673, 378, '', 9);
INSERT INTO public.moon VALUES (18, 'Deimos', 453, 345, '', 10);
INSERT INTO public.moon VALUES (19, 'Phobos', 234, 46, '', 11);
INSERT INTO public.moon VALUES (20, 'Amalthea', 3563, 346, '', 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Spe', 23, 56, 14.00, '', 1, NULL);
INSERT INTO public.planet VALUES (2, 'Arion', 45, 234, 5.00, '', 1, NULL);
INSERT INTO public.planet VALUES (3, 'Arkas', 544, 345, 45.00, '', 2, NULL);
INSERT INTO public.planet VALUES (4, 'Orbitar', 234, 346, 37.00, '', 2, NULL);
INSERT INTO public.planet VALUES (5, 'Dimidium', 456, 2345, 78.00, '', 3, NULL);
INSERT INTO public.planet VALUES (6, 'Galileo', 65734, 234, 43.00, '', 3, NULL);
INSERT INTO public.planet VALUES (7, 'Brahe', 564, 23412, 42.00, '', 4, NULL);
INSERT INTO public.planet VALUES (8, 'Harriot', 14, 4356, 11.00, '', 4, NULL);
INSERT INTO public.planet VALUES (9, 'Dagon', 3456, 54, 78.00, '', 5, NULL);
INSERT INTO public.planet VALUES (10, 'Tadmor', 34, 5633, 45.00, '', 5, NULL);
INSERT INTO public.planet VALUES (11, 'Sancho', 234, 5689, 38.00, '', 6, NULL);
INSERT INTO public.planet VALUES (12, 'Saffar', 4456, 786, 38.00, '', 6, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Stephenson 2 DFK 49', 345, 6546573, false, 'A K-type star similar to the yellow hypergiant IRC +10420 that has left its red supergiant stage.', 1);
INSERT INTO public.star VALUES (2, 'WY Velorum A', 23465, 35634, false, 'A symbiotic binary.', 2);
INSERT INTO public.star VALUES (3, 'VX Sagitarii', 8741, 1561654, true, 'The most luminous known Asymptotic giant branch star. Widely recognised as being among the largest known stars.', 3);
INSERT INTO public.star VALUES (4, 'V766 Centauri Aa', 4574, 134123, false, 'V766 Centauri Aa is a rare variable yellow hypergiant.', 4);
INSERT INTO public.star VALUES (5, 'VV Cephei A', 928734, 238764, true, 'Widely recognised as being among the largest known stars.', 5);
INSERT INTO public.star VALUES (6, 'BC Cygni', 982374, 72364, false, 'A more detailed but older study gives values of 1,081 R☉ (856–1,375) for the year 2000, and 1,303 R☉ (1,021–1,553) for the year 1900.', 6);


--
-- Data for Name: ufo; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.ufo VALUES (1, 'number-1', 3);
INSERT INTO public.ufo VALUES (2, 'number-2', 63);
INSERT INTO public.ufo VALUES (3, 'number-3', 289347234);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: ufo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.ufo_id_seq', 3, true);


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
-- Name: ufo ufo_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ufo
    ADD CONSTRAINT ufo_name_key UNIQUE (name);


--
-- Name: ufo ufo_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ufo
    ADD CONSTRAINT ufo_pkey PRIMARY KEY (ufo_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_panet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_panet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

