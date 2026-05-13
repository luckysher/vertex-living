--
-- PostgreSQL database dump
--

\restrict 77MOezE7EqbFinVaxENhM5nZXD8qbRFhffDTXihkhQseh752fDPRh9RxeIzgqTf

-- Dumped from database version 15.3
-- Dumped by pg_dump version 18.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: drizzle; Type: SCHEMA; Schema: -; Owner: vertex
--

CREATE SCHEMA drizzle;


ALTER SCHEMA drizzle OWNER TO vertex;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: __drizzle_migrations; Type: TABLE; Schema: drizzle; Owner: vertex
--

CREATE TABLE drizzle.__drizzle_migrations (
    id integer NOT NULL,
    hash text NOT NULL,
    created_at bigint
);


ALTER TABLE drizzle.__drizzle_migrations OWNER TO vertex;

--
-- Name: __drizzle_migrations_id_seq; Type: SEQUENCE; Schema: drizzle; Owner: vertex
--

CREATE SEQUENCE drizzle.__drizzle_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE drizzle.__drizzle_migrations_id_seq OWNER TO vertex;

--
-- Name: __drizzle_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: drizzle; Owner: vertex
--

ALTER SEQUENCE drizzle.__drizzle_migrations_id_seq OWNED BY drizzle.__drizzle_migrations.id;


--
-- Name: dealers; Type: TABLE; Schema: public; Owner: vertex
--

