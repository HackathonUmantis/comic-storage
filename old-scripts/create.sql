\c "Comics"
DROP SCHEMA IF EXISTS "Comics";
CREATE SCHEMA IF NOT EXISTS "Comics";

DROP TABLE IF EXISTS "Comics.Series";
CREATE TABLE IF NOT EXISTS "Comics.Series" (
  "id" SERIAL PRIMARY KEY,
  "name" VARCHAR(255),
  "cover" VARCHAR(255)
);

DROP TABLE IF EXISTS "Comics.SeriesComics";
CREATE TABLE IF NOT EXISTS "Comics.SeriesComics" (
  "series" INT,
  "comic" INT
);

DROP TABLE IF EXISTS "Comics.Comic";
CREATE TABLE IF NOT EXISTS "Comics.Comic" (
  "id" SERIAL PRIMARY KEY,
  "name" VARCHAR(255),
  "date" DATE,
  "author" INT,
  "illustrator" INT,
  "publisher" INT
);


DROP TABLE IF EXISTS "Comics.ComicTags";
CREATE TABLE IF NOT EXISTS "Comics.ComicTags" (
  "comic" INT,
  "tag" INT
);

DROP TABLE IF EXISTS "Comics.ComicPages";
CREATE TABLE IF NOT EXISTS "Comics.ComicPages" (
  "comic" INT,
  "page" INT
);

DROP TABLE IF EXISTS "Comics.PageTiles";
CREATE TABLE IF NOT EXISTS "Comics.PageTiles" (
  "page" INT,
  "tile" INT
);

DROP TABLE IF EXISTS "Comics.TileCoords";
CREATE TABLE IF NOT EXISTS "Comics.TileCoords" (
  "tile" INT,
  "coords" INT
);

DROP TABLE IF EXISTS "Comics.Tag";
CREATE TABLE IF NOT EXISTS "Comics.Tag" (
  "id" SERIAL PRIMARY KEY,
  "name" VARCHAR(255)
);

DROP TABLE IF EXISTS "Comics.Page";
CREATE TABLE IF NOT EXISTS "Comics.Page" (
  "id" SERIAL PRIMARY KEY,
  "order" INT,
  "image" VARCHAR(255)
);

DROP TABLE IF EXISTS "Comics.Tile";
CREATE TABLE IF NOT EXISTS "Comics.Tile" (
  "id" SERIAL PRIMARY KEY
);

DROP TABLE IF EXISTS "Comics.Coords";
CREATE TABLE IF NOT EXISTS "Comics.Coords" (
  "id" SERIAL PRIMARY KEY,
  "x" INT,
  "y" INT
);

DROP TABLE IF EXISTS "Comics.Author";
CREATE TABLE IF NOT EXISTS "Comics.Author" (
  "id" SERIAL PRIMARY KEY,
  "name" VARCHAR(255)
);

DROP TABLE IF EXISTS "Comics.Illustrator";
CREATE TABLE IF NOT EXISTS "Comics.Illustrator" (
  "id" SERIAL PRIMARY KEY,
  "name" VARCHAR(255)
);

DROP TABLE IF EXISTS "Comics.Publisher";
CREATE TABLE IF NOT EXISTS "Comics.Publisher" (
  "id" SERIAL PRIMARY KEY,
  "name" VARCHAR(255)
);
