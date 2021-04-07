--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1
-- Dumped by pg_dump version 13.1

-- Started on 2021-04-07 20:51:21

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
-- TOC entry 3 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- TOC entry 3006 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 201 (class 1259 OID 33241)
-- Name: company; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.company (
    id integer NOT NULL,
    address character varying(255),
    creation_date timestamp with time zone DEFAULT now(),
    name character varying(255),
    department_id integer,
    modification_date timestamp with time zone DEFAULT now()
);


ALTER TABLE public.company OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 33261)
-- Name: company_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.company_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.company_id_seq OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 33249)
-- Name: department; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.department (
    id integer NOT NULL,
    name character varying(255)
);


ALTER TABLE public.department OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 33259)
-- Name: department_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.department_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.department_id_seq OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 33239)
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hibernate_sequence OWNER TO postgres;

--
-- TOC entry 2997 (class 0 OID 33241)
-- Dependencies: 201
-- Data for Name: company; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.company VALUES (23, ' address', '2021-04-06 15:56:14.138458+03', 'newname', 24, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (25, ' address', '2021-04-06 15:57:52.580015+03', 'newname', 26, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (27, ' address', '2021-04-06 18:02:32.600049+03', '1', 28, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (36, ' address', '2021-04-06 22:08:32.568785+03', 'yyyyyyyyyyyyyyyyyy', 18, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (37, ' address', '2021-04-06 22:11:28.586363+03', '222yyyyyyyyyyyyyyyyyy', 18, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (39, ' address', '2021-04-06 23:01:19.916543+03', '333yyyyyyyyyyyyyyyyyy', 18, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (40, ' address', '2021-04-06 23:03:20.98926+03', '333yyyyyyyyyyyyyyyyyy', 18, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (41, ' address', '2021-04-06 23:27:31.610595+03', '333yyyyyyyyyyyyyyyyyy', 18, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (42, ' address', '2021-04-06 23:31:45.334806+03', '333yyyyyyyyyyyyyyyyyy', 18, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (43, ' address', '2021-04-06 23:35:44.68592+03', '333yyyyyyyyyyyyyyyyyy', 18, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (44, ' address', '2021-04-06 23:38:06.008744+03', '333yyyyyyyyyyyyyyyyyy', 18, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (45, ' address', '2021-04-06 23:40:36.873732+03', '333yyyyyyyyyyyyyyyyyy', 18, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (46, ' address', '2021-04-06 23:45:41.313871+03', '333yyyyyyyyyyyyyyyyyy', 18, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (48, ' address', '2021-04-07 00:01:44.085011+03', '333yyyyyyyyyyyyyyyyyy', 18, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (51, ' address', '2021-04-07 00:07:40.73881+03', '333yyyyyyyyyyyyyyyyyy', 18, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (52, ' address', '2021-04-07 00:08:47.201592+03', '333yyyyyyyyyyyyyyyyyy', 18, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (54, ' address', '2021-04-07 00:11:06.79829+03', '333yyyyyyyyyyyyyyyyyy', 18, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (55, ' address', '2021-04-07 00:11:16.907856+03', '333yyyyyyyyyyyyyyyyyy', 18, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (56, ' address', '2021-04-07 00:25:50.864203+03', '333yyyyyyyyyyyyyyyyyy', 18, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (57, ' address', '2021-04-07 00:28:15.739508+03', '333yyyyyyyyyyyyyyyyyy', 18, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (58, ' address', '2021-04-07 00:29:29.494421+03', '333yyyyyyyyyyyyyyyyyy', 18, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (61, ' address', '2021-04-07 00:33:57.038405+03', '333yyyyyyyyyyyyyyyyyy', 18, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (62, ' address', '2021-04-07 00:37:05.516272+03', '333yyyyyyyyyyyyyyyyyy', 18, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (63, ' address', '2021-04-07 00:37:36.334761+03', '333yyyyyyyyyyyyyyyyyy', 18, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (64, ' address', '2021-04-07 00:37:37.8622+03', '333yyyyyyyyyyyyyyyyyy', 18, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (65, ' address', '2021-04-07 00:37:38.734945+03', '333yyyyyyyyyyyyyyyyyy', 18, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (66, ' address', '2021-04-07 00:37:39.456923+03', '333yyyyyyyyyyyyyyyyyy', 18, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (67, ' address', '2021-04-07 00:38:25.217035+03', '333yyyyyyyyyyyyyyyyyy', 18, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (68, ' address', '2021-04-07 00:44:19.800958+03', '333yyyyyyyyyyyyyyyyyy', 18, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (69, ' address', '2021-04-07 00:44:22.6961+03', '333yyyyyyyyyyyyyyyyyy', 18, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (70, ' address', '2021-04-07 00:44:41.576044+03', '333yyyyyyyyyyyyyyyyyy', 18, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (71, ' address', '2021-04-07 00:54:29.709725+03', '333yyyyyyyyyyyyyyyyyy', 18, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (72, ' address', '2021-04-07 00:55:14.621182+03', '333yyyyyyyyyyyyyyyyyy', 18, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (73, ' address', '2021-04-07 11:30:46.015029+03', '333yyyyyyyyyyyyyyyyyy', 18, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (74, ' address', '2021-04-07 11:31:08.151925+03', '333yyyyyyyyyyyyyyyyyy', 18, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (75, ' address', '2021-04-07 11:35:07.460728+03', '333yyyyyyyyyyyyyyyyyy', 18, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (76, ' address', '2021-04-07 11:35:11.977986+03', '333yyyyyyyyyyyyyyyyyy', 18, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (77, ' address', '2021-04-07 11:36:46.64249+03', '333yyyyyyyyyyyyyyyyyy', 18, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (78, ' address', '2021-04-07 11:37:31.698235+03', 'vv', 18, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (79, ' address', '2021-04-07 11:47:32.365631+03', 'vv', 18, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (80, ' address', '2021-04-07 11:49:36.435018+03', 'vv', 18, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (82, ' address', '2021-04-07 12:07:58.28153+03', 'mmm', 18, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (83, 'hi', '2021-04-07 12:08:36.495708+03', 'hello', 24, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (13, ' xx st', '2021-04-06 15:56:14.138458+03', 'xx test', 14, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (15, ' xx st', '2021-04-06 15:56:14.138458+03', 'xx test', 16, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (17, ' xx st', '2021-04-06 15:56:14.138458+03', 'xx test', 18, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (19, ' address', '2021-04-06 15:56:14.138458+03', 'newname', 20, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (21, ' address', '2021-04-06 15:56:14.138458+03', 'newname', 22, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (29, 'eee', '2021-04-06 20:02:07.302388+03', 'rrrr', 20, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (30, 'eee', '2021-04-06 20:03:13.100658+03', 'rrr', 22, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (31, 'eee', '2021-04-06 21:34:39.596304+03', 'rrr', 22, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (32, 'eee', '2021-04-06 21:56:31.677479+03', 'rrr', 22, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (33, 'eee', '2021-04-06 21:57:58.959833+03', 'rrr', 24, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (34, 'eee', '2021-04-06 21:59:31.942022+03', 'rrr', 20, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (35, ' address', '2021-04-06 22:00:03.243815+03', 'ddddddddddddddd', 20, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (38, ' address', '2021-04-06 15:56:14.138458+03', 'mmm', 18, '2021-04-07 15:17:43.647583+03');
INSERT INTO public.company VALUES (81, 'pat', '2021-04-07 11:49:44.442498+03', 'pat', 18, '2021-04-07 15:17:43.647583+03');


--
-- TOC entry 2998 (class 0 OID 33249)
-- Dependencies: 202
-- Data for Name: department; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.department VALUES (14, 'test xx');
INSERT INTO public.department VALUES (16, 'test xx');
INSERT INTO public.department VALUES (22, 'department');
INSERT INTO public.department VALUES (24, 'department');
INSERT INTO public.department VALUES (26, 'department');
INSERT INTO public.department VALUES (28, 'department');
INSERT INTO public.department VALUES (18, 'yyyydep');
INSERT INTO public.department VALUES (20, 'alien');


--
-- TOC entry 3007 (class 0 OID 0)
-- Dependencies: 204
-- Name: company_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.company_id_seq', 1, false);


--
-- TOC entry 3008 (class 0 OID 0)
-- Dependencies: 203
-- Name: department_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.department_id_seq', 1, false);


--
-- TOC entry 3009 (class 0 OID 0)
-- Dependencies: 200
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hibernate_sequence', 83, true);


--
-- TOC entry 2862 (class 2606 OID 33248)
-- Name: company company_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.company
    ADD CONSTRAINT company_pkey PRIMARY KEY (id);


--
-- TOC entry 2864 (class 2606 OID 33253)
-- Name: department department_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.department
    ADD CONSTRAINT department_pkey PRIMARY KEY (id);


--
-- TOC entry 2865 (class 2606 OID 33254)
-- Name: company fk19re5anl1fqt4a070a8rst7p; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.company
    ADD CONSTRAINT fk19re5anl1fqt4a070a8rst7p FOREIGN KEY (department_id) REFERENCES public.department(id);


-- Completed on 2021-04-07 20:51:21

--
-- PostgreSQL database dump complete
--

