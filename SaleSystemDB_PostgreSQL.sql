--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5
-- Dumped by pg_dump version 11.5

-- Started on 2019-09-10 14:31:53

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

DROP DATABASE "SaleSystemDB";
--
-- TOC entry 2850 (class 1262 OID 16393)
-- Name: SaleSystemDB; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "SaleSystemDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.932' LC_CTYPE = 'English_United States.932';


ALTER DATABASE "SaleSystemDB" OWNER TO postgres;

\connect "SaleSystemDB"

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

SET default_with_oids = false;

--
-- TOC entry 203 (class 1259 OID 16430)
-- Name: Auth; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Auth" (
    "authId" integer NOT NULL,
    token text,
    expiration timestamp with time zone,
    "userId" integer NOT NULL
);


ALTER TABLE public."Auth" OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16428)
-- Name: Auth_authId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Auth" ALTER COLUMN "authId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Auth_authId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 201 (class 1259 OID 16413)
-- Name: Order; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Order" (
    "orderId" integer NOT NULL,
    "userId" integer NOT NULL,
    "productId" integer NOT NULL,
    quantity integer
);


ALTER TABLE public."Order" OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16411)
-- Name: Order_orderId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Order" ALTER COLUMN "orderId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Order_orderId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 199 (class 1259 OID 16403)
-- Name: Product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Product" (
    "productId" integer NOT NULL,
    "productName" character varying(100),
    description text,
    price numeric,
    unit character varying(50)
);


ALTER TABLE public."Product" OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 16401)
-- Name: Product_productId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Product" ALTER COLUMN "productId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Product_productId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 197 (class 1259 OID 16396)
-- Name: User; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."User" (
    "userId" integer NOT NULL,
    username character varying(50),
    password character varying(100)
);


