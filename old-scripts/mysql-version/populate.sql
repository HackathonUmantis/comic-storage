USE `Comics`;

INSERT INTO `Comics`.`Series` VALUES (1, 'Rogue Trooper', 'rogue_trooper_I/cover.jpg')

INSERT INTO `Comics`.`SeriesComics` VALUES (1, 1)
INSERT INTO `Comics`.`SeriesComics` VALUES (1, 2)
INSERT INTO `Comics`.`SeriesComics` VALUES (1, 3)

INSERT INTO `Comics`.`Comic` VALUES (1, 'Issue 1', 2014-01-01, 1, 1, 1)
INSERT INTO `Comics`.`Comic` VALUES (2, 'Issue 2', 2014-02-01, 1, 1, 1)
INSERT INTO `Comics`.`Comic` VALUES (3, 'Issue 3', 2014-03-01, 1, 1, 1)

INSERT INTO `Comics`.`Author` VALUES (1, 'Brian Ruckley')

INSERT INTO `Comics`.`Illustrator` VALUES (1, 'Alberto Ponticelli')

INSERT INTO `Comics`.`Publisher` VALUES (1, 'IDW Publishing')

INSERT INTO `Comics`.`ComicPages` VALUES (1, 1)
INSERT INTO `Comics`.`ComicPages` VALUES (1, 2)
INSERT INTO `Comics`.`ComicPages` VALUES (1, 3)
INSERT INTO `Comics`.`ComicPages` VALUES (2, 4)
INSERT INTO `Comics`.`ComicPages` VALUES (2, 5)
INSERT INTO `Comics`.`ComicPages` VALUES (3, 6)

INSERT INTO `Comics`.`Page` VALUES (1, 1, 'rogue_trooper_I/1.jpg')
INSERT INTO `Comics`.`Page` VALUES (2, 2, 'rogue_trooper_I/2.jpg')
INSERT INTO `Comics`.`Page` VALUES (3, 3, 'rogue_trooper_I/3.jpg')
INSERT INTO `Comics`.`Page` VALUES (4, 1, '')
INSERT INTO `Comics`.`Page` VALUES (5, 2, '')
INSERT INTO `Comics`.`Page` VALUES (6, 1, '')

INSERT INTO `Comics`.`PageTiles` VALUES (1, 1)
INSERT INTO `Comics`.`PageTiles` VALUES (1, 2)

INSERT INTO `Comics`.`Tile` VALUES (1)
INSERT INTO `Comics`.`Tile` VALUES (2)
INSERT INTO `Comics`.`Tile` VALUES (3)

INSERT INTO `Comics`.`TileCoords` VALUES (1, 1)
INSERT INTO `Comics`.`TileCoords` VALUES (1, 2)
INSERT INTO `Comics`.`TileCoords` VALUES (2, 3)
INSERT INTO `Comics`.`TileCoords` VALUES (2, 4)
INSERT INTO `Comics`.`TileCoords` VALUES (3, 5)
INSERT INTO `Comics`.`TileCoords` VALUES (3, 6)

INSERT INTO `Comics`.`Coords` VALUES (1, 10, 10)
INSERT INTO `Comics`.`Coords` VALUES (2, 50, 60)
INSERT INTO `Comics`.`Coords` VALUES (3, 70, 80)
INSERT INTO `Comics`.`Coords` VALUES (4, 70, 80)
INSERT INTO `Comics`.`Coords` VALUES (5, 70, 80)
INSERT INTO `Comics`.`Coords` VALUES (6, 70, 80)


INSERT INTO `Comics`.`ComicTags` VALUES (1, 2)
INSERT INTO `Comics`.`ComicTags` VALUES (1, 3)

INSERT INTO `Comics`.`Tag` VALUES (1, 'Action')
INSERT INTO `Comics`.`Tag` VALUES (2, 'Adventures')
INSERT INTO `Comics`.`Tag` VALUES (3, 'Sci-Fi')
INSERT INTO `Comics`.`Tag` VALUES (4, 'Fantasy')
INSERT INTO `Comics`.`Tag` VALUES (5, 'Space')
INSERT INTO `Comics`.`Tag` VALUES (6, 'War')
INSERT INTO `Comics`.`Tag` VALUES (7, 'History')
INSERT INTO `Comics`.`Tag` VALUES (8, 'Thriller')
INSERT INTO `Comics`.`Tag` VALUES (9, 'Folklore')
