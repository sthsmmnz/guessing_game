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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    number_guesses integer NOT NULL,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 6);
INSERT INTO public.games VALUES (2, 318, 6);
INSERT INTO public.games VALUES (3, 518, 7);
INSERT INTO public.games VALUES (4, 285, 7);
INSERT INTO public.games VALUES (5, 364, 6);
INSERT INTO public.games VALUES (6, 397, 6);
INSERT INTO public.games VALUES (7, 247, 6);
INSERT INTO public.games VALUES (8, 160, 8);
INSERT INTO public.games VALUES (9, 119, 8);
INSERT INTO public.games VALUES (10, 1, 9);
INSERT INTO public.games VALUES (11, 952, 9);
INSERT INTO public.games VALUES (12, 428, 8);
INSERT INTO public.games VALUES (13, 826, 8);
INSERT INTO public.games VALUES (14, 168, 8);
INSERT INTO public.games VALUES (15, 265, 10);
INSERT INTO public.games VALUES (16, 393, 10);
INSERT INTO public.games VALUES (17, 977, 11);
INSERT INTO public.games VALUES (18, 853, 11);
INSERT INTO public.games VALUES (19, 93, 10);
INSERT INTO public.games VALUES (20, 613, 10);
INSERT INTO public.games VALUES (21, 62, 10);
INSERT INTO public.games VALUES (22, 4, 3);
INSERT INTO public.games VALUES (23, 838, 12);
INSERT INTO public.games VALUES (24, 391, 12);
INSERT INTO public.games VALUES (25, 118, 13);
INSERT INTO public.games VALUES (26, 960, 13);
INSERT INTO public.games VALUES (27, 112, 12);
INSERT INTO public.games VALUES (28, 326, 12);
INSERT INTO public.games VALUES (29, 98, 12);
INSERT INTO public.games VALUES (30, 540, 14);
INSERT INTO public.games VALUES (31, 727, 14);
INSERT INTO public.games VALUES (32, 868, 15);
INSERT INTO public.games VALUES (33, 926, 15);
INSERT INTO public.games VALUES (34, 276, 14);
INSERT INTO public.games VALUES (35, 994, 14);
INSERT INTO public.games VALUES (36, 240, 14);
INSERT INTO public.games VALUES (37, 966, 16);
INSERT INTO public.games VALUES (38, 768, 16);
INSERT INTO public.games VALUES (39, 219, 17);
INSERT INTO public.games VALUES (40, 229, 17);
INSERT INTO public.games VALUES (41, 841, 16);
INSERT INTO public.games VALUES (42, 162, 16);
INSERT INTO public.games VALUES (43, 369, 16);
INSERT INTO public.games VALUES (44, 381, 18);
INSERT INTO public.games VALUES (45, 44, 18);
INSERT INTO public.games VALUES (46, 762, 19);
INSERT INTO public.games VALUES (47, 597, 19);
INSERT INTO public.games VALUES (48, 832, 18);
INSERT INTO public.games VALUES (49, 175, 18);
INSERT INTO public.games VALUES (50, 924, 18);
INSERT INTO public.games VALUES (51, 1, 20);
INSERT INTO public.games VALUES (52, 182, 20);
INSERT INTO public.games VALUES (53, 317, 21);
INSERT INTO public.games VALUES (54, 858, 21);
INSERT INTO public.games VALUES (55, 1002, 20);
INSERT INTO public.games VALUES (56, 417, 20);
INSERT INTO public.games VALUES (57, 646, 20);
INSERT INTO public.games VALUES (58, 246, 22);
INSERT INTO public.games VALUES (59, 407, 22);
INSERT INTO public.games VALUES (60, 878, 23);
INSERT INTO public.games VALUES (61, 730, 23);
INSERT INTO public.games VALUES (62, 1002, 22);
INSERT INTO public.games VALUES (63, 44, 22);
INSERT INTO public.games VALUES (64, 823, 22);
INSERT INTO public.games VALUES (65, 280, 24);
INSERT INTO public.games VALUES (66, 426, 24);
INSERT INTO public.games VALUES (67, 900, 25);
INSERT INTO public.games VALUES (68, 416, 25);
INSERT INTO public.games VALUES (69, 846, 24);
INSERT INTO public.games VALUES (70, 334, 24);
INSERT INTO public.games VALUES (71, 468, 24);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1677797042164');
INSERT INTO public.users VALUES (2, 'user_1677797042163');
INSERT INTO public.users VALUES (3, 'seth');
INSERT INTO public.users VALUES (4, 's');
INSERT INTO public.users VALUES (5, 'maria');
INSERT INTO public.users VALUES (6, 'user_1677799171722');
INSERT INTO public.users VALUES (7, 'user_1677799171721');
INSERT INTO public.users VALUES (8, 'user_1677799496377');
INSERT INTO public.users VALUES (9, 'user_1677799496376');
INSERT INTO public.users VALUES (10, 'user_1677799594343');
INSERT INTO public.users VALUES (11, 'user_1677799594342');
INSERT INTO public.users VALUES (12, 'user_1677799775273');
INSERT INTO public.users VALUES (13, 'user_1677799775272');
INSERT INTO public.users VALUES (14, 'user_1677799795933');
INSERT INTO public.users VALUES (15, 'user_1677799795932');
INSERT INTO public.users VALUES (16, 'user_1677799811260');
INSERT INTO public.users VALUES (17, 'user_1677799811259');
INSERT INTO public.users VALUES (18, 'user_1677799823317');
INSERT INTO public.users VALUES (19, 'user_1677799823316');
INSERT INTO public.users VALUES (20, 'user_1677799927903');
INSERT INTO public.users VALUES (21, 'user_1677799927902');
INSERT INTO public.users VALUES (22, 'user_1677799943026');
INSERT INTO public.users VALUES (23, 'user_1677799943025');
INSERT INTO public.users VALUES (24, 'user_1677799954481');
INSERT INTO public.users VALUES (25, 'user_1677799954480');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 71, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 25, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--
