--
-- PostgreSQL database dump
--

\restrict lVbk2uqZWIpAgbrHmj3o4wO4DF9lSSmMANfOIjzlC0Dt4NrbZbfmrIdEs7dDaTi

-- Dumped from database version 18.4 (Debian 18.4-1.pgdg13+1)
-- Dumped by pg_dump version 18.4 (Debian 18.4-1.pgdg13+1)

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: seat_allocation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.seat_allocation (
    id integer NOT NULL,
    institute text NOT NULL,
    academic_program text NOT NULL,
    seat_type text NOT NULL,
    gender text NOT NULL,
    opening_rank integer,
    closing_rank integer,
    rank_type character varying(20) DEFAULT 'GENERAL'::character varying
);


ALTER TABLE public.seat_allocation OWNER TO postgres;

--
-- Name: seat_allocation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.seat_allocation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.seat_allocation_id_seq OWNER TO postgres;

--
-- Name: seat_allocation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.seat_allocation_id_seq OWNED BY public.seat_allocation.id;


--
-- Name: seat_allocation id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seat_allocation ALTER COLUMN id SET DEFAULT nextval('public.seat_allocation_id_seq'::regclass);


--
-- Data for Name: seat_allocation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.seat_allocation (id, institute, academic_program, seat_type, gender, opening_rank, closing_rank, rank_type) FROM stdin;
1	IITBhubaneswar	Civil Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	4402	5414	GENERAL
2	IITBhubaneswar	Civil Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	8189	8600	GENERAL
3	IITBhubaneswar	Civil Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	2214	2346	GENERAL
4	IITBhubaneswar	Civil Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	3688	3698	GENERAL
5	IITBhubaneswar	Civil Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	10922	16156	GENERAL
6	IITBhubaneswar	Civil Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	19820	23960	GENERAL
7	IITBhubaneswar	Civil Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	2203	2872	GENERAL
8	IITBhubaneswar	Civil Engineering (4 Years Bachelor of Technology)	SC	Female-Only	2833	3644	GENERAL
9	IITBhubaneswar	Civil Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	883	1093	GENERAL
10	IITBhubaneswar	Civil Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1402	1429	GENERAL
11	IITBhubaneswar	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	984	1510	GENERAL
12	IITBhubaneswar	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	2515	3264	GENERAL
13	IITBhubaneswar	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	54	54	GENERAL
14	IITBhubaneswar	Computer Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	426	538	GENERAL
15	IITBhubaneswar	Computer Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	923	1035	GENERAL
16	IITBhubaneswar	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	2344	4162	GENERAL
17	IITBhubaneswar	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	4082	6467	GENERAL
18	IITBhubaneswar	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Female-Only	50	50	PREPARATORY
19	IITBhubaneswar	Computer Science and Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	344	747	GENERAL
20	IITBhubaneswar	Computer Science and Engineering (4 Years Bachelor of Technology)	SC	Female-Only	1158	1330	GENERAL
21	IITBhubaneswar	Computer Science and Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	136	265	GENERAL
22	IITBhubaneswar	Computer Science and Engineering (4 Years Bachelor of Technology)	ST	Female-Only	663	663	GENERAL
23	IITBhubaneswar	Electrical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	2573	3215	GENERAL
24	IITBhubaneswar	Electrical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	5062	5488	GENERAL
25	IITBhubaneswar	Electrical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1077	1224	GENERAL
26	IITBhubaneswar	Electrical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2525	2530	GENERAL
27	IITBhubaneswar	Electrical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	5974	8165	GENERAL
28	IITBhubaneswar	Electrical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	13141	16009	GENERAL
29	IITBhubaneswar	Electrical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1524	1828	GENERAL
30	IITBhubaneswar	Electrical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	2175	2175	GENERAL
31	IITBhubaneswar	Electrical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	552	919	GENERAL
32	IITBhubaneswar	Electrical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	846	846	GENERAL
33	IITBhubaneswar	Electronics and Communication Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	1763	2248	GENERAL
34	IITBhubaneswar	Electronics and Communication Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	3747	4785	GENERAL
35	IITBhubaneswar	Electronics and Communication Engineering (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Female-Only	69	69	PREPARATORY
36	IITBhubaneswar	Electronics and Communication Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	671	817	GENERAL
37	IITBhubaneswar	Electronics and Communication Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	1429	1429	GENERAL
38	IITBhubaneswar	Electronics and Communication Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	3873	5885	GENERAL
39	IITBhubaneswar	Electronics and Communication Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	8993	10965	GENERAL
40	IITBhubaneswar	Electronics and Communication Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	192	192	GENERAL
41	IITBhubaneswar	Electronics and Communication Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	987	1481	GENERAL
42	IITBhubaneswar	Electronics and Communication Engineering (4 Years Bachelor of Technology)	SC	Female-Only	1476	1476	GENERAL
43	IITBhubaneswar	Electronics and Communication Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	511	563	GENERAL
44	IITBhubaneswar	Electronics and Communication Engineering (4 Years Bachelor of Technology)	ST	Female-Only	830	830	GENERAL
45	IITBhubaneswar	Engineering Physics (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	3628	4834	GENERAL
46	IITBhubaneswar	Engineering Physics (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	6849	6849	GENERAL
47	IITBhubaneswar	Engineering Physics (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1931	2184	GENERAL
48	IITBhubaneswar	Engineering Physics (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	9525	12466	GENERAL
49	IITBhubaneswar	Engineering Physics (4 Years Bachelor of Technology)	OPEN	Female-Only	21659	22403	GENERAL
50	IITBhubaneswar	Engineering Physics (4 Years Bachelor of Technology)	SC	Gender-Neutral	2568	2874	GENERAL
51	IITBhubaneswar	Engineering Physics (4 Years Bachelor of Technology)	SC	Female-Only	3531	3531	GENERAL
52	IITBhubaneswar	Engineering Physics (4 Years Bachelor of Technology)	ST	Gender-Neutral	1221	1221	GENERAL
53	IITBhubaneswar	Mathematics and Computing (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	1664	2092	GENERAL
54	IITBhubaneswar	Mathematics and Computing (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	4715	4715	GENERAL
55	IITBhubaneswar	Mathematics and Computing (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	739	770	GENERAL
56	IITBhubaneswar	Mathematics and Computing (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	4174	4708	GENERAL
57	IITBhubaneswar	Mathematics and Computing (4 Years Bachelor of Technology)	OPEN	Female-Only	7679	8804	GENERAL
58	IITBhubaneswar	Mathematics and Computing (4 Years Bachelor of Technology)	SC	Gender-Neutral	989	1200	GENERAL
59	IITBhubaneswar	Mathematics and Computing (4 Years Bachelor of Technology)	SC	Female-Only	2114	2114	GENERAL
60	IITBhubaneswar	Mathematics and Computing (4 Years Bachelor of Technology)	ST	Gender-Neutral	619	769	GENERAL
61	IITBhubaneswar	Mechanical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	3085	4142	GENERAL
62	IITBhubaneswar	Mechanical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	6760	7664	GENERAL
63	IITBhubaneswar	Mechanical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1573	1717	GENERAL
64	IITBhubaneswar	Mechanical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2880	3157	GENERAL
65	IITBhubaneswar	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	7759	11678	GENERAL
66	IITBhubaneswar	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	17144	20366	GENERAL
67	IITBhubaneswar	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	154	154	PREPARATORY
68	IITBhubaneswar	Mechanical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1859	2479	GENERAL
69	IITBhubaneswar	Mechanical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	3073	3388	GENERAL
70	IITBhubaneswar	Mechanical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	915	1134	GENERAL
71	IITBhubaneswar	Mechanical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1532	1578	GENERAL
72	IITBhubaneswar	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	5336	5774	GENERAL
73	IITBhubaneswar	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	8849	9160	GENERAL
74	IITBhubaneswar	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	2436	2514	GENERAL
75	IITBhubaneswar	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	11591	16268	GENERAL
76	IITBhubaneswar	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	21631	22981	GENERAL
77	IITBhubaneswar	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	2742	3054	GENERAL
78	IITBhubaneswar	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	SC	Female-Only	3877	3877	GENERAL
79	IITBhubaneswar	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	1195	1406	GENERAL
80	IITBhubaneswar	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1764	1764	GENERAL
81	IITBombay	Aerospace Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	928	1295	GENERAL
82	IITBombay	Aerospace Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	2823	3571	GENERAL
83	IITBombay	Aerospace Engineering (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Female-Only	75	75	PREPARATORY
84	IITBombay	Aerospace Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	297	489	GENERAL
85	IITBombay	Aerospace Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	1160	1160	GENERAL
86	IITBombay	Aerospace Engineering (4 Years Bachelor of Technology)	GEN- EWS(PwD)	Gender-Neutral	41	41	GENERAL
87	IITBombay	Aerospace Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	1195	2361	GENERAL
88	IITBombay	Aerospace Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	4812	5994	GENERAL
89	IITBombay	Aerospace Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	238	703	GENERAL
90	IITBombay	Aerospace Engineering (4 Years Bachelor of Technology)	SC	Female-Only	459	1252	GENERAL
91	IITBombay	Aerospace Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	315	474	GENERAL
92	IITBombay	Aerospace Engineering (4 Years Bachelor of Technology)	ST	Female-Only	684	684	GENERAL
93	IITBombay	Chemical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	800	1255	GENERAL
94	IITBombay	Chemical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	2840	3552	GENERAL
95	IITBombay	Chemical Engineering (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	86	86	PREPARATORY
96	IITBombay	Chemical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	385	500	GENERAL
97	IITBombay	Chemical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	1139	1152	GENERAL
98	IITBombay	Chemical Engineering (4 Years Bachelor of Technology)	GEN- EWS(PwD)	Gender-Neutral	23	23	PREPARATORY
99	IITBombay	Chemical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	601	2464	GENERAL
100	IITBombay	Chemical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	4813	5969	GENERAL
101	IITBombay	Chemical Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	176	176	GENERAL
102	IITBombay	Chemical Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Female-Only	198	198	GENERAL
103	IITBombay	Chemical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	443	735	GENERAL
104	IITBombay	Chemical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	1124	1242	GENERAL
105	IITBombay	Chemical Engineering (4 Years Bachelor of Technology)	SC(PwD)	Gender-Neutral	9	9	GENERAL
106	IITBombay	Chemical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	308	469	GENERAL
107	IITBombay	Chemical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	523	649	GENERAL
108	IITBombay	Civil Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	973	1829	GENERAL
109	IITBombay	Civil Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	3469	4597	GENERAL
110	IITBombay	Civil Engineering (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	80	30	GENERAL
111	IITBombay	Civil Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	522	725	GENERAL
112	IITBombay	Civil Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	1442	1643	GENERAL
113	IITBombay	Civil Engineering (4 Years Bachelor of Technology)	GEN- EWS(PwD)	Gender-Neutral	10	10	PREPARATORY
114	IITBombay	Civil Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	2666	4250	GENERAL
115	IITBombay	Civil Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	6085	8597	GENERAL
116	IITBombay	Civil Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	62	202	GENERAL
117	IITBombay	Civil Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	444	946	GENERAL
118	IITBombay	Civil Engineering (4 Years Bachelor of Technology)	SC	Female-Only	824	1778	GENERAL
119	IITBombay	Civil Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	23	290	GENERAL
120	IITBombay	Civil Engineering (4 Years Bachelor of Technology)	ST	Female-Only	294	522	GENERAL
121	IITBombay	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	6	54	GENERAL
122	IITBombay	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	70	331	GENERAL
123	IITBombay	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	2	3	GENERAL
124	IITBombay	Computer Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	5	20	GENERAL
125	IITBombay	Computer Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	38	53	GENERAL
126	IITBombay	Computer Science and Engineering (4 Years Bachelor of Technology)	GEN- EWS(PwD)	Gender-Neutral	3	3	GENERAL
127	IITBombay	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	1	66	GENERAL
128	IITBombay	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	29	369	GENERAL
129	IITBombay	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	1	4	GENERAL
130	IITBombay	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Female-Only	12	12	GENERAL
131	IITBombay	Computer Science and Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1	31	GENERAL
132	IITBombay	Computer Science and Engineering (4 Years Bachelor of Technology)	SC	Female-Only	111	270	GENERAL
133	IITBombay	Computer Science and Engineering (4 Years Bachelor of Technology)	SC(PwD)	Gender-Neutral	1	1	GENERAL
134	IITBombay	Computer Science and Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	2	19	GENERAL
135	IITBombay	Computer Science and Engineering (4 Years Bachelor of Technology)	ST	Female-Only	17	76	GENERAL
136	IITBombay	Computer Science and Engineering (4 Years Bachelor of Technology)	ST(PwD)	Gender-Neutral	1	1	GENERAL
137	IITBombay	Electrical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	122	339	GENERAL
138	IITBombay	Electrical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	588	1117	GENERAL
139	IITBombay	Electrical Engineering (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	20	20	GENERAL
140	IITBombay	Electrical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	51	113	GENERAL
141	IITBombay	Electrical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	235	396	GENERAL
142	IITBombay	Electrical Engineering (4 Years Bachelor of Technology)	GEN- EWS(PwD)	Gender-Neutral	11	11	GENERAL
143	IITBombay	Electrical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	106	433	GENERAL
144	IITBombay	Electrical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	779	1914	GENERAL
145	IITBombay	Electrical Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	23	23	GENERAL
146	IITBombay	Electrical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	57	163	GENERAL
147	IITBombay	Electrical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	345	753	GENERAL
148	IITBombay	Electrical Engineering (4 Years Bachelor of Technology)	SC(PwD)	Gender-Neutral	7	7	GENERAL
149	IITBombay	Electrical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	21	96	GENERAL
150	IITBombay	Electrical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	196	260	GENERAL
151	IITBombay	Engineering Physics (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	269	1247	GENERAL
152	IITBombay	Engineering Physics (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	1588	3828	GENERAL
153	IITBombay	Engineering Physics (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	26	26	PREPARATORY
154	IITBombay	Engineering Physics (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	260	615	GENERAL
155	IITBombay	Engineering Physics (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	1172	1172	GENERAL
156	IITBombay	Engineering Physics (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	122	1539	GENERAL
157	IITBombay	Engineering Physics (4 Years Bachelor of Technology)	OPEN	Female-Only	3126	5593	GENERAL
158	IITBombay	Engineering Physics (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	40	40	GENERAL
159	IITBombay	Engineering Physics (4 Years Bachelor of Technology)	SC	Gender-Neutral	483	850	GENERAL
160	IITBombay	Engineering Physics (4 Years Bachelor of Technology)	SC	Female-Only	1089	1213	GENERAL
161	IITBombay	Engineering Physics (4 Years Bachelor of Technology)	ST	Gender-Neutral	353	638	GENERAL
162	IITBombay	Engineering Physics (4 Years Bachelor of Technology)	ST	Female-Only	642	642	GENERAL
163	IITBombay	Mechanical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	335	946	GENERAL
164	IITBombay	Mechanical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	1158	2632	GENERAL
165	IITBombay	Mechanical Engineering (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	67	69	GENERAL
166	IITBombay	Mechanical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	201	336	GENERAL
167	IITBombay	Mechanical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	859	1086	GENERAL
168	IITBombay	Mechanical Engineering (4 Years Bachelor of Technology)	GEN- EWS(PwD)	Gender-Neutral	13	13	PREPARATORY
169	IITBombay	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	490	1834	GENERAL
170	IITBombay	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	2816	4693	GENERAL
171	IITBombay	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	89	93	GENERAL
172	IITBombay	Mechanical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	168	513	GENERAL
173	IITBombay	Mechanical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	859	1179	GENERAL
174	IITBombay	Mechanical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	129	291	GENERAL
175	IITBombay	Mechanical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	636	766	GENERAL
176	IITBombay	Metallurgical Engineering and Materials Science (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	1356	2159	GENERAL
177	IITBombay	Metallurgical Engineering and Materials Science (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	3893	4903	GENERAL
178	IITBombay	Metallurgical Engineering and Materials Science (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	580	917	GENERAL
179	IITBombay	Metallurgical Engineering and Materials Science (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	1515	1782	GENERAL
180	IITBombay	Metallurgical Engineering and Materials Science (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	2712	4345	GENERAL
181	IITBombay	Metallurgical Engineering and Materials Science (4 Years Bachelor of Technology)	OPEN	Female-Only	6628	8075	GENERAL
182	IITBombay	Metallurgical Engineering and Materials Science (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	92	92	PREPARATORY
183	IITBombay	Metallurgical Engineering and Materials Science (4 Years Bachelor of Technology)	SC	Gender-Neutral	968	1345	GENERAL
184	IITBombay	Metallurgical Engineering and Materials Science (4 Years Bachelor of Technology)	SC	Female-Only	2121	2209	GENERAL
185	IITBombay	Metallurgical Engineering and Materials Science (4 Years Bachelor of Technology)	ST	Gender-Neutral	377	677	GENERAL
186	IITBombay	Metallurgical Engineering and Materials Science (4 Years Bachelor of Technology)	ST	Female-Only	864	1156	GENERAL
187	IITBombay	Energy Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	1089	1455	GENERAL
188	IITBombay	Energy Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	3365	3818	GENERAL
189	IITBombay	Energy Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	381	494	GENERAL
190	IITBombay	Energy Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	1422	1422	GENERAL
191	IITBombay	Energy Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	1810	2584	GENERAL
192	IITBombay	Energy Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	4087	6136	GENERAL
193	IITBombay	Energy Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	320	841	GENERAL
194	IITBombay	Energy Engineering (4 Years Bachelor of Technology)	SC	Female-Only	2222	2222	GENERAL
195	IITBombay	Energy Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	678	732	GENERAL
196	IITBombay	Energy Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1090	1090	GENERAL
197	IITBombay	Chemistry (4 Years Bachelor of Science)	OBC-NCL	Gender-Neutral	2801	3637	GENERAL
198	IITBombay	Chemistry (4 Years Bachelor of Science)	OBC-NCL	Female-Only	6467	6573	GENERAL
199	IITBombay	Chemistry (4 Years Bachelor of Science)	GEN-EWS	Gender-Neutral	986	1353	GENERAL
200	IITBombay	Chemistry (4 Years Bachelor of Science)	GEN-EWS	Female-Only	2621	2621	GENERAL
201	IITBombay	Chemistry (4 Years Bachelor of Science)	OPEN	Gender-Neutral	3133	7228	GENERAL
202	IITBombay	Chemistry (4 Years Bachelor of Science)	OPEN	Female-Only	9368	10435	GENERAL
203	IITBombay	Chemistry (4 Years Bachelor of Science)	SC	Gender-Neutral	1436	2164	GENERAL
204	IITBombay	Chemistry (4 Years Bachelor of Science)	SC	Female-Only	719	719	GENERAL
205	IITBombay	Chemistry (4 Years Bachelor of Science)	ST	Gender-Neutral	910	1140	GENERAL
206	IITBombay	Chemistry (4 Years Bachelor of Science)	ST	Female-Only	1540	1540	GENERAL
207	IITBombay	Economics (4 Years Bachelor of Science)	OBC-NCL	Gender-Neutral	993	1405	GENERAL
208	IITBombay	Economics (4 Years Bachelor of Science)	OBC-NCL	Female-Only	2899	3344	GENERAL
209	IITBombay	Economics (4 Years Bachelor of Science)	GEN-EWS	Gender-Neutral	498	554	GENERAL
210	IITBombay	Economics (4 Years Bachelor of Science)	GEN-EWS	Female-Only	978	978	GENERAL
211	IITBombay	Economics (4 Years Bachelor of Science)	OPEN	Gender-Neutral	1531	2372	GENERAL
212	IITBombay	Economics (4 Years Bachelor of Science)	OPEN	Female-Only	3744	4928	GENERAL
213	IITBombay	Economics (4 Years Bachelor of Science)	SC	Gender-Neutral	371	855	GENERAL
214	IITBombay	Economics (4 Years Bachelor of Science)	SC	Female-Only	1565	1565	GENERAL
215	IITBombay	Economics (4 Years Bachelor of Science)	ST	Gender-Neutral	691	828	GENERAL
216	IITBombay	Economics (4 Years Bachelor of Science)	ST	Female-Only	564	564	GENERAL
217	IITBombay	BS in Mathematics (4 Years Bachelor of Science)	OBC-NCL	Gender-Neutral	742	1018	GENERAL
218	IITBombay	BS in Mathematics (4 Years Bachelor of Science)	OBC-NCL	Female-Only	4453	4453	GENERAL
219	IITBombay	BS in Mathematics (4 Years Bachelor of Science)	OBC-NCL(PwD)	Gender-Neutral	56	56	PREPARATORY
220	IITBombay	BS in Mathematics (4 Years Bachelor of Science)	GEN-EWS	Gender-Neutral	397	397	GENERAL
221	IITBombay	BS in Mathematics (4 Years Bachelor of Science)	GEN-EWS	Female-Only	1085	1085	GENERAL
222	IITBombay	BS in Mathematics (4 Years Bachelor of Science)	OPEN	Gender-Neutral	753	1067	GENERAL
223	IITBombay	BS in Mathematics (4 Years Bachelor of Science)	OPEN	Female-Only	3432	3432	GENERAL
224	IITBombay	BS in Mathematics (4 Years Bachelor of Science)	SC	Gender-Neutral	556	1147	GENERAL
225	IITBombay	BS in Mathematics (4 Years Bachelor of Science)	SC	Female-Only	1771	1771	GENERAL
226	IITBombay	BS in Mathematics (4 Years Bachelor of Science)	ST	Gender-Neutral	557	557	GENERAL
227	IITBombay	Applied Geophysics (4 Years Bachelor of Science)	OBC-NCL	Gender-Neutral	2786	4014	GENERAL
228	IITBombay	Applied Geophysics (4 Years Bachelor of Science)	OBC-NCL	Female-Only	5934	5934	GENERAL
229	IITBombay	Applied Geophysics (4 Years Bachelor of Science)	GEN-EWS	Gender-Neutral	1123	1311	GENERAL
230	IITBombay	Applied Geophysics (4 Years Bachelor of Science)	GEN-EWS	Female-Only	2839	2839	GENERAL
231	IITBombay	Applied Geophysics (4 Years Bachelor of Science)	OPEN	Gender-Neutral	6087	8343	GENERAL
232	IITBombay	Applied Geophysics (4 Years Bachelor of Science)	OPEN	Female-Only	13688	13761	GENERAL
233	IITBombay	Applied Geophysics (4 Years Bachelor of Science)	SC	Gender-Neutral	2140	2370	GENERAL
234	IITBombay	Applied Geophysics (4 Years Bachelor of Science)	SC	Female-Only	2950	2950	GENERAL
235	IITBombay	Applied Geophysics (4 Years Bachelor of Science)	ST	Gender-Neutral	1063	1070	GENERAL
236	IITBombay	Applied Geophysics (4 Years Bachelor of Science)	ST	Female-Only	1581	1581	GENERAL
237	IITBombay	Electrical Engineering (5 Years Bachelor and Master of Technology (Dual Degree))	OBC-NCL	Gender-Neutral	417	549	GENERAL
238	IITBombay	Electrical Engineering (5 Years Bachelor and Master of Technology (Dual Degree))	OBC-NCL	Female-Only	1211	1545	GENERAL
239	IITBombay	Electrical Engineering (5 Years Bachelor and Master of Technology (Dual Degree))	OBC-NCL(PwD)	Gender-Neutral	37	37	GENERAL
240	IITBombay	Electrical Engineering (5 Years Bachelor and Master of Technology (Dual Degree))	GEN-EWS	Gender-Neutral	178	265	GENERAL
241	IITBombay	Electrical Engineering (5 Years Bachelor and Master of Technology (Dual Degree))	GEN-EWS	Female-Only	443	621	GENERAL
242	IITBombay	Electrical Engineering (5 Years Bachelor and Master of Technology (Dual Degree))	GEN- EWS(PwD)	Gender-Neutral	36	36	GENERAL
243	IITBombay	Electrical Engineering (5 Years Bachelor and Master of Technology (Dual Degree))	OPEN	Gender-Neutral	470	841	GENERAL
244	IITBombay	Electrical Engineering (5 Years Bachelor and Master of Technology (Dual Degree))	OPEN	Female-Only	2219	3274	GENERAL
245	IITBombay	Electrical Engineering (5 Years Bachelor and Master of Technology (Dual Degree))	OPEN(PwD)	Gender-Neutral	29	29	GENERAL
246	IITBombay	Electrical Engineering (5 Years Bachelor and Master of Technology (Dual Degree))	SC	Gender-Neutral	128	293	GENERAL
247	IITBombay	Electrical Engineering (5 Years Bachelor and Master of Technology (Dual Degree))	SC	Female-Only	715	998	GENERAL
248	IITBombay	Electrical Engineering (5 Years Bachelor and Master of Technology (Dual Degree))	ST	Gender-Neutral	168	204	GENERAL
249	IITBombay	Electrical Engineering (5 Years Bachelor and Master of Technology (Dual Degree))	ST	Female-Only	248	248	GENERAL
250	IITBombay	Environmental Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	2015	2587	GENERAL
251	IITBombay	Environmental Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	5175	5253	GENERAL
252	IITBombay	Environmental Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	802	959	GENERAL
253	IITBombay	Environmental Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2412	2412	GENERAL
254	IITBombay	Environmental Science and Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	3143	4777	GENERAL
255	IITBombay	Environmental Science and Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	8026	8925	GENERAL
256	IITBombay	Environmental Science and Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	78	78	PREPARATORY
257	IITBombay	Environmental Science and Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1143	1375	GENERAL
258	IITBombay	Environmental Science and Engineering (4 Years Bachelor of Technology)	SC	Female-Only	2221	2221	GENERAL
259	IITBombay	Environmental Science and Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	792	821	GENERAL
260	IITBombay	Environmental Science and Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1239	1239	GENERAL
261	IITBombay	Industrial Engineering and Operations Research (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	668	974	GENERAL
262	IITBombay	Industrial Engineering and Operations Research (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	2844	2913	GENERAL
263	IITBombay	Industrial Engineering and Operations Research (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	100	100	PREPARATORY
264	IITBombay	Industrial Engineering and Operations Research (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	161	222	GENERAL
265	IITBombay	Industrial Engineering and Operations Research (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	711	711	GENERAL
266	IITBombay	Industrial Engineering and Operations Research (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	264	1273	GENERAL
267	IITBombay	Industrial Engineering and Operations Research (4 Years Bachelor of Technology)	OPEN	Female-Only	2669	3012	GENERAL
268	IITBombay	Industrial Engineering and Operations Research (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	58	58	GENERAL
269	IITBombay	Industrial Engineering and Operations Research (4 Years Bachelor of Technology)	SC	Gender-Neutral	332	692	GENERAL
270	IITBombay	Industrial Engineering and Operations Research (4 Years Bachelor of Technology)	SC	Female-Only	1172	1172	GENERAL
271	IITBombay	Industrial Engineering and Operations Research (4 Years Bachelor of Technology)	ST	Gender-Neutral	104	289	GENERAL
272	IITBombay	Industrial Engineering and Operations Research (4 Years Bachelor of Technology)	ST	Female-Only	582	582	GENERAL
273	IITMandi	Civil Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	4433	5093	GENERAL
274	IITMandi	Civil Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	8286	8761	GENERAL
275	IITMandi	Civil Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	2022	2221	GENERAL
276	IITMandi	Civil Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	3378	3378	GENERAL
277	IITMandi	Civil Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	10954	14274	GENERAL
278	IITMandi	Civil Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	21169	23543	GENERAL
279	IITMandi	Civil Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	2040	2666	GENERAL
280	IITMandi	Civil Engineering (4 Years Bachelor of Technology)	SC	Female-Only	3688	3688	GENERAL
281	IITMandi	Civil Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	983	1055	GENERAL
282	IITMandi	Civil Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1531	1531	GENERAL
283	IITMandi	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	904	1454	GENERAL
284	IITMandi	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	3513	3841	GENERAL
285	IITMandi	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	64	64	GENERAL
286	IITMandi	Computer Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	369	527	GENERAL
287	IITMandi	Computer Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	1012	1042	GENERAL
288	IITMandi	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	2096	3123	GENERAL
289	IITMandi	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	6922	7997	GENERAL
290	IITMandi	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	137	137	GENERAL
291	IITMandi	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Female-Only	18	18	PREPARATORY
292	IITMandi	Computer Science and Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	615	767	GENERAL
293	IITMandi	Computer Science and Engineering (4 Years Bachelor of Technology)	SC	Female-Only	1096	1216	GENERAL
294	IITMandi	Computer Science and Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	167	370	GENERAL
295	IITMandi	Computer Science and Engineering (4 Years Bachelor of Technology)	ST	Female-Only	780	780	GENERAL
296	IITMandi	Electrical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	2504	3288	GENERAL
297	IITMandi	Electrical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	6397	6755	GENERAL
298	IITMandi	Electrical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	973	1134	GENERAL
299	IITMandi	Electrical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2383	2383	GENERAL
300	IITMandi	Electrical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	5136	7590	GENERAL
301	IITMandi	Electrical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	11244	14984	GENERAL
302	IITMandi	Electrical Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	264	264	PREPARATORY
303	IITMandi	Electrical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1231	1826	GENERAL
304	IITMandi	Electrical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	2359	2978	GENERAL
305	IITMandi	Electrical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	712	907	GENERAL
306	IITMandi	Electrical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1335	1335	GENERAL
307	IITMandi	Engineering Physics (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	4046	4854	GENERAL
308	IITMandi	Engineering Physics (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	7637	8218	GENERAL
309	IITMandi	Engineering Physics (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1894	2064	GENERAL
310	IITMandi	Engineering Physics (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	3646	3646	GENERAL
311	IITMandi	Engineering Physics (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	8831	12110	GENERAL
312	IITMandi	Engineering Physics (4 Years Bachelor of Technology)	OPEN	Female-Only	19108	20778	GENERAL
313	IITMandi	Engineering Physics (4 Years Bachelor of Technology)	SC	Gender-Neutral	2540	2888	GENERAL
314	IITMandi	Engineering Physics (4 Years Bachelor of Technology)	SC	Female-Only	3966	3966	GENERAL
315	IITMandi	Engineering Physics (4 Years Bachelor of Technology)	ST	Gender-Neutral	1190	1366	GENERAL
316	IITMandi	Mechanical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	3470	4165	GENERAL
317	IITMandi	Mechanical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	7239	8444	GENERAL
318	IITMandi	Mechanical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1354	1672	GENERAL
319	IITMandi	Mechanical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	3012	3012	GENERAL
320	IITMandi	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	8023	10267	GENERAL
321	IITMandi	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	17438	20608	GENERAL
322	IITMandi	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	276	276	PREPARATORY
323	IITMandi	Mechanical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1708	2274	GENERAL
324	IITMandi	Mechanical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	3295	3615	GENERAL
325	IITMandi	Mechanical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	1022	1129	GENERAL
326	IITMandi	Mechanical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1769	1769	GENERAL
327	IITMandi	Bio Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	5377	5772	GENERAL
328	IITMandi	Bio Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	9009	10160	GENERAL
329	IITMandi	Bio Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	2230	2242	GENERAL
330	IITMandi	Bio Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	3890	3890	GENERAL
331	IITMandi	Bio Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	12646	14879	GENERAL
332	IITMandi	Bio Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	24904	25194	GENERAL
333	IITMandi	Bio Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	2930	3229	GENERAL
334	IITMandi	Bio Engineering (4 Years Bachelor of Technology)	SC	Female-Only	3971	3971	GENERAL
335	IITMandi	Bio Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	1495	1499	GENERAL
336	IITMandi	Data Science and Artificial Intelligence (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	1474	1782	GENERAL
337	IITMandi	Data Science and Artificial Intelligence (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	4364	4773	GENERAL
338	IITMandi	Data Science and Artificial Intelligence (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	524	722	GENERAL
339	IITMandi	Data Science and Artificial Intelligence (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	1287	1287	GENERAL
340	IITMandi	Data Science and Artificial Intelligence (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	3221	3928	GENERAL
341	IITMandi	Data Science and Artificial Intelligence (4 Years Bachelor of Technology)	OPEN	Female-Only	8476	9741	GENERAL
342	IITMandi	Data Science and Artificial Intelligence (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	145	145	GENERAL
343	IITMandi	Data Science and Artificial Intelligence (4 Years Bachelor of Technology)	OPEN(PwD)	Female-Only	155	155	PREPARATORY
344	IITMandi	Data Science and Artificial Intelligence (4 Years Bachelor of Technology)	SC	Gender-Neutral	765	1075	GENERAL
345	IITMandi	Data Science and Artificial Intelligence (4 Years Bachelor of Technology)	SC	Female-Only	1666	1666	GENERAL
346	IITMandi	Data Science and Artificial Intelligence (4 Years Bachelor of Technology)	ST	Gender-Neutral	448	525	GENERAL
347	IITMandi	Data Science and Artificial Intelligence (4 Years Bachelor of Technology)	ST	Female-Only	876	876	GENERAL
348	IITMandi	BS in Chemical Sciences (4 Years Bachelor of Science)	OBC-NCL	Gender-Neutral	5718	6092	GENERAL
349	IITMandi	BS in Chemical Sciences (4 Years Bachelor of Science)	OBC-NCL	Female-Only	10467	10536	GENERAL
350	IITMandi	BS in Chemical Sciences (4 Years Bachelor of Science)	GEN-EWS	Gender-Neutral	2420	2515	GENERAL
351	IITMandi	BS in Chemical Sciences (4 Years Bachelor of Science)	GEN-EWS	Female-Only	4218	4218	GENERAL
352	IITMandi	BS in Chemical Sciences (4 Years Bachelor of Science)	OPEN	Gender-Neutral	13425	17491	GENERAL
353	IITMandi	BS in Chemical Sciences (4 Years Bachelor of Science)	OPEN	Female-Only	25305	26718	GENERAL
354	IITMandi	BS in Chemical Sciences (4 Years Bachelor of Science)	SC	Gender-Neutral	2926	3267	GENERAL
355	IITMandi	BS in Chemical Sciences (4 Years Bachelor of Science)	SC	Female-Only	4340	4340	GENERAL
356	IITMandi	BS in Chemical Sciences (4 Years Bachelor of Science)	ST	Gender-Neutral	1465	1525	GENERAL
357	IITMandi	B.Tech in General Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	4150	4674	GENERAL
358	IITMandi	B.Tech in General Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	9103	9476	GENERAL
359	IITMandi	B.Tech in General Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1494	1847	GENERAL
360	IITMandi	B.Tech in General Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2826	2826	GENERAL
361	IITMandi	B.Tech in General Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	8480	11034	GENERAL
362	IITMandi	B.Tech in General Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	16970	17710	GENERAL
363	IITMandi	B.Tech in General Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	2311	2520	GENERAL
364	IITMandi	B.Tech in General Engineering (4 Years Bachelor of Technology)	SC	Female-Only	3866	3866	GENERAL
365	IITMandi	B.Tech in General Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	1216	1315	GENERAL
366	IITMandi	B.Tech in Materials Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	4835	5451	GENERAL
367	IITMandi	B.Tech in Materials Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	9183	9922	GENERAL
368	IITMandi	B.Tech in Materials Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	2056	2271	GENERAL
369	IITMandi	B.Tech in Materials Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	3895	3895	GENERAL
370	IITMandi	B.Tech in Materials Science and Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	12260	14368	GENERAL
371	IITMandi	B.Tech in Materials Science and Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	23443	23642	GENERAL
372	IITMandi	B.Tech in Materials Science and Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	2554	2890	GENERAL
373	IITMandi	B.Tech in Materials Science and Engineering (4 Years Bachelor of Technology)	SC	Female-Only	3968	3968	GENERAL
374	IITMandi	B.Tech in Materials Science and Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	1334	1460	GENERAL
375	IITMandi	B.Tech in Microelectronics&VLSI (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	1975	2842	GENERAL
376	IITMandi	B.Tech in Microelectronics&VLSI (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	6323	6451	GENERAL
377	IITMandi	B.Tech in Microelectronics&VLSI (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	898	1006	GENERAL
378	IITMandi	B.Tech in Microelectronics&VLSI (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2405	2405	GENERAL
379	IITMandi	B.Tech in Microelectronics&VLSI (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	4593	6166	GENERAL
380	IITMandi	B.Tech in Microelectronics&VLSI (4 Years Bachelor of Technology)	OPEN	Female-Only	11355	12496	GENERAL
381	IITMandi	B.Tech in Microelectronics&VLSI (4 Years Bachelor of Technology)	SC	Gender-Neutral	929	1503	GENERAL
382	IITMandi	B.Tech in Microelectronics&VLSI (4 Years Bachelor of Technology)	SC	Female-Only	3604	3604	GENERAL
383	IITMandi	B.Tech in Microelectronics&VLSI (4 Years Bachelor of Technology)	ST	Gender-Neutral	924	994	GENERAL
384	IITMandi	B.Tech in Mathematics and Computing (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	1498	1935	GENERAL
385	IITMandi	B.Tech in Mathematics and Computing (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	4094	4949	GENERAL
386	IITMandi	B.Tech in Mathematics and Computing (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	529	614	GENERAL
387	IITMandi	B.Tech in Mathematics and Computing (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	1303	1303	GENERAL
388	IITMandi	B.Tech in Mathematics and Computing (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	3945	4285	GENERAL
389	IITMandi	B.Tech in Mathematics and Computing (4 Years Bachelor of Technology)	OPEN	Female-Only	9721	9846	GENERAL
390	IITMandi	B.Tech in Mathematics and Computing (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	193	193	PREPARATORY
391	IITMandi	B.Tech in Mathematics and Computing (4 Years Bachelor of Technology)	SC	Gender-Neutral	1007	1329	GENERAL
392	IITMandi	B.Tech in Mathematics and Computing (4 Years Bachelor of Technology)	SC	Female-Only	1559	1559	GENERAL
393	IITMandi	B.Tech in Mathematics and Computing (4 Years Bachelor of Technology)	ST	Gender-Neutral	600	617	GENERAL
394	IITDelhi	Biotechnology and Biochemical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	1465	2586	GENERAL
395	IITDelhi	Biotechnology and Biochemical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	5965	6046	GENERAL
396	IITDelhi	Biotechnology and Biochemical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	879	995	GENERAL
397	IITDelhi	Biotechnology and Biochemical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2038	2038	GENERAL
398	IITDelhi	Biotechnology and Biochemical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	3147	4999	GENERAL
399	IITDelhi	Biotechnology and Biochemical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	6350	8927	GENERAL
400	IITDelhi	Biotechnology and Biochemical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1328	1520	GENERAL
401	IITDelhi	Biotechnology and Biochemical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	2022	2448	GENERAL
402	IITDelhi	Biotechnology and Biochemical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	541	906	GENERAL
403	IITDelhi	Biotechnology and Biochemical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1311	1311	GENERAL
404	IITDelhi	Chemical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	840	1257	GENERAL
405	IITDelhi	Chemical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	3352	3795	GENERAL
406	IITDelhi	Chemical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	470	555	GENERAL
407	IITDelhi	Chemical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	870	1069	GENERAL
408	IITDelhi	Chemical Engineering (4 Years Bachelor of Technology)	GEN- EWS(PwD)	Gender-Neutral	35	35	PREPARATORY
409	IITDelhi	Chemical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	1904	2548	GENERAL
410	IITDelhi	Chemical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	5287	5968	GENERAL
411	IITDelhi	Chemical Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	81	81	GENERAL
412	IITDelhi	Chemical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	127	691	GENERAL
413	IITDelhi	Chemical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	1105	1395	GENERAL
414	IITDelhi	Chemical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	181	472	GENERAL
415	IITDelhi	Chemical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	786	786	GENERAL
416	IITDelhi	Civil Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	1054	2003	GENERAL
417	IITDelhi	Civil Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	3597	4703	GENERAL
418	IITDelhi	Civil Engineering (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	84	84	GENERAL
419	IITDelhi	Civil Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	577	775	GENERAL
420	IITDelhi	Civil Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	1296	1704	GENERAL
421	IITDelhi	Civil Engineering (4 Years Bachelor of Technology)	GEN- EWS(PwD)	Gender-Neutral	42	42	PREPARATORY
422	IITDelhi	Civil Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	3244	4302	GENERAL
423	IITDelhi	Civil Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	3660	9193	GENERAL
424	IITDelhi	Civil Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	209	209	GENERAL
425	IITDelhi	Civil Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	520	896	GENERAL
426	IITDelhi	Civil Engineering (4 Years Bachelor of Technology)	SC	Female-Only	276	1973	GENERAL
427	IITDelhi	Civil Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	24	261	GENERAL
428	IITDelhi	Civil Engineering (4 Years Bachelor of Technology)	ST	Female-Only	157	345	GENERAL
429	IITDelhi	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	55	91	GENERAL
430	IITDelhi	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	246	551	GENERAL
431	IITDelhi	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	4	4	GENERAL
432	IITDelhi	Computer Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	22	34	GENERAL
433	IITDelhi	Computer Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	133	148	GENERAL
434	IITDelhi	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	24	126	GENERAL
435	IITDelhi	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	376	498	GENERAL
436	IITDelhi	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	3	3	GENERAL
437	IITDelhi	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Female-Only	20	20	GENERAL
438	IITDelhi	Computer Science and Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	3	45	GENERAL
439	IITDelhi	Computer Science and Engineering (4 Years Bachelor of Technology)	SC	Female-Only	137	171	GENERAL
440	IITDelhi	Computer Science and Engineering (4 Years Bachelor of Technology)	SC(PwD)	Gender-Neutral	3	3	GENERAL
441	IITDelhi	Computer Science and Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	4	26	GENERAL
442	IITDelhi	Computer Science and Engineering (4 Years Bachelor of Technology)	ST	Female-Only	84	87	GENERAL
443	IITDelhi	Computer Science and Engineering (4 Years Bachelor of Technology)	ST(PwD)	Gender-Neutral	2	2	GENERAL
444	IITDelhi	Electrical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	255	410	GENERAL
445	IITDelhi	Electrical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	1254	1484	GENERAL
446	IITDelhi	Electrical Engineering (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	26	26	GENERAL
447	IITDelhi	Electrical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	89	141	GENERAL
448	IITDelhi	Electrical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	428	501	GENERAL
449	IITDelhi	Electrical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	365	605	GENERAL
450	IITDelhi	Electrical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	1617	2627	GENERAL
451	IITDelhi	Electrical Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	14	41	GENERAL
452	IITDelhi	Electrical Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Female-Only	241	241	GENERAL
453	IITDelhi	Electrical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	156	211	GENERAL
454	IITDelhi	Electrical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	712	833	GENERAL
455	IITDelhi	Electrical Engineering (4 Years Bachelor of Technology)	SC(PwD)	Gender-Neutral	17	17	PREPARATORY
456	IITDelhi	Electrical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	40	107	GENERAL
457	IITDelhi	Electrical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	220	310	GENERAL
458	IITDelhi	Electrical Engineering (Power and Automation)(4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	413	501	GENERAL
459	IITDelhi	Electrical Engineering (Power and Automation)(4 Years Bachelor of Technology)	OBC-NCL	Female-Only	1673	1759	GENERAL
460	IITDelhi	Electrical Engineering (Power and Automation)(4 Years Bachelor of Technology)	OBC-NCL(PwD)	Female-Only	103	103	PREPARATORY
461	IITDelhi	Electrical Engineering (Power and Automation)(4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	163	185	GENERAL
462	IITDelhi	Electrical Engineering (Power and Automation)(4 Years Bachelor of Technology)	GEN-EWS	Female-Only	588	588	GENERAL
463	IITDelhi	Electrical Engineering (Power and Automation)(4 Years Bachelor of Technology)	GEN- EWS(PwD)	Gender-Neutral	34	34	GENERAL
464	IITDelhi	Electrical Engineering (Power and Automation)(4 Years Bachelor of Technology)	OPEN	Gender-Neutral	612	823	GENERAL
465	IITDelhi	Electrical Engineering (Power and Automation)(4 Years Bachelor of Technology)	OPEN	Female-Only	2789	2886	GENERAL
466	IITDelhi	Electrical Engineering (Power and Automation)(4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	54	54	GENERAL
467	IITDelhi	Electrical Engineering (Power and Automation)(4 Years Bachelor of Technology)	SC	Gender-Neutral	247	318	GENERAL
468	IITDelhi	Electrical Engineering (Power and Automation)(4 Years Bachelor of Technology)	SC	Female-Only	864	888	GENERAL
469	IITDelhi	Electrical Engineering (Power and Automation)(4 Years Bachelor of Technology)	ST	Gender-Neutral	75	152	GENERAL
470	IITDelhi	Electrical Engineering (Power and Automation)(4 Years Bachelor of Technology)	ST	Female-Only	326	326	GENERAL
471	IITDelhi	Engineering Physics (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	1252	1586	GENERAL
472	IITDelhi	Engineering Physics (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	4360	4738	GENERAL
473	IITDelhi	Engineering Physics (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	680	773	GENERAL
474	IITDelhi	Engineering Physics (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	1609	1609	GENERAL
475	IITDelhi	Engineering Physics (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	1393	2565	GENERAL
476	IITDelhi	Engineering Physics (4 Years Bachelor of Technology)	OPEN	Female-Only	4457	6755	GENERAL
477	IITDelhi	Engineering Physics (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	124	124	GENERAL
478	IITDelhi	Engineering Physics (4 Years Bachelor of Technology)	SC	Gender-Neutral	375	1146	GENERAL
479	IITDelhi	Engineering Physics (4 Years Bachelor of Technology)	SC	Female-Only	2095	2416	GENERAL
480	IITDelhi	Engineering Physics (4 Years Bachelor of Technology)	ST	Gender-Neutral	454	652	GENERAL
481	IITDelhi	Engineering Physics (4 Years Bachelor of Technology)	ST	Female-Only	1186	1186	GENERAL
482	IITDelhi	Mathematics and Computing (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	96	240	GENERAL
483	IITDelhi	Mathematics and Computing (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	701	1107	GENERAL
484	IITDelhi	Mathematics and Computing (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	27	27	GENERAL
485	IITDelhi	Mathematics and Computing (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Female-Only	70	70	GENERAL
486	IITDelhi	Mathematics and Computing (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	58	87	GENERAL
487	IITDelhi	Mathematics and Computing (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	208	283	GENERAL
488	IITDelhi	Mathematics and Computing (4 Years Bachelor of Technology)	GEN- EWS(PwD)	Gender-Neutral	9	9	GENERAL
489	IITDelhi	Mathematics and Computing (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	157	323	GENERAL
490	IITDelhi	Mathematics and Computing (4 Years Bachelor of Technology)	OPEN	Female-Only	743	1234	GENERAL
491	IITDelhi	Mathematics and Computing (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	27	27	GENERAL
492	IITDelhi	Mathematics and Computing (4 Years Bachelor of Technology)	SC	Gender-Neutral	67	124	GENERAL
493	IITDelhi	Mathematics and Computing (4 Years Bachelor of Technology)	SC	Female-Only	240	843	GENERAL
494	IITDelhi	Mathematics and Computing (4 Years Bachelor of Technology)	ST	Gender-Neutral	6	97	GENERAL
495	IITDelhi	Mathematics and Computing (4 Years Bachelor of Technology)	ST	Female-Only	253	253	GENERAL
496	IITDelhi	Mechanical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	448	995	GENERAL
497	IITDelhi	Mechanical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	1559	3359	GENERAL
498	IITDelhi	Mechanical Engineering (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	21	21	PREPARATORY
499	IITDelhi	Mechanical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	350	372	GENERAL
500	IITDelhi	Mechanical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	1192	1210	GENERAL
501	IITDelhi	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	1156	1862	GENERAL
502	IITDelhi	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	4074	5178	GENERAL
503	IITDelhi	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	184	184	GENERAL
504	IITDelhi	Mechanical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	157	602	GENERAL
505	IITDelhi	Mechanical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	1283	1464	GENERAL
506	IITDelhi	Mechanical Engineering (4 Years Bachelor of Technology)	SC(PwD)	Gender-Neutral	6	6	PREPARATORY
507	IITDelhi	Mechanical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	239	341	GENERAL
508	IITDelhi	Mechanical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	969	969	GENERAL
509	IITDelhi	Production and Industrial Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	1340	1974	GENERAL
510	IITDelhi	Production and Industrial Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	5178	5502	GENERAL
511	IITDelhi	Production and Industrial Engineering (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	116	116	PREPARATORY
512	IITDelhi	Production and Industrial Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	652	844	GENERAL
513	IITDelhi	Production and Industrial Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	1518	1624	GENERAL
514	IITDelhi	Production and Industrial Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	1988	3223	GENERAL
515	IITDelhi	Production and Industrial Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	6903	7617	GENERAL
516	IITDelhi	Production and Industrial Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	273	273	PREPARATORY
517	IITDelhi	Production and Industrial Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	900	1306	GENERAL
518	IITDelhi	Production and Industrial Engineering (4 Years Bachelor of Technology)	SC	Female-Only	1739	2535	GENERAL
519	IITDelhi	Production and Industrial Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	702	836	GENERAL
520	IITDelhi	Production and Industrial Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1101	1101	GENERAL
521	IITDelhi	Textile Technology (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	2409	3079	GENERAL
522	IITDelhi	Textile Technology (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	5645	6368	GENERAL
523	IITDelhi	Textile Technology (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	968	1260	GENERAL
524	IITDelhi	Textile Technology (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2363	2424	GENERAL
525	IITDelhi	Textile Technology (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	5015	5733	GENERAL
526	IITDelhi	Textile Technology (4 Years Bachelor of Technology)	OPEN	Female-Only	9841	11158	GENERAL
527	IITDelhi	Textile Technology (4 Years Bachelor of Technology)	SC	Gender-Neutral	1456	1729	GENERAL
528	IITDelhi	Textile Technology (4 Years Bachelor of Technology)	SC	Female-Only	2599	3292	GENERAL
529	IITDelhi	Textile Technology (4 Years Bachelor of Technology)	ST	Gender-Neutral	813	948	GENERAL
530	IITDelhi	Textile Technology (4 Years Bachelor of Technology)	ST	Female-Only	1641	1641	GENERAL
531	IITDelhi	Engineering and Computational Mechanics (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	521	744	GENERAL
532	IITDelhi	Engineering and Computational Mechanics (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	1970	2408	GENERAL
533	IITDelhi	Engineering and Computational Mechanics (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	252	268	GENERAL
534	IITDelhi	Engineering and Computational Mechanics (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	590	590	GENERAL
535	IITDelhi	Engineering and Computational Mechanics (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	858	1103	GENERAL
536	IITDelhi	Engineering and Computational Mechanics (4 Years Bachelor of Technology)	OPEN	Female-Only	3041	3918	GENERAL
537	IITDelhi	Engineering and Computational Mechanics (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	101	101	GENERAL
538	IITDelhi	Engineering and Computational Mechanics (4 Years Bachelor of Technology)	SC	Gender-Neutral	302	427	GENERAL
539	IITDelhi	Engineering and Computational Mechanics (4 Years Bachelor of Technology)	SC	Female-Only	890	890	GENERAL
540	IITDelhi	Engineering and Computational Mechanics (4 Years Bachelor of Technology)	ST	Gender-Neutral	214	222	GENERAL
541	IITDelhi	Engineering and Computational Mechanics (4 Years Bachelor of Technology)	ST	Female-Only	1116	1116	GENERAL
542	IITDelhi	Materials Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	1979	2397	GENERAL
543	IITDelhi	Materials Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	4908	4991	GENERAL
544	IITDelhi	Materials Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	848	905	GENERAL
545	IITDelhi	Materials Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2233	2233	GENERAL
546	IITDelhi	Materials Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	2499	3736	GENERAL
547	IITDelhi	Materials Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	7895	9060	GENERAL
548	IITDelhi	Materials Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	210	210	GENERAL
549	IITDelhi	Materials Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1157	1391	GENERAL
550	IITDelhi	Materials Engineering (4 Years Bachelor of Technology)	SC	Female-Only	2169	2169	GENERAL
551	IITDelhi	Materials Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	768	884	GENERAL
552	IITDelhi	Materials Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1338	1338	GENERAL
553	IITDelhi	Energy Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	1345	1643	GENERAL
554	IITDelhi	Energy Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	4047	4389	GENERAL
555	IITDelhi	Energy Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	507	576	GENERAL
556	IITDelhi	Energy Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	1109	1109	GENERAL
557	IITDelhi	Energy Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	1868	2668	GENERAL
558	IITDelhi	Energy Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	3645	6315	GENERAL
559	IITDelhi	Energy Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	111	111	GENERAL
560	IITDelhi	Energy Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	856	974	GENERAL
561	IITDelhi	Energy Engineering (4 Years Bachelor of Technology)	SC	Female-Only	2295	2295	GENERAL
562	IITDelhi	Energy Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	521	656	GENERAL
563	IITDelhi	Energy Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1152	1152	GENERAL
564	IITDelhi	Chemistry (4 Years Bachelor of Science)	OBC-NCL	Gender-Neutral	3547	4458	GENERAL
565	IITDelhi	Chemistry (4 Years Bachelor of Science)	OBC-NCL	Female-Only	8247	8744	GENERAL
566	IITDelhi	Chemistry (4 Years Bachelor of Science)	GEN-EWS	Gender-Neutral	1335	1503	GENERAL
567	IITDelhi	Chemistry (4 Years Bachelor of Science)	OPEN	Gender-Neutral	6267	8528	GENERAL
568	IITDelhi	Chemistry (4 Years Bachelor of Science)	OPEN	Female-Only	11389	16980	GENERAL
569	IITDelhi	Chemistry (4 Years Bachelor of Science)	SC	Gender-Neutral	2018	2657	GENERAL
570	IITDelhi	Chemistry (4 Years Bachelor of Science)	SC	Female-Only	2758	2758	GENERAL
571	IITDelhi	Chemistry (4 Years Bachelor of Science)	ST	Gender-Neutral	1324	1342	GENERAL
572	IITDelhi	Chemistry (4 Years Bachelor of Science)	ST	Female-Only	1631	1631	GENERAL
573	IITDelhi	Chemical Engineering (5 Years Bachelor and Master of Technology (Dual Degree))	OBC-NCL	Gender-Neutral	1383	1898	GENERAL
574	IITDelhi	Chemical Engineering (5 Years Bachelor and Master of Technology (Dual Degree))	OBC-NCL	Female-Only	3814	5110	GENERAL
575	IITDelhi	Chemical Engineering (5 Years Bachelor and Master of Technology (Dual Degree))	GEN-EWS	Gender-Neutral	669	746	GENERAL
576	IITDelhi	Chemical Engineering (5 Years Bachelor and Master of Technology (Dual Degree))	GEN-EWS	Female-Only	2061	2061	GENERAL
577	IITDelhi	Chemical Engineering (5 Years Bachelor and Master of Technology (Dual Degree))	OPEN	Gender-Neutral	2581	3454	GENERAL
578	IITDelhi	Chemical Engineering (5 Years Bachelor and Master of Technology (Dual Degree))	OPEN	Female-Only	6826	7561	GENERAL
579	IITDelhi	Chemical Engineering (5 Years Bachelor and Master of Technology (Dual Degree))	OPEN(PwD)	Gender-Neutral	196	196	GENERAL
580	IITDelhi	Chemical Engineering (5 Years Bachelor and Master of Technology (Dual Degree))	SC	Gender-Neutral	764	844	GENERAL
581	IITDelhi	Chemical Engineering (5 Years Bachelor and Master of Technology (Dual Degree))	SC	Female-Only	2019	2096	GENERAL
582	IITDelhi	Chemical Engineering (5 Years Bachelor and Master of Technology (Dual Degree))	ST	Gender-Neutral	837	851	GENERAL
583	IITDelhi	Chemical Engineering (5 Years Bachelor and Master of Technology (Dual Degree))	ST	Female-Only	1151	1151	GENERAL
584	IITDelhi	Computer Science and Engineering (5 Years Bachelor and Master of Technology (Dual Degree))	OBC-NCL	Gender-Neutral	105	195	GENERAL
585	IITDelhi	Computer Science and Engineering (5 Years Bachelor and Master of Technology (Dual Degree))	OBC-NCL	Female-Only	679	718	GENERAL
586	IITDelhi	Computer Science and Engineering (5 Years Bachelor and Master of Technology (Dual Degree))	OBC-NCL(PwD)	Gender-Neutral	15	15	GENERAL
587	IITDelhi	Computer Science and Engineering (5 Years Bachelor and Master of Technology (Dual Degree))	GEN-EWS	Gender-Neutral	49	77	GENERAL
588	IITDelhi	Computer Science and Engineering (5 Years Bachelor and Master of Technology (Dual Degree))	GEN-EWS	Female-Only	164	164	GENERAL
589	IITDelhi	Computer Science and Engineering (5 Years Bachelor and Master of Technology (Dual Degree))	OPEN	Gender-Neutral	134	186	GENERAL
590	IITDelhi	Computer Science and Engineering (5 Years Bachelor and Master of Technology (Dual Degree))	OPEN	Female-Only	560	996	GENERAL
591	IITDelhi	Computer Science and Engineering (5 Years Bachelor and Master of Technology (Dual Degree))	OPEN(PwD)	Gender-Neutral	24	24	GENERAL
592	IITDelhi	Computer Science and Engineering (5 Years Bachelor and Master of Technology (Dual Degree))	SC	Gender-Neutral	47	74	GENERAL
593	IITDelhi	Computer Science and Engineering (5 Years Bachelor and Master of Technology (Dual Degree))	SC	Female-Only	191	191	GENERAL
594	IITDelhi	Computer Science and Engineering (5 Years Bachelor and Master of Technology (Dual Degree))	ST	Gender-Neutral	47	48	GENERAL
595	IITDelhi	Computer Science and Engineering (5 Years Bachelor and Master of Technology (Dual Degree))	ST	Female-Only	250	250	GENERAL
596	IITDelhi	Mathematics and Computing (5 Years Bachelor and Master of Technology (Dual Degree))	OBC-NCL	Gender-Neutral	241	317	GENERAL
597	IITDelhi	Mathematics and Computing (5 Years Bachelor and Master of Technology (Dual Degree))	OBC-NCL	Female-Only	1023	1249	GENERAL
598	IITDelhi	Mathematics and Computing (5 Years Bachelor and Master of Technology (Dual Degree))	GEN-EWS	Gender-Neutral	88	103	GENERAL
599	IITDelhi	Mathematics and Computing (5 Years Bachelor and Master of Technology (Dual Degree))	GEN-EWS	Female-Only	454	454	GENERAL
600	IITDelhi	Mathematics and Computing (5 Years Bachelor and Master of Technology (Dual Degree))	OPEN	Gender-Neutral	325	355	GENERAL
601	IITDelhi	Mathematics and Computing (5 Years Bachelor and Master of Technology (Dual Degree))	OPEN	Female-Only	1447	2258	GENERAL
602	IITDelhi	Mathematics and Computing (5 Years Bachelor and Master of Technology (Dual Degree))	OPEN(PwD)	Gender-Neutral	33	33	GENERAL
603	IITDelhi	Mathematics and Computing (5 Years Bachelor and Master of Technology (Dual Degree))	OPEN(PwD)	Female-Only	201	201	PREPARATORY
604	IITDelhi	Mathematics and Computing (5 Years Bachelor and Master of Technology (Dual Degree))	SC	Gender-Neutral	145	154	GENERAL
605	IITDelhi	Mathematics and Computing (5 Years Bachelor and Master of Technology (Dual Degree))	SC	Female-Only	636	636	GENERAL
606	IITDelhi	Mathematics and Computing (5 Years Bachelor and Master of Technology (Dual Degree))	ST	Gender-Neutral	30	100	GENERAL
607	IITDelhi	Abu Dhabi Campus-Energy Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	1710	1870	GENERAL
608	IITDelhi	Abu Dhabi Campus-Energy Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	6493	6493	GENERAL
609	IITDelhi	Abu Dhabi Campus-Energy Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	868	868	GENERAL
610	IITDelhi	Abu Dhabi Campus-Energy Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	4661	5590	GENERAL
611	IITDelhi	Abu Dhabi Campus-Energy Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	8973	8973	GENERAL
612	IITDelhi	Abu Dhabi Campus-Energy Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1774	1774	GENERAL
613	IITDelhi	Abu Dhabi Campus-Energy Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	488	488	GENERAL
614	IITDelhi	Design (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	4920	9728	GENERAL
615	IITDelhi	Design (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	8592	8592	GENERAL
616	IITDelhi	Design (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1746	4524	GENERAL
617	IITDelhi	Design (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	7813	12217	GENERAL
618	IITDelhi	Design (4 Years Bachelor of Technology)	OPEN	Female-Only	16045	23166	GENERAL
619	IITDelhi	Design (4 Years Bachelor of Technology)	SC	Gender-Neutral	2098	4170	GENERAL
620	IITDelhi	Design (4 Years Bachelor of Technology)	SC	Female-Only	3715	3715	GENERAL
621	IITDelhi	Design (4 Years Bachelor of Technology)	ST	Gender-Neutral	1668	1668	GENERAL
622	IITDelhi	Abu Dhabi Campus-Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	591	591	GENERAL
623	IITDelhi	Abu Dhabi Campus-Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	5340	5340	GENERAL
624	IITDelhi	Abu Dhabi Campus-Computer Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	556	556	GENERAL
625	IITDelhi	Abu Dhabi Campus-Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	1291	1761	GENERAL
626	IITDelhi	Abu Dhabi Campus-Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	6480	6480	GENERAL
627	IITDelhi	Abu Dhabi Campus-Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	52	52	GENERAL
628	IITDelhi	Abu Dhabi Campus-Computer Science and Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	539	555	GENERAL
629	IITDelhi	Abu Dhabi Campus-Chemical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	2006	2006	GENERAL
630	IITDelhi	Abu Dhabi Campus-Chemical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	5884	5884	GENERAL
631	IITDelhi	Abu Dhabi Campus-Chemical Engineering (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	114	114	PREPARATORY
632	IITDelhi	Abu Dhabi Campus-Chemical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1360	1360	GENERAL
633	IITDelhi	Abu Dhabi Campus-Chemical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	5200	5712	GENERAL
634	IITDelhi	Abu Dhabi Campus-Chemical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	11520	11520	GENERAL
635	IITDelhi	Abu Dhabi Campus-Chemical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1205	1205	GENERAL
636	IITDelhi	Abu Dhabi Campus-Chemical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	832	832	GENERAL
637	IITIndore	Chemical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	2811	3502	GENERAL
638	IITIndore	Chemical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	6614	6970	GENERAL
639	IITIndore	Chemical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1220	1297	GENERAL
640	IITIndore	Chemical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2612	2612	GENERAL
641	IITIndore	Chemical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	7246	8824	GENERAL
642	IITIndore	Chemical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	12689	16373	GENERAL
643	IITIndore	Chemical Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	301	301	PREPARATORY
644	IITIndore	Chemical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1537	2047	GENERAL
645	IITIndore	Chemical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	2553	2553	GENERAL
646	IITIndore	Chemical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	933	985	GENERAL
647	IITIndore	Chemical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1518	1518	GENERAL
648	IITIndore	Civil Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	3189	3937	GENERAL
649	IITIndore	Civil Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	7675	7952	GENERAL
650	IITIndore	Civil Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1343	1651	GENERAL
651	IITIndore	Civil Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	3079	3079	GENERAL
652	IITIndore	Civil Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	9004	10641	GENERAL
653	IITIndore	Civil Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	16727	17630	GENERAL
654	IITIndore	Civil Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1963	2406	GENERAL
655	IITIndore	Civil Engineering (4 Years Bachelor of Technology)	SC	Female-Only	2824	3310	GENERAL
656	IITIndore	Civil Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	633	842	GENERAL
657	IITIndore	Civil Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1321	1321	GENERAL
658	IITIndore	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	425	585	GENERAL
659	IITIndore	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	1900	2106	GENERAL
660	IITIndore	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	59	59	GENERAL
661	IITIndore	Computer Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	170	216	GENERAL
662	IITIndore	Computer Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	521	593	GENERAL
663	IITIndore	Computer Science and Engineering (4 Years Bachelor of Technology)	GEN- EWS(PwD)	Gender-Neutral	13	13	GENERAL
664	IITIndore	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	952	1775	GENERAL
665	IITIndore	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	2695	3922	GENERAL
666	IITIndore	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	50	69	GENERAL
667	IITIndore	Computer Science and Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	249	329	GENERAL
668	IITIndore	Computer Science and Engineering (4 Years Bachelor of Technology)	SC	Female-Only	700	932	GENERAL
669	IITIndore	Computer Science and Engineering (4 Years Bachelor of Technology)	SC(PwD)	Gender-Neutral	14	14	PREPARATORY
670	IITIndore	Computer Science and Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	102	155	GENERAL
671	IITIndore	Computer Science and Engineering (4 Years Bachelor of Technology)	ST	Female-Only	387	387	GENERAL
672	IITIndore	Electrical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	1063	1651	GENERAL
673	IITIndore	Electrical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	2698	4037	GENERAL
674	IITIndore	Electrical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	438	609	GENERAL
675	IITIndore	Electrical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	1020	1320	GENERAL
676	IITIndore	Electrical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	2390	3723	GENERAL
677	IITIndore	Electrical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	6403	8044	GENERAL
678	IITIndore	Electrical Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	208	208	GENERAL
679	IITIndore	Electrical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	583	978	GENERAL
680	IITIndore	Electrical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	1938	2099	GENERAL
681	IITIndore	Electrical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	379	492	GENERAL
682	IITIndore	Electrical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	912	912	GENERAL
683	IITIndore	Engineering Physics (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	3329	3586	GENERAL
684	IITIndore	Engineering Physics (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	7948	7948	GENERAL
685	IITIndore	Engineering Physics (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1657	1666	GENERAL
686	IITIndore	Engineering Physics (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	5236	8299	GENERAL
687	IITIndore	Engineering Physics (4 Years Bachelor of Technology)	OPEN	Female-Only	14114	16848	GENERAL
688	IITIndore	Engineering Physics (4 Years Bachelor of Technology)	SC	Gender-Neutral	2307	2373	GENERAL
689	IITIndore	Engineering Physics (4 Years Bachelor of Technology)	SC	Female-Only	3392	3392	GENERAL
690	IITIndore	Engineering Physics (4 Years Bachelor of Technology)	ST	Gender-Neutral	1248	1248	GENERAL
691	IITIndore	Mathematics and Computing (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	855	999	GENERAL
692	IITIndore	Mathematics and Computing (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	2246	2488	GENERAL
693	IITIndore	Mathematics and Computing (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	322	332	GENERAL
694	IITIndore	Mathematics and Computing (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	895	895	GENERAL
695	IITIndore	Mathematics and Computing (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	1751	2099	GENERAL
696	IITIndore	Mathematics and Computing (4 Years Bachelor of Technology)	OPEN	Female-Only	4271	5553	GENERAL
697	IITIndore	Mathematics and Computing (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	135	135	GENERAL
698	IITIndore	Mathematics and Computing (4 Years Bachelor of Technology)	SC	Gender-Neutral	492	713	GENERAL
699	IITIndore	Mathematics and Computing (4 Years Bachelor of Technology)	SC	Female-Only	1459	1459	GENERAL
700	IITIndore	Mathematics and Computing (4 Years Bachelor of Technology)	ST	Gender-Neutral	314	360	GENERAL
701	IITIndore	Mathematics and Computing (4 Years Bachelor of Technology)	ST	Female-Only	1107	1107	GENERAL
702	IITIndore	Mechanical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	2249	2937	GENERAL
703	IITIndore	Mechanical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	5816	7110	GENERAL
704	IITIndore	Mechanical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	875	1225	GENERAL
705	IITIndore	Mechanical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2452	2614	GENERAL
706	IITIndore	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	4522	7545	GENERAL
707	IITIndore	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	12528	16482	GENERAL
708	IITIndore	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	219	219	PREPARATORY
709	IITIndore	Mechanical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	406	1871	GENERAL
710	IITIndore	Mechanical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	2800	3219	GENERAL
711	IITIndore	Mechanical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	648	804	GENERAL
712	IITIndore	Mechanical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1254	1254	GENERAL
713	IITIndore	Metallurgical Engineering and Materials Science (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	3993	4698	GENERAL
714	IITIndore	Metallurgical Engineering and Materials Science (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	8111	8462	GENERAL
715	IITIndore	Metallurgical Engineering and Materials Science (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1452	1912	GENERAL
716	IITIndore	Metallurgical Engineering and Materials Science (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	3256	3256	GENERAL
717	IITIndore	Metallurgical Engineering and Materials Science (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	8439	11274	GENERAL
718	IITIndore	Metallurgical Engineering and Materials Science (4 Years Bachelor of Technology)	OPEN	Female-Only	20322	22422	GENERAL
719	IITIndore	Metallurgical Engineering and Materials Science (4 Years Bachelor of Technology)	SC	Gender-Neutral	2302	2719	GENERAL
720	IITIndore	Metallurgical Engineering and Materials Science (4 Years Bachelor of Technology)	SC	Female-Only	3427	3707	GENERAL
721	IITIndore	Metallurgical Engineering and Materials Science (4 Years Bachelor of Technology)	ST	Gender-Neutral	1082	1242	GENERAL
722	IITIndore	Metallurgical Engineering and Materials Science (4 Years Bachelor of Technology)	ST	Female-Only	1677	1677	GENERAL
723	IITIndore	Space Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	2569	3048	GENERAL
724	IITIndore	Space Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	6205	6205	GENERAL
725	IITIndore	Space Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1079	1395	GENERAL
726	IITIndore	Space Science and Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	5679	7419	GENERAL
727	IITIndore	Space Science and Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	13917	13924	GENERAL
728	IITIndore	Space Science and Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1221	1502	GENERAL
729	IITIndore	Space Science and Engineering (4 Years Bachelor of Technology)	SC	Female-Only	2634	2634	GENERAL
730	IITIndore	Space Science and Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	566	795	GENERAL
731	IITKharagpur	Aerospace Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	1818	2264	GENERAL
732	IITKharagpur	Aerospace Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	4002	4993	GENERAL
733	IITKharagpur	Aerospace Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	784	951	GENERAL
734	IITKharagpur	Aerospace Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	1802	1802	GENERAL
735	IITKharagpur	Aerospace Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	3830	4872	GENERAL
736	IITKharagpur	Aerospace Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	10128	12034	GENERAL
737	IITKharagpur	Aerospace Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	143	143	PREPARATORY
738	IITKharagpur	Aerospace Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	153	1225	GENERAL
739	IITKharagpur	Aerospace Engineering (4 Years Bachelor of Technology)	SC	Female-Only	2074	2146	GENERAL
740	IITKharagpur	Aerospace Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	484	593	GENERAL
741	IITKharagpur	Aerospace Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1112	1112	GENERAL
742	IITKharagpur	Agricultural and Food Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	3070	4752	GENERAL
743	IITKharagpur	Agricultural and Food Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	7011	8479	GENERAL
744	IITKharagpur	Agricultural and Food Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1593	1768	GENERAL
745	IITKharagpur	Agricultural and Food Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	3224	3419	GENERAL
746	IITKharagpur	Agricultural and Food Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	6545	11111	GENERAL
747	IITKharagpur	Agricultural and Food Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	17306	19074	GENERAL
748	IITKharagpur	Agricultural and Food Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	2039	2682	GENERAL
749	IITKharagpur	Agricultural and Food Engineering (4 Years Bachelor of Technology)	SC	Female-Only	2957	3714	GENERAL
750	IITKharagpur	Agricultural and Food Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	1118	1281	GENERAL
751	IITKharagpur	Agricultural and Food Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1752	1752	GENERAL
752	IITKharagpur	Biotechnology and Biochemical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	3286	3746	GENERAL
753	IITKharagpur	Biotechnology and Biochemical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	6803	7510	GENERAL
754	IITKharagpur	Biotechnology and Biochemical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1357	1464	GENERAL
755	IITKharagpur	Biotechnology and Biochemical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2580	2580	GENERAL
756	IITKharagpur	Biotechnology and Biochemical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	6774	9224	GENERAL
757	IITKharagpur	Biotechnology and Biochemical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	7274	14841	GENERAL
758	IITKharagpur	Biotechnology and Biochemical Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	205	205	PREPARATORY
759	IITKharagpur	Biotechnology and Biochemical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1715	2287	GENERAL
760	IITKharagpur	Biotechnology and Biochemical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	3063	3218	GENERAL
761	IITKharagpur	Biotechnology and Biochemical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	812	1275	GENERAL
762	IITKharagpur	Biotechnology and Biochemical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1729	1729	GENERAL
763	IITKharagpur	Chemical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	1906	2325	GENERAL
764	IITKharagpur	Chemical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	4139	5343	GENERAL
765	IITKharagpur	Chemical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	814	963	GENERAL
766	IITKharagpur	Chemical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	1736	1930	GENERAL
767	IITKharagpur	Chemical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	4379	5222	GENERAL
768	IITKharagpur	Chemical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	7574	11358	GENERAL
769	IITKharagpur	Chemical Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	174	223	PREPARATORY
770	IITKharagpur	Chemical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	985	1359	GENERAL
771	IITKharagpur	Chemical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	1667	2423	GENERAL
772	IITKharagpur	Chemical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	625	721	GENERAL
773	IITKharagpur	Chemical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1306	1372	GENERAL
774	IITKharagpur	Civil Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	2456	3042	GENERAL
775	IITKharagpur	Civil Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	4969	6283	GENERAL
776	IITKharagpur	Civil Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1017	1243	GENERAL
777	IITKharagpur	Civil Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2137	2375	GENERAL
778	IITKharagpur	Civil Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	6188	7774	GENERAL
779	IITKharagpur	Civil Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	13875	15272	GENERAL
780	IITKharagpur	Civil Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	244	244	PREPARATORY
781	IITKharagpur	Civil Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1233	1768	GENERAL
782	IITKharagpur	Civil Engineering (4 Years Bachelor of Technology)	SC	Female-Only	2379	2669	GENERAL
783	IITKharagpur	Civil Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	503	583	GENERAL
784	IITKharagpur	Civil Engineering (4 Years Bachelor of Technology)	ST	Female-Only	727	781	GENERAL
785	IITKharagpur	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	94	212	GENERAL
786	IITKharagpur	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	583	842	GENERAL
787	IITKharagpur	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	21	21	GENERAL
788	IITKharagpur	Computer Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	45	78	GENERAL
789	IITKharagpur	Computer Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	224	236	GENERAL
790	IITKharagpur	Computer Science and Engineering (4 Years Bachelor of Technology)	GEN- EWS(PwD)	Gender-Neutral	7	8	GENERAL
791	IITKharagpur	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	238	466	GENERAL
792	IITKharagpur	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	1202	1908	GENERAL
793	IITKharagpur	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	18	22	GENERAL
794	IITKharagpur	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Female-Only	70	70	GENERAL
795	IITKharagpur	Computer Science and Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	46	108	GENERAL
796	IITKharagpur	Computer Science and Engineering (4 Years Bachelor of Technology)	SC	Female-Only	316	404	GENERAL
797	IITKharagpur	Computer Science and Engineering (4 Years Bachelor of Technology)	SC(PwD)	Gender-Neutral	6	8	GENERAL
798	IITKharagpur	Computer Science and Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	43	68	GENERAL
799	IITKharagpur	Computer Science and Engineering (4 Years Bachelor of Technology)	ST	Female-Only	94	138	GENERAL
800	IITKharagpur	Computer Science and Engineering (4 Years Bachelor of Technology)	ST(PwD)	Gender-Neutral	4	4	GENERAL
801	IITKharagpur	Electrical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	700	884	GENERAL
802	IITKharagpur	Electrical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	2267	2711	GENERAL
803	IITKharagpur	Electrical Engineering (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	75	75	GENERAL
804	IITKharagpur	Electrical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	230	333	GENERAL
805	IITKharagpur	Electrical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	644	694	GENERAL
806	IITKharagpur	Electrical Engineering (4 Years Bachelor of Technology)	GEN- EWS(PwD)	Gender-Neutral	21	21	PREPARATORY
807	IITKharagpur	Electrical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	1492	1985	GENERAL
808	IITKharagpur	Electrical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	4721	5393	GENERAL
809	IITKharagpur	Electrical Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	138	159	GENERAL
810	IITKharagpur	Electrical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	327	560	GENERAL
811	IITKharagpur	Electrical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	1290	1412	GENERAL
812	IITKharagpur	Electrical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	194	246	GENERAL
813	IITKharagpur	Electrical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	624	643	GENERAL
814	IITKharagpur	Electronics and Electrical Communication Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	415	646	GENERAL
815	IITKharagpur	Electronics and Electrical Communication Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	1467	1798	GENERAL
816	IITKharagpur	Electronics and Electrical Communication Engineering (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	44	56	GENERAL
817	IITKharagpur	Electronics and Electrical Communication Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	132	263	GENERAL
818	IITKharagpur	Electronics and Electrical Communication Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	504	541	GENERAL
819	IITKharagpur	Electronics and Electrical Communication Engineering (4 Years Bachelor of Technology)	GEN- EWS(PwD)	Gender-Neutral	4	4	PREPARATORY
820	IITKharagpur	Electronics and Electrical Communication Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	419	1485	GENERAL
821	IITKharagpur	Electronics and Electrical Communication Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	3229	4734	GENERAL
822	IITKharagpur	Electronics and Electrical Communication Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	55	64	GENERAL
823	IITKharagpur	Electronics and Electrical Communication Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Female-Only	123	123	GENERAL
824	IITKharagpur	Electronics and Electrical Communication Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	100	393	GENERAL
825	IITKharagpur	Electronics and Electrical Communication Engineering (4 Years Bachelor of Technology)	SC	Female-Only	299	892	GENERAL
826	IITKharagpur	Electronics and Electrical Communication Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	61	192	GENERAL
827	IITKharagpur	Electronics and Electrical Communication Engineering (4 Years Bachelor of Technology)	ST	Female-Only	346	392	GENERAL
828	IITKharagpur	Instrumentation Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	890	1227	GENERAL
829	IITKharagpur	Instrumentation Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	3342	3619	GENERAL
830	IITKharagpur	Instrumentation Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	379	463	GENERAL
831	IITKharagpur	Instrumentation Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	1400	1400	GENERAL
832	IITKharagpur	Instrumentation Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	2077	2741	GENERAL
833	IITKharagpur	Instrumentation Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	6076	7896	GENERAL
834	IITKharagpur	Instrumentation Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	156	156	GENERAL
835	IITKharagpur	Instrumentation Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	773	943	GENERAL
836	IITKharagpur	Instrumentation Engineering (4 Years Bachelor of Technology)	SC	Female-Only	2326	2326	GENERAL
837	IITKharagpur	Instrumentation Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	774	787	GENERAL
838	IITKharagpur	Instrumentation Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1007	1007	GENERAL
839	IITKharagpur	Manufacturing Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	2449	3176	GENERAL
840	IITKharagpur	Manufacturing Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	5331	6353	GENERAL
841	IITKharagpur	Manufacturing Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1053	1267	GENERAL
842	IITKharagpur	Manufacturing Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2743	2743	GENERAL
843	IITKharagpur	Manufacturing Science and Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	5124	6547	GENERAL
844	IITKharagpur	Manufacturing Science and Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	12718	14070	GENERAL
845	IITKharagpur	Manufacturing Science and Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1431	1994	GENERAL
846	IITKharagpur	Manufacturing Science and Engineering (4 Years Bachelor of Technology)	SC	Female-Only	2826	3312	GENERAL
847	IITKharagpur	Manufacturing Science and Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	850	1143	GENERAL
848	IITKharagpur	Manufacturing Science and Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1589	1589	GENERAL
849	IITKharagpur	Mechanical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	1040	1700	GENERAL
850	IITKharagpur	Mechanical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	3627	4820	GENERAL
851	IITKharagpur	Mechanical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	513	681	GENERAL
852	IITKharagpur	Mechanical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	1412	1617	GENERAL
853	IITKharagpur	Mechanical Engineering (4 Years Bachelor of Technology)	GEN- EWS(PwD)	Gender-Neutral	36	36	PREPARATORY
854	IITKharagpur	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	2773	4016	GENERAL
855	IITKharagpur	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	7605	10333	GENERAL
856	IITKharagpur	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	195	238	GENERAL
857	IITKharagpur	Mechanical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	294	1054	GENERAL
858	IITKharagpur	Mechanical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	1670	2083	GENERAL
859	IITKharagpur	Mechanical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	354	544	GENERAL
860	IITKharagpur	Mechanical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1153	1218	GENERAL
861	IITKharagpur	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	2389	3389	GENERAL
862	IITKharagpur	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	6558	6973	GENERAL
863	IITKharagpur	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1285	1371	GENERAL
864	IITKharagpur	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2511	2553	GENERAL
865	IITKharagpur	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	5552	7708	GENERAL
866	IITKharagpur	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	13680	15297	GENERAL
867	IITKharagpur	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	280	280	PREPARATORY
868	IITKharagpur	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1651	2097	GENERAL
869	IITKharagpur	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	SC	Female-Only	2973	3343	GENERAL
870	IITKharagpur	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	868	960	GENERAL
871	IITKharagpur	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1423	1423	GENERAL
872	IITKharagpur	Mining Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	3182	4043	GENERAL
873	IITKharagpur	Mining Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	7623	8146	GENERAL
874	IITKharagpur	Mining Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1473	1647	GENERAL
875	IITKharagpur	Mining Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	3177	3181	GENERAL
876	IITKharagpur	Mining Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	7833	10765	GENERAL
877	IITKharagpur	Mining Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	17757	20249	GENERAL
878	IITKharagpur	Mining Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	2061	2505	GENERAL
879	IITKharagpur	Mining Engineering (4 Years Bachelor of Technology)	SC	Female-Only	3483	3745	GENERAL
880	IITKharagpur	Mining Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	886	1170	GENERAL
881	IITKharagpur	Mining Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1219	1243	GENERAL
882	IITKharagpur	Ocean Engineering and Naval Architecture (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	2895	4206	GENERAL
883	IITKharagpur	Ocean Engineering and Naval Architecture (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	7037	7905	GENERAL
884	IITKharagpur	Ocean Engineering and Naval Architecture (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1477	1659	GENERAL
885	IITKharagpur	Ocean Engineering and Naval Architecture (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2873	2886	GENERAL
886	IITKharagpur	Ocean Engineering and Naval Architecture (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	7465	10074	GENERAL
887	IITKharagpur	Ocean Engineering and Naval Architecture (4 Years Bachelor of Technology)	OPEN	Female-Only	15779	17428	GENERAL
888	IITKharagpur	Ocean Engineering and Naval Architecture (4 Years Bachelor of Technology)	SC	Gender-Neutral	1460	2427	GENERAL
889	IITKharagpur	Ocean Engineering and Naval Architecture (4 Years Bachelor of Technology)	SC	Female-Only	3357	3486	GENERAL
890	IITKharagpur	Ocean Engineering and Naval Architecture (4 Years Bachelor of Technology)	ST	Gender-Neutral	1124	1249	GENERAL
891	IITKharagpur	Ocean Engineering and Naval Architecture (4 Years Bachelor of Technology)	ST	Female-Only	1558	1558	GENERAL
892	IITKharagpur	Industrial and Systems Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	1185	2086	GENERAL
893	IITKharagpur	Industrial and Systems Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	3805	6079	GENERAL
894	IITKharagpur	Industrial and Systems Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	618	865	GENERAL
895	IITKharagpur	Industrial and Systems Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	1505	1505	GENERAL
896	IITKharagpur	Industrial and Systems Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	2873	4329	GENERAL
897	IITKharagpur	Industrial and Systems Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	9189	10288	GENERAL
898	IITKharagpur	Industrial and Systems Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1004	1354	GENERAL
899	IITKharagpur	Industrial and Systems Engineering (4 Years Bachelor of Technology)	SC	Female-Only	2622	2731	GENERAL
900	IITKharagpur	Industrial and Systems Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	738	882	GENERAL
901	IITKharagpur	Industrial and Systems Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1333	1333	GENERAL
902	IITKharagpur	Artificial Intelligence (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	218	381	GENERAL
903	IITKharagpur	Artificial Intelligence (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	1056	1146	GENERAL
904	IITKharagpur	Artificial Intelligence (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	40	40	GENERAL
905	IITKharagpur	Artificial Intelligence (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	104	143	GENERAL
906	IITKharagpur	Artificial Intelligence (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	342	342	GENERAL
907	IITKharagpur	Artificial Intelligence (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	461	953	GENERAL
908	IITKharagpur	Artificial Intelligence (4 Years Bachelor of Technology)	OPEN	Female-Only	2901	3194	GENERAL
909	IITKharagpur	Artificial Intelligence (4 Years Bachelor of Technology)	OPEN(PwD)	Female-Only	117	117	GENERAL
910	IITKharagpur	Artificial Intelligence (4 Years Bachelor of Technology)	SC	Gender-Neutral	144	268	GENERAL
911	IITKharagpur	Artificial Intelligence (4 Years Bachelor of Technology)	SC	Female-Only	463	659	GENERAL
912	IITKharagpur	Artificial Intelligence (4 Years Bachelor of Technology)	ST	Gender-Neutral	66	90	GENERAL
913	IITKharagpur	Artificial Intelligence (4 Years Bachelor of Technology)	ST	Female-Only	144	144	GENERAL
914	IITKharagpur	Chemistry (4 Years Bachelor of Science)	OBC-NCL	Gender-Neutral	4745	5584	GENERAL
915	IITKharagpur	Chemistry (4 Years Bachelor of Science)	OBC-NCL	Female-Only	8928	8982	GENERAL
916	IITKharagpur	Chemistry (4 Years Bachelor of Science)	GEN-EWS	Gender-Neutral	1808	2197	GENERAL
917	IITKharagpur	Chemistry (4 Years Bachelor of Science)	GEN-EWS	Female-Only	3820	3820	GENERAL
918	IITKharagpur	Chemistry (4 Years Bachelor of Science)	OPEN	Gender-Neutral	11214	12321	GENERAL
919	IITKharagpur	Chemistry (4 Years Bachelor of Science)	OPEN	Female-Only	20022	21532	GENERAL
920	IITKharagpur	Chemistry (4 Years Bachelor of Science)	SC	Gender-Neutral	2804	3217	GENERAL
921	IITKharagpur	Chemistry (4 Years Bachelor of Science)	SC	Female-Only	3576	3576	GENERAL
922	IITKharagpur	Chemistry (4 Years Bachelor of Science)	ST	Gender-Neutral	1394	1477	GENERAL
923	IITKharagpur	Chemistry (4 Years Bachelor of Science)	ST	Female-Only	2027	2027	GENERAL
924	IITKharagpur	Economics (4 Years Bachelor of Science)	OBC-NCL	Gender-Neutral	2200	2677	GENERAL
925	IITKharagpur	Economics (4 Years Bachelor of Science)	OBC-NCL	Female-Only	5844	6381	GENERAL
926	IITKharagpur	Economics (4 Years Bachelor of Science)	GEN-EWS	Gender-Neutral	774	1144	GENERAL
927	IITKharagpur	Economics (4 Years Bachelor of Science)	GEN-EWS	Female-Only	2143	2143	GENERAL
928	IITKharagpur	Economics (4 Years Bachelor of Science)	OPEN	Gender-Neutral	3681	6063	GENERAL
929	IITKharagpur	Economics (4 Years Bachelor of Science)	OPEN	Female-Only	10113	12877	GENERAL
930	IITKharagpur	Economics (4 Years Bachelor of Science)	SC	Gender-Neutral	1424	1877	GENERAL
931	IITKharagpur	Economics (4 Years Bachelor of Science)	SC	Female-Only	3000	3247	GENERAL
932	IITKharagpur	Economics (4 Years Bachelor of Science)	ST	Gender-Neutral	835	1006	GENERAL
933	IITKharagpur	Economics (4 Years Bachelor of Science)	ST	Female-Only	1539	1539	GENERAL
934	IITKharagpur	Physics (4 Years Bachelor of Science)	OBC-NCL	Gender-Neutral	3861	4707	GENERAL
935	IITKharagpur	Physics (4 Years Bachelor of Science)	OBC-NCL	Female-Only	8620	8640	GENERAL
936	IITKharagpur	Physics (4 Years Bachelor of Science)	GEN-EWS	Gender-Neutral	1856	1966	GENERAL
937	IITKharagpur	Physics (4 Years Bachelor of Science)	GEN-EWS	Female-Only	3446	3446	GENERAL
938	IITKharagpur	Physics (4 Years Bachelor of Science)	OPEN	Gender-Neutral	7367	10939	GENERAL
939	IITKharagpur	Physics (4 Years Bachelor of Science)	OPEN	Female-Only	19589	20982	GENERAL
940	IITKharagpur	Physics (4 Years Bachelor of Science)	SC	Gender-Neutral	2110	2840	GENERAL
941	IITKharagpur	Physics (4 Years Bachelor of Science)	SC	Female-Only	3996	3996	GENERAL
942	IITKharagpur	Physics (4 Years Bachelor of Science)	ST	Gender-Neutral	1396	1449	GENERAL
943	IITKharagpur	Physics (4 Years Bachelor of Science)	ST	Female-Only	1730	1730	GENERAL
944	IITKharagpur	Mathematics and Computing (4 Years Bachelor of Science)	OBC-NCL	Gender-Neutral	523	751	GENERAL
945	IITKharagpur	Mathematics and Computing (4 Years Bachelor of Science)	OBC-NCL	Female-Only	1968	2575	GENERAL
946	IITKharagpur	Mathematics and Computing (4 Years Bachelor of Science)	OBC-NCL(PwD)	Gender-Neutral	80	80	PREPARATORY
947	IITKharagpur	Mathematics and Computing (4 Years Bachelor of Science)	GEN-EWS	Gender-Neutral	177	270	GENERAL
948	IITKharagpur	Mathematics and Computing (4 Years Bachelor of Science)	GEN-EWS	Female-Only	559	559	GENERAL
949	IITKharagpur	Mathematics and Computing (4 Years Bachelor of Science)	OPEN	Gender-Neutral	519	1336	GENERAL
950	IITKharagpur	Mathematics and Computing (4 Years Bachelor of Science)	OPEN	Female-Only	3754	4563	GENERAL
951	IITKharagpur	Mathematics and Computing (4 Years Bachelor of Science)	OPEN(PwD)	Gender-Neutral	47	47	GENERAL
952	IITKharagpur	Mathematics and Computing (4 Years Bachelor of Science)	SC	Gender-Neutral	416	565	GENERAL
953	IITKharagpur	Mathematics and Computing (4 Years Bachelor of Science)	SC	Female-Only	965	1136	GENERAL
954	IITKharagpur	Mathematics and Computing (4 Years Bachelor of Science)	ST	Gender-Neutral	252	342	GENERAL
955	IITKharagpur	Mathematics and Computing (4 Years Bachelor of Science)	ST	Female-Only	602	602	GENERAL
956	IITKharagpur	Applied Geology (4 Years Bachelor of Science)	OBC-NCL	Gender-Neutral	3570	5621	GENERAL
957	IITKharagpur	Applied Geology (4 Years Bachelor of Science)	OBC-NCL	Female-Only	9334	10019	GENERAL
958	IITKharagpur	Applied Geology (4 Years Bachelor of Science)	GEN-EWS	Gender-Neutral	2194	2307	GENERAL
959	IITKharagpur	Applied Geology (4 Years Bachelor of Science)	GEN-EWS	Female-Only	3934	3934	GENERAL
960	IITKharagpur	Applied Geology (4 Years Bachelor of Science)	OPEN	Gender-Neutral	11734	13685	GENERAL
961	IITKharagpur	Applied Geology (4 Years Bachelor of Science)	OPEN	Female-Only	20949	21618	GENERAL
962	IITKharagpur	Applied Geology (4 Years Bachelor of Science)	SC	Gender-Neutral	2756	3316	GENERAL
963	IITKharagpur	Applied Geology (4 Years Bachelor of Science)	SC	Female-Only	4072	4255	GENERAL
964	IITKharagpur	Applied Geology (4 Years Bachelor of Science)	ST	Gender-Neutral	1390	1473	GENERAL
965	IITKharagpur	Applied Geology (4 Years Bachelor of Science)	ST	Female-Only	2103	2103	GENERAL
966	IITKharagpur	Exploration Geophysics (4 Years Bachelor of Science)	OBC-NCL	Gender-Neutral	4503	5210	GENERAL
967	IITKharagpur	Exploration Geophysics (4 Years Bachelor of Science)	OBC-NCL	Female-Only	8732	9204	GENERAL
968	IITKharagpur	Exploration Geophysics (4 Years Bachelor of Science)	GEN-EWS	Gender-Neutral	2006	2240	GENERAL
969	IITKharagpur	Exploration Geophysics (4 Years Bachelor of Science)	GEN-EWS	Female-Only	3723	3723	GENERAL
970	IITKharagpur	Exploration Geophysics (4 Years Bachelor of Science)	OPEN	Gender-Neutral	11359	12443	GENERAL
971	IITKharagpur	Exploration Geophysics (4 Years Bachelor of Science)	OPEN	Female-Only	19766	20854	GENERAL
972	IITKharagpur	Exploration Geophysics (4 Years Bachelor of Science)	SC	Gender-Neutral	2772	2932	GENERAL
973	IITKharagpur	Exploration Geophysics (4 Years Bachelor of Science)	SC	Female-Only	4234	4234	GENERAL
974	IITKharagpur	Exploration Geophysics (4 Years Bachelor of Science)	ST	Gender-Neutral	1276	1453	GENERAL
975	IITKharagpur	Exploration Geophysics (4 Years Bachelor of Science)	ST	Female-Only	2040	2040	GENERAL
976	IITKharagpur	Architecture (5 Years Bachelor of Architecture)	OBC-NCL	Gender-Neutral	5668	6770	GENERAL
977	IITKharagpur	Architecture (5 Years Bachelor of Architecture)	GEN-EWS	Gender-Neutral	2807	2821	GENERAL
978	IITKharagpur	Architecture (5 Years Bachelor of Architecture)	GEN-EWS	Female-Only	4587	4587	GENERAL
979	IITKharagpur	Architecture (5 Years Bachelor of Architecture)	OPEN	Gender-Neutral	9970	19141	GENERAL
980	IITKharagpur	Architecture (5 Years Bachelor of Architecture)	OPEN	Female-Only	19716	24124	GENERAL
981	IITKharagpur	Architecture (5 Years Bachelor of Architecture)	SC	Gender-Neutral	3006	3376	GENERAL
982	IITKharagpur	Architecture (5 Years Bachelor of Architecture)	SC	Female-Only	4112	4112	GENERAL
983	IITKharagpur	Architecture (5 Years Bachelor of Architecture)	ST	Gender-Neutral	1625	1736	GENERAL
984	IITKharagpur	Architecture (5 Years Bachelor of Architecture)	ST	Female-Only	1830	1830	GENERAL
985	IITHyderabad	Chemical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	2158	2453	GENERAL
986	IITHyderabad	Chemical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	4379	4864	GENERAL
987	IITHyderabad	Chemical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	930	948	GENERAL
988	IITHyderabad	Chemical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	1715	1715	GENERAL
989	IITHyderabad	Chemical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	4432	5756	GENERAL
990	IITHyderabad	Chemical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	10003	11874	GENERAL
991	IITHyderabad	Chemical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1211	1448	GENERAL
992	IITHyderabad	Chemical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	2507	2507	GENERAL
993	IITHyderabad	Chemical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	713	752	GENERAL
994	IITHyderabad	Chemical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1039	1039	GENERAL
995	IITHyderabad	Civil Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	2749	3453	GENERAL
996	IITHyderabad	Civil Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	5461	6304	GENERAL
997	IITHyderabad	Civil Engineering (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	77	77	PREPARATORY
998	IITHyderabad	Civil Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1278	1326	GENERAL
999	IITHyderabad	Civil Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2104	2104	GENERAL
1000	IITHyderabad	Civil Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	5850	8698	GENERAL
1001	IITHyderabad	Civil Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	12330	15160	GENERAL
1002	IITHyderabad	Civil Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1196	1844	GENERAL
1003	IITHyderabad	Civil Engineering (4 Years Bachelor of Technology)	SC	Female-Only	1496	1896	GENERAL
1004	IITHyderabad	Civil Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	198	533	GENERAL
1005	IITHyderabad	Civil Engineering (4 Years Bachelor of Technology)	ST	Female-Only	605	605	GENERAL
1006	IITHyderabad	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	133	293	GENERAL
1007	IITHyderabad	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	647	887	GENERAL
1008	IITHyderabad	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Female-Only	46	46	GENERAL
1009	IITHyderabad	Computer Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	73	93	GENERAL
1010	IITHyderabad	Computer Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	313	313	GENERAL
1011	IITHyderabad	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	339	673	GENERAL
1012	IITHyderabad	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	1294	2121	GENERAL
1013	IITHyderabad	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	17	17	GENERAL
1014	IITHyderabad	Computer Science and Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	125	198	GENERAL
1015	IITHyderabad	Computer Science and Engineering (4 Years Bachelor of Technology)	SC	Female-Only	336	348	GENERAL
1016	IITHyderabad	Computer Science and Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	51	80	GENERAL
1017	IITHyderabad	Computer Science and Engineering (4 Years Bachelor of Technology)	ST	Female-Only	110	110	GENERAL
1018	IITHyderabad	Computer Science and Engineering (4 Years Bachelor of Technology)	ST(PwD)	Gender-Neutral	5	5	GENERAL
1019	IITHyderabad	Electrical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	671	1024	GENERAL
1020	IITHyderabad	Electrical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	1519	2388	GENERAL
1021	IITHyderabad	Electrical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	207	343	GENERAL
1022	IITHyderabad	Electrical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	534	534	GENERAL
1023	IITHyderabad	Electrical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	848	1900	GENERAL
1024	IITHyderabad	Electrical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	3584	4295	GENERAL
1025	IITHyderabad	Electrical Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	97	97	GENERAL
1026	IITHyderabad	Electrical Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Female-Only	128	128	GENERAL
1027	IITHyderabad	Electrical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	292	553	GENERAL
1028	IITHyderabad	Electrical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	945	960	GENERAL
1029	IITHyderabad	Electrical Engineering (4 Years Bachelor of Technology)	SC(PwD)	Gender-Neutral	5	5	GENERAL
1030	IITHyderabad	Electrical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	223	305	GENERAL
1031	IITHyderabad	Electrical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	357	357	GENERAL
1032	IITHyderabad	Engineering Physics (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	1896	2572	GENERAL
1033	IITHyderabad	Engineering Physics (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	4418	5436	GENERAL
1034	IITHyderabad	Engineering Physics (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1112	1233	GENERAL
1035	IITHyderabad	Engineering Physics (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2835	2835	GENERAL
1036	IITHyderabad	Engineering Physics (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	3332	4686	GENERAL
1037	IITHyderabad	Engineering Physics (4 Years Bachelor of Technology)	OPEN	Female-Only	7216	9760	GENERAL
1038	IITHyderabad	Engineering Physics (4 Years Bachelor of Technology)	SC	Gender-Neutral	1284	1650	GENERAL
1039	IITHyderabad	Engineering Physics (4 Years Bachelor of Technology)	SC	Female-Only	2671	2671	GENERAL
1040	IITHyderabad	Engineering Physics (4 Years Bachelor of Technology)	ST	Gender-Neutral	815	894	GENERAL
1041	IITHyderabad	Engineering Science (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	1232	1880	GENERAL
1042	IITHyderabad	Engineering Science (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	3364	4160	GENERAL
1043	IITHyderabad	Engineering Science (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	395	594	GENERAL
1044	IITHyderabad	Engineering Science (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	1342	1342	GENERAL
1045	IITHyderabad	Engineering Science (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	2225	3272	GENERAL
1046	IITHyderabad	Engineering Science (4 Years Bachelor of Technology)	OPEN	Female-Only	5901	6682	GENERAL
1047	IITHyderabad	Engineering Science (4 Years Bachelor of Technology)	SC	Gender-Neutral	875	1558	GENERAL
1048	IITHyderabad	Engineering Science (4 Years Bachelor of Technology)	SC	Female-Only	1637	1637	GENERAL
1049	IITHyderabad	Engineering Science (4 Years Bachelor of Technology)	ST	Gender-Neutral	317	662	GENERAL
1050	IITHyderabad	Engineering Science (4 Years Bachelor of Technology)	ST	Female-Only	672	672	GENERAL
1051	IITHyderabad	Mathematics and Computing (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	409	441	GENERAL
1052	IITHyderabad	Mathematics and Computing (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	1397	1451	GENERAL
1053	IITHyderabad	Mathematics and Computing (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	39	39	GENERAL
1054	IITHyderabad	Mathematics and Computing (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	153	165	GENERAL
1055	IITHyderabad	Mathematics and Computing (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	448	448	GENERAL
1056	IITHyderabad	Mathematics and Computing (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	771	1015	GENERAL
1057	IITHyderabad	Mathematics and Computing (4 Years Bachelor of Technology)	OPEN	Female-Only	2700	2758	GENERAL
1058	IITHyderabad	Mathematics and Computing (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	59	59	GENERAL
1059	IITHyderabad	Mathematics and Computing (4 Years Bachelor of Technology)	SC	Gender-Neutral	169	303	GENERAL
1060	IITHyderabad	Mathematics and Computing (4 Years Bachelor of Technology)	SC	Female-Only	911	911	GENERAL
1061	IITHyderabad	Mathematics and Computing (4 Years Bachelor of Technology)	ST	Gender-Neutral	188	230	GENERAL
1062	IITHyderabad	Mechanical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	1572	2005	GENERAL
1063	IITHyderabad	Mechanical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	2483	4827	GENERAL
1064	IITHyderabad	Mechanical Engineering (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	124	124	PREPARATORY
1065	IITHyderabad	Mechanical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	483	759	GENERAL
1066	IITHyderabad	Mechanical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	1520	1790	GENERAL
1067	IITHyderabad	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	2837	4443	GENERAL
1068	IITHyderabad	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	6897	9524	GENERAL
1069	IITHyderabad	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	181	181	GENERAL
1070	IITHyderabad	Mechanical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	804	1187	GENERAL
1071	IITHyderabad	Mechanical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	1302	1819	GENERAL
1072	IITHyderabad	Mechanical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	177	501	GENERAL
1073	IITHyderabad	Mechanical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	956	956	GENERAL
1074	IITHyderabad	Materials Science and Metallurgical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	2630	3429	GENERAL
1075	IITHyderabad	Materials Science and Metallurgical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	6227	6349	GENERAL
1076	IITHyderabad	Materials Science and Metallurgical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1348	1449	GENERAL
1077	IITHyderabad	Materials Science and Metallurgical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2518	2518	GENERAL
1078	IITHyderabad	Materials Science and Metallurgical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	6084	7604	GENERAL
1079	IITHyderabad	Materials Science and Metallurgical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	10359	15504	GENERAL
1080	IITHyderabad	Materials Science and Metallurgical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1913	2228	GENERAL
1081	IITHyderabad	Materials Science and Metallurgical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	2604	2604	GENERAL
1082	IITHyderabad	Materials Science and Metallurgical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	736	858	GENERAL
1083	IITHyderabad	Artificial Intelligence (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	309	380	GENERAL
1084	IITHyderabad	Artificial Intelligence (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	1039	1039	GENERAL
1085	IITHyderabad	Artificial Intelligence (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Female-Only	89	89	GENERAL
1086	IITHyderabad	Artificial Intelligence (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	105	116	GENERAL
1087	IITHyderabad	Artificial Intelligence (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	367	367	GENERAL
1088	IITHyderabad	Artificial Intelligence (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	690	861	GENERAL
1089	IITHyderabad	Artificial Intelligence (4 Years Bachelor of Technology)	OPEN	Female-Only	2160	2515	GENERAL
1090	IITHyderabad	Artificial Intelligence (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	77	77	GENERAL
1091	IITHyderabad	Artificial Intelligence (4 Years Bachelor of Technology)	SC	Gender-Neutral	199	222	GENERAL
1092	IITHyderabad	Artificial Intelligence (4 Years Bachelor of Technology)	SC	Female-Only	819	819	GENERAL
1093	IITHyderabad	Artificial Intelligence (4 Years Bachelor of Technology)	ST	Gender-Neutral	72	83	GENERAL
1094	IITHyderabad	Artificial Intelligence (4 Years Bachelor of Technology)	ST	Female-Only	149	149	GENERAL
1095	IITHyderabad	Biomedical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	3670	4107	GENERAL
1096	IITHyderabad	Biomedical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	6414	6457	GENERAL
1097	IITHyderabad	Biomedical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1564	1567	GENERAL
1098	IITHyderabad	Biomedical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2692	2692	GENERAL
1099	IITHyderabad	Biomedical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	4950	8376	GENERAL
1100	IITHyderabad	Biomedical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	13324	15443	GENERAL
1101	IITHyderabad	Biomedical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	2346	2495	GENERAL
1102	IITHyderabad	Biomedical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	961	1067	GENERAL
1103	IITHyderabad	Biomedical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	957	957	GENERAL
1104	IITHyderabad	Biotechnology and Bioinformatics (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	3378	4030	GENERAL
1105	IITHyderabad	Biotechnology and Bioinformatics (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	6479	6570	GENERAL
1106	IITHyderabad	Biotechnology and Bioinformatics (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1403	1451	GENERAL
1107	IITHyderabad	Biotechnology and Bioinformatics (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2573	2573	GENERAL
1108	IITHyderabad	Biotechnology and Bioinformatics (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	5421	9378	GENERAL
1109	IITHyderabad	Biotechnology and Bioinformatics (4 Years Bachelor of Technology)	OPEN	Female-Only	10909	12925	GENERAL
1110	IITHyderabad	Biotechnology and Bioinformatics (4 Years Bachelor of Technology)	SC	Gender-Neutral	2079	2417	GENERAL
1111	IITHyderabad	Biotechnology and Bioinformatics (4 Years Bachelor of Technology)	ST	Gender-Neutral	872	1012	GENERAL
1112	IITHyderabad	Biotechnology and Bioinformatics (4 Years Bachelor of Technology)	ST	Female-Only	1109	1109	GENERAL
1113	IITHyderabad	Computational Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	839	945	GENERAL
1114	IITHyderabad	Computational Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	1806	2257	GENERAL
1115	IITHyderabad	Computational Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	354	393	GENERAL
1116	IITHyderabad	Computational Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	840	840	GENERAL
1117	IITHyderabad	Computational Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	1368	1866	GENERAL
1118	IITHyderabad	Computational Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	4136	4712	GENERAL
1119	IITHyderabad	Computational Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	117	117	PREPARATORY
1120	IITHyderabad	Computational Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	609	705	GENERAL
1121	IITHyderabad	Computational Engineering (4 Years Bachelor of Technology)	SC	Female-Only	1038	1038	GENERAL
1122	IITHyderabad	Computational Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	337	378	GENERAL
1123	IITHyderabad	Industrial Chemistry (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	2965	3992	GENERAL
1124	IITHyderabad	Industrial Chemistry (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	6337	6401	GENERAL
1125	IITHyderabad	Industrial Chemistry (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1523	1694	GENERAL
1126	IITHyderabad	Industrial Chemistry (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2923	2923	GENERAL
1127	IITHyderabad	Industrial Chemistry (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	7757	10043	GENERAL
1128	IITHyderabad	Industrial Chemistry (4 Years Bachelor of Technology)	OPEN	Female-Only	15962	16983	GENERAL
1129	IITHyderabad	Industrial Chemistry (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	166	166	GENERAL
1130	IITHyderabad	Industrial Chemistry (4 Years Bachelor of Technology)	SC	Gender-Neutral	2440	2572	GENERAL
1131	IITHyderabad	Industrial Chemistry (4 Years Bachelor of Technology)	SC	Female-Only	3116	3116	GENERAL
1132	IITHyderabad	Industrial Chemistry (4 Years Bachelor of Technology)	ST	Gender-Neutral	975	1224	GENERAL
1133	IITHyderabad	Electrical Engineering (IC Design and Technology)(4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	657	860	GENERAL
1134	IITHyderabad	Electrical Engineering (IC Design and Technology)(4 Years Bachelor of Technology)	OBC-NCL	Female-Only	2363	2498	GENERAL
1135	IITHyderabad	Electrical Engineering (IC Design and Technology)(4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	77	77	GENERAL
1136	IITHyderabad	Electrical Engineering (IC Design and Technology)(4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	274	320	GENERAL
1137	IITHyderabad	Electrical Engineering (IC Design and Technology)(4 Years Bachelor of Technology)	GEN-EWS	Female-Only	605	605	GENERAL
1138	IITHyderabad	Electrical Engineering (IC Design and Technology)(4 Years Bachelor of Technology)	OPEN	Gender-Neutral	1644	1895	GENERAL
1139	IITHyderabad	Electrical Engineering (IC Design and Technology)(4 Years Bachelor of Technology)	OPEN	Female-Only	3778	4071	GENERAL
1140	IITHyderabad	Electrical Engineering (IC Design and Technology)(4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	98	98	GENERAL
1141	IITHyderabad	Electrical Engineering (IC Design and Technology)(4 Years Bachelor of Technology)	SC	Gender-Neutral	241	441	GENERAL
1142	IITHyderabad	Electrical Engineering (IC Design and Technology)(4 Years Bachelor of Technology)	SC	Female-Only	1008	1008	GENERAL
1143	IITHyderabad	Electrical Engineering (IC Design and Technology)(4 Years Bachelor of Technology)	ST	Gender-Neutral	211	266	GENERAL
1144	IITJodhpur	Chemical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	4077	4490	GENERAL
1145	IITJodhpur	Chemical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	7281	8275	GENERAL
1146	IITJodhpur	Chemical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1623	1722	GENERAL
1147	IITJodhpur	Chemical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	3252	3252	GENERAL
1148	IITJodhpur	Chemical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	9595	11626	GENERAL
1149	IITJodhpur	Chemical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	18850	19522	GENERAL
1150	IITJodhpur	Chemical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	2461	2691	GENERAL
1151	IITJodhpur	Chemical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	2615	3739	GENERAL
1152	IITJodhpur	Chemical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	1210	1250	GENERAL
1153	IITJodhpur	Chemical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1713	1713	GENERAL
1154	IITJodhpur	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	809	1440	GENERAL
1155	IITJodhpur	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	3290	3668	GENERAL
1156	IITJodhpur	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	73	73	GENERAL
1157	IITJodhpur	Computer Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	384	456	GENERAL
1158	IITJodhpur	Computer Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	897	897	GENERAL
1159	IITJodhpur	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	2269	2918	GENERAL
1160	IITJodhpur	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	5959	7224	GENERAL
1161	IITJodhpur	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	108	108	GENERAL
1162	IITJodhpur	Computer Science and Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	509	882	GENERAL
1163	IITJodhpur	Computer Science and Engineering (4 Years Bachelor of Technology)	SC	Female-Only	1267	1484	GENERAL
1164	IITJodhpur	Computer Science and Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	299	403	GENERAL
1165	IITJodhpur	Computer Science and Engineering (4 Years Bachelor of Technology)	ST	Female-Only	584	584	GENERAL
1166	IITJodhpur	Electrical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	2328	3000	GENERAL
1167	IITJodhpur	Electrical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	4853	6186	GENERAL
1168	IITJodhpur	Electrical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	765	1066	GENERAL
1169	IITJodhpur	Electrical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2070	2538	GENERAL
1170	IITJodhpur	Electrical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	5270	6824	GENERAL
1171	IITJodhpur	Electrical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	9375	14511	GENERAL
1172	IITJodhpur	Electrical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1393	1703	GENERAL
1173	IITJodhpur	Electrical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	3090	3090	GENERAL
1174	IITJodhpur	Electrical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	608	791	GENERAL
1175	IITJodhpur	Electronics Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	1963	2857	GENERAL
1176	IITJodhpur	Electronics Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	6356	6541	GENERAL
1177	IITJodhpur	Electronics Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	941	1019	GENERAL
1178	IITJodhpur	Electronics Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2250	2250	GENERAL
1179	IITJodhpur	Electronics Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	4392	6228	GENERAL
1180	IITJodhpur	Electronics Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	10250	14160	GENERAL
1181	IITJodhpur	Electronics Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1362	1839	GENERAL
1182	IITJodhpur	Electronics Engineering (4 Years Bachelor of Technology)	SC	Female-Only	2925	2925	GENERAL
1183	IITJodhpur	Electronics Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	725	892	GENERAL
1184	IITJodhpur	Mechanical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	3065	4024	GENERAL
1185	IITJodhpur	Mechanical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	6306	7890	GENERAL
1186	IITJodhpur	Mechanical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1355	1594	GENERAL
1187	IITJodhpur	Mechanical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2980	2980	GENERAL
1188	IITJodhpur	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	7550	9569	GENERAL
1189	IITJodhpur	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	17068	18647	GENERAL
1190	IITJodhpur	Mechanical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	2088	2334	GENERAL
1191	IITJodhpur	Mechanical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	3687	3760	GENERAL
1192	IITJodhpur	Mechanical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	825	1111	GENERAL
1193	IITJodhpur	Mechanical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1393	1393	GENERAL
1194	IITJodhpur	Civil and Infrastructure Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	3793	4930	GENERAL
1195	IITJodhpur	Civil and Infrastructure Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	8221	8693	GENERAL
1196	IITJodhpur	Civil and Infrastructure Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	2153	2228	GENERAL
1197	IITJodhpur	Civil and Infrastructure Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	3519	3519	GENERAL
1198	IITJodhpur	Civil and Infrastructure Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	11662	14301	GENERAL
1199	IITJodhpur	Civil and Infrastructure Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	18920	22812	GENERAL
1200	IITJodhpur	Civil and Infrastructure Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	2563	2744	GENERAL
1201	IITJodhpur	Civil and Infrastructure Engineering (4 Years Bachelor of Technology)	SC	Female-Only	3516	3516	GENERAL
1202	IITJodhpur	Civil and Infrastructure Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	997	1126	GENERAL
1203	IITJodhpur	Civil and Infrastructure Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1353	1353	GENERAL
1204	IITJodhpur	Bio Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	5116	5790	GENERAL
1205	IITJodhpur	Bio Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	9342	9578	GENERAL
1206	IITJodhpur	Bio Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	2289	2371	GENERAL
1207	IITJodhpur	Bio Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	13106	15278	GENERAL
1208	IITJodhpur	Bio Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	16749	22651	GENERAL
1209	IITJodhpur	Bio Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	2664	3307	GENERAL
1210	IITJodhpur	Bio Engineering (4 Years Bachelor of Technology)	SC	Female-Only	4169	4169	GENERAL
1211	IITJodhpur	Bio Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	1387	1484	GENERAL
1212	IITJodhpur	Bio Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1804	1804	GENERAL
1213	IITJodhpur	Artificial Intelligence and Data Science (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	1597	1828	GENERAL
1214	IITJodhpur	Artificial Intelligence and Data Science (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	4156	4556	GENERAL
1215	IITJodhpur	Artificial Intelligence and Data Science (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	47	47	PREPARATORY
1216	IITJodhpur	Artificial Intelligence and Data Science (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	450	628	GENERAL
1217	IITJodhpur	Artificial Intelligence and Data Science (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	1302	1302	GENERAL
1218	IITJodhpur	Artificial Intelligence and Data Science (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	3049	4212	GENERAL
1219	IITJodhpur	Artificial Intelligence and Data Science (4 Years Bachelor of Technology)	OPEN	Female-Only	7277	8705	GENERAL
1220	IITJodhpur	Artificial Intelligence and Data Science (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	147	147	GENERAL
1221	IITJodhpur	Artificial Intelligence and Data Science (4 Years Bachelor of Technology)	SC	Gender-Neutral	814	1001	GENERAL
1222	IITJodhpur	Artificial Intelligence and Data Science (4 Years Bachelor of Technology)	SC	Female-Only	1493	1862	GENERAL
1223	IITJodhpur	Artificial Intelligence and Data Science (4 Years Bachelor of Technology)	ST	Gender-Neutral	282	462	GENERAL
1224	IITJodhpur	Artificial Intelligence and Data Science (4 Years Bachelor of Technology)	ST	Female-Only	710	710	GENERAL
1225	IITJodhpur	Materials Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	5205	5605	GENERAL
1226	IITJodhpur	Materials Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	9308	9511	GENERAL
1227	IITJodhpur	Materials Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	2117	2235	GENERAL
1228	IITJodhpur	Materials Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	4028	4028	GENERAL
1229	IITJodhpur	Materials Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	11659	15034	GENERAL
1230	IITJodhpur	Materials Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	20897	24170	GENERAL
1231	IITJodhpur	Materials Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	2998	3249	GENERAL
1232	IITJodhpur	Materials Engineering (4 Years Bachelor of Technology)	SC	Female-Only	4151	4337	GENERAL
1233	IITJodhpur	Materials Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	1374	1474	GENERAL
1234	IITJodhpur	Materials Engineering (4 Years Bachelor of Technology)	ST	Female-Only	2055	2055	GENERAL
1235	IITJodhpur	Physics with Specialization (4 Years Bachelor of Science)	OBC-NCL	Gender-Neutral	5244	5988	GENERAL
1236	IITJodhpur	Physics with Specialization (4 Years Bachelor of Science)	OBC-NCL	Female-Only	9285	9285	GENERAL
1237	IITJodhpur	Physics with Specialization (4 Years Bachelor of Science)	GEN-EWS	Gender-Neutral	2318	2478	GENERAL
1238	IITJodhpur	Physics with Specialization (4 Years Bachelor of Science)	GEN-EWS	Female-Only	3999	3999	GENERAL
1239	IITJodhpur	Physics with Specialization (4 Years Bachelor of Science)	OPEN	Gender-Neutral	11193	15185	GENERAL
1240	IITJodhpur	Physics with Specialization (4 Years Bachelor of Science)	OPEN	Female-Only	23924	25502	GENERAL
1241	IITJodhpur	Physics with Specialization (4 Years Bachelor of Science)	SC	Gender-Neutral	2493	3355	GENERAL
1242	IITJodhpur	Physics with Specialization (4 Years Bachelor of Science)	SC	Female-Only	4273	4273	GENERAL
1243	IITJodhpur	Physics with Specialization (4 Years Bachelor of Science)	ST	Gender-Neutral	1482	1521	GENERAL
1244	IITJodhpur	Chemistry with Specialization (4 Years Bachelor of Science)	OBC-NCL	Gender-Neutral	5230	6135	GENERAL
1245	IITJodhpur	Chemistry with Specialization (4 Years Bachelor of Science)	OBC-NCL	Female-Only	9061	9061	GENERAL
1246	IITJodhpur	Chemistry with Specialization (4 Years Bachelor of Science)	GEN-EWS	Gender-Neutral	2591	2659	GENERAL
1247	IITJodhpur	Chemistry with Specialization (4 Years Bachelor of Science)	GEN-EWS	Female-Only	4319	4319	GENERAL
1248	IITJodhpur	Chemistry with Specialization (4 Years Bachelor of Science)	OPEN	Gender-Neutral	14939	18310	GENERAL
1249	IITJodhpur	Chemistry with Specialization (4 Years Bachelor of Science)	OPEN	Female-Only	25547	26039	GENERAL
1250	IITJodhpur	Chemistry with Specialization (4 Years Bachelor of Science)	SC	Gender-Neutral	3365	3406	GENERAL
1251	IITJodhpur	Chemistry with Specialization (4 Years Bachelor of Science)	SC	Female-Only	4042	4042	GENERAL
1252	IITJodhpur	Chemistry with Specialization (4 Years Bachelor of Science)	ST	Gender-Neutral	1458	1485	GENERAL
1253	IITKanpur	Aerospace Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	1346	1889	GENERAL
1254	IITKanpur	Aerospace Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	3717	4594	GENERAL
1255	IITKanpur	Aerospace Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	659	830	GENERAL
1256	IITKanpur	Aerospace Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	1703	1703	GENERAL
1257	IITKanpur	Aerospace Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	1973	3805	GENERAL
1258	IITKanpur	Aerospace Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	6160	9292	GENERAL
1259	IITKanpur	Aerospace Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	130	130	GENERAL
1260	IITKanpur	Aerospace Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	112	1090	GENERAL
1261	IITKanpur	Aerospace Engineering (4 Years Bachelor of Technology)	SC	Female-Only	1471	1968	GENERAL
1262	IITKanpur	Aerospace Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	572	623	GENERAL
1263	IITKanpur	Aerospace Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1095	1095	GENERAL
1264	IITKanpur	Biological Sciences and Bioengineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	3150	3458	GENERAL
1265	IITKanpur	Biological Sciences and Bioengineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	5899	7359	GENERAL
1266	IITKanpur	Biological Sciences and Bioengineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1211	1315	GENERAL
1267	IITKanpur	Biological Sciences and Bioengineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2788	2788	GENERAL
1268	IITKanpur	Biological Sciences and Bioengineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	3559	7105	GENERAL
1269	IITKanpur	Biological Sciences and Bioengineering (4 Years Bachelor of Technology)	OPEN	Female-Only	10629	14717	GENERAL
1270	IITKanpur	Biological Sciences and Bioengineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	64	64	PREPARATORY
1271	IITKanpur	Biological Sciences and Bioengineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1763	2229	GENERAL
1272	IITKanpur	Biological Sciences and Bioengineering (4 Years Bachelor of Technology)	SC	Female-Only	2830	3276	GENERAL
1273	IITKanpur	Biological Sciences and Bioengineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	866	1079	GENERAL
1274	IITKanpur	Biological Sciences and Bioengineering (4 Years Bachelor of Technology)	ST	Female-Only	1564	1564	GENERAL
1275	IITKanpur	Chemical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	1300	1976	GENERAL
1276	IITKanpur	Chemical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	4038	4961	GENERAL
1277	IITKanpur	Chemical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	604	731	GENERAL
1278	IITKanpur	Chemical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	1605	1724	GENERAL
1279	IITKanpur	Chemical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	2785	4280	GENERAL
1280	IITKanpur	Chemical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	7856	8902	GENERAL
1281	IITKanpur	Chemical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	816	1173	GENERAL
1282	IITKanpur	Chemical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	1814	2087	GENERAL
1283	IITKanpur	Chemical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	516	718	GENERAL
1284	IITKanpur	Chemical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1188	1256	GENERAL
1285	IITKanpur	Civil Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	1966	2651	GENERAL
1286	IITKanpur	Civil Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	4877	5823	GENERAL
1287	IITKanpur	Civil Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	915	1071	GENERAL
1288	IITKanpur	Civil Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	1822	2219	GENERAL
1289	IITKanpur	Civil Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	4361	6161	GENERAL
1290	IITKanpur	Civil Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	9442	13558	GENERAL
1291	IITKanpur	Civil Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	81	81	PREPARATORY
1292	IITKanpur	Civil Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	839	1598	GENERAL
1293	IITKanpur	Civil Engineering (4 Years Bachelor of Technology)	SC	Female-Only	2473	2700	GENERAL
1294	IITKanpur	Civil Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	306	510	GENERAL
1295	IITKanpur	Civil Engineering (4 Years Bachelor of Technology)	ST	Female-Only	595	659	GENERAL
1296	IITKanpur	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	88	142	GENERAL
1297	IITKanpur	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	568	706	GENERAL
1298	IITKanpur	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	9	9	GENERAL
1299	IITKanpur	Computer Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	35	50	GENERAL
1300	IITKanpur	Computer Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	187	199	GENERAL
1301	IITKanpur	Computer Science and Engineering (4 Years Bachelor of Technology)	GEN- EWS(PwD)	Gender-Neutral	6	6	GENERAL
1302	IITKanpur	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	147	271	GENERAL
1303	IITKanpur	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	507	1109	GENERAL
1304	IITKanpur	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	5	15	GENERAL
1305	IITKanpur	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Female-Only	35	35	GENERAL
1306	IITKanpur	Computer Science and Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	48	70	GENERAL
1307	IITKanpur	Computer Science and Engineering (4 Years Bachelor of Technology)	SC	Female-Only	274	378	GENERAL
1308	IITKanpur	Computer Science and Engineering (4 Years Bachelor of Technology)	SC(PwD)	Gender-Neutral	4	4	GENERAL
1309	IITKanpur	Computer Science and Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	32	46	GENERAL
1310	IITKanpur	Computer Science and Engineering (4 Years Bachelor of Technology)	ST	Female-Only	93	122	GENERAL
1311	IITKanpur	Computer Science and Engineering (4 Years Bachelor of Technology)	ST(PwD)	Gender-Neutral	3	3	GENERAL
1312	IITKanpur	Electrical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	280	724	GENERAL
1313	IITKanpur	Electrical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	1654	2378	GENERAL
1314	IITKanpur	Electrical Engineering (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	49	58	GENERAL
1315	IITKanpur	Electrical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	149	234	GENERAL
1316	IITKanpur	Electrical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	589	648	GENERAL
1317	IITKanpur	Electrical Engineering (4 Years Bachelor of Technology)	GEN- EWS(PwD)	Gender-Neutral	39	39	GENERAL
1318	IITKanpur	Electrical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	798	1146	GENERAL
1319	IITKanpur	Electrical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	2222	4142	GENERAL
1320	IITKanpur	Electrical Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	31	105	GENERAL
1321	IITKanpur	Electrical Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Female-Only	109	109	GENERAL
1322	IITKanpur	Electrical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	79	430	GENERAL
1323	IITKanpur	Electrical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	952	1249	GENERAL
1324	IITKanpur	Electrical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	60	199	GENERAL
1325	IITKanpur	Electrical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	405	491	GENERAL
1326	IITKanpur	Materials Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	2539	3047	GENERAL
1327	IITKanpur	Materials Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	5978	6716	GENERAL
1328	IITKanpur	Materials Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	956	1232	GENERAL
1329	IITKanpur	Materials Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2248	2391	GENERAL
1330	IITKanpur	Materials Science and Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	4862	6337	GENERAL
1331	IITKanpur	Materials Science and Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	9394	13556	GENERAL
1332	IITKanpur	Materials Science and Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1754	1922	GENERAL
1333	IITKanpur	Materials Science and Engineering (4 Years Bachelor of Technology)	SC	Female-Only	2917	3011	GENERAL
1334	IITKanpur	Materials Science and Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	903	1029	GENERAL
1335	IITKanpur	Materials Science and Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1602	1602	GENERAL
1336	IITKanpur	Mechanical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	1059	1358	GENERAL
1337	IITKanpur	Mechanical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	3484	4172	GENERAL
1338	IITKanpur	Mechanical Engineering (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	70	70	PREPARATORY
1339	IITKanpur	Mechanical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	371	550	GENERAL
1340	IITKanpur	Mechanical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	1387	1587	GENERAL
1341	IITKanpur	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	1589	2771	GENERAL
1342	IITKanpur	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	5199	7379	GENERAL
1343	IITKanpur	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	187	28	GENERAL
1344	IITKanpur	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Female-Only	144	144	PREPARATORY
1345	IITKanpur	Mechanical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	526	798	GENERAL
1346	IITKanpur	Mechanical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	1514	1982	GENERAL
1347	IITKanpur	Mechanical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	395	509	GENERAL
1348	IITKanpur	Mechanical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1080	1168	GENERAL
1349	IITKanpur	Chemistry (4 Years Bachelor of Science)	OBC-NCL	Gender-Neutral	3621	4632	GENERAL
1350	IITKanpur	Chemistry (4 Years Bachelor of Science)	OBC-NCL	Female-Only	6920	8526	GENERAL
1351	IITKanpur	Chemistry (4 Years Bachelor of Science)	GEN-EWS	Gender-Neutral	1809	1910	GENERAL
1352	IITKanpur	Chemistry (4 Years Bachelor of Science)	GEN-EWS	Female-Only	3594	3594	GENERAL
1353	IITKanpur	Chemistry (4 Years Bachelor of Science)	OPEN	Gender-Neutral	8553	10482	GENERAL
1354	IITKanpur	Chemistry (4 Years Bachelor of Science)	OPEN	Female-Only	11132	18410	GENERAL
1355	IITKanpur	Chemistry (4 Years Bachelor of Science)	SC	Gender-Neutral	2455	2835	GENERAL
1356	IITKanpur	Chemistry (4 Years Bachelor of Science)	SC	Female-Only	3404	3628	GENERAL
1357	IITKanpur	Chemistry (4 Years Bachelor of Science)	ST	Gender-Neutral	1272	1470	GENERAL
1358	IITKanpur	Chemistry (4 Years Bachelor of Science)	ST	Female-Only	2025	2025	GENERAL
1359	IITKanpur	Economics (4 Years Bachelor of Science)	OBC-NCL	Gender-Neutral	1325	1969	GENERAL
1360	IITKanpur	Economics (4 Years Bachelor of Science)	OBC-NCL	Female-Only	3843	4805	GENERAL
1361	IITKanpur	Economics (4 Years Bachelor of Science)	GEN-EWS	Gender-Neutral	601	689	GENERAL
1362	IITKanpur	Economics (4 Years Bachelor of Science)	GEN-EWS	Female-Only	1411	1411	GENERAL
1363	IITKanpur	Economics (4 Years Bachelor of Science)	OPEN	Gender-Neutral	2625	3310	GENERAL
1364	IITKanpur	Economics (4 Years Bachelor of Science)	OPEN	Female-Only	3719	5472	GENERAL
1365	IITKanpur	Economics (4 Years Bachelor of Science)	OPEN(PwD)	Gender-Neutral	256	256	PREPARATORY
1366	IITKanpur	Economics (4 Years Bachelor of Science)	SC	Gender-Neutral	951	1305	GENERAL
1367	IITKanpur	Economics (4 Years Bachelor of Science)	SC	Female-Only	2457	2463	GENERAL
1368	IITKanpur	Economics (4 Years Bachelor of Science)	ST	Gender-Neutral	686	709	GENERAL
1369	IITKanpur	Economics (4 Years Bachelor of Science)	ST	Female-Only	1383	1383	GENERAL
1370	IITKanpur	Mathematics and Scientific Computing (4 Years Bachelor of Science)	OBC-NCL	Gender-Neutral	359	670	GENERAL
1371	IITKanpur	Mathematics and Scientific Computing (4 Years Bachelor of Science)	OBC-NCL	Female-Only	1947	2415	GENERAL
1372	IITKanpur	Mathematics and Scientific Computing (4 Years Bachelor of Science)	OBC-NCL(PwD)	Gender-Neutral	20	20	PREPARATORY
1373	IITKanpur	Mathematics and Scientific Computing (4 Years Bachelor of Science)	GEN-EWS	Gender-Neutral	173	251	GENERAL
1374	IITKanpur	Mathematics and Scientific Computing (4 Years Bachelor of Science)	GEN-EWS	Female-Only	476	476	GENERAL
1375	IITKanpur	Mathematics and Scientific Computing (4 Years Bachelor of Science)	OPEN	Gender-Neutral	593	1179	GENERAL
1376	IITKanpur	Mathematics and Scientific Computing (4 Years Bachelor of Science)	OPEN	Female-Only	3219	4094	GENERAL
1377	IITKanpur	Mathematics and Scientific Computing (4 Years Bachelor of Science)	OPEN(PwD)	Gender-Neutral	236	236	GENERAL
1378	IITKanpur	Mathematics and Scientific Computing (4 Years Bachelor of Science)	SC	Gender-Neutral	155	505	GENERAL
1379	IITKanpur	Mathematics and Scientific Computing (4 Years Bachelor of Science)	SC	Female-Only	956	962	GENERAL
1380	IITKanpur	Mathematics and Scientific Computing (4 Years Bachelor of Science)	ST	Gender-Neutral	163	249	GENERAL
1381	IITKanpur	Mathematics and Scientific Computing (4 Years Bachelor of Science)	ST	Female-Only	481	481	GENERAL
1382	IITKanpur	Physics (4 Years Bachelor of Science)	OBC-NCL	Gender-Neutral	3012	3829	GENERAL
1383	IITKanpur	Physics (4 Years Bachelor of Science)	OBC-NCL	Female-Only	7155	8002	GENERAL
1384	IITKanpur	Physics (4 Years Bachelor of Science)	GEN-EWS	Gender-Neutral	1436	1637	GENERAL
1385	IITKanpur	Physics (4 Years Bachelor of Science)	GEN-EWS	Female-Only	2929	2929	GENERAL
1386	IITKanpur	Physics (4 Years Bachelor of Science)	OPEN	Gender-Neutral	3255	5691	GENERAL
1387	IITKanpur	Physics (4 Years Bachelor of Science)	OPEN	Female-Only	15543	17413	GENERAL
1388	IITKanpur	Physics (4 Years Bachelor of Science)	SC	Gender-Neutral	887	2182	GENERAL
1389	IITKanpur	Physics (4 Years Bachelor of Science)	SC	Female-Only	2853	2853	GENERAL
1390	IITKanpur	Physics (4 Years Bachelor of Science)	ST	Gender-Neutral	1320	1389	GENERAL
1391	IITKanpur	Physics (4 Years Bachelor of Science)	ST	Female-Only	1738	1738	GENERAL
1392	IITKanpur	Earth Sciences (4 Years Bachelor of Science)	OBC-NCL	Gender-Neutral	3854	4786	GENERAL
1393	IITKanpur	Earth Sciences (4 Years Bachelor of Science)	OBC-NCL	Female-Only	8106	8187	GENERAL
1394	IITKanpur	Earth Sciences (4 Years Bachelor of Science)	GEN-EWS	Gender-Neutral	1468	1850	GENERAL
1395	IITKanpur	Earth Sciences (4 Years Bachelor of Science)	GEN-EWS	Female-Only	3119	3119	GENERAL
1396	IITKanpur	Earth Sciences (4 Years Bachelor of Science)	OPEN	Gender-Neutral	8158	10108	GENERAL
1397	IITKanpur	Earth Sciences (4 Years Bachelor of Science)	OPEN	Female-Only	17777	20264	GENERAL
1398	IITKanpur	Earth Sciences (4 Years Bachelor of Science)	SC	Gender-Neutral	2289	2541	GENERAL
1399	IITKanpur	Earth Sciences (4 Years Bachelor of Science)	SC	Female-Only	3286	3286	GENERAL
1400	IITKanpur	Earth Sciences (4 Years Bachelor of Science)	ST	Gender-Neutral	1365	1487	GENERAL
1401	IITKanpur	Earth Sciences (4 Years Bachelor of Science)	ST	Female-Only	1977	1977	GENERAL
1402	IITKanpur	Statistics and Data Science (4 Years Bachelor of Science)	OBC-NCL	Gender-Neutral	638	704	GENERAL
1403	IITKanpur	Statistics and Data Science (4 Years Bachelor of Science)	OBC-NCL	Female-Only	1714	1871	GENERAL
1404	IITKanpur	Statistics and Data Science (4 Years Bachelor of Science)	GEN-EWS	Gender-Neutral	209	232	GENERAL
1405	IITKanpur	Statistics and Data Science (4 Years Bachelor of Science)	GEN-EWS	Female-Only	693	693	GENERAL
1406	IITKanpur	Statistics and Data Science (4 Years Bachelor of Science)	OPEN	Gender-Neutral	878	1270	GENERAL
1407	IITKanpur	Statistics and Data Science (4 Years Bachelor of Science)	OPEN	Female-Only	2677	3966	GENERAL
1408	IITKanpur	Statistics and Data Science (4 Years Bachelor of Science)	SC	Gender-Neutral	403	464	GENERAL
1409	IITKanpur	Statistics and Data Science (4 Years Bachelor of Science)	SC	Female-Only	1504	1504	GENERAL
1410	IITKanpur	Statistics and Data Science (4 Years Bachelor of Science)	ST	Gender-Neutral	212	238	GENERAL
1411	IITMadras	Aerospace Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	968	1508	GENERAL
1412	IITMadras	Aerospace Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	1543	2517	GENERAL
1413	IITMadras	Aerospace Engineering (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	59	59	PREPARATORY
1414	IITMadras	Aerospace Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	493	645	GENERAL
1415	IITMadras	Aerospace Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	1365	1365	GENERAL
1416	IITMadras	Aerospace Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	662	3211	GENERAL
1417	IITMadras	Aerospace Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	4535	5512	GENERAL
1418	IITMadras	Aerospace Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	102	102	PREPARATORY
1419	IITMadras	Aerospace Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	287	830	GENERAL
1420	IITMadras	Aerospace Engineering (4 Years Bachelor of Technology)	SC	Female-Only	1271	1421	GENERAL
1421	IITMadras	Aerospace Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	389	540	GENERAL
1422	IITMadras	Aerospace Engineering (4 Years Bachelor of Technology)	ST	Female-Only	417	417	GENERAL
1423	IITMadras	Chemical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	1341	1869	GENERAL
1424	IITMadras	Chemical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	2717	3820	GENERAL
1425	IITMadras	Chemical Engineering (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	104	104	PREPARATORY
1426	IITMadras	Chemical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	477	767	GENERAL
1427	IITMadras	Chemical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	1230	1293	GENERAL
1428	IITMadras	Chemical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	2634	4116	GENERAL
1429	IITMadras	Chemical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	3252	7546	GENERAL
1430	IITMadras	Chemical Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	243	159	GENERAL
1431	IITMadras	Chemical Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Female-Only	291	291	PREPARATORY
1432	IITMadras	Chemical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	769	1189	GENERAL
1433	IITMadras	Chemical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	1402	1596	GENERAL
1434	IITMadras	Chemical Engineering (4 Years Bachelor of Technology)	SC(PwD)	Gender-Neutral	15	15	PREPARATORY
1435	IITMadras	Chemical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	477	620	GENERAL
1436	IITMadras	Chemical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	631	640	GENERAL
1437	IITMadras	Civil Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	1765	2403	GENERAL
1438	IITMadras	Civil Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	3594	4270	GENERAL
1439	IITMadras	Civil Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	832	949	GENERAL
1440	IITMadras	Civil Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	1597	1642	GENERAL
1441	IITMadras	Civil Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	4356	6112	GENERAL
1442	IITMadras	Civil Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	8877	11902	GENERAL
1443	IITMadras	Civil Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	165	171	GENERAL
1444	IITMadras	Civil Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Female-Only	190	190	PREPARATORY
1445	IITMadras	Civil Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	884	1445	GENERAL
1446	IITMadras	Civil Engineering (4 Years Bachelor of Technology)	SC	Female-Only	1532	2157	GENERAL
1447	IITMadras	Civil Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	170	424	GENERAL
1448	IITMadras	Civil Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1011	1020	GENERAL
1449	IITMadras	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	26	87	GENERAL
1450	IITMadras	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	176	561	GENERAL
1451	IITMadras	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	6	6	GENERAL
1452	IITMadras	Computer Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	21	29	GENERAL
1453	IITMadras	Computer Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	67	91	GENERAL
1454	IITMadras	Computer Science and Engineering (4 Years Bachelor of Technology)	GEN- EWS(PwD)	Gender-Neutral	4	4	GENERAL
1455	IITMadras	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	79	171	GENERAL
1456	IITMadras	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	389	866	GENERAL
1457	IITMadras	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	9	9	GENERAL
1458	IITMadras	Computer Science and Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	10	43	GENERAL
1459	IITMadras	Computer Science and Engineering (4 Years Bachelor of Technology)	SC	Female-Only	243	255	GENERAL
1460	IITMadras	Computer Science and Engineering (4 Years Bachelor of Technology)	SC(PwD)	Gender-Neutral	2	2	GENERAL
1461	IITMadras	Computer Science and Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	7	28	GENERAL
1462	IITMadras	Computer Science and Engineering (4 Years Bachelor of Technology)	ST	Female-Only	63	63	GENERAL
1463	IITMadras	Electrical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	136	396	GENERAL
1464	IITMadras	Electrical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	566	1450	GENERAL
1465	IITMadras	Electrical Engineering (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	24	48	GENERAL
1466	IITMadras	Electrical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	68	198	GENERAL
1467	IITMadras	Electrical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	429	532	GENERAL
1468	IITMadras	Electrical Engineering (4 Years Bachelor of Technology)	GEN- EWS(PwD)	Gender-Neutral	17	17	GENERAL
1469	IITMadras	Electrical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	205	849	GENERAL
1470	IITMadras	Electrical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	958	2848	GENERAL
1471	IITMadras	Electrical Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	38	38	GENERAL
1472	IITMadras	Electrical Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Female-Only	171	171	GENERAL
1473	IITMadras	Electrical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	52	278	GENERAL
1474	IITMadras	Electrical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	488	845	GENERAL
1475	IITMadras	Electrical Engineering (4 Years Bachelor of Technology)	SC(PwD)	Gender-Neutral	5	8	PREPARATORY
1476	IITMadras	Electrical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	59	153	GENERAL
1477	IITMadras	Electrical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	171	301	GENERAL
1478	IITMadras	Engineering Physics (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	464	1011	GENERAL
1479	IITMadras	Engineering Physics (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	1386	2841	GENERAL
1480	IITMadras	Engineering Physics (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	406	586	GENERAL
1481	IITMadras	Engineering Physics (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2138	2138	GENERAL
1482	IITMadras	Engineering Physics (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	872	1441	GENERAL
1483	IITMadras	Engineering Physics (4 Years Bachelor of Technology)	OPEN	Female-Only	2907	4367	GENERAL
1484	IITMadras	Engineering Physics (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	227	227	GENERAL
1485	IITMadras	Engineering Physics (4 Years Bachelor of Technology)	SC	Gender-Neutral	860	1015	GENERAL
1486	IITMadras	Engineering Physics (4 Years Bachelor of Technology)	SC	Female-Only	2194	2194	GENERAL
1487	IITMadras	Engineering Physics (4 Years Bachelor of Technology)	ST	Gender-Neutral	478	719	GENERAL
1488	IITMadras	Engineering Physics (4 Years Bachelor of Technology)	ST	Female-Only	970	970	GENERAL
1489	IITMadras	Mechanical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	453	1070	GENERAL
1490	IITMadras	Mechanical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	1555	3309	GENERAL
1491	IITMadras	Mechanical Engineering (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	53	82	GENERAL
1492	IITMadras	Mechanical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	368	479	GENERAL
1493	IITMadras	Mechanical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	937	993	GENERAL
1494	IITMadras	Mechanical Engineering (4 Years Bachelor of Technology)	GEN- EWS(PwD)	Gender-Neutral	32	32	PREPARATORY
1495	IITMadras	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	868	2468	GENERAL
1496	IITMadras	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	5027	6369	GENERAL
1497	IITMadras	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	113	139	GENERAL
1498	IITMadras	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Female-Only	275	275	PREPARATORY
1499	IITMadras	Mechanical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	383	732	GENERAL
1500	IITMadras	Mechanical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	1094	1508	GENERAL
1501	IITMadras	Mechanical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	166	386	GENERAL
1502	IITMadras	Mechanical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	411	901	GENERAL
1503	IITMadras	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	1815	2343	GENERAL
1504	IITMadras	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	3910	4822	GENERAL
1505	IITMadras	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	111	111	PREPARATORY
1506	IITMadras	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	989	1115	GENERAL
1507	IITMadras	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	1963	1963	GENERAL
1508	IITMadras	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	4369	5499	GENERAL
1509	IITMadras	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	9357	11404	GENERAL
1510	IITMadras	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	239	239	PREPARATORY
1511	IITMadras	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1426	1686	GENERAL
1512	IITMadras	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	SC	Female-Only	2102	2276	GENERAL
1513	IITMadras	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	688	739	GENERAL
1514	IITMadras	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1526	1526	GENERAL
1515	IITMadras	Naval Architecture and Ocean Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	1960	3131	GENERAL
1516	IITMadras	Naval Architecture and Ocean Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	4075	6399	GENERAL
1517	IITMadras	Naval Architecture and Ocean Engineering (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	101	101	PREPARATORY
1518	IITMadras	Naval Architecture and Ocean Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1273	1476	GENERAL
1519	IITMadras	Naval Architecture and Ocean Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2533	2814	GENERAL
1520	IITMadras	Naval Architecture and Ocean Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	4908	7433	GENERAL
1521	IITMadras	Naval Architecture and Ocean Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	12655	14878	GENERAL
1522	IITMadras	Naval Architecture and Ocean Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	39	39	PREPARATORY
1523	IITMadras	Naval Architecture and Ocean Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	698	2009	GENERAL
1524	IITMadras	Naval Architecture and Ocean Engineering (4 Years Bachelor of Technology)	SC	Female-Only	2611	2750	GENERAL
1525	IITMadras	Naval Architecture and Ocean Engineering (4 Years Bachelor of Technology)	SC(PwD)	Gender-Neutral	18	18	PREPARATORY
1526	IITMadras	Naval Architecture and Ocean Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	941	1046	GENERAL
1527	IITMadras	Naval Architecture and Ocean Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1464	1464	GENERAL
1528	IITMadras	Physics (4 Years Bachelor of Science)	OBC-NCL	Gender-Neutral	1534	2420	GENERAL
1529	IITMadras	Physics (4 Years Bachelor of Science)	OBC-NCL	Female-Only	5549	5549	GENERAL
1530	IITMadras	Physics (4 Years Bachelor of Science)	GEN-EWS	Gender-Neutral	1129	1129	GENERAL
1531	IITMadras	Physics (4 Years Bachelor of Science)	OPEN	Gender-Neutral	1642	3804	GENERAL
1532	IITMadras	Physics (4 Years Bachelor of Science)	OPEN	Female-Only	14665	15596	GENERAL
1533	IITMadras	Physics (4 Years Bachelor of Science)	SC	Gender-Neutral	326	326	GENERAL
1534	IITMadras	Physics (4 Years Bachelor of Science)	ST	Gender-Neutral	1075	1075	GENERAL
1535	IITMadras	Biological Science (4 Years Bachelor of Science)	OBC-NCL	Gender-Neutral	3669	4374	GENERAL
1536	IITMadras	Biological Science (4 Years Bachelor of Science)	OBC-NCL	Female-Only	6299	6299	GENERAL
1537	IITMadras	Biological Science (4 Years Bachelor of Science)	GEN-EWS	Gender-Neutral	1667	1731	GENERAL
1538	IITMadras	Biological Science (4 Years Bachelor of Science)	GEN-EWS	Female-Only	2875	2875	GENERAL
1539	IITMadras	Biological Science (4 Years Bachelor of Science)	OPEN	Gender-Neutral	3268	10290	GENERAL
1540	IITMadras	Biological Science (4 Years Bachelor of Science)	OPEN	Female-Only	8718	15727	GENERAL
1541	IITMadras	Biological Science (4 Years Bachelor of Science)	OPEN(PwD)	Gender-Neutral	272	272	PREPARATORY
1542	IITMadras	Biological Science (4 Years Bachelor of Science)	SC	Gender-Neutral	1254	2472	GENERAL
1543	IITMadras	Biological Science (4 Years Bachelor of Science)	SC	Female-Only	770	770	GENERAL
1544	IITMadras	Biological Science (4 Years Bachelor of Science)	ST	Gender-Neutral	1197	1264	GENERAL
1545	IITMadras	Aerospace Engineering (5 Years Bachelor and Master of Technology (Dual Degree))	OBC-NCL	Gender-Neutral	785	1472	GENERAL
1546	IITMadras	Aerospace Engineering (5 Years Bachelor and Master of Technology (Dual Degree))	OBC-NCL	Female-Only	3023	3023	GENERAL
1547	IITMadras	Aerospace Engineering (5 Years Bachelor and Master of Technology (Dual Degree))	GEN-EWS	Gender-Neutral	929	929	GENERAL
1548	IITMadras	Aerospace Engineering (5 Years Bachelor and Master of Technology (Dual Degree))	OPEN	Gender-Neutral	2304	2808	GENERAL
1549	IITMadras	Aerospace Engineering (5 Years Bachelor and Master of Technology (Dual Degree))	OPEN	Female-Only	16	16	GENERAL
1550	IITMadras	Aerospace Engineering (5 Years Bachelor and Master of Technology (Dual Degree))	SC	Gender-Neutral	115	115	GENERAL
1551	IITMadras	Aerospace Engineering (5 Years Bachelor and Master of Technology (Dual Degree))	ST	Gender-Neutral	536	536	GENERAL
1552	IITMadras	Engineering Design (5 Years Bachelor and Master of Technology (Dual Degree))	OBC-NCL	Gender-Neutral	1105	1466	GENERAL
1553	IITMadras	Engineering Design (5 Years Bachelor and Master of Technology (Dual Degree))	OBC-NCL	Female-Only	2276	3216	GENERAL
1554	IITMadras	Engineering Design (5 Years Bachelor and Master of Technology (Dual Degree))	OBC-NCL(PwD)	Gender-Neutral	106	106	PREPARATORY
1555	IITMadras	Engineering Design (5 Years Bachelor and Master of Technology (Dual Degree))	GEN-EWS	Gender-Neutral	649	838	GENERAL
1556	IITMadras	Engineering Design (5 Years Bachelor and Master of Technology (Dual Degree))	GEN-EWS	Female-Only	1334	1334	GENERAL
1557	IITMadras	Engineering Design (5 Years Bachelor and Master of Technology (Dual Degree))	OPEN	Gender-Neutral	816	3380	GENERAL
1558	IITMadras	Engineering Design (5 Years Bachelor and Master of Technology (Dual Degree))	OPEN	Female-Only	4903	7751	GENERAL
1559	IITMadras	Engineering Design (5 Years Bachelor and Master of Technology (Dual Degree))	OPEN(PwD)	Gender-Neutral	217	217	GENERAL
1560	IITMadras	Engineering Design (5 Years Bachelor and Master of Technology (Dual Degree))	SC	Gender-Neutral	784	1513	GENERAL
1561	IITMadras	Engineering Design (5 Years Bachelor and Master of Technology (Dual Degree))	SC	Female-Only	1366	1960	GENERAL
1562	IITMadras	Engineering Design (5 Years Bachelor and Master of Technology (Dual Degree))	ST	Gender-Neutral	776	950	GENERAL
1563	IITMadras	Engineering Design (5 Years Bachelor and Master of Technology (Dual Degree))	ST	Female-Only	705	705	GENERAL
1564	IITMadras	Biological Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	2709	3160	GENERAL
1565	IITMadras	Biological Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	5286	5286	GENERAL
1566	IITMadras	Biological Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1374	1383	GENERAL
1567	IITMadras	Biological Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2344	2344	GENERAL
1568	IITMadras	Biological Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	4097	5261	GENERAL
1569	IITMadras	Biological Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	7509	8978	GENERAL
1570	IITMadras	Biological Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	335	335	PREPARATORY
1571	IITMadras	Biological Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1474	1832	GENERAL
1572	IITMadras	Biological Engineering (4 Years Bachelor of Technology)	SC	Female-Only	2186	2186	GENERAL
1573	IITMadras	Biological Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	829	1076	GENERAL
1574	IITMadras	Artificial Intelligence and Data Analytics (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	98	165	GENERAL
1575	IITMadras	Artificial Intelligence and Data Analytics (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	500	611	GENERAL
1576	IITMadras	Artificial Intelligence and Data Analytics (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	16	16	GENERAL
1577	IITMadras	Artificial Intelligence and Data Analytics (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	36	65	GENERAL
1578	IITMadras	Artificial Intelligence and Data Analytics (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	145	145	GENERAL
1579	IITMadras	Artificial Intelligence and Data Analytics (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	102	306	GENERAL
1580	IITMadras	Artificial Intelligence and Data Analytics (4 Years Bachelor of Technology)	OPEN	Female-Only	778	1140	GENERAL
1581	IITMadras	Artificial Intelligence and Data Analytics (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	30	30	GENERAL
1582	IITMadras	Artificial Intelligence and Data Analytics (4 Years Bachelor of Technology)	SC	Gender-Neutral	15	113	GENERAL
1583	IITMadras	Artificial Intelligence and Data Analytics (4 Years Bachelor of Technology)	SC	Female-Only	359	359	GENERAL
1584	IITMadras	Artificial Intelligence and Data Analytics (4 Years Bachelor of Technology)	ST	Gender-Neutral	5	44	GENERAL
1585	IITMadras	Artificial Intelligence and Data Analytics (4 Years Bachelor of Technology)	ST	Female-Only	112	112	GENERAL
1586	IITMadras	Computational Engineering and Mechanics (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	397	741	GENERAL
1587	IITMadras	Computational Engineering and Mechanics (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	1749	1874	GENERAL
1588	IITMadras	Computational Engineering and Mechanics (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	35	35	GENERAL
1589	IITMadras	Computational Engineering and Mechanics (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	237	293	GENERAL
1590	IITMadras	Computational Engineering and Mechanics (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	761	761	GENERAL
1591	IITMadras	Computational Engineering and Mechanics (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	597	1309	GENERAL
1592	IITMadras	Computational Engineering and Mechanics (4 Years Bachelor of Technology)	OPEN	Female-Only	4035	4564	GENERAL
1593	IITMadras	Computational Engineering and Mechanics (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	87	87	GENERAL
1594	IITMadras	Computational Engineering and Mechanics (4 Years Bachelor of Technology)	SC	Gender-Neutral	372	510	GENERAL
1595	IITMadras	Computational Engineering and Mechanics (4 Years Bachelor of Technology)	SC	Female-Only	1129	1129	GENERAL
1596	IITMadras	Computational Engineering and Mechanics (4 Years Bachelor of Technology)	ST	Gender-Neutral	297	355	GENERAL
1597	IITMadras	Computational Engineering and Mechanics (4 Years Bachelor of Technology)	ST	Female-Only	1237	1237	GENERAL
1598	IITMadras	Instrumentation and Biomedical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	1548	2242	GENERAL
1599	IITMadras	Instrumentation and Biomedical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	2911	3943	GENERAL
1600	IITMadras	Instrumentation and Biomedical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1215	1221	GENERAL
1601	IITMadras	Instrumentation and Biomedical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2040	2040	GENERAL
1602	IITMadras	Instrumentation and Biomedical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	2733	4366	GENERAL
1603	IITMadras	Instrumentation and Biomedical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	5888	7756	GENERAL
1604	IITMadras	Instrumentation and Biomedical Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	57	57	PREPARATORY
1605	IITMadras	Instrumentation and Biomedical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1753	1887	GENERAL
1606	IITMadras	Instrumentation and Biomedical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	2120	2120	GENERAL
1607	IITMadras	Instrumentation and Biomedical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	989	1061	GENERAL
1608	IITMadras	Instrumentation and Biomedical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	390	390	GENERAL
1609	IITGandhinagar	Chemical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	3229	3681	GENERAL
1610	IITGandhinagar	Chemical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	5327	6911	GENERAL
1611	IITGandhinagar	Chemical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1420	1531	GENERAL
1612	IITGandhinagar	Chemical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2751	2751	GENERAL
1613	IITGandhinagar	Chemical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	6852	9276	GENERAL
1614	IITGandhinagar	Chemical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	13566	16100	GENERAL
1615	IITGandhinagar	Chemical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1452	2436	GENERAL
1616	IITGandhinagar	Chemical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	3424	3689	GENERAL
1617	IITGandhinagar	Chemical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	755	1089	GENERAL
1618	IITGandhinagar	Chemical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1391	1391	GENERAL
1619	IITGandhinagar	Civil Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	4053	4296	GENERAL
1620	IITGandhinagar	Civil Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	7261	7922	GENERAL
1621	IITGandhinagar	Civil Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1358	1688	GENERAL
1622	IITGandhinagar	Civil Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2941	2941	GENERAL
1623	IITGandhinagar	Civil Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	9310	10796	GENERAL
1624	IITGandhinagar	Civil Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	15658	17377	GENERAL
1625	IITGandhinagar	Civil Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1773	2498	GENERAL
1626	IITGandhinagar	Civil Engineering (4 Years Bachelor of Technology)	SC	Female-Only	3302	3710	GENERAL
1627	IITGandhinagar	Civil Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	487	565	GENERAL
1628	IITGandhinagar	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	589	805	GENERAL
1629	IITGandhinagar	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	1882	2635	GENERAL
1630	IITGandhinagar	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	81	81	GENERAL
1631	IITGandhinagar	Computer Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	245	308	GENERAL
1632	IITGandhinagar	Computer Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	508	508	GENERAL
1633	IITGandhinagar	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	905	2020	GENERAL
1634	IITGandhinagar	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	3718	4811	GENERAL
1635	IITGandhinagar	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	83	83	GENERAL
1636	IITGandhinagar	Computer Science and Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	342	428	GENERAL
1637	IITGandhinagar	Computer Science and Engineering (4 Years Bachelor of Technology)	SC	Female-Only	869	1027	GENERAL
1638	IITGandhinagar	Computer Science and Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	142	178	GENERAL
1639	IITGandhinagar	Computer Science and Engineering (4 Years Bachelor of Technology)	ST	Female-Only	470	470	GENERAL
1640	IITGandhinagar	Electrical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	1648	1973	GENERAL
1641	IITGandhinagar	Electrical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	4441	4655	GENERAL
1642	IITGandhinagar	Electrical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	640	728	GENERAL
1643	IITGandhinagar	Electrical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	1377	1377	GENERAL
1644	IITGandhinagar	Electrical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	2282	3931	GENERAL
1645	IITGandhinagar	Electrical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	8345	9923	GENERAL
1646	IITGandhinagar	Electrical Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	151	151	PREPARATORY
1647	IITGandhinagar	Electrical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1126	1288	GENERAL
1648	IITGandhinagar	Electrical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	1197	1906	GENERAL
1649	IITGandhinagar	Electrical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	596	634	GENERAL
1650	IITGandhinagar	Electrical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	951	951	GENERAL
1651	IITGandhinagar	Mechanical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	2376	3099	GENERAL
1652	IITGandhinagar	Mechanical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	6297	7216	GENERAL
1653	IITGandhinagar	Mechanical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1008	1209	GENERAL
1654	IITGandhinagar	Mechanical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2506	2506	GENERAL
1655	IITGandhinagar	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	4409	6904	GENERAL
1656	IITGandhinagar	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	12719	14147	GENERAL
1657	IITGandhinagar	Mechanical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1509	1927	GENERAL
1658	IITGandhinagar	Mechanical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	3419	3419	GENERAL
1659	IITGandhinagar	Mechanical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	635	754	GENERAL
1660	IITGandhinagar	Mechanical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1543	1543	GENERAL
1661	IITGandhinagar	Artificial Intelligence (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	921	1140	GENERAL
1662	IITGandhinagar	Artificial Intelligence (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	2686	2821	GENERAL
1663	IITGandhinagar	Artificial Intelligence (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	102	102	PREPARATORY
1664	IITGandhinagar	Artificial Intelligence (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	337	344	GENERAL
1665	IITGandhinagar	Artificial Intelligence (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	1822	2236	GENERAL
1666	IITGandhinagar	Artificial Intelligence (4 Years Bachelor of Technology)	OPEN	Female-Only	4941	5962	GENERAL
1667	IITGandhinagar	Artificial Intelligence (4 Years Bachelor of Technology)	SC	Gender-Neutral	603	740	GENERAL
1668	IITGandhinagar	Artificial Intelligence (4 Years Bachelor of Technology)	SC	Female-Only	1263	1263	GENERAL
1669	IITGandhinagar	Artificial Intelligence (4 Years Bachelor of Technology)	ST	Gender-Neutral	285	295	GENERAL
1670	IITGandhinagar	Artificial Intelligence (4 Years Bachelor of Technology)	ST	Female-Only	716	716	GENERAL
1671	IITGandhinagar	Materials Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	4127	4914	GENERAL
1672	IITGandhinagar	Materials Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	8438	8901	GENERAL
1673	IITGandhinagar	Materials Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1803	1929	GENERAL
1674	IITGandhinagar	Materials Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	3078	3078	GENERAL
1675	IITGandhinagar	Materials Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	7239	11066	GENERAL
1676	IITGandhinagar	Materials Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	17494	19655	GENERAL
1677	IITGandhinagar	Materials Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	2476	2858	GENERAL
1678	IITGandhinagar	Materials Engineering (4 Years Bachelor of Technology)	SC	Female-Only	3856	3856	GENERAL
1679	IITGandhinagar	Materials Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	1160	1357	GENERAL
1680	IITGandhinagar	Integrated Circuit Design&Technology (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	1391	2245	GENERAL
1681	IITGandhinagar	Integrated Circuit Design&Technology (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	4946	4946	GENERAL
1682	IITGandhinagar	Integrated Circuit Design&Technology (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	547	661	GENERAL
1683	IITGandhinagar	Integrated Circuit Design&Technology (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2173	2173	GENERAL
1684	IITGandhinagar	Integrated Circuit Design&Technology (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	2295	4652	GENERAL
1685	IITGandhinagar	Integrated Circuit Design&Technology (4 Years Bachelor of Technology)	OPEN	Female-Only	6639	6999	GENERAL
1686	IITGandhinagar	Integrated Circuit Design&Technology (4 Years Bachelor of Technology)	SC	Gender-Neutral	442	1364	GENERAL
1687	IITGandhinagar	Integrated Circuit Design&Technology (4 Years Bachelor of Technology)	SC	Female-Only	2422	2422	GENERAL
1688	IITGandhinagar	Integrated Circuit Design&Technology (4 Years Bachelor of Technology)	ST	Gender-Neutral	669	742	GENERAL
1689	IITGandhinagar	Integrated Circuit Design&Technology (4 Years Bachelor of Technology)	ST	Female-Only	1489	1489	GENERAL
1690	IITPatna	Chemical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	4320	4878	GENERAL
1691	IITPatna	Chemical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	7942	9151	GENERAL
1692	IITPatna	Chemical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1814	2001	GENERAL
1693	IITPatna	Chemical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	3282	3282	GENERAL
1694	IITPatna	Chemical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	11304	13715	GENERAL
1695	IITPatna	Chemical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	20437	22069	GENERAL
1696	IITPatna	Chemical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	2662	2987	GENERAL
1697	IITPatna	Chemical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	3738	3747	GENERAL
1698	IITPatna	Chemical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	1180	1310	GENERAL
1699	IITPatna	Chemical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1759	1759	GENERAL
1700	IITPatna	Chemical Science and Technology (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	4899	5515	GENERAL
1701	IITPatna	Chemical Science and Technology (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	8942	9199	GENERAL
1702	IITPatna	Chemical Science and Technology (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	2174	2337	GENERAL
1703	IITPatna	Chemical Science and Technology (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	3564	3564	GENERAL
1704	IITPatna	Chemical Science and Technology (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	13449	15406	GENERAL
1705	IITPatna	Chemical Science and Technology (4 Years Bachelor of Technology)	OPEN	Female-Only	22540	23357	GENERAL
1706	IITPatna	Chemical Science and Technology (4 Years Bachelor of Technology)	SC	Gender-Neutral	3004	3254	GENERAL
1707	IITPatna	Chemical Science and Technology (4 Years Bachelor of Technology)	SC	Female-Only	4086	4086	GENERAL
1708	IITPatna	Chemical Science and Technology (4 Years Bachelor of Technology)	ST	Gender-Neutral	1225	1322	GENERAL
1709	IITPatna	Chemical Science and Technology (4 Years Bachelor of Technology)	ST	Female-Only	1803	1803	GENERAL
1710	IITPatna	Civil Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	4691	5243	GENERAL
1711	IITPatna	Civil Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	8805	9442	GENERAL
1712	IITPatna	Civil Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	2075	2249	GENERAL
1713	IITPatna	Civil Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	3801	3801	GENERAL
1714	IITPatna	Civil Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	12605	15400	GENERAL
1715	IITPatna	Civil Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	22067	24896	GENERAL
1716	IITPatna	Civil Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	2497	2893	GENERAL
1717	IITPatna	Civil Engineering (4 Years Bachelor of Technology)	SC	Female-Only	3775	3780	GENERAL
1718	IITPatna	Civil Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	1044	1157	GENERAL
1719	IITPatna	Civil Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1447	1447	GENERAL
1720	IITPatna	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	689	1312	GENERAL
1721	IITPatna	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	2944	3306	GENERAL
1722	IITPatna	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	47	47	GENERAL
1723	IITPatna	Computer Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	380	531	GENERAL
1724	IITPatna	Computer Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	1136	1150	GENERAL
1725	IITPatna	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	1954	3377	GENERAL
1726	IITPatna	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	7383	9042	GENERAL
1727	IITPatna	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	102	103	GENERAL
1728	IITPatna	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Female-Only	242	242	GENERAL
1729	IITPatna	Computer Science and Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	562	988	GENERAL
1730	IITPatna	Computer Science and Engineering (4 Years Bachelor of Technology)	SC	Female-Only	1688	1784	GENERAL
1731	IITPatna	Computer Science and Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	296	375	GENERAL
1732	IITPatna	Computer Science and Engineering (4 Years Bachelor of Technology)	ST	Female-Only	723	723	GENERAL
1733	IITPatna	Electronics and Communication Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	2121	2461	GENERAL
1734	IITPatna	Electronics and Communication Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	4634	4959	GENERAL
1735	IITPatna	Electronics and Communication Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	736	788	GENERAL
1736	IITPatna	Electronics and Communication Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	1872	1872	GENERAL
1737	IITPatna	Electronics and Communication Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	4803	6167	GENERAL
1738	IITPatna	Electronics and Communication Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	10634	13073	GENERAL
1739	IITPatna	Electronics and Communication Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	89	89	PREPARATORY
1740	IITPatna	Electronics and Communication Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1063	1580	GENERAL
1741	IITPatna	Electronics and Communication Engineering (4 Years Bachelor of Technology)	SC	Female-Only	2299	2299	GENERAL
1742	IITPatna	Electronics and Communication Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	646	824	GENERAL
1743	IITPatna	Electronics and Communication Engineering (4 Years Bachelor of Technology)	ST	Female-Only	967	967	GENERAL
1744	IITPatna	Engineering Physics (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	4700	5475	GENERAL
1745	IITPatna	Engineering Physics (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	8601	9005	GENERAL
1746	IITPatna	Engineering Physics (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1875	2218	GENERAL
1747	IITPatna	Engineering Physics (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	4111	4111	GENERAL
1748	IITPatna	Engineering Physics (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	11060	12986	GENERAL
1749	IITPatna	Engineering Physics (4 Years Bachelor of Technology)	OPEN	Female-Only	21075	22305	GENERAL
1750	IITPatna	Engineering Physics (4 Years Bachelor of Technology)	SC	Gender-Neutral	2881	3050	GENERAL
1751	IITPatna	Engineering Physics (4 Years Bachelor of Technology)	SC	Female-Only	3874	3874	GENERAL
1752	IITPatna	Engineering Physics (4 Years Bachelor of Technology)	ST	Gender-Neutral	1359	1446	GENERAL
1753	IITPatna	Engineering Physics (4 Years Bachelor of Technology)	ST	Female-Only	2060	2060	GENERAL
1754	IITPatna	Mathematics and Computing (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	1353	2095	GENERAL
1755	IITPatna	Mathematics and Computing (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	4233	4606	GENERAL
1756	IITPatna	Mathematics and Computing (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	657	683	GENERAL
1757	IITPatna	Mathematics and Computing (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	1630	1630	GENERAL
1758	IITPatna	Mathematics and Computing (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	3854	4851	GENERAL
1759	IITPatna	Mathematics and Computing (4 Years Bachelor of Technology)	OPEN	Female-Only	10136	11670	GENERAL
1760	IITPatna	Mathematics and Computing (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	206	206	GENERAL
1761	IITPatna	Mathematics and Computing (4 Years Bachelor of Technology)	SC	Gender-Neutral	1243	1437	GENERAL
1762	IITPatna	Mathematics and Computing (4 Years Bachelor of Technology)	SC	Female-Only	1518	1518	GENERAL
1763	IITPatna	Mathematics and Computing (4 Years Bachelor of Technology)	ST	Gender-Neutral	626	811	GENERAL
1764	IITPatna	Mathematics and Computing (4 Years Bachelor of Technology)	ST	Female-Only	1165	1165	GENERAL
1765	IITPatna	Mechanical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	3396	4286	GENERAL
1766	IITPatna	Mechanical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	6895	8475	GENERAL
1767	IITPatna	Mechanical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1646	1787	GENERAL
1768	IITPatna	Mechanical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	3053	3129	GENERAL
1769	IITPatna	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	8588	11758	GENERAL
1770	IITPatna	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	19717	21621	GENERAL
1771	IITPatna	Mechanical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	2014	2489	GENERAL
1772	IITPatna	Mechanical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	3606	3748	GENERAL
1773	IITPatna	Mechanical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	1009	1141	GENERAL
1774	IITPatna	Mechanical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1597	1597	GENERAL
1775	IITPatna	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	5177	5617	GENERAL
1776	IITPatna	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	9602	9621	GENERAL
1777	IITPatna	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	2374	2541	GENERAL
1778	IITPatna	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	4014	4014	GENERAL
1779	IITPatna	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	13771	16510	GENERAL
1780	IITPatna	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	24221	25605	GENERAL
1781	IITPatna	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	2934	3183	GENERAL
1782	IITPatna	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	SC	Female-Only	4368	4368	GENERAL
1783	IITPatna	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	1356	1361	GENERAL
1784	IITPatna	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	ST	Female-Only	2015	2015	GENERAL
1785	IITPatna	Electrical and Electronics Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	2316	2827	GENERAL
1786	IITPatna	Electrical and Electronics Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	4967	5440	GENERAL
1787	IITPatna	Electrical and Electronics Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	894	1124	GENERAL
1788	IITPatna	Electrical and Electronics Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2712	2712	GENERAL
1789	IITPatna	Electrical and Electronics Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	6177	7502	GENERAL
1790	IITPatna	Electrical and Electronics Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	14374	15804	GENERAL
1791	IITPatna	Electrical and Electronics Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	185	185	PREPARATORY
1792	IITPatna	Electrical and Electronics Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1591	1789	GENERAL
1793	IITPatna	Electrical and Electronics Engineering (4 Years Bachelor of Technology)	SC	Female-Only	2612	2612	GENERAL
1794	IITPatna	Electrical and Electronics Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	867	925	GENERAL
1795	IITPatna	Electrical and Electronics Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1330	1330	GENERAL
1796	IITPatna	Artificial Intelligence and Data Science (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	1494	1862	GENERAL
1797	IITPatna	Artificial Intelligence and Data Science (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	3742	3917	GENERAL
1798	IITPatna	Artificial Intelligence and Data Science (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	78	78	PREPARATORY
1799	IITPatna	Artificial Intelligence and Data Science (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	548	642	GENERAL
1800	IITPatna	Artificial Intelligence and Data Science (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	1275	1275	GENERAL
1801	IITPatna	Artificial Intelligence and Data Science (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	3490	4312	GENERAL
1802	IITPatna	Artificial Intelligence and Data Science (4 Years Bachelor of Technology)	OPEN	Female-Only	9306	9951	GENERAL
1803	IITPatna	Artificial Intelligence and Data Science (4 Years Bachelor of Technology)	SC	Gender-Neutral	780	1251	GENERAL
1804	IITPatna	Artificial Intelligence and Data Science (4 Years Bachelor of Technology)	SC	Female-Only	2055	2055	GENERAL
1805	IITPatna	Artificial Intelligence and Data Science (4 Years Bachelor of Technology)	ST	Gender-Neutral	435	473	GENERAL
1806	IITPatna	Artificial Intelligence and Data Science (4 Years Bachelor of Technology)	ST	Female-Only	844	844	GENERAL
1807	IITPatna	Economics (4 Years Bachelor of Science)	OBC-NCL	Gender-Neutral	4239	5535	GENERAL
1808	IITPatna	Economics (4 Years Bachelor of Science)	OBC-NCL	Female-Only	7282	7282	GENERAL
1809	IITPatna	Economics (4 Years Bachelor of Science)	GEN-EWS	Gender-Neutral	2187	2205	GENERAL
1810	IITPatna	Economics (4 Years Bachelor of Science)	GEN-EWS	Female-Only	3898	3898	GENERAL
1811	IITPatna	Economics (4 Years Bachelor of Science)	OPEN	Gender-Neutral	7598	13720	GENERAL
1812	IITPatna	Economics (4 Years Bachelor of Science)	OPEN	Female-Only	21182	22870	GENERAL
1813	IITPatna	Economics (4 Years Bachelor of Science)	SC	Gender-Neutral	2513	3002	GENERAL
1814	IITPatna	Economics (4 Years Bachelor of Science)	SC	Female-Only	3770	3770	GENERAL
1815	IITPatna	Economics (4 Years Bachelor of Science)	ST	Gender-Neutral	1506	1506	GENERAL
1816	IITPatna	B.Tech (Chemical Science and Technology)-MBA in Hospital and Health Care Management (IIM Bodh Gaya)(5 Years Bachelor of Technology and MBA (Dual Degree))	OBC-NCL	Gender-Neutral	4725	4725	GENERAL
1817	IITPatna	B.Tech (Chemical Science and Technology)-MBA in Hospital and Health Care Management (IIM Bodh Gaya)(5 Years Bachelor of Technology and MBA (Dual Degree))	GEN-EWS	Gender-Neutral	2549	2549	GENERAL
1899	IITPatna	B.Tech. (ECE)-M.Tech. in VLSI (5 Years B.Tech. +M.Tech./MS (Dual Degree))	OPEN	Female-Only	13773	13773	GENERAL
1818	IITPatna	B.Tech (Chemical Science and Technology)-MBA in Hospital and Health Care Management (IIM Bodh Gaya)(5 Years Bachelor of Technology and MBA (Dual Degree))	OPEN	Gender-Neutral	15042	16163	GENERAL
1819	IITPatna	B.Tech (Chemical Science and Technology)-MBA in Hospital and Health Care Management (IIM Bodh Gaya)(5 Years Bachelor of Technology and MBA (Dual Degree))	OPEN	Female-Only	25549	25549	GENERAL
1820	IITPatna	B.Tech (Civil Engineering)-MBA (IIM Bodh Gaya)(5 Years Bachelor of Technology and MBA (Dual Degree))	OBC-NCL	Gender-Neutral	5135	5135	GENERAL
1821	IITPatna	B.Tech (Civil Engineering)-MBA (IIM Bodh Gaya)(5 Years Bachelor of Technology and MBA (Dual Degree))	OBC-NCL	Female-Only	9888	9888	GENERAL
1822	IITPatna	B.Tech (Civil Engineering)-MBA (IIM Bodh Gaya)(5 Years Bachelor of Technology and MBA (Dual Degree))	GEN-EWS	Gender-Neutral	2481	2481	GENERAL
1823	IITPatna	B.Tech (Civil Engineering)-MBA (IIM Bodh Gaya)(5 Years Bachelor of Technology and MBA (Dual Degree))	OPEN	Gender-Neutral	13577	15570	GENERAL
1824	IITPatna	B.Tech (Civil Engineering)-MBA (IIM Bodh Gaya)(5 Years Bachelor of Technology and MBA (Dual Degree))	SC	Gender-Neutral	3038	3038	GENERAL
1825	IITPatna	B.Tech (Computer Science and Engineering)-MBA in Digital Business Management (IIM Bodh Gaya)(5 Years Bachelor of Technology and MBA (Dual Degree))	OBC-NCL	Gender-Neutral	1885	1885	GENERAL
1826	IITPatna	B.Tech (Computer Science and Engineering)-MBA in Digital Business Management (IIM Bodh Gaya)(5 Years Bachelor of Technology and MBA (Dual Degree))	OPEN	Gender-Neutral	4297	4297	GENERAL
1827	IITPatna	B.Tech (Computer Science and Engineering)-MBA in Digital Business Management (IIM Bodh Gaya)(5 Years Bachelor of Technology and MBA (Dual Degree))	OPEN	Female-Only	10748	10748	GENERAL
1828	IITPatna	B.Tech (Computer Science and Engineering)-MBA in Digital Business Management (IIM Bodh Gaya)(5 Years Bachelor of Technology and MBA (Dual Degree))	SC	Gender-Neutral	1073	1073	GENERAL
1829	IITPatna	B.Tech (Computer Science and Engineering)-MBA in Digital Business Management (IIM Bodh Gaya)(5 Years Bachelor of Technology and MBA (Dual Degree))	ST	Gender-Neutral	806	806	GENERAL
1830	IITPatna	B.Tech (Electronics and Communication Engineering)-MBA in Hospital and Healthcare Management (IIM Bodh Gaya) (5 Years Bachelor of Technology and MBA (Dual Degree))	OBC-NCL	Gender-Neutral	2877	2877	GENERAL
1831	IITPatna	B.Tech (Electronics and Communication Engineering)-MBA in Hospital and Healthcare Management (IIM Bodh Gaya) (5 Years Bachelor of Technology and MBA (Dual Degree))	GEN-EWS	Gender-Neutral	1133	1133	GENERAL
1832	IITPatna	B.Tech (Electronics and Communication Engineering)-MBA in Hospital and Healthcare Management (IIM Bodh Gaya) (5 Years Bachelor of Technology and MBA (Dual Degree))	OPEN	Gender-Neutral	7880	8739	GENERAL
1833	IITPatna	B.Tech (Electronics and Communication Engineering)-MBA in Hospital and Healthcare Management (IIM Bodh Gaya) (5 Years Bachelor of Technology and MBA (Dual Degree))	OPEN	Female-Only	19678	19678	GENERAL
1834	IITPatna	B.Tech (Engineering Physics)-MBA (IIM Bodh Gaya)(5 Years Bachelor of Technology and MBA (Dual Degree))	OBC-NCL	Gender-Neutral	5044	5044	GENERAL
1835	IITPatna	B.Tech (Engineering Physics)-MBA (IIM Bodh Gaya)(5 Years Bachelor of Technology and MBA (Dual Degree))	OBC-NCL	Female-Only	10497	10497	GENERAL
1836	IITPatna	B.Tech (Engineering Physics)-MBA (IIM Bodh Gaya)(5 Years Bachelor of Technology and MBA (Dual Degree))	GEN-EWS	Gender-Neutral	2364	2364	GENERAL
1837	IITPatna	B.Tech (Engineering Physics)-MBA (IIM Bodh Gaya)(5 Years Bachelor of Technology and MBA (Dual Degree))	OPEN	Gender-Neutral	12992	12995	GENERAL
1838	IITPatna	B.Tech (Engineering Physics)-MBA (IIM Bodh Gaya)(5 Years Bachelor of Technology and MBA (Dual Degree))	SC	Gender-Neutral	3113	3113	GENERAL
1839	IITPatna	B.Tech (Mathematics and Computing)- MBA in Digital Business Management (IIM Bodh Gaya)(5 Years Bachelor of Technology and MBA (Dual Degree))	OBC-NCL	Gender-Neutral	2757	2757	GENERAL
1840	IITPatna	B.Tech (Mathematics and Computing)- MBA in Digital Business Management (IIM Bodh Gaya)(5 Years Bachelor of Technology and MBA (Dual Degree))	OBC-NCL	Female-Only	5361	5361	GENERAL
1841	IITPatna	B.Tech (Mathematics and Computing)- MBA in Digital Business Management (IIM Bodh Gaya)(5 Years Bachelor of Technology and MBA (Dual Degree))	OPEN	Gender-Neutral	5020	5192	GENERAL
1842	IITPatna	B.Tech (Mathematics and Computing)- MBA in Digital Business Management (IIM Bodh Gaya)(5 Years Bachelor of Technology and MBA (Dual Degree))	SC	Gender-Neutral	1742	1742	GENERAL
1843	IITPatna	B.Tech (Metallurgical and Materials Engineering)-MBA (IIM Bodh Gaya)(5 Years Bachelor of Technology and MBA (Dual Degree))	OBC-NCL	Gender-Neutral	5758	5758	GENERAL
1844	IITPatna	B.Tech (Metallurgical and Materials Engineering)-MBA (IIM Bodh Gaya)(5 Years Bachelor of Technology and MBA (Dual Degree))	OPEN	Gender-Neutral	15577	16042	GENERAL
1845	IITPatna	B.Tech (Metallurgical and Materials Engineering)-MBA (IIM Bodh Gaya)(5 Years Bachelor of Technology and MBA (Dual Degree))	OPEN	Female-Only	26073	26073	GENERAL
1846	IITPatna	B.Tech (Metallurgical and Materials Engineering)-MBA (IIM Bodh Gaya)(5 Years Bachelor of Technology and MBA (Dual Degree))	SC	Gender-Neutral	2531	2531	GENERAL
1847	IITPatna	B.Tech (Metallurgical and Materials Engineering)-MBA (IIM Bodh Gaya)(5 Years Bachelor of Technology and MBA (Dual Degree))	ST	Gender-Neutral	1405	1405	GENERAL
1848	IITPatna	B.Tech (Electrical and Electronics Engineering)-MBA (IIM Bodh Gaya)(5 Years Bachelor of Technology and MBA (Dual Degree))	OBC-NCL	Gender-Neutral	3257	3257	GENERAL
1849	IITPatna	B.Tech (Electrical and Electronics Engineering)-MBA (IIM Bodh Gaya)(5 Years Bachelor of Technology and MBA (Dual Degree))	GEN-EWS	Gender-Neutral	1362	1362	GENERAL
1850	IITPatna	B.Tech (Electrical and Electronics Engineering)-MBA (IIM Bodh Gaya)(5 Years Bachelor of Technology and MBA (Dual Degree))	OPEN	Gender-Neutral	6111	8351	GENERAL
1851	IITPatna	B.Tech (Electrical and Electronics Engineering)-MBA (IIM Bodh Gaya)(5 Years Bachelor of Technology and MBA (Dual Degree))	OPEN	Female-Only	16806	16806	GENERAL
1852	IITPatna	B.Tech (Electrical and Electronics Engineering)-MBA (IIM Bodh Gaya)(5 Years Bachelor of Technology and MBA (Dual Degree))	SC	Gender-Neutral	1890	1890	GENERAL
1853	IITPatna	B.Tech (Artificial Intelligence and Data Science)-MBA in Digital Business Management (IIM Bodh Gaya)(5 Years Bachelor of Technology and MBA (Dual Degree))	OBC-NCL	Gender-Neutral	2201	2201	GENERAL
1854	IITPatna	B.Tech (Artificial Intelligence and Data Science)-MBA in Digital Business Management (IIM Bodh Gaya)(5 Years Bachelor of Technology and MBA (Dual Degree))	OBC-NCL	Female-Only	5873	5873	GENERAL
1855	IITPatna	B.Tech (Artificial Intelligence and Data Science)-MBA in Digital Business Management (IIM Bodh Gaya)(5 Years Bachelor of Technology and MBA (Dual Degree))	OPEN	Gender-Neutral	4406	4679	GENERAL
1856	IITPatna	B.Tech (Artificial Intelligence and Data Science)-MBA in Digital Business Management (IIM Bodh Gaya)(5 Years Bachelor of Technology and MBA (Dual Degree))	SC	Gender-Neutral	1079	1079	GENERAL
1857	IITPatna	B.Tech (Chemical Engineering)-MBA in Hospital and Health Care Management (IIM Bodh Gaya)(5 Years Bachelor of Technology and MBA (Dual Degree))	OBC-NCL	Gender-Neutral	4636	4636	GENERAL
1858	IITPatna	B.Tech (Chemical Engineering)-MBA in Hospital and Health Care Management (IIM Bodh Gaya)(5 Years Bachelor of Technology and MBA (Dual Degree))	OBC-NCL	Female-Only	10346	10346	GENERAL
1859	IITPatna	B.Tech (Chemical Engineering)-MBA in Hospital and Health Care Management (IIM Bodh Gaya)(5 Years Bachelor of Technology and MBA (Dual Degree))	OPEN	Gender-Neutral	14749	15010	GENERAL
1860	IITPatna	B.Tech (Chemical Engineering)-MBA in Hospital and Health Care Management (IIM Bodh Gaya)(5 Years Bachelor of Technology and MBA (Dual Degree))	SC	Gender-Neutral	3178	3178	GENERAL
1861	IITPatna	B.Tech (Mechanical Engineering)-MBA (IIM Mumbai)(5 Years Bachelor of Technology and MBA (Dual Degree))	OBC-NCL	Gender-Neutral	3720	4001	GENERAL
1862	IITPatna	B.Tech (Mechanical Engineering)-MBA (IIM Mumbai)(5 Years Bachelor of Technology and MBA (Dual Degree))	OBC-NCL	Female-Only	8449	8449	GENERAL
1863	IITPatna	B.Tech (Mechanical Engineering)-MBA (IIM Mumbai)(5 Years Bachelor of Technology and MBA (Dual Degree))	GEN-EWS	Gender-Neutral	1714	1889	GENERAL
1864	IITPatna	B.Tech (Mechanical Engineering)-MBA (IIM Mumbai)(5 Years Bachelor of Technology and MBA (Dual Degree))	OPEN	Gender-Neutral	9062	9708	GENERAL
1865	IITPatna	B.Tech (Mechanical Engineering)-MBA (IIM Mumbai)(5 Years Bachelor of Technology and MBA (Dual Degree))	OPEN	Female-Only	16780	17194	GENERAL
1866	IITPatna	B.Tech (Mechanical Engineering)-MBA (IIM Mumbai)(5 Years Bachelor of Technology and MBA (Dual Degree))	SC	Gender-Neutral	2317	2428	GENERAL
1867	IITPatna	B.Tech (Mechanical Engineering)-MBA (IIM Mumbai)(5 Years Bachelor of Technology and MBA (Dual Degree))	ST	Gender-Neutral	1184	1184	GENERAL
1868	IITPatna	B.Tech. in Electronics and Communication Engineering and M.Tech. in Communication Systems (5 Years Bachelor and Master of Technology (Dual Degree))	OBC-NCL	Gender-Neutral	2459	2712	GENERAL
1869	IITPatna	B.Tech. in Electronics and Communication Engineering and M.Tech. in Communication Systems (5 Years Bachelor and Master of Technology (Dual Degree))	GEN-EWS	Gender-Neutral	1050	1050	GENERAL
1870	IITPatna	B.Tech. in Electronics and Communication Engineering and M.Tech. in Communication Systems (5 Years Bachelor and Master of Technology (Dual Degree))	OPEN	Gender-Neutral	6305	7786	GENERAL
1871	IITPatna	B.Tech. in Electronics and Communication Engineering and M.Tech. in Communication Systems (5 Years Bachelor and Master of Technology (Dual Degree))	OPEN	Female-Only	14622	14622	GENERAL
1872	IITPatna	B.Tech. in Electronics and Communication Engineering and M.Tech. in Communication Systems (5 Years Bachelor and Master of Technology (Dual Degree))	SC	Gender-Neutral	1743	1743	GENERAL
1873	IITPatna	B.Tech. in Electronics and Communication Engineering and M.Tech. in Communication Systems (5 Years Bachelor and Master of Technology (Dual Degree))	SC	Female-Only	2652	2652	GENERAL
1874	IITPatna	B.Tech. in Electronics and Communication Engineering and M.Tech. in Communication Systems (5 Years Bachelor and Master of Technology (Dual Degree))	ST	Gender-Neutral	699	699	GENERAL
1875	IITPatna	B.Tech in CE.-M.Tech. in Geotechnical Engineering (5 Years B.Tech. + M.Tech./MS (Dual Degree))	OBC-NCL	Gender-Neutral	5684	5850	GENERAL
1876	IITPatna	B.Tech in CE.-M.Tech. in Geotechnical Engineering (5 Years B.Tech. + M.Tech./MS (Dual Degree))	OBC-NCL	Female-Only	9844	9844	GENERAL
1877	IITPatna	B.Tech in CE.-M.Tech. in Geotechnical Engineering (5 Years B.Tech. + M.Tech./MS (Dual Degree))	GEN-EWS	Gender-Neutral	2355	2355	GENERAL
1878	IITPatna	B.Tech in CE.-M.Tech. in Geotechnical Engineering (5 Years B.Tech. + M.Tech./MS (Dual Degree))	OPEN	Gender-Neutral	16406	16815	GENERAL
1879	IITPatna	B.Tech in CE.-M.Tech. in Geotechnical Engineering (5 Years B.Tech. + M.Tech./MS (Dual Degree))	OPEN	Female-Only	22945	22945	GENERAL
1880	IITPatna	B.Tech in CE.-M.Tech. in Geotechnical Engineering (5 Years B.Tech. + M.Tech./MS (Dual Degree))	SC	Gender-Neutral	2829	2829	GENERAL
1881	IITPatna	B.Tech in CE.-M.Tech. in Geotechnical Engineering (5 Years B.Tech. + M.Tech./MS (Dual Degree))	ST	Gender-Neutral	1332	1332	GENERAL
1882	IITPatna	B.Tech in CE.-M.Tech. in Structural Engineering (5 Years B.Tech. + M.Tech./MS (Dual Degree))	OBC-NCL	Gender-Neutral	5138	5413	GENERAL
1883	IITPatna	B.Tech in CE.-M.Tech. in Structural Engineering (5 Years B.Tech. + M.Tech./MS (Dual Degree))	OBC-NCL	Female-Only	9278	9278	GENERAL
1884	IITPatna	B.Tech in CE.-M.Tech. in Structural Engineering (5 Years B.Tech. + M.Tech./MS (Dual Degree))	GEN-EWS	Gender-Neutral	2204	2204	GENERAL
1885	IITPatna	B.Tech in CE.-M.Tech. in Structural Engineering (5 Years B.Tech. + M.Tech./MS (Dual Degree))	OPEN	Gender-Neutral	14157	15381	GENERAL
1886	IITPatna	B.Tech in CE.-M.Tech. in Structural Engineering (5 Years B.Tech. + M.Tech./MS (Dual Degree))	OPEN	Female-Only	22524	22524	GENERAL
1887	IITPatna	B.Tech in CE.-M.Tech. in Structural Engineering (5 Years B.Tech. + M.Tech./MS (Dual Degree))	SC	Gender-Neutral	2864	3026	GENERAL
1888	IITPatna	B.Tech. (CSE) and M.Tech in CSE (5 Years B.Tech. +M.Tech./MS (Dual Degree))	OBC-NCL	Gender-Neutral	1606	1657	GENERAL
1889	IITPatna	B.Tech. (CSE) and M.Tech in CSE (5 Years B.Tech. +M.Tech./MS (Dual Degree))	GEN-EWS	Gender-Neutral	599	599	GENERAL
1890	IITPatna	B.Tech. (CSE) and M.Tech in CSE (5 Years B.Tech. +M.Tech./MS (Dual Degree))	OPEN	Gender-Neutral	3514	4323	GENERAL
1891	IITPatna	B.Tech. (CSE) and M.Tech in CSE (5 Years B.Tech. +M.Tech./MS (Dual Degree))	OPEN	Female-Only	10148	10148	GENERAL
1892	IITPatna	B.Tech. (CSE) and M.Tech in CSE (5 Years B.Tech. +M.Tech./MS (Dual Degree))	SC	Gender-Neutral	1067	1067	GENERAL
1893	IITPatna	B.Tech. (CSE) and M.Tech in CSE (5 Years B.Tech. +M.Tech./MS (Dual Degree))	SC	Female-Only	2036	2036	GENERAL
1894	IITPatna	B.Tech. (CSE) and M.Tech in CSE (5 Years B.Tech. +M.Tech./MS (Dual Degree))	ST	Gender-Neutral	841	841	GENERAL
1895	IITPatna	B.Tech. (ECE)-M.Tech. in VLSI (5 Years B.Tech. +M.Tech./MS (Dual Degree))	OBC-NCL	Gender-Neutral	2469	2673	GENERAL
1896	IITPatna	B.Tech. (ECE)-M.Tech. in VLSI (5 Years B.Tech. +M.Tech./MS (Dual Degree))	OBC-NCL	Female-Only	6345	6345	GENERAL
1897	IITPatna	B.Tech. (ECE)-M.Tech. in VLSI (5 Years B.Tech. +M.Tech./MS (Dual Degree))	GEN-EWS	Gender-Neutral	1110	1110	GENERAL
1898	IITPatna	B.Tech. (ECE)-M.Tech. in VLSI (5 Years B.Tech. +M.Tech./MS (Dual Degree))	OPEN	Gender-Neutral	6383	7742	GENERAL
1900	IITPatna	B.Tech. (ECE)-M.Tech. in VLSI (5 Years B.Tech. +M.Tech./MS (Dual Degree))	SC	Gender-Neutral	1721	1721	GENERAL
1901	IITPatna	B.Tech. (ECE)-M.Tech. in VLSI (5 Years B.Tech. +M.Tech./MS (Dual Degree))	ST	Gender-Neutral	916	916	GENERAL
1902	IITPatna	B.Tech. (EEE)-M.Tech. in (Power&. Control)(5 Years B.Tech. +M.Tech./MS (Dual Degree))	OBC-NCL	Gender-Neutral	3208	3319	GENERAL
1903	IITPatna	B.Tech. (EEE)-M.Tech. in (Power&. Control)(5 Years B.Tech. +M.Tech./MS (Dual Degree))	OBC-NCL	Female-Only	7992	7992	GENERAL
1904	IITPatna	B.Tech. (EEE)-M.Tech. in (Power&. Control)(5 Years B.Tech. +M.Tech./MS (Dual Degree))	GEN-EWS	Gender-Neutral	1222	1222	GENERAL
1905	IITPatna	B.Tech. (EEE)-M.Tech. in (Power&. Control)(5 Years B.Tech. +M.Tech./MS (Dual Degree))	OPEN	Gender-Neutral	7854	8283	GENERAL
1906	IITPatna	B.Tech. (EEE)-M.Tech. in (Power&. Control)(5 Years B.Tech. +M.Tech./MS (Dual Degree))	OPEN	Female-Only	17829	17829	GENERAL
1907	IITPatna	B.Tech. (EEE)-M.Tech. in (Power&. Control)(5 Years B.Tech. +M.Tech./MS (Dual Degree))	SC	Gender-Neutral	1802	1824	GENERAL
1908	IITPatna	B.Tech. (Mathematics&Computing)M. Tech. in (Mathematics&Computing)(5 Years B.Tech. +M.Tech./MS (Dual Degree))	OBC-NCL	Gender-Neutral	2212	2538	GENERAL
1909	IITPatna	B.Tech. (Mathematics&Computing)M. Tech. in (Mathematics&Computing)(5 Years B.Tech. +M.Tech./MS (Dual Degree))	OBC-NCL	Female-Only	6029	6029	GENERAL
1910	IITPatna	B.Tech. (Mathematics&Computing)M. Tech. in (Mathematics&Computing)(5 Years B.Tech. +M.Tech./MS (Dual Degree))	GEN-EWS	Gender-Neutral	720	720	GENERAL
1911	IITPatna	B.Tech. (Mathematics&Computing)M. Tech. in (Mathematics&Computing)(5 Years B.Tech. +M.Tech./MS (Dual Degree))	OPEN	Gender-Neutral	5073	5266	GENERAL
1912	IITPatna	B.Tech. (Mathematics&Computing)M. Tech. in (Mathematics&Computing)(5 Years B.Tech. +M.Tech./MS (Dual Degree))	OPEN	Female-Only	12215	12215	GENERAL
1913	IITPatna	B.Tech. (Mathematics&Computing)M. Tech. in (Mathematics&Computing)(5 Years B.Tech. +M.Tech./MS (Dual Degree))	SC	Gender-Neutral	971	971	GENERAL
1914	IITPatna	B.Tech. (Mathematics&Computing)M. Tech. in (Mathematics&Computing)(5 Years B.Tech. +M.Tech./MS (Dual Degree))	ST	Gender-Neutral	847	847	GENERAL
1915	IITPatna	B.Tech. (ME)-M.Tech. in Mechatronics (5 Years B.Tech. +M.Tech./MS (Dual Degree))	OBC-NCL	Gender-Neutral	4212	4301	GENERAL
1916	IITPatna	B.Tech. (ME)-M.Tech. in Mechatronics (5 Years B.Tech. +M.Tech./MS (Dual Degree))	OBC-NCL	Female-Only	8205	8205	GENERAL
1917	IITPatna	B.Tech. (ME)-M.Tech. in Mechatronics (5 Years B.Tech. +M.Tech./MS (Dual Degree))	GEN-EWS	Gender-Neutral	1498	1498	GENERAL
1918	IITPatna	B.Tech. (ME)-M.Tech. in Mechatronics (5 Years B.Tech. +M.Tech./MS (Dual Degree))	OPEN	Gender-Neutral	7903	10153	GENERAL
1919	IITPatna	B.Tech. (ME)-M.Tech. in Mechatronics (5 Years B.Tech. +M.Tech./MS (Dual Degree))	OPEN	Female-Only	19865	19865	GENERAL
1920	IITPatna	B.Tech. (ME)-M.Tech. in Mechatronics (5 Years B.Tech. +M.Tech./MS (Dual Degree))	SC	Gender-Neutral	2263	2263	GENERAL
1921	IITPatna	B.Tech. (ME)-M.Tech. in Mechatronics (5 Years B.Tech. +M.Tech./MS (Dual Degree))	ST	Gender-Neutral	1326	1326	GENERAL
1922	IITPatna	BS in Economics with MBA (IIM Bodh Gaya)(5 Years Bachelor of Science and MBA (Dual Degree))	OBC-NCL	Gender-Neutral	4287	4287	GENERAL
1923	IITPatna	BS in Economics with MBA (IIM Bodh Gaya)(5 Years Bachelor of Science and MBA (Dual Degree))	GEN-EWS	Female-Only	3013	3013	GENERAL
1924	IITPatna	BS in Economics with MBA (IIM Bodh Gaya)(5 Years Bachelor of Science and MBA (Dual Degree))	OPEN	Gender-Neutral	10729	13325	GENERAL
1925	IITPatna	BS in Economics with MBA (IIM Bodh Gaya)(5 Years Bachelor of Science and MBA (Dual Degree))	SC	Gender-Neutral	2583	2583	GENERAL
1926	IITPatna	BS in Economics with MBA (IIM Bodh Gaya)(5 Years Bachelor of Science and MBA (Dual Degree))	ST	Gender-Neutral	1546	1546	GENERAL
1927	IITRoorkee	Chemical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	1847	2253	GENERAL
1928	IITRoorkee	Chemical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	4055	5240	GENERAL
1929	IITRoorkee	Chemical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	626	863	GENERAL
1930	IITRoorkee	Chemical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	1544	1600	GENERAL
1931	IITRoorkee	Chemical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	3428	4816	GENERAL
1932	IITRoorkee	Chemical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	7632	10475	GENERAL
1933	IITRoorkee	Chemical Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	94	162	GENERAL
1934	IITRoorkee	Chemical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	829	1348	GENERAL
1935	IITRoorkee	Chemical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	2357	2465	GENERAL
1936	IITRoorkee	Chemical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	587	779	GENERAL
1937	IITRoorkee	Chemical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1185	1287	GENERAL
1938	IITRoorkee	Civil Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	2300	2967	GENERAL
1939	IITRoorkee	Civil Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	3485	6229	GENERAL
1940	IITRoorkee	Civil Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	913	1229	GENERAL
1941	IITRoorkee	Civil Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2154	2437	GENERAL
1942	IITRoorkee	Civil Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	5247	6870	GENERAL
1943	IITRoorkee	Civil Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	11654	14131	GENERAL
1944	IITRoorkee	Civil Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	262	262	PREPARATORY
1945	IITRoorkee	Civil Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1010	1694	GENERAL
1946	IITRoorkee	Civil Engineering (4 Years Bachelor of Technology)	SC	Female-Only	2643	2862	GENERAL
1947	IITRoorkee	Civil Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	284	475	GENERAL
1948	IITRoorkee	Civil Engineering (4 Years Bachelor of Technology)	ST	Female-Only	537	647	GENERAL
1949	IITRoorkee	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	157	253	GENERAL
1950	IITRoorkee	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	845	1038	GENERAL
1951	IITRoorkee	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	18	18	GENERAL
1952	IITRoorkee	Computer Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	63	98	GENERAL
1953	IITRoorkee	Computer Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	287	306	GENERAL
1954	IITRoorkee	Computer Science and Engineering (4 Years Bachelor of Technology)	GEN- EWS(PwD)	Gender-Neutral	10	10	GENERAL
1955	IITRoorkee	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	275	592	GENERAL
1956	IITRoorkee	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	1331	2047	GENERAL
1957	IITRoorkee	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	25	25	GENERAL
1958	IITRoorkee	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Female-Only	85	85	GENERAL
1959	IITRoorkee	Computer Science and Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	81	129	GENERAL
1960	IITRoorkee	Computer Science and Engineering (4 Years Bachelor of Technology)	SC	Female-Only	434	527	GENERAL
1961	IITRoorkee	Computer Science and Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	52	77	GENERAL
1962	IITRoorkee	Computer Science and Engineering (4 Years Bachelor of Technology)	ST	Female-Only	241	258	GENERAL
1963	IITRoorkee	Computer Science and Engineering (4 Years Bachelor of Technology)	ST(PwD)	Gender-Neutral	1	1	PREPARATORY
1964	IITRoorkee	Electrical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	740	979	GENERAL
1965	IITRoorkee	Electrical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	2496	2912	GENERAL
1966	IITRoorkee	Electrical Engineering (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	85	6	GENERAL
1967	IITRoorkee	Electrical Engineering (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Female-Only	112	112	PREPARATORY
1968	IITRoorkee	Electrical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	258	351	GENERAL
1969	IITRoorkee	Electrical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	742	831	GENERAL
1970	IITRoorkee	Electrical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	1254	2091	GENERAL
1971	IITRoorkee	Electrical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	4916	5892	GENERAL
1972	IITRoorkee	Electrical Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	120	169	GENERAL
1973	IITRoorkee	Electrical Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Female-Only	217	217	PREPARATORY
1974	IITRoorkee	Electrical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	431	598	GENERAL
1975	IITRoorkee	Electrical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	1320	1468	GENERAL
1976	IITRoorkee	Electrical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	262	332	GENERAL
1977	IITRoorkee	Electrical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	534	607	GENERAL
1978	IITRoorkee	Electronics and Communication Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	366	721	GENERAL
1979	IITRoorkee	Electronics and Communication Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	1808	2161	GENERAL
1980	IITRoorkee	Electronics and Communication Engineering (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	33	33	GENERAL
1981	IITRoorkee	Electronics and Communication Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	150	254	GENERAL
1982	IITRoorkee	Electronics and Communication Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	660	678	GENERAL
1983	IITRoorkee	Electronics and Communication Engineering (4 Years Bachelor of Technology)	GEN- EWS(PwD)	Gender-Neutral	24	24	GENERAL
1984	IITRoorkee	Electronics and Communication Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	1048	1486	GENERAL
1985	IITRoorkee	Electronics and Communication Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	3077	4788	GENERAL
1986	IITRoorkee	Electronics and Communication Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	86	86	GENERAL
1987	IITRoorkee	Electronics and Communication Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	167	398	GENERAL
1988	IITRoorkee	Electronics and Communication Engineering (4 Years Bachelor of Technology)	SC	Female-Only	1005	1053	GENERAL
1989	IITRoorkee	Electronics and Communication Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	169	243	GENERAL
1990	IITRoorkee	Electronics and Communication Engineering (4 Years Bachelor of Technology)	ST	Female-Only	428	465	GENERAL
1991	IITRoorkee	Engineering Physics (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	1872	2365	GENERAL
1992	IITRoorkee	Engineering Physics (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	5296	6251	GENERAL
1993	IITRoorkee	Engineering Physics (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	878	1101	GENERAL
1994	IITRoorkee	Engineering Physics (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2507	2507	GENERAL
1995	IITRoorkee	Engineering Physics (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	2633	4544	GENERAL
1996	IITRoorkee	Engineering Physics (4 Years Bachelor of Technology)	OPEN	Female-Only	8120	11032	GENERAL
1997	IITRoorkee	Engineering Physics (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	229	229	PREPARATORY
1998	IITRoorkee	Engineering Physics (4 Years Bachelor of Technology)	SC	Gender-Neutral	1170	1636	GENERAL
1999	IITRoorkee	Engineering Physics (4 Years Bachelor of Technology)	SC	Female-Only	2716	3016	GENERAL
2000	IITRoorkee	Engineering Physics (4 Years Bachelor of Technology)	ST	Gender-Neutral	855	922	GENERAL
2001	IITRoorkee	Mechanical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	1180	1840	GENERAL
2002	IITRoorkee	Mechanical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	4178	5321	GENERAL
2003	IITRoorkee	Mechanical Engineering (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	117	117	PREPARATORY
2004	IITRoorkee	Mechanical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	453	688	GENERAL
2005	IITRoorkee	Mechanical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	1660	1770	GENERAL
2006	IITRoorkee	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	2155	3897	GENERAL
2007	IITRoorkee	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	6626	10445	GENERAL
2008	IITRoorkee	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	45	83	PREPARATORY
2009	IITRoorkee	Mechanical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	620	1051	GENERAL
2010	IITRoorkee	Mechanical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	1592	2270	GENERAL
2011	IITRoorkee	Mechanical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	356	568	GENERAL
2012	IITRoorkee	Mechanical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	800	1147	GENERAL
2013	IITRoorkee	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	3088	3447	GENERAL
2014	IITRoorkee	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	5692	7087	GENERAL
2015	IITRoorkee	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1258	1356	GENERAL
2016	IITRoorkee	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2544	2722	GENERAL
2017	IITRoorkee	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	6280	7341	GENERAL
2018	IITRoorkee	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	15493	16021	GENERAL
2019	IITRoorkee	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1732	2119	GENERAL
2020	IITRoorkee	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	SC	Female-Only	2938	3044	GENERAL
2021	IITRoorkee	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	914	1052	GENERAL
2022	IITRoorkee	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1362	1362	GENERAL
2023	IITRoorkee	Production and Industrial Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	2416	2826	GENERAL
2024	IITRoorkee	Production and Industrial Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	5548	6339	GENERAL
2025	IITRoorkee	Production and Industrial Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1021	1119	GENERAL
2026	IITRoorkee	Production and Industrial Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2079	2079	GENERAL
2027	IITRoorkee	Production and Industrial Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	4510	5820	GENERAL
2028	IITRoorkee	Production and Industrial Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	9886	11014	GENERAL
2029	IITRoorkee	Production and Industrial Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	313	313	PREPARATORY
2030	IITRoorkee	Production and Industrial Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1315	1717	GENERAL
2031	IITRoorkee	Production and Industrial Engineering (4 Years Bachelor of Technology)	SC	Female-Only	3175	3270	GENERAL
2032	IITRoorkee	Production and Industrial Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	757	936	GENERAL
2033	IITRoorkee	Production and Industrial Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1497	1497	GENERAL
2034	IITRoorkee	Data Science and Artificial Intelligence (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	268	387	GENERAL
2035	IITRoorkee	Data Science and Artificial Intelligence (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	1319	1696	GENERAL
2036	IITRoorkee	Data Science and Artificial Intelligence (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	25	25	GENERAL
2037	IITRoorkee	Data Science and Artificial Intelligence (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	97	119	GENERAL
2038	IITRoorkee	Data Science and Artificial Intelligence (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	360	360	GENERAL
2039	IITRoorkee	Data Science and Artificial Intelligence (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	564	845	GENERAL
2040	IITRoorkee	Data Science and Artificial Intelligence (4 Years Bachelor of Technology)	OPEN	Female-Only	2267	2591	GENERAL
2041	IITRoorkee	Data Science and Artificial Intelligence (4 Years Bachelor of Technology)	SC	Gender-Neutral	141	234	GENERAL
2042	IITRoorkee	Data Science and Artificial Intelligence (4 Years Bachelor of Technology)	SC	Female-Only	749	749	GENERAL
2043	IITRoorkee	Data Science and Artificial Intelligence (4 Years Bachelor of Technology)	ST	Gender-Neutral	101	108	GENERAL
2044	IITRoorkee	Data Science and Artificial Intelligence (4 Years Bachelor of Technology)	ST	Female-Only	396	396	GENERAL
2045	IITRoorkee	Biosciences and Bioengineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	3449	3569	GENERAL
2046	IITRoorkee	Biosciences and Bioengineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	6261	7210	GENERAL
2047	IITRoorkee	Biosciences and Bioengineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1378	1417	GENERAL
2048	IITRoorkee	Biosciences and Bioengineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2738	2738	GENERAL
2049	IITRoorkee	Biosciences and Bioengineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	752	8159	GENERAL
2050	IITRoorkee	Biosciences and Bioengineering (4 Years Bachelor of Technology)	OPEN	Female-Only	12357	15307	GENERAL
2051	IITRoorkee	Biosciences and Bioengineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1996	2210	GENERAL
2052	IITRoorkee	Biosciences and Bioengineering (4 Years Bachelor of Technology)	SC	Female-Only	3344	3344	GENERAL
2053	IITRoorkee	Biosciences and Bioengineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	1013	1349	GENERAL
2054	IITRoorkee	Biosciences and Bioengineering (4 Years Bachelor of Technology)	ST	Female-Only	1809	1809	GENERAL
2055	IITRoorkee	Energy Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	1768	2446	GENERAL
2056	IITRoorkee	Energy Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	5506	5506	GENERAL
2057	IITRoorkee	Energy Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	952	962	GENERAL
2058	IITRoorkee	Energy Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2073	2073	GENERAL
2059	IITRoorkee	Energy Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	3321	4761	GENERAL
2060	IITRoorkee	Energy Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	8350	8350	GENERAL
2061	IITRoorkee	Energy Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1382	1470	GENERAL
2062	IITRoorkee	Energy Engineering (4 Years Bachelor of Technology)	SC	Female-Only	3082	3082	GENERAL
2063	IITRoorkee	Energy Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	822	822	GENERAL
2064	IITRoorkee	Architecture (5 Years Bachelor of Architecture)	OBC-NCL	Gender-Neutral	5425	6497	GENERAL
2065	IITRoorkee	Architecture (5 Years Bachelor of Architecture)	OBC-NCL	Female-Only	10955	12609	GENERAL
2066	IITRoorkee	Architecture (5 Years Bachelor of Architecture)	GEN-EWS	Gender-Neutral	2651	2794	GENERAL
2067	IITRoorkee	Architecture (5 Years Bachelor of Architecture)	GEN-EWS	Female-Only	4066	4066	GENERAL
2068	IITRoorkee	Architecture (5 Years Bachelor of Architecture)	OPEN	Gender-Neutral	12842	17665	GENERAL
2069	IITRoorkee	Architecture (5 Years Bachelor of Architecture)	OPEN	Female-Only	4770	9462	GENERAL
2070	IITRoorkee	Architecture (5 Years Bachelor of Architecture)	SC	Gender-Neutral	1852	3181	GENERAL
2071	IITRoorkee	Architecture (5 Years Bachelor of Architecture)	SC	Female-Only	3482	3482	GENERAL
2072	IITRoorkee	Architecture (5 Years Bachelor of Architecture)	ST	Gender-Neutral	1313	1363	GENERAL
2073	IITRoorkee	Geological Technology (5 Years Integrated Master of Technology)	OBC-NCL	Gender-Neutral	4089	4297	GENERAL
2074	IITRoorkee	Geological Technology (5 Years Integrated Master of Technology)	OBC-NCL	Female-Only	8207	8510	GENERAL
2075	IITRoorkee	Geological Technology (5 Years Integrated Master of Technology)	GEN-EWS	Gender-Neutral	1405	1538	GENERAL
2076	IITRoorkee	Geological Technology (5 Years Integrated Master of Technology)	GEN-EWS	Female-Only	3537	3537	GENERAL
2077	IITRoorkee	Geological Technology (5 Years Integrated Master of Technology)	OPEN	Gender-Neutral	8661	10016	GENERAL
2078	IITRoorkee	Geological Technology (5 Years Integrated Master of Technology)	OPEN	Female-Only	17925	18509	GENERAL
2079	IITRoorkee	Geological Technology (5 Years Integrated Master of Technology)	SC	Gender-Neutral	2372	2586	GENERAL
2080	IITRoorkee	Geological Technology (5 Years Integrated Master of Technology)	SC	Female-Only	3154	3154	GENERAL
2081	IITRoorkee	Geological Technology (5 Years Integrated Master of Technology)	ST	Gender-Neutral	1231	1381	GENERAL
2082	IITRoorkee	Geological Technology (5 Years Integrated Master of Technology)	ST	Female-Only	1988	1988	GENERAL
2083	IITRoorkee	Geophysical Technology (5 Years Integrated Master of Technology)	OBC-NCL	Gender-Neutral	3482	4074	GENERAL
2084	IITRoorkee	Geophysical Technology (5 Years Integrated Master of Technology)	OBC-NCL	Female-Only	7127	7221	GENERAL
2085	IITRoorkee	Geophysical Technology (5 Years Integrated Master of Technology)	GEN-EWS	Gender-Neutral	1300	1527	GENERAL
2086	IITRoorkee	Geophysical Technology (5 Years Integrated Master of Technology)	GEN-EWS	Female-Only	3388	3388	GENERAL
2087	IITRoorkee	Geophysical Technology (5 Years Integrated Master of Technology)	OPEN	Gender-Neutral	6428	8870	GENERAL
2088	IITRoorkee	Geophysical Technology (5 Years Integrated Master of Technology)	OPEN	Female-Only	15223	20831	GENERAL
2089	IITRoorkee	Geophysical Technology (5 Years Integrated Master of Technology)	SC	Gender-Neutral	2191	2626	GENERAL
2090	IITRoorkee	Geophysical Technology (5 Years Integrated Master of Technology)	SC	Female-Only	2959	2959	GENERAL
2091	IITRoorkee	Geophysical Technology (5 Years Integrated Master of Technology)	ST	Gender-Neutral	1367	1439	GENERAL
2092	IITRoorkee	Geophysical Technology (5 Years Integrated Master of Technology)	ST	Female-Only	1971	1971	GENERAL
2093	IITRoorkee	Physics (5 Years Bachelor of Science and Master of Science (Dual Degree))	OBC-NCL	Gender-Neutral	4195	4586	GENERAL
2094	IITRoorkee	Physics (5 Years Bachelor of Science and Master of Science (Dual Degree))	OBC-NCL	Female-Only	6839	8829	GENERAL
2095	IITRoorkee	Physics (5 Years Bachelor of Science and Master of Science (Dual Degree))	GEN-EWS	Gender-Neutral	1455	1556	GENERAL
2096	IITRoorkee	Physics (5 Years Bachelor of Science and Master of Science (Dual Degree))	GEN-EWS	Female-Only	3712	3712	GENERAL
2097	IITRoorkee	Physics (5 Years Bachelor of Science and Master of Science (Dual Degree))	OPEN	Gender-Neutral	4489	10171	GENERAL
2098	IITRoorkee	Physics (5 Years Bachelor of Science and Master of Science (Dual Degree))	OPEN	Female-Only	18169	19251	GENERAL
2099	IITRoorkee	Physics (5 Years Bachelor of Science and Master of Science (Dual Degree))	SC	Gender-Neutral	1904	2773	GENERAL
2100	IITRoorkee	Physics (5 Years Bachelor of Science and Master of Science (Dual Degree))	SC	Female-Only	3582	3582	GENERAL
2101	IITRoorkee	Physics (5 Years Bachelor of Science and Master of Science (Dual Degree))	ST	Gender-Neutral	1492	1492	GENERAL
2102	IITRoorkee	Mathematics&Computing (5 Years Bachelor of Science and Master of Science (Dual Degree))	OBC-NCL	Gender-Neutral	683	846	GENERAL
2103	IITRoorkee	Mathematics&Computing (5 Years Bachelor of Science and Master of Science (Dual Degree))	OBC-NCL	Female-Only	2115	2707	GENERAL
2104	IITRoorkee	Mathematics&Computing (5 Years Bachelor of Science and Master of Science (Dual Degree))	GEN-EWS	Gender-Neutral	179	288	GENERAL
2105	IITRoorkee	Mathematics&Computing (5 Years Bachelor of Science and Master of Science (Dual Degree))	GEN-EWS	Female-Only	849	849	GENERAL
2106	IITRoorkee	Mathematics&Computing (5 Years Bachelor of Science and Master of Science (Dual Degree))	GEN- EWS(PwD)	Gender-Neutral	38	38	GENERAL
2107	IITRoorkee	Mathematics&Computing (5 Years Bachelor of Science and Master of Science (Dual Degree))	OPEN	Gender-Neutral	1158	1513	GENERAL
2108	IITRoorkee	Mathematics&Computing (5 Years Bachelor of Science and Master of Science (Dual Degree))	OPEN	Female-Only	4378	4953	GENERAL
2109	IITRoorkee	Mathematics&Computing (5 Years Bachelor of Science and Master of Science (Dual Degree))	SC	Gender-Neutral	351	569	GENERAL
2110	IITRoorkee	Mathematics&Computing (5 Years Bachelor of Science and Master of Science (Dual Degree))	SC	Female-Only	858	858	GENERAL
2111	IITRoorkee	Mathematics&Computing (5 Years Bachelor of Science and Master of Science (Dual Degree))	ST	Gender-Neutral	206	415	GENERAL
2112	IITRoorkee	Mathematics&Computing (5 Years Bachelor of Science and Master of Science (Dual Degree))	ST	Female-Only	746	746	GENERAL
2113	IITRoorkee	Chemical Sciences (5 Years Bachelor of Science and Master of Science (Dual Degree))	OBC-NCL	Gender-Neutral	4356	4943	GENERAL
2114	IITRoorkee	Chemical Sciences (5 Years Bachelor of Science and Master of Science (Dual Degree))	OBC-NCL	Female-Only	8773	8806	GENERAL
2115	IITRoorkee	Chemical Sciences (5 Years Bachelor of Science and Master of Science (Dual Degree))	GEN-EWS	Gender-Neutral	1737	1753	GENERAL
2116	IITRoorkee	Chemical Sciences (5 Years Bachelor of Science and Master of Science (Dual Degree))	GEN-EWS	Female-Only	3689	3689	GENERAL
2117	IITRoorkee	Chemical Sciences (5 Years Bachelor of Science and Master of Science (Dual Degree))	OPEN	Gender-Neutral	9374	11130	GENERAL
2118	IITRoorkee	Chemical Sciences (5 Years Bachelor of Science and Master of Science (Dual Degree))	OPEN	Female-Only	17372	20185	GENERAL
2119	IITRoorkee	Chemical Sciences (5 Years Bachelor of Science and Master of Science (Dual Degree))	SC	Gender-Neutral	1940	2323	GENERAL
2120	IITRoorkee	Chemical Sciences (5 Years Bachelor of Science and Master of Science (Dual Degree))	SC	Female-Only	3872	3872	GENERAL
2121	IITRoorkee	Chemical Sciences (5 Years Bachelor of Science and Master of Science (Dual Degree))	ST	Gender-Neutral	1246	1309	GENERAL
2122	IITRoorkee	Economics (5 Years Bachelor of Science and Master of Science (Dual Degree))	OBC-NCL	Gender-Neutral	2000	2847	GENERAL
2123	IITRoorkee	Economics (5 Years Bachelor of Science and Master of Science (Dual Degree))	OBC-NCL	Female-Only	5298	5911	GENERAL
2124	IITRoorkee	Economics (5 Years Bachelor of Science and Master of Science (Dual Degree))	GEN-EWS	Gender-Neutral	745	824	GENERAL
2125	IITRoorkee	Economics (5 Years Bachelor of Science and Master of Science (Dual Degree))	GEN-EWS	Female-Only	1932	1932	GENERAL
2126	IITRoorkee	Economics (5 Years Bachelor of Science and Master of Science (Dual Degree))	OPEN	Gender-Neutral	3876	5938	GENERAL
2127	IITRoorkee	Economics (5 Years Bachelor of Science and Master of Science (Dual Degree))	OPEN	Female-Only	6937	9905	GENERAL
2128	IITRoorkee	Economics (5 Years Bachelor of Science and Master of Science (Dual Degree))	SC	Gender-Neutral	1541	2176	GENERAL
2129	IITRoorkee	Economics (5 Years Bachelor of Science and Master of Science (Dual Degree))	SC	Female-Only	2972	2972	GENERAL
2130	IITRoorkee	Economics (5 Years Bachelor of Science and Master of Science (Dual Degree))	ST	Gender-Neutral	1034	1064	GENERAL
2131	IIT(ISM) Dhanbad	Chemical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	3207	4339	GENERAL
2132	IIT(ISM) Dhanbad	Chemical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	7152	7304	GENERAL
2133	IIT(ISM) Dhanbad	Chemical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1627	1709	GENERAL
2134	IIT(ISM) Dhanbad	Chemical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2965	2965	GENERAL
2135	IIT(ISM) Dhanbad	Chemical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	9636	11980	GENERAL
2136	IIT(ISM) Dhanbad	Chemical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	18816	21062	GENERAL
2137	IIT(ISM) Dhanbad	Chemical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1987	2456	GENERAL
2138	IIT(ISM) Dhanbad	Chemical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	3475	3475	GENERAL
2139	IIT(ISM) Dhanbad	Chemical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	1159	1189	GENERAL
2140	IIT(ISM) Dhanbad	Chemical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1687	1687	GENERAL
2141	IIT(ISM) Dhanbad	Civil Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	4054	4638	GENERAL
2142	IIT(ISM) Dhanbad	Civil Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	7613	8238	GENERAL
2143	IIT(ISM) Dhanbad	Civil Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1820	2078	GENERAL
2144	IIT(ISM) Dhanbad	Civil Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	3353	3353	GENERAL
2145	IIT(ISM) Dhanbad	Civil Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	10753	13778	GENERAL
2146	IIT(ISM) Dhanbad	Civil Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	21112	22563	GENERAL
2147	IIT(ISM) Dhanbad	Civil Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1933	2573	GENERAL
2148	IIT(ISM) Dhanbad	Civil Engineering (4 Years Bachelor of Technology)	SC	Female-Only	3083	3493	GENERAL
2149	IIT(ISM) Dhanbad	Civil Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	927	1017	GENERAL
2150	IIT(ISM) Dhanbad	Civil Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1336	1336	GENERAL
2151	IIT(ISM) Dhanbad	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	733	1311	GENERAL
2152	IIT(ISM) Dhanbad	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	2032	2992	GENERAL
2153	IIT(ISM) Dhanbad	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	61	68	GENERAL
2154	IIT(ISM) Dhanbad	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Female-Only	118	118	PREPARATORY
2155	IIT(ISM) Dhanbad	Computer Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	361	458	GENERAL
2156	IIT(ISM) Dhanbad	Computer Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	974	1052	GENERAL
2157	IIT(ISM) Dhanbad	Computer Science and Engineering (4 Years Bachelor of Technology)	GEN- EWS(PwD)	Gender-Neutral	32	32	GENERAL
2158	IIT(ISM) Dhanbad	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	2143	3585	GENERAL
2159	IIT(ISM) Dhanbad	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	5353	7866	GENERAL
2160	IIT(ISM) Dhanbad	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	82	99	GENERAL
2161	IIT(ISM) Dhanbad	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Female-Only	88	119	GENERAL
2162	IIT(ISM) Dhanbad	Computer Science and Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	466	708	GENERAL
2163	IIT(ISM) Dhanbad	Computer Science and Engineering (4 Years Bachelor of Technology)	SC	Female-Only	1378	1617	GENERAL
2164	IIT(ISM) Dhanbad	Computer Science and Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	180	318	GENERAL
2165	IIT(ISM) Dhanbad	Computer Science and Engineering (4 Years Bachelor of Technology)	ST	Female-Only	422	630	GENERAL
2166	IIT(ISM) Dhanbad	Electrical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	1995	2771	GENERAL
2167	IIT(ISM) Dhanbad	Electrical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	5328	6343	GENERAL
2168	IIT(ISM) Dhanbad	Electrical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	919	1121	GENERAL
2169	IIT(ISM) Dhanbad	Electrical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2234	2443	GENERAL
2170	IIT(ISM) Dhanbad	Electrical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	5842	7603	GENERAL
2171	IIT(ISM) Dhanbad	Electrical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	9081	16336	GENERAL
2172	IIT(ISM) Dhanbad	Electrical Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	239	173	GENERAL
2173	IIT(ISM) Dhanbad	Electrical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1390	1757	GENERAL
2174	IIT(ISM) Dhanbad	Electrical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	2339	2875	GENERAL
2175	IIT(ISM) Dhanbad	Electrical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	613	778	GENERAL
2176	IIT(ISM) Dhanbad	Electrical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1138	1223	GENERAL
2177	IIT(ISM) Dhanbad	Electronics and Communication Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	1501	2072	GENERAL
2178	IIT(ISM) Dhanbad	Electronics and Communication Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	3554	4582	GENERAL
2179	IIT(ISM) Dhanbad	Electronics and Communication Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	637	781	GENERAL
2180	IIT(ISM) Dhanbad	Electronics and Communication Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	1780	1813	GENERAL
2181	IIT(ISM) Dhanbad	Electronics and Communication Engineering (4 Years Bachelor of Technology)	GEN- EWS(PwD)	Gender-Neutral	20	20	PREPARATORY
2182	IIT(ISM) Dhanbad	Electronics and Communication Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	2795	5839	GENERAL
2183	IIT(ISM) Dhanbad	Electronics and Communication Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	6704	12997	GENERAL
2184	IIT(ISM) Dhanbad	Electronics and Communication Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	56	90	PREPARATORY
2185	IIT(ISM) Dhanbad	Electronics and Communication Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	821	1337	GENERAL
2186	IIT(ISM) Dhanbad	Electronics and Communication Engineering (4 Years Bachelor of Technology)	SC	Female-Only	1882	2265	GENERAL
2187	IIT(ISM) Dhanbad	Electronics and Communication Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	373	576	GENERAL
2188	IIT(ISM) Dhanbad	Electronics and Communication Engineering (4 Years Bachelor of Technology)	ST	Female-Only	913	1032	GENERAL
2189	IIT(ISM) Dhanbad	Engineering Physics (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	4140	4405	GENERAL
2190	IIT(ISM) Dhanbad	Engineering Physics (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	7945	8279	GENERAL
2191	IIT(ISM) Dhanbad	Engineering Physics (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1500	1708	GENERAL
2192	IIT(ISM) Dhanbad	Engineering Physics (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	3523	3523	GENERAL
2193	IIT(ISM) Dhanbad	Engineering Physics (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	8484	11711	GENERAL
2194	IIT(ISM) Dhanbad	Engineering Physics (4 Years Bachelor of Technology)	OPEN	Female-Only	19430	20761	GENERAL
2195	IIT(ISM) Dhanbad	Engineering Physics (4 Years Bachelor of Technology)	SC	Gender-Neutral	2468	2850	GENERAL
2196	IIT(ISM) Dhanbad	Engineering Physics (4 Years Bachelor of Technology)	SC	Female-Only	3134	3134	GENERAL
2197	IIT(ISM) Dhanbad	Engineering Physics (4 Years Bachelor of Technology)	ST	Gender-Neutral	1417	1422	GENERAL
2198	IIT(ISM) Dhanbad	Environmental Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	4705	5742	GENERAL
2199	IIT(ISM) Dhanbad	Environmental Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	9024	9749	GENERAL
2200	IIT(ISM) Dhanbad	Environmental Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	2361	2396	GENERAL
2201	IIT(ISM) Dhanbad	Environmental Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	4164	4164	GENERAL
2202	IIT(ISM) Dhanbad	Environmental Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	14372	16752	GENERAL
2203	IIT(ISM) Dhanbad	Environmental Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	20318	25347	GENERAL
2204	IIT(ISM) Dhanbad	Environmental Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	2852	3244	GENERAL
2205	IIT(ISM) Dhanbad	Environmental Engineering (4 Years Bachelor of Technology)	SC	Female-Only	4142	4142	GENERAL
2206	IIT(ISM) Dhanbad	Environmental Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	1386	1502	GENERAL
2207	IIT(ISM) Dhanbad	Environmental Engineering (4 Years Bachelor of Technology)	ST	Female-Only	2035	2035	GENERAL
2208	IIT(ISM) Dhanbad	Mathematics and Computing (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	1446	1628	GENERAL
2209	IIT(ISM) Dhanbad	Mathematics and Computing (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	3445	3964	GENERAL
2210	IIT(ISM) Dhanbad	Mathematics and Computing (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	519	566	GENERAL
2211	IIT(ISM) Dhanbad	Mathematics and Computing (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	1601	1601	GENERAL
2212	IIT(ISM) Dhanbad	Mathematics and Computing (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	2297	4335	GENERAL
2213	IIT(ISM) Dhanbad	Mathematics and Computing (4 Years Bachelor of Technology)	OPEN	Female-Only	8073	9672	GENERAL
2214	IIT(ISM) Dhanbad	Mathematics and Computing (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	215	215	GENERAL
2215	IIT(ISM) Dhanbad	Mathematics and Computing (4 Years Bachelor of Technology)	OPEN(PwD)	Female-Only	310	310	PREPARATORY
2216	IIT(ISM) Dhanbad	Mathematics and Computing (4 Years Bachelor of Technology)	SC	Gender-Neutral	937	1074	GENERAL
2217	IIT(ISM) Dhanbad	Mathematics and Computing (4 Years Bachelor of Technology)	SC	Female-Only	1675	1675	GENERAL
2218	IIT(ISM) Dhanbad	Mathematics and Computing (4 Years Bachelor of Technology)	ST	Gender-Neutral	382	621	GENERAL
2219	IIT(ISM) Dhanbad	Mathematics and Computing (4 Years Bachelor of Technology)	ST	Female-Only	731	731	GENERAL
2220	IIT(ISM) Dhanbad	Mechanical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	2839	3743	GENERAL
2221	IIT(ISM) Dhanbad	Mechanical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	6941	7792	GENERAL
2222	IIT(ISM) Dhanbad	Mechanical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1322	1606	GENERAL
2223	IIT(ISM) Dhanbad	Mechanical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2948	2950	GENERAL
2224	IIT(ISM) Dhanbad	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	7662	10273	GENERAL
2225	IIT(ISM) Dhanbad	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	16890	20567	GENERAL
2226	IIT(ISM) Dhanbad	Mechanical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1304	2227	GENERAL
2227	IIT(ISM) Dhanbad	Mechanical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	3166	3321	GENERAL
2228	IIT(ISM) Dhanbad	Mechanical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	784	1023	GENERAL
2229	IIT(ISM) Dhanbad	Mechanical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1557	1679	GENERAL
2230	IIT(ISM) Dhanbad	Mining Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	4330	5419	GENERAL
2231	IIT(ISM) Dhanbad	Mining Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	8249	9620	GENERAL
2232	IIT(ISM) Dhanbad	Mining Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	2109	2302	GENERAL
2233	IIT(ISM) Dhanbad	Mining Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	3807	3940	GENERAL
2234	IIT(ISM) Dhanbad	Mining Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	12833	15455	GENERAL
2235	IIT(ISM) Dhanbad	Mining Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	23441	25110	GENERAL
2236	IIT(ISM) Dhanbad	Mining Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	2627	3089	GENERAL
2237	IIT(ISM) Dhanbad	Mining Engineering (4 Years Bachelor of Technology)	SC	Female-Only	3909	4114	GENERAL
2238	IIT(ISM) Dhanbad	Mining Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	150	1255	GENERAL
2239	IIT(ISM) Dhanbad	Mining Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1568	1568	GENERAL
2240	IIT(ISM) Dhanbad	Mining Machinery Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	4865	5725	GENERAL
2241	IIT(ISM) Dhanbad	Mining Machinery Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	9723	9947	GENERAL
2242	IIT(ISM) Dhanbad	Mining Machinery Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	2320	2467	GENERAL
2243	IIT(ISM) Dhanbad	Mining Machinery Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	4052	4052	GENERAL
2244	IIT(ISM) Dhanbad	Mining Machinery Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	12787	16579	GENERAL
2245	IIT(ISM) Dhanbad	Mining Machinery Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	24774	25237	GENERAL
2246	IIT(ISM) Dhanbad	Mining Machinery Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	2680	3167	GENERAL
2247	IIT(ISM) Dhanbad	Mining Machinery Engineering (4 Years Bachelor of Technology)	SC	Female-Only	4124	4288	GENERAL
2248	IIT(ISM) Dhanbad	Mining Machinery Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	981	1301	GENERAL
2249	IIT(ISM) Dhanbad	Mining Machinery Engineering (4 Years Bachelor of Technology)	ST	Female-Only	2002	2002	GENERAL
2250	IIT(ISM) Dhanbad	Petroleum Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	3377	4717	GENERAL
2251	IIT(ISM) Dhanbad	Petroleum Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	6991	9036	GENERAL
2252	IIT(ISM) Dhanbad	Petroleum Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1675	1904	GENERAL
2253	IIT(ISM) Dhanbad	Petroleum Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	3306	3313	GENERAL
2254	IIT(ISM) Dhanbad	Petroleum Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	9681	12709	GENERAL
2255	IIT(ISM) Dhanbad	Petroleum Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	20718	23063	GENERAL
2256	IIT(ISM) Dhanbad	Petroleum Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	2143	2624	GENERAL
2257	IIT(ISM) Dhanbad	Petroleum Engineering (4 Years Bachelor of Technology)	SC	Female-Only	2337	3958	GENERAL
2258	IIT(ISM) Dhanbad	Petroleum Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	963	1122	GENERAL
2259	IIT(ISM) Dhanbad	Petroleum Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1553	1553	GENERAL
2260	IIT(ISM) Dhanbad	Mineral and Metallurgical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	4755	5301	GENERAL
2261	IIT(ISM) Dhanbad	Mineral and Metallurgical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	7501	8428	GENERAL
2262	IIT(ISM) Dhanbad	Mineral and Metallurgical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	2025	2148	GENERAL
2263	IIT(ISM) Dhanbad	Mineral and Metallurgical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	3596	3596	GENERAL
2264	IIT(ISM) Dhanbad	Mineral and Metallurgical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	11781	14875	GENERAL
2265	IIT(ISM) Dhanbad	Mineral and Metallurgical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	21574	23662	GENERAL
2266	IIT(ISM) Dhanbad	Mineral and Metallurgical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	2025	2877	GENERAL
2267	IIT(ISM) Dhanbad	Mineral and Metallurgical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	4059	4059	GENERAL
2268	IIT(ISM) Dhanbad	Mineral and Metallurgical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	1259	1354	GENERAL
2269	IIT(ISM) Dhanbad	Mineral and Metallurgical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1956	1956	GENERAL
2270	IIT(ISM) Dhanbad	Applied Geology (5 Years Integrated Master of Technology)	OBC-NCL	Gender-Neutral	5797	6098	GENERAL
2271	IIT(ISM) Dhanbad	Applied Geology (5 Years Integrated Master of Technology)	OBC-NCL	Female-Only	10208	10208	GENERAL
2272	IIT(ISM) Dhanbad	Applied Geology (5 Years Integrated Master of Technology)	GEN-EWS	Gender-Neutral	2577	2658	GENERAL
2273	IIT(ISM) Dhanbad	Applied Geology (5 Years Integrated Master of Technology)	GEN-EWS	Female-Only	4184	4184	GENERAL
2274	IIT(ISM) Dhanbad	Applied Geology (5 Years Integrated Master of Technology)	OPEN	Gender-Neutral	16335	17892	GENERAL
2275	IIT(ISM) Dhanbad	Applied Geology (5 Years Integrated Master of Technology)	OPEN	Female-Only	24505	24505	GENERAL
2276	IIT(ISM) Dhanbad	Applied Geology (5 Years Integrated Master of Technology)	SC	Gender-Neutral	3242	3361	GENERAL
2277	IIT(ISM) Dhanbad	Applied Geology (5 Years Integrated Master of Technology)	SC	Female-Only	4326	4326	GENERAL
2278	IIT(ISM) Dhanbad	Applied Geology (5 Years Integrated Master of Technology)	ST	Gender-Neutral	1508	1508	GENERAL
2279	IIT(ISM) Dhanbad	Applied Geophysics (5 Years Integrated Master of Technology)	OBC-NCL	Gender-Neutral	5769	6145	GENERAL
2280	IIT(ISM) Dhanbad	Applied Geophysics (5 Years Integrated Master of Technology)	OBC-NCL	Female-Only	10063	10063	GENERAL
2281	IIT(ISM) Dhanbad	Applied Geophysics (5 Years Integrated Master of Technology)	GEN-EWS	Gender-Neutral	2615	2690	GENERAL
2282	IIT(ISM) Dhanbad	Applied Geophysics (5 Years Integrated Master of Technology)	GEN-EWS	Female-Only	4053	4053	GENERAL
2283	IIT(ISM) Dhanbad	Applied Geophysics (5 Years Integrated Master of Technology)	OPEN	Gender-Neutral	16223	17507	GENERAL
2284	IIT(ISM) Dhanbad	Applied Geophysics (5 Years Integrated Master of Technology)	OPEN	Female-Only	25691	25691	GENERAL
2285	IIT(ISM) Dhanbad	Applied Geophysics (5 Years Integrated Master of Technology)	SC	Gender-Neutral	3030	3222	GENERAL
2286	IIT(ISM) Dhanbad	Applied Geophysics (5 Years Integrated Master of Technology)	SC	Female-Only	3945	3945	GENERAL
2287	IIT(ISM) Dhanbad	Applied Geophysics (5 Years Integrated Master of Technology)	ST	Gender-Neutral	1507	1507	GENERAL
2288	IIT(ISM) Dhanbad	B.Tech Mining Engineering and MBA in Logistic and Supply Chain Management (IIM Mumbai)(5 Years Integrated B. Tech. and MBA)	OBC-NCL	Gender-Neutral	5410	6033	GENERAL
2289	IIT(ISM) Dhanbad	B.Tech Mining Engineering and MBA in Logistic and Supply Chain Management (IIM Mumbai)(5 Years Integrated B. Tech. and MBA)	OBC-NCL	Female-Only	9644	9877	GENERAL
2290	IIT(ISM) Dhanbad	B.Tech Mining Engineering and MBA in Logistic and Supply Chain Management (IIM Mumbai)(5 Years Integrated B. Tech. and MBA)	GEN-EWS	Gender-Neutral	2392	2600	GENERAL
2291	IIT(ISM) Dhanbad	B.Tech Mining Engineering and MBA in Logistic and Supply Chain Management (IIM Mumbai)(5 Years Integrated B. Tech. and MBA)	GEN-EWS	Female-Only	4196	4196	GENERAL
2292	IIT(ISM) Dhanbad	B.Tech Mining Engineering and MBA in Logistic and Supply Chain Management (IIM Mumbai)(5 Years Integrated B. Tech. and MBA)	OPEN	Gender-Neutral	11910	16770	GENERAL
2293	IIT(ISM) Dhanbad	B.Tech Mining Engineering and MBA in Logistic and Supply Chain Management (IIM Mumbai)(5 Years Integrated B. Tech. and MBA)	OPEN	Female-Only	22272	25310	GENERAL
2294	IIT(ISM) Dhanbad	B.Tech Mining Engineering and MBA in Logistic and Supply Chain Management (IIM Mumbai)(5 Years Integrated B. Tech. and MBA)	SC	Gender-Neutral	2952	3323	GENERAL
2295	IIT(ISM) Dhanbad	B.Tech Mining Engineering and MBA in Logistic and Supply Chain Management (IIM Mumbai)(5 Years Integrated B. Tech. and MBA)	SC	Female-Only	4344	4352	GENERAL
2296	IIT(ISM) Dhanbad	B.Tech Mining Engineering and MBA in Logistic and Supply Chain Management (IIM Mumbai)(5 Years Integrated B. Tech. and MBA)	ST	Gender-Neutral	1425	1541	GENERAL
2297	IIT(ISM) Dhanbad	B.Tech Mining Engineering and MBA in Logistic and Supply Chain Management (IIM Mumbai)(5 Years Integrated B. Tech. and MBA)	ST	Female-Only	2091	2091	GENERAL
2298	IIT(ISM) Dhanbad	Physical Science (5 Years Integrated Bachelor of Science-Master of Science)	OBC-NCL	Gender-Neutral	6183	6413	GENERAL
2299	IIT(ISM) Dhanbad	Physical Science (5 Years Integrated Bachelor of Science-Master of Science)	OBC-NCL	Female-Only	10220	10220	GENERAL
2300	IIT(ISM) Dhanbad	Physical Science (5 Years Integrated Bachelor of Science-Master of Science)	GEN-EWS	Gender-Neutral	2607	2625	GENERAL
2301	IIT(ISM) Dhanbad	Physical Science (5 Years Integrated Bachelor of Science-Master of Science)	OPEN	Gender-Neutral	15891	18368	GENERAL
2302	IIT(ISM) Dhanbad	Physical Science (5 Years Integrated Bachelor of Science-Master of Science)	OPEN	Female-Only	25701	26143	GENERAL
2303	IIT(ISM) Dhanbad	Physical Science (5 Years Integrated Bachelor of Science-Master of Science)	SC	Gender-Neutral	3371	3423	GENERAL
2304	IIT(ISM) Dhanbad	Physical Science (5 Years Integrated Bachelor of Science-Master of Science)	SC	Female-Only	4534	4534	GENERAL
2305	IIT(ISM) Dhanbad	Physical Science (5 Years Integrated Bachelor of Science-Master of Science)	ST	Gender-Neutral	1529	1560	GENERAL
2306	IIT(ISM) Dhanbad	Chemical Science (5 Years Integrated Bachelor of Science-Master of Science)	OBC-NCL	Gender-Neutral	5626	6289	GENERAL
2307	IIT(ISM) Dhanbad	Chemical Science (5 Years Integrated Bachelor of Science-Master of Science)	OBC-NCL	Female-Only	10044	10044	GENERAL
2308	IIT(ISM) Dhanbad	Chemical Science (5 Years Integrated Bachelor of Science-Master of Science)	GEN-EWS	Gender-Neutral	2617	2649	GENERAL
2309	IIT(ISM) Dhanbad	Chemical Science (5 Years Integrated Bachelor of Science-Master of Science)	OPEN	Gender-Neutral	16394	18334	GENERAL
2310	IIT(ISM) Dhanbad	Chemical Science (5 Years Integrated Bachelor of Science-Master of Science)	OPEN	Female-Only	25720	26168	GENERAL
2311	IIT(ISM) Dhanbad	Chemical Science (5 Years Integrated Bachelor of Science-Master of Science)	SC	Gender-Neutral	3176	3364	GENERAL
2312	IIT(ISM) Dhanbad	Chemical Science (5 Years Integrated Bachelor of Science-Master of Science)	SC	Female-Only	3902	3902	GENERAL
2313	IIT(ISM) Dhanbad	Chemical Science (5 Years Integrated Bachelor of Science-Master of Science)	ST	Gender-Neutral	1547	1563	GENERAL
2314	IITRopar	Chemical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	3095	3942	GENERAL
2315	IITRopar	Chemical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	8246	8452	GENERAL
2316	IITRopar	Chemical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1644	1718	GENERAL
2317	IITRopar	Chemical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2933	2933	GENERAL
2318	IITRopar	Chemical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	8901	10655	GENERAL
2319	IITRopar	Chemical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	18153	18788	GENERAL
2320	IITRopar	Chemical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	2266	2537	GENERAL
2321	IITRopar	Chemical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	3335	3335	GENERAL
2322	IITRopar	Chemical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	1117	1241	GENERAL
2323	IITRopar	Chemical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1774	1774	GENERAL
2324	IITRopar	Civil Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	4229	4439	GENERAL
2325	IITRopar	Civil Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	8254	8750	GENERAL
2326	IITRopar	Civil Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1764	1997	GENERAL
2327	IITRopar	Civil Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	3185	3185	GENERAL
2328	IITRopar	Civil Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	9142	12488	GENERAL
2329	IITRopar	Civil Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	20462	21733	GENERAL
2330	IITRopar	Civil Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1899	2437	GENERAL
2331	IITRopar	Civil Engineering (4 Years Bachelor of Technology)	SC	Female-Only	3600	3600	GENERAL
2332	IITRopar	Civil Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	859	1040	GENERAL
2333	IITRopar	Civil Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1232	1232	GENERAL
2334	IITRopar	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	696	1253	GENERAL
2335	IITRopar	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	2668	3550	GENERAL
2336	IITRopar	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	50	50	PREPARATORY
2337	IITRopar	Computer Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	289	444	GENERAL
2338	IITRopar	Computer Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	834	1128	GENERAL
2339	IITRopar	Computer Science and Engineering (4 Years Bachelor of Technology)	GEN- EWS(PwD)	Gender-Neutral	29	29	PREPARATORY
2340	IITRopar	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	1680	2512	GENERAL
2341	IITRopar	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	3820	7118	GENERAL
2342	IITRopar	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	26	136	GENERAL
2343	IITRopar	Computer Science and Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	346	591	GENERAL
2344	IITRopar	Computer Science and Engineering (4 Years Bachelor of Technology)	SC	Female-Only	778	1389	GENERAL
2345	IITRopar	Computer Science and Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	267	352	GENERAL
2346	IITRopar	Computer Science and Engineering (4 Years Bachelor of Technology)	ST	Female-Only	603	655	GENERAL
2347	IITRopar	Electrical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	1552	2859	GENERAL
2348	IITRopar	Electrical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	5137	6627	GENERAL
2349	IITRopar	Electrical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	735	1078	GENERAL
2350	IITRopar	Electrical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2027	2279	GENERAL
2351	IITRopar	Electrical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	3940	6311	GENERAL
2352	IITRopar	Electrical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	10841	13817	GENERAL
2353	IITRopar	Electrical Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	166	166	PREPARATORY
2354	IITRopar	Electrical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1024	1709	GENERAL
2355	IITRopar	Electrical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	1855	2271	GENERAL
2356	IITRopar	Electrical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	573	887	GENERAL
2357	IITRopar	Electrical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1265	1430	GENERAL
2358	IITRopar	Engineering Physics (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	4248	4553	GENERAL
2359	IITRopar	Engineering Physics (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	8224	8224	GENERAL
2360	IITRopar	Engineering Physics (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1754	1829	GENERAL
2361	IITRopar	Engineering Physics (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	7857	9576	GENERAL
2362	IITRopar	Engineering Physics (4 Years Bachelor of Technology)	OPEN	Female-Only	18285	19091	GENERAL
2363	IITRopar	Engineering Physics (4 Years Bachelor of Technology)	SC	Gender-Neutral	2464	2508	GENERAL
2364	IITRopar	Engineering Physics (4 Years Bachelor of Technology)	SC	Female-Only	3607	3607	GENERAL
2365	IITRopar	Engineering Physics (4 Years Bachelor of Technology)	ST	Gender-Neutral	1323	1415	GENERAL
2366	IITRopar	Mathematics and Computing (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	1504	1983	GENERAL
2367	IITRopar	Mathematics and Computing (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	3766	4915	GENERAL
2368	IITRopar	Mathematics and Computing (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	467	658	GENERAL
2369	IITRopar	Mathematics and Computing (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	1352	1707	GENERAL
2370	IITRopar	Mathematics and Computing (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	2122	3954	GENERAL
2371	IITRopar	Mathematics and Computing (4 Years Bachelor of Technology)	OPEN	Female-Only	7735	9670	GENERAL
2372	IITRopar	Mathematics and Computing (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	49	258	PREPARATORY
2373	IITRopar	Mathematics and Computing (4 Years Bachelor of Technology)	SC	Gender-Neutral	874	1360	GENERAL
2374	IITRopar	Mathematics and Computing (4 Years Bachelor of Technology)	SC	Female-Only	1638	1873	GENERAL
2375	IITRopar	Mathematics and Computing (4 Years Bachelor of Technology)	ST	Gender-Neutral	539	783	GENERAL
2376	IITRopar	Mathematics and Computing (4 Years Bachelor of Technology)	ST	Female-Only	1001	1001	GENERAL
2377	IITRopar	Mechanical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	3168	3835	GENERAL
2378	IITRopar	Mechanical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	7807	8380	GENERAL
2379	IITRopar	Mechanical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1255	1421	GENERAL
2380	IITRopar	Mechanical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2638	2756	GENERAL
2381	IITRopar	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	7135	9115	GENERAL
2382	IITRopar	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	14807	17810	GENERAL
2383	IITRopar	Mechanical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1930	2239	GENERAL
2384	IITRopar	Mechanical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	3545	3597	GENERAL
2385	IITRopar	Mechanical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	1014	1104	GENERAL
2386	IITRopar	Mechanical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1595	1595	GENERAL
2387	IITRopar	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	4731	5192	GENERAL
2388	IITRopar	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	8709	9123	GENERAL
2389	IITRopar	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	2011	2050	GENERAL
2390	IITRopar	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	3810	3810	GENERAL
2391	IITRopar	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	10832	13777	GENERAL
2392	IITRopar	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	21792	23034	GENERAL
2393	IITRopar	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	2803	2945	GENERAL
2394	IITRopar	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	1352	1352	GENERAL
2395	IITRopar	Metallurgical and Materials Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1880	1880	GENERAL
2396	IITRopar	Artificial Intelligence and Data Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	1120	1609	GENERAL
2397	IITRopar	Artificial Intelligence and Data Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	3557	4293	GENERAL
2398	IITRopar	Artificial Intelligence and Data Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	431	516	GENERAL
2399	IITRopar	Artificial Intelligence and Data Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	1571	1591	GENERAL
2400	IITRopar	Artificial Intelligence and Data Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	2558	3500	GENERAL
2401	IITRopar	Artificial Intelligence and Data Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	5982	8247	GENERAL
2402	IITRopar	Artificial Intelligence and Data Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	214	232	GENERAL
2403	IITRopar	Artificial Intelligence and Data Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	742	1071	GENERAL
2404	IITRopar	Artificial Intelligence and Data Engineering (4 Years Bachelor of Technology)	SC	Female-Only	1705	1854	GENERAL
2405	IITRopar	Artificial Intelligence and Data Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	385	453	GENERAL
2406	IITRopar	Artificial Intelligence and Data Engineering (4 Years Bachelor of Technology)	ST	Female-Only	514	514	GENERAL
2407	IITRopar	Digital Agriculture (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	4401	5699	GENERAL
2408	IITRopar	Digital Agriculture (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	9118	9118	GENERAL
2409	IITRopar	Digital Agriculture (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	2345	2369	GENERAL
2410	IITRopar	Digital Agriculture (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	11311	14480	GENERAL
2411	IITRopar	Digital Agriculture (4 Years Bachelor of Technology)	OPEN	Female-Only	21565	23540	GENERAL
2412	IITRopar	Digital Agriculture (4 Years Bachelor of Technology)	SC	Gender-Neutral	3200	3415	GENERAL
2413	IITRopar	Digital Agriculture (4 Years Bachelor of Technology)	SC	Female-Only	3652	3652	GENERAL
2414	IITRopar	Digital Agriculture (4 Years Bachelor of Technology)	ST	Gender-Neutral	1433	1433	GENERAL
2415	IITRopar	Electrical Engineering (Integrated Circuit Design and Technology)(4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	2168	2487	GENERAL
2416	IITRopar	Electrical Engineering (Integrated Circuit Design and Technology)(4 Years Bachelor of Technology)	OBC-NCL	Female-Only	6307	6307	GENERAL
2417	IITRopar	Electrical Engineering (Integrated Circuit Design and Technology)(4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	724	858	GENERAL
2418	IITRopar	Electrical Engineering (Integrated Circuit Design and Technology)(4 Years Bachelor of Technology)	OPEN	Gender-Neutral	4759	5527	GENERAL
2419	IITRopar	Electrical Engineering (Integrated Circuit Design and Technology)(4 Years Bachelor of Technology)	OPEN	Female-Only	9891	12525	GENERAL
2420	IITRopar	Electrical Engineering (Integrated Circuit Design and Technology)(4 Years Bachelor of Technology)	SC	Gender-Neutral	1258	1383	GENERAL
2421	IITRopar	Electrical Engineering (Integrated Circuit Design and Technology)(4 Years Bachelor of Technology)	SC	Female-Only	2366	2366	GENERAL
2422	IITRopar	Electrical Engineering (Integrated Circuit Design and Technology)(4 Years Bachelor of Technology)	ST	Gender-Neutral	852	852	GENERAL
2423	IIT(BHU) Varanasi	Ceramic Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	4044	4990	GENERAL
2424	IIT(BHU) Varanasi	Ceramic Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	9063	10000	GENERAL
2425	IIT(BHU) Varanasi	Ceramic Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1732	1998	GENERAL
2426	IIT(BHU) Varanasi	Ceramic Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	3766	3766	GENERAL
2427	IIT(BHU) Varanasi	Ceramic Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	10901	13064	GENERAL
2428	IIT(BHU) Varanasi	Ceramic Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	20457	22766	GENERAL
2429	IIT(BHU) Varanasi	Ceramic Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	2675	3153	GENERAL
2430	IIT(BHU) Varanasi	Ceramic Engineering (4 Years Bachelor of Technology)	SC	Female-Only	3599	4248	GENERAL
2431	IIT(BHU) Varanasi	Ceramic Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	1247	1440	GENERAL
2432	IIT(BHU) Varanasi	Ceramic Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1989	1989	GENERAL
2433	IIT(BHU) Varanasi	Chemical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	2819	3434	GENERAL
2434	IIT(BHU) Varanasi	Chemical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	4271	7240	GENERAL
2435	IIT(BHU) Varanasi	Chemical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1094	1341	GENERAL
2436	IIT(BHU) Varanasi	Chemical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2404	2622	GENERAL
2437	IIT(BHU) Varanasi	Chemical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	6239	8381	GENERAL
2438	IIT(BHU) Varanasi	Chemical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	12041	16660	GENERAL
2439	IIT(BHU) Varanasi	Chemical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1517	2011	GENERAL
2440	IIT(BHU) Varanasi	Chemical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	2555	3480	GENERAL
2441	IIT(BHU) Varanasi	Chemical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	854	1016	GENERAL
2442	IIT(BHU) Varanasi	Chemical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1516	1607	GENERAL
2443	IIT(BHU) Varanasi	Civil Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	3330	3888	GENERAL
2444	IIT(BHU) Varanasi	Civil Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	7255	7860	GENERAL
2445	IIT(BHU) Varanasi	Civil Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1317	1554	GENERAL
2446	IIT(BHU) Varanasi	Civil Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2724	2852	GENERAL
2447	IIT(BHU) Varanasi	Civil Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	7606	10278	GENERAL
2448	IIT(BHU) Varanasi	Civil Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	16913	19519	GENERAL
2449	IIT(BHU) Varanasi	Civil Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1683	2261	GENERAL
2450	IIT(BHU) Varanasi	Civil Engineering (4 Years Bachelor of Technology)	SC	Female-Only	2924	3186	GENERAL
2451	IIT(BHU) Varanasi	Civil Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	611	896	GENERAL
2452	IIT(BHU) Varanasi	Civil Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1110	1171	GENERAL
2453	IIT(BHU) Varanasi	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	334	528	GENERAL
2454	IIT(BHU) Varanasi	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	1097	1832	GENERAL
2455	IIT(BHU) Varanasi	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	52	57	GENERAL
2456	IIT(BHU) Varanasi	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Female-Only	41	41	GENERAL
2457	IIT(BHU) Varanasi	Computer Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	131	189	GENERAL
2458	IIT(BHU) Varanasi	Computer Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	405	490	GENERAL
2459	IIT(BHU) Varanasi	Computer Science and Engineering (4 Years Bachelor of Technology)	GEN- EWS(PwD)	Gender-Neutral	15	15	GENERAL
2460	IIT(BHU) Varanasi	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	747	1489	GENERAL
2461	IIT(BHU) Varanasi	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	2832	3784	GENERAL
2462	IIT(BHU) Varanasi	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	53	74	GENERAL
2463	IIT(BHU) Varanasi	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Female-Only	79	79	GENERAL
2464	IIT(BHU) Varanasi	Computer Science and Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	194	283	GENERAL
2465	IIT(BHU) Varanasi	Computer Science and Engineering (4 Years Bachelor of Technology)	SC	Female-Only	564	903	GENERAL
2466	IIT(BHU) Varanasi	Computer Science and Engineering (4 Years Bachelor of Technology)	SC(PwD)	Gender-Neutral	11	11	PREPARATORY
2467	IIT(BHU) Varanasi	Computer Science and Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	113	165	GENERAL
2468	IIT(BHU) Varanasi	Computer Science and Engineering (4 Years Bachelor of Technology)	ST	Female-Only	313	393	GENERAL
2469	IIT(BHU) Varanasi	Electrical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	1061	1491	GENERAL
2470	IIT(BHU) Varanasi	Electrical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	2528	4023	GENERAL
2471	IIT(BHU) Varanasi	Electrical Engineering (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	121	121	PREPARATORY
2472	IIT(BHU) Varanasi	Electrical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	432	595	GENERAL
2473	IIT(BHU) Varanasi	Electrical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	1345	1441	GENERAL
2474	IIT(BHU) Varanasi	Electrical Engineering (4 Years Bachelor of Technology)	GEN- EWS(PwD)	Gender-Neutral	41	41	PREPARATORY
2475	IIT(BHU) Varanasi	Electrical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	2343	3537	GENERAL
2476	IIT(BHU) Varanasi	Electrical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	6062	8129	GENERAL
2477	IIT(BHU) Varanasi	Electrical Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	205	103	GENERAL
2478	IIT(BHU) Varanasi	Electrical Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Female-Only	221	221	PREPARATORY
2479	IIT(BHU) Varanasi	Electrical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	682	999	GENERAL
2480	IIT(BHU) Varanasi	Electrical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	1993	2212	GENERAL
2481	IIT(BHU) Varanasi	Electrical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	366	485	GENERAL
2482	IIT(BHU) Varanasi	Electrical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1008	1094	GENERAL
2483	IIT(BHU) Varanasi	Electronics Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	816	1261	GENERAL
2484	IIT(BHU) Varanasi	Electronics Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	2555	3392	GENERAL
2485	IIT(BHU) Varanasi	Electronics Engineering (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	86	35	GENERAL
2486	IIT(BHU) Varanasi	Electronics Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	334	415	GENERAL
2487	IIT(BHU) Varanasi	Electronics Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	857	1199	GENERAL
2488	IIT(BHU) Varanasi	Electronics Engineering (4 Years Bachelor of Technology)	GEN- EWS(PwD)	Gender-Neutral	40	40	PREPARATORY
2489	IIT(BHU) Varanasi	Electronics Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	1956	2635	GENERAL
2490	IIT(BHU) Varanasi	Electronics Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	5798	6498	GENERAL
2491	IIT(BHU) Varanasi	Electronics Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	180	193	GENERAL
2492	IIT(BHU) Varanasi	Electronics Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Female-Only	46	46	PREPARATORY
2493	IIT(BHU) Varanasi	Electronics Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	423	805	GENERAL
2494	IIT(BHU) Varanasi	Electronics Engineering (4 Years Bachelor of Technology)	SC	Female-Only	1572	1934	GENERAL
2495	IIT(BHU) Varanasi	Electronics Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	311	463	GENERAL
2496	IIT(BHU) Varanasi	Electronics Engineering (4 Years Bachelor of Technology)	ST	Female-Only	819	856	GENERAL
2608	IITGuwahati	Chemical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1226	1490	GENERAL
2497	IIT(BHU) Varanasi	Engineering Physics (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	2954	4059	GENERAL
2498	IIT(BHU) Varanasi	Engineering Physics (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	7709	7907	GENERAL
2499	IIT(BHU) Varanasi	Engineering Physics (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1321	1479	GENERAL
2500	IIT(BHU) Varanasi	Engineering Physics (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2830	2830	GENERAL
2501	IIT(BHU) Varanasi	Engineering Physics (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	5457	8441	GENERAL
2502	IIT(BHU) Varanasi	Engineering Physics (4 Years Bachelor of Technology)	OPEN	Female-Only	15137	16930	GENERAL
2503	IIT(BHU) Varanasi	Engineering Physics (4 Years Bachelor of Technology)	SC	Gender-Neutral	2241	2446	GENERAL
2504	IIT(BHU) Varanasi	Engineering Physics (4 Years Bachelor of Technology)	SC	Female-Only	3527	3527	GENERAL
2505	IIT(BHU) Varanasi	Engineering Physics (4 Years Bachelor of Technology)	ST	Gender-Neutral	1091	1199	GENERAL
2506	IIT(BHU) Varanasi	Mathematics and Computing (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	576	883	GENERAL
2507	IIT(BHU) Varanasi	Mathematics and Computing (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	2137	2664	GENERAL
2508	IIT(BHU) Varanasi	Mathematics and Computing (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	87	87	GENERAL
2509	IIT(BHU) Varanasi	Mathematics and Computing (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	246	321	GENERAL
2510	IIT(BHU) Varanasi	Mathematics and Computing (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	634	634	GENERAL
2511	IIT(BHU) Varanasi	Mathematics and Computing (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	1481	1924	GENERAL
2512	IIT(BHU) Varanasi	Mathematics and Computing (4 Years Bachelor of Technology)	OPEN	Female-Only	4466	5444	GENERAL
2513	IIT(BHU) Varanasi	Mathematics and Computing (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	90	90	GENERAL
2514	IIT(BHU) Varanasi	Mathematics and Computing (4 Years Bachelor of Technology)	OPEN(PwD)	Female-Only	37	37	PREPARATORY
2515	IIT(BHU) Varanasi	Mathematics and Computing (4 Years Bachelor of Technology)	SC	Gender-Neutral	473	674	GENERAL
2516	IIT(BHU) Varanasi	Mathematics and Computing (4 Years Bachelor of Technology)	SC	Female-Only	1148	1244	GENERAL
2517	IIT(BHU) Varanasi	Mathematics and Computing (4 Years Bachelor of Technology)	ST	Gender-Neutral	127	372	GENERAL
2518	IIT(BHU) Varanasi	Mathematics and Computing (4 Years Bachelor of Technology)	ST	Female-Only	773	773	GENERAL
2519	IIT(BHU) Varanasi	Mechanical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	2045	2829	GENERAL
2520	IIT(BHU) Varanasi	Mechanical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	5979	7099	GENERAL
2521	IIT(BHU) Varanasi	Mechanical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	851	1170	GENERAL
2522	IIT(BHU) Varanasi	Mechanical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2399	2630	GENERAL
2523	IIT(BHU) Varanasi	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	4787	7286	GENERAL
2524	IIT(BHU) Varanasi	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	14049	16650	GENERAL
2525	IIT(BHU) Varanasi	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	248	248	PREPARATORY
2526	IIT(BHU) Varanasi	Mechanical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1080	1749	GENERAL
2527	IIT(BHU) Varanasi	Mechanical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	3003	3170	GENERAL
2528	IIT(BHU) Varanasi	Mechanical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	614	871	GENERAL
2529	IIT(BHU) Varanasi	Mechanical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1257	1424	GENERAL
2530	IIT(BHU) Varanasi	Metallurgical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	3456	4561	GENERAL
2531	IIT(BHU) Varanasi	Metallurgical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	8175	8690	GENERAL
2532	IIT(BHU) Varanasi	Metallurgical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1690	1884	GENERAL
2533	IIT(BHU) Varanasi	Metallurgical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2867	3163	GENERAL
2534	IIT(BHU) Varanasi	Metallurgical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	8214	11398	GENERAL
2535	IIT(BHU) Varanasi	Metallurgical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	16852	20035	GENERAL
2536	IIT(BHU) Varanasi	Metallurgical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	2278	2871	GENERAL
2537	IIT(BHU) Varanasi	Metallurgical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	3646	3827	GENERAL
2538	IIT(BHU) Varanasi	Metallurgical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	1191	1316	GENERAL
2539	IIT(BHU) Varanasi	Metallurgical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1801	1932	GENERAL
2540	IIT(BHU) Varanasi	Mining Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	4608	5319	GENERAL
2541	IIT(BHU) Varanasi	Mining Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	8188	9767	GENERAL
2542	IIT(BHU) Varanasi	Mining Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1935	2139	GENERAL
2543	IIT(BHU) Varanasi	Mining Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	3558	3793	GENERAL
2544	IIT(BHU) Varanasi	Mining Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	11434	14243	GENERAL
2545	IIT(BHU) Varanasi	Mining Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	19228	24539	GENERAL
2546	IIT(BHU) Varanasi	Mining Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	2068	3019	GENERAL
2547	IIT(BHU) Varanasi	Mining Engineering (4 Years Bachelor of Technology)	SC	Female-Only	3930	4254	GENERAL
2548	IIT(BHU) Varanasi	Mining Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	1305	1368	GENERAL
2549	IIT(BHU) Varanasi	Mining Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1662	1800	GENERAL
2550	IIT(BHU) Varanasi	Pharmaceutical Engineering& Technology (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	4978	5591	GENERAL
2551	IIT(BHU) Varanasi	Pharmaceutical Engineering& Technology (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	9112	9686	GENERAL
2609	IITGuwahati	Chemical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	2060	2589	GENERAL
2552	IIT(BHU) Varanasi	Pharmaceutical Engineering& Technology (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	2149	2296	GENERAL
2553	IIT(BHU) Varanasi	Pharmaceutical Engineering& Technology (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	3603	3790	GENERAL
2554	IIT(BHU) Varanasi	Pharmaceutical Engineering& Technology (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	11585	14447	GENERAL
2555	IIT(BHU) Varanasi	Pharmaceutical Engineering& Technology (4 Years Bachelor of Technology)	OPEN	Female-Only	21754	24662	GENERAL
2556	IIT(BHU) Varanasi	Pharmaceutical Engineering& Technology (4 Years Bachelor of Technology)	SC	Gender-Neutral	2674	3284	GENERAL
2557	IIT(BHU) Varanasi	Pharmaceutical Engineering& Technology (4 Years Bachelor of Technology)	SC	Female-Only	4244	4323	GENERAL
2558	IIT(BHU) Varanasi	Pharmaceutical Engineering& Technology (4 Years Bachelor of Technology)	ST	Gender-Neutral	1378	1454	GENERAL
2559	IIT(BHU) Varanasi	Pharmaceutical Engineering& Technology (4 Years Bachelor of Technology)	ST	Female-Only	1941	1941	GENERAL
2560	IIT(BHU) Varanasi	Architecture (5 Years Bachelor of Architecture)	OBC-NCL	Gender-Neutral	6799	6900	GENERAL
2561	IIT(BHU) Varanasi	Architecture (5 Years Bachelor of Architecture)	GEN-EWS	Gender-Neutral	3063	3104	GENERAL
2562	IIT(BHU) Varanasi	Architecture (5 Years Bachelor of Architecture)	OPEN	Gender-Neutral	18471	20792	GENERAL
2563	IIT(BHU) Varanasi	Architecture (5 Years Bachelor of Architecture)	OPEN	Female-Only	26381	28481	GENERAL
2564	IIT(BHU) Varanasi	Architecture (5 Years Bachelor of Architecture)	SC	Gender-Neutral	3305	3488	GENERAL
2565	IIT(BHU) Varanasi	Architecture (5 Years Bachelor of Architecture)	SC	Female-Only	4793	4793	GENERAL
2566	IIT(BHU) Varanasi	Architecture (5 Years Bachelor of Architecture)	ST	Gender-Neutral	1715	1766	GENERAL
2567	IIT(BHU) Varanasi	Industrial Chemistry (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	4438	4859	GENERAL
2568	IIT(BHU) Varanasi	Industrial Chemistry (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	7816	8751	GENERAL
2569	IIT(BHU) Varanasi	Industrial Chemistry (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1862	1905	GENERAL
2570	IIT(BHU) Varanasi	Industrial Chemistry (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	3390	3390	GENERAL
2571	IIT(BHU) Varanasi	Industrial Chemistry (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	9815	12721	GENERAL
2572	IIT(BHU) Varanasi	Industrial Chemistry (4 Years Bachelor of Technology)	OPEN	Female-Only	20141	21701	GENERAL
2573	IIT(BHU) Varanasi	Industrial Chemistry (4 Years Bachelor of Technology)	SC	Gender-Neutral	2705	2936	GENERAL
2574	IIT(BHU) Varanasi	Industrial Chemistry (4 Years Bachelor of Technology)	SC	Female-Only	3699	3699	GENERAL
2575	IIT(BHU) Varanasi	Industrial Chemistry (4 Years Bachelor of Technology)	ST	Gender-Neutral	1457	1457	GENERAL
2576	IIT(BHU) Varanasi	Biochemical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	4723	5337	GENERAL
2577	IIT(BHU) Varanasi	Biochemical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	8973	8973	GENERAL
2578	IIT(BHU) Varanasi	Biochemical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1810	1826	GENERAL
2579	IIT(BHU) Varanasi	Biochemical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	11390	13255	GENERAL
2580	IIT(BHU) Varanasi	Biochemical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	20988	21087	GENERAL
2581	IIT(BHU) Varanasi	Biochemical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	2775	3085	GENERAL
2582	IIT(BHU) Varanasi	Biochemical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	4279	4279	GENERAL
2583	IIT(BHU) Varanasi	Biochemical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	1340	1427	GENERAL
2584	IIT(BHU) Varanasi	Bioengineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	4128	4677	GENERAL
2585	IIT(BHU) Varanasi	Bioengineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	9094	9094	GENERAL
2586	IIT(BHU) Varanasi	Bioengineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1975	2033	GENERAL
2587	IIT(BHU) Varanasi	Bioengineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	11380	12759	GENERAL
2588	IIT(BHU) Varanasi	Bioengineering (4 Years Bachelor of Technology)	OPEN	Female-Only	15513	16058	GENERAL
2589	IIT(BHU) Varanasi	Bioengineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	2863	2918	GENERAL
2590	IIT(BHU) Varanasi	Bioengineering (4 Years Bachelor of Technology)	SC	Female-Only	3626	3626	GENERAL
2591	IIT(BHU) Varanasi	Bioengineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	1371	1371	GENERAL
2592	IIT(BHU) Varanasi	Materials Science and Technology (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	3759	4740	GENERAL
2593	IIT(BHU) Varanasi	Materials Science and Technology (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	7513	7657	GENERAL
2594	IIT(BHU) Varanasi	Materials Science and Technology (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1755	1804	GENERAL
2595	IIT(BHU) Varanasi	Materials Science and Technology (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	3175	3175	GENERAL
2596	IIT(BHU) Varanasi	Materials Science and Technology (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	7517	10851	GENERAL
2597	IIT(BHU) Varanasi	Materials Science and Technology (4 Years Bachelor of Technology)	OPEN	Female-Only	17744	17911	GENERAL
2598	IIT(BHU) Varanasi	Materials Science and Technology (4 Years Bachelor of Technology)	SC	Gender-Neutral	2549	2851	GENERAL
2599	IIT(BHU) Varanasi	Materials Science and Technology (4 Years Bachelor of Technology)	SC	Female-Only	3806	3806	GENERAL
2600	IIT(BHU) Varanasi	Materials Science and Technology (4 Years Bachelor of Technology)	ST	Gender-Neutral	1230	1347	GENERAL
2601	IITGuwahati	Chemical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	2259	2519	GENERAL
2602	IITGuwahati	Chemical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	5545	6044	GENERAL
2603	IITGuwahati	Chemical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	947	1074	GENERAL
2604	IITGuwahati	Chemical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	1970	1985	GENERAL
2605	IITGuwahati	Chemical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	4289	6053	GENERAL
2606	IITGuwahati	Chemical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	10815	12587	GENERAL
2607	IITGuwahati	Chemical Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	201	220	GENERAL
2610	IITGuwahati	Chemical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	591	857	GENERAL
2611	IITGuwahati	Chemical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1462	1462	GENERAL
2612	IITGuwahati	Chemical Science and Technology (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	2355	3161	GENERAL
2613	IITGuwahati	Chemical Science and Technology (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	6462	6793	GENERAL
2614	IITGuwahati	Chemical Science and Technology (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1072	1319	GENERAL
2615	IITGuwahati	Chemical Science and Technology (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2806	2806	GENERAL
2616	IITGuwahati	Chemical Science and Technology (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	6432	7958	GENERAL
2617	IITGuwahati	Chemical Science and Technology (4 Years Bachelor of Technology)	OPEN	Female-Only	13063	15815	GENERAL
2618	IITGuwahati	Chemical Science and Technology (4 Years Bachelor of Technology)	SC	Gender-Neutral	1622	2080	GENERAL
2619	IITGuwahati	Chemical Science and Technology (4 Years Bachelor of Technology)	SC	Female-Only	2782	3318	GENERAL
2620	IITGuwahati	Chemical Science and Technology (4 Years Bachelor of Technology)	ST	Gender-Neutral	823	1049	GENERAL
2621	IITGuwahati	Chemical Science and Technology (4 Years Bachelor of Technology)	ST	Female-Only	1561	1561	GENERAL
2622	IITGuwahati	Civil Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	2689	3439	GENERAL
2623	IITGuwahati	Civil Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	6238	6609	GENERAL
2624	IITGuwahati	Civil Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1189	1379	GENERAL
2625	IITGuwahati	Civil Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2653	2742	GENERAL
2626	IITGuwahati	Civil Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	7268	9021	GENERAL
2627	IITGuwahati	Civil Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	13434	16742	GENERAL
2628	IITGuwahati	Civil Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1745	1997	GENERAL
2629	IITGuwahati	Civil Engineering (4 Years Bachelor of Technology)	SC	Female-Only	2748	2980	GENERAL
2630	IITGuwahati	Civil Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	340	749	GENERAL
2631	IITGuwahati	Civil Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1209	1217	GENERAL
2632	IITGuwahati	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	254	336	GENERAL
2633	IITGuwahati	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	918	1302	GENERAL
2634	IITGuwahati	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	19	19	GENERAL
2635	IITGuwahati	Computer Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	99	118	GENERAL
2636	IITGuwahati	Computer Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	389	419	GENERAL
2637	IITGuwahati	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	504	792	GENERAL
2638	IITGuwahati	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	2210	2694	GENERAL
2639	IITGuwahati	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	32	42	GENERAL
2640	IITGuwahati	Computer Science and Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	133	183	GENERAL
2641	IITGuwahati	Computer Science and Engineering (4 Years Bachelor of Technology)	SC	Female-Only	590	665	GENERAL
2642	IITGuwahati	Computer Science and Engineering (4 Years Bachelor of Technology)	SC(PwD)	Gender-Neutral	2	2	PREPARATORY
2643	IITGuwahati	Computer Science and Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	71	99	GENERAL
2644	IITGuwahati	Computer Science and Engineering (4 Years Bachelor of Technology)	ST	Female-Only	272	292	GENERAL
2645	IITGuwahati	Computer Science and Engineering (4 Years Bachelor of Technology)	ST(PwD)	Gender-Neutral	4	4	PREPARATORY
2646	IITGuwahati	Electronics and Communication Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	686	796	GENERAL
2647	IITGuwahati	Electronics and Communication Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	2099	2460	GENERAL
2648	IITGuwahati	Electronics and Communication Engineering (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	31	31	PREPARATORY
2649	IITGuwahati	Electronics and Communication Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	266	301	GENERAL
2650	IITGuwahati	Electronics and Communication Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	741	741	GENERAL
2651	IITGuwahati	Electronics and Communication Engineering (4 Years Bachelor of Technology)	GEN- EWS(PwD)	Female-Only	30	30	PREPARATORY
2652	IITGuwahati	Electronics and Communication Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	1497	1829	GENERAL
2653	IITGuwahati	Electronics and Communication Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	4863	5298	GENERAL
2654	IITGuwahati	Electronics and Communication Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	158	163	GENERAL
2655	IITGuwahati	Electronics and Communication Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	148	499	GENERAL
2656	IITGuwahati	Electronics and Communication Engineering (4 Years Bachelor of Technology)	SC	Female-Only	983	1250	GENERAL
2657	IITGuwahati	Electronics and Communication Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	182	283	GENERAL
2658	IITGuwahati	Electronics and Communication Engineering (4 Years Bachelor of Technology)	ST	Female-Only	589	589	GENERAL
2659	IITGuwahati	Electronics and Electrical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	807	996	GENERAL
2660	IITGuwahati	Electronics and Electrical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	2663	3281	GENERAL
2661	IITGuwahati	Electronics and Electrical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	345	377	GENERAL
2662	IITGuwahati	Electronics and Electrical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	758	758	GENERAL
2663	IITGuwahati	Electronics and Electrical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	1934	2195	GENERAL
2664	IITGuwahati	Electronics and Electrical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	5381	6224	GENERAL
2665	IITGuwahati	Electronics and Electrical Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	191	191	GENERAL
2666	IITGuwahati	Electronics and Electrical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	352	656	GENERAL
2667	IITGuwahati	Electronics and Electrical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	1255	1264	GENERAL
2668	IITGuwahati	Electronics and Electrical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	156	325	GENERAL
2669	IITGuwahati	Electronics and Electrical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	683	683	GENERAL
2670	IITGuwahati	Engineering Physics (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	2627	3406	GENERAL
2671	IITGuwahati	Engineering Physics (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	6468	6923	GENERAL
2672	IITGuwahati	Engineering Physics (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1180	1304	GENERAL
2673	IITGuwahati	Engineering Physics (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2855	2855	GENERAL
2674	IITGuwahati	Engineering Physics (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	4635	7117	GENERAL
2675	IITGuwahati	Engineering Physics (4 Years Bachelor of Technology)	OPEN	Female-Only	11828	13774	GENERAL
2676	IITGuwahati	Engineering Physics (4 Years Bachelor of Technology)	SC	Gender-Neutral	1772	2177	GENERAL
2677	IITGuwahati	Engineering Physics (4 Years Bachelor of Technology)	SC	Female-Only	3320	3394	GENERAL
2678	IITGuwahati	Engineering Physics (4 Years Bachelor of Technology)	ST	Gender-Neutral	1149	1177	GENERAL
2679	IITGuwahati	Engineering Physics (4 Years Bachelor of Technology)	ST	Female-Only	1690	1690	GENERAL
2680	IITGuwahati	Mathematics and Computing (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	470	560	GENERAL
2681	IITGuwahati	Mathematics and Computing (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	1858	2250	GENERAL
2682	IITGuwahati	Mathematics and Computing (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	45	45	GENERAL
2683	IITGuwahati	Mathematics and Computing (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	146	214	GENERAL
2684	IITGuwahati	Mathematics and Computing (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	632	632	GENERAL
2685	IITGuwahati	Mathematics and Computing (4 Years Bachelor of Technology)	GEN- EWS(PwD)	Female-Only	1	1	PREPARATORY
2686	IITGuwahati	Mathematics and Computing (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	899	1276	GENERAL
2687	IITGuwahati	Mathematics and Computing (4 Years Bachelor of Technology)	OPEN	Female-Only	2755	3849	GENERAL
2688	IITGuwahati	Mathematics and Computing (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	28	28	GENERAL
2689	IITGuwahati	Mathematics and Computing (4 Years Bachelor of Technology)	SC	Gender-Neutral	212	343	GENERAL
2690	IITGuwahati	Mathematics and Computing (4 Years Bachelor of Technology)	SC	Female-Only	907	1031	GENERAL
2691	IITGuwahati	Mathematics and Computing (4 Years Bachelor of Technology)	ST	Gender-Neutral	133	225	GENERAL
2692	IITGuwahati	Mathematics and Computing (4 Years Bachelor of Technology)	ST	Female-Only	580	580	GENERAL
2693	IITGuwahati	Mechanical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	1879	2231	GENERAL
2694	IITGuwahati	Mechanical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	5215	5800	GENERAL
2695	IITGuwahati	Mechanical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	700	825	GENERAL
2696	IITGuwahati	Mechanical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	1815	1964	GENERAL
2697	IITGuwahati	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	3984	4892	GENERAL
2698	IITGuwahati	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	8789	12699	GENERAL
2699	IITGuwahati	Mechanical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	664	1240	GENERAL
2700	IITGuwahati	Mechanical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	1841	2519	GENERAL
2701	IITGuwahati	Mechanical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	440	610	GENERAL
2702	IITGuwahati	Mechanical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1385	1471	GENERAL
2703	IITGuwahati	Data Science and Artificial Intelligence (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	388	452	GENERAL
2704	IITGuwahati	Data Science and Artificial Intelligence (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	1490	1604	GENERAL
2705	IITGuwahati	Data Science and Artificial Intelligence (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	51	51	GENERAL
2706	IITGuwahati	Data Science and Artificial Intelligence (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Female-Only	90	90	GENERAL
2707	IITGuwahati	Data Science and Artificial Intelligence (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	120	190	GENERAL
2708	IITGuwahati	Data Science and Artificial Intelligence (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	511	511	GENERAL
2709	IITGuwahati	Data Science and Artificial Intelligence (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	873	1078	GENERAL
2710	IITGuwahati	Data Science and Artificial Intelligence (4 Years Bachelor of Technology)	OPEN	Female-Only	2877	3235	GENERAL
2711	IITGuwahati	Data Science and Artificial Intelligence (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	67	67	GENERAL
2712	IITGuwahati	Data Science and Artificial Intelligence (4 Years Bachelor of Technology)	SC	Gender-Neutral	245	297	GENERAL
2713	IITGuwahati	Data Science and Artificial Intelligence (4 Years Bachelor of Technology)	SC	Female-Only	867	867	GENERAL
2714	IITGuwahati	Data Science and Artificial Intelligence (4 Years Bachelor of Technology)	ST	Gender-Neutral	118	128	GENERAL
2715	IITGuwahati	Data Science and Artificial Intelligence (4 Years Bachelor of Technology)	ST	Female-Only	443	443	GENERAL
2716	IITGuwahati	Biosciences and Bioengineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	3465	4310	GENERAL
2717	IITGuwahati	Biosciences and Bioengineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	7587	8108	GENERAL
2718	IITGuwahati	Biosciences and Bioengineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1504	1661	GENERAL
2719	IITGuwahati	Biosciences and Bioengineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	3116	3331	GENERAL
2720	IITGuwahati	Biosciences and Bioengineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	6303	10727	GENERAL
2721	IITGuwahati	Biosciences and Bioengineering (4 Years Bachelor of Technology)	OPEN	Female-Only	15421	15919	GENERAL
2722	IITGuwahati	Biosciences and Bioengineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	2247	2564	GENERAL
2723	IITGuwahati	Biosciences and Bioengineering (4 Years Bachelor of Technology)	SC	Female-Only	3401	3818	GENERAL
2724	IITGuwahati	Biosciences and Bioengineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	1220	1409	GENERAL
2725	IITGuwahati	Biosciences and Bioengineering (4 Years Bachelor of Technology)	ST	Female-Only	1823	1823	GENERAL
2726	IITGuwahati	Energy Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	2704	2836	GENERAL
2727	IITGuwahati	Energy Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	6346	6346	GENERAL
2728	IITGuwahati	Energy Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1174	1186	GENERAL
2729	IITGuwahati	Energy Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	5870	6610	GENERAL
2730	IITGuwahati	Energy Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	11994	13282	GENERAL
2731	IITGuwahati	Energy Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1550	1588	GENERAL
2732	IITGuwahati	Energy Engineering (4 Years Bachelor of Technology)	SC	Female-Only	3212	3212	GENERAL
2733	IITGuwahati	Energy Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	764	764	GENERAL
2734	IITBhilai	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	1987	2832	GENERAL
2735	IITBhilai	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	3819	4045	GENERAL
2736	IITBhilai	Computer Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	855	996	GENERAL
2737	IITBhilai	Computer Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	1915	1915	GENERAL
2738	IITBhilai	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	4462	7382	GENERAL
2739	IITBhilai	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	10332	12896	GENERAL
2740	IITBhilai	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	234	234	GENERAL
2741	IITBhilai	Computer Science and Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	928	1343	GENERAL
2742	IITBhilai	Computer Science and Engineering (4 Years Bachelor of Technology)	SC	Female-Only	2027	2173	GENERAL
2743	IITBhilai	Computer Science and Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	590	676	GENERAL
2744	IITBhilai	Computer Science and Engineering (4 Years Bachelor of Technology)	ST	Female-Only	803	803	GENERAL
2745	IITBhilai	Electrical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	3566	4149	GENERAL
2746	IITBhilai	Electrical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	6658	7350	GENERAL
2747	IITBhilai	Electrical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1576	1779	GENERAL
2748	IITBhilai	Electrical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2879	2879	GENERAL
2749	IITBhilai	Electrical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	9645	11592	GENERAL
2750	IITBhilai	Electrical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	17806	20173	GENERAL
2751	IITBhilai	Electrical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1645	2290	GENERAL
2752	IITBhilai	Electrical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	3214	3311	GENERAL
2753	IITBhilai	Electrical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	978	1135	GENERAL
2754	IITBhilai	Electrical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1472	1472	GENERAL
2755	IITBhilai	Electronics and Communication Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	2878	3474	GENERAL
2756	IITBhilai	Electronics and Communication Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	4668	6563	GENERAL
2757	IITBhilai	Electronics and Communication Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1253	1347	GENERAL
2758	IITBhilai	Electronics and Communication Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2232	2232	GENERAL
2759	IITBhilai	Electronics and Communication Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	7464	9668	GENERAL
2760	IITBhilai	Electronics and Communication Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	14098	16191	GENERAL
2761	IITBhilai	Electronics and Communication Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1539	1865	GENERAL
2762	IITBhilai	Electronics and Communication Engineering (4 Years Bachelor of Technology)	SC	Female-Only	2522	2522	GENERAL
2763	IITBhilai	Electronics and Communication Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	788	940	GENERAL
2764	IITBhilai	Mechanical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	4481	4924	GENERAL
2765	IITBhilai	Mechanical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	8890	9522	GENERAL
2766	IITBhilai	Mechanical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	2018	2284	GENERAL
2767	IITBhilai	Mechanical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	3424	3665	GENERAL
2768	IITBhilai	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	11516	14788	GENERAL
2769	IITBhilai	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	21141	23230	GENERAL
2770	IITBhilai	Mechanical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	2559	2846	GENERAL
2771	IITBhilai	Mechanical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	3758	3758	GENERAL
2772	IITBhilai	Mechanical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	1164	1229	GENERAL
2773	IITBhilai	Mechanical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1562	1562	GENERAL
2774	IITBhilai	Materials Science and Metallurgical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	5646	6053	GENERAL
2775	IITBhilai	Materials Science and Metallurgical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	9804	9804	GENERAL
2776	IITBhilai	Materials Science and Metallurgical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	2545	2570	GENERAL
2777	IITBhilai	Materials Science and Metallurgical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	3936	3936	GENERAL
2778	IITBhilai	Materials Science and Metallurgical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	14920	17478	GENERAL
2779	IITBhilai	Materials Science and Metallurgical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	25818	25868	GENERAL
2780	IITBhilai	Materials Science and Metallurgical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	3061	3327	GENERAL
2781	IITBhilai	Materials Science and Metallurgical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	4050	4050	GENERAL
2782	IITBhilai	Materials Science and Metallurgical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	1348	1348	GENERAL
2783	IITBhilai	Materials Science and Metallurgical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1233	1233	GENERAL
2784	IITBhilai	Mechatronics Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	3062	4573	GENERAL
2785	IITBhilai	Mechatronics Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	8909	9054	GENERAL
2786	IITBhilai	Mechatronics Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1854	1887	GENERAL
2787	IITBhilai	Mechatronics Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	10662	12254	GENERAL
2788	IITBhilai	Mechatronics Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	20224	21456	GENERAL
2789	IITBhilai	Mechatronics Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1660	2320	GENERAL
2790	IITBhilai	Mechatronics Engineering (4 Years Bachelor of Technology)	SC	Female-Only	3100	3100	GENERAL
2791	IITBhilai	Mechatronics Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	875	1270	GENERAL
2792	IITBhilai	Data Science and Artificial Intelligence (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	2301	3135	GENERAL
2793	IITBhilai	Data Science and Artificial Intelligence (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	4962	5099	GENERAL
2794	IITBhilai	Data Science and Artificial Intelligence (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1120	1166	GENERAL
2795	IITBhilai	Data Science and Artificial Intelligence (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2063	2063	GENERAL
2796	IITBhilai	Data Science and Artificial Intelligence (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	7001	7934	GENERAL
2797	IITBhilai	Data Science and Artificial Intelligence (4 Years Bachelor of Technology)	OPEN	Female-Only	8600	13039	GENERAL
2798	IITBhilai	Data Science and Artificial Intelligence (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	79	79	PREPARATORY
2799	IITBhilai	Data Science and Artificial Intelligence (4 Years Bachelor of Technology)	OPEN(PwD)	Female-Only	293	293	PREPARATORY
2800	IITBhilai	Data Science and Artificial Intelligence (4 Years Bachelor of Technology)	SC	Gender-Neutral	1374	1548	GENERAL
2801	IITBhilai	Data Science and Artificial Intelligence (4 Years Bachelor of Technology)	SC	Female-Only	2236	2236	GENERAL
2802	IITBhilai	Data Science and Artificial Intelligence (4 Years Bachelor of Technology)	ST	Gender-Neutral	665	680	GENERAL
2803	IITBhilai	Data Science and Artificial Intelligence (4 Years Bachelor of Technology)	ST	Female-Only	905	905	GENERAL
2804	IITGoa	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	1785	2247	GENERAL
2805	IITGoa	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	4193	4459	GENERAL
2806	IITGoa	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	62	62	PREPARATORY
2807	IITGoa	Computer Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	751	847	GENERAL
2808	IITGoa	Computer Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	1895	1895	GENERAL
2809	IITGoa	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	4256	6242	GENERAL
2810	IITGoa	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	11372	12211	GENERAL
2811	IITGoa	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Female-Only	38	38	PREPARATORY
2812	IITGoa	Computer Science and Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	575	1266	GENERAL
2813	IITGoa	Computer Science and Engineering (4 Years Bachelor of Technology)	SC	Female-Only	1969	1969	GENERAL
2814	IITGoa	Computer Science and Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	429	494	GENERAL
2815	IITGoa	Computer Science and Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1030	1030	GENERAL
2816	IITGoa	Electrical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	3371	3680	GENERAL
2817	IITGoa	Electrical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	6634	6763	GENERAL
2818	IITGoa	Electrical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1415	1654	GENERAL
2819	IITGoa	Electrical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2901	2901	GENERAL
2820	IITGoa	Electrical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	8410	10095	GENERAL
2821	IITGoa	Electrical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	16260	20274	GENERAL
2822	IITGoa	Electrical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1756	2033	GENERAL
2823	IITGoa	Electrical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	2854	2854	GENERAL
2824	IITGoa	Electrical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	968	1114	GENERAL
2825	IITGoa	Electrical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1431	1431	GENERAL
2826	IITGoa	Mathematics and Computing (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	2373	3060	GENERAL
2827	IITGoa	Mathematics and Computing (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	4604	5097	GENERAL
2828	IITGoa	Mathematics and Computing (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1033	1167	GENERAL
2829	IITGoa	Mathematics and Computing (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	5436	7932	GENERAL
2830	IITGoa	Mathematics and Computing (4 Years Bachelor of Technology)	OPEN	Female-Only	12652	14787	GENERAL
2831	IITGoa	Mathematics and Computing (4 Years Bachelor of Technology)	SC	Gender-Neutral	1353	1571	GENERAL
2832	IITGoa	Mathematics and Computing (4 Years Bachelor of Technology)	ST	Gender-Neutral	843	974	GENERAL
2833	IITGoa	Mechanical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	4262	4688	GENERAL
2834	IITGoa	Mechanical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	8071	8445	GENERAL
2835	IITGoa	Mechanical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1793	1882	GENERAL
2836	IITGoa	Mechanical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	3242	3242	GENERAL
2837	IITGoa	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	9914	13451	GENERAL
2838	IITGoa	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	20436	21845	GENERAL
2839	IITGoa	Mechanical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	2313	2836	GENERAL
2840	IITGoa	Mechanical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	3255	3412	GENERAL
2841	IITGoa	Mechanical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	1085	1196	GENERAL
2842	IITGoa	Mechanical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1619	1619	GENERAL
2843	IITPalakkad	Civil Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	5021	5841	GENERAL
2844	IITPalakkad	Civil Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	8916	9084	GENERAL
2845	IITPalakkad	Civil Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	2453	2519	GENERAL
2846	IITPalakkad	Civil Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	4120	4120	GENERAL
2847	IITPalakkad	Civil Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	14109	16753	GENERAL
2848	IITPalakkad	Civil Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	21748	26004	GENERAL
2849	IITPalakkad	Civil Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	2429	3024	GENERAL
2850	IITPalakkad	Civil Engineering (4 Years Bachelor of Technology)	SC	Female-Only	3808	3808	GENERAL
2851	IITPalakkad	Civil Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	1172	1172	GENERAL
2852	IITPalakkad	Civil Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1182	1182	GENERAL
2853	IITPalakkad	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	1942	2379	GENERAL
2854	IITPalakkad	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	3301	3301	GENERAL
2855	IITPalakkad	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Female-Only	34	34	PREPARATORY
2856	IITPalakkad	Computer Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	754	792	GENERAL
2857	IITPalakkad	Computer Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	1626	1626	GENERAL
2858	IITPalakkad	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	4530	6454	GENERAL
2859	IITPalakkad	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	6843	8965	GENERAL
2860	IITPalakkad	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	160	160	GENERAL
2861	IITPalakkad	Computer Science and Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	837	1182	GENERAL
2862	IITPalakkad	Computer Science and Engineering (4 Years Bachelor of Technology)	SC	Female-Only	1183	1183	GENERAL
2863	IITPalakkad	Computer Science and Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	444	498	GENERAL
2864	IITPalakkad	Computer Science and Engineering (4 Years Bachelor of Technology)	ST	Female-Only	707	707	GENERAL
2865	IITPalakkad	Electrical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	2764	3719	GENERAL
2866	IITPalakkad	Electrical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	6407	6637	GENERAL
2867	IITPalakkad	Electrical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1475	1536	GENERAL
2868	IITPalakkad	Electrical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2966	2966	GENERAL
2869	IITPalakkad	Electrical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	8020	10396	GENERAL
2870	IITPalakkad	Electrical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	12743	18585	GENERAL
2871	IITPalakkad	Electrical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1639	2108	GENERAL
2872	IITPalakkad	Electrical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	2814	2814	GENERAL
2873	IITPalakkad	Electrical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	775	1099	GENERAL
2874	IITPalakkad	Electrical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1419	1419	GENERAL
2875	IITPalakkad	Mechanical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	3145	4475	GENERAL
2876	IITPalakkad	Mechanical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	8471	8517	GENERAL
2877	IITPalakkad	Mechanical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1917	1981	GENERAL
2878	IITPalakkad	Mechanical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	3499	3499	GENERAL
2879	IITPalakkad	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	8596	12606	GENERAL
2880	IITPalakkad	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	14960	21192	GENERAL
2881	IITPalakkad	Mechanical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	2358	2714	GENERAL
2882	IITPalakkad	Mechanical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	3187	3187	GENERAL
2883	IITPalakkad	Mechanical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	1145	1148	GENERAL
2884	IITPalakkad	Mechanical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1611	1611	GENERAL
2885	IITPalakkad	Data Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	2584	3120	GENERAL
2886	IITPalakkad	Data Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	4673	4821	GENERAL
2887	IITPalakkad	Data Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1103	1175	GENERAL
2888	IITPalakkad	Data Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	1937	1937	GENERAL
2889	IITPalakkad	Data Science and Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	6845	8640	GENERAL
2890	IITPalakkad	Data Science and Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	10280	12097	GENERAL
2891	IITPalakkad	Data Science and Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1446	1691	GENERAL
2892	IITPalakkad	Data Science and Engineering (4 Years Bachelor of Technology)	SC	Female-Only	2442	2442	GENERAL
2893	IITPalakkad	Data Science and Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	526	612	GENERAL
2894	IITPalakkad	Data Science and Engineering (4 Years Bachelor of Technology)	ST	Female-Only	870	870	GENERAL
2895	IITTirupati	Chemical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	4554	5522	GENERAL
2896	IITTirupati	Chemical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	7450	7705	GENERAL
2897	IITTirupati	Chemical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	2116	2434	GENERAL
2898	IITTirupati	Chemical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	3210	3210	GENERAL
2899	IITTirupati	Chemical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	12799	15636	GENERAL
2900	IITTirupati	Chemical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	17851	21967	GENERAL
2901	IITTirupati	Chemical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	2806	3060	GENERAL
2902	IITTirupati	Chemical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	3165	3165	GENERAL
2903	IITTirupati	Chemical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	1290	1298	GENERAL
2904	IITTirupati	Civil Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	4842	5495	GENERAL
2905	IITTirupati	Civil Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	8013	8294	GENERAL
2906	IITTirupati	Civil Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	2354	2428	GENERAL
2907	IITTirupati	Civil Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	3803	3803	GENERAL
2908	IITTirupati	Civil Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	8956	16548	GENERAL
2909	IITTirupati	Civil Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	20635	24725	GENERAL
2910	IITTirupati	Civil Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	2332	2966	GENERAL
2911	IITTirupati	Civil Engineering (4 Years Bachelor of Technology)	SC	Female-Only	2656	2656	GENERAL
2912	IITTirupati	Civil Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	923	1074	GENERAL
2913	IITTirupati	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	1579	2113	GENERAL
2914	IITTirupati	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	2134	2675	GENERAL
2915	IITTirupati	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Female-Only	97	97	PREPARATORY
2916	IITTirupati	Computer Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	596	733	GENERAL
2917	IITTirupati	Computer Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	1034	1034	GENERAL
2918	IITTirupati	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	1916	5034	GENERAL
2919	IITTirupati	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	5686	8459	GENERAL
2920	IITTirupati	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	167	167	GENERAL
2921	IITTirupati	Computer Science and Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	592	1018	GENERAL
2922	IITTirupati	Computer Science and Engineering (4 Years Bachelor of Technology)	SC	Female-Only	1156	1664	GENERAL
2923	IITTirupati	Computer Science and Engineering (4 Years Bachelor of Technology)	SC(PwD)	Gender-Neutral	3	3	PREPARATORY
2924	IITTirupati	Computer Science and Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	383	553	GENERAL
2925	IITTirupati	Electrical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	2639	3580	GENERAL
2926	IITTirupati	Electrical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	5141	6080	GENERAL
2927	IITTirupati	Electrical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1176	1418	GENERAL
2928	IITTirupati	Electrical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2400	2400	GENERAL
2929	IITTirupati	Electrical Engineering (4 Years Bachelor of Technology)	GEN- EWS(PwD)	Gender-Neutral	37	37	PREPARATORY
2930	IITTirupati	Electrical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	5098	9468	GENERAL
2931	IITTirupati	Electrical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	13602	15060	GENERAL
2932	IITTirupati	Electrical Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	228	228	GENERAL
2933	IITTirupati	Electrical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1681	2016	GENERAL
2934	IITTirupati	Electrical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	2288	2384	GENERAL
2935	IITTirupati	Electrical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	715	898	GENERAL
2936	IITTirupati	Engineering Physics (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	4689	5055	GENERAL
2937	IITTirupati	Engineering Physics (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	2183	2183	GENERAL
2938	IITTirupati	Engineering Physics (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	10165	12915	GENERAL
2939	IITTirupati	Engineering Physics (4 Years Bachelor of Technology)	OPEN	Female-Only	16299	16299	GENERAL
2940	IITTirupati	Engineering Physics (4 Years Bachelor of Technology)	SC	Gender-Neutral	3091	3091	GENERAL
2941	IITTirupati	Engineering Physics (4 Years Bachelor of Technology)	SC	Female-Only	3744	3744	GENERAL
2942	IITTirupati	Engineering Physics (4 Years Bachelor of Technology)	ST	Gender-Neutral	1376	1376	GENERAL
2943	IITTirupati	Mechanical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	3736	4355	GENERAL
2944	IITTirupati	Mechanical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	7461	8018	GENERAL
2945	IITTirupati	Mechanical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1604	1913	GENERAL
2946	IITTirupati	Mechanical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	3211	3211	GENERAL
2947	IITTirupati	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	9551	12143	GENERAL
2948	IITTirupati	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	16542	20391	GENERAL
2949	IITTirupati	Mechanical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1868	2491	GENERAL
2950	IITTirupati	Mechanical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	820	1059	GENERAL
2951	IITTirupati	Mechanical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1615	1615	GENERAL
2952	IITJammu	Chemical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	4515	5939	GENERAL
2953	IITJammu	Chemical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	9381	9664	GENERAL
2954	IITJammu	Chemical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	2488	2547	GENERAL
2955	IITJammu	Chemical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	3942	3942	GENERAL
2956	IITJammu	Chemical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	13386	16284	GENERAL
2957	IITJammu	Chemical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	22711	24291	GENERAL
2958	IITJammu	Chemical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	2867	3142	GENERAL
2959	IITJammu	Chemical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	4117	4117	GENERAL
2960	IITJammu	Chemical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	1355	1398	GENERAL
2961	IITJammu	Chemical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1926	1926	GENERAL
2962	IITJammu	Civil Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	5512	5886	GENERAL
2963	IITJammu	Civil Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	9830	9831	GENERAL
2964	IITJammu	Civil Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	2557	2602	GENERAL
2965	IITJammu	Civil Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	3966	3966	GENERAL
2966	IITJammu	Civil Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	15448	17263	GENERAL
2967	IITJammu	Civil Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	25908	26767	GENERAL
2968	IITJammu	Civil Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	2747	3123	GENERAL
2969	IITJammu	Civil Engineering (4 Years Bachelor of Technology)	SC	Female-Only	3865	3865	GENERAL
2970	IITJammu	Civil Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	1041	1244	GENERAL
2971	IITJammu	Civil Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1833	1833	GENERAL
2972	IITJammu	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	2057	2736	GENERAL
2973	IITJammu	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	5067	5225	GENERAL
2974	IITJammu	Computer Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	783	1015	GENERAL
2975	IITJammu	Computer Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2449	2449	GENERAL
2976	IITJammu	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	4704	6651	GENERAL
2977	IITJammu	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	9950	11104	GENERAL
2978	IITJammu	Computer Science and Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1210	1630	GENERAL
2979	IITJammu	Computer Science and Engineering (4 Years Bachelor of Technology)	SC	Female-Only	1961	1961	GENERAL
2980	IITJammu	Computer Science and Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	729	771	GENERAL
2981	IITJammu	Electrical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	3435	4230	GENERAL
2982	IITJammu	Electrical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	6925	8157	GENERAL
2983	IITJammu	Electrical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1759	1812	GENERAL
2984	IITJammu	Electrical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	3379	3379	GENERAL
2985	IITJammu	Electrical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	9759	11399	GENERAL
2986	IITJammu	Electrical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	16793	19155	GENERAL
2987	IITJammu	Electrical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	2100	2368	GENERAL
2988	IITJammu	Electrical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	2743	2743	GENERAL
2989	IITJammu	Electrical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	998	1058	GENERAL
2990	IITJammu	Engineering Physics (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	5630	6065	GENERAL
2991	IITJammu	Engineering Physics (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	9469	9469	GENERAL
2992	IITJammu	Engineering Physics (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	2528	2558	GENERAL
2993	IITJammu	Engineering Physics (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	13029	15917	GENERAL
2994	IITJammu	Engineering Physics (4 Years Bachelor of Technology)	OPEN	Female-Only	23652	24772	GENERAL
2995	IITJammu	Engineering Physics (4 Years Bachelor of Technology)	SC	Gender-Neutral	3088	3265	GENERAL
2996	IITJammu	Engineering Physics (4 Years Bachelor of Technology)	SC	Female-Only	4147	4147	GENERAL
2997	IITJammu	Engineering Physics (4 Years Bachelor of Technology)	ST	Gender-Neutral	1555	1555	GENERAL
2998	IITJammu	Engineering Physics (4 Years Bachelor of Technology)	ST	Female-Only	2108	2108	GENERAL
2999	IITJammu	Mathematics and Computing (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	2987	3289	GENERAL
3000	IITJammu	Mathematics and Computing (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	6284	7085	GENERAL
3001	IITJammu	Mathematics and Computing (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1088	1428	GENERAL
3002	IITJammu	Mathematics and Computing (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	7000	8559	GENERAL
3003	IITJammu	Mathematics and Computing (4 Years Bachelor of Technology)	OPEN	Female-Only	13000	16599	GENERAL
3004	IITJammu	Mathematics and Computing (4 Years Bachelor of Technology)	SC	Gender-Neutral	1794	1908	GENERAL
3005	IITJammu	Mathematics and Computing (4 Years Bachelor of Technology)	SC	Female-Only	2827	3523	GENERAL
3006	IITJammu	Mathematics and Computing (4 Years Bachelor of Technology)	ST	Gender-Neutral	1025	1179	GENERAL
3007	IITJammu	Mechanical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	4661	5235	GENERAL
3008	IITJammu	Mechanical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	8757	9537	GENERAL
3009	IITJammu	Mechanical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	2046	2276	GENERAL
3010	IITJammu	Mechanical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	3874	3874	GENERAL
3011	IITJammu	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	11301	14453	GENERAL
3012	IITJammu	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	19472	23611	GENERAL
3013	IITJammu	Mechanical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	2484	2795	GENERAL
3014	IITJammu	Mechanical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	3864	3864	GENERAL
3015	IITJammu	Mechanical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	1178	1222	GENERAL
3016	IITJammu	Mechanical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	2021	2021	GENERAL
3017	IITJammu	Materials Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	5936	6153	GENERAL
3018	IITJammu	Materials Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	10183	10345	GENERAL
3019	IITJammu	Materials Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	2609	2665	GENERAL
3020	IITJammu	Materials Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	4238	4238	GENERAL
3021	IITJammu	Materials Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	16833	18156	GENERAL
3022	IITJammu	Materials Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	26085	26645	GENERAL
3023	IITJammu	Materials Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	3234	3346	GENERAL
3024	IITJammu	Materials Engineering (4 Years Bachelor of Technology)	SC	Female-Only	4386	4386	GENERAL
3025	IITJammu	Materials Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	1304	1537	GENERAL
3026	IITJammu	Materials Engineering (4 Years Bachelor of Technology)	ST	Female-Only	2058	2058	GENERAL
3027	IITDharwad	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	2273	2603	GENERAL
3028	IITDharwad	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	4021	4431	GENERAL
3029	IITDharwad	Computer Science and Engineering (4 Years Bachelor of Technology)	OBC-NCL(PwD)	Gender-Neutral	36	36	PREPARATORY
3030	IITDharwad	Computer Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	819	850	GENERAL
3031	IITDharwad	Computer Science and Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	1608	1608	GENERAL
3032	IITDharwad	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	4742	7208	GENERAL
3033	IITDharwad	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	8455	10860	GENERAL
3034	IITDharwad	Computer Science and Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	110	110	GENERAL
3035	IITDharwad	Computer Science and Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	905	1367	GENERAL
3036	IITDharwad	Computer Science and Engineering (4 Years Bachelor of Technology)	SC	Female-Only	1905	2052	GENERAL
3037	IITDharwad	Computer Science and Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	233	574	GENERAL
3038	IITDharwad	Computer Science and Engineering (4 Years Bachelor of Technology)	ST	Female-Only	808	808	GENERAL
3039	IITDharwad	Electronics and Communication Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	2986	3510	GENERAL
3040	IITDharwad	Electronics and Communication Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	5384	5960	GENERAL
3041	IITDharwad	Electronics and Communication Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1244	1462	GENERAL
3042	IITDharwad	Electronics and Communication Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2476	2476	GENERAL
3043	IITDharwad	Electronics and Communication Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	7720	9476	GENERAL
3044	IITDharwad	Electronics and Communication Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	12798	15997	GENERAL
3045	IITDharwad	Electronics and Communication Engineering (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	42	42	PREPARATORY
3046	IITDharwad	Electronics and Communication Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1469	1673	GENERAL
3047	IITDharwad	Electronics and Communication Engineering (4 Years Bachelor of Technology)	SC	Female-Only	2267	2267	GENERAL
3048	IITDharwad	Electronics and Communication Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	797	946	GENERAL
3049	IITDharwad	Electronics and Communication Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1002	1002	GENERAL
3050	IITDharwad	Engineering Physics (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	4861	5959	GENERAL
3051	IITDharwad	Engineering Physics (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	9349	9612	GENERAL
3052	IITDharwad	Engineering Physics (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	2177	2299	GENERAL
3053	IITDharwad	Engineering Physics (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	3647	3647	GENERAL
3054	IITDharwad	Engineering Physics (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	13180	15353	GENERAL
3055	IITDharwad	Engineering Physics (4 Years Bachelor of Technology)	OPEN	Female-Only	21963	22094	GENERAL
3056	IITDharwad	Engineering Physics (4 Years Bachelor of Technology)	SC	Gender-Neutral	3040	3332	GENERAL
3057	IITDharwad	Engineering Physics (4 Years Bachelor of Technology)	SC	Female-Only	3835	3835	GENERAL
3058	IITDharwad	Engineering Physics (4 Years Bachelor of Technology)	ST	Gender-Neutral	1466	1480	GENERAL
3059	IITDharwad	Mathematics and Computing (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	2362	3178	GENERAL
3060	IITDharwad	Mathematics and Computing (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	5463	5470	GENERAL
3061	IITDharwad	Mathematics and Computing (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1102	1193	GENERAL
3062	IITDharwad	Mathematics and Computing (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	1926	1926	GENERAL
3063	IITDharwad	Mathematics and Computing (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	7381	8222	GENERAL
3064	IITDharwad	Mathematics and Computing (4 Years Bachelor of Technology)	OPEN	Female-Only	12015	12405	GENERAL
3065	IITDharwad	Mathematics and Computing (4 Years Bachelor of Technology)	OPEN(PwD)	Gender-Neutral	137	137	PREPARATORY
3066	IITDharwad	Mathematics and Computing (4 Years Bachelor of Technology)	SC	Gender-Neutral	1538	1777	GENERAL
3067	IITDharwad	Mathematics and Computing (4 Years Bachelor of Technology)	SC	Female-Only	2208	2208	GENERAL
3068	IITDharwad	Mathematics and Computing (4 Years Bachelor of Technology)	ST	Gender-Neutral	909	1026	GENERAL
3069	IITDharwad	Mechanical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	4422	5174	GENERAL
3070	IITDharwad	Mechanical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	8099	8844	GENERAL
3071	IITDharwad	Mechanical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	2000	2134	GENERAL
3072	IITDharwad	Mechanical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	3310	3310	GENERAL
3073	IITDharwad	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	11721	14852	GENERAL
3074	IITDharwad	Mechanical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	16959	22350	GENERAL
3075	IITDharwad	Mechanical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	2441	2789	GENERAL
3076	IITDharwad	Mechanical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	3390	3508	GENERAL
3077	IITDharwad	Mechanical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	1169	1213	GENERAL
3078	IITDharwad	Mechanical Engineering (4 Years Bachelor of Technology)	ST	Female-Only	1725	1725	GENERAL
3079	IITDharwad	Civil and Infrastructure Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	5796	5868	GENERAL
3080	IITDharwad	Civil and Infrastructure Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	8085	9519	GENERAL
3081	IITDharwad	Civil and Infrastructure Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	2526	2590	GENERAL
3082	IITDharwad	Civil and Infrastructure Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	3872	3872	GENERAL
3083	IITDharwad	Civil and Infrastructure Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	16126	17472	GENERAL
3084	IITDharwad	Civil and Infrastructure Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	24028	25304	GENERAL
3085	IITDharwad	Civil and Infrastructure Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	2992	3098	GENERAL
3086	IITDharwad	Civil and Infrastructure Engineering (4 Years Bachelor of Technology)	SC	Female-Only	3809	3809	GENERAL
3087	IITDharwad	Civil and Infrastructure Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	1119	1240	GENERAL
3088	IITDharwad	Electrical and Electronics Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	3595	4020	GENERAL
3089	IITDharwad	Electrical and Electronics Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	6540	7036	GENERAL
3090	IITDharwad	Electrical and Electronics Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	1489	1502	GENERAL
3091	IITDharwad	Electrical and Electronics Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	2755	2755	GENERAL
3092	IITDharwad	Electrical and Electronics Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	9720	11051	GENERAL
3093	IITDharwad	Electrical and Electronics Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	13284	16098	GENERAL
3094	IITDharwad	Electrical and Electronics Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	1626	1900	GENERAL
3095	IITDharwad	Electrical and Electronics Engineering (4 Years Bachelor of Technology)	SC	Female-Only	2701	2701	GENERAL
3096	IITDharwad	Electrical and Electronics Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	891	1077	GENERAL
3097	IITDharwad	Interdisciplinary Sciences (5 Years Bachelor of Science and Master of Science (Dual Degree))	OBC-NCL	Gender-Neutral	6100	6478	GENERAL
3098	IITDharwad	Interdisciplinary Sciences (5 Years Bachelor of Science and Master of Science (Dual Degree))	OBC-NCL	Female-Only	10541	10692	GENERAL
3099	IITDharwad	Interdisciplinary Sciences (5 Years Bachelor of Science and Master of Science (Dual Degree))	GEN-EWS	Gender-Neutral	2693	2752	GENERAL
3100	IITDharwad	Interdisciplinary Sciences (5 Years Bachelor of Science and Master of Science (Dual Degree))	GEN-EWS	Female-Only	4191	4191	GENERAL
3101	IITDharwad	Interdisciplinary Sciences (5 Years Bachelor of Science and Master of Science (Dual Degree))	OPEN	Gender-Neutral	16198	18979	GENERAL
3102	IITDharwad	Interdisciplinary Sciences (5 Years Bachelor of Science and Master of Science (Dual Degree))	OPEN	Female-Only	23364	26886	GENERAL
3103	IITDharwad	Interdisciplinary Sciences (5 Years Bachelor of Science and Master of Science (Dual Degree))	SC	Gender-Neutral	3381	3492	GENERAL
3104	IITDharwad	Interdisciplinary Sciences (5 Years Bachelor of Science and Master of Science (Dual Degree))	SC	Female-Only	4476	4518	GENERAL
3105	IITDharwad	Interdisciplinary Sciences (5 Years Bachelor of Science and Master of Science (Dual Degree))	ST	Gender-Neutral	1520	1579	GENERAL
3106	IITDharwad	Interdisciplinary Sciences (5 Years Bachelor of Science and Master of Science (Dual Degree))	ST	Female-Only	2134	2134	GENERAL
3107	IITDharwad	Chemical and Biochemical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Gender-Neutral	5564	6021	GENERAL
3108	IITDharwad	Chemical and Biochemical Engineering (4 Years Bachelor of Technology)	OBC-NCL	Female-Only	9345	9938	GENERAL
3109	IITDharwad	Chemical and Biochemical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Gender-Neutral	2534	2567	GENERAL
3110	IITDharwad	Chemical and Biochemical Engineering (4 Years Bachelor of Technology)	GEN-EWS	Female-Only	3941	3941	GENERAL
3111	IITDharwad	Chemical and Biochemical Engineering (4 Years Bachelor of Technology)	OPEN	Gender-Neutral	14722	16680	GENERAL
3112	IITDharwad	Chemical and Biochemical Engineering (4 Years Bachelor of Technology)	OPEN	Female-Only	25164	25533	GENERAL
3113	IITDharwad	Chemical and Biochemical Engineering (4 Years Bachelor of Technology)	SC	Gender-Neutral	2490	3274	GENERAL
3114	IITDharwad	Chemical and Biochemical Engineering (4 Years Bachelor of Technology)	SC	Female-Only	3759	3759	GENERAL
3115	IITDharwad	Chemical and Biochemical Engineering (4 Years Bachelor of Technology)	ST	Gender-Neutral	1468	1479	GENERAL
\.


--
-- Name: seat_allocation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.seat_allocation_id_seq', 3115, true);


--
-- Name: seat_allocation seat_allocation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seat_allocation
    ADD CONSTRAINT seat_allocation_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

\unrestrict lVbk2uqZWIpAgbrHmj3o4wO4DF9lSSmMANfOIjzlC0Dt4NrbZbfmrIdEs7dDaTi