CREATE TABLE public.dealers (
    id integer NOT NULL,
    user_id integer,
    profile_pic character varying(255) NOT NULL,
    address character varying(255) NOT NULL,
    approved boolean DEFAULT false NOT NULL,
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.dealers OWNER TO vertex;

--
-- Name: dealers_id_seq; Type: SEQUENCE; Schema: public; Owner: vertex
--

ALTER TABLE public.dealers ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.dealers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: listing; Type: TABLE; Schema: public; Owner: vertex
--

CREATE TABLE public.listing (
    id integer NOT NULL,
    listing_type character varying(64) NOT NULL,
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.listing OWNER TO vertex;

--
-- Name: listing_id_seq; Type: SEQUENCE; Schema: public; Owner: vertex
--

ALTER TABLE public.listing ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.listing_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: propertytype; Type: TABLE; Schema: public; Owner: vertex
--

CREATE TABLE public.propertytype (
    id integer NOT NULL,
    name character varying(128) NOT NULL,
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.propertytype OWNER TO vertex;

--
-- Name: propertytype_id_seq; Type: SEQUENCE; Schema: public; Owner: vertex
--

ALTER TABLE public.propertytype ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.propertytype_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: subpropertytype; Type: TABLE; Schema: public; Owner: vertex
--

CREATE TABLE public.subpropertytype (
    id integer NOT NULL,
    property_id integer,
    name character varying(128) NOT NULL,
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.subpropertytype OWNER TO vertex;

--
-- Name: subpropertytype_id_seq; Type: SEQUENCE; Schema: public; Owner: vertex
--

ALTER TABLE public.subpropertytype ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.subpropertytype_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: users; Type: TABLE; Schema: public; Owner: vertex
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    active boolean DEFAULT false NOT NULL,
    "isDealer" boolean DEFAULT false NOT NULL,
    "isAdmin" boolean DEFAULT false NOT NULL,
    "lastLogin" timestamp without time zone,
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.users OWNER TO vertex;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: vertex
--

ALTER TABLE public.users ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: __drizzle_migrations id; Type: DEFAULT; Schema: drizzle; Owner: vertex
--

ALTER TABLE ONLY drizzle.__drizzle_migrations ALTER COLUMN id SET DEFAULT nextval('drizzle.__drizzle_migrations_id_seq'::regclass);


--
-- Data for Name: __drizzle_migrations; Type: TABLE DATA; Schema: drizzle; Owner: vertex
--

COPY drizzle.__drizzle_migrations (id, hash, created_at) FROM stdin;
1	ddc73fb5fb459badbbd6ee95a6a0dcc678cbccd181c9b3b60a7ea147f968891b	1778065300723
2	b27c855f70e2b5fdc7b51f4ee372148740fca27580a5023f90c551cad2bdc262	1778065329616
3	79fc5ba861ba82a88ed7aff4cb2b826a439ded6b35854c336ca135c39b98d38c	1778067163643
4	c8205abd7418c7dc7eef94840541c6e5919cd71cc4509f6db4798d59f7304463	1778153330508
5	70f9976dc6fb853ca13fb8310659e5540d0c57cbe8598a9d26fc1cf48dc8070a	1778340108345
6	1c7fe155878b84e25772f85a00145679d679df62c592372a5db2e432d4deac79	1778340183679
7	b50be3bc32b24874add099eb4a84c944698161cfe0a383e87bd9777f763d6a06	1778340217336
\.


--
-- Data for Name: dealers; Type: TABLE DATA; Schema: public; Owner: vertex
--

COPY public.dealers (id, user_id, profile_pic, address, approved, "createdAt") FROM stdin;
\.


--
-- Data for Name: listing; Type: TABLE DATA; Schema: public; Owner: vertex
--

COPY public.listing (id, listing_type, "createdAt") FROM stdin;
\.


--
-- Data for Name: propertytype; Type: TABLE DATA; Schema: public; Owner: vertex
--

COPY public.propertytype (id, name, "createdAt") FROM stdin;
\.


--
-- Data for Name: subpropertytype; Type: TABLE DATA; Schema: public; Owner: vertex
--

COPY public.subpropertytype (id, property_id, name, "createdAt") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: vertex
--

COPY public.users (id, name, email, password, active, "isDealer", "isAdmin", "lastLogin", "createdAt") FROM stdin;
1	admin	admin@gmail.com	$2b$12$mC/LxIi9.k7oBNDwmJJWaO2i4jC4j.NBLw4QbcRKi8r3iIQMRxT7u	t	f	t	\N	2026-05-13 15:12:19.123256
\.


--
-- Name: __drizzle_migrations_id_seq; Type: SEQUENCE SET; Schema: drizzle; Owner: vertex
--

SELECT pg_catalog.setval('drizzle.__drizzle_migrations_id_seq', 7, true);


--
-- Name: dealers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vertex
--

SELECT pg_catalog.setval('public.dealers_id_seq', 1, false);


--
-- Name: listing_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vertex
--

SELECT pg_catalog.setval('public.listing_id_seq', 1, false);


--
-- Name: propertytype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vertex
--

SELECT pg_catalog.setval('public.propertytype_id_seq', 1, false);


--
-- Name: subpropertytype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vertex
--

SELECT pg_catalog.setval('public.subpropertytype_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vertex
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- Name: __drizzle_migrations __drizzle_migrations_pkey; Type: CONSTRAINT; Schema: drizzle; Owner: vertex
--

ALTER TABLE ONLY drizzle.__drizzle_migrations
    ADD CONSTRAINT __drizzle_migrations_pkey PRIMARY KEY (id);


--
-- Name: dealers dealers_pkey; Type: CONSTRAINT; Schema: public; Owner: vertex
--

ALTER TABLE ONLY public.dealers
    ADD CONSTRAINT dealers_pkey PRIMARY KEY (id);


--
-- Name: listing listing_pkey; Type: CONSTRAINT; Schema: public; Owner: vertex
--

ALTER TABLE ONLY public.listing
    ADD CONSTRAINT listing_pkey PRIMARY KEY (id);


--
-- Name: propertytype propertytype_pkey; Type: CONSTRAINT; Schema: public; Owner: vertex
--

ALTER TABLE ONLY public.propertytype
    ADD CONSTRAINT propertytype_pkey PRIMARY KEY (id);


--
-- Name: subpropertytype subpropertytype_pkey; Type: CONSTRAINT; Schema: public; Owner: vertex
--

ALTER TABLE ONLY public.subpropertytype
    ADD CONSTRAINT subpropertytype_pkey PRIMARY KEY (id);


--
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: vertex
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: vertex
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: dealers dealers_user_id_users_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: vertex
--

ALTER TABLE ONLY public.dealers
    ADD CONSTRAINT dealers_user_id_users_id_fk FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: subpropertytype subpropertytype_property_id_propertytype_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: vertex
--

ALTER TABLE ONLY public.subpropertytype
    ADD CONSTRAINT subpropertytype_property_id_propertytype_id_fk FOREIGN KEY (property_id) REFERENCES public.propertytype(id);


--
-- PostgreSQL database dump complete
--

\unrestrict 77MOezE7EqbFinVaxENhM5nZXD8qbRFhffDTXihkhQseh752fDPRh9RxeIzgqTf

