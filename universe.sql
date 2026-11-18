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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(50) NOT NULL,
    diameter_in_km numeric(10,2),
    year_discovered integer
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    galaxy_types character varying(20),
    description character varying,
    age_in_millions_of_years integer
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
    name character varying NOT NULL,
    distance_from_earth numeric,
    planet_id integer,
    description character varying
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
    name character varying NOT NULL,
    distance_from_earth numeric,
    description text,
    is_spherical boolean,
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
    name character varying NOT NULL,
    age_in_millions_of_years integer,
    has_life boolean,
    galaxy_id integer,
    description character varying
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


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
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'Ceres', 939.40, 1801);
INSERT INTO public.asteroid VALUES (2, 'Vesta', 525.40, 1807);
INSERT INTO public.asteroid VALUES (3, 'Pallas', 512.00, 1802);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', 'Our home galaxy, containing the Solar system.', 13600);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 'The nearest major galaxy to Milky Way', 10000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral', 'A nearby galaxy in the local group, known for its active star formation', 12000);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool Galaxy', 'Spiral', 'A famous spiral galaxy known for its well-defined structure and interacting companion galaxy.', 13000);
INSERT INTO public.galaxy VALUES (5, 'Large Magellanic Cloud', 'Irregular', 'A dwarf irregular galaxy that is a satellite galaxy of the Milky Way.', 13000);
INSERT INTO public.galaxy VALUES (6, 'Sombrero Galaxy', 'Spiral', 'A bright galaxy famous for its large central bulge and distinctive dust ring, resembling a sombrero hat.', 13000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 384400, 1, 'Earth natural satellite, responsible for ocean tides and stabilising Earth axial tilt.');
INSERT INTO public.moon VALUES (2, 'Phobos', 78000000, 2, 'The larger and closer of Mars two natural moons, with an irregular potato-like shape.');
INSERT INTO public.moon VALUES (3, 'Europa', 628000000, 3, 'One of Jupiter largest moons, believed to have a vast subsurface ocean beneath its icy crust.');
INSERT INTO public.moon VALUES (4, 'Deimos', 78300000, 2, 'The smaller and more distant natural moon of Mars.');
INSERT INTO public.moon VALUES (5, 'Io', 628300000, 3, 'A volcanic moon of Jupiter with hundreds of active volcanoes.');
INSERT INTO public.moon VALUES (6, 'Ganymede', 628300000, 3, 'The largest moon in the Solar System and the only moon known to have its own magnetic field.');
INSERT INTO public.moon VALUES (7, 'Callisto', 628300000, 3, 'A heavily cratered moon of Jupiter with an ancient surface.');
INSERT INTO public.moon VALUES (8, 'Amalthea', 628300000, 3, 'A small irregular moon of Jupiter located close to the planet.');
INSERT INTO public.moon VALUES (9, 'Titan', 1270000000, 6, 'Saturn largest moon, known for its thick atmosphere and lakes of liquid methane.');
INSERT INTO public.moon VALUES (10, 'Enceladus', 1270000000, 6, 'An icy moon of Saturn known for its water-rich geysers and subsurface ocean.');
INSERT INTO public.moon VALUES (11, 'Rhea', 1270000000, 6, 'The second-largest moon of Saturn, covered with heavily cratered icy terrain.');
INSERT INTO public.moon VALUES (12, 'Iapetus', 1270000000, 6, 'A moon of Saturn known for its unusual two-tone coloration.');
INSERT INTO public.moon VALUES (13, 'Dione', 1270000000, 6, 'An icy moon of Saturn with bright ice cliffs and numerous craters.');
INSERT INTO public.moon VALUES (14, 'Mimas', 1270000000, 6, 'A small moon of Saturn famous for a large crater that gives it a resemblance to the Death Star.');
INSERT INTO public.moon VALUES (15, 'Titania', 2720000000, 7, 'The largest moon of Uranus, featuring large canyons and impact craters.');
INSERT INTO public.moon VALUES (16, 'Oberon', 2720000000, 7, 'The second-largest moon of Uranus, with a heavily cratered icy surface.');
INSERT INTO public.moon VALUES (17, 'Ariel', 2720000000, 7, 'A moon of Uranus with valleys and evidence of ancient geological activity.');
INSERT INTO public.moon VALUES (18, 'Umbriel', 2720000000, 7, 'A dark and heavily cratered moon of Uranus.');
INSERT INTO public.moon VALUES (19, 'Triton', 4350000000, 8, 'The largest moon of Neptune, known for its retrograde orbit and icy nitrogen geysers.');
INSERT INTO public.moon VALUES (20, 'Charon', 5900000000, 9, 'The largest moon of Pluto, so massive relative to Pluto that they orbit a shared centre of gravity.');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 0, 'The only known planet to support life, with liquid water covering approximately 71 percent of its surface.', true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 225000000, 'The red planet, known for its reddish appearance and evidence of ancient water on its surface.', true, 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', 778000000, 'The largest planet in our Solar System, famous for its Great Red Spot and numerous moons.', true, 1);
INSERT INTO public.planet VALUES (4, 'Mercury', 91700000, 'The smallest planet in the Solar System and the closest planet to the Sun.', true, 1);
INSERT INTO public.planet VALUES (5, 'Venus', 41400000, 'The hottest planet in the Solar System, with a thick atmosphere rich in carbon dioxide.', true, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 1275000000, 'A gas giant famous for its spectacular system of rings.', true, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 2720000000, 'An ice giant that rotates on its side and has a pale blue-green appearance.', true, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 4350000000, 'A distant ice giant known for its powerful winds and deep blue atmosphere.', true, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 5900000000, 'A dwarf planet in the Kuiper Belt with a large heart-shaped region on its surface.', true, 1);
INSERT INTO public.planet VALUES (10, 'Ceres', 413000000, 'The largest object in the asteroid belt and the only dwarf planet in the inner Solar System.', true, 1);
INSERT INTO public.planet VALUES (11, 'Haumea', 7500000000, 'A dwarf planet beyond Neptune known for its elongated shape and rapid rotation.', true, 1);
INSERT INTO public.planet VALUES (12, 'Eris', 10100000000, 'A distant dwarf planet in the scattered disc, slightly smaller than Pluto.', true, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4600, true, 1, 'The star at the centre of our Solar System, providing light and heat to Earth.');
INSERT INTO public.star VALUES (2, 'Sirius', 242, false, 1, 'The brightest star in Earth night sky, located in the Canis Major constellation.');
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 4850, false, 1, 'The closest known star to the Sun, located approximately 4.24 light-years away.');
INSERT INTO public.star VALUES (4, 'Betelgeuse', 10000, false, 1, 'A red supergiant star located in the Orion constellation, nearing the end of its stellar life.');
INSERT INTO public.star VALUES (5, 'Vega', 455, false, 1, 'A bright blue-white star located in the Lyra constellation and one of the brightest stars in the night sky.');
INSERT INTO public.star VALUES (6, 'Rigel', 8000, false, 1, 'A luminous blue supergiant star located in the Orion constellation, one of the brightest stars visible from Earth.');


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 3, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


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

