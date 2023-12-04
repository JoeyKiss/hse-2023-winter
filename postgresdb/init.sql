DROP ROLE IF EXISTS psqlman;
CREATE ROLE psqlman WITH
	LOGIN
	NOSUPERUSER
	NOCREATEDB
	NOCREATEROLE
	INHERIT
	NOREPLICATION
	CONNECTION LIMIT -1
	PASSWORD 'Mep321';


CREATE DATABASE TodoList;
\c TodoList;

CREATE TABLE public."Items"
(
    "Id" text NOT NULL,
    "Title" text,
    "Description" text,
    "Created" date,
    "IsDone" boolean,
    "Image" text,
    "Color" text,
    PRIMARY KEY ("Id")
);

ALTER TABLE IF EXISTS public."Items"
    OWNER to postgres;