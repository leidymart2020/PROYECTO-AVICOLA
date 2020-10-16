toc.dat                                                                                             0000600 0004000 0002000 00000020174 13742175405 0014453 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP            ,            	    x            avicola    11.5    11.5     !           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false         "           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false         #           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false         $           1262    75473    avicola    DATABASE     �   CREATE DATABASE avicola WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';
    DROP DATABASE avicola;
             postgres    false                     2615    83797    galpones    SCHEMA        CREATE SCHEMA galpones;
    DROP SCHEMA galpones;
             postgres    false                     2615    75547    usuario    SCHEMA        CREATE SCHEMA usuario;
    DROP SCHEMA usuario;
             postgres    false         �            1255    92739 2   f_insertar_galpon(text, text, text, integer, text)    FUNCTION     z  CREATE FUNCTION galpones.f_insertar_galpon(_nombre text, _propietario text, _direccion text, _telefono integer, _correo_electronico text) RETURNS SETOF void
    LANGUAGE plpgsql
    AS $$
BEGIN

INSERT INTO galpones.galpon(
	 nombre,
	propietario, 
	direccion,
	telefono,
	correo_electronico
	
	)
	VALUES (_nombre,_propietario,_direccion,_telefono,_correo_electronico);
END
$$;
 �   DROP FUNCTION galpones.f_insertar_galpon(_nombre text, _propietario text, _direccion text, _telefono integer, _correo_electronico text);
       galpones       postgres    false    6         �            1255    83866 5   f_insertar_sector(text, text, text, integer, integer)    FUNCTION     _  CREATE FUNCTION galpones.f_insertar_sector(_nombre text, _propietario text, _direccion text, _telefono integer, _galpones integer) RETURNS SETOF void
    LANGUAGE plpgsql
    AS $$
BEGIN

INSERT INTO sectores.sector(
	 nombre,
	propietario, 
	direccion,
	telefono,
	galpones
	
	)
	VALUES (_nombre,_propietario,_direccion,_telefono,_galpones);
END
$$;
 �   DROP FUNCTION galpones.f_insertar_sector(_nombre text, _propietario text, _direccion text, _telefono integer, _galpones integer);
       galpones       postgres    false    6         �            1259    75567    v_login    VIEW     z   CREATE VIEW usuario.v_login AS
 SELECT 0 AS user_id,
    ''::text AS nombre,
    0 AS rol_id,
    ''::text AS rol_nombre;
    DROP VIEW usuario.v_login;
       usuario       postgres    false    7         �            1255    75571    f_login(text, text)    FUNCTION     �  CREATE FUNCTION usuario.f_login(_user_name text, _clave text) RETURNS SETOF usuario.v_login
    LANGUAGE plpgsql
    AS $$
	BEGIN
	RETURN QUERY
	SELECT
       pp.id AS user_id,
       pp.nombre ||''|| pp.apellido AS nombre,
       ur.id AS rol_id,
       ur.nombre AS rol_nombre

          FROM
      usuario.usuario pp JOIN usuario.rol ur ON ur.id = pp.rol_id
          WHERE
      pp.user_name=_user_name
        AND pp.clave=_clave;
	  END;
	  $$;
 =   DROP FUNCTION usuario.f_login(_user_name text, _clave text);
       usuario       postgres    false    201    7         �            1259    83814    galpon    TABLE     �   CREATE TABLE galpones.galpon (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    propietario text NOT NULL,
    direccion text NOT NULL,
    telefono integer NOT NULL,
    correo_electronico text NOT NULL
);
    DROP TABLE galpones.galpon;
       galpones         postgres    false    6         �            1259    83812    granja_id_seq    SEQUENCE     �   CREATE SEQUENCE galpones.granja_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE galpones.granja_id_seq;
       galpones       postgres    false    203    6         %           0    0    granja_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE galpones.granja_id_seq OWNED BY galpones.galpon.id;
            galpones       postgres    false    202         �            1259    83867    v_sector    VIEW     �   CREATE VIEW galpones.v_sector AS
 SELECT 0 AS sector_id,
    ''::text AS nombre,
    ''::text AS propietario,
    ''::text AS direccion,
    0 AS telefono,
    0 AS galpones;
    DROP VIEW galpones.v_sector;
       galpones       postgres    false    6         �            1259    75559    rol    TABLE     P   CREATE TABLE usuario.rol (
    id integer NOT NULL,
    nombre text NOT NULL
);
    DROP TABLE usuario.rol;
       usuario         postgres    false    7         �            1259    75550    usuario    TABLE     �   CREATE TABLE usuario.usuario (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    apellido text NOT NULL,
    user_name text NOT NULL,
    clave text NOT NULL,
    rol_id integer
);
    DROP TABLE usuario.usuario;
       usuario         postgres    false    7         �            1259    75548    usuario_id_seq    SEQUENCE     �   CREATE SEQUENCE usuario.usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE usuario.usuario_id_seq;
       usuario       postgres    false    199    7         &           0    0    usuario_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE usuario.usuario_id_seq OWNED BY usuario.usuario.id;
            usuario       postgres    false    198         �
           2604    83817 	   galpon id    DEFAULT     j   ALTER TABLE ONLY galpones.galpon ALTER COLUMN id SET DEFAULT nextval('galpones.granja_id_seq'::regclass);
 :   ALTER TABLE galpones.galpon ALTER COLUMN id DROP DEFAULT;
       galpones       postgres    false    202    203    203         �
           2604    75553 
   usuario id    DEFAULT     j   ALTER TABLE ONLY usuario.usuario ALTER COLUMN id SET DEFAULT nextval('usuario.usuario_id_seq'::regclass);
 :   ALTER TABLE usuario.usuario ALTER COLUMN id DROP DEFAULT;
       usuario       postgres    false    198    199    199                   0    83814    galpon 
   TABLE DATA               d   COPY galpones.galpon (id, nombre, propietario, direccion, telefono, correo_electronico) FROM stdin;
    galpones       postgres    false    203       2846.dat           0    75559    rol 
   TABLE DATA               *   COPY usuario.rol (id, nombre) FROM stdin;
    usuario       postgres    false    200       2844.dat           0    75550    usuario 
   TABLE DATA               R   COPY usuario.usuario (id, nombre, apellido, user_name, clave, rol_id) FROM stdin;
    usuario       postgres    false    199       2843.dat '           0    0    granja_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('galpones.granja_id_seq', 1, false);
            galpones       postgres    false    202         (           0    0    usuario_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('usuario.usuario_id_seq', 4, true);
            usuario       postgres    false    198         �
           2606    83822    galpon pk_galpones_galpon 
   CONSTRAINT     Y   ALTER TABLE ONLY galpones.galpon
    ADD CONSTRAINT pk_galpones_galpon PRIMARY KEY (id);
 E   ALTER TABLE ONLY galpones.galpon DROP CONSTRAINT pk_galpones_galpon;
       galpones         postgres    false    203         �
           2606    75558    usuario pk_usuario_usuario 
   CONSTRAINT     Y   ALTER TABLE ONLY usuario.usuario
    ADD CONSTRAINT pk_usuario_usuario PRIMARY KEY (id);
 E   ALTER TABLE ONLY usuario.usuario DROP CONSTRAINT pk_usuario_usuario;
       usuario         postgres    false    199         �
           2606    75566    rol rol_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY usuario.rol
    ADD CONSTRAINT rol_pkey PRIMARY KEY (id);
 7   ALTER TABLE ONLY usuario.rol DROP CONSTRAINT rol_pkey;
       usuario         postgres    false    200                                                                                                                                                                                                                                                                                                                                                                                                            2846.dat                                                                                            0000600 0004000 0002000 00000000005 13742175405 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2844.dat                                                                                            0000600 0004000 0002000 00000000052 13742175405 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Administrador
2	Empleado
3	Cliente
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      2843.dat                                                                                            0000600 0004000 0002000 00000000177 13742175405 0014267 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Tatiana 	Garcia	tati	1234	1
2	Leidy	Villamizar	leidy	2345	1
3	Roberto	Guzman	roberto	1111	2
4	Lucia	Vasquez	lucy	3344	3
\.


                                                                                                                                                                                                                                                                                                                                                                                                 restore.sql                                                                                         0000600 0004000 0002000 00000017057 13742175405 0015406 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5
-- Dumped by pg_dump version 11.5

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

DROP DATABASE avicola;
--
-- Name: avicola; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE avicola WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';


ALTER DATABASE avicola OWNER TO postgres;

\connect avicola

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
-- Name: galpones; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA galpones;


ALTER SCHEMA galpones OWNER TO postgres;

--
-- Name: usuario; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA usuario;


ALTER SCHEMA usuario OWNER TO postgres;

--
-- Name: f_insertar_galpon(text, text, text, integer, text); Type: FUNCTION; Schema: galpones; Owner: postgres
--

CREATE FUNCTION galpones.f_insertar_galpon(_nombre text, _propietario text, _direccion text, _telefono integer, _correo_electronico text) RETURNS SETOF void
    LANGUAGE plpgsql
    AS $$
BEGIN

INSERT INTO galpones.galpon(
	 nombre,
	propietario, 
	direccion,
	telefono,
	correo_electronico
	
	)
	VALUES (_nombre,_propietario,_direccion,_telefono,_correo_electronico);
END
$$;


ALTER FUNCTION galpones.f_insertar_galpon(_nombre text, _propietario text, _direccion text, _telefono integer, _correo_electronico text) OWNER TO postgres;

--
-- Name: f_insertar_sector(text, text, text, integer, integer); Type: FUNCTION; Schema: galpones; Owner: postgres
--

CREATE FUNCTION galpones.f_insertar_sector(_nombre text, _propietario text, _direccion text, _telefono integer, _galpones integer) RETURNS SETOF void
    LANGUAGE plpgsql
    AS $$
BEGIN

INSERT INTO sectores.sector(
	 nombre,
	propietario, 
	direccion,
	telefono,
	galpones
	
	)
	VALUES (_nombre,_propietario,_direccion,_telefono,_galpones);
END
$$;


ALTER FUNCTION galpones.f_insertar_sector(_nombre text, _propietario text, _direccion text, _telefono integer, _galpones integer) OWNER TO postgres;

--
-- Name: v_login; Type: VIEW; Schema: usuario; Owner: postgres
--

CREATE VIEW usuario.v_login AS
 SELECT 0 AS user_id,
    ''::text AS nombre,
    0 AS rol_id,
    ''::text AS rol_nombre;


ALTER TABLE usuario.v_login OWNER TO postgres;

--
-- Name: f_login(text, text); Type: FUNCTION; Schema: usuario; Owner: postgres
--

CREATE FUNCTION usuario.f_login(_user_name text, _clave text) RETURNS SETOF usuario.v_login
    LANGUAGE plpgsql
    AS $$
	BEGIN
	RETURN QUERY
	SELECT
       pp.id AS user_id,
       pp.nombre ||''|| pp.apellido AS nombre,
       ur.id AS rol_id,
       ur.nombre AS rol_nombre

          FROM
      usuario.usuario pp JOIN usuario.rol ur ON ur.id = pp.rol_id
          WHERE
      pp.user_name=_user_name
        AND pp.clave=_clave;
	  END;
	  $$;


ALTER FUNCTION usuario.f_login(_user_name text, _clave text) OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: galpon; Type: TABLE; Schema: galpones; Owner: postgres
--

CREATE TABLE galpones.galpon (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    propietario text NOT NULL,
    direccion text NOT NULL,
    telefono integer NOT NULL,
    correo_electronico text NOT NULL
);


ALTER TABLE galpones.galpon OWNER TO postgres;

--
-- Name: granja_id_seq; Type: SEQUENCE; Schema: galpones; Owner: postgres
--

CREATE SEQUENCE galpones.granja_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE galpones.granja_id_seq OWNER TO postgres;

--
-- Name: granja_id_seq; Type: SEQUENCE OWNED BY; Schema: galpones; Owner: postgres
--

ALTER SEQUENCE galpones.granja_id_seq OWNED BY galpones.galpon.id;


--
-- Name: v_sector; Type: VIEW; Schema: galpones; Owner: postgres
--

CREATE VIEW galpones.v_sector AS
 SELECT 0 AS sector_id,
    ''::text AS nombre,
    ''::text AS propietario,
    ''::text AS direccion,
    0 AS telefono,
    0 AS galpones;


ALTER TABLE galpones.v_sector OWNER TO postgres;

--
-- Name: rol; Type: TABLE; Schema: usuario; Owner: postgres
--

CREATE TABLE usuario.rol (
    id integer NOT NULL,
    nombre text NOT NULL
);


ALTER TABLE usuario.rol OWNER TO postgres;

--
-- Name: usuario; Type: TABLE; Schema: usuario; Owner: postgres
--

CREATE TABLE usuario.usuario (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    apellido text NOT NULL,
    user_name text NOT NULL,
    clave text NOT NULL,
    rol_id integer
);


ALTER TABLE usuario.usuario OWNER TO postgres;

--
-- Name: usuario_id_seq; Type: SEQUENCE; Schema: usuario; Owner: postgres
--

CREATE SEQUENCE usuario.usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE usuario.usuario_id_seq OWNER TO postgres;

--
-- Name: usuario_id_seq; Type: SEQUENCE OWNED BY; Schema: usuario; Owner: postgres
--

ALTER SEQUENCE usuario.usuario_id_seq OWNED BY usuario.usuario.id;


--
-- Name: galpon id; Type: DEFAULT; Schema: galpones; Owner: postgres
--

ALTER TABLE ONLY galpones.galpon ALTER COLUMN id SET DEFAULT nextval('galpones.granja_id_seq'::regclass);


--
-- Name: usuario id; Type: DEFAULT; Schema: usuario; Owner: postgres
--

ALTER TABLE ONLY usuario.usuario ALTER COLUMN id SET DEFAULT nextval('usuario.usuario_id_seq'::regclass);


--
-- Data for Name: galpon; Type: TABLE DATA; Schema: galpones; Owner: postgres
--

COPY galpones.galpon (id, nombre, propietario, direccion, telefono, correo_electronico) FROM stdin;
\.
COPY galpones.galpon (id, nombre, propietario, direccion, telefono, correo_electronico) FROM '$$PATH$$/2846.dat';

--
-- Data for Name: rol; Type: TABLE DATA; Schema: usuario; Owner: postgres
--

COPY usuario.rol (id, nombre) FROM stdin;
\.
COPY usuario.rol (id, nombre) FROM '$$PATH$$/2844.dat';

--
-- Data for Name: usuario; Type: TABLE DATA; Schema: usuario; Owner: postgres
--

COPY usuario.usuario (id, nombre, apellido, user_name, clave, rol_id) FROM stdin;
\.
COPY usuario.usuario (id, nombre, apellido, user_name, clave, rol_id) FROM '$$PATH$$/2843.dat';

--
-- Name: granja_id_seq; Type: SEQUENCE SET; Schema: galpones; Owner: postgres
--

SELECT pg_catalog.setval('galpones.granja_id_seq', 1, false);


--
-- Name: usuario_id_seq; Type: SEQUENCE SET; Schema: usuario; Owner: postgres
--

SELECT pg_catalog.setval('usuario.usuario_id_seq', 4, true);


--
-- Name: galpon pk_galpones_galpon; Type: CONSTRAINT; Schema: galpones; Owner: postgres
--

ALTER TABLE ONLY galpones.galpon
    ADD CONSTRAINT pk_galpones_galpon PRIMARY KEY (id);


--
-- Name: usuario pk_usuario_usuario; Type: CONSTRAINT; Schema: usuario; Owner: postgres
--

ALTER TABLE ONLY usuario.usuario
    ADD CONSTRAINT pk_usuario_usuario PRIMARY KEY (id);


--
-- Name: rol rol_pkey; Type: CONSTRAINT; Schema: usuario; Owner: postgres
--

ALTER TABLE ONLY usuario.rol
    ADD CONSTRAINT rol_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 