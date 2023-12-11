DROP ROLE IF EXISTS postgres;
CREATE ROLE postgres WITH
	LOGIN
	NOSUPERUSER
	NOCREATEDB
	NOCREATEROLE
	INHERIT
	NOREPLICATION
	CONNECTION LIMIT -1
	PASSWORD 'password';


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