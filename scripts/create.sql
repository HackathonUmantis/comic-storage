SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

DROP SCHEMA IF EXISTS `Comics`;
CREATE SCHEMA IF NOT EXISTS `Comics` DEFAULT CHARACTER SET utf8;
USE `Comics`;

DROP TABLE IF EXISTS `Comics`.`Series`;
CREATE TABLE IF NOT EXISTS `Comics`.`Series` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255),
  `cover` VARCHAR(255),
  -- `comics` INT,
  -- CONSTRAINT `seriesComics`
  -- FOREIGN KEY (`comics`)
  -- REFERENCES `Comics`.`Comic` (`id`)
  PRIMARY KEY (`id`)
);


DROP TABLE IF EXISTS `Comics`.`SeriesComics`;
CREATE TABLE IF NOT EXISTS `Comics`.`Tag` (
  `series` INT,
  `comic` INT,
);

DROP TABLE IF EXISTS `Comics`.`Comic`;
CREATE TABLE IF NOT EXISTS `Comics`.`Comic` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255),
  `date` DATE,
  `author` INT,
  `illustrator` INT,
  `publisher` INT,
  -- CONSTRAINT `comicTags`
  -- FOREIGN KEY (`tags`)
  -- REFERENCES `Comics`.`Tag` (`id`)
  -- CONSTRAINT `comicPages`
  -- FOREIGN KEY (`pages`)
  -- REFERENCES `Comics`.`Page` (`id`)
  PRIMARY KEY (`id`)
);


DROP TABLE IF EXISTS `Comics`.`ComicTags`;
CREATE TABLE IF NOT EXISTS `Comics`.`Tag` (
  `comic` INT,
  `tag` INT
);

DROP TABLE IF EXISTS `Comics`.`ComicPages`;
CREATE TABLE IF NOT EXISTS `Comics`.`Tag` (
  `comic` INT,
  `page` INT
);

DROP TABLE IF EXISTS `Comics`.`PageTiles`;
CREATE TABLE IF NOT EXISTS `Comics`.`Tag` (
  `page` INT,
  `tile` INT
);

DROP TABLE IF EXISTS `Comics`.`TileCoords`;
CREATE TABLE IF NOT EXISTS `Comics`.`Tag` (
  `tile` INT,
  `coords` INT
);

DROP TABLE IF EXISTS `Comics`.`Tag`;
CREATE TABLE IF NOT EXISTS `Comics`.`Tag` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255)
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `Comics`.`Page`;
CREATE TABLE IF NOT EXISTS `Comics`.`Page` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `order` INT,
  `image` VARCHAR(255),
  -- `tiles` INT
  -- CONSTRAINT `pageTiles`
  -- FOREIGN KEY (`tiles`)
  -- REFERENCES `Comics`.`Tile` (`id`)
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `Comics`.`Tile`;
CREATE TABLE IF NOT EXISTS `Comics`.`Coords` (
  `id` INT NOT NULL AUTO_INCREMENT,
  -- `coords` INT
  -- CONSTRAINT `tileCoords`
  -- FOREIGN KEY (`coords`)
  -- REFERENCES `Comics`.`Coords` (`id`)
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `Comics`.`Coords`;
CREATE TABLE IF NOT EXISTS `Comics`.`Coords` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `x` INT,
  `y` INT,
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `Comics`.`Author`;
CREATE TABLE IF NOT EXISTS `Comics`.`Author` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255)
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `Comics`.`Illustrator`;
CREATE TABLE IF NOT EXISTS `Comics`.`Illustrator` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255)
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `Comics`.`Publisher`;
CREATE TABLE IF NOT EXISTS `Comics`.`Publisher` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255)
  PRIMARY KEY (`id`)
);

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
