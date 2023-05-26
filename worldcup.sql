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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(20) NOT NULL,
    winner_id smallint NOT NULL,
    opponent_id smallint NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(20) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (161, 2018, 'Final', 511, 512, 4, 2);
INSERT INTO public.games VALUES (162, 2018, 'Third Place', 513, 514, 2, 0);
INSERT INTO public.games VALUES (163, 2018, 'Semi-Final', 512, 514, 2, 1);
INSERT INTO public.games VALUES (164, 2018, 'Semi-Final', 511, 513, 1, 0);
INSERT INTO public.games VALUES (165, 2018, 'Quarter-Final', 512, 515, 3, 2);
INSERT INTO public.games VALUES (166, 2018, 'Quarter-Final', 514, 516, 2, 0);
INSERT INTO public.games VALUES (167, 2018, 'Quarter-Final', 513, 517, 2, 1);
INSERT INTO public.games VALUES (168, 2018, 'Quarter-Final', 511, 518, 2, 0);
INSERT INTO public.games VALUES (169, 2018, 'Eighth-Final', 514, 519, 2, 1);
INSERT INTO public.games VALUES (170, 2018, 'Eighth-Final', 516, 520, 1, 0);
INSERT INTO public.games VALUES (171, 2018, 'Eighth-Final', 513, 521, 3, 2);
INSERT INTO public.games VALUES (172, 2018, 'Eighth-Final', 517, 522, 2, 0);
INSERT INTO public.games VALUES (173, 2018, 'Eighth-Final', 512, 523, 2, 1);
INSERT INTO public.games VALUES (174, 2018, 'Eighth-Final', 515, 524, 2, 1);
INSERT INTO public.games VALUES (175, 2018, 'Eighth-Final', 518, 525, 2, 1);
INSERT INTO public.games VALUES (176, 2018, 'Eighth-Final', 511, 526, 4, 3);
INSERT INTO public.games VALUES (177, 2014, 'Final', 527, 526, 1, 0);
INSERT INTO public.games VALUES (178, 2014, 'Third Place', 528, 517, 3, 0);
INSERT INTO public.games VALUES (179, 2014, 'Semi-Final', 526, 528, 1, 0);
INSERT INTO public.games VALUES (180, 2014, 'Semi-Final', 527, 517, 7, 1);
INSERT INTO public.games VALUES (181, 2014, 'Quarter-Final', 528, 529, 1, 0);
INSERT INTO public.games VALUES (182, 2014, 'Quarter-Final', 526, 513, 1, 0);
INSERT INTO public.games VALUES (183, 2014, 'Quarter-Final', 517, 519, 2, 1);
INSERT INTO public.games VALUES (184, 2014, 'Quarter-Final', 527, 511, 1, 0);
INSERT INTO public.games VALUES (185, 2014, 'Eighth-Final', 517, 530, 2, 1);
INSERT INTO public.games VALUES (186, 2014, 'Eighth-Final', 519, 518, 2, 0);
INSERT INTO public.games VALUES (187, 2014, 'Eighth-Final', 511, 531, 2, 0);
INSERT INTO public.games VALUES (188, 2014, 'Eighth-Final', 527, 532, 2, 1);
INSERT INTO public.games VALUES (189, 2014, 'Eighth-Final', 528, 522, 2, 1);
INSERT INTO public.games VALUES (190, 2014, 'Eighth-Final', 529, 533, 2, 1);
INSERT INTO public.games VALUES (191, 2014, 'Eighth-Final', 526, 520, 1, 0);
INSERT INTO public.games VALUES (192, 2014, 'Eighth-Final', 513, 534, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (511, 'France');
INSERT INTO public.teams VALUES (512, 'Croatia');
INSERT INTO public.teams VALUES (513, 'Belgium');
INSERT INTO public.teams VALUES (514, 'England');
INSERT INTO public.teams VALUES (515, 'Russia');
INSERT INTO public.teams VALUES (516, 'Sweden');
INSERT INTO public.teams VALUES (517, 'Brazil');
INSERT INTO public.teams VALUES (518, 'Uruguay');
INSERT INTO public.teams VALUES (519, 'Colombia');
INSERT INTO public.teams VALUES (520, 'Switzerland');
INSERT INTO public.teams VALUES (521, 'Japan');
INSERT INTO public.teams VALUES (522, 'Mexico');
INSERT INTO public.teams VALUES (523, 'Denmark');
INSERT INTO public.teams VALUES (524, 'Spain');
INSERT INTO public.teams VALUES (525, 'Portugal');
INSERT INTO public.teams VALUES (526, 'Argentina');
INSERT INTO public.teams VALUES (527, 'Germany');
INSERT INTO public.teams VALUES (528, 'Netherlands');
INSERT INTO public.teams VALUES (529, 'Costa Rica');
INSERT INTO public.teams VALUES (530, 'Chile');
INSERT INTO public.teams VALUES (531, 'Nigeria');
INSERT INTO public.teams VALUES (532, 'Algeria');
INSERT INTO public.teams VALUES (533, 'Greece');
INSERT INTO public.teams VALUES (534, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 192, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 534, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_opponent_teams_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opponent_teams_games FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_winner_teams_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_winner_teams_games FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

