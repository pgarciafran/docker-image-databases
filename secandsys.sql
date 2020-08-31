--
-- PostgreSQL database dump
--

-- Dumped from database version 10.14 (Ubuntu 10.14-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.14 (Ubuntu 10.14-0ubuntu0.18.04.1)

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

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: users; Type: TABLE; Schema: public; Owner: secandsys
--

CREATE TABLE public.users (
    uid character varying(20) NOT NULL,
    password character varying(10) NOT NULL,
    email character varying(20) NOT NULL,
    admin boolean
);


ALTER TABLE public.users OWNER TO secandsys;

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: secandsys
--

COPY public.users (uid, password, email, admin) FROM stdin;
admin	admin	admin@sas.com	t
ines	XgILH4ok	ines@sas.com	f
\.


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: secandsys
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (uid);


--
-- PostgreSQL database dump complete
--