ALTER TABLE public."User" OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 16394)
-- Name: User_userId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."User" ALTER COLUMN "userId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."User_userId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 2844 (class 0 OID 16430)
-- Dependencies: 203
-- Data for Name: Auth; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Auth" ("authId", token, expiration, "userId") OVERRIDING SYSTEM VALUE VALUES (1, '3aabc9f8-f75b-4b47-821f-c704eb6e212c', '2019-09-06 16:12:13.948986+07', 1);
INSERT INTO public."Auth" ("authId", token, expiration, "userId") OVERRIDING SYSTEM VALUE VALUES (2, '76eac006-775d-43e5-87fa-888cab370408', '2019-09-06 16:13:34.562549+07', 1);
INSERT INTO public."Auth" ("authId", token, expiration, "userId") OVERRIDING SYSTEM VALUE VALUES (3, '81d9c8d5-e736-4e91-8b16-cc66c458a2cb', '2019-09-06 16:30:37.330203+07', 1);
INSERT INTO public."Auth" ("authId", token, expiration, "userId") OVERRIDING SYSTEM VALUE VALUES (4, 'a79a263d-3c00-4de1-9cd3-b8caaa274221', '2019-09-06 16:35:16.462918+07', 1);
INSERT INTO public."Auth" ("authId", token, expiration, "userId") OVERRIDING SYSTEM VALUE VALUES (5, 'b3e99e65-ca78-48af-91d9-0a23dfa9fe92', '2019-09-06 16:46:11.372481+07', 1);
INSERT INTO public."Auth" ("authId", token, expiration, "userId") OVERRIDING SYSTEM VALUE VALUES (6, '18228f30-4943-47e5-a760-f0f4f43377fd', '2019-09-06 16:47:07.285925+07', 1);
INSERT INTO public."Auth" ("authId", token, expiration, "userId") OVERRIDING SYSTEM VALUE VALUES (7, 'b249ef20-b0b0-4b90-af70-8c06d9120cea', '2019-09-06 16:55:29.537794+07', 2);
INSERT INTO public."Auth" ("authId", token, expiration, "userId") OVERRIDING SYSTEM VALUE VALUES (8, '63a0a1fa-1200-4b1d-a52b-07a39e954024', '2019-09-06 17:00:58.835329+07', 1);
INSERT INTO public."Auth" ("authId", token, expiration, "userId") OVERRIDING SYSTEM VALUE VALUES (9, '4d35ba14-b92d-4aa7-b0a7-8a9ecf0cabd5', '2019-09-06 17:02:28.995974+07', 2);
INSERT INTO public."Auth" ("authId", token, expiration, "userId") OVERRIDING SYSTEM VALUE VALUES (10, 'e7bf8ea6-5a82-44e1-91e9-b9743d26054e', '2019-09-06 17:07:26.512634+07', 1);
INSERT INTO public."Auth" ("authId", token, expiration, "userId") OVERRIDING SYSTEM VALUE VALUES (11, '7fb79b6c-b857-4b5a-bdfd-8d2c21ae2779', '2019-09-06 17:22:02.578331+07', 1);
INSERT INTO public."Auth" ("authId", token, expiration, "userId") OVERRIDING SYSTEM VALUE VALUES (12, '538d53a4-5a5a-4400-a6fb-fc64b586b62e', '2019-09-06 17:31:08.249253+07', 1);
INSERT INTO public."Auth" ("authId", token, expiration, "userId") OVERRIDING SYSTEM VALUE VALUES (13, '3606e726-a616-46ef-a817-3d91462aed7d', '2019-09-06 17:34:50.337134+07', 1);
INSERT INTO public."Auth" ("authId", token, expiration, "userId") OVERRIDING SYSTEM VALUE VALUES (14, '7ce24740-c103-4fd8-ad5d-ac137ac07f8c', '2019-09-06 17:36:00.741053+07', 1);
INSERT INTO public."Auth" ("authId", token, expiration, "userId") OVERRIDING SYSTEM VALUE VALUES (15, 'd9b570b8-86e7-4e18-8217-26d2b8883716', '2019-09-06 17:38:05.813614+07', 1);
INSERT INTO public."Auth" ("authId", token, expiration, "userId") OVERRIDING SYSTEM VALUE VALUES (16, 'a8314f43-d39d-4e7f-ba48-06b99cc59234', '2019-09-06 17:41:49.964505+07', 1);
INSERT INTO public."Auth" ("authId", token, expiration, "userId") OVERRIDING SYSTEM VALUE VALUES (17, 'de22229e-58e6-469f-9cda-47f509954ee2', '2019-09-06 17:47:11.111816+07', 1);
INSERT INTO public."Auth" ("authId", token, expiration, "userId") OVERRIDING SYSTEM VALUE VALUES (18, '1d79f453-fcff-4ca7-8964-e6315ad2e4e4', '2019-09-06 17:58:50.963355+07', 2);
INSERT INTO public."Auth" ("authId", token, expiration, "userId") OVERRIDING SYSTEM VALUE VALUES (19, '1bdcea2e-bedc-48a1-b76f-0eebd762b049', '2019-09-06 18:10:06.055188+07', 1);
INSERT INTO public."Auth" ("authId", token, expiration, "userId") OVERRIDING SYSTEM VALUE VALUES (20, '267f23ad-830b-401b-bce5-e3d764af688f', '2019-09-06 18:12:21.923744+07', 1);
INSERT INTO public."Auth" ("authId", token, expiration, "userId") OVERRIDING SYSTEM VALUE VALUES (21, 'b877adc3-f9b3-40f3-93dc-174363b86820', '2019-09-09 21:25:37.961273+07', 1);
INSERT INTO public."Auth" ("authId", token, expiration, "userId") OVERRIDING SYSTEM VALUE VALUES (22, '38d691d3-9554-4542-a2b9-d2419df5bfc0', '2019-09-10 10:08:34.051216+07', 1);
INSERT INTO public."Auth" ("authId", token, expiration, "userId") OVERRIDING SYSTEM VALUE VALUES (23, 'a491fad3-fe76-439c-8862-f7e05aa31dcd', '2019-09-10 11:02:19.328673+07', 1);
INSERT INTO public."Auth" ("authId", token, expiration, "userId") OVERRIDING SYSTEM VALUE VALUES (24, '4e37e838-bfac-4c7d-9efc-7f77f3d48915', '2019-09-10 11:06:47.053355+07', 1);
INSERT INTO public."Auth" ("authId", token, expiration, "userId") OVERRIDING SYSTEM VALUE VALUES (25, '672e52e1-e2c7-492a-a955-aa94107824b3', '2019-09-10 15:09:58.952182+07', 1);


--
-- TOC entry 2842 (class 0 OID 16413)
-- Dependencies: 201
-- Data for Name: Order; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Order" ("orderId", "userId", "productId", quantity) OVERRIDING SYSTEM VALUE VALUES (1, 1, 1, 5);
INSERT INTO public."Order" ("orderId", "userId", "productId", quantity) OVERRIDING SYSTEM VALUE VALUES (2, 1, 3, 3);
INSERT INTO public."Order" ("orderId", "userId", "productId", quantity) OVERRIDING SYSTEM VALUE VALUES (3, 2, 3, 5);
INSERT INTO public."Order" ("orderId", "userId", "productId", quantity) OVERRIDING SYSTEM VALUE VALUES (4, 2, 1, 7);


