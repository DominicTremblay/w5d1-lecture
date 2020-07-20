-- DDL Data Definition Language

DROP TABLE IF EXISTS games;
DROP TABLE IF EXISTS platforms;


CREATE TABLE platforms(
  id SERIAL PRIMARY KEY NOT NULL,
  name TEXT NOT NULL,
  developer TEXT NOT NULL,
  release_date DATE
);

CREATE TABLE games(
  id SERIAL PRIMARY KEY NOT NULL,
  title TEXT NOT NULL,
  description TEXT,
  release_date DATE,
  rating TEXT,
  genre TEXT,
  platform_id INTEGER REFERENCES platforms(id)
);