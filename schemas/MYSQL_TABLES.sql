CREATE TABLE IF NOT EXISTS `brahms` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `unitid` varchar(50) DEFAULT NULL,
  `URL` varchar(255) DEFAULT NULL,
  `inserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `crs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `REGISTRATIONNUMBER` varchar(50) DEFAULT NULL,
  `FULLSCIENTIFICNAME` varchar(255) DEFAULT NULL,
  `URL` varchar(255) DEFAULT NULL,
  `inserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5392 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `favourites` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `taxon` varchar(50) DEFAULT NULL,
  `rank` int(3) DEFAULT '0',
  `inserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `iucn` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `taxonid` int(11) DEFAULT NULL,
  `scientific_name` varchar(100) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL,
  `kingdom` varchar(20) DEFAULT NULL,
  `phylum` varchar(20) DEFAULT NULL,
  `class` varchar(20) DEFAULT NULL,
  `order` varchar(20) DEFAULT NULL,
  `family` varchar(20) DEFAULT NULL,
  `genus` varchar(20) DEFAULT NULL,
  `main_common_name` varchar(100) DEFAULT NULL,
  `authority` varchar(100) DEFAULT NULL,
  `published_year` varchar(10) DEFAULT NULL,
  `assessment_date` varchar(10) DEFAULT NULL,
  `category` varchar(10) DEFAULT NULL,
  `criteria` varchar(100) DEFAULT NULL,
  `population_trend` varchar(100) DEFAULT NULL,
  `marine_system` tinyint(1) DEFAULT NULL,
  `freshwater_system` tinyint(1) DEFAULT NULL,
  `terrestrial_system` tinyint(1) DEFAULT NULL,
  `assessor` text,
  `reviewer` text,
  `aoo_km2` varchar(25) DEFAULT NULL,
  `eoo_km2` varchar(25) DEFAULT NULL,
  `elevation_upper` varchar(10) DEFAULT NULL,
  `elevation_lower` varchar(10) DEFAULT NULL,
  `depth_upper` varchar(10) DEFAULT NULL,
  `depth_lower` varchar(10) DEFAULT NULL,
  `errata_flag` tinyint(1) DEFAULT NULL,
  `errata_reason` text,
  `amended_flag` tinyint(1) DEFAULT NULL,
  `amended_reason` text,
  `inserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1024 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `leenobjecten` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `registratienummer` varchar(50) DEFAULT NULL,
  `geleend_van` varchar(100) DEFAULT NULL,
  `afbeeldingen` varchar(1024) DEFAULT NULL,
  `inserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `maps` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `taxon` varchar(50) DEFAULT NULL,
  `url` varchar(1024) DEFAULT NULL,
  `text_dutch` text,
  `text_english` text,
  `inserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `natuurwijzer` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `room` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `taxon` varchar(1000) DEFAULT NULL,
  `exhibition_rooms` varchar(255) DEFAULT NULL,
  `image_urls` text,
  `author` varchar(100) DEFAULT NULL,
  `intro_text` text,
  `langcode` varchar(10) DEFAULT NULL,
  `inserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=363 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `nba` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `unitid` varchar(50) DEFAULT NULL,
  `name` varchar(1024) DEFAULT NULL,
  `collection` varchar(64) DEFAULT NULL,
  `document` text,
  `inserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `collection` (`collection`)
) ENGINE=InnoDB AUTO_INCREMENT=3018 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `taxa_no_objects` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `taxon` varchar(50) DEFAULT NULL,
  `main_image` varchar(1024) DEFAULT NULL,
  `inserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `taxonlist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `taxon` varchar(50) DEFAULT NULL,
  `collection` varchar(64) DEFAULT NULL,
  `synonyms` text,
  `inserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `collection` (`collection`)
) ENGINE=InnoDB AUTO_INCREMENT=1263 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `tentoonstelling` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Registratienummer` varchar(50) DEFAULT NULL,
  `Zaal` varchar(50) DEFAULT NULL,
  `Zaaldeel` varchar(100) DEFAULT NULL,
  `SCname` varchar(255) DEFAULT NULL,
  `SCname controle` varchar(255) DEFAULT NULL,
  `inserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `SCname` (`SCname`(100))
) ENGINE=InnoDB AUTO_INCREMENT=3932 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `topstukken` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `description` text,
  `title` varchar(100) DEFAULT NULL,
  `registrationNumber` varchar(100) DEFAULT NULL,
  `collection` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `scientificName` varchar(100) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `expedition` varchar(100) DEFAULT NULL,
  `collector` varchar(100) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `inserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `scientificName` (`scientificName`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `ttik` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `description` text,
  `classification` text,
  `uninomial` varchar(255) DEFAULT NULL,
  `specific_epithet` varchar(255) DEFAULT NULL,
  `infra_specific_epithet` varchar(255) DEFAULT NULL,
  `authorship` varchar(255) DEFAULT NULL,
  `taxon` varchar(255) DEFAULT NULL,
  `rank` varchar(20) DEFAULT NULL,
  `english` text,
  `dutch` text,
  `synonyms` text,
  `remark` varchar(255) DEFAULT NULL,
  `taxon_id` int(11) unsigned NOT NULL,
  `inserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `uninomial` (`uninomial`,`specific_epithet`,`infra_specific_epithet`)
) ENGINE=InnoDB AUTO_INCREMENT=3288 DEFAULT CHARSET=utf8mb4;