--
-- TOC entry 2840 (class 0 OID 16403)
-- Dependencies: 199
-- Data for Name: Product; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Product" ("productId", "productName", description, price, unit) OVERRIDING SYSTEM VALUE VALUES (1, 'Coca Cola', 'Coca-Cola, or Coke, is a carbonated soft drink manufactured by The Coca-Cola Company. Originally intended as a patent medicine, it was invented in the late 19th century by John Stith Pemberton and was bought out by businessman Asa Griggs Candler, whose marketing tactics led Coca-Cola to its dominance of the world soft-drink market throughout the 20th century. The drink''s name refers to two of its original ingredients: coca leaves, and kola nuts (a source of caffeine). The current formula of Coca-Cola remains a trade secret, although a variety of reported recipes and experimental recreations have been published.', 5000, 'Bottle');
INSERT INTO public."Product" ("productId", "productName", description, price, unit) OVERRIDING SYSTEM VALUE VALUES (2, 'Pepsi', 'Pepsi is a carbonated soft drink manufactured by PepsiCo. Originally created and developed in 1893 by Caleb Bradham and introduced as Brad''s Drink, it was renamed as Pepsi-Cola on August 28, 1898, and then as Pepsi in 1961.', 6000, 'Bottle');
INSERT INTO public."Product" ("productId", "productName", description, price, unit) OVERRIDING SYSTEM VALUE VALUES (3, 'Red Bull', 'Red Bull is an energy drink sold by Red Bull GmbH, an Austrian company created in 1987. Red Bull has the highest market share of any energy drink in the world, with 6.790 billion cans sold in a year (as of 2018).', 10000, 'Can');
INSERT INTO public."Product" ("productId", "productName", description, price, unit) OVERRIDING SYSTEM VALUE VALUES (4, 'Vinamilk', 'Vinamilk is the largest dairy company in Vietnam. Based on the UNDP 2007 Top 200 largest firms in Vietnam report, it is also the 15th largest company in Vietnam and the most valuable public company listed in Vietnam. In 2010, it is the first company in Vietnam to be included in the Forbes Asias 200 Best Under A Billion list that highlights 200 top-performing small- and mid-sized companies with annual revenue under US$1 billion.In 2010, it is the first company in Vietnam to be included in the Forbes Asias 200 Best Under A Billion list that highlights 200 top-performing small- and mid-sized companies with annual revenue under US$1 billion.', 9000, 'Carton');


--
-- TOC entry 2838 (class 0 OID 16396)
-- Dependencies: 197
-- Data for Name: User; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."User" ("userId", username, password) OVERRIDING SYSTEM VALUE VALUES (1, 'admin', 'pass');
INSERT INTO public."User" ("userId", username, password) OVERRIDING SYSTEM VALUE VALUES (2, 'administrator', 'password');


--
-- TOC entry 2851 (class 0 OID 0)
-- Dependencies: 202
-- Name: Auth_authId_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Auth_authId_seq"', 25, true);


--
-- TOC entry 2852 (class 0 OID 0)
-- Dependencies: 200
-- Name: Order_orderId_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Order_orderId_seq"', 4, true);


--
-- TOC entry 2853 (class 0 OID 0)
-- Dependencies: 198
-- Name: Product_productId_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Product_productId_seq"', 4, true);


--
-- TOC entry 2854 (class 0 OID 0)
-- Dependencies: 196
-- Name: User_userId_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."User_userId_seq"', 2, true);


--
-- TOC entry 2712 (class 2606 OID 16437)
-- Name: Auth Auth_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Auth"
    ADD CONSTRAINT "Auth_pkey" PRIMARY KEY ("authId");


--
-- TOC entry 2710 (class 2606 OID 16417)
-- Name: Order Order_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT "Order_pkey" PRIMARY KEY ("orderId");


--
-- TOC entry 2708 (class 2606 OID 16410)
-- Name: Product Product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT "Product_pkey" PRIMARY KEY ("productId");


--
-- TOC entry 2706 (class 2606 OID 16400)
-- Name: User User_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY ("userId");


--
-- TOC entry 2715 (class 2606 OID 16438)
-- Name: Auth FK_Auth_User; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Auth"
    ADD CONSTRAINT "FK_Auth_User" FOREIGN KEY ("userId") REFERENCES public."User"("userId");


--
-- TOC entry 2714 (class 2606 OID 16423)
-- Name: Order FK_Order_Product; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT "FK_Order_Product" FOREIGN KEY ("productId") REFERENCES public."Product"("productId");


--
-- TOC entry 2713 (class 2606 OID 16418)
-- Name: Order FK_Order_User; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT "FK_Order_User" FOREIGN KEY ("userId") REFERENCES public."User"("userId");


-- Completed on 2019-09-10 14:31:53

--
-- PostgreSQL database dump complete
--

