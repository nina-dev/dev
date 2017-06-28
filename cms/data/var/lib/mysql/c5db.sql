-- MySQL dump 10.16  Distrib 10.1.24-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: c5db
-- ------------------------------------------------------
-- Server version	10.1.24-MariaDB-1~jessie

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `AreaLayoutColumns`
--

DROP TABLE IF EXISTS `AreaLayoutColumns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaLayoutColumns` (
  `arLayoutColumnID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutID` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutColumnIndex` int(10) unsigned NOT NULL DEFAULT '0',
  `arID` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutColumnDisplayID` int(11) DEFAULT '0',
  PRIMARY KEY (`arLayoutColumnID`),
  KEY `arLayoutID` (`arLayoutID`,`arLayoutColumnIndex`),
  KEY `arID` (`arID`),
  KEY `arLayoutColumnDisplayID` (`arLayoutColumnDisplayID`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaLayoutColumns`
--

LOCK TABLES `AreaLayoutColumns` WRITE;
/*!40000 ALTER TABLE `AreaLayoutColumns` DISABLE KEYS */;
INSERT INTO `AreaLayoutColumns` VALUES (1,1,0,27,1),(2,1,1,28,2),(3,2,0,31,3),(4,2,1,32,4),(5,2,2,33,5),(6,3,0,34,6),(7,3,1,35,7),(8,4,0,36,8),(9,4,1,37,9),(10,4,2,38,10),(11,5,0,41,11),(12,5,1,42,12),(13,5,2,43,13),(14,5,3,44,14),(15,6,0,45,15),(16,6,1,46,16),(17,7,0,48,17),(18,7,1,49,18),(19,8,0,76,19),(20,8,1,77,20),(21,9,0,78,21),(22,9,1,79,22),(23,9,2,80,23),(24,10,0,81,24),(25,10,1,82,25),(26,11,0,97,26),(27,11,1,98,27),(28,12,0,99,28),(29,12,1,100,29),(30,12,2,101,30),(31,13,0,104,31),(32,13,1,105,32),(33,14,0,106,33),(34,14,1,107,34),(35,15,0,108,35),(36,15,1,109,36),(37,16,0,111,37),(38,16,1,112,38),(39,16,2,113,39),(40,17,0,114,40),(41,17,1,115,41);
/*!40000 ALTER TABLE `AreaLayoutColumns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AreaLayoutCustomColumns`
--

DROP TABLE IF EXISTS `AreaLayoutCustomColumns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaLayoutCustomColumns` (
  `arLayoutColumnID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutColumnWidth` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`arLayoutColumnID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaLayoutCustomColumns`
--

LOCK TABLES `AreaLayoutCustomColumns` WRITE;
/*!40000 ALTER TABLE `AreaLayoutCustomColumns` DISABLE KEYS */;
/*!40000 ALTER TABLE `AreaLayoutCustomColumns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AreaLayoutPresets`
--

DROP TABLE IF EXISTS `AreaLayoutPresets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaLayoutPresets` (
  `arLayoutPresetID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutID` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutPresetName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`arLayoutPresetID`),
  KEY `arLayoutID` (`arLayoutID`),
  KEY `arLayoutPresetName` (`arLayoutPresetName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaLayoutPresets`
--

LOCK TABLES `AreaLayoutPresets` WRITE;
/*!40000 ALTER TABLE `AreaLayoutPresets` DISABLE KEYS */;
/*!40000 ALTER TABLE `AreaLayoutPresets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AreaLayoutThemeGridColumns`
--

DROP TABLE IF EXISTS `AreaLayoutThemeGridColumns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaLayoutThemeGridColumns` (
  `arLayoutColumnID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutColumnSpan` int(10) unsigned DEFAULT '0',
  `arLayoutColumnOffset` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`arLayoutColumnID`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaLayoutThemeGridColumns`
--

LOCK TABLES `AreaLayoutThemeGridColumns` WRITE;
/*!40000 ALTER TABLE `AreaLayoutThemeGridColumns` DISABLE KEYS */;
INSERT INTO `AreaLayoutThemeGridColumns` VALUES (1,8,0),(2,3,1),(3,4,0),(4,4,0),(5,4,0),(6,6,0),(7,6,0),(8,2,0),(9,3,0),(10,6,1),(11,3,0),(12,3,0),(13,3,0),(14,3,0),(15,6,0),(16,6,0),(17,5,0),(18,5,2),(19,6,0),(20,6,0),(21,4,0),(22,4,0),(23,4,0),(24,4,0),(25,7,1),(26,7,0),(27,4,1),(28,2,0),(29,4,0),(30,6,0),(31,7,0),(32,5,0),(33,4,0),(34,7,1),(35,4,0),(36,7,1),(37,4,0),(38,4,0),(39,4,0),(40,4,0),(41,8,0);
/*!40000 ALTER TABLE `AreaLayoutThemeGridColumns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AreaLayouts`
--

DROP TABLE IF EXISTS `AreaLayouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaLayouts` (
  `arLayoutID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutSpacing` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutIsCustom` tinyint(1) NOT NULL DEFAULT '0',
  `arLayoutIsPreset` tinyint(1) NOT NULL DEFAULT '0',
  `arLayoutMaxColumns` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutUsesThemeGridFramework` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`arLayoutID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaLayouts`
--

LOCK TABLES `AreaLayouts` WRITE;
/*!40000 ALTER TABLE `AreaLayouts` DISABLE KEYS */;
INSERT INTO `AreaLayouts` VALUES (1,0,0,0,12,1),(2,0,0,0,12,1),(3,0,0,0,12,1),(4,0,0,0,12,1),(5,0,0,0,12,1),(6,0,0,0,12,1),(7,0,0,0,12,1),(8,0,0,0,12,1),(9,0,0,0,12,1),(10,0,0,0,12,1),(11,0,0,0,12,1),(12,0,0,0,12,1),(13,0,0,0,12,1),(14,0,0,0,12,1),(15,0,0,0,12,1),(16,0,0,0,12,1),(17,0,0,0,12,1);
/*!40000 ALTER TABLE `AreaLayouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AreaLayoutsUsingPresets`
--

DROP TABLE IF EXISTS `AreaLayoutsUsingPresets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaLayoutsUsingPresets` (
  `arLayoutID` int(10) unsigned NOT NULL,
  `preset` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`arLayoutID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaLayoutsUsingPresets`
--

LOCK TABLES `AreaLayoutsUsingPresets` WRITE;
/*!40000 ALTER TABLE `AreaLayoutsUsingPresets` DISABLE KEYS */;
/*!40000 ALTER TABLE `AreaLayoutsUsingPresets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AreaPermissionAssignments`
--

DROP TABLE IF EXISTS `AreaPermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaPermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`arHandle`,`pkID`,`paID`),
  KEY `paID` (`paID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaPermissionAssignments`
--

LOCK TABLES `AreaPermissionAssignments` WRITE;
/*!40000 ALTER TABLE `AreaPermissionAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `AreaPermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AreaPermissionBlockTypeAccessList`
--

DROP TABLE IF EXISTS `AreaPermissionBlockTypeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaPermissionBlockTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaPermissionBlockTypeAccessList`
--

LOCK TABLES `AreaPermissionBlockTypeAccessList` WRITE;
/*!40000 ALTER TABLE `AreaPermissionBlockTypeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `AreaPermissionBlockTypeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AreaPermissionBlockTypeAccessListCustom`
--

DROP TABLE IF EXISTS `AreaPermissionBlockTypeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaPermissionBlockTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`btID`),
  KEY `peID` (`peID`),
  KEY `btID` (`btID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaPermissionBlockTypeAccessListCustom`
--

LOCK TABLES `AreaPermissionBlockTypeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `AreaPermissionBlockTypeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `AreaPermissionBlockTypeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Areas`
--

DROP TABLE IF EXISTS `Areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Areas` (
  `arID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `arOverrideCollectionPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `arInheritPermissionsFromAreaOnCID` int(10) unsigned NOT NULL DEFAULT '0',
  `arIsGlobal` tinyint(1) NOT NULL DEFAULT '0',
  `arParentID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`arID`),
  KEY `arIsGlobal` (`arIsGlobal`),
  KEY `cID` (`cID`),
  KEY `arHandle` (`arHandle`),
  KEY `arParentID` (`arParentID`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Areas`
--

LOCK TABLES `Areas` WRITE;
/*!40000 ALTER TABLE `Areas` DISABLE KEYS */;
INSERT INTO `Areas` VALUES (1,126,'Main',0,0,0,0),(2,127,'Primary',0,0,0,0),(3,127,'Secondary 1',0,0,0,0),(4,127,'Secondary 2',0,0,0,0),(5,127,'Secondary 3',0,0,0,0),(6,127,'Secondary 4',0,0,0,0),(7,127,'Secondary 5',0,0,0,0),(8,144,'Main',0,0,0,0),(9,145,'Main',0,0,0,0),(10,146,'Main',0,0,0,0),(11,147,'Main',0,0,0,0),(12,148,'Main',0,0,0,0),(13,149,'Main',0,0,0,0),(14,150,'Main',0,0,0,0),(15,151,'Main',0,0,0,0),(16,169,'Main',0,0,0,0),(17,169,'Sidebar',0,0,0,0),(18,169,'Page Footer',0,0,0,0),(19,176,'Page Header',0,0,0,0),(20,176,'Sidebar',0,0,0,0),(21,176,'Main',0,0,0,0),(22,162,'Page Header',0,0,0,0),(23,162,'Sidebar',0,0,0,0),(24,162,'Main',0,0,0,0),(25,162,'Page Footer',0,0,0,0),(26,157,'Main',0,0,0,0),(27,157,'Main : 1',0,0,0,26),(28,157,'Main : 2',0,0,0,26),(29,154,'Main',0,0,0,0),(30,1,'Main',0,0,0,0),(31,1,'Main : 3',0,0,0,30),(32,1,'Main : 4',0,0,0,30),(33,1,'Main : 5',0,0,0,30),(34,1,'Main : 6',0,0,0,30),(35,1,'Main : 7',0,0,0,30),(36,1,'Main : 8',0,0,0,30),(37,1,'Main : 9',0,0,0,30),(38,1,'Main : 10',0,0,0,30),(39,1,'Page Footer',0,0,0,0),(40,153,'Main',0,0,0,0),(41,153,'Main : 11',0,0,0,40),(42,153,'Main : 12',0,0,0,40),(43,153,'Main : 13',0,0,0,40),(44,153,'Main : 14',0,0,0,40),(45,153,'Main : 15',0,0,0,40),(46,153,'Main : 16',0,0,0,40),(47,153,'Page Footer',0,0,0,0),(48,153,'Page Footer : 17',0,0,0,47),(49,153,'Page Footer : 18',0,0,0,47),(50,155,'Main',0,0,0,0),(51,163,'Page Header',0,0,0,0),(52,163,'Main',0,0,0,0),(53,163,'Sidebar',0,0,0,0),(54,163,'Page Footer',0,0,0,0),(55,164,'Page Header',0,0,0,0),(56,164,'Main',0,0,0,0),(57,164,'Sidebar',0,0,0,0),(58,164,'Page Footer',0,0,0,0),(59,165,'Page Header',0,0,0,0),(60,165,'Main',0,0,0,0),(61,165,'Sidebar',0,0,0,0),(62,165,'Page Footer',0,0,0,0),(63,166,'Page Header',0,0,0,0),(64,166,'Main',0,0,0,0),(65,166,'Sidebar',0,0,0,0),(66,166,'Page Footer',0,0,0,0),(67,167,'Page Header',0,0,0,0),(68,167,'Main',0,0,0,0),(69,167,'Sidebar',0,0,0,0),(70,167,'Page Footer',0,0,0,0),(71,168,'Page Header',0,0,0,0),(72,168,'Main',0,0,0,0),(73,168,'Sidebar',0,0,0,0),(74,168,'Page Footer',0,0,0,0),(75,156,'Main',0,0,0,0),(76,156,'Main : 19',0,0,0,75),(77,156,'Main : 20',0,0,0,75),(78,156,'Main : 21',0,0,0,75),(79,156,'Main : 22',0,0,0,75),(80,156,'Main : 23',0,0,0,75),(81,156,'Main : 24',0,0,0,75),(82,156,'Main : 25',0,0,0,75),(83,158,'Main',0,0,0,0),(84,158,'Main : 1',0,0,0,83),(85,158,'Main : 2',0,0,0,83),(86,170,'Page Footer',0,0,0,0),(87,170,'Main',0,0,0,0),(88,170,'Sidebar',0,0,0,0),(89,171,'Page Footer',0,0,0,0),(90,171,'Main',0,0,0,0),(91,171,'Sidebar',0,0,0,0),(92,172,'Page Footer',0,0,0,0),(93,172,'Main',0,0,0,0),(94,172,'Sidebar',0,0,0,0),(95,159,'Main',0,0,0,0),(96,160,'Main',0,0,0,0),(97,160,'Main : 26',0,0,0,96),(98,160,'Main : 27',0,0,0,96),(99,160,'Main : 28',0,0,0,96),(100,160,'Main : 29',0,0,0,96),(101,160,'Main : 30',0,0,0,96),(102,161,'Main',0,0,0,0),(103,173,'Main',0,0,0,0),(104,173,'Main : 31',0,0,0,103),(105,173,'Main : 32',0,0,0,103),(106,173,'Main : 33',0,0,0,103),(107,173,'Main : 34',0,0,0,103),(108,173,'Main : 35',0,0,0,103),(109,173,'Main : 36',0,0,0,103),(110,174,'Main',0,0,0,0),(111,174,'Main : 37',0,0,0,110),(112,174,'Main : 38',0,0,0,110),(113,174,'Main : 39',0,0,0,110),(114,174,'Main : 40',0,0,0,110),(115,174,'Main : 41',0,0,0,110),(116,177,'Main',0,0,0,0),(117,177,'Page Header',0,0,0,0),(118,177,'Sidebar',0,0,0,0),(119,178,'Main',0,0,0,0),(120,178,'Page Header',0,0,0,0),(121,178,'Sidebar',0,0,0,0),(122,175,'Main',0,0,0,0),(123,1,'Header Site Title',0,0,1,0),(124,1,'Header Navigation',0,0,1,0),(125,1,'Header Search',0,0,1,0),(126,1,'Footer Site Title',0,0,1,0),(127,1,'Footer Social',0,0,1,0),(128,1,'Footer Legal',0,0,1,0),(129,1,'Footer Navigation',0,0,1,0),(130,1,'Footer Contact',0,0,1,0),(131,141,'Header Site Title',0,0,1,0),(132,141,'Header Navigation',0,0,1,0),(133,141,'Header Search',0,0,1,0),(134,141,'Footer Site Title',0,0,1,0),(135,141,'Footer Social',0,0,1,0),(136,141,'Footer Legal',0,0,1,0),(137,141,'Footer Navigation',0,0,1,0),(138,141,'Footer Contact',0,0,1,0),(139,141,'Main',0,0,0,0),(140,141,'Header Nav',0,0,0,0),(141,182,'Page Footer',0,0,0,0),(142,182,'Main',0,0,0,0),(143,182,'Sidebar',0,0,0,0),(144,153,'Header Navigation',0,0,1,0),(145,183,'Main',0,0,0,0),(146,183,'Sidebar',0,0,0,0),(147,153,'Sidebar',0,0,0,0),(148,189,'Main',0,0,0,0);
/*!40000 ALTER TABLE `Areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeKeyCategories`
--

DROP TABLE IF EXISTS `AttributeKeyCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeKeyCategories` (
  `akCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akCategoryHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akCategoryAllowSets` smallint(6) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`akCategoryID`),
  KEY `akCategoryHandle` (`akCategoryHandle`),
  KEY `pkgID` (`pkgID`,`akCategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeKeyCategories`
--

LOCK TABLES `AttributeKeyCategories` WRITE;
/*!40000 ALTER TABLE `AttributeKeyCategories` DISABLE KEYS */;
INSERT INTO `AttributeKeyCategories` VALUES (1,'collection',1,NULL),(2,'user',1,NULL),(3,'file',1,NULL);
/*!40000 ALTER TABLE `AttributeKeyCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeKeys`
--

DROP TABLE IF EXISTS `AttributeKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeKeys` (
  `akID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akIsSearchable` tinyint(1) NOT NULL DEFAULT '0',
  `akIsSearchableIndexed` tinyint(1) NOT NULL DEFAULT '0',
  `akIsAutoCreated` tinyint(1) NOT NULL DEFAULT '0',
  `akIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `akIsColumnHeader` tinyint(1) NOT NULL DEFAULT '0',
  `akIsEditable` tinyint(1) NOT NULL DEFAULT '0',
  `atID` int(10) unsigned DEFAULT NULL,
  `akCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`akID`),
  UNIQUE KEY `akHandle` (`akHandle`,`akCategoryID`),
  KEY `akCategoryID` (`akCategoryID`),
  KEY `atID` (`atID`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeKeys`
--

LOCK TABLES `AttributeKeys` WRITE;
/*!40000 ALTER TABLE `AttributeKeys` DISABLE KEYS */;
INSERT INTO `AttributeKeys` VALUES (1,'meta_title','Meta Title',1,1,1,0,0,1,1,1,0),(2,'meta_description','Meta Description',1,1,1,0,0,1,2,1,0),(3,'meta_keywords','Meta Keywords',1,1,1,0,0,1,2,1,0),(4,'icon_dashboard','Dashboard Icon',0,0,1,1,0,1,2,1,0),(5,'exclude_nav','Exclude From Nav',1,1,1,0,0,1,3,1,0),(6,'exclude_page_list','Exclude From Page List',1,1,1,0,0,1,3,1,0),(7,'header_extra_content','Header Extra Content',1,1,1,0,0,1,2,1,0),(8,'tags','Tags',1,1,1,0,0,1,8,1,0),(9,'is_featured','Is Featured',1,0,1,0,0,1,3,1,0),(10,'exclude_search_index','Exclude From Search Index',1,1,1,0,0,1,3,1,0),(11,'exclude_sitemapxml','Exclude From sitemap.xml',1,1,1,0,0,1,3,1,0),(12,'profile_private_messages_enabled','I would like to receive private messages.',1,0,0,0,0,1,3,2,0),(13,'profile_private_messages_notification_enabled','Send me email notifications when I receive a private message.',1,0,0,0,0,1,3,2,0),(14,'width','Width',1,1,1,0,0,1,6,3,0),(15,'height','Height',1,1,1,0,0,1,6,3,0),(16,'account_profile_links','Personal Links',0,0,0,0,0,1,11,2,0),(17,'duration','Duration',1,1,1,0,0,1,6,3,0),(18,'job_posting_department','Department',1,1,1,0,0,1,8,1,0),(19,'job_location','Location',1,1,1,0,0,1,2,1,0),(20,'exclude_subpages_from_nav','Exclude Sub-Pages From Nav',1,1,1,0,0,1,3,1,0),(21,'thumbnail','Thumbnail',1,1,1,0,0,1,5,1,0),(22,'blog_entry_topics','Blog Entry Topics',1,1,1,0,0,1,10,1,0),(23,'project_topics','Project Topics',1,1,1,0,0,1,10,1,0),(24,'project_client','Client',1,1,1,0,0,1,1,1,0),(25,'project_tasks','Task',1,1,1,0,0,1,8,1,0),(26,'project_skills','Skills',1,1,1,0,0,1,8,1,0);
/*!40000 ALTER TABLE `AttributeKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeSetKeys`
--

DROP TABLE IF EXISTS `AttributeSetKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeSetKeys` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `asID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`,`asID`),
  KEY `asID` (`asID`,`displayOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeSetKeys`
--

LOCK TABLES `AttributeSetKeys` WRITE;
/*!40000 ALTER TABLE `AttributeSetKeys` DISABLE KEYS */;
INSERT INTO `AttributeSetKeys` VALUES (1,1,1),(2,1,2),(7,1,3),(11,1,4),(9,2,1),(5,2,2),(6,2,3),(10,2,4),(8,2,5),(21,2,6),(20,2,7),(18,3,1),(19,3,2),(22,4,1),(23,5,1),(24,5,2),(25,5,3),(26,5,4);
/*!40000 ALTER TABLE `AttributeSetKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeSets`
--

DROP TABLE IF EXISTS `AttributeSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeSets` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `asHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `asIsLocked` tinyint(1) NOT NULL DEFAULT '1',
  `asDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`asID`),
  KEY `asHandle` (`asHandle`),
  KEY `akCategoryID` (`akCategoryID`,`asDisplayOrder`),
  KEY `pkgID` (`pkgID`,`asID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeSets`
--

LOCK TABLES `AttributeSets` WRITE;
/*!40000 ALTER TABLE `AttributeSets` DISABLE KEYS */;
INSERT INTO `AttributeSets` VALUES (1,'SEO','seo',1,0,0,0),(2,'Navigation and Indexing','navigation',1,0,0,1),(3,'Jobs','job_board',1,0,0,2),(4,'Blog','blog',1,0,0,3),(5,'Portfolio','portfolio',1,0,0,4);
/*!40000 ALTER TABLE `AttributeSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeTypeCategories`
--

DROP TABLE IF EXISTS `AttributeTypeCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeTypeCategories` (
  `atID` int(10) unsigned NOT NULL DEFAULT '0',
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`atID`,`akCategoryID`),
  KEY `akCategoryID` (`akCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeTypeCategories`
--

LOCK TABLES `AttributeTypeCategories` WRITE;
/*!40000 ALTER TABLE `AttributeTypeCategories` DISABLE KEYS */;
INSERT INTO `AttributeTypeCategories` VALUES (1,1),(1,2),(1,3),(2,1),(2,2),(2,3),(3,1),(3,2),(3,3),(4,1),(4,2),(4,3),(5,1),(6,1),(6,2),(6,3),(7,1),(7,3),(8,1),(8,2),(8,3),(9,2),(10,1),(10,2),(10,3),(11,2);
/*!40000 ALTER TABLE `AttributeTypeCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeTypes`
--

DROP TABLE IF EXISTS `AttributeTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeTypes` (
  `atID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `atHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `atName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`atID`),
  UNIQUE KEY `atHandle` (`atHandle`),
  KEY `pkgID` (`pkgID`,`atID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeTypes`
--

LOCK TABLES `AttributeTypes` WRITE;
/*!40000 ALTER TABLE `AttributeTypes` DISABLE KEYS */;
INSERT INTO `AttributeTypes` VALUES (1,'text','Text',0),(2,'textarea','Text Area',0),(3,'boolean','Checkbox',0),(4,'date_time','Date/Time',0),(5,'image_file','Image/File',0),(6,'number','Number',0),(7,'rating','Rating',0),(8,'select','Select',0),(9,'address','Address',0),(10,'topics','Topics',0),(11,'social_links','Social Links',0);
/*!40000 ALTER TABLE `AttributeTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeValues`
--

DROP TABLE IF EXISTS `AttributeValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeValues` (
  `avID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned DEFAULT NULL,
  `avDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uID` int(10) unsigned DEFAULT NULL,
  `atID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`avID`),
  KEY `akID` (`akID`),
  KEY `uID` (`uID`),
  KEY `atID` (`atID`)
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeValues`
--

LOCK TABLES `AttributeValues` WRITE;
/*!40000 ALTER TABLE `AttributeValues` DISABLE KEYS */;
INSERT INTO `AttributeValues` VALUES (1,4,'2017-06-26 14:58:42',1,2),(2,3,'2017-06-26 14:58:42',1,2),(3,3,'2017-06-26 14:58:42',1,2),(4,3,'2017-06-26 14:58:42',1,2),(5,3,'2017-06-26 14:58:42',1,2),(6,3,'2017-06-26 14:58:42',1,2),(7,3,'2017-06-26 14:58:42',1,2),(8,3,'2017-06-26 14:58:42',1,2),(9,5,'2017-06-26 14:58:42',1,3),(10,3,'2017-06-26 14:58:42',1,2),(11,3,'2017-06-26 14:58:42',1,2),(12,3,'2017-06-26 14:58:42',1,2),(13,3,'2017-06-26 14:58:42',1,2),(14,3,'2017-06-26 14:58:42',1,2),(15,3,'2017-06-26 14:58:42',1,2),(16,5,'2017-06-26 14:58:42',1,3),(17,3,'2017-06-26 14:58:42',1,2),(18,5,'2017-06-26 14:58:42',1,3),(19,3,'2017-06-26 14:58:43',1,2),(20,3,'2017-06-26 14:58:43',1,2),(21,3,'2017-06-26 14:58:43',1,2),(22,3,'2017-06-26 14:58:43',1,2),(23,3,'2017-06-26 14:58:43',1,2),(24,3,'2017-06-26 14:58:43',1,2),(25,3,'2017-06-26 14:58:43',1,2),(26,3,'2017-06-26 14:58:43',1,2),(27,3,'2017-06-26 14:58:43',1,2),(28,5,'2017-06-26 14:58:43',1,3),(29,5,'2017-06-26 14:58:43',1,3),(30,5,'2017-06-26 14:58:43',1,3),(31,5,'2017-06-26 14:58:43',1,3),(32,5,'2017-06-26 14:58:43',1,3),(33,5,'2017-06-26 14:58:43',1,3),(34,5,'2017-06-26 14:58:43',1,3),(35,5,'2017-06-26 14:58:43',1,3),(36,3,'2017-06-26 14:58:43',1,2),(37,3,'2017-06-26 14:58:43',1,2),(38,3,'2017-06-26 14:58:43',1,2),(39,4,'2017-06-26 14:58:43',1,2),(40,3,'2017-06-26 14:58:43',1,2),(41,3,'2017-06-26 14:58:43',1,2),(42,5,'2017-06-26 14:58:43',1,3),(43,10,'2017-06-26 14:58:43',1,3),(44,3,'2017-06-26 14:58:43',1,2),(45,3,'2017-06-26 14:58:43',1,2),(46,3,'2017-06-26 14:58:43',1,2),(47,5,'2017-06-26 14:58:43',1,3),(48,3,'2017-06-26 14:58:43',1,2),(49,3,'2017-06-26 14:58:43',1,2),(50,3,'2017-06-26 14:58:43',1,2),(51,5,'2017-06-26 14:58:43',1,3),(52,3,'2017-06-26 14:58:44',1,2),(53,3,'2017-06-26 14:58:44',1,2),(54,3,'2017-06-26 14:58:44',1,2),(55,3,'2017-06-26 14:58:44',1,2),(56,3,'2017-06-26 14:58:44',1,2),(57,3,'2017-06-26 14:58:44',1,2),(58,3,'2017-06-26 14:58:44',1,2),(59,3,'2017-06-26 14:58:44',1,2),(60,3,'2017-06-26 14:58:44',1,2),(61,3,'2017-06-26 14:58:44',1,2),(62,3,'2017-06-26 14:58:44',1,2),(63,3,'2017-06-26 14:58:44',1,2),(64,3,'2017-06-26 14:58:44',1,2),(65,3,'2017-06-26 14:58:44',1,2),(66,3,'2017-06-26 14:58:44',1,2),(67,3,'2017-06-26 14:58:44',1,2),(68,3,'2017-06-26 14:58:44',1,2),(69,3,'2017-06-26 14:58:44',1,2),(70,3,'2017-06-26 14:58:44',1,2),(71,3,'2017-06-26 14:58:44',1,2),(72,3,'2017-06-26 14:58:44',1,2),(73,3,'2017-06-26 14:58:44',1,2),(74,3,'2017-06-26 14:58:44',1,2),(75,3,'2017-06-26 14:58:44',1,2),(76,3,'2017-06-26 14:58:44',1,2),(77,3,'2017-06-26 14:58:44',1,2),(78,3,'2017-06-26 14:58:44',1,2),(79,3,'2017-06-26 14:58:44',1,2),(80,3,'2017-06-26 14:58:44',1,2),(81,3,'2017-06-26 14:58:45',1,2),(82,3,'2017-06-26 14:58:45',1,2),(83,3,'2017-06-26 14:58:45',1,2),(84,3,'2017-06-26 14:58:45',1,2),(85,3,'2017-06-26 14:58:45',1,2),(86,3,'2017-06-26 14:58:45',1,2),(87,3,'2017-06-26 14:58:45',1,2),(88,3,'2017-06-26 14:58:45',1,2),(89,3,'2017-06-26 14:58:45',1,2),(90,3,'2017-06-26 14:58:45',1,2),(91,3,'2017-06-26 14:58:45',1,2),(92,3,'2017-06-26 14:58:45',1,2),(93,3,'2017-06-26 14:58:45',1,2),(94,3,'2017-06-26 14:58:45',1,2),(95,3,'2017-06-26 14:58:45',1,2),(96,3,'2017-06-26 14:58:45',1,2),(97,3,'2017-06-26 14:58:45',1,2),(98,10,'2017-06-26 14:58:45',1,3),(99,3,'2017-06-26 14:58:45',1,2),(100,3,'2017-06-26 14:58:45',1,2),(101,3,'2017-06-26 14:58:45',1,2),(102,3,'2017-06-26 14:58:45',1,2),(103,3,'2017-06-26 14:58:45',1,2),(104,3,'2017-06-26 14:58:45',1,2),(105,3,'2017-06-26 14:58:45',1,2),(106,5,'2017-06-26 14:58:46',1,3),(107,5,'2017-06-26 14:58:46',1,3),(108,10,'2017-06-26 14:58:46',1,3),(109,4,'2017-06-26 14:58:50',1,2),(110,4,'2017-06-26 14:58:50',1,2),(111,4,'2017-06-26 14:58:50',1,2),(112,4,'2017-06-26 14:58:50',1,2),(113,14,'2017-06-26 14:58:54',1,6),(114,15,'2017-06-26 14:58:54',1,6),(115,14,'2017-06-26 14:58:54',1,6),(116,15,'2017-06-26 14:58:54',1,6),(117,14,'2017-06-26 14:58:54',1,6),(118,15,'2017-06-26 14:58:54',1,6),(119,14,'2017-06-26 14:58:54',1,6),(120,15,'2017-06-26 14:58:54',1,6),(121,14,'2017-06-26 14:58:55',1,6),(122,15,'2017-06-26 14:58:55',1,6),(123,14,'2017-06-26 14:58:55',1,6),(124,15,'2017-06-26 14:58:55',1,6),(125,14,'2017-06-26 14:58:55',1,6),(126,15,'2017-06-26 14:58:55',1,6),(127,14,'2017-06-26 14:58:56',1,6),(128,15,'2017-06-26 14:58:56',1,6),(129,14,'2017-06-26 14:58:56',1,6),(130,15,'2017-06-26 14:58:56',1,6),(131,14,'2017-06-26 14:58:57',1,6),(132,15,'2017-06-26 14:58:57',1,6),(133,14,'2017-06-26 14:58:57',1,6),(134,15,'2017-06-26 14:58:57',1,6),(135,14,'2017-06-26 14:58:58',1,6),(136,15,'2017-06-26 14:58:58',1,6),(137,14,'2017-06-26 14:58:58',1,6),(138,15,'2017-06-26 14:58:58',1,6),(139,14,'2017-06-26 14:58:59',1,6),(140,15,'2017-06-26 14:58:59',1,6),(141,14,'2017-06-26 14:59:00',1,6),(142,15,'2017-06-26 14:59:00',1,6),(143,14,'2017-06-26 14:59:00',1,6),(144,15,'2017-06-26 14:59:00',1,6),(145,5,'2017-06-26 14:59:08',1,3),(146,20,'2017-06-26 14:59:09',1,3),(147,9,'2017-06-26 14:59:10',1,3),(148,21,'2017-06-26 14:59:10',1,5),(149,23,'2017-06-26 14:59:10',1,10),(150,24,'2017-06-26 14:59:10',1,1),(151,25,'2017-06-26 14:59:10',1,8),(152,26,'2017-06-26 14:59:10',1,8),(153,21,'2017-06-26 14:59:10',1,5),(154,23,'2017-06-26 14:59:10',1,10),(155,24,'2017-06-26 14:59:10',1,1),(156,25,'2017-06-26 14:59:10',1,8),(157,26,'2017-06-26 14:59:10',1,8),(158,9,'2017-06-26 14:59:11',1,3),(159,21,'2017-06-26 14:59:11',1,5),(160,23,'2017-06-26 14:59:11',1,10),(161,24,'2017-06-26 14:59:11',1,1),(162,25,'2017-06-26 14:59:11',1,8),(163,26,'2017-06-26 14:59:11',1,8),(164,9,'2017-06-26 14:59:11',1,3),(165,21,'2017-06-26 14:59:11',1,5),(166,23,'2017-06-26 14:59:11',1,10),(167,24,'2017-06-26 14:59:12',1,1),(168,25,'2017-06-26 14:59:12',1,8),(169,26,'2017-06-26 14:59:12',1,8),(170,21,'2017-06-26 14:59:12',1,5),(171,23,'2017-06-26 14:59:12',1,10),(172,24,'2017-06-26 14:59:12',1,1),(173,25,'2017-06-26 14:59:12',1,8),(174,26,'2017-06-26 14:59:12',1,8),(175,21,'2017-06-26 14:59:13',1,5),(176,23,'2017-06-26 14:59:13',1,10),(177,24,'2017-06-26 14:59:13',1,1),(178,25,'2017-06-26 14:59:13',1,8),(179,26,'2017-06-26 14:59:13',1,8),(180,20,'2017-06-26 14:59:14',1,3),(181,1,'2017-06-26 14:59:14',1,1),(182,2,'2017-06-26 14:59:14',1,2),(183,3,'2017-06-26 14:59:14',1,2),(184,7,'2017-06-26 14:59:14',1,2),(185,11,'2017-06-26 14:59:15',1,3),(186,21,'2017-06-26 14:59:15',1,5),(187,22,'2017-06-26 14:59:15',1,10),(188,21,'2017-06-26 14:59:15',1,5),(189,22,'2017-06-26 14:59:15',1,10),(190,21,'2017-06-26 14:59:15',1,5),(191,22,'2017-06-26 14:59:15',1,10),(192,1,'2017-06-26 14:59:15',1,1),(193,2,'2017-06-26 14:59:16',1,2),(194,3,'2017-06-26 14:59:16',1,2),(195,5,'2017-06-26 14:59:16',1,3),(196,7,'2017-06-26 14:59:16',1,2),(197,11,'2017-06-26 14:59:16',1,3),(198,5,'2017-06-26 14:59:16',1,3),(199,1,'2017-06-26 14:59:18',1,1),(200,2,'2017-06-26 14:59:18',1,2),(201,3,'2017-06-26 14:59:18',1,2),(202,7,'2017-06-26 14:59:18',1,2),(203,11,'2017-06-26 14:59:18',1,3),(204,18,'2017-06-26 14:59:18',1,8),(205,19,'2017-06-26 14:59:18',1,2),(206,1,'2017-06-26 14:59:19',1,1),(207,2,'2017-06-26 14:59:19',1,2),(208,3,'2017-06-26 14:59:19',1,2),(209,7,'2017-06-26 14:59:19',1,2),(210,11,'2017-06-26 14:59:19',1,3),(211,18,'2017-06-26 14:59:19',1,8),(212,19,'2017-06-26 14:59:20',1,2),(213,22,'2017-06-26 15:34:03',1,10),(214,21,'2017-06-26 15:34:03',1,5),(215,1,'2017-06-26 16:22:31',1,1),(216,2,'2017-06-26 16:22:31',1,2),(217,7,'2017-06-26 16:22:31',1,2),(218,11,'2017-06-26 16:22:31',1,3),(219,1,'2017-06-26 16:24:08',1,1),(220,2,'2017-06-26 16:24:08',1,2),(221,7,'2017-06-26 16:24:08',1,2),(222,11,'2017-06-26 16:24:08',1,3),(223,1,'2017-06-26 16:26:42',1,1),(224,2,'2017-06-26 16:26:42',1,2),(225,7,'2017-06-26 16:26:42',1,2),(226,11,'2017-06-26 16:26:42',1,3),(227,1,'2017-06-27 15:37:39',1,1),(228,2,'2017-06-27 15:37:39',1,2),(229,7,'2017-06-27 15:37:39',1,2),(230,11,'2017-06-27 15:37:39',1,3),(231,1,'2017-06-27 15:41:19',1,1),(232,2,'2017-06-27 15:41:19',1,2),(233,7,'2017-06-27 15:41:20',1,2),(234,11,'2017-06-27 15:41:20',1,3),(235,1,'2017-06-27 15:41:32',1,1),(236,2,'2017-06-27 15:41:32',1,2),(237,7,'2017-06-27 15:41:32',1,2),(238,11,'2017-06-27 15:41:32',1,3),(239,1,'2017-06-27 15:43:36',1,1),(240,2,'2017-06-27 15:43:36',1,2),(241,7,'2017-06-27 15:43:36',1,2),(242,11,'2017-06-27 15:43:36',1,3),(243,1,'2017-06-27 15:45:54',1,1),(244,2,'2017-06-27 15:45:54',1,2),(245,7,'2017-06-27 15:45:54',1,2),(246,11,'2017-06-27 15:45:54',1,3);
/*!40000 ALTER TABLE `AttributeValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AuthenticationTypes`
--

DROP TABLE IF EXISTS `AuthenticationTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AuthenticationTypes` (
  `authTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `authTypeHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `authTypeName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `authTypeIsEnabled` tinyint(1) NOT NULL,
  `authTypeDisplayOrder` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`authTypeID`),
  UNIQUE KEY `authTypeHandle` (`authTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AuthenticationTypes`
--

LOCK TABLES `AuthenticationTypes` WRITE;
/*!40000 ALTER TABLE `AuthenticationTypes` DISABLE KEYS */;
INSERT INTO `AuthenticationTypes` VALUES (1,'concrete','Standard',1,0,0),(2,'community','concrete5.org',0,0,0),(3,'facebook','Facebook',0,0,0),(4,'twitter','Twitter',0,0,0),(5,'google','Google',0,0,0);
/*!40000 ALTER TABLE `AuthenticationTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BannedWords`
--

DROP TABLE IF EXISTS `BannedWords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BannedWords` (
  `bwID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bannedWord` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`bwID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BannedWords`
--

LOCK TABLES `BannedWords` WRITE;
/*!40000 ALTER TABLE `BannedWords` DISABLE KEYS */;
INSERT INTO `BannedWords` VALUES (1,'fuck'),(2,'shit'),(3,'bitch'),(4,'ass');
/*!40000 ALTER TABLE `BannedWords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BasicWorkflowPermissionAssignments`
--

DROP TABLE IF EXISTS `BasicWorkflowPermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BasicWorkflowPermissionAssignments` (
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wfID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BasicWorkflowPermissionAssignments`
--

LOCK TABLES `BasicWorkflowPermissionAssignments` WRITE;
/*!40000 ALTER TABLE `BasicWorkflowPermissionAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `BasicWorkflowPermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BasicWorkflowProgressData`
--

DROP TABLE IF EXISTS `BasicWorkflowProgressData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BasicWorkflowProgressData` (
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `uIDStarted` int(10) unsigned NOT NULL DEFAULT '0',
  `uIDCompleted` int(10) unsigned NOT NULL DEFAULT '0',
  `wpDateCompleted` datetime DEFAULT NULL,
  PRIMARY KEY (`wpID`),
  KEY `uIDStarted` (`uIDStarted`),
  KEY `uIDCompleted` (`uIDCompleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BasicWorkflowProgressData`
--

LOCK TABLES `BasicWorkflowProgressData` WRITE;
/*!40000 ALTER TABLE `BasicWorkflowProgressData` DISABLE KEYS */;
/*!40000 ALTER TABLE `BasicWorkflowProgressData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockFeatureAssignments`
--

DROP TABLE IF EXISTS `BlockFeatureAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockFeatureAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `faID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`faID`),
  KEY `faID` (`faID`,`cID`,`cvID`),
  KEY `bID` (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockFeatureAssignments`
--

LOCK TABLES `BlockFeatureAssignments` WRITE;
/*!40000 ALTER TABLE `BlockFeatureAssignments` DISABLE KEYS */;
INSERT INTO `BlockFeatureAssignments` VALUES (156,1,110,2),(160,1,125,6),(169,1,16,1),(170,1,112,3),(170,2,112,3),(170,3,112,3),(170,4,112,3),(171,1,114,4),(171,2,114,4),(171,3,114,4),(171,4,114,4),(172,1,116,5),(172,2,116,5),(172,3,116,5),(172,4,116,5),(173,1,132,7),(173,1,139,8),(173,1,143,9),(174,1,146,10),(182,1,163,11);
/*!40000 ALTER TABLE `BlockFeatureAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockPermissionAssignments`
--

DROP TABLE IF EXISTS `BlockPermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockPermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`pkID`,`paID`),
  KEY `bID` (`bID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockPermissionAssignments`
--

LOCK TABLES `BlockPermissionAssignments` WRITE;
/*!40000 ALTER TABLE `BlockPermissionAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlockPermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockRelations`
--

DROP TABLE IF EXISTS `BlockRelations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockRelations` (
  `brID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `originalBID` int(10) unsigned NOT NULL DEFAULT '0',
  `relationType` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`brID`),
  KEY `bID` (`bID`),
  KEY `originalBID` (`originalBID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockRelations`
--

LOCK TABLES `BlockRelations` WRITE;
/*!40000 ALTER TABLE `BlockRelations` DISABLE KEYS */;
INSERT INTO `BlockRelations` VALUES (1,163,16,'DUPLICATE');
/*!40000 ALTER TABLE `BlockRelations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockTypePermissionBlockTypeAccessList`
--

DROP TABLE IF EXISTS `BlockTypePermissionBlockTypeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockTypePermissionBlockTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockTypePermissionBlockTypeAccessList`
--

LOCK TABLES `BlockTypePermissionBlockTypeAccessList` WRITE;
/*!40000 ALTER TABLE `BlockTypePermissionBlockTypeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlockTypePermissionBlockTypeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockTypePermissionBlockTypeAccessListCustom`
--

DROP TABLE IF EXISTS `BlockTypePermissionBlockTypeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockTypePermissionBlockTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`btID`),
  KEY `peID` (`peID`),
  KEY `btID` (`btID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockTypePermissionBlockTypeAccessListCustom`
--

LOCK TABLES `BlockTypePermissionBlockTypeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `BlockTypePermissionBlockTypeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlockTypePermissionBlockTypeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockTypeSetBlockTypes`
--

DROP TABLE IF EXISTS `BlockTypeSetBlockTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockTypeSetBlockTypes` (
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  `btsID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`btID`,`btsID`),
  KEY `btsID` (`btsID`,`displayOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockTypeSetBlockTypes`
--

LOCK TABLES `BlockTypeSetBlockTypes` WRITE;
/*!40000 ALTER TABLE `BlockTypeSetBlockTypes` DISABLE KEYS */;
INSERT INTO `BlockTypeSetBlockTypes` VALUES (12,1,0),(25,1,1),(27,1,2),(15,1,3),(26,1,4),(19,1,5),(11,2,0),(18,2,1),(28,2,2),(30,2,3),(29,2,4),(13,2,5),(36,2,6),(20,2,7),(31,2,8),(35,2,9),(17,3,0),(32,3,1),(14,3,2),(34,4,0),(5,4,1),(21,4,2),(22,4,3),(23,4,4),(16,5,0),(33,5,1),(37,5,2),(38,5,3),(24,5,4);
/*!40000 ALTER TABLE `BlockTypeSetBlockTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockTypeSets`
--

DROP TABLE IF EXISTS `BlockTypeSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockTypeSets` (
  `btsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `btsName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `btsHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `btsDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`btsID`),
  UNIQUE KEY `btsHandle` (`btsHandle`),
  KEY `btsDisplayOrder` (`btsDisplayOrder`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockTypeSets`
--

LOCK TABLES `BlockTypeSets` WRITE;
/*!40000 ALTER TABLE `BlockTypeSets` DISABLE KEYS */;
INSERT INTO `BlockTypeSets` VALUES (1,'Basic','basic',0,0),(2,'Navigation','navigation',0,0),(3,'Forms','form',0,0),(4,'Social Networking','social',0,0),(5,'Multimedia','multimedia',0,0);
/*!40000 ALTER TABLE `BlockTypeSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockTypes`
--

DROP TABLE IF EXISTS `BlockTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockTypes` (
  `btID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `btHandle` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `btName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `btDescription` text COLLATE utf8_unicode_ci,
  `btCopyWhenPropagate` tinyint(1) NOT NULL DEFAULT '0',
  `btIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  `btIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `btSupportsInlineAdd` tinyint(1) NOT NULL DEFAULT '0',
  `btSupportsInlineEdit` tinyint(1) NOT NULL DEFAULT '0',
  `btIgnorePageThemeGridFrameworkContainer` tinyint(1) NOT NULL DEFAULT '0',
  `btDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `btInterfaceWidth` int(10) unsigned NOT NULL DEFAULT '400',
  `btInterfaceHeight` int(10) unsigned NOT NULL DEFAULT '400',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`btID`),
  UNIQUE KEY `btHandle` (`btHandle`),
  KEY `btDisplayOrder` (`btDisplayOrder`,`btName`,`btID`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockTypes`
--

LOCK TABLES `BlockTypes` WRITE;
/*!40000 ALTER TABLE `BlockTypes` DISABLE KEYS */;
INSERT INTO `BlockTypes` VALUES (1,'core_area_layout','Area Layout','Proxy block for area layouts.',0,0,1,1,1,0,0,400,400,0),(2,'core_page_type_composer_control_output','Composer Control','Proxy block for blocks that need to be output through composer.',0,0,1,0,0,0,0,400,400,0),(3,'core_scrapbook_display','Scrapbook Display','Proxy block for blocks pasted through the scrapbook.',0,0,1,0,0,0,0,400,400,0),(4,'core_stack_display','Stack Display','Proxy block for stacks added through the UI.',0,0,1,0,0,0,0,400,400,0),(5,'core_conversation','Conversation','Displays conversations on a page.',1,0,0,0,0,0,0,400,400,0),(6,'dashboard_featured_addon','Dashboard Featured Add-On','Features an add-on from concrete5.org.',0,0,1,0,0,0,0,300,100,0),(7,'dashboard_featured_theme','Dashboard Featured Theme','Features a theme from concrete5.org.',0,0,1,0,0,0,0,300,100,0),(8,'dashboard_newsflow_latest','Dashboard Newsflow Latest','Grabs the latest newsflow data from concrete5.org.',0,0,1,0,0,0,0,400,400,0),(9,'dashboard_app_status','Dashboard App Status','Displays update and welcome back information on your dashboard.',0,0,1,0,0,0,0,400,400,0),(10,'dashboard_site_activity','Dashboard Site Activity','Displays a summary of website activity.',0,0,1,0,0,0,0,400,400,0),(11,'autonav','Auto-Nav','Creates navigation trees and sitemaps.',0,0,0,0,0,0,0,800,350,0),(12,'content','Content','HTML/WYSIWYG Editor Content.',0,0,0,1,1,0,0,600,465,0),(13,'date_navigation','Date Navigation','Displays a list of months to filter a page list by.',0,0,0,0,0,0,0,400,450,0),(14,'external_form','External Form','Include external forms in the filesystem and place them on pages.',0,0,0,0,0,0,0,370,175,0),(15,'file','File','Link to files stored in the asset library.',0,0,0,0,0,0,0,300,320,0),(16,'page_attribute_display','Page Attribute Display','Displays the value of a page attribute for the current page.',0,0,0,0,0,0,0,500,365,0),(17,'form','Form','Build simple forms and surveys.',0,0,0,0,0,0,0,420,430,0),(18,'page_title','Page Title','Displays a Page\'s Title',0,0,0,0,0,0,0,400,400,0),(19,'feature','Feature','Displays an icon, a title, and a short paragraph description.',0,0,0,0,0,0,0,400,520,0),(20,'topic_list','Topic List','Displays a list of your site\'s topics, allowing you to click on them to filter a page list.',0,0,0,0,0,0,0,400,400,0),(21,'social_links','Social Links','Allows users to add social icons to their website',0,0,0,0,0,0,0,400,400,0),(22,'testimonial','Testimonial','Displays a quote or paragraph next to biographical information and a person\'s picture.',0,0,0,0,0,0,0,450,560,0),(23,'share_this_page','Share This Page','Allows users to share this page with social networks.',0,0,0,0,0,0,0,400,400,0),(24,'google_map','Google Map','Enter an address and a Google Map of that location will be placed in your page.',0,0,0,0,0,0,0,400,320,0),(25,'html','HTML','For adding HTML by hand.',0,0,0,0,0,1,0,600,500,0),(26,'horizontal_rule','Horizontal Rule','Adds a thin hairline horizontal divider to the page.',0,0,0,0,0,1,0,400,400,0),(27,'image','Image','Adds images and onstates from the library to pages.',0,0,0,0,0,0,0,400,550,0),(28,'faq','FAQ','Frequently Asked Questions Block',0,0,0,0,0,0,0,600,465,0),(29,'next_previous','Next & Previous Nav','Navigate through sibling pages.',0,0,0,0,0,0,0,430,400,0),(30,'page_list','Page List','List pages based on type, area.',0,0,0,0,0,0,0,800,350,0),(31,'rss_displayer','RSS Displayer','Fetch, parse and display the contents of an RSS or Atom feed.',0,0,0,0,0,0,0,400,550,0),(32,'search','Search','Add a search box to your site.',0,0,0,0,0,0,0,400,420,0),(33,'image_slider','Image Slider','Display your images and captions in an attractive slideshow format.',0,0,0,0,0,1,0,600,465,0),(34,'survey','Survey','Provide a simple survey, along with results in a pie chart format.',0,0,0,0,0,0,0,420,400,0),(35,'switch_language','Switch Language','Adds a front-end language switcher to your website.',0,0,0,0,0,0,0,500,150,0),(36,'tags','Tags','List pages based on type, area.',0,0,0,0,0,0,0,450,439,0),(37,'video','Video Player','Embeds uploaded video into a web page. Supports WebM, Ogg, and Quicktime/MPEG4 formats.',0,0,0,0,0,0,0,320,270,0),(38,'youtube','YouTube Video','Embeds a YouTube Video in your web page.',0,0,0,0,0,0,0,400,430,0);
/*!40000 ALTER TABLE `BlockTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Blocks`
--

DROP TABLE IF EXISTS `Blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Blocks` (
  `bID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bName` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bDateModified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bFilename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bIsActive` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  `btCachedBlockRecord` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`bID`),
  KEY `btID` (`btID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Blocks`
--

LOCK TABLES `Blocks` WRITE;
/*!40000 ALTER TABLE `Blocks` DISABLE KEYS */;
INSERT INTO `Blocks` VALUES (1,'','2017-06-26 14:58:45','2017-06-26 14:58:45',NULL,'0',12,1,NULL),(2,'','2017-06-26 14:58:46','2017-06-26 14:58:46',NULL,'0',9,1,NULL),(3,'','2017-06-26 14:58:46','2017-06-26 14:58:46',NULL,'0',10,1,NULL),(4,'','2017-06-26 14:58:46','2017-06-26 14:58:46',NULL,'0',8,1,NULL),(5,'','2017-06-26 14:58:46','2017-06-26 14:58:46',NULL,'0',8,1,NULL),(6,'','2017-06-26 14:58:46','2017-06-26 14:58:46',NULL,'0',7,1,NULL),(7,'','2017-06-26 14:58:46','2017-06-26 14:58:46',NULL,'0',6,1,NULL),(8,'','2017-06-26 14:58:46','2017-06-26 14:58:46',NULL,'0',8,1,NULL),(9,'','2017-06-26 14:59:06','2017-06-26 14:59:06','byline.php','0',18,1,NULL),(10,'','2017-06-26 14:59:06','2017-06-26 14:59:06',NULL,'0',2,1,NULL),(11,'','2017-06-26 14:59:06','2017-06-26 14:59:06',NULL,'0',29,1,NULL),(12,'','2017-06-26 14:59:06','2017-06-26 14:59:06',NULL,'0',23,1,NULL),(13,'','2017-06-26 14:59:06','2017-06-26 14:59:06',NULL,'0',20,1,NULL),(14,'','2017-06-26 14:59:06','2017-06-26 14:59:06',NULL,'0',30,1,NULL),(15,'','2017-06-26 14:59:06','2017-06-26 14:59:06',NULL,'0',26,1,NULL),(16,'','2017-06-26 14:59:06','2017-06-26 14:59:06',NULL,'0',5,1,NULL),(17,'','2017-06-26 14:59:06','2017-06-26 14:59:06',NULL,'0',18,1,NULL),(18,'','2017-06-26 14:59:06','2017-06-26 14:59:06',NULL,'0',30,1,NULL),(19,'','2017-06-26 14:59:06','2017-06-26 14:59:06',NULL,'0',12,1,NULL),(20,'','2017-06-26 14:59:06','2017-06-26 14:59:06',NULL,'0',12,1,NULL),(21,'','2017-06-26 14:59:06','2017-06-26 14:59:06',NULL,'0',16,1,NULL),(22,'','2017-06-26 14:59:06','2017-06-26 14:59:06',NULL,'0',12,1,NULL),(23,'','2017-06-26 14:59:06','2017-06-26 14:59:06',NULL,'0',16,1,NULL),(24,'','2017-06-26 14:59:06','2017-06-26 14:59:06',NULL,'0',12,1,NULL),(25,'','2017-06-26 14:59:06','2017-06-26 14:59:06',NULL,'0',2,1,NULL),(26,'','2017-06-26 14:59:06','2017-06-26 14:59:06',NULL,'0',12,1,NULL),(27,'','2017-06-26 14:59:06','2017-06-26 14:59:06',NULL,'0',18,1,NULL),(28,'','2017-06-26 14:59:06','2017-06-26 14:59:06',NULL,'0',2,1,NULL),(29,'','2017-06-26 14:59:06','2017-06-26 14:59:06',NULL,'0',16,1,NULL),(30,'','2017-06-26 14:59:07','2017-06-26 14:59:07',NULL,'0',16,1,NULL),(31,'','2017-06-26 14:59:07','2017-06-26 14:59:07',NULL,'0',16,1,NULL),(32,'','2017-06-26 14:59:07','2017-06-26 14:59:07',NULL,'0',2,1,NULL),(33,'','2017-06-26 14:59:07','2017-06-26 14:59:07',NULL,'0',26,1,NULL),(34,'','2017-06-26 14:59:07','2017-06-26 14:59:07','thumbnail_grid','0',30,1,NULL),(35,'','2017-06-26 14:59:07','2017-06-26 14:59:07','archive.php','0',18,1,NULL),(36,'','2017-06-26 14:59:07','2017-06-26 14:59:07',NULL,'0',1,1,NULL),(37,'','2017-06-26 14:59:07','2017-06-26 14:59:07',NULL,'0',30,1,NULL),(38,'','2017-06-26 14:59:07','2017-06-26 14:59:07',NULL,'0',20,1,NULL),(39,'','2017-06-26 14:59:07','2017-06-26 14:59:07',NULL,'0',13,1,NULL),(40,'','2017-06-26 14:59:07','2017-06-26 14:59:07',NULL,'0',18,1,NULL),(41,'','2017-06-26 14:59:07','2017-06-26 14:59:07','flat_filter.php','0',20,1,NULL),(42,'','2017-06-26 14:59:07','2017-06-26 14:59:07','thumbnail_grid','0',30,1,NULL),(43,'','2017-06-26 14:59:07','2017-06-26 14:59:07',NULL,'0',12,1,NULL),(44,'','2017-06-26 14:59:07','2017-06-26 14:59:07',NULL,'0',12,1,NULL),(45,'','2017-06-26 14:59:07','2017-06-26 14:59:07',NULL,'0',12,1,NULL),(46,'','2017-06-26 14:59:07','2017-06-26 14:59:07',NULL,'0',12,1,NULL),(47,'','2017-06-26 14:59:07','2017-06-26 14:59:07',NULL,'0',21,1,NULL),(48,'','2017-06-26 14:59:07','2017-06-26 14:59:07','responsive_header_navigation','0',11,1,NULL),(49,'','2017-06-26 14:59:07','2017-06-26 14:59:07',NULL,'0',32,1,NULL),(50,'','2017-06-26 14:59:07','2017-06-26 14:59:07',NULL,'0',12,1,NULL),(51,'','2017-06-26 14:59:07','2017-06-26 14:59:07',NULL,'0',33,1,NULL),(52,'','2017-06-26 14:59:07','2017-06-26 14:59:07',NULL,'0',1,1,NULL),(53,'','2017-06-26 14:59:07','2017-06-26 14:59:07',NULL,'0',19,1,NULL),(54,'','2017-06-26 14:59:07','2017-06-26 14:59:07',NULL,'0',19,1,NULL),(55,'','2017-06-26 14:59:07','2017-06-26 14:59:07',NULL,'0',19,1,NULL),(56,'','2017-06-26 14:59:08','2017-06-26 14:59:08',NULL,'0',26,1,NULL),(57,'','2017-06-26 14:59:08','2017-06-26 14:59:08',NULL,'0',12,1,NULL),(58,'','2017-06-26 14:59:08','2017-06-26 14:59:08','thumbnail_grid','0',30,1,NULL),(59,'','2017-06-26 14:59:08','2017-06-26 14:59:08',NULL,'0',26,1,NULL),(60,'','2017-06-26 14:59:08','2017-06-26 14:59:08',NULL,'0',1,1,NULL),(61,'','2017-06-26 14:59:08','2017-06-26 14:59:08',NULL,'0',12,1,NULL),(62,'','2017-06-26 14:59:08','2017-06-26 14:59:08',NULL,'0',12,1,NULL),(63,'','2017-06-26 14:59:08','2017-06-26 14:59:08',NULL,'0',1,1,NULL),(64,'','2017-06-26 14:59:08','2017-06-26 14:59:08',NULL,'0',30,1,NULL),(65,'','2017-06-26 14:59:08','2017-06-26 14:59:08',NULL,'0',30,1,NULL),(66,'','2017-06-26 14:59:08','2017-06-26 14:59:08',NULL,'0',12,1,NULL),(67,'','2017-06-26 14:59:08','2017-06-26 14:59:08',NULL,'0',12,1,NULL),(68,'','2017-06-26 14:59:08','2017-06-26 14:59:08',NULL,'0',18,1,NULL),(69,'','2017-06-26 14:59:08','2017-06-26 14:59:08',NULL,'0',1,1,NULL),(70,'','2017-06-26 14:59:09','2017-06-26 14:59:09','hover_description','0',19,1,NULL),(71,'','2017-06-26 14:59:09','2017-06-26 14:59:09','hover_description','0',19,1,NULL),(72,'','2017-06-26 14:59:09','2017-06-26 14:59:09','hover_description','0',19,1,NULL),(73,'','2017-06-26 14:59:09','2017-06-26 14:59:09','hover_description','0',19,1,NULL),(74,'','2017-06-26 14:59:09','2017-06-26 14:59:09',NULL,'0',26,1,NULL),(75,'','2017-06-26 14:59:09','2017-06-26 14:59:09',NULL,'0',1,1,NULL),(76,'','2017-06-26 14:59:09','2017-06-26 14:59:09',NULL,'0',12,1,NULL),(77,'','2017-06-26 14:59:09','2017-06-26 14:59:09',NULL,'0',12,1,NULL),(78,'','2017-06-26 14:59:09','2017-06-26 14:59:09',NULL,'0',12,1,NULL),(79,'','2017-06-26 14:59:09','2017-06-26 14:59:09',NULL,'0',1,1,NULL),(80,'','2017-06-26 14:59:09','2017-06-26 14:59:09',NULL,'0',22,1,NULL),(81,'','2017-06-26 14:59:09','2017-06-26 14:59:09',NULL,'0',22,1,NULL),(82,'','2017-06-26 14:59:09','2017-06-26 14:59:09',NULL,'0',22,1,NULL),(83,'','2017-06-26 14:59:09','2017-06-26 14:59:09',NULL,'0',22,1,NULL),(84,'','2017-06-26 14:59:09','2017-06-26 14:59:09',NULL,'0',33,1,NULL),(85,'','2017-06-26 14:59:09','2017-06-26 14:59:09',NULL,'0',12,1,NULL),(86,'','2017-06-26 14:59:10','2017-06-26 14:59:10',NULL,'0',33,1,NULL),(87,'','2017-06-26 14:59:10','2017-06-26 14:59:10',NULL,'0',12,1,NULL),(88,'','2017-06-26 14:59:11','2017-06-26 14:59:11',NULL,'0',33,1,NULL),(89,'','2017-06-26 14:59:11','2017-06-26 14:59:11',NULL,'0',12,1,NULL),(90,'','2017-06-26 14:59:11','2017-06-26 14:59:11',NULL,'0',33,1,NULL),(91,'','2017-06-26 14:59:11','2017-06-26 14:59:11',NULL,'0',12,1,NULL),(92,'','2017-06-26 14:59:12','2017-06-26 14:59:12',NULL,'0',33,1,NULL),(93,'','2017-06-26 14:59:12','2017-06-26 14:59:12',NULL,'0',12,1,NULL),(94,'','2017-06-26 14:59:12','2017-06-26 14:59:12',NULL,'0',33,1,NULL),(95,'','2017-06-26 14:59:13','2017-06-26 14:59:13',NULL,'0',12,1,NULL),(96,'','2017-06-26 14:59:13','2017-06-26 14:59:13',NULL,'0',18,1,NULL),(97,'','2017-06-26 14:59:13','2017-06-26 14:59:13',NULL,'0',1,1,NULL),(98,'','2017-06-26 14:59:13','2017-06-26 14:59:13',NULL,'0',22,1,NULL),(99,'','2017-06-26 14:59:13','2017-06-26 14:59:13',NULL,'0',22,1,NULL),(100,'','2017-06-26 14:59:13','2017-06-26 14:59:13',NULL,'0',26,1,NULL),(101,'','2017-06-26 14:59:13','2017-06-26 14:59:13',NULL,'0',1,1,NULL),(102,'','2017-06-26 14:59:13','2017-06-26 14:59:13',NULL,'0',22,1,NULL),(103,'','2017-06-26 14:59:13','2017-06-26 14:59:13',NULL,'0',22,1,NULL),(104,'','2017-06-26 14:59:13','2017-06-26 14:59:13',NULL,'0',22,1,NULL),(105,'','2017-06-26 14:59:13','2017-06-26 14:59:13',NULL,'0',22,1,NULL),(106,'','2017-06-26 14:59:13','2017-06-26 14:59:13',NULL,'0',22,1,NULL),(107,'','2017-06-26 14:59:14','2017-06-26 14:59:14',NULL,'0',22,1,NULL),(108,'','2017-06-26 14:59:14','2017-06-26 14:59:14',NULL,'0',26,1,NULL),(109,'','2017-06-26 14:59:14','2017-06-26 14:59:14',NULL,'0',1,1,NULL),(110,'','2017-06-26 14:59:14','2017-06-26 14:59:14',NULL,'0',27,1,NULL),(111,'','2017-06-26 14:59:14','2017-06-26 14:59:14',NULL,'0',12,1,NULL),(112,'','2017-06-26 14:59:14','2017-06-26 14:59:14',NULL,'0',5,1,NULL),(113,'','2017-06-26 14:59:14','2017-06-26 14:59:14',NULL,'0',12,1,NULL),(114,'','2017-06-26 14:59:15','2017-06-26 14:59:15',NULL,'0',5,1,NULL),(115,'','2017-06-26 14:59:15','2017-06-26 14:59:15',NULL,'0',12,1,NULL),(116,'','2017-06-26 14:59:15','2017-06-26 14:59:15',NULL,'0',5,1,NULL),(117,'','2017-06-26 14:59:15','2017-06-26 14:59:15',NULL,'0',12,1,NULL),(118,'','2017-06-26 14:59:15','2017-06-26 14:59:15',NULL,'0',32,1,NULL),(119,'','2017-06-26 14:59:16','2017-06-26 14:59:16',NULL,'0',18,1,NULL),(120,'','2017-06-26 14:59:16','2017-06-26 14:59:16',NULL,'0',1,1,NULL),(121,'','2017-06-26 14:59:16','2017-06-26 14:59:16',NULL,'0',24,1,NULL),(122,'','2017-06-26 14:59:16','2017-06-26 14:59:16',NULL,'0',12,1,NULL),(123,'','2017-06-26 14:59:16','2017-06-26 14:59:16',NULL,'0',26,1,NULL),(124,'','2017-06-26 14:59:16','2017-06-26 14:59:16',NULL,'0',1,1,NULL),(125,'','2017-06-26 14:59:16','2017-06-26 14:59:16',NULL,'0',27,1,NULL),(126,'','2017-06-26 14:59:16','2017-06-26 14:59:16',NULL,'0',12,1,NULL),(127,'','2017-06-26 14:59:16','2017-06-26 14:59:16',NULL,'0',12,1,NULL),(128,'','2017-06-26 14:59:16','2017-06-26 14:59:16',NULL,'0',17,1,NULL),(129,'','2017-06-26 14:59:16','2017-06-26 14:59:16',NULL,'0',12,1,NULL),(130,'','2017-06-26 14:59:16','2017-06-26 14:59:16',NULL,'0',18,1,NULL),(131,'','2017-06-26 14:59:16','2017-06-26 14:59:16',NULL,'0',1,1,NULL),(132,'','2017-06-26 14:59:17','2017-06-26 14:59:17',NULL,'0',27,1,NULL),(133,'','2017-06-26 14:59:17','2017-06-26 14:59:17',NULL,'0',12,1,NULL),(134,'','2017-06-26 14:59:17','2017-06-26 14:59:17',NULL,'0',12,1,NULL),(135,'','2017-06-26 14:59:17','2017-06-26 14:59:17',NULL,'0',26,1,NULL),(136,'','2017-06-26 14:59:17','2017-06-26 14:59:17',NULL,'0',1,1,NULL),(137,'','2017-06-26 14:59:17','2017-06-26 14:59:17',NULL,'0',12,1,NULL),(138,'','2017-06-26 14:59:17','2017-06-26 14:59:17',NULL,'0',12,1,NULL),(139,'','2017-06-26 14:59:17','2017-06-26 14:59:17',NULL,'0',27,1,NULL),(140,'','2017-06-26 14:59:17','2017-06-26 14:59:17',NULL,'0',12,1,NULL),(141,'','2017-06-26 14:59:17','2017-06-26 14:59:17',NULL,'0',26,1,NULL),(142,'','2017-06-26 14:59:17','2017-06-26 14:59:17',NULL,'0',1,1,NULL),(143,'','2017-06-26 14:59:17','2017-06-26 14:59:17',NULL,'0',27,1,NULL),(144,'','2017-06-26 14:59:17','2017-06-26 14:59:17',NULL,'0',12,1,NULL),(145,'','2017-06-26 14:59:17','2017-06-26 14:59:17',NULL,'0',18,1,NULL),(146,'','2017-06-26 14:59:17','2017-06-26 14:59:17',NULL,'0',27,1,NULL),(147,'','2017-06-26 14:59:17','2017-06-26 14:59:17',NULL,'0',25,1,NULL),(148,'','2017-06-26 14:59:17','2017-06-26 14:59:17',NULL,'0',1,1,NULL),(149,'','2017-06-26 14:59:17','2017-06-26 14:59:17',NULL,'0',19,1,NULL),(150,'','2017-06-26 14:59:17','2017-06-26 14:59:17',NULL,'0',19,1,NULL),(151,'','2017-06-26 14:59:17','2017-06-26 14:59:17',NULL,'0',19,1,NULL),(152,'','2017-06-26 14:59:18','2017-06-26 14:59:18',NULL,'0',19,1,NULL),(153,'','2017-06-26 14:59:18','2017-06-26 14:59:18',NULL,'0',19,1,NULL),(154,'','2017-06-26 14:59:18','2017-06-26 14:59:18',NULL,'0',19,1,NULL),(155,'','2017-06-26 14:59:18','2017-06-26 14:59:18',NULL,'0',26,1,NULL),(156,'','2017-06-26 14:59:18','2017-06-26 14:59:18',NULL,'0',1,1,NULL),(157,'','2017-06-26 14:59:18','2017-06-26 14:59:18',NULL,'0',12,1,NULL),(158,'','2017-06-26 14:59:18','2017-06-26 14:59:18',NULL,'0',30,1,NULL),(159,'','2017-06-26 14:59:18','2017-06-26 14:59:18',NULL,'0',12,1,NULL),(160,'','2017-06-26 14:59:19','2017-06-26 14:59:19',NULL,'0',12,1,NULL),(161,'','2017-06-26 14:59:20','2017-06-26 14:59:20',NULL,'0',18,1,NULL),(162,'','2017-06-26 14:59:20','2017-06-26 14:59:20',NULL,'0',28,1,NULL),(163,'','2017-06-26 15:34:02','2017-06-26 15:34:02',NULL,'1',5,1,NULL),(164,'','2017-06-26 15:34:03','2017-06-26 15:34:03',NULL,'0',12,1,NULL);
/*!40000 ALTER TABLE `Blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionAttributeValues`
--

DROP TABLE IF EXISTS `CollectionAttributeValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionAttributeValues` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`akID`),
  KEY `akID` (`akID`),
  KEY `avID` (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionAttributeValues`
--

LOCK TABLES `CollectionAttributeValues` WRITE;
/*!40000 ALTER TABLE `CollectionAttributeValues` DISABLE KEYS */;
INSERT INTO `CollectionAttributeValues` VALUES (2,1,4,1),(3,1,3,2),(4,1,3,3),(5,1,3,4),(6,1,3,5),(8,1,3,6),(9,1,3,7),(10,1,3,8),(11,1,5,9),(11,1,3,10),(12,1,3,11),(13,1,3,12),(14,1,3,13),(15,1,3,14),(16,1,3,15),(16,1,5,16),(17,1,3,17),(17,1,5,18),(19,1,3,19),(20,1,3,20),(22,1,3,21),(23,1,3,22),(24,1,3,23),(25,1,3,24),(26,1,3,25),(28,1,3,26),(29,1,3,27),(29,1,5,28),(31,1,5,29),(32,1,5,30),(33,1,5,31),(34,1,5,32),(35,1,5,33),(36,1,5,34),(38,1,5,35),(39,1,3,36),(40,1,3,37),(41,1,3,38),(43,1,4,39),(44,1,3,40),(48,1,3,41),(50,1,5,42),(50,1,10,43),(50,1,3,44),(51,1,3,45),(52,1,3,46),(53,1,5,47),(54,1,3,48),(55,1,3,49),(56,1,3,50),(56,1,5,51),(57,1,3,52),(58,1,3,53),(59,1,3,54),(61,1,3,55),(62,1,3,56),(63,1,3,57),(64,1,3,58),(65,1,3,59),(66,1,3,60),(67,1,3,61),(68,1,3,62),(74,1,3,63),(75,1,3,64),(76,1,3,65),(77,1,3,66),(78,1,3,67),(80,1,3,68),(81,1,3,69),(82,1,3,70),(83,1,3,71),(85,1,3,72),(86,1,3,73),(87,1,3,74),(88,1,3,75),(90,1,3,76),(91,1,3,77),(94,1,3,78),(95,1,3,79),(96,1,3,80),(97,1,3,81),(99,1,3,82),(100,1,3,83),(101,1,3,84),(102,1,3,85),(103,1,3,86),(104,1,3,87),(105,1,3,88),(106,1,3,89),(107,1,3,90),(108,1,3,91),(109,1,3,92),(110,1,3,93),(112,1,3,94),(113,1,3,95),(114,1,3,96),(115,1,3,97),(117,1,10,98),(118,1,3,99),(119,1,3,100),(120,1,3,101),(121,1,3,102),(122,1,3,103),(123,1,3,104),(125,1,3,105),(126,1,5,106),(127,1,5,107),(127,1,10,108),(128,1,4,109),(129,1,4,110),(130,1,4,111),(133,1,4,112),(1,1,5,145),(1,2,5,145),(155,1,20,146),(155,2,20,146),(155,3,20,146),(163,1,9,147),(163,1,21,148),(163,1,23,149),(163,1,24,150),(163,1,25,151),(163,1,26,152),(164,1,21,153),(164,1,23,154),(164,1,24,155),(164,1,25,156),(164,1,26,157),(165,1,9,158),(165,1,21,159),(165,1,23,160),(165,1,24,161),(165,1,25,162),(165,1,26,163),(166,1,9,164),(166,1,21,165),(166,1,23,166),(166,1,24,167),(166,1,25,168),(166,1,26,169),(167,1,21,170),(167,1,23,171),(167,1,24,172),(167,1,25,173),(167,1,26,174),(168,1,21,175),(168,1,23,176),(168,1,24,177),(168,1,25,178),(168,1,26,179),(158,1,20,180),(158,2,20,180),(158,3,20,180),(158,4,20,180),(170,1,1,181),(170,2,1,181),(170,3,1,181),(170,1,2,182),(170,2,2,182),(170,3,2,182),(170,1,3,183),(170,2,3,183),(170,3,3,183),(170,4,3,183),(170,1,7,184),(170,2,7,184),(170,3,7,184),(170,1,11,185),(170,2,11,185),(170,3,11,185),(170,1,21,186),(170,2,21,186),(170,3,21,186),(170,4,21,186),(170,1,22,187),(170,2,22,187),(170,3,22,187),(170,4,22,187),(171,1,21,188),(171,2,21,188),(171,3,21,188),(171,4,21,188),(171,1,22,189),(171,2,22,189),(171,3,22,189),(171,4,22,189),(172,1,21,190),(172,2,21,190),(172,3,21,190),(172,4,21,190),(172,1,22,191),(172,2,22,191),(172,3,22,191),(172,4,22,191),(159,1,1,192),(159,1,2,193),(159,1,3,194),(159,1,5,195),(159,1,7,196),(159,1,11,197),(161,1,5,198),(177,1,1,199),(177,1,2,200),(177,1,3,201),(177,1,7,202),(177,1,11,203),(177,1,18,204),(177,1,19,205),(178,1,1,206),(178,1,2,207),(178,1,3,208),(178,1,7,209),(178,1,11,210),(178,1,18,211),(178,1,19,212),(182,1,22,213),(182,1,21,214),(153,3,1,215),(153,3,2,216),(153,3,7,217),(153,3,11,218),(155,2,1,219),(155,2,2,220),(155,2,7,221),(155,2,11,222),(155,3,1,223),(155,3,2,224),(155,3,7,225),(155,3,11,226),(158,2,1,227),(158,3,1,227),(158,4,1,227),(158,2,2,228),(158,3,2,228),(158,4,2,228),(158,2,7,229),(158,3,7,229),(158,4,7,229),(158,2,11,230),(158,3,11,230),(158,4,11,230),(170,4,1,231),(170,4,2,232),(170,4,7,233),(170,4,11,234),(188,2,1,235),(188,2,2,236),(188,2,7,237),(188,2,11,238),(172,4,1,239),(172,4,2,240),(172,4,7,241),(172,4,11,242),(171,4,1,243),(171,4,2,244),(171,4,7,245),(171,4,11,246);
/*!40000 ALTER TABLE `CollectionAttributeValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionSearchIndexAttributes`
--

DROP TABLE IF EXISTS `CollectionSearchIndexAttributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionSearchIndexAttributes` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `ak_meta_title` longtext COLLATE utf8_unicode_ci,
  `ak_meta_description` longtext COLLATE utf8_unicode_ci,
  `ak_meta_keywords` longtext COLLATE utf8_unicode_ci,
  `ak_icon_dashboard` longtext COLLATE utf8_unicode_ci,
  `ak_exclude_nav` tinyint(1) DEFAULT '0',
  `ak_exclude_page_list` tinyint(1) DEFAULT '0',
  `ak_header_extra_content` longtext COLLATE utf8_unicode_ci,
  `ak_tags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ak_is_featured` tinyint(1) DEFAULT '0',
  `ak_exclude_search_index` tinyint(1) DEFAULT '0',
  `ak_exclude_sitemapxml` tinyint(1) DEFAULT '0',
  `ak_job_posting_department` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ak_job_location` longtext COLLATE utf8_unicode_ci,
  `ak_exclude_subpages_from_nav` tinyint(1) DEFAULT '0',
  `ak_thumbnail` int(11) DEFAULT '0',
  `ak_blog_entry_topics` longtext COLLATE utf8_unicode_ci,
  `ak_project_topics` longtext COLLATE utf8_unicode_ci,
  `ak_project_client` longtext COLLATE utf8_unicode_ci,
  `ak_project_tasks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ak_project_skills` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionSearchIndexAttributes`
--

LOCK TABLES `CollectionSearchIndexAttributes` WRITE;
/*!40000 ALTER TABLE `CollectionSearchIndexAttributes` DISABLE KEYS */;
INSERT INTO `CollectionSearchIndexAttributes` VALUES (1,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(2,NULL,NULL,NULL,'fa fa-th-large',0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(3,NULL,NULL,'pages, add page, delete page, copy, move, alias',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(4,NULL,NULL,'pages, add page, delete page, copy, move, alias',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(5,NULL,NULL,'pages, add page, delete page, copy, move, alias, bulk',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(6,NULL,NULL,'find page, search page, search, find, pages, sitemap',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(8,NULL,NULL,'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(9,NULL,NULL,'file, file attributes, title, attribute, description, rename',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(10,NULL,NULL,'files, category, categories',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(11,NULL,NULL,'new file set',NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(12,NULL,NULL,'users, groups, people, find, delete user, remove user, change password, password',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(13,NULL,NULL,'find, search, people, delete user, remove user, change password, password',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(14,NULL,NULL,'user, group, people, permissions, expire, badges',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(15,NULL,NULL,'user attributes, user data, gather data, registration data',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(16,NULL,NULL,'new user, create',NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(17,NULL,NULL,'new user group, new group, group, create',NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(19,NULL,NULL,'group set',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(20,NULL,NULL,'community, points, karma',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(22,NULL,NULL,'action, community actions',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(23,NULL,NULL,'forms, log, error, email, mysql, exception, survey',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(24,NULL,NULL,'forms, questions, response, data',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(25,NULL,NULL,'questions, quiz, response',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(26,NULL,NULL,'forms, log, error, email, mysql, exception, survey, history',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(28,NULL,NULL,'new theme, theme, active theme, change theme, template, css',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(29,NULL,NULL,'page types',NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(31,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(32,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(33,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(34,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(35,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(36,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(38,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(39,NULL,NULL,'page attributes, custom',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(40,NULL,NULL,'single, page, custom, application',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(41,NULL,NULL,'atom, rss, feed, syndication',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(43,NULL,NULL,NULL,'icon-bullhorn',0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(44,NULL,NULL,'add workflow, remove workflow',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(48,NULL,NULL,'stacks, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(50,NULL,NULL,'edit stacks, view stacks, all stacks',NULL,1,0,NULL,NULL,0,1,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(51,NULL,NULL,'block, refresh, custom',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(52,NULL,NULL,'add-on, addon, add on, package, app, ecommerce, discussions, forums, themes, templates, blocks',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(53,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(54,NULL,NULL,'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(55,NULL,NULL,'update, upgrade',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(56,NULL,NULL,'concrete5.org, my account, marketplace',NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(57,NULL,NULL,'buy theme, new theme, marketplace, template',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(58,NULL,NULL,'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(59,NULL,NULL,'dashboard, configuration',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(61,NULL,NULL,'website name, title',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(62,NULL,NULL,'accessibility, easy mode',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(63,NULL,NULL,'sharing, facebook, twitter',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(64,NULL,NULL,'logo, favicon, iphone, icon, bookmark',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(65,NULL,NULL,'tinymce, content block, fonts, editor, content, overlay',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(66,NULL,NULL,'translate, translation, internationalization, multilingual',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(67,NULL,NULL,'timezone, profile, locale',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(68,NULL,NULL,'multilingual, localization, internationalization, i18n',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(74,NULL,NULL,'vanity, pretty url, redirection, hostname, canonical, seo, pageview, view',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(75,NULL,NULL,'bulk, seo, change keywords, engine, optimization, search',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(76,NULL,NULL,'traffic, statistics, google analytics, quant, pageviews, hits',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(77,NULL,NULL,'pretty, slug',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(78,NULL,NULL,'configure search, site search, search option',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(80,NULL,NULL,'file options, file manager, upload, modify',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(81,NULL,NULL,'security, files, media, extension, manager, upload',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(82,NULL,NULL,'images, picture, responsive, retina',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(83,NULL,NULL,'security, alternate storage, hide files',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(85,NULL,NULL,'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(86,NULL,NULL,'cache option, turn off cache, no cache, page cache, caching',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(87,NULL,NULL,'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(88,NULL,NULL,'queries, database, mysql',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(90,NULL,NULL,'editors, hide site, offline, private, public, access',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(91,NULL,NULL,'security, actions, administrator, admin, package, marketplace, search',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(94,NULL,NULL,'security, lock ip, lock out, block ip, address, restrict, access',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(95,NULL,NULL,'security, registration',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(96,NULL,NULL,'antispam, block spam, security',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(97,NULL,NULL,'lock site, under construction, hide, hidden',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(99,NULL,NULL,'profile, login, redirect, specific, dashboard, administrators',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(100,NULL,NULL,'member profile, member page, community, forums, social, avatar',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(101,NULL,NULL,'signup, new user, community, public registration, public, registration',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(102,NULL,NULL,'auth, authentication, types, oauth, facebook, login, registration',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(103,NULL,NULL,'smtp, mail settings',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(104,NULL,NULL,'email server, mail settings, mail configuration, external, internal',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(105,NULL,NULL,'test smtp, test mail',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(106,NULL,NULL,'email server, mail settings, mail configuration, private message, message system, import, email, message',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(107,NULL,NULL,'conversations',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(108,NULL,NULL,'conversations',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(109,NULL,NULL,'conversations ratings, ratings, community, community points',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(110,NULL,NULL,'conversations bad words, banned words, banned, bad words, bad, words, list',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(112,NULL,NULL,'attribute configuration',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(113,NULL,NULL,'attributes, sets',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(114,NULL,NULL,'attributes, types',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(115,NULL,NULL,'topics, tags, taxonomy',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(117,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,1,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(118,NULL,NULL,'overrides, system info, debug, support, help',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(119,NULL,NULL,'errors, exceptions, develop, support, help',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(120,NULL,NULL,'email, logging, logs, smtp, pop, errors, mysql, log',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(121,NULL,NULL,'network, proxy server',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(122,NULL,NULL,'database, entities, doctrine, orm',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(123,NULL,NULL,'export, backup, database, sql, mysql, encryption, restore',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(125,NULL,NULL,'upgrade, new version, update',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(126,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(127,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,1,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(128,NULL,NULL,NULL,'fa fa-edit',0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(129,NULL,NULL,NULL,'fa fa-trash-o',0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(130,NULL,NULL,NULL,'fa fa-th',0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(133,NULL,NULL,NULL,'fa fa-briefcase',0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(153,'','',NULL,NULL,0,0,'',NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(155,'','',NULL,NULL,0,0,'',NULL,0,0,0,NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL),(156,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(158,'','',NULL,NULL,0,0,'',NULL,0,0,0,NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL),(159,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(160,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(161,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(163,NULL,NULL,NULL,NULL,0,0,NULL,NULL,1,0,0,NULL,NULL,0,6,NULL,'||/Homework||','Test Client','\nArchitecture\nDesign\nProduction\n','\nHTML\nJavaScript\nPHP\n'),(164,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,8,NULL,'||/Activities||','Test Client','\nArchitecture\n','\nPHP\n'),(165,NULL,NULL,NULL,NULL,0,0,NULL,NULL,1,0,0,NULL,NULL,0,16,NULL,'||/Homework||','Test Client 2','\nMultimedia\nProduction\nDevelopment\n','\nHTML\nJavaScript\nPHP\nCSS\n'),(166,NULL,NULL,NULL,NULL,0,0,NULL,NULL,1,0,0,NULL,NULL,0,15,NULL,'||/Homework||','Test Client 2','\nDesign\n','\nPhotoshop\n'),(167,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,12,NULL,'||/Homework||','Test Client 2','\nDesign\n','\nPhotoshop\n'),(168,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,10,NULL,'||/Homework||','Test Client 2','\nDesign\n','\nPhotoshop\n'),(170,'','',NULL,NULL,0,0,'',NULL,0,0,0,NULL,NULL,0,2,'||/Projects||',NULL,NULL,NULL,NULL),(171,'','',NULL,NULL,0,0,'',NULL,0,0,0,NULL,NULL,0,7,'||/Humor||',NULL,NULL,NULL,NULL),(172,'','',NULL,NULL,0,0,'',NULL,0,0,0,NULL,NULL,0,11,'||/Projects||',NULL,NULL,NULL,NULL),(173,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(174,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(175,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(177,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,'\nTechnical and Operations\n','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla massa lacus, vehicula eu interdum convallis, laoreet id lectus. Nunc turpis elit, aliquam sit amet aliquam tincidunt, dapibus vel tellus. ',0,0,NULL,NULL,NULL,NULL,NULL),(178,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,'\nMarketing and Sales\n','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla massa lacus, vehicula eu interdum convallis, laoreet id lectus. Nunc turpis elit, aliquam sit amet aliquam tincidunt, dapibus vel tellus. ',0,0,NULL,NULL,NULL,NULL,NULL),(186,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(188,'','',NULL,NULL,0,0,'',NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `CollectionSearchIndexAttributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionAreaStyles`
--

DROP TABLE IF EXISTS `CollectionVersionAreaStyles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionAreaStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `issID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`arHandle`),
  KEY `issID` (`issID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionAreaStyles`
--

LOCK TABLES `CollectionVersionAreaStyles` WRITE;
/*!40000 ALTER TABLE `CollectionVersionAreaStyles` DISABLE KEYS */;
INSERT INTO `CollectionVersionAreaStyles` VALUES (1,1,'Page Footer',14),(1,2,'Page Footer',14),(153,1,'Page Footer',15),(153,2,'Page Footer',15),(153,3,'Page Footer',15);
/*!40000 ALTER TABLE `CollectionVersionAreaStyles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionBlockStyles`
--

DROP TABLE IF EXISTS `CollectionVersionBlockStyles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionBlockStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `issID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `bID` (`bID`,`issID`),
  KEY `issID` (`issID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionBlockStyles`
--

LOCK TABLES `CollectionVersionBlockStyles` WRITE;
/*!40000 ALTER TABLE `CollectionVersionBlockStyles` DISABLE KEYS */;
INSERT INTO `CollectionVersionBlockStyles` VALUES (169,1,11,'Sidebar',1),(170,1,11,'Sidebar',1),(170,2,11,'Sidebar',1),(170,3,11,'Sidebar',1),(170,4,11,'Sidebar',1),(171,1,11,'Sidebar',1),(171,2,11,'Sidebar',1),(171,3,11,'Sidebar',1),(171,4,11,'Sidebar',1),(172,1,11,'Sidebar',1),(172,2,11,'Sidebar',1),(172,3,11,'Sidebar',1),(172,4,11,'Sidebar',1),(182,1,11,'Sidebar',1),(169,1,12,'Sidebar',2),(170,1,12,'Sidebar',2),(170,2,12,'Sidebar',2),(170,3,12,'Sidebar',2),(170,4,12,'Sidebar',2),(171,1,12,'Sidebar',2),(171,2,12,'Sidebar',2),(171,3,12,'Sidebar',2),(171,4,12,'Sidebar',2),(172,1,12,'Sidebar',2),(172,2,12,'Sidebar',2),(172,3,12,'Sidebar',2),(172,4,12,'Sidebar',2),(182,1,12,'Sidebar',2),(176,1,18,'Sidebar',3),(177,1,18,'Sidebar',3),(178,1,18,'Sidebar',3),(157,1,37,'Main : 1',4),(158,1,37,'Main : 1',4),(158,2,37,'Main : 1',4),(158,3,37,'Main : 1',4),(158,4,37,'Main : 1',4),(157,1,38,'Main : 2',5),(158,1,38,'Main : 2',5),(158,2,38,'Main : 2',5),(158,3,38,'Main : 2',5),(158,4,38,'Main : 2',5),(157,1,39,'Main : 2',6),(158,1,39,'Main : 2',6),(158,2,39,'Main : 2',6),(158,3,39,'Main : 2',6),(158,4,39,'Main : 2',6),(154,1,41,'Main',7),(155,1,41,'Main',7),(155,2,41,'Main',7),(155,3,41,'Main',7),(1,1,53,'Main : 3',8),(1,2,53,'Main : 3',8),(1,1,54,'Main : 4',9),(1,2,54,'Main : 4',9),(1,1,55,'Main : 5',10),(1,2,55,'Main : 5',10),(1,1,57,'Main',11),(1,2,57,'Main',11),(1,1,64,'Main : 8',12),(1,2,64,'Main : 8',12),(1,1,65,'Main : 9',13),(1,2,65,'Main : 9',13),(156,1,98,'Main : 19',16),(156,1,99,'Main : 20',17),(156,1,102,'Main : 21',18),(156,1,103,'Main : 21',19),(156,1,104,'Main : 22',20),(156,1,105,'Main : 22',21),(156,1,106,'Main : 23',22),(156,1,107,'Main : 23',23),(156,1,110,'Main : 24',24),(160,1,125,'Main : 28',25),(173,1,143,'Main : 35',26),(174,1,158,'Main : 41',27);
/*!40000 ALTER TABLE `CollectionVersionBlockStyles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionBlocks`
--

DROP TABLE IF EXISTS `CollectionVersionBlocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionBlocks` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cbDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `isOriginal` tinyint(1) NOT NULL DEFAULT '0',
  `cbOverrideAreaPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `cbIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  `cbOverrideBlockTypeCacheSettings` tinyint(1) NOT NULL DEFAULT '0',
  `cbOverrideBlockTypeContainerSettings` tinyint(1) NOT NULL DEFAULT '0',
  `cbEnableBlockContainer` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `bID` (`bID`,`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionBlocks`
--

LOCK TABLES `CollectionVersionBlocks` WRITE;
/*!40000 ALTER TABLE `CollectionVersionBlocks` DISABLE KEYS */;
INSERT INTO `CollectionVersionBlocks` VALUES (1,1,51,'Main',0,1,0,0,0,0,0),(1,1,52,'Main',1,1,0,0,0,0,0),(1,1,53,'Main : 3',0,1,0,0,0,0,0),(1,1,54,'Main : 4',0,1,0,0,0,0,0),(1,1,55,'Main : 5',0,1,0,0,0,0,0),(1,1,56,'Main',2,1,0,0,0,0,0),(1,1,57,'Main',3,1,0,0,0,0,0),(1,1,58,'Main',4,1,0,0,0,0,0),(1,1,59,'Main',5,1,0,0,0,0,0),(1,1,60,'Main',6,1,0,0,0,0,0),(1,1,61,'Main : 6',0,1,0,0,0,0,0),(1,1,62,'Main : 7',0,1,0,0,0,0,0),(1,1,63,'Main',7,1,0,0,0,0,0),(1,1,64,'Main : 8',0,1,0,0,0,0,0),(1,1,65,'Main : 9',0,1,0,0,0,0,0),(1,1,66,'Main : 10',0,1,0,0,0,0,0),(1,1,67,'Page Footer',0,1,0,0,0,0,0),(1,2,51,'Main',0,0,0,0,0,0,0),(1,2,52,'Main',1,0,0,0,0,0,0),(1,2,53,'Main : 3',0,0,0,0,0,0,0),(1,2,54,'Main : 4',0,0,0,0,0,0,0),(1,2,55,'Main : 5',0,0,0,0,0,0,0),(1,2,56,'Main',2,0,0,0,0,0,0),(1,2,57,'Main',3,0,0,0,0,0,0),(1,2,58,'Main',4,0,0,0,0,0,0),(1,2,59,'Main',5,0,0,0,0,0,0),(1,2,60,'Main',6,0,0,0,0,0,0),(1,2,61,'Main : 6',0,0,0,0,0,0,0),(1,2,62,'Main : 7',0,0,0,0,0,0,0),(1,2,63,'Main',7,0,0,0,0,0,0),(1,2,64,'Main : 8',0,0,0,0,0,0,0),(1,2,65,'Main : 9',0,0,0,0,0,0,0),(1,2,66,'Main : 10',0,0,0,0,0,0,0),(1,2,67,'Page Footer',0,0,0,0,0,0,0),(126,1,1,'Main',0,1,0,0,0,0,0),(127,1,2,'Primary',0,1,0,0,0,0,0),(127,1,3,'Primary',1,1,0,0,0,0,0),(127,1,4,'Secondary 1',0,1,0,0,0,0,0),(127,1,5,'Secondary 2',0,1,0,0,0,0,0),(127,1,6,'Secondary 3',0,1,0,0,0,0,0),(127,1,7,'Secondary 4',0,1,0,0,0,0,0),(127,1,8,'Secondary 5',0,1,0,0,0,0,0),(144,1,43,'Main',0,1,0,0,0,0,0),(145,1,44,'Main',0,1,0,0,0,0,0),(146,1,45,'Main',0,1,0,0,0,0,0),(147,1,46,'Main',0,1,0,0,0,0,0),(148,1,47,'Main',0,1,0,0,0,0,0),(149,1,48,'Main',0,1,0,0,1,0,0),(150,1,49,'Main',0,1,0,0,0,0,0),(151,1,50,'Main',0,1,0,0,0,0,0),(153,1,68,'Main',0,1,0,0,0,0,0),(153,1,69,'Main',1,1,0,0,0,0,0),(153,1,70,'Main : 11',0,1,0,0,0,0,0),(153,1,71,'Main : 12',0,1,0,0,0,0,0),(153,1,72,'Main : 13',0,1,0,0,0,0,0),(153,1,73,'Main : 14',0,1,0,0,0,0,0),(153,1,74,'Main',2,1,0,0,0,0,0),(153,1,75,'Main',3,1,0,0,0,0,0),(153,1,76,'Main : 15',0,1,0,0,0,0,0),(153,1,77,'Main : 16',0,1,0,0,0,0,0),(153,1,78,'Page Footer',0,1,0,0,0,0,0),(153,1,79,'Page Footer',1,1,0,0,0,0,0),(153,1,80,'Page Footer : 17',0,1,0,0,0,0,0),(153,1,81,'Page Footer : 17',1,1,0,0,0,0,0),(153,1,82,'Page Footer : 18',0,1,0,0,0,0,0),(153,1,83,'Page Footer : 18',1,1,0,0,0,0,0),(153,2,68,'Main',0,0,0,0,0,0,0),(153,2,69,'Main',1,0,0,0,0,0,0),(153,2,70,'Main : 11',0,0,0,0,0,0,0),(153,2,71,'Main : 12',0,0,0,0,0,0,0),(153,2,72,'Main : 13',0,0,0,0,0,0,0),(153,2,73,'Main : 14',0,0,0,0,0,0,0),(153,2,74,'Main',2,0,0,0,0,0,0),(153,2,75,'Main',3,0,0,0,0,0,0),(153,2,76,'Main : 15',0,0,0,0,0,0,0),(153,2,77,'Main : 16',0,0,0,0,0,0,0),(153,2,78,'Page Footer',0,0,0,0,0,0,0),(153,2,79,'Page Footer',1,0,0,0,0,0,0),(153,2,80,'Page Footer : 17',0,0,0,0,0,0,0),(153,2,81,'Page Footer : 17',1,0,0,0,0,0,0),(153,2,82,'Page Footer : 18',0,0,0,0,0,0,0),(153,2,83,'Page Footer : 18',1,0,0,0,0,0,0),(153,3,68,'Main',0,0,0,0,0,0,0),(153,3,69,'Main',1,0,0,0,0,0,0),(153,3,70,'Main : 11',0,0,0,0,0,0,0),(153,3,71,'Main : 12',0,0,0,0,0,0,0),(153,3,72,'Main : 13',0,0,0,0,0,0,0),(153,3,73,'Main : 14',0,0,0,0,0,0,0),(153,3,74,'Main',2,0,0,0,0,0,0),(153,3,75,'Main',3,0,0,0,0,0,0),(153,3,76,'Main : 15',0,0,0,0,0,0,0),(153,3,77,'Main : 16',0,0,0,0,0,0,0),(153,3,78,'Page Footer',0,0,0,0,0,0,0),(153,3,79,'Page Footer',1,0,0,0,0,0,0),(153,3,80,'Page Footer : 17',0,0,0,0,0,0,0),(153,3,81,'Page Footer : 17',1,0,0,0,0,0,0),(153,3,82,'Page Footer : 18',0,0,0,0,0,0,0),(153,3,83,'Page Footer : 18',1,0,0,0,0,0,0),(154,1,40,'Main',0,1,0,0,0,0,0),(154,1,41,'Main',1,1,0,0,0,0,0),(154,1,42,'Main',2,1,0,0,0,0,0),(155,1,40,'Main',0,0,0,0,0,0,0),(155,1,41,'Main',1,0,0,0,0,0,0),(155,1,42,'Main',2,0,0,0,0,0,0),(155,2,40,'Main',0,0,0,0,0,0,0),(155,2,41,'Main',1,0,0,0,0,0,0),(155,2,42,'Main',2,0,0,0,0,0,0),(155,3,40,'Main',0,0,0,0,0,0,0),(155,3,41,'Main',1,0,0,0,0,0,0),(155,3,42,'Main',2,0,0,0,0,0,0),(156,1,96,'Main',0,1,0,0,0,0,0),(156,1,97,'Main',1,1,0,0,0,0,0),(156,1,98,'Main : 19',0,1,0,0,0,0,0),(156,1,99,'Main : 20',0,1,0,0,0,0,0),(156,1,100,'Main',2,1,0,0,0,0,0),(156,1,101,'Main',3,1,0,0,0,0,0),(156,1,102,'Main : 21',0,1,0,0,0,0,0),(156,1,103,'Main : 21',1,1,0,0,0,0,0),(156,1,104,'Main : 22',0,1,0,0,0,0,0),(156,1,105,'Main : 22',1,1,0,0,0,0,0),(156,1,106,'Main : 23',0,1,0,0,0,0,0),(156,1,107,'Main : 23',1,1,0,0,0,0,0),(156,1,108,'Main',4,1,0,0,0,0,0),(156,1,109,'Main',5,1,0,0,0,0,0),(156,1,110,'Main : 24',0,1,0,0,0,0,0),(156,1,111,'Main : 25',0,1,0,0,0,0,0),(157,1,35,'Main',0,1,0,0,0,0,0),(157,1,36,'Main',1,1,0,0,0,0,0),(157,1,37,'Main : 1',0,1,0,0,0,0,0),(157,1,38,'Main : 2',0,1,0,0,0,0,0),(157,1,39,'Main : 2',1,1,0,0,0,0,0),(158,1,35,'Main',0,0,0,0,0,0,0),(158,1,36,'Main',1,0,0,0,0,0,0),(158,1,37,'Main : 1',0,0,0,0,0,0,0),(158,1,38,'Main : 2',0,0,0,0,0,0,0),(158,1,39,'Main : 2',1,0,0,0,0,0,0),(158,2,35,'Main',0,0,0,0,0,0,0),(158,2,36,'Main',1,0,0,0,0,0,0),(158,2,37,'Main : 1',0,0,0,0,0,0,0),(158,2,38,'Main : 2',0,0,0,0,0,0,0),(158,2,39,'Main : 2',1,0,0,0,0,0,0),(158,3,35,'Main',0,0,0,0,0,0,0),(158,3,36,'Main',1,0,0,0,0,0,0),(158,3,37,'Main : 1',0,0,0,0,0,0,0),(158,3,38,'Main : 2',0,0,0,0,0,0,0),(158,3,39,'Main : 2',1,0,0,0,0,0,0),(158,4,35,'Main',0,0,0,0,0,0,0),(158,4,36,'Main',1,0,0,0,0,0,0),(158,4,37,'Main : 1',0,0,0,0,0,0,0),(158,4,38,'Main : 2',0,0,0,0,0,0,0),(158,4,39,'Main : 2',1,0,0,0,0,0,0),(159,1,118,'Main',0,1,0,0,0,0,0),(160,1,119,'Main',0,1,0,0,0,0,0),(160,1,120,'Main',1,1,0,0,0,0,0),(160,1,121,'Main : 26',0,1,0,0,0,0,0),(160,1,122,'Main : 27',0,1,0,0,0,0,0),(160,1,123,'Main',2,1,0,0,0,0,0),(160,1,124,'Main',3,1,0,0,0,0,0),(160,1,125,'Main : 28',0,1,0,0,0,0,0),(160,1,126,'Main : 29',0,1,0,0,0,0,0),(160,1,127,'Main : 30',0,1,0,0,0,0,0),(160,1,128,'Main : 30',1,1,0,0,0,0,0),(161,1,129,'Main',0,1,0,0,0,0,0),(162,1,27,'Page Header',0,1,0,0,0,0,0),(162,1,28,'Page Header',1,1,0,0,0,0,0),(162,1,29,'Sidebar',0,1,0,0,0,0,0),(162,1,30,'Sidebar',1,1,0,0,0,0,0),(162,1,31,'Sidebar',2,1,0,0,0,0,0),(162,1,32,'Main',0,1,0,0,0,0,0),(162,1,33,'Page Footer',0,1,0,0,0,0,0),(162,1,34,'Page Footer',1,1,0,0,0,0,0),(163,1,27,'Page Header',0,0,0,0,0,0,0),(163,1,29,'Sidebar',0,0,0,0,0,0,0),(163,1,30,'Sidebar',1,0,0,0,0,0,0),(163,1,31,'Sidebar',2,0,0,0,0,0,0),(163,1,33,'Page Footer',0,0,0,0,0,0,0),(163,1,34,'Page Footer',1,0,0,0,0,0,0),(163,1,84,'Page Header',1,1,0,0,0,0,0),(163,1,85,'Main',0,1,0,0,0,0,0),(164,1,27,'Page Header',0,0,0,0,0,0,0),(164,1,29,'Sidebar',0,0,0,0,0,0,0),(164,1,30,'Sidebar',1,0,0,0,0,0,0),(164,1,31,'Sidebar',2,0,0,0,0,0,0),(164,1,33,'Page Footer',0,0,0,0,0,0,0),(164,1,34,'Page Footer',1,0,0,0,0,0,0),(164,1,86,'Page Header',1,1,0,0,0,0,0),(164,1,87,'Main',0,1,0,0,0,0,0),(165,1,27,'Page Header',0,0,0,0,0,0,0),(165,1,29,'Sidebar',0,0,0,0,0,0,0),(165,1,30,'Sidebar',1,0,0,0,0,0,0),(165,1,31,'Sidebar',2,0,0,0,0,0,0),(165,1,33,'Page Footer',0,0,0,0,0,0,0),(165,1,34,'Page Footer',1,0,0,0,0,0,0),(165,1,88,'Page Header',1,1,0,0,0,0,0),(165,1,89,'Main',0,1,0,0,0,0,0),(166,1,27,'Page Header',0,0,0,0,0,0,0),(166,1,29,'Sidebar',0,0,0,0,0,0,0),(166,1,30,'Sidebar',1,0,0,0,0,0,0),(166,1,31,'Sidebar',2,0,0,0,0,0,0),(166,1,33,'Page Footer',0,0,0,0,0,0,0),(166,1,34,'Page Footer',1,0,0,0,0,0,0),(166,1,90,'Page Header',1,1,0,0,0,0,0),(166,1,91,'Main',0,1,0,0,0,0,0),(167,1,27,'Page Header',0,0,0,0,0,0,0),(167,1,29,'Sidebar',0,0,0,0,0,0,0),(167,1,30,'Sidebar',1,0,0,0,0,0,0),(167,1,31,'Sidebar',2,0,0,0,0,0,0),(167,1,33,'Page Footer',0,0,0,0,0,0,0),(167,1,34,'Page Footer',1,0,0,0,0,0,0),(167,1,92,'Page Header',1,1,0,0,0,0,0),(167,1,93,'Main',0,1,0,0,0,0,0),(168,1,27,'Page Header',0,0,0,0,0,0,0),(168,1,29,'Sidebar',0,0,0,0,0,0,0),(168,1,30,'Sidebar',1,0,0,0,0,0,0),(168,1,31,'Sidebar',2,0,0,0,0,0,0),(168,1,33,'Page Footer',0,0,0,0,0,0,0),(168,1,34,'Page Footer',1,0,0,0,0,0,0),(168,1,94,'Page Header',1,1,0,0,0,0,0),(168,1,95,'Main',0,1,0,0,0,0,0),(169,1,9,'Main',0,1,0,0,0,0,0),(169,1,10,'Main',1,1,0,0,0,0,0),(169,1,11,'Sidebar',0,1,0,0,0,0,0),(169,1,12,'Sidebar',1,1,0,0,0,0,0),(169,1,13,'Sidebar',2,1,0,0,0,0,0),(169,1,14,'Sidebar',3,1,0,0,0,0,0),(169,1,15,'Page Footer',0,1,0,0,0,0,0),(169,1,16,'Page Footer',1,1,0,0,0,0,0),(170,1,9,'Main',0,0,0,0,0,0,0),(170,1,11,'Sidebar',0,0,0,0,0,0,0),(170,1,12,'Sidebar',1,0,0,0,0,0,0),(170,1,13,'Sidebar',2,0,0,0,0,0,0),(170,1,14,'Sidebar',3,0,0,0,0,0,0),(170,1,15,'Page Footer',0,0,0,0,0,0,0),(170,1,112,'Page Footer',1,1,0,0,0,0,0),(170,1,113,'Main',1,1,0,0,0,0,0),(170,2,9,'Main',0,0,0,0,0,0,0),(170,2,11,'Sidebar',0,0,0,0,0,0,0),(170,2,12,'Sidebar',1,0,0,0,0,0,0),(170,2,13,'Sidebar',2,0,0,0,0,0,0),(170,2,14,'Sidebar',3,0,0,0,0,0,0),(170,2,15,'Page Footer',0,0,0,0,0,0,0),(170,2,112,'Page Footer',1,0,0,0,0,0,0),(170,2,113,'Main',1,0,0,0,0,0,0),(170,3,9,'Main',0,0,0,0,0,0,0),(170,3,11,'Sidebar',0,0,0,0,0,0,0),(170,3,12,'Sidebar',1,0,0,0,0,0,0),(170,3,13,'Sidebar',2,0,0,0,0,0,0),(170,3,14,'Sidebar',3,0,0,0,0,0,0),(170,3,15,'Page Footer',0,0,0,0,0,0,0),(170,3,112,'Page Footer',1,0,0,0,0,0,0),(170,3,113,'Main',1,0,0,0,0,0,0),(170,4,9,'Main',0,0,0,0,0,0,0),(170,4,11,'Sidebar',0,0,0,0,0,0,0),(170,4,12,'Sidebar',1,0,0,0,0,0,0),(170,4,13,'Sidebar',2,0,0,0,0,0,0),(170,4,14,'Sidebar',3,0,0,0,0,0,0),(170,4,15,'Page Footer',0,0,0,0,0,0,0),(170,4,112,'Page Footer',1,0,0,0,0,0,0),(170,4,113,'Main',1,0,0,0,0,0,0),(171,1,9,'Main',0,0,0,0,0,0,0),(171,1,11,'Sidebar',0,0,0,0,0,0,0),(171,1,12,'Sidebar',1,0,0,0,0,0,0),(171,1,13,'Sidebar',2,0,0,0,0,0,0),(171,1,14,'Sidebar',3,0,0,0,0,0,0),(171,1,15,'Page Footer',0,0,0,0,0,0,0),(171,1,114,'Page Footer',1,1,0,0,0,0,0),(171,1,115,'Main',1,1,0,0,0,0,0),(171,2,9,'Main',0,0,0,0,0,0,0),(171,2,11,'Sidebar',0,0,0,0,0,0,0),(171,2,12,'Sidebar',1,0,0,0,0,0,0),(171,2,13,'Sidebar',2,0,0,0,0,0,0),(171,2,14,'Sidebar',3,0,0,0,0,0,0),(171,2,15,'Page Footer',0,0,0,0,0,0,0),(171,2,114,'Page Footer',1,0,0,0,0,0,0),(171,2,115,'Main',1,0,0,0,0,0,0),(171,3,9,'Main',0,0,0,0,0,0,0),(171,3,11,'Sidebar',0,0,0,0,0,0,0),(171,3,12,'Sidebar',1,0,0,0,0,0,0),(171,3,13,'Sidebar',2,0,0,0,0,0,0),(171,3,14,'Sidebar',3,0,0,0,0,0,0),(171,3,15,'Page Footer',0,0,0,0,0,0,0),(171,3,114,'Page Footer',1,0,0,0,0,0,0),(171,3,115,'Main',1,0,0,0,0,0,0),(171,4,9,'Main',0,0,0,0,0,0,0),(171,4,11,'Sidebar',0,0,0,0,0,0,0),(171,4,12,'Sidebar',1,0,0,0,0,0,0),(171,4,13,'Sidebar',2,0,0,0,0,0,0),(171,4,14,'Sidebar',3,0,0,0,0,0,0),(171,4,15,'Page Footer',0,0,0,0,0,0,0),(171,4,114,'Page Footer',1,0,0,0,0,0,0),(171,4,115,'Main',1,0,0,0,0,0,0),(172,1,9,'Main',0,0,0,0,0,0,0),(172,1,11,'Sidebar',0,0,0,0,0,0,0),(172,1,12,'Sidebar',1,0,0,0,0,0,0),(172,1,13,'Sidebar',2,0,0,0,0,0,0),(172,1,14,'Sidebar',3,0,0,0,0,0,0),(172,1,15,'Page Footer',0,0,0,0,0,0,0),(172,1,116,'Page Footer',1,1,0,0,0,0,0),(172,1,117,'Main',1,1,0,0,0,0,0),(172,2,9,'Main',0,0,0,0,0,0,0),(172,2,11,'Sidebar',0,0,0,0,0,0,0),(172,2,12,'Sidebar',1,0,0,0,0,0,0),(172,2,13,'Sidebar',2,0,0,0,0,0,0),(172,2,14,'Sidebar',3,0,0,0,0,0,0),(172,2,15,'Page Footer',0,0,0,0,0,0,0),(172,2,116,'Page Footer',1,0,0,0,0,0,0),(172,2,117,'Main',1,0,0,0,0,0,0),(172,3,9,'Main',0,0,0,0,0,0,0),(172,3,11,'Sidebar',0,0,0,0,0,0,0),(172,3,12,'Sidebar',1,0,0,0,0,0,0),(172,3,13,'Sidebar',2,0,0,0,0,0,0),(172,3,14,'Sidebar',3,0,0,0,0,0,0),(172,3,15,'Page Footer',0,0,0,0,0,0,0),(172,3,116,'Page Footer',1,0,0,0,0,0,0),(172,3,117,'Main',1,0,0,0,0,0,0),(172,4,9,'Main',0,0,0,0,0,0,0),(172,4,11,'Sidebar',0,0,0,0,0,0,0),(172,4,12,'Sidebar',1,0,0,0,0,0,0),(172,4,13,'Sidebar',2,0,0,0,0,0,0),(172,4,14,'Sidebar',3,0,0,0,0,0,0),(172,4,15,'Page Footer',0,0,0,0,0,0,0),(172,4,116,'Page Footer',1,0,0,0,0,0,0),(172,4,117,'Main',1,0,0,0,0,0,0),(173,1,130,'Main',0,1,0,0,0,0,0),(173,1,131,'Main',1,1,0,0,0,0,0),(173,1,132,'Main : 31',0,1,0,0,0,0,0),(173,1,133,'Main : 32',0,1,0,0,0,0,0),(173,1,134,'Main : 32',1,1,0,0,0,0,0),(173,1,135,'Main',2,1,0,0,0,0,0),(173,1,136,'Main',3,1,0,0,0,0,0),(173,1,137,'Main : 33',0,1,0,0,0,0,0),(173,1,138,'Main : 34',0,1,0,0,0,0,0),(173,1,139,'Main : 34',1,1,0,0,0,0,0),(173,1,140,'Main : 34',2,1,0,0,0,0,0),(173,1,141,'Main',4,1,0,0,0,0,0),(173,1,142,'Main',5,1,0,0,0,0,0),(173,1,143,'Main : 35',0,1,0,0,0,0,0),(173,1,144,'Main : 36',0,1,0,0,0,0,0),(174,1,145,'Main',0,1,0,0,0,0,0),(174,1,146,'Main',1,1,0,0,0,0,0),(174,1,147,'Main',2,1,0,0,0,0,0),(174,1,148,'Main',3,1,0,0,0,0,0),(174,1,149,'Main : 37',0,1,0,0,0,0,0),(174,1,150,'Main : 37',1,1,0,0,0,0,0),(174,1,151,'Main : 38',0,1,0,0,0,0,0),(174,1,152,'Main : 38',1,1,0,0,0,0,0),(174,1,153,'Main : 39',0,1,0,0,0,0,0),(174,1,154,'Main : 39',1,1,0,0,0,0,0),(174,1,155,'Main',4,1,0,0,0,0,0),(174,1,156,'Main',5,1,0,0,0,0,0),(174,1,157,'Main : 40',0,1,0,0,0,0,0),(174,1,158,'Main : 41',0,1,0,0,0,0,0),(175,1,161,'Main',0,1,0,0,0,0,0),(175,1,162,'Main',1,1,0,0,0,0,0),(176,1,17,'Page Header',0,1,0,0,0,0,0),(176,1,18,'Sidebar',0,1,0,0,0,0,0),(176,1,19,'Main',0,1,0,0,0,0,0),(176,1,20,'Main',1,1,0,0,0,0,0),(176,1,21,'Main',2,1,0,0,0,0,0),(176,1,22,'Main',3,1,0,0,0,0,0),(176,1,23,'Main',4,1,0,0,0,0,0),(176,1,24,'Main',5,1,0,0,0,0,0),(176,1,25,'Main',6,1,0,0,0,0,0),(176,1,26,'Main',7,1,0,0,0,0,0),(177,1,17,'Page Header',0,0,0,0,0,0,0),(177,1,18,'Sidebar',0,0,0,0,0,0,0),(177,1,19,'Main',0,0,0,0,0,0,0),(177,1,20,'Main',1,0,0,0,0,0,0),(177,1,21,'Main',2,0,0,0,0,0,0),(177,1,22,'Main',3,0,0,0,0,0,0),(177,1,23,'Main',4,0,0,0,0,0,0),(177,1,24,'Main',5,0,0,0,0,0,0),(177,1,26,'Main',7,0,0,0,0,0,0),(177,1,159,'Main',6,1,0,0,0,0,0),(178,1,17,'Page Header',0,0,0,0,0,0,0),(178,1,18,'Sidebar',0,0,0,0,0,0,0),(178,1,19,'Main',0,0,0,0,0,0,0),(178,1,20,'Main',1,0,0,0,0,0,0),(178,1,21,'Main',2,0,0,0,0,0,0),(178,1,22,'Main',3,0,0,0,0,0,0),(178,1,23,'Main',4,0,0,0,0,0,0),(178,1,24,'Main',5,0,0,0,0,0,0),(178,1,26,'Main',7,0,0,0,0,0,0),(178,1,160,'Main',6,1,0,0,0,0,0),(182,1,9,'Main',0,0,0,0,0,0,0),(182,1,11,'Sidebar',0,0,0,0,0,0,0),(182,1,12,'Sidebar',1,0,0,0,0,0,0),(182,1,13,'Sidebar',2,0,0,0,0,0,0),(182,1,14,'Sidebar',3,0,0,0,0,0,0),(182,1,15,'Page Footer',0,0,0,0,0,0,0),(182,1,163,'Page Footer',1,1,0,0,0,0,0),(182,1,164,'Main',1,1,0,0,0,0,0);
/*!40000 ALTER TABLE `CollectionVersionBlocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionBlocksCacheSettings`
--

DROP TABLE IF EXISTS `CollectionVersionBlocksCacheSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionBlocksCacheSettings` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `btCacheBlockOutput` tinyint(1) NOT NULL DEFAULT '0',
  `btCacheBlockOutputOnPost` tinyint(1) NOT NULL DEFAULT '0',
  `btCacheBlockOutputForRegisteredUsers` tinyint(1) NOT NULL DEFAULT '0',
  `btCacheBlockOutputLifetime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `bID` (`bID`,`cID`,`cvID`,`arHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionBlocksCacheSettings`
--

LOCK TABLES `CollectionVersionBlocksCacheSettings` WRITE;
/*!40000 ALTER TABLE `CollectionVersionBlocksCacheSettings` DISABLE KEYS */;
INSERT INTO `CollectionVersionBlocksCacheSettings` VALUES (149,1,48,'Main',1,1,1,3600);
/*!40000 ALTER TABLE `CollectionVersionBlocksCacheSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionBlocksOutputCache`
--

DROP TABLE IF EXISTS `CollectionVersionBlocksOutputCache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionBlocksOutputCache` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `btCachedBlockOutput` longtext COLLATE utf8_unicode_ci,
  `btCachedBlockOutputExpires` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `bID` (`bID`,`cID`,`cvID`,`arHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionBlocksOutputCache`
--

LOCK TABLES `CollectionVersionBlocksOutputCache` WRITE;
/*!40000 ALTER TABLE `CollectionVersionBlocksOutputCache` DISABLE KEYS */;
/*!40000 ALTER TABLE `CollectionVersionBlocksOutputCache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionFeatureAssignments`
--

DROP TABLE IF EXISTS `CollectionVersionFeatureAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionFeatureAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `faID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`faID`),
  KEY `faID` (`faID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionFeatureAssignments`
--

LOCK TABLES `CollectionVersionFeatureAssignments` WRITE;
/*!40000 ALTER TABLE `CollectionVersionFeatureAssignments` DISABLE KEYS */;
INSERT INTO `CollectionVersionFeatureAssignments` VALUES (156,1,2),(160,1,6),(169,1,1),(170,1,3),(170,2,3),(170,3,3),(170,4,3),(171,1,4),(171,2,4),(171,3,4),(171,4,4),(172,1,5),(172,2,5),(172,3,5),(172,4,5),(173,1,7),(173,1,8),(173,1,9),(174,1,10),(182,1,11);
/*!40000 ALTER TABLE `CollectionVersionFeatureAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionRelatedEdits`
--

DROP TABLE IF EXISTS `CollectionVersionRelatedEdits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionRelatedEdits` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `cRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`cRelationID`,`cvRelationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionRelatedEdits`
--

LOCK TABLES `CollectionVersionRelatedEdits` WRITE;
/*!40000 ALTER TABLE `CollectionVersionRelatedEdits` DISABLE KEYS */;
/*!40000 ALTER TABLE `CollectionVersionRelatedEdits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionThemeCustomStyles`
--

DROP TABLE IF EXISTS `CollectionVersionThemeCustomStyles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionThemeCustomStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `pThemeID` int(10) unsigned NOT NULL DEFAULT '0',
  `scvlID` int(10) unsigned DEFAULT '0',
  `preset` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sccRecordID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`pThemeID`),
  KEY `pThemeID` (`pThemeID`),
  KEY `scvlID` (`scvlID`),
  KEY `sccRecordID` (`sccRecordID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionThemeCustomStyles`
--

LOCK TABLES `CollectionVersionThemeCustomStyles` WRITE;
/*!40000 ALTER TABLE `CollectionVersionThemeCustomStyles` DISABLE KEYS */;
/*!40000 ALTER TABLE `CollectionVersionThemeCustomStyles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersions`
--

DROP TABLE IF EXISTS `CollectionVersions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersions` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `cvName` text COLLATE utf8_unicode_ci,
  `cvHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cvDescription` text COLLATE utf8_unicode_ci,
  `cvDatePublic` datetime DEFAULT NULL,
  `cvDateCreated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cvComments` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cvIsApproved` tinyint(1) NOT NULL DEFAULT '0',
  `cvIsNew` tinyint(1) NOT NULL DEFAULT '0',
  `cvAuthorUID` int(10) unsigned DEFAULT NULL,
  `cvApproverUID` int(10) unsigned DEFAULT NULL,
  `pThemeID` int(10) unsigned NOT NULL DEFAULT '0',
  `pTemplateID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvActivateDatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`cID`,`cvID`),
  KEY `cvIsApproved` (`cvIsApproved`),
  KEY `cvAuthorUID` (`cvAuthorUID`),
  KEY `cvApproverUID` (`cvApproverUID`),
  KEY `pThemeID` (`pThemeID`),
  KEY `pTemplateID` (`pTemplateID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersions`
--

LOCK TABLES `CollectionVersions` WRITE;
/*!40000 ALTER TABLE `CollectionVersions` DISABLE KEYS */;
INSERT INTO `CollectionVersions` VALUES (1,1,'Home','home','','2017-06-26 14:57:53','2017-06-26 14:57:53','Initial Version',0,0,1,NULL,3,6,NULL),(1,2,'Home','home','','2017-06-26 14:57:53','2017-06-26 15:46:50','新バージョン 2',1,0,1,1,3,10,NULL),(2,1,'Dashboard','dashboard','','2017-06-26 14:58:32','2017-06-26 14:58:32','Initial Version',1,0,1,NULL,3,0,NULL),(3,1,'Sitemap','sitemap','Whole world at a glance.','2017-06-26 14:58:33','2017-06-26 14:58:33','Initial Version',1,0,1,NULL,3,0,NULL),(4,1,'Full Sitemap','full','','2017-06-26 14:58:33','2017-06-26 14:58:33','Initial Version',1,0,1,NULL,3,0,NULL),(5,1,'Flat View','explore','','2017-06-26 14:58:33','2017-06-26 14:58:33','Initial Version',1,0,1,NULL,3,0,NULL),(6,1,'Page Search','search','','2017-06-26 14:58:33','2017-06-26 14:58:33','Initial Version',1,0,1,NULL,3,0,NULL),(7,1,'Files','files','All documents and images.','2017-06-26 14:58:33','2017-06-26 14:58:33','Initial Version',1,0,1,NULL,3,0,NULL),(8,1,'File Manager','search','','2017-06-26 14:58:33','2017-06-26 14:58:33','Initial Version',1,0,1,NULL,3,0,NULL),(9,1,'Attributes','attributes','','2017-06-26 14:58:33','2017-06-26 14:58:33','Initial Version',1,0,1,NULL,3,0,NULL),(10,1,'File Sets','sets','','2017-06-26 14:58:33','2017-06-26 14:58:33','Initial Version',1,0,1,NULL,3,0,NULL),(11,1,'Add File Set','add_set','','2017-06-26 14:58:33','2017-06-26 14:58:33','Initial Version',1,0,1,NULL,3,0,NULL),(12,1,'Members','users','Add and manage the user accounts and groups on your website.','2017-06-26 14:58:33','2017-06-26 14:58:33','Initial Version',1,0,1,NULL,3,0,NULL),(13,1,'Search Users','search','','2017-06-26 14:58:33','2017-06-26 14:58:33','Initial Version',1,0,1,NULL,3,0,NULL),(14,1,'User Groups','groups','','2017-06-26 14:58:33','2017-06-26 14:58:33','Initial Version',1,0,1,NULL,3,0,NULL),(15,1,'Attributes','attributes','','2017-06-26 14:58:33','2017-06-26 14:58:33','Initial Version',1,0,1,NULL,3,0,NULL),(16,1,'Add User','add','','2017-06-26 14:58:34','2017-06-26 14:58:34','Initial Version',1,0,1,NULL,3,0,NULL),(17,1,'Add Group','add_group','','2017-06-26 14:58:34','2017-06-26 14:58:34','Initial Version',1,0,1,NULL,3,0,NULL),(18,1,'Move Multiple Groups','bulkupdate','','2017-06-26 14:58:34','2017-06-26 14:58:34','Initial Version',1,0,1,NULL,3,0,NULL),(19,1,'Group Sets','group_sets','','2017-06-26 14:58:34','2017-06-26 14:58:34','Initial Version',1,0,1,NULL,3,0,NULL),(20,1,'Community Points','points',NULL,'2017-06-26 14:58:34','2017-06-26 14:58:34','Initial Version',1,0,1,NULL,3,0,NULL),(21,1,'Assign Points','assign',NULL,'2017-06-26 14:58:34','2017-06-26 14:58:34','Initial Version',1,0,1,NULL,3,0,NULL),(22,1,'Actions','actions',NULL,'2017-06-26 14:58:34','2017-06-26 14:58:34','Initial Version',1,0,1,NULL,3,0,NULL),(23,1,'Reports','reports','Get data from forms and logs.','2017-06-26 14:58:34','2017-06-26 14:58:34','Initial Version',1,0,1,NULL,3,0,NULL),(24,1,'Form Results','forms','Get submission data.','2017-06-26 14:58:34','2017-06-26 14:58:34','Initial Version',1,0,1,NULL,3,0,NULL),(25,1,'Surveys','surveys','','2017-06-26 14:58:34','2017-06-26 14:58:34','Initial Version',1,0,1,NULL,3,0,NULL),(26,1,'Logs','logs','','2017-06-26 14:58:34','2017-06-26 14:58:34','Initial Version',1,0,1,NULL,3,0,NULL),(27,1,'Pages & Themes','pages','Reskin your site.','2017-06-26 14:58:34','2017-06-26 14:58:34','Initial Version',1,0,1,NULL,3,0,NULL),(28,1,'Themes','themes','Reskin your site.','2017-06-26 14:58:34','2017-06-26 14:58:34','Initial Version',1,0,1,NULL,3,0,NULL),(29,1,'Inspect','inspect','','2017-06-26 14:58:34','2017-06-26 14:58:34','Initial Version',1,0,1,NULL,3,0,NULL),(30,1,'Page Types','types','','2017-06-26 14:58:34','2017-06-26 14:58:34','Initial Version',1,0,1,NULL,3,0,NULL),(31,1,'Organize Page Type Order','organize','','2017-06-26 14:58:34','2017-06-26 14:58:34','Initial Version',1,0,1,NULL,3,0,NULL),(32,1,'Add Page Type','add','','2017-06-26 14:58:34','2017-06-26 14:58:34','Initial Version',1,0,1,NULL,3,0,NULL),(33,1,'Compose Form','form','','2017-06-26 14:58:35','2017-06-26 14:58:35','Initial Version',1,0,1,NULL,3,0,NULL),(34,1,'Defaults and Output','output','','2017-06-26 14:58:35','2017-06-26 14:58:35','Initial Version',1,0,1,NULL,3,0,NULL),(35,1,'Page Type Attributes','attributes','','2017-06-26 14:58:35','2017-06-26 14:58:35','Initial Version',1,0,1,NULL,3,0,NULL),(36,1,'Page Type Permissions','permissions','','2017-06-26 14:58:35','2017-06-26 14:58:35','Initial Version',1,0,1,NULL,3,0,NULL),(37,1,'Page Templates','templates','Form factors for pages in your site.','2017-06-26 14:58:35','2017-06-26 14:58:35','Initial Version',1,0,1,NULL,3,0,NULL),(38,1,'Add Page Template','add','Add page templates to your site.','2017-06-26 14:58:35','2017-06-26 14:58:35','Initial Version',1,0,1,NULL,3,0,NULL),(39,1,'Attributes','attributes','','2017-06-26 14:58:35','2017-06-26 14:58:35','Initial Version',1,0,1,NULL,3,0,NULL),(40,1,'Single Pages','single','','2017-06-26 14:58:35','2017-06-26 14:58:35','Initial Version',1,0,1,NULL,3,0,NULL),(41,1,'RSS Feeds','feeds','','2017-06-26 14:58:35','2017-06-26 14:58:35','Initial Version',1,0,1,NULL,3,0,NULL),(42,1,'Conversations','conversations','','2017-06-26 14:58:35','2017-06-26 14:58:35','Initial Version',1,0,1,NULL,3,0,NULL),(43,1,'Messages','messages','','2017-06-26 14:58:35','2017-06-26 14:58:35','Initial Version',1,0,1,NULL,3,0,NULL),(44,1,'Workflow','workflow','','2017-06-26 14:58:35','2017-06-26 14:58:35','Initial Version',1,0,1,NULL,3,0,NULL),(45,1,'Waiting for Me','me','','2017-06-26 14:58:35','2017-06-26 14:58:35','Initial Version',1,0,1,NULL,3,0,NULL),(46,1,'Workflow List','workflows','','2017-06-26 14:58:35','2017-06-26 14:58:35','Initial Version',1,0,1,NULL,3,0,NULL),(47,1,'Stacks & Blocks','blocks','Manage sitewide content and administer block types.','2017-06-26 14:58:35','2017-06-26 14:58:35','Initial Version',1,0,1,NULL,3,0,NULL),(48,1,'Stacks','stacks','Share content across your site.','2017-06-26 14:58:35','2017-06-26 14:58:35','Initial Version',1,0,1,NULL,3,0,NULL),(49,1,'Block & Stack Permissions','permissions','Control who can add blocks and stacks on your site.','2017-06-26 14:58:36','2017-06-26 14:58:36','Initial Version',1,0,1,NULL,3,0,NULL),(50,1,'Stack List','list','','2017-06-26 14:58:36','2017-06-26 14:58:36','Initial Version',1,0,1,NULL,3,0,NULL),(51,1,'Block Types','types','Manage the installed block types in your site.','2017-06-26 14:58:36','2017-06-26 14:58:36','Initial Version',1,0,1,NULL,3,0,NULL),(52,1,'Extend concrete5','extend','','2017-06-26 14:58:36','2017-06-26 14:58:36','Initial Version',1,0,1,NULL,3,0,NULL),(53,1,'Dashboard','news','','2017-06-26 14:58:36','2017-06-26 14:58:36','Initial Version',1,0,1,NULL,3,0,NULL),(54,1,'Add Functionality','install','Install add-ons & themes.','2017-06-26 14:58:36','2017-06-26 14:58:36','Initial Version',1,0,1,NULL,3,0,NULL),(55,1,'Update Add-Ons','update','Update your installed packages.','2017-06-26 14:58:36','2017-06-26 14:58:36','Initial Version',1,0,1,NULL,3,0,NULL),(56,1,'Connect to the Community','connect','Connect to the concrete5 community.','2017-06-26 14:58:36','2017-06-26 14:58:36','Initial Version',1,0,1,NULL,3,0,NULL),(57,1,'Get More Themes','themes','Download themes from concrete5.org.','2017-06-26 14:58:36','2017-06-26 14:58:36','Initial Version',1,0,1,NULL,3,0,NULL),(58,1,'Get More Add-Ons','addons','Download add-ons from concrete5.org.','2017-06-26 14:58:36','2017-06-26 14:58:36','Initial Version',1,0,1,NULL,3,0,NULL),(59,1,'System & Settings','system','Secure and setup your site.','2017-06-26 14:58:36','2017-06-26 14:58:36','Initial Version',1,0,1,NULL,3,0,NULL),(60,1,'Basics','basics','Basic information about your website.','2017-06-26 14:58:36','2017-06-26 14:58:36','Initial Version',1,0,1,NULL,3,0,NULL),(61,1,'Site Name','name','','2017-06-26 14:58:36','2017-06-26 14:58:36','Initial Version',1,0,1,NULL,3,0,NULL),(62,1,'Accessibility','accessibility','','2017-06-26 14:58:36','2017-06-26 14:58:36','Initial Version',1,0,1,NULL,3,0,NULL),(63,1,'Social Links','social','','2017-06-26 14:58:36','2017-06-26 14:58:36','Initial Version',1,0,1,NULL,3,0,NULL),(64,1,'Bookmark Icons','icons','Bookmark icon and mobile home screen icon setup.','2017-06-26 14:58:36','2017-06-26 14:58:36','Initial Version',1,0,1,NULL,3,0,NULL),(65,1,'Rich Text Editor','editor','','2017-06-26 14:58:37','2017-06-26 14:58:37','Initial Version',1,0,1,NULL,3,0,NULL),(66,1,'Languages','multilingual','','2017-06-26 14:58:37','2017-06-26 14:58:37','Initial Version',1,0,1,NULL,3,0,NULL),(67,1,'Time Zone','timezone','','2017-06-26 14:58:37','2017-06-26 14:58:37','Initial Version',1,0,1,NULL,3,0,NULL),(68,1,'Multilingual','multilingual','Run your site in multiple languages.','2017-06-26 14:58:37','2017-06-26 14:58:37','Initial Version',1,0,1,NULL,3,0,NULL),(69,1,'Multilingual Setup','setup','','2017-06-26 14:58:37','2017-06-26 14:58:37','Initial Version',1,0,1,NULL,3,0,NULL),(70,1,'Copy Languages','copy','','2017-06-26 14:58:37','2017-06-26 14:58:37','Initial Version',1,0,1,NULL,3,0,NULL),(71,1,'Page Report','page_report','','2017-06-26 14:58:37','2017-06-26 14:58:37','Initial Version',1,0,1,NULL,3,0,NULL),(72,1,'Translate Site Interface','translate_interface','','2017-06-26 14:58:37','2017-06-26 14:58:37','Initial Version',1,0,1,NULL,3,0,NULL),(73,1,'SEO & Statistics','seo','Enable pretty URLs and tracking codes.','2017-06-26 14:58:37','2017-06-26 14:58:37','Initial Version',1,0,1,NULL,3,0,NULL),(74,1,'URLs and Redirection','urls','','2017-06-26 14:58:37','2017-06-26 14:58:37','Initial Version',1,0,1,NULL,3,0,NULL),(75,1,'Bulk SEO Updater','bulk','','2017-06-26 14:58:37','2017-06-26 14:58:37','Initial Version',1,0,1,NULL,3,0,NULL),(76,1,'Tracking Codes','codes','','2017-06-26 14:58:37','2017-06-26 14:58:37','Initial Version',1,0,1,NULL,3,0,NULL),(77,1,'Excluded URL Word List','excluded','','2017-06-26 14:58:37','2017-06-26 14:58:37','Initial Version',1,0,1,NULL,3,0,NULL),(78,1,'Search Index','searchindex','','2017-06-26 14:58:37','2017-06-26 14:58:37','Initial Version',1,0,1,NULL,3,0,NULL),(79,1,'Files','files','','2017-06-26 14:58:38','2017-06-26 14:58:38','Initial Version',1,0,1,NULL,3,0,NULL),(80,1,'File Manager Permissions','permissions','','2017-06-26 14:58:38','2017-06-26 14:58:38','Initial Version',1,0,1,NULL,3,0,NULL),(81,1,'Allowed File Types','filetypes','','2017-06-26 14:58:38','2017-06-26 14:58:38','Initial Version',1,0,1,NULL,3,0,NULL),(82,1,'Thumbnails','thumbnails','','2017-06-26 14:58:38','2017-06-26 14:58:38','Initial Version',1,0,1,NULL,3,0,NULL),(83,1,'File Storage Locations','storage','','2017-06-26 14:58:38','2017-06-26 14:58:38','Initial Version',1,0,1,NULL,3,0,NULL),(84,1,'Optimization','optimization','Keep your site running well.','2017-06-26 14:58:38','2017-06-26 14:58:38','Initial Version',1,0,1,NULL,3,0,NULL),(85,1,'Cache & Speed Settings','cache','','2017-06-26 14:58:38','2017-06-26 14:58:38','Initial Version',1,0,1,NULL,3,0,NULL),(86,1,'Clear Cache','clearcache','','2017-06-26 14:58:38','2017-06-26 14:58:38','Initial Version',1,0,1,NULL,3,0,NULL),(87,1,'Automated Jobs','jobs','','2017-06-26 14:58:38','2017-06-26 14:58:38','Initial Version',1,0,1,NULL,3,0,NULL),(88,1,'Database Query Log','query_log','','2017-06-26 14:58:38','2017-06-26 14:58:38','Initial Version',1,0,1,NULL,3,0,NULL),(89,1,'Permissions & Access','permissions','Control who sees and edits your site.','2017-06-26 14:58:38','2017-06-26 14:58:38','Initial Version',1,0,1,NULL,3,0,NULL),(90,1,'Site Access','site','','2017-06-26 14:58:38','2017-06-26 14:58:38','Initial Version',1,0,1,NULL,3,0,NULL),(91,1,'Task Permissions','tasks','','2017-06-26 14:58:38','2017-06-26 14:58:38','Initial Version',1,0,1,NULL,3,0,NULL),(92,1,'User Permissions','users','','2017-06-26 14:58:38','2017-06-26 14:58:38','Initial Version',1,0,1,NULL,3,0,NULL),(93,1,'Advanced Permissions','advanced','','2017-06-26 14:58:39','2017-06-26 14:58:39','Initial Version',1,0,1,NULL,3,0,NULL),(94,1,'IP Blacklist','blacklist','','2017-06-26 14:58:39','2017-06-26 14:58:39','Initial Version',1,0,1,NULL,3,0,NULL),(95,1,'Captcha Setup','captcha','','2017-06-26 14:58:39','2017-06-26 14:58:39','Initial Version',1,0,1,NULL,3,0,NULL),(96,1,'Spam Control','antispam','','2017-06-26 14:58:39','2017-06-26 14:58:39','Initial Version',1,0,1,NULL,3,0,NULL),(97,1,'Maintenance Mode','maintenance','','2017-06-26 14:58:39','2017-06-26 14:58:39','Initial Version',1,0,1,NULL,3,0,NULL),(98,1,'Login & Registration','registration','Change login behaviors and setup public profiles.','2017-06-26 14:58:39','2017-06-26 14:58:39','Initial Version',1,0,1,NULL,3,0,NULL),(99,1,'Login Destination','postlogin','','2017-06-26 14:58:39','2017-06-26 14:58:39','Initial Version',1,0,1,NULL,3,0,NULL),(100,1,'Public Profiles','profiles','','2017-06-26 14:58:39','2017-06-26 14:58:39','Initial Version',1,0,1,NULL,3,0,NULL),(101,1,'Public Registration','open','','2017-06-26 14:58:39','2017-06-26 14:58:39','Initial Version',1,0,1,NULL,3,0,NULL),(102,1,'Authentication Types','authentication','','2017-06-26 14:58:39','2017-06-26 14:58:39','Initial Version',1,0,1,NULL,3,0,NULL),(103,1,'Email','mail','Control how your site send and processes mail.','2017-06-26 14:58:39','2017-06-26 14:58:39','Initial Version',1,0,1,NULL,3,0,NULL),(104,1,'SMTP Method','method','','2017-06-26 14:58:39','2017-06-26 14:58:39','Initial Version',1,0,1,NULL,3,0,NULL),(105,1,'Test Mail Settings','test','','2017-06-26 14:58:39','2017-06-26 14:58:39','Initial Version',1,0,1,NULL,3,0,NULL),(106,1,'Email Importers','importers','','2017-06-26 14:58:39','2017-06-26 14:58:39','Initial Version',1,0,1,NULL,3,0,NULL),(107,1,'Conversations','conversations','Manage your conversations settings','2017-06-26 14:58:40','2017-06-26 14:58:40','Initial Version',1,0,1,NULL,3,0,NULL),(108,1,'Settings','settings','','2017-06-26 14:58:40','2017-06-26 14:58:40','Initial Version',1,0,1,NULL,3,0,NULL),(109,1,'Community Points','points','','2017-06-26 14:58:40','2017-06-26 14:58:40','Initial Version',1,0,1,NULL,3,0,NULL),(110,1,'Banned Words','bannedwords','','2017-06-26 14:58:40','2017-06-26 14:58:40','Initial Version',1,0,1,NULL,3,0,NULL),(111,1,'Conversation Permissions','permissions','','2017-06-26 14:58:40','2017-06-26 14:58:40','Initial Version',1,0,1,NULL,3,0,NULL),(112,1,'Attributes','attributes','Setup attributes for pages, users, files and more.','2017-06-26 14:58:40','2017-06-26 14:58:40','Initial Version',1,0,1,NULL,3,0,NULL),(113,1,'Sets','sets','Group attributes into sets for easier organization','2017-06-26 14:58:40','2017-06-26 14:58:40','Initial Version',1,0,1,NULL,3,0,NULL),(114,1,'Types','types','Choose which attribute types are available for different items.','2017-06-26 14:58:40','2017-06-26 14:58:40','Initial Version',1,0,1,NULL,3,0,NULL),(115,1,'Topics','topics','','2017-06-26 14:58:40','2017-06-26 14:58:40','Initial Version',1,0,1,NULL,3,0,NULL),(116,1,'Add Topic Tree','add','','2017-06-26 14:58:40','2017-06-26 14:58:40','Initial Version',1,0,1,NULL,3,0,NULL),(117,1,'Environment','environment','Advanced settings for web developers.','2017-06-26 14:58:40','2017-06-26 14:58:40','Initial Version',1,0,1,NULL,3,0,NULL),(118,1,'Environment Information','info','','2017-06-26 14:58:40','2017-06-26 14:58:40','Initial Version',1,0,1,NULL,3,0,NULL),(119,1,'Debug Settings','debug','','2017-06-26 14:58:40','2017-06-26 14:58:40','Initial Version',1,0,1,NULL,3,0,NULL),(120,1,'Logging Settings','logging','','2017-06-26 14:58:40','2017-06-26 14:58:40','Initial Version',1,0,1,NULL,3,0,NULL),(121,1,'Proxy Server','proxy','','2017-06-26 14:58:40','2017-06-26 14:58:40','Initial Version',1,0,1,NULL,3,0,NULL),(122,1,'Database Entities','entities','','2017-06-26 14:58:41','2017-06-26 14:58:41','Initial Version',1,0,1,NULL,3,0,NULL),(123,1,'Backup & Restore','backup','Backup or restore your website.','2017-06-26 14:58:41','2017-06-26 14:58:41','Initial Version',1,0,1,NULL,3,0,NULL),(124,1,'Backup Database','backup','','2017-06-26 14:58:41','2017-06-26 14:58:41','Initial Version',1,0,1,NULL,3,0,NULL),(125,1,'Update concrete5','update','','2017-06-26 14:58:41','2017-06-26 14:58:41','Initial Version',1,0,1,NULL,3,0,NULL),(126,1,'Welcome to concrete5','welcome','Learn about how to use concrete5, how to develop for concrete5, and get general help.','2017-06-26 14:58:42','2017-06-26 14:58:42','Initial Version',1,0,1,NULL,3,4,NULL),(127,1,'Customize Dashboard Home','home','','2017-06-26 14:58:42','2017-06-26 14:58:42','Initial Version',1,0,1,NULL,3,2,NULL),(128,1,'Drafts','!drafts','','2017-06-26 14:58:47','2017-06-26 14:58:47','Initial Version',1,0,1,NULL,3,0,NULL),(129,1,'Trash','!trash','','2017-06-26 14:58:48','2017-06-26 14:58:48','Initial Version',1,0,1,NULL,3,0,NULL),(130,1,'Stacks','!stacks','','2017-06-26 14:58:48','2017-06-26 14:58:48','Initial Version',1,0,1,NULL,3,0,NULL),(131,1,'Login','login','','2017-06-26 14:58:48','2017-06-26 14:58:48','Initial Version',1,0,1,NULL,3,0,NULL),(132,1,'Register','register','','2017-06-26 14:58:49','2017-06-26 14:58:49','Initial Version',1,0,1,NULL,3,0,NULL),(133,1,'My Account','account','','2017-06-26 14:58:49','2017-06-26 14:58:49','Initial Version',1,0,1,NULL,3,0,NULL),(134,1,'Edit Profile','edit_profile','Edit your user profile and change password.','2017-06-26 14:58:49','2017-06-26 14:58:49','Initial Version',1,0,1,NULL,3,0,NULL),(135,1,'Profile Picture','avatar','Specify a new image attached to posts or edits.','2017-06-26 14:58:49','2017-06-26 14:58:49','Initial Version',1,0,1,NULL,3,0,NULL),(136,1,'Messages','messages','Inbox for site-specific messages.','2017-06-26 14:58:49','2017-06-26 14:58:49','Initial Version',1,0,1,NULL,3,0,NULL),(137,1,'Inbox','inbox','','2017-06-26 14:58:49','2017-06-26 14:58:49','Initial Version',1,0,1,NULL,3,0,NULL),(138,1,'Members','members','','2017-06-26 14:58:49','2017-06-26 14:58:49','Initial Version',1,0,1,NULL,3,0,NULL),(139,1,'View Profile','profile','','2017-06-26 14:58:49','2017-06-26 14:58:49','Initial Version',1,0,1,NULL,3,0,NULL),(140,1,'Directory','directory','','2017-06-26 14:58:49','2017-06-26 14:58:49','Initial Version',1,0,1,NULL,3,0,NULL),(141,1,'Page Not Found','page_not_found','','2017-06-26 14:58:49','2017-06-26 14:58:49','Initial Version',1,0,1,NULL,3,0,NULL),(142,1,'Page Forbidden','page_forbidden','','2017-06-26 14:58:49','2017-06-26 14:58:49','Initial Version',1,0,1,NULL,3,0,NULL),(143,1,'Download File','download_file','','2017-06-26 14:58:49','2017-06-26 14:58:49','Initial Version',1,0,1,NULL,3,0,NULL),(144,1,'Footer Contact','footer-contact',NULL,'2017-06-26 14:59:02','2017-06-26 14:59:02','Initial Version',1,0,1,NULL,3,0,NULL),(145,1,'Footer Legal','footer-legal',NULL,'2017-06-26 14:59:03','2017-06-26 14:59:03','Initial Version',1,0,1,NULL,3,0,NULL),(146,1,'Footer Navigation','footer-navigation',NULL,'2017-06-26 14:59:03','2017-06-26 14:59:03','Initial Version',1,0,1,NULL,3,0,NULL),(147,1,'Footer Site Title','footer-site-title',NULL,'2017-06-26 14:59:03','2017-06-26 14:59:03','Initial Version',1,0,1,NULL,3,0,NULL),(148,1,'Footer Social','footer-social',NULL,'2017-06-26 14:59:03','2017-06-26 14:59:03','Initial Version',1,0,1,NULL,3,0,NULL),(149,1,'Header Navigation','header-navigation',NULL,'2017-06-26 14:59:03','2017-06-26 14:59:03','Initial Version',1,0,1,NULL,3,0,NULL),(150,1,'Header Search','header-search',NULL,'2017-06-26 14:59:03','2017-06-26 14:59:03','Initial Version',1,0,1,NULL,3,0,NULL),(151,1,'Header Site Title','header-site-title',NULL,'2017-06-26 14:59:03','2017-06-26 14:59:03','Initial Version',1,0,1,NULL,3,0,NULL),(152,1,'',NULL,NULL,'2017-06-26 14:59:05','2017-06-26 14:59:05','Initial Version',1,0,NULL,NULL,0,6,NULL),(153,1,'Services','services','','2017-06-26 14:59:05','2017-06-26 14:59:05','Initial Version',0,0,1,NULL,3,6,NULL),(153,2,'Services','services','','2017-06-26 14:59:05','2017-06-26 16:08:45','新バージョン 2',0,0,1,1,3,12,NULL),(153,3,'About','about','','2017-06-26 14:59:05','2017-06-26 16:22:30','新バージョン 3',1,0,1,1,3,12,NULL),(154,1,'',NULL,NULL,'2017-06-26 14:59:05','2017-06-26 14:59:05','Initial Version',1,0,NULL,NULL,0,6,NULL),(155,1,'Portfolio','portfolio','','2017-06-26 14:59:05','2017-06-26 14:59:05','Initial Version',0,0,1,NULL,3,6,NULL),(155,2,'Service','service','','2017-06-26 14:59:05','2017-06-26 16:24:08','新バージョン 2',0,0,1,1,3,6,NULL),(155,3,'Project','project','','2017-06-26 14:59:05','2017-06-26 16:26:42','新バージョン 3',1,0,1,1,3,6,NULL),(156,1,'Team','team','','2017-06-26 14:59:05','2017-06-26 14:59:05','Initial Version',1,0,1,NULL,3,6,NULL),(157,1,'',NULL,NULL,'2017-06-26 14:59:05','2017-06-26 14:59:05','Initial Version',1,0,NULL,NULL,0,6,NULL),(158,1,'Blog','blog','','2017-06-26 14:59:05','2017-06-26 14:59:05','Initial Version',0,0,1,NULL,3,6,NULL),(158,2,'SERVICE','service','','2017-06-26 14:59:05','2017-06-27 15:37:38','新バージョン 2',0,0,1,1,3,6,NULL),(158,3,'SERVICE','service','','2017-06-26 14:59:05','2017-06-27 15:38:32','新バージョン 3',0,0,1,1,3,6,NULL),(158,4,'SERVICE','service','','2017-06-26 14:59:05','2017-06-27 15:38:50','新バージョン 4',1,0,1,1,3,18,NULL),(159,1,'Search','search','','2017-06-26 14:59:05','2017-06-26 14:59:05','Initial Version',1,0,1,NULL,3,6,NULL),(160,1,'Contact','contact','','2017-06-26 14:59:05','2017-06-26 14:59:05','Initial Version',1,0,1,NULL,3,6,NULL),(161,1,'Blank Page','blank-page','','2017-06-26 14:59:05','2017-06-26 14:59:05','Initial Version',1,0,1,NULL,3,5,NULL),(162,1,'',NULL,NULL,'2017-06-26 14:59:05','2017-06-26 14:59:05','Initial Version',1,0,NULL,NULL,0,7,NULL),(163,1,'Project Title','project-title','Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing.','2014-08-06 15:30:00','2017-06-26 14:59:05','Initial Version',1,0,1,NULL,3,7,NULL),(164,1,'Project Title 2','project-title-2','Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing.','2014-08-06 15:20:00','2017-06-26 14:59:05','Initial Version',1,0,1,NULL,3,7,NULL),(165,1,'Project Title 3','project-title-3','Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing.','2014-08-06 15:10:00','2017-06-26 14:59:05','Initial Version',1,0,1,NULL,3,7,NULL),(166,1,'Project Title 4','project-title-4','Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing.','2014-08-06 15:00:00','2017-06-26 14:59:05','Initial Version',1,0,1,NULL,3,7,NULL),(167,1,'Project Title 5','project-title-5','Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing.','2014-08-06 14:30:00','2017-06-26 14:59:05','Initial Version',1,0,1,NULL,3,7,NULL),(168,1,'Project Title 6','project-title-6','Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing.','2014-08-06 14:20:00','2017-06-26 14:59:05','Initial Version',1,0,1,NULL,3,7,NULL),(169,1,'',NULL,NULL,'2017-06-26 14:59:05','2017-06-26 14:59:05','Initial Version',1,0,NULL,NULL,0,8,NULL),(170,1,'Hello World!','hello-world','Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Quisque dignissim neque a ipsum sodales, mattis aliquam ante dictum.','2014-07-01 12:00:00','2017-06-26 14:59:05','Initial Version',0,0,1,NULL,3,8,NULL),(170,2,'Hello World!','hello-world','Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Quisque dignissim neque a ipsum sodales, mattis aliquam ante dictum.','2014-07-01 12:00:00','2017-06-27 15:40:03','新バージョン 2',0,0,1,1,3,8,NULL),(170,3,'Hello World!','hello-world','Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Quisque dignissim neque a ipsum sodales, mattis aliquam ante dictum.','2014-07-01 12:00:00','2017-06-27 15:40:21','新バージョン 3',0,0,1,1,3,17,NULL),(170,4,'support','support','Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Quisque dignissim neque a ipsum sodales, mattis aliquam ante dictum.','2014-07-01 12:00:00','2017-06-27 15:41:19','新バージョン 4',1,0,1,1,3,17,NULL),(171,1,'Another Blog Post','another-blog-post','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna.','2014-07-04 15:00:00','2017-06-26 14:59:06','Initial Version',0,0,1,NULL,3,8,NULL),(171,2,'Another Blog Post','another-blog-post','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna.','2014-07-04 15:00:00','2017-06-27 15:45:22','新バージョン 2',0,0,1,1,3,8,NULL),(171,3,'Another Blog Post','another-blog-post','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna.','2014-07-04 15:00:00','2017-06-27 15:45:38','新バージョン 3',0,0,1,1,3,14,NULL),(171,4,'Price','price','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna.','2014-07-04 15:00:00','2017-06-27 15:45:53','新バージョン 4',1,0,1,1,3,14,NULL),(172,1,'A Beautiful Site Deserves a Beautiful Blog','a-beautiful-blog','Donec blandit lectus nec neque ullamcorper rhoncus. Sed adipiscing tempus sem eu molestie. Aenean laoreet pretium ante vitae ultrices. Aenean eu gravida magna, vel aliquet magna. In auctor convallis gravida. Phasellus est erat.','2014-08-01 16:30:00','2017-06-26 14:59:06','Initial Version',0,0,1,NULL,3,8,NULL),(172,2,'A Beautiful Site Deserves a Beautiful Blog','a-beautiful-blog','Donec blandit lectus nec neque ullamcorper rhoncus. Sed adipiscing tempus sem eu molestie. Aenean laoreet pretium ante vitae ultrices. Aenean eu gravida magna, vel aliquet magna. In auctor convallis gravida. Phasellus est erat.','2014-08-01 16:30:00','2017-06-27 15:42:50','新バージョン 2',0,0,1,1,3,8,NULL),(172,3,'A Beautiful Site Deserves a Beautiful Blog','a-beautiful-blog','Donec blandit lectus nec neque ullamcorper rhoncus. Sed adipiscing tempus sem eu molestie. Aenean laoreet pretium ante vitae ultrices. Aenean eu gravida magna, vel aliquet magna. In auctor convallis gravida. Phasellus est erat.','2014-08-01 16:30:00','2017-06-27 15:43:17','新バージョン 3',0,0,1,1,3,13,NULL),(172,4,'Flow','flow','Donec blandit lectus nec neque ullamcorper rhoncus. Sed adipiscing tempus sem eu molestie. Aenean laoreet pretium ante vitae ultrices. Aenean eu gravida magna, vel aliquet magna. In auctor convallis gravida. Phasellus est erat.','2014-08-01 16:30:00','2017-06-27 15:43:35','新バージョン 4',1,0,1,1,3,13,NULL),(173,1,'About','about','','2017-06-26 14:59:06','2017-06-26 14:59:06','Initial Version',1,0,1,NULL,3,6,NULL),(174,1,'Careers','careers','','2017-06-26 14:59:06','2017-06-26 14:59:06','Initial Version',1,0,1,NULL,3,6,NULL),(175,1,'Frequently Asked Questions','faq','','2017-06-26 14:59:06','2017-06-26 14:59:06','Initial Version',1,0,1,NULL,3,6,NULL),(176,1,'',NULL,NULL,'2017-06-26 14:59:06','2017-06-26 14:59:06','Initial Version',1,0,NULL,NULL,0,7,NULL),(177,1,'Web Developer','web-developer','Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed. Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus.','2017-06-26 14:59:06','2017-06-26 14:59:06','Initial Version',1,0,1,NULL,3,7,NULL),(178,1,'Sales Associate','sales-associate','Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed. Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus.','2017-06-26 14:59:06','2017-06-26 14:59:06','Initial Version',1,0,1,NULL,3,7,NULL),(179,1,'',NULL,NULL,'2017-06-26 14:59:06','2017-06-26 14:59:06','Initial Version',1,0,NULL,NULL,0,5,NULL),(180,1,'',NULL,NULL,'2017-06-26 14:59:06','2017-06-26 14:59:06','Initial Version',1,0,NULL,NULL,0,7,NULL),(181,1,'',NULL,NULL,'2017-06-26 14:59:06','2017-06-26 14:59:06','Initial Version',1,0,NULL,NULL,0,8,NULL),(182,1,'','',NULL,'2017-06-26 15:34:01','2017-06-26 15:34:01','Initial Version',0,1,1,NULL,3,8,NULL),(183,1,'','',NULL,'2017-06-26 15:53:09','2017-06-26 15:53:09','Initial Version',0,1,1,NULL,3,12,NULL),(184,1,'',NULL,NULL,'2017-06-26 16:06:16','2017-06-26 16:06:16','Initial Version',1,0,NULL,NULL,0,12,NULL),(185,1,'',NULL,NULL,'2017-06-26 16:26:01','2017-06-26 16:26:01','Initial Version',1,0,NULL,NULL,0,15,NULL),(186,1,'Service Design','design','','2017-06-26 16:26:01','2017-06-26 16:26:01','Initial Version',1,0,1,1,3,15,NULL),(187,1,'',NULL,NULL,'2017-06-26 16:27:40','2017-06-26 16:27:40','Initial Version',1,0,NULL,NULL,0,16,NULL),(188,1,'Responsive','responsive','','2017-06-26 16:27:40','2017-06-26 16:27:40','Initial Version',0,0,1,1,3,16,NULL),(188,2,'Responsive','responsive','','2017-06-26 16:27:40','2017-06-27 15:41:32','新バージョン 2',1,0,1,1,3,16,NULL),(189,1,'','',NULL,'2017-06-27 15:34:24','2017-06-27 15:34:24','Initial Version',0,1,1,NULL,3,6,NULL);
/*!40000 ALTER TABLE `CollectionVersions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Collections`
--

DROP TABLE IF EXISTS `Collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Collections` (
  `cID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cDateModified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cID`),
  KEY `cIDDateModified` (`cID`,`cDateModified`),
  KEY `cDateModified` (`cDateModified`),
  KEY `cDateAdded` (`cDateAdded`)
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Collections`
--

LOCK TABLES `Collections` WRITE;
/*!40000 ALTER TABLE `Collections` DISABLE KEYS */;
INSERT INTO `Collections` VALUES (1,'2017-06-26 14:57:53','2017-06-26 15:46:51','home'),(2,'2017-06-26 14:58:32','2017-06-26 14:58:32','dashboard'),(3,'2017-06-26 14:58:33','2017-06-26 14:58:33','sitemap'),(4,'2017-06-26 14:58:33','2017-06-26 14:58:33','full'),(5,'2017-06-26 14:58:33','2017-06-26 14:58:33','explore'),(6,'2017-06-26 14:58:33','2017-06-26 14:58:33','search'),(7,'2017-06-26 14:58:33','2017-06-26 14:58:33','files'),(8,'2017-06-26 14:58:33','2017-06-26 14:58:33','search'),(9,'2017-06-26 14:58:33','2017-06-26 14:58:33','attributes'),(10,'2017-06-26 14:58:33','2017-06-26 14:58:33','sets'),(11,'2017-06-26 14:58:33','2017-06-26 14:58:33','add_set'),(12,'2017-06-26 14:58:33','2017-06-26 14:58:33','users'),(13,'2017-06-26 14:58:33','2017-06-26 14:58:33','search'),(14,'2017-06-26 14:58:33','2017-06-26 14:58:33','groups'),(15,'2017-06-26 14:58:33','2017-06-26 14:58:33','attributes'),(16,'2017-06-26 14:58:34','2017-06-26 14:58:34','add'),(17,'2017-06-26 14:58:34','2017-06-26 14:58:34','add_group'),(18,'2017-06-26 14:58:34','2017-06-26 14:58:34','bulkupdate'),(19,'2017-06-26 14:58:34','2017-06-26 14:58:34','group_sets'),(20,'2017-06-26 14:58:34','2017-06-26 14:58:34','points'),(21,'2017-06-26 14:58:34','2017-06-26 14:58:34','assign'),(22,'2017-06-26 14:58:34','2017-06-26 14:58:34','actions'),(23,'2017-06-26 14:58:34','2017-06-26 14:58:34','reports'),(24,'2017-06-26 14:58:34','2017-06-26 14:58:34','forms'),(25,'2017-06-26 14:58:34','2017-06-26 14:58:34','surveys'),(26,'2017-06-26 14:58:34','2017-06-26 14:58:34','logs'),(27,'2017-06-26 14:58:34','2017-06-26 14:58:34','pages'),(28,'2017-06-26 14:58:34','2017-06-26 14:58:34','themes'),(29,'2017-06-26 14:58:34','2017-06-26 14:58:34','inspect'),(30,'2017-06-26 14:58:34','2017-06-26 14:58:34','types'),(31,'2017-06-26 14:58:34','2017-06-26 14:58:34','organize'),(32,'2017-06-26 14:58:34','2017-06-26 14:58:34','add'),(33,'2017-06-26 14:58:35','2017-06-26 14:58:35','form'),(34,'2017-06-26 14:58:35','2017-06-26 14:58:35','output'),(35,'2017-06-26 14:58:35','2017-06-26 14:58:35','attributes'),(36,'2017-06-26 14:58:35','2017-06-26 14:58:35','permissions'),(37,'2017-06-26 14:58:35','2017-06-26 14:58:35','templates'),(38,'2017-06-26 14:58:35','2017-06-26 14:58:35','add'),(39,'2017-06-26 14:58:35','2017-06-26 14:58:35','attributes'),(40,'2017-06-26 14:58:35','2017-06-26 14:58:35','single'),(41,'2017-06-26 14:58:35','2017-06-26 14:58:35','feeds'),(42,'2017-06-26 14:58:35','2017-06-26 14:58:35','conversations'),(43,'2017-06-26 14:58:35','2017-06-26 14:58:35','messages'),(44,'2017-06-26 14:58:35','2017-06-26 14:58:35','workflow'),(45,'2017-06-26 14:58:35','2017-06-26 14:58:35','me'),(46,'2017-06-26 14:58:35','2017-06-26 14:58:35','workflows'),(47,'2017-06-26 14:58:35','2017-06-26 14:58:35','blocks'),(48,'2017-06-26 14:58:35','2017-06-26 14:58:36','stacks'),(49,'2017-06-26 14:58:36','2017-06-26 14:58:36','permissions'),(50,'2017-06-26 14:58:36','2017-06-26 14:58:36','list'),(51,'2017-06-26 14:58:36','2017-06-26 14:58:36','types'),(52,'2017-06-26 14:58:36','2017-06-26 14:58:36','extend'),(53,'2017-06-26 14:58:36','2017-06-26 14:58:36','news'),(54,'2017-06-26 14:58:36','2017-06-26 14:58:36','install'),(55,'2017-06-26 14:58:36','2017-06-26 14:58:36','update'),(56,'2017-06-26 14:58:36','2017-06-26 14:58:36','connect'),(57,'2017-06-26 14:58:36','2017-06-26 14:58:36','themes'),(58,'2017-06-26 14:58:36','2017-06-26 14:58:36','addons'),(59,'2017-06-26 14:58:36','2017-06-26 14:58:36','system'),(60,'2017-06-26 14:58:36','2017-06-26 14:58:36','basics'),(61,'2017-06-26 14:58:36','2017-06-26 14:58:36','name'),(62,'2017-06-26 14:58:36','2017-06-26 14:58:36','accessibility'),(63,'2017-06-26 14:58:36','2017-06-26 14:58:36','social'),(64,'2017-06-26 14:58:36','2017-06-26 14:58:37','icons'),(65,'2017-06-26 14:58:37','2017-06-26 14:58:37','editor'),(66,'2017-06-26 14:58:37','2017-06-26 14:58:37','multilingual'),(67,'2017-06-26 14:58:37','2017-06-26 14:58:37','timezone'),(68,'2017-06-26 14:58:37','2017-06-26 14:58:37','multilingual'),(69,'2017-06-26 14:58:37','2017-06-26 14:58:37','setup'),(70,'2017-06-26 14:58:37','2017-06-26 14:58:37','copy'),(71,'2017-06-26 14:58:37','2017-06-26 14:58:37','page_report'),(72,'2017-06-26 14:58:37','2017-06-26 14:58:37','translate_interface'),(73,'2017-06-26 14:58:37','2017-06-26 14:58:37','seo'),(74,'2017-06-26 14:58:37','2017-06-26 14:58:37','urls'),(75,'2017-06-26 14:58:37','2017-06-26 14:58:37','bulk'),(76,'2017-06-26 14:58:37','2017-06-26 14:58:37','codes'),(77,'2017-06-26 14:58:37','2017-06-26 14:58:37','excluded'),(78,'2017-06-26 14:58:37','2017-06-26 14:58:38','searchindex'),(79,'2017-06-26 14:58:38','2017-06-26 14:58:38','files'),(80,'2017-06-26 14:58:38','2017-06-26 14:58:38','permissions'),(81,'2017-06-26 14:58:38','2017-06-26 14:58:38','filetypes'),(82,'2017-06-26 14:58:38','2017-06-26 14:58:38','thumbnails'),(83,'2017-06-26 14:58:38','2017-06-26 14:58:38','storage'),(84,'2017-06-26 14:58:38','2017-06-26 14:58:38','optimization'),(85,'2017-06-26 14:58:38','2017-06-26 14:58:38','cache'),(86,'2017-06-26 14:58:38','2017-06-26 14:58:38','clearcache'),(87,'2017-06-26 14:58:38','2017-06-26 14:58:38','jobs'),(88,'2017-06-26 14:58:38','2017-06-26 14:58:38','query_log'),(89,'2017-06-26 14:58:38','2017-06-26 14:58:38','permissions'),(90,'2017-06-26 14:58:38','2017-06-26 14:58:38','site'),(91,'2017-06-26 14:58:38','2017-06-26 14:58:38','tasks'),(92,'2017-06-26 14:58:38','2017-06-26 14:58:38','users'),(93,'2017-06-26 14:58:39','2017-06-26 14:58:39','advanced'),(94,'2017-06-26 14:58:39','2017-06-26 14:58:39','blacklist'),(95,'2017-06-26 14:58:39','2017-06-26 14:58:39','captcha'),(96,'2017-06-26 14:58:39','2017-06-26 14:58:39','antispam'),(97,'2017-06-26 14:58:39','2017-06-26 14:58:39','maintenance'),(98,'2017-06-26 14:58:39','2017-06-26 14:58:39','registration'),(99,'2017-06-26 14:58:39','2017-06-26 14:58:39','postlogin'),(100,'2017-06-26 14:58:39','2017-06-26 14:58:39','profiles'),(101,'2017-06-26 14:58:39','2017-06-26 14:58:39','open'),(102,'2017-06-26 14:58:39','2017-06-26 14:58:39','authentication'),(103,'2017-06-26 14:58:39','2017-06-26 14:58:39','mail'),(104,'2017-06-26 14:58:39','2017-06-26 14:58:39','method'),(105,'2017-06-26 14:58:39','2017-06-26 14:58:39','test'),(106,'2017-06-26 14:58:39','2017-06-26 14:58:39','importers'),(107,'2017-06-26 14:58:40','2017-06-26 14:58:40','conversations'),(108,'2017-06-26 14:58:40','2017-06-26 14:58:40','settings'),(109,'2017-06-26 14:58:40','2017-06-26 14:58:40','points'),(110,'2017-06-26 14:58:40','2017-06-26 14:58:40','bannedwords'),(111,'2017-06-26 14:58:40','2017-06-26 14:58:40','permissions'),(112,'2017-06-26 14:58:40','2017-06-26 14:58:40','attributes'),(113,'2017-06-26 14:58:40','2017-06-26 14:58:40','sets'),(114,'2017-06-26 14:58:40','2017-06-26 14:58:40','types'),(115,'2017-06-26 14:58:40','2017-06-26 14:58:40','topics'),(116,'2017-06-26 14:58:40','2017-06-26 14:58:40','add'),(117,'2017-06-26 14:58:40','2017-06-26 14:58:40','environment'),(118,'2017-06-26 14:58:40','2017-06-26 14:58:40','info'),(119,'2017-06-26 14:58:40','2017-06-26 14:58:40','debug'),(120,'2017-06-26 14:58:40','2017-06-26 14:58:40','logging'),(121,'2017-06-26 14:58:40','2017-06-26 14:58:41','proxy'),(122,'2017-06-26 14:58:41','2017-06-26 14:58:41','entities'),(123,'2017-06-26 14:58:41','2017-06-26 14:58:41','backup'),(124,'2017-06-26 14:58:41','2017-06-26 14:58:41','backup'),(125,'2017-06-26 14:58:41','2017-06-26 14:58:41','update'),(126,'2017-06-26 14:58:42','2017-06-26 14:58:42','welcome'),(127,'2017-06-26 14:58:42','2017-06-26 14:58:42','home'),(128,'2017-06-26 14:58:47','2017-06-26 14:58:48','!drafts'),(129,'2017-06-26 14:58:48','2017-06-26 14:58:48','!trash'),(130,'2017-06-26 14:58:48','2017-06-26 14:58:48','!stacks'),(131,'2017-06-26 14:58:48','2017-06-26 14:58:49','login'),(132,'2017-06-26 14:58:49','2017-06-26 14:58:49','register'),(133,'2017-06-26 14:58:49','2017-06-26 14:58:49','account'),(134,'2017-06-26 14:58:49','2017-06-26 14:58:49','edit_profile'),(135,'2017-06-26 14:58:49','2017-06-26 14:58:49','avatar'),(136,'2017-06-26 14:58:49','2017-06-26 14:58:49','messages'),(137,'2017-06-26 14:58:49','2017-06-26 14:58:49','inbox'),(138,'2017-06-26 14:58:49','2017-06-26 14:58:49','members'),(139,'2017-06-26 14:58:49','2017-06-26 14:58:49','profile'),(140,'2017-06-26 14:58:49','2017-06-26 14:58:49','directory'),(141,'2017-06-26 14:58:49','2017-06-26 14:58:49','page_not_found'),(142,'2017-06-26 14:58:49','2017-06-26 14:58:49','page_forbidden'),(143,'2017-06-26 14:58:49','2017-06-26 14:58:49','download_file'),(144,'2017-06-26 14:59:02','2017-06-26 14:59:02','footer-contact'),(145,'2017-06-26 14:59:03','2017-06-26 14:59:03','footer-legal'),(146,'2017-06-26 14:59:03','2017-06-26 14:59:03','footer-navigation'),(147,'2017-06-26 14:59:03','2017-06-26 14:59:03','footer-site-title'),(148,'2017-06-26 14:59:03','2017-06-26 14:59:03','footer-social'),(149,'2017-06-26 14:59:03','2017-06-26 14:59:03','header-navigation'),(150,'2017-06-26 14:59:03','2017-06-26 14:59:03','header-search'),(151,'2017-06-26 14:59:03','2017-06-26 14:59:03','header-site-title'),(152,'2017-06-26 14:59:05','2017-06-26 14:59:05',NULL),(153,'2017-06-26 14:59:05','2017-06-26 16:22:31','services'),(154,'2017-06-26 14:59:05','2017-06-26 14:59:05',NULL),(155,'2017-06-26 14:59:05','2017-06-26 16:26:42','portfolio'),(156,'2017-06-26 14:59:05','2017-06-26 14:59:05','team'),(157,'2017-06-26 14:59:05','2017-06-26 14:59:05',NULL),(158,'2017-06-26 14:59:05','2017-06-27 15:38:51','blog'),(159,'2017-06-26 14:59:05','2017-06-26 14:59:05','search'),(160,'2017-06-26 14:59:05','2017-06-26 14:59:05','contact'),(161,'2017-06-26 14:59:05','2017-06-26 14:59:05','blank-page'),(162,'2017-06-26 14:59:05','2017-06-26 14:59:05',NULL),(163,'2017-06-26 14:59:05','2017-06-26 14:59:05','project-title'),(164,'2017-06-26 14:59:05','2017-06-26 14:59:05','project-title-2'),(165,'2017-06-26 14:59:05','2017-06-26 14:59:05','project-title-3'),(166,'2017-06-26 14:59:05','2017-06-26 14:59:05','project-title-4'),(167,'2017-06-26 14:59:05','2017-06-26 14:59:05','project-title-5'),(168,'2017-06-26 14:59:05','2017-06-26 14:59:05','project-title-6'),(169,'2017-06-26 14:59:05','2017-06-26 14:59:05',NULL),(170,'2017-06-26 14:59:05','2017-06-27 15:41:20','hello-world'),(171,'2017-06-26 14:59:06','2017-06-27 15:46:08','another-blog-post'),(172,'2017-06-26 14:59:06','2017-06-27 15:43:51','a-beautiful-blog'),(173,'2017-06-26 14:59:06','2017-06-26 14:59:06','about'),(174,'2017-06-26 14:59:06','2017-06-26 14:59:06','careers'),(175,'2017-06-26 14:59:06','2017-06-26 14:59:06','faq'),(176,'2017-06-26 14:59:06','2017-06-26 14:59:06',NULL),(177,'2017-06-26 14:59:06','2017-06-26 14:59:06','web-developer'),(178,'2017-06-26 14:59:06','2017-06-26 14:59:06','sales-associate'),(179,'2017-06-26 14:59:06','2017-06-26 14:59:06',NULL),(180,'2017-06-26 14:59:06','2017-06-26 14:59:06',NULL),(181,'2017-06-26 14:59:06','2017-06-26 14:59:06',NULL),(182,'2017-06-26 15:34:01','2017-06-26 15:34:03',''),(183,'2017-06-26 15:53:09','2017-06-26 16:06:16',''),(184,'2017-06-26 16:06:16','2017-06-26 16:06:16',NULL),(185,'2017-06-26 16:26:01','2017-06-26 16:26:01',NULL),(186,'2017-06-26 16:26:01','2017-06-27 15:39:39',''),(187,'2017-06-26 16:27:40','2017-06-26 16:27:40',NULL),(188,'2017-06-26 16:27:40','2017-06-27 15:41:32',''),(189,'2017-06-27 15:34:24','2017-06-27 15:34:25','');
/*!40000 ALTER TABLE `Collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Config`
--

DROP TABLE IF EXISTS `Config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Config` (
  `configNamespace` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `configGroup` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configItem` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configValue` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`configNamespace`,`configGroup`,`configItem`),
  KEY `configGroup` (`configGroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Config`
--

LOCK TABLES `Config` WRITE;
/*!40000 ALTER TABLE `Config` DISABLE KEYS */;
INSERT INTO `Config` VALUES ('','concrete','security.token.encryption','Eh69omlUbTwJFT0UUDuUoMkQUjXBHyzHjgPSEDRIaPxbLsLtUXGVE55DVvUcZsHr'),('','concrete','security.token.jobs','8u1k3r88B8zSF5MGs6Biq75CXXiM0Tp7JVZ4uxqflSc6ytfL0aSyqkH54sY693vn'),('','concrete','security.token.validation','ywL0H0RAGNt2Tx1HRpr7mtBcHJPqZgrsZlhqmDA9gxOK5jqXcTlBWCB3zOZVAOJx');
/*!40000 ALTER TABLE `Config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConfigStore`
--

DROP TABLE IF EXISTS `ConfigStore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConfigStore` (
  `cfKey` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cfValue` longtext COLLATE utf8_unicode_ci,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cfKey`,`uID`),
  KEY `uID` (`uID`,`cfKey`),
  KEY `pkgID` (`pkgID`,`cfKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConfigStore`
--

LOCK TABLES `ConfigStore` WRITE;
/*!40000 ALTER TABLE `ConfigStore` DISABLE KEYS */;
INSERT INTO `ConfigStore` VALUES ('MAIN_HELP_LAST_VIEWED','2017-06-26 15:05:29','1498489529',1,0),('NEWSFLOW_LAST_VIEWED','2017-06-26 14:59:23','1498542483',1,0);
/*!40000 ALTER TABLE `ConfigStore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationDiscussions`
--

DROP TABLE IF EXISTS `ConversationDiscussions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationDiscussions` (
  `cnvDiscussionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvDiscussionDateCreated` datetime NOT NULL,
  `cID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`cnvDiscussionID`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationDiscussions`
--

LOCK TABLES `ConversationDiscussions` WRITE;
/*!40000 ALTER TABLE `ConversationDiscussions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ConversationDiscussions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationEditors`
--

DROP TABLE IF EXISTS `ConversationEditors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationEditors` (
  `cnvEditorID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvEditorHandle` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvEditorName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvEditorIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cnvEditorID`),
  KEY `pkgID` (`pkgID`,`cnvEditorHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationEditors`
--

LOCK TABLES `ConversationEditors` WRITE;
/*!40000 ALTER TABLE `ConversationEditors` DISABLE KEYS */;
INSERT INTO `ConversationEditors` VALUES (1,'plain_text','Plain Text',1,0),(2,'markdown','Markdown',0,0),(3,'redactor','Redactor',0,0);
/*!40000 ALTER TABLE `ConversationEditors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationFeatureDetailAssignments`
--

DROP TABLE IF EXISTS `ConversationFeatureDetailAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationFeatureDetailAssignments` (
  `faID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`faID`),
  KEY `cnvID` (`cnvID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationFeatureDetailAssignments`
--

LOCK TABLES `ConversationFeatureDetailAssignments` WRITE;
/*!40000 ALTER TABLE `ConversationFeatureDetailAssignments` DISABLE KEYS */;
INSERT INTO `ConversationFeatureDetailAssignments` VALUES (1,1),(3,2),(4,3),(5,4),(11,5);
/*!40000 ALTER TABLE `ConversationFeatureDetailAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationFlaggedMessageTypes`
--

DROP TABLE IF EXISTS `ConversationFlaggedMessageTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationFlaggedMessageTypes` (
  `cnvMessageFlagTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvMessageFlagTypeHandle` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cnvMessageFlagTypeID`),
  UNIQUE KEY `cnvMessageFlagTypeHandle` (`cnvMessageFlagTypeHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationFlaggedMessageTypes`
--

LOCK TABLES `ConversationFlaggedMessageTypes` WRITE;
/*!40000 ALTER TABLE `ConversationFlaggedMessageTypes` DISABLE KEYS */;
INSERT INTO `ConversationFlaggedMessageTypes` VALUES (1,'spam');
/*!40000 ALTER TABLE `ConversationFlaggedMessageTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationFlaggedMessages`
--

DROP TABLE IF EXISTS `ConversationFlaggedMessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationFlaggedMessages` (
  `cnvMessageID` int(10) unsigned NOT NULL,
  `cnvMessageFlagTypeID` int(11) DEFAULT NULL,
  PRIMARY KEY (`cnvMessageID`),
  KEY `cnvMessageFlagTypeID` (`cnvMessageFlagTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationFlaggedMessages`
--

LOCK TABLES `ConversationFlaggedMessages` WRITE;
/*!40000 ALTER TABLE `ConversationFlaggedMessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `ConversationFlaggedMessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationMessageAttachments`
--

DROP TABLE IF EXISTS `ConversationMessageAttachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationMessageAttachments` (
  `cnvMessageAttachmentID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvMessageID` int(11) DEFAULT NULL,
  `fID` int(11) DEFAULT NULL,
  PRIMARY KEY (`cnvMessageAttachmentID`),
  KEY `cnvMessageID` (`cnvMessageID`),
  KEY `fID` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationMessageAttachments`
--

LOCK TABLES `ConversationMessageAttachments` WRITE;
/*!40000 ALTER TABLE `ConversationMessageAttachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ConversationMessageAttachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationMessageRatings`
--

DROP TABLE IF EXISTS `ConversationMessageRatings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationMessageRatings` (
  `cnvMessageRatingID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvMessageID` int(10) unsigned DEFAULT NULL,
  `cnvRatingTypeID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvMessageRatingIP` tinyblob,
  `timestamp` datetime DEFAULT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cnvMessageRatingID`),
  KEY `cnvMessageID` (`cnvMessageID`,`cnvRatingTypeID`),
  KEY `cnvRatingTypeID` (`cnvRatingTypeID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationMessageRatings`
--

LOCK TABLES `ConversationMessageRatings` WRITE;
/*!40000 ALTER TABLE `ConversationMessageRatings` DISABLE KEYS */;
/*!40000 ALTER TABLE `ConversationMessageRatings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationMessages`
--

DROP TABLE IF EXISTS `ConversationMessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationMessages` (
  `cnvMessageID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvEditorID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvMessageAuthorName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvMessageAuthorEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvMessageAuthorWebsite` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvMessageSubmitIP` tinyblob,
  `cnvMessageSubmitUserAgent` longtext COLLATE utf8_unicode_ci,
  `cnvMessageLevel` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvMessageParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvMessageDateCreated` datetime DEFAULT NULL,
  `cnvMessageSubject` text COLLATE utf8_unicode_ci,
  `cnvMessageBody` text COLLATE utf8_unicode_ci,
  `cnvIsMessageDeleted` tinyint(1) NOT NULL DEFAULT '0',
  `cnvIsMessageApproved` tinyint(1) NOT NULL DEFAULT '0',
  `cnvMessageTotalRatingScore` bigint(20) DEFAULT '0',
  PRIMARY KEY (`cnvMessageID`),
  KEY `cnvID` (`cnvID`),
  KEY `cnvMessageParentID` (`cnvMessageParentID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationMessages`
--

LOCK TABLES `ConversationMessages` WRITE;
/*!40000 ALTER TABLE `ConversationMessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `ConversationMessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationPermissionAddMessageAccessList`
--

DROP TABLE IF EXISTS `ConversationPermissionAddMessageAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationPermissionAddMessageAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'A',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationPermissionAddMessageAccessList`
--

LOCK TABLES `ConversationPermissionAddMessageAccessList` WRITE;
/*!40000 ALTER TABLE `ConversationPermissionAddMessageAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `ConversationPermissionAddMessageAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationPermissionAssignments`
--

DROP TABLE IF EXISTS `ConversationPermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationPermissionAssignments` (
  `cnvID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cnvID`,`pkID`,`paID`),
  KEY `paID` (`paID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationPermissionAssignments`
--

LOCK TABLES `ConversationPermissionAssignments` WRITE;
/*!40000 ALTER TABLE `ConversationPermissionAssignments` DISABLE KEYS */;
INSERT INTO `ConversationPermissionAssignments` VALUES (0,66,100),(0,67,101),(0,68,105),(0,69,103),(0,70,102),(0,71,104),(0,72,106),(0,73,107);
/*!40000 ALTER TABLE `ConversationPermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationRatingTypes`
--

DROP TABLE IF EXISTS `ConversationRatingTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationRatingTypes` (
  `cnvRatingTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvRatingTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvRatingTypeName` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvRatingTypeCommunityPoints` int(11) DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cnvRatingTypeID`),
  UNIQUE KEY `cnvRatingTypeHandle` (`cnvRatingTypeHandle`),
  KEY `pkgID` (`pkgID`,`cnvRatingTypeHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationRatingTypes`
--

LOCK TABLES `ConversationRatingTypes` WRITE;
/*!40000 ALTER TABLE `ConversationRatingTypes` DISABLE KEYS */;
INSERT INTO `ConversationRatingTypes` VALUES (1,'up_vote','Up Vote',1,0),(2,'down_vote','Down Vote',0,0);
/*!40000 ALTER TABLE `ConversationRatingTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationSubscriptions`
--

DROP TABLE IF EXISTS `ConversationSubscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationSubscriptions` (
  `cnvID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'S',
  PRIMARY KEY (`cnvID`,`uID`),
  KEY `cnvID` (`cnvID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationSubscriptions`
--

LOCK TABLES `ConversationSubscriptions` WRITE;
/*!40000 ALTER TABLE `ConversationSubscriptions` DISABLE KEYS */;
INSERT INTO `ConversationSubscriptions` VALUES (0,1,'S');
/*!40000 ALTER TABLE `ConversationSubscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Conversations`
--

DROP TABLE IF EXISTS `Conversations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Conversations` (
  `cnvID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned DEFAULT '0',
  `cnvDateCreated` datetime NOT NULL,
  `cnvDateLastMessage` datetime DEFAULT NULL,
  `cnvParentMessageID` int(10) unsigned DEFAULT '0',
  `cnvAttachmentsEnabled` tinyint(1) NOT NULL DEFAULT '1',
  `cnvMessagesTotal` int(10) unsigned DEFAULT '0',
  `cnvOverrideGlobalPermissions` tinyint(1) DEFAULT '0',
  `cnvAttachmentOverridesEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `cnvMaxFilesGuest` int(11) DEFAULT '0',
  `cnvMaxFilesRegistered` int(11) DEFAULT '0',
  `cnvMaxFileSizeGuest` int(11) DEFAULT '0',
  `cnvMaxFileSizeRegistered` int(11) DEFAULT '0',
  `cnvFileExtensions` text COLLATE utf8_unicode_ci,
  `cnvNotificationOverridesEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `cnvEnableSubscription` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`cnvID`),
  KEY `cID` (`cID`),
  KEY `cnvParentMessageID` (`cnvParentMessageID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Conversations`
--

LOCK TABLES `Conversations` WRITE;
/*!40000 ALTER TABLE `Conversations` DISABLE KEYS */;
INSERT INTO `Conversations` VALUES (1,169,'2017-06-26 14:59:06','2017-06-26 14:59:06',0,1,0,0,0,0,0,0,0,NULL,0,0),(2,170,'2017-06-26 14:59:14','2017-06-26 14:59:14',0,1,0,0,0,0,0,0,0,NULL,0,0),(3,171,'2017-06-26 14:59:15','2017-06-26 14:59:15',0,1,0,0,0,0,0,0,0,NULL,0,0),(4,172,'2017-06-26 14:59:15','2017-06-26 14:59:15',0,1,0,0,0,0,0,0,0,NULL,0,0),(5,182,'2017-06-26 15:34:02','2017-06-26 15:34:02',0,1,0,0,0,0,0,0,0,NULL,0,0);
/*!40000 ALTER TABLE `Conversations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DownloadStatistics`
--

DROP TABLE IF EXISTS `DownloadStatistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DownloadStatistics` (
  `dsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fvID` int(10) unsigned NOT NULL,
  `uID` int(10) unsigned NOT NULL,
  `rcID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`dsID`),
  KEY `fID` (`fID`,`timestamp`),
  KEY `fvID` (`fID`,`fvID`),
  KEY `uID` (`uID`),
  KEY `rcID` (`rcID`),
  KEY `timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DownloadStatistics`
--

LOCK TABLES `DownloadStatistics` WRITE;
/*!40000 ALTER TABLE `DownloadStatistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `DownloadStatistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FeatureAssignments`
--

DROP TABLE IF EXISTS `FeatureAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FeatureAssignments` (
  `faID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `feID` int(10) unsigned DEFAULT NULL,
  `fcID` int(10) unsigned DEFAULT NULL,
  `fdObject` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`faID`),
  KEY `feID` (`feID`),
  KEY `fcID` (`fcID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FeatureAssignments`
--

LOCK TABLES `FeatureAssignments` WRITE;
/*!40000 ALTER TABLE `FeatureAssignments` DISABLE KEYS */;
INSERT INTO `FeatureAssignments` VALUES (1,6,1,'O:47:\"Concrete\\Core\\Feature\\Detail\\ConversationDetail\":3:{s:8:\"\0*\0cnvID\";s:1:\"1\";s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),(2,5,1,'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:44:\"/application/files/8114/9848/9134/blank2.png\";s:8:\"\0*\0width\";d:250;s:9:\"\0*\0height\";d:252;s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),(3,6,1,'O:47:\"Concrete\\Core\\Feature\\Detail\\ConversationDetail\":3:{s:8:\"\0*\0cnvID\";s:1:\"2\";s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),(4,6,1,'O:47:\"Concrete\\Core\\Feature\\Detail\\ConversationDetail\":3:{s:8:\"\0*\0cnvID\";s:1:\"3\";s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),(5,6,1,'O:47:\"Concrete\\Core\\Feature\\Detail\\ConversationDetail\":3:{s:8:\"\0*\0cnvID\";s:1:\"4\";s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),(6,5,1,'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:52:\"/application/files/1114/9848/9135/chinese_house2.jpg\";s:8:\"\0*\0width\";d:200;s:9:\"\0*\0height\";d:200;s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),(7,5,1,'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:43:\"/application/files/4314/9848/9134/blank.png\";s:8:\"\0*\0width\";d:592;s:9:\"\0*\0height\";d:397;s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),(8,5,1,'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:43:\"/application/files/4314/9848/9134/blank.png\";s:8:\"\0*\0width\";d:592;s:9:\"\0*\0height\";d:397;s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),(9,5,1,'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:44:\"/application/files/8114/9848/9134/blank2.png\";s:8:\"\0*\0width\";d:250;s:9:\"\0*\0height\";d:252;s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),(10,5,1,'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:46:\"/application/files/3014/9848/9136/masthead.png\";s:8:\"\0*\0width\";d:1100;s:9:\"\0*\0height\";d:263;s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),(11,6,1,'O:47:\"Concrete\\Core\\Feature\\Detail\\ConversationDetail\":3:{s:8:\"\0*\0cnvID\";s:1:\"5\";s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}');
/*!40000 ALTER TABLE `FeatureAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FeatureCategories`
--

DROP TABLE IF EXISTS `FeatureCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FeatureCategories` (
  `fcID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fcHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`fcID`),
  UNIQUE KEY `fcHandle` (`fcHandle`),
  KEY `pkgID` (`pkgID`,`fcID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FeatureCategories`
--

LOCK TABLES `FeatureCategories` WRITE;
/*!40000 ALTER TABLE `FeatureCategories` DISABLE KEYS */;
INSERT INTO `FeatureCategories` VALUES (1,'collection_version',0),(2,'gathering_item',0);
/*!40000 ALTER TABLE `FeatureCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Features`
--

DROP TABLE IF EXISTS `Features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Features` (
  `feID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `feHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `feScore` int(11) NOT NULL DEFAULT '1',
  `feHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`feID`),
  UNIQUE KEY `feHandle` (`feHandle`),
  KEY `pkgID` (`pkgID`,`feID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Features`
--

LOCK TABLES `Features` WRITE;
/*!40000 ALTER TABLE `Features` DISABLE KEYS */;
INSERT INTO `Features` VALUES (1,'title',1,0,0),(2,'link',1,0,0),(3,'author',1,0,0),(4,'date_time',1,0,0),(5,'image',500,1,0),(6,'conversation',10,1,0),(7,'description',1,0,0),(8,'featured',1000,0,0);
/*!40000 ALTER TABLE `Features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileAttributeValues`
--

DROP TABLE IF EXISTS `FileAttributeValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileAttributeValues` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`fID`,`fvID`,`akID`),
  KEY `akID` (`akID`),
  KEY `avID` (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileAttributeValues`
--

LOCK TABLES `FileAttributeValues` WRITE;
/*!40000 ALTER TABLE `FileAttributeValues` DISABLE KEYS */;
INSERT INTO `FileAttributeValues` VALUES (1,1,14,113),(1,1,15,114),(2,1,14,115),(2,1,15,116),(3,1,14,117),(3,1,15,118),(4,1,14,119),(4,1,15,120),(5,1,14,121),(5,1,15,122),(6,1,14,123),(6,1,15,124),(7,1,14,125),(7,1,15,126),(8,1,14,127),(8,1,15,128),(9,1,14,129),(9,1,15,130),(10,1,14,131),(10,1,15,132),(11,1,14,133),(11,1,15,134),(12,1,14,135),(12,1,15,136),(13,1,14,137),(13,1,15,138),(14,1,14,139),(14,1,15,140),(15,1,14,141),(15,1,15,142),(16,1,14,143),(16,1,15,144);
/*!40000 ALTER TABLE `FileAttributeValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileImageThumbnailTypes`
--

DROP TABLE IF EXISTS `FileImageThumbnailTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileImageThumbnailTypes` (
  `ftTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ftTypeHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ftTypeName` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ftTypeWidth` int(11) NOT NULL DEFAULT '0',
  `ftTypeHeight` int(11) DEFAULT NULL,
  `ftTypeIsRequired` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ftTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileImageThumbnailTypes`
--

LOCK TABLES `FileImageThumbnailTypes` WRITE;
/*!40000 ALTER TABLE `FileImageThumbnailTypes` DISABLE KEYS */;
INSERT INTO `FileImageThumbnailTypes` VALUES (1,'small','Small Image',740,NULL,0),(2,'medium','Medium Image',940,NULL,0),(3,'large','Large Image',1140,NULL,0),(4,'file_manager_listing','File Manager Thumbnails',60,60,1),(5,'file_manager_detail','File Manager Detail Thumbnails',400,NULL,1);
/*!40000 ALTER TABLE `FileImageThumbnailTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FilePermissionAssignments`
--

DROP TABLE IF EXISTS `FilePermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FilePermissionAssignments` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FilePermissionAssignments`
--

LOCK TABLES `FilePermissionAssignments` WRITE;
/*!40000 ALTER TABLE `FilePermissionAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `FilePermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FilePermissionFileTypes`
--

DROP TABLE IF EXISTS `FilePermissionFileTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FilePermissionFileTypes` (
  `extension` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fsID`,`gID`,`uID`,`extension`),
  KEY `gID` (`gID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FilePermissionFileTypes`
--

LOCK TABLES `FilePermissionFileTypes` WRITE;
/*!40000 ALTER TABLE `FilePermissionFileTypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `FilePermissionFileTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSearchIndexAttributes`
--

DROP TABLE IF EXISTS `FileSearchIndexAttributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSearchIndexAttributes` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `ak_width` decimal(14,4) DEFAULT '0.0000',
  `ak_height` decimal(14,4) DEFAULT '0.0000',
  `ak_duration` decimal(14,4) DEFAULT '0.0000',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSearchIndexAttributes`
--

LOCK TABLES `FileSearchIndexAttributes` WRITE;
/*!40000 ALTER TABLE `FileSearchIndexAttributes` DISABLE KEYS */;
INSERT INTO `FileSearchIndexAttributes` VALUES (1,200.0000,200.0000,0.0000),(2,500.0000,500.0000,0.0000),(3,460.0000,460.0000,0.0000),(4,592.0000,397.0000,0.0000),(5,250.0000,252.0000,0.0000),(6,1600.0000,1067.0000,0.0000),(7,200.0000,200.0000,0.0000),(8,1499.0000,1067.0000,0.0000),(9,1100.0000,263.0000,0.0000),(10,1600.0000,1067.0000,0.0000),(11,1600.0000,1066.0000,0.0000),(12,1600.0000,1067.0000,0.0000),(13,1100.0000,368.0000,0.0000),(14,1100.0000,368.0000,0.0000),(15,1600.0000,1067.0000,0.0000),(16,1600.0000,953.0000,0.0000);
/*!40000 ALTER TABLE `FileSearchIndexAttributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSetFiles`
--

DROP TABLE IF EXISTS `FileSetFiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSetFiles` (
  `fsfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fsID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fsDisplayOrder` int(10) unsigned NOT NULL,
  PRIMARY KEY (`fsfID`),
  KEY `fID` (`fID`),
  KEY `fsID` (`fsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSetFiles`
--

LOCK TABLES `FileSetFiles` WRITE;
/*!40000 ALTER TABLE `FileSetFiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileSetFiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSetPermissionAssignments`
--

DROP TABLE IF EXISTS `FileSetPermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSetPermissionAssignments` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fsID`,`pkID`,`paID`),
  KEY `paID` (`paID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSetPermissionAssignments`
--

LOCK TABLES `FileSetPermissionAssignments` WRITE;
/*!40000 ALTER TABLE `FileSetPermissionAssignments` DISABLE KEYS */;
INSERT INTO `FileSetPermissionAssignments` VALUES (0,39,40),(0,40,41),(0,41,42),(0,42,43),(0,43,44),(0,44,45),(0,45,47),(0,46,46),(0,47,48);
/*!40000 ALTER TABLE `FileSetPermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSetPermissionFileTypeAccessList`
--

DROP TABLE IF EXISTS `FileSetPermissionFileTypeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSetPermissionFileTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSetPermissionFileTypeAccessList`
--

LOCK TABLES `FileSetPermissionFileTypeAccessList` WRITE;
/*!40000 ALTER TABLE `FileSetPermissionFileTypeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileSetPermissionFileTypeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSetPermissionFileTypeAccessListCustom`
--

DROP TABLE IF EXISTS `FileSetPermissionFileTypeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSetPermissionFileTypeAccessListCustom` (
  `extension` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`extension`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSetPermissionFileTypeAccessListCustom`
--

LOCK TABLES `FileSetPermissionFileTypeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `FileSetPermissionFileTypeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileSetPermissionFileTypeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSetSavedSearches`
--

DROP TABLE IF EXISTS `FileSetSavedSearches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSetSavedSearches` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsSearchRequest` text COLLATE utf8_unicode_ci,
  `fsResultColumns` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`fsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSetSavedSearches`
--

LOCK TABLES `FileSetSavedSearches` WRITE;
/*!40000 ALTER TABLE `FileSetSavedSearches` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileSetSavedSearches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSets`
--

DROP TABLE IF EXISTS `FileSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSets` (
  `fsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fsName` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsType` smallint(6) NOT NULL,
  `fsOverrideGlobalPermissions` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`fsID`),
  KEY `uID` (`uID`,`fsType`,`fsName`),
  KEY `fsName` (`fsName`),
  KEY `fsType` (`fsType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSets`
--

LOCK TABLES `FileSets` WRITE;
/*!40000 ALTER TABLE `FileSets` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileStorageLocationTypes`
--

DROP TABLE IF EXISTS `FileStorageLocationTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileStorageLocationTypes` (
  `fslTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fslTypeHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fslTypeName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fslTypeID`),
  UNIQUE KEY `fslTypeHandle` (`fslTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileStorageLocationTypes`
--

LOCK TABLES `FileStorageLocationTypes` WRITE;
/*!40000 ALTER TABLE `FileStorageLocationTypes` DISABLE KEYS */;
INSERT INTO `FileStorageLocationTypes` VALUES (1,'default','Default',0),(2,'local','Local',0);
/*!40000 ALTER TABLE `FileStorageLocationTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileStorageLocations`
--

DROP TABLE IF EXISTS `FileStorageLocations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileStorageLocations` (
  `fslID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fslName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fslConfiguration` longtext COLLATE utf8_unicode_ci NOT NULL,
  `fslIsDefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fslID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileStorageLocations`
--

LOCK TABLES `FileStorageLocations` WRITE;
/*!40000 ALTER TABLE `FileStorageLocations` DISABLE KEYS */;
INSERT INTO `FileStorageLocations` VALUES (1,'Default','O:69:\"Concrete\\Core\\File\\StorageLocation\\Configuration\\DefaultConfiguration\":1:{s:10:\"\0*\0default\";b:1;}',1);
/*!40000 ALTER TABLE `FileStorageLocations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileVersionLog`
--

DROP TABLE IF EXISTS `FileVersionLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileVersionLog` (
  `fvlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeAttributeID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fvlID`),
  KEY `fvID` (`fID`,`fvID`,`fvlID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileVersionLog`
--

LOCK TABLES `FileVersionLog` WRITE;
/*!40000 ALTER TABLE `FileVersionLog` DISABLE KEYS */;
INSERT INTO `FileVersionLog` VALUES (1,1,1,5,14),(2,1,1,5,15),(3,2,1,5,14),(4,2,1,5,15),(5,3,1,5,14),(6,3,1,5,15),(7,4,1,5,14),(8,4,1,5,15),(9,5,1,5,14),(10,5,1,5,15),(11,6,1,5,14),(12,6,1,5,15),(13,7,1,5,14),(14,7,1,5,15),(15,8,1,5,14),(16,8,1,5,15),(17,9,1,5,14),(18,9,1,5,15),(19,10,1,5,14),(20,10,1,5,15),(21,11,1,5,14),(22,11,1,5,15),(23,12,1,5,14),(24,12,1,5,15),(25,13,1,5,14),(26,13,1,5,15),(27,14,1,5,14),(28,14,1,5,15),(29,15,1,5,14),(30,15,1,5,15),(31,16,1,5,14),(32,16,1,5,15);
/*!40000 ALTER TABLE `FileVersionLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileVersions`
--

DROP TABLE IF EXISTS `FileVersions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileVersions` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvFilename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fvPrefix` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvGenericType` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fvSize` int(10) unsigned NOT NULL DEFAULT '0',
  `fvTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvDescription` text COLLATE utf8_unicode_ci,
  `fvTags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvIsApproved` int(10) unsigned NOT NULL DEFAULT '1',
  `fvDateAdded` datetime DEFAULT NULL,
  `fvApproverUID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvAuthorUID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvActivateDatetime` datetime DEFAULT NULL,
  `fvHasListingThumbnail` tinyint(1) NOT NULL DEFAULT '0',
  `fvHasDetailThumbnail` tinyint(1) NOT NULL DEFAULT '0',
  `fvExtension` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvType` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`fvID`),
  KEY `fvExtension` (`fvExtension`),
  KEY `fvType` (`fvType`),
  KEY `fvFilename` (`fvFilename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileVersions`
--

LOCK TABLES `FileVersions` WRITE;
/*!40000 ALTER TABLE `FileVersions` DISABLE KEYS */;
INSERT INTO `FileVersions` VALUES (1,1,'avatar_none.png','301498489133',0,12769,'avatar_none.png','','',1,'2017-06-26 14:58:53',1,1,'2017-06-26 14:58:53',1,0,'png',1),(2,1,'balloon.jpg','341498489134',0,49708,'balloon.jpg','','',1,'2017-06-26 14:58:54',1,1,'2017-06-26 14:58:54',1,1,'jpg',1),(3,1,'bio.png','361498489134',0,1353,'bio.png','','',1,'2017-06-26 14:58:54',1,1,'2017-06-26 14:58:54',1,1,'png',1),(4,1,'blank.png','431498489134',0,1837,'blank.png','','',1,'2017-06-26 14:58:54',1,1,'2017-06-26 14:58:54',1,1,'png',1),(5,1,'blank2.png','811498489134',0,1210,'blank2.png','','',1,'2017-06-26 14:58:54',1,1,'2017-06-26 14:58:54',1,0,'png',1),(6,1,'bridge.jpg','231498489135',0,211901,'bridge.jpg','','',1,'2017-06-26 14:58:55',1,1,'2017-06-26 14:58:55',1,1,'jpg',1),(7,1,'chinese_house2.jpg','111498489135',0,84383,'chinese_house2.jpg','','',1,'2017-06-26 14:58:55',1,1,'2017-06-26 14:58:55',1,0,'jpg',1),(8,1,'houses.jpg','331498489135',0,293154,'houses.jpg','','',1,'2017-06-26 14:58:56',1,1,'2017-06-26 14:58:56',1,1,'jpg',1),(9,1,'masthead.png','301498489136',0,1429,'masthead.png','','',1,'2017-06-26 14:58:56',1,1,'2017-06-26 14:58:56',1,1,'png',1),(10,1,'mountains.jpg','131498489136',0,330436,'mountains.jpg','','',1,'2017-06-26 14:58:57',1,1,'2017-06-26 14:58:57',1,1,'jpg',1),(11,1,'plants.jpg','451498489137',0,373839,'plants.jpg','','',1,'2017-06-26 14:58:57',1,1,'2017-06-26 14:58:57',1,1,'jpg',1),(12,1,'shoes.jpg','111498489138',0,170179,'shoes.jpg','','',1,'2017-06-26 14:58:58',1,1,'2017-06-26 14:58:58',1,1,'jpg',1),(13,1,'slider1.png','201498489138',0,338112,'slider1.png','','',1,'2017-06-26 14:58:58',1,1,'2017-06-26 14:58:58',1,1,'png',1),(14,1,'slider2.png','561498489139',0,406839,'slider2.png','','',1,'2017-06-26 14:58:59',1,1,'2017-06-26 14:58:59',1,1,'png',1),(15,1,'subway.jpg','741498489139',0,305595,'subway.jpg','','',1,'2017-06-26 14:58:59',1,1,'2017-06-26 14:58:59',1,1,'jpg',1),(16,1,'sunset.jpg','801498489140',0,458047,'sunset.jpg','','',1,'2017-06-26 14:59:00',1,1,'2017-06-26 14:59:00',1,1,'jpg',1);
/*!40000 ALTER TABLE `FileVersions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Files`
--

DROP TABLE IF EXISTS `Files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Files` (
  `fID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fDateAdded` datetime DEFAULT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fslID` int(10) unsigned NOT NULL DEFAULT '0',
  `ocID` int(10) unsigned NOT NULL DEFAULT '0',
  `fOverrideSetPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `fPassword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`fID`,`uID`,`fslID`),
  KEY `uID` (`uID`),
  KEY `fslID` (`fslID`),
  KEY `ocID` (`ocID`),
  KEY `fOverrideSetPermissions` (`fOverrideSetPermissions`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Files`
--

LOCK TABLES `Files` WRITE;
/*!40000 ALTER TABLE `Files` DISABLE KEYS */;
INSERT INTO `Files` VALUES (1,'2017-06-26 14:58:53',1,1,0,0,NULL),(2,'2017-06-26 14:58:54',1,1,0,0,NULL),(3,'2017-06-26 14:58:54',1,1,0,0,NULL),(4,'2017-06-26 14:58:54',1,1,0,0,NULL),(5,'2017-06-26 14:58:54',1,1,0,0,NULL),(6,'2017-06-26 14:58:55',1,1,0,0,NULL),(7,'2017-06-26 14:58:55',1,1,0,0,NULL),(8,'2017-06-26 14:58:56',1,1,0,0,NULL),(9,'2017-06-26 14:58:56',1,1,0,0,NULL),(10,'2017-06-26 14:58:57',1,1,0,0,NULL),(11,'2017-06-26 14:58:57',1,1,0,0,NULL),(12,'2017-06-26 14:58:58',1,1,0,0,NULL),(13,'2017-06-26 14:58:58',1,1,0,0,NULL),(14,'2017-06-26 14:58:59',1,1,0,0,NULL),(15,'2017-06-26 14:58:59',1,1,0,0,NULL),(16,'2017-06-26 14:59:00',1,1,0,0,NULL);
/*!40000 ALTER TABLE `Files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GatheringConfiguredDataSources`
--

DROP TABLE IF EXISTS `GatheringConfiguredDataSources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GatheringConfiguredDataSources` (
  `gcsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gaID` int(10) unsigned DEFAULT NULL,
  `gasID` int(10) unsigned DEFAULT NULL,
  `gcdObject` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`gcsID`),
  KEY `gaID` (`gaID`),
  KEY `gasID` (`gasID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GatheringConfiguredDataSources`
--

LOCK TABLES `GatheringConfiguredDataSources` WRITE;
/*!40000 ALTER TABLE `GatheringConfiguredDataSources` DISABLE KEYS */;
/*!40000 ALTER TABLE `GatheringConfiguredDataSources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GatheringDataSources`
--

DROP TABLE IF EXISTS `GatheringDataSources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GatheringDataSources` (
  `gasID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gasName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gasHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `gasDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gasID`),
  UNIQUE KEY `gasHandle` (`gasHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GatheringDataSources`
--

LOCK TABLES `GatheringDataSources` WRITE;
/*!40000 ALTER TABLE `GatheringDataSources` DISABLE KEYS */;
INSERT INTO `GatheringDataSources` VALUES (1,'Site Page','page',0,0),(2,'RSS Feed','rss_feed',0,1),(3,'Flickr Feed','flickr_feed',0,2),(4,'Twitter','twitter',0,3);
/*!40000 ALTER TABLE `GatheringDataSources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GatheringItemFeatureAssignments`
--

DROP TABLE IF EXISTS `GatheringItemFeatureAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GatheringItemFeatureAssignments` (
  `gafaID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gaiID` int(10) unsigned DEFAULT NULL,
  `faID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`gafaID`),
  KEY `gaiID` (`gaiID`,`faID`),
  KEY `faID` (`faID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GatheringItemFeatureAssignments`
--

LOCK TABLES `GatheringItemFeatureAssignments` WRITE;
/*!40000 ALTER TABLE `GatheringItemFeatureAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `GatheringItemFeatureAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GatheringItemSelectedTemplates`
--

DROP TABLE IF EXISTS `GatheringItemSelectedTemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GatheringItemSelectedTemplates` (
  `gaiID` int(10) unsigned NOT NULL DEFAULT '0',
  `gatID` int(10) unsigned NOT NULL DEFAULT '0',
  `gatTypeID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`gaiID`,`gatID`),
  UNIQUE KEY `gatUniqueKey` (`gaiID`,`gatTypeID`),
  KEY `gatTypeID` (`gatTypeID`),
  KEY `gatID` (`gatID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GatheringItemSelectedTemplates`
--

LOCK TABLES `GatheringItemSelectedTemplates` WRITE;
/*!40000 ALTER TABLE `GatheringItemSelectedTemplates` DISABLE KEYS */;
/*!40000 ALTER TABLE `GatheringItemSelectedTemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GatheringItemTemplateFeatures`
--

DROP TABLE IF EXISTS `GatheringItemTemplateFeatures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GatheringItemTemplateFeatures` (
  `gfeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gatID` int(10) unsigned DEFAULT NULL,
  `feID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`gfeID`),
  KEY `gatID` (`gatID`),
  KEY `feID` (`feID`,`gatID`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GatheringItemTemplateFeatures`
--

LOCK TABLES `GatheringItemTemplateFeatures` WRITE;
/*!40000 ALTER TABLE `GatheringItemTemplateFeatures` DISABLE KEYS */;
INSERT INTO `GatheringItemTemplateFeatures` VALUES (4,1,1),(10,2,1),(13,3,1),(16,4,1),(19,5,1),(23,7,1),(29,11,1),(33,12,1),(37,13,1),(42,14,1),(47,15,1),(53,17,1),(56,18,1),(63,21,1),(64,22,1),(3,1,2),(9,2,2),(12,3,2),(15,4,2),(18,5,2),(21,6,2),(25,8,2),(27,9,2),(41,13,3),(46,14,3),(51,16,3),(55,17,3),(62,20,3),(66,22,3),(2,1,4),(8,2,4),(14,4,4),(17,5,4),(31,11,4),(35,12,4),(39,13,4),(44,14,4),(61,20,4),(5,1,5),(22,6,5),(24,8,5),(26,9,5),(28,10,5),(32,11,5),(36,12,5),(40,13,5),(45,14,5),(49,15,5),(50,16,5),(59,19,5),(65,22,5),(20,5,6),(1,1,7),(7,2,7),(11,3,7),(30,11,7),(34,12,7),(38,13,7),(43,14,7),(48,15,7),(52,16,7),(54,17,7),(57,18,7),(58,19,7),(60,20,7),(6,1,8);
/*!40000 ALTER TABLE `GatheringItemTemplateFeatures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GatheringItemTemplateTypes`
--

DROP TABLE IF EXISTS `GatheringItemTemplateTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GatheringItemTemplateTypes` (
  `gatTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gatTypeHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gatTypeID`),
  UNIQUE KEY `gatTypeHandle` (`gatTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GatheringItemTemplateTypes`
--

LOCK TABLES `GatheringItemTemplateTypes` WRITE;
/*!40000 ALTER TABLE `GatheringItemTemplateTypes` DISABLE KEYS */;
INSERT INTO `GatheringItemTemplateTypes` VALUES (1,'tile',0),(2,'detail',0);
/*!40000 ALTER TABLE `GatheringItemTemplateTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GatheringItemTemplates`
--

DROP TABLE IF EXISTS `GatheringItemTemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GatheringItemTemplates` (
  `gatID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gatHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gatName` text COLLATE utf8_unicode_ci,
  `gatHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `gatFixedSlotWidth` int(10) unsigned DEFAULT '0',
  `gatFixedSlotHeight` int(10) unsigned DEFAULT '0',
  `gatForceDefault` int(10) unsigned DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  `gatTypeID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`gatID`),
  UNIQUE KEY `gatHandle` (`gatHandle`,`gatTypeID`),
  KEY `gatTypeID` (`gatTypeID`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GatheringItemTemplates`
--

LOCK TABLES `GatheringItemTemplates` WRITE;
/*!40000 ALTER TABLE `GatheringItemTemplates` DISABLE KEYS */;
INSERT INTO `GatheringItemTemplates` VALUES (1,'featured','Featured Item',0,6,2,1,0,1),(2,'title_date_description','Title Date & Description',0,0,0,0,0,1),(3,'title_description','Title & Description',0,0,0,0,0,1),(4,'title_date','Title & Date',0,0,0,0,0,1),(5,'title_date_comments','Title, Date & Comments',1,0,0,0,0,1),(6,'thumbnail','Thumbnail',0,0,0,0,0,1),(7,'basic','Basic',0,0,0,0,0,2),(8,'image_sharing_link','Image Sharing Link',0,0,0,0,0,2),(9,'image_conversation','Image Conversation',0,0,0,0,0,2),(10,'image','Large Image',0,0,0,0,0,2),(11,'masthead_image_left','Masthead Image Left',0,0,0,0,0,1),(12,'masthead_image_right','Masthead Image Right',0,0,0,0,0,1),(13,'masthead_image_byline_right','Masthead Image Byline Right',0,0,0,0,0,1),(14,'masthead_image_byline_left','Masthead Image Byline Left',0,0,0,0,0,1),(15,'image_masthead_description_center','Image Masthead Description Center',0,0,0,0,0,1),(16,'image_byline_description_center','Image Byline Description Center',0,0,0,0,0,1),(17,'masthead_byline_description','Masthead Byline Description',0,0,0,0,0,1),(18,'masthead_description','Masthead Description',0,0,0,0,0,1),(19,'thumbnail_description_center','Thumbnail & Description Center',0,0,0,0,0,1),(20,'tweet','Tweet',0,0,0,0,0,1),(21,'vimeo','Vimeo',0,0,0,0,0,1),(22,'image_overlay_headline','Image Overlay Headline',0,0,0,0,0,1);
/*!40000 ALTER TABLE `GatheringItemTemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GatheringItems`
--

DROP TABLE IF EXISTS `GatheringItems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GatheringItems` (
  `gaiID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gaID` int(10) unsigned DEFAULT NULL,
  `gasID` int(10) unsigned DEFAULT NULL,
  `gaiDateTimeCreated` datetime NOT NULL,
  `gaiPublicDateTime` datetime NOT NULL,
  `gaiTitle` text COLLATE utf8_unicode_ci,
  `gaiSlotWidth` int(10) unsigned DEFAULT '1',
  `gaiSlotHeight` int(10) unsigned DEFAULT '1',
  `gaiKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gaiBatchDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `gaiBatchTimestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `gaiIsDeleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`gaiID`),
  UNIQUE KEY `gaiUniqueKey` (`gaiKey`,`gasID`,`gaID`),
  KEY `gaID` (`gaID`,`gaiBatchTimestamp`),
  KEY `gasID` (`gasID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GatheringItems`
--

LOCK TABLES `GatheringItems` WRITE;
/*!40000 ALTER TABLE `GatheringItems` DISABLE KEYS */;
/*!40000 ALTER TABLE `GatheringItems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GatheringPermissionAssignments`
--

DROP TABLE IF EXISTS `GatheringPermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GatheringPermissionAssignments` (
  `gaID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gaID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GatheringPermissionAssignments`
--

LOCK TABLES `GatheringPermissionAssignments` WRITE;
/*!40000 ALTER TABLE `GatheringPermissionAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `GatheringPermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Gatherings`
--

DROP TABLE IF EXISTS `Gatherings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Gatherings` (
  `gaID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gaDateCreated` datetime NOT NULL,
  `gaDateLastUpdated` datetime NOT NULL,
  PRIMARY KEY (`gaID`),
  KEY `gaDateLastUpdated` (`gaDateLastUpdated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Gatherings`
--

LOCK TABLES `Gatherings` WRITE;
/*!40000 ALTER TABLE `Gatherings` DISABLE KEYS */;
/*!40000 ALTER TABLE `Gatherings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GroupSetGroups`
--

DROP TABLE IF EXISTS `GroupSetGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GroupSetGroups` (
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gID`,`gsID`),
  KEY `gsID` (`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GroupSetGroups`
--

LOCK TABLES `GroupSetGroups` WRITE;
/*!40000 ALTER TABLE `GroupSetGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `GroupSetGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GroupSets`
--

DROP TABLE IF EXISTS `GroupSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GroupSets` (
  `gsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gsName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gsID`),
  KEY `gsName` (`gsName`),
  KEY `pkgID` (`pkgID`,`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GroupSets`
--

LOCK TABLES `GroupSets` WRITE;
/*!40000 ALTER TABLE `GroupSets` DISABLE KEYS */;
/*!40000 ALTER TABLE `GroupSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Groups`
--

DROP TABLE IF EXISTS `Groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Groups` (
  `gID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `gDescription` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gUserExpirationIsEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `gUserExpirationMethod` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gUserExpirationSetDateTime` datetime DEFAULT NULL,
  `gUserExpirationInterval` int(10) unsigned NOT NULL DEFAULT '0',
  `gUserExpirationAction` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gIsBadge` tinyint(1) NOT NULL DEFAULT '0',
  `gBadgeFID` int(10) unsigned NOT NULL DEFAULT '0',
  `gBadgeDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gBadgeCommunityPointValue` int(11) NOT NULL DEFAULT '0',
  `gIsAutomated` tinyint(1) NOT NULL DEFAULT '0',
  `gCheckAutomationOnRegister` tinyint(1) NOT NULL DEFAULT '0',
  `gCheckAutomationOnLogin` tinyint(1) NOT NULL DEFAULT '0',
  `gCheckAutomationOnJobRun` tinyint(1) NOT NULL DEFAULT '0',
  `gPath` text COLLATE utf8_unicode_ci,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gID`),
  KEY `gName` (`gName`),
  KEY `gBadgeFID` (`gBadgeFID`),
  KEY `pkgID` (`pkgID`),
  KEY `gPath` (`gPath`(255))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Groups`
--

LOCK TABLES `Groups` WRITE;
/*!40000 ALTER TABLE `Groups` DISABLE KEYS */;
INSERT INTO `Groups` VALUES (1,'Guest','The guest group represents unregistered visitors to your site.',0,NULL,NULL,0,NULL,0,0,NULL,0,0,0,0,0,'/Guest',0),(2,'Registered Users','The registered users group represents all user accounts.',0,NULL,NULL,0,NULL,0,0,NULL,0,0,0,0,0,'/Registered Users',0),(3,'Administrators','',0,NULL,NULL,0,NULL,0,0,NULL,0,0,0,0,0,'/Administrators',0);
/*!40000 ALTER TABLE `Groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JobSetJobs`
--

DROP TABLE IF EXISTS `JobSetJobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JobSetJobs` (
  `jsID` int(10) unsigned NOT NULL DEFAULT '0',
  `jID` int(10) unsigned NOT NULL DEFAULT '0',
  `jRunOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`jsID`,`jID`),
  KEY `jID` (`jID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JobSetJobs`
--

LOCK TABLES `JobSetJobs` WRITE;
/*!40000 ALTER TABLE `JobSetJobs` DISABLE KEYS */;
INSERT INTO `JobSetJobs` VALUES (1,1,0),(1,4,0),(1,5,0),(1,6,0),(1,7,0);
/*!40000 ALTER TABLE `JobSetJobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JobSets`
--

DROP TABLE IF EXISTS `JobSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JobSets` (
  `jsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jsName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `jDateLastRun` datetime DEFAULT NULL,
  `isScheduled` smallint(6) NOT NULL DEFAULT '0',
  `scheduledInterval` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'days',
  `scheduledValue` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jsID`),
  KEY `pkgID` (`pkgID`),
  KEY `jsName` (`jsName`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JobSets`
--

LOCK TABLES `JobSets` WRITE;
/*!40000 ALTER TABLE `JobSets` DISABLE KEYS */;
INSERT INTO `JobSets` VALUES (1,'Default',0,NULL,0,'days',0);
/*!40000 ALTER TABLE `JobSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Jobs`
--

DROP TABLE IF EXISTS `Jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Jobs` (
  `jID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `jDescription` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jDateInstalled` datetime DEFAULT NULL,
  `jDateLastRun` datetime DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `jLastStatusText` longtext COLLATE utf8_unicode_ci,
  `jLastStatusCode` smallint(6) NOT NULL DEFAULT '0',
  `jStatus` varchar(14) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ENABLED',
  `jHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jNotUninstallable` smallint(6) NOT NULL DEFAULT '0',
  `isScheduled` smallint(6) NOT NULL DEFAULT '0',
  `scheduledInterval` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'days',
  `scheduledValue` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jID`),
  UNIQUE KEY `jHandle` (`jHandle`),
  KEY `pkgID` (`pkgID`),
  KEY `isScheduled` (`isScheduled`,`jDateLastRun`,`jID`),
  KEY `jDateLastRun` (`jDateLastRun`,`jID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Jobs`
--

LOCK TABLES `Jobs` WRITE;
/*!40000 ALTER TABLE `Jobs` DISABLE KEYS */;
INSERT INTO `Jobs` VALUES (1,'Index Search Engine - Updates','Index the site to allow searching to work quickly and accurately. Only reindexes pages that have changed since last indexing.','2017-06-26 14:58:31',NULL,0,NULL,0,'ENABLED','index_search',1,0,'days',0),(2,'Index Search Engine - All','Empties the page search index and reindexes all pages.','2017-06-26 14:58:31',NULL,0,NULL,0,'ENABLED','index_search_all',1,0,'days',0),(3,'Check Automated Groups','Automatically add users to groups and assign badges.','2017-06-26 14:58:31',NULL,0,NULL,0,'ENABLED','check_automated_groups',0,0,'days',0),(4,'Generate the sitemap.xml file','Generate the sitemap.xml file that search engines use to crawl your site.','2017-06-26 14:58:31',NULL,0,NULL,0,'ENABLED','generate_sitemap',0,0,'days',0),(5,'Process Email Posts','Polls an email account and grabs private messages/postings that are sent there..','2017-06-26 14:58:31',NULL,0,NULL,0,'ENABLED','process_email',0,0,'days',0),(6,'Remove Old Page Versions','Removes all except the 10 most recent page versions for each page.','2017-06-26 14:58:31',NULL,0,NULL,0,'ENABLED','remove_old_page_versions',0,0,'days',0),(7,'Update Gatherings','Loads new items into gatherings.','2017-06-26 14:58:31',NULL,0,NULL,0,'ENABLED','update_gatherings',0,0,'days',0);
/*!40000 ALTER TABLE `Jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JobsLog`
--

DROP TABLE IF EXISTS `JobsLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JobsLog` (
  `jlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jID` int(10) unsigned NOT NULL,
  `jlMessage` longtext COLLATE utf8_unicode_ci NOT NULL,
  `jlTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `jlError` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jlID`),
  KEY `jID` (`jID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JobsLog`
--

LOCK TABLES `JobsLog` WRITE;
/*!40000 ALTER TABLE `JobsLog` DISABLE KEYS */;
/*!40000 ALTER TABLE `JobsLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Logs`
--

DROP TABLE IF EXISTS `Logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Logs` (
  `logID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `channel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` int(10) unsigned NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci,
  `uID` int(10) unsigned DEFAULT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`logID`),
  KEY `channel` (`channel`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Logs`
--

LOCK TABLES `Logs` WRITE;
/*!40000 ALTER TABLE `Logs` DISABLE KEYS */;
INSERT INTO `Logs` VALUES (1,'application',1498489134,'Image Inspector',1,200),(2,'application',1498489134,'Image Inspector',1,200),(3,'application',1498489134,'Image Inspector',1,200),(4,'application',1498489134,'Image Inspector',1,200),(5,'application',1498489135,'Image Inspector',1,200),(6,'application',1498489135,'Image Inspector',1,200),(7,'application',1498489135,'Image Inspector',1,200),(8,'application',1498489136,'Image Inspector',1,200),(9,'application',1498489136,'Image Inspector',1,200),(10,'application',1498489137,'Image Inspector',1,200),(11,'application',1498489137,'Image Inspector',1,200),(12,'application',1498489138,'Image Inspector',1,200),(13,'application',1498489138,'Image Inspector',1,200),(14,'application',1498489139,'Image Inspector',1,200),(15,'application',1498489140,'Image Inspector',1,200),(16,'application',1498489140,'Image Inspector',1,200),(17,'exceptions',1498489607,'Exception Occurred: /var/www/html/application/themes/nina/page_theme.php:8 Interface \'Application\\Theme\\nina\\ThemeProviderInterface\' not found (1)\n',1,600),(18,'exceptions',1498489626,'Exception Occurred: /var/www/html/application/themes/nina/page_theme.php:8 Interface \'Application\\Theme\\nina\\ThemeProviderInterface\' not found (1)\n',1,600),(19,'exceptions',1498489676,'Exception Occurred: /var/www/html/application/themes/nina/page_theme.php:8 syntax error, unexpected \'{\', expecting identifier (T_STRING) or namespace (T_NAMESPACE) or \\\\ (T_NS_SEPARATOR) (4)\n',1,600),(20,'exceptions',1498489718,'Exception Occurred: /var/www/html/application/themes/nina/page_theme.php:8 Interface \'Application\\Themes\\nina\\ThemeProviderInterface\' not found (1)\n',1,600),(21,'exceptions',1498489761,'Exception Occurred: /var/www/html/application/themes/nina/page_theme.php:8 Interface \'Application\\Themes\\nina\\ThemeProviderInterface\' not found (1)\n',1,600),(22,'exceptions',1498489775,'Exception Occurred: /var/www/html/application/themes/nina/page_theme.php:8 Interface \'Application\\Theme\\nina\\ThemeProviderInterface\' not found (1)\n',1,600),(23,'exceptions',1498490305,'Exception Occurred: /var/www/html/application/themes/nina/page_theme.php:8 Interface \'Application\\Theme\\nina\\ThemeProviderInterface\' not found (1)\n',1,600),(24,'exceptions',1498490506,'Exception Occurred: /var/www/html/application/themes/nina/page_theme.php:8 Interface \'Application\\Theme\\nina\\ThemeProviderInterface\' not found (1)\n',1,600),(25,'exceptions',1498490602,'Exception Occurred: /var/www/html/application/themes/nina/page_theme.php:8 Interface \'Application\\Theme\\nina\\ThemeProviderInterface\' not found (1)\n',1,600),(26,'exceptions',1498490643,'Exception Occurred: /var/www/html/application/themes/nina/page_theme.php:9 syntax error, unexpected \'public\' (T_PUBLIC) (4)\n',1,600),(27,'exceptions',1498490671,'Exception Occurred: /var/www/html/application/themes/nina/page_theme.php:8 Interface \'Application\\Theme\\nina\\ThemeProviderInterface\' not found (1)\n',1,600),(28,'exceptions',1498490914,'Exception Occurred: /var/www/html/application/themes/nina/page_theme.php:8 Interface \'Application\\Theme\\nina\\ThemeProviderInterface\' not found (1)\n',1,600),(29,'exceptions',1498491412,'Exception Occurred: /var/www/html/concrete/src/View/View.php:74 include(/var/www/html/concrete/themes/urbanic/elements/header_top.php): failed to open stream: No such file or directory (2)\n',1,600),(30,'exceptions',1498491416,'Exception Occurred: /var/www/html/concrete/src/View/View.php:74 include(/var/www/html/concrete/themes/urbanic/elements/header_top.php): failed to open stream: No such file or directory (2)\n',1,600),(31,'exceptions',1498491712,'Exception Occurred: /var/www/html/concrete/src/View/View.php:74 include(/var/www/html/concrete/themes/urbanic/elements/header_top.php): failed to open stream: No such file or directory (2)\n',1,600),(32,'exceptions',1498491718,'Exception Occurred: /var/www/html/concrete/src/View/View.php:74 include(/var/www/html/concrete/themes/urbanic/elements/header_top.php): failed to open stream: No such file or directory (2)\n',1,600),(33,'exceptions',1498491721,'Exception Occurred: /var/www/html/concrete/src/View/View.php:74 include(/var/www/html/concrete/themes/urbanic/elements/header_top.php): failed to open stream: No such file or directory (2)\n',1,600),(34,'exceptions',1498491742,'Exception Occurred: /var/www/html/concrete/src/View/View.php:74 include(/var/www/html/concrete/themes/urbanic/elements/header_top.php): failed to open stream: No such file or directory (2)\n',1,600),(35,'exceptions',1498491743,'Exception Occurred: /var/www/html/concrete/src/View/View.php:74 include(/var/www/html/concrete/themes/urbanic/elements/header_top.php): failed to open stream: No such file or directory (2)\n',1,600),(36,'exceptions',1498491765,'Exception Occurred: /var/www/html/concrete/src/View/View.php:74 include(/var/www/html/concrete/themes/urbanic/elements/header_top.php): failed to open stream: No such file or directory (2)\n',1,600),(37,'exceptions',1498491769,'Exception Occurred: /var/www/html/concrete/src/View/View.php:74 include(/var/www/html/concrete/themes/urbanic/elements/header_top.php): failed to open stream: No such file or directory (2)\n',1,600),(38,'exceptions',1498491776,'Exception Occurred: /var/www/html/concrete/src/View/View.php:74 include(/var/www/html/concrete/themes/urbanic/elements/header_top.php): failed to open stream: No such file or directory (2)\n',1,600),(39,'exceptions',1498491780,'Exception Occurred: /var/www/html/concrete/src/View/View.php:74 include(/var/www/html/concrete/themes/urbanic/elements/header_top.php): failed to open stream: No such file or directory (2)\n',1,600),(40,'exceptions',1498491785,'Exception Occurred: /var/www/html/concrete/src/View/View.php:74 include(/var/www/html/concrete/themes/urbanic/elements/header_top.php): failed to open stream: No such file or directory (2)\n',1,600),(41,'exceptions',1498491788,'Exception Occurred: /var/www/html/concrete/src/View/View.php:74 include(/var/www/html/concrete/themes/urbanic/elements/header_top.php): failed to open stream: No such file or directory (2)\n',1,600);
/*!40000 ALTER TABLE `Logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MailImporters`
--

DROP TABLE IF EXISTS `MailImporters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MailImporters` (
  `miID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `miServer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miUsername` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miPassword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miEncryption` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miIsEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `miEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miPort` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  `miConnectionMethod` varchar(8) COLLATE utf8_unicode_ci DEFAULT 'POP',
  PRIMARY KEY (`miID`),
  UNIQUE KEY `miHandle` (`miHandle`),
  KEY `pkgID` (`pkgID`,`miID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MailImporters`
--

LOCK TABLES `MailImporters` WRITE;
/*!40000 ALTER TABLE `MailImporters` DISABLE KEYS */;
INSERT INTO `MailImporters` VALUES (1,'private_message','',NULL,NULL,NULL,0,'',0,0,'POP');
/*!40000 ALTER TABLE `MailImporters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MailValidationHashes`
--

DROP TABLE IF EXISTS `MailValidationHashes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MailValidationHashes` (
  `mvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miID` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `mHash` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `mDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `mDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`mvhID`),
  UNIQUE KEY `mHash` (`mHash`),
  KEY `miID` (`miID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MailValidationHashes`
--

LOCK TABLES `MailValidationHashes` WRITE;
/*!40000 ALTER TABLE `MailValidationHashes` DISABLE KEYS */;
/*!40000 ALTER TABLE `MailValidationHashes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MultilingualPageRelations`
--

DROP TABLE IF EXISTS `MultilingualPageRelations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MultilingualPageRelations` (
  `mpRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `mpLanguage` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mpLocale` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`mpRelationID`,`cID`,`mpLocale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MultilingualPageRelations`
--

LOCK TABLES `MultilingualPageRelations` WRITE;
/*!40000 ALTER TABLE `MultilingualPageRelations` DISABLE KEYS */;
/*!40000 ALTER TABLE `MultilingualPageRelations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MultilingualSections`
--

DROP TABLE IF EXISTS `MultilingualSections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MultilingualSections` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `msLanguage` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `msCountry` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `msNumPlurals` int(11) NOT NULL DEFAULT '2',
  `msPluralRule` varchar(400) COLLATE utf8_unicode_ci NOT NULL DEFAULT '(n != 1)',
  `msPluralCases` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'one@1\nother@0, 2~16, 100, 1000, 10000, 100000, 1000000, …',
  PRIMARY KEY (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MultilingualSections`
--

LOCK TABLES `MultilingualSections` WRITE;
/*!40000 ALTER TABLE `MultilingualSections` DISABLE KEYS */;
/*!40000 ALTER TABLE `MultilingualSections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MultilingualTranslations`
--

DROP TABLE IF EXISTS `MultilingualTranslations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MultilingualTranslations` (
  `mtID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mtSectionID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgid` text COLLATE utf8_unicode_ci NOT NULL,
  `msgidPlural` text COLLATE utf8_unicode_ci,
  `msgstr` text COLLATE utf8_unicode_ci,
  `msgstrPlurals` text COLLATE utf8_unicode_ci,
  `context` text COLLATE utf8_unicode_ci,
  `comments` text COLLATE utf8_unicode_ci,
  `reference` text COLLATE utf8_unicode_ci,
  `flags` text COLLATE utf8_unicode_ci,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`mtID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MultilingualTranslations`
--

LOCK TABLES `MultilingualTranslations` WRITE;
/*!40000 ALTER TABLE `MultilingualTranslations` DISABLE KEYS */;
/*!40000 ALTER TABLE `MultilingualTranslations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OauthUserMap`
--

DROP TABLE IF EXISTS `OauthUserMap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OauthUserMap` (
  `user_id` int(10) unsigned NOT NULL,
  `namespace` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `binding` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`,`namespace`),
  UNIQUE KEY `oauth_binding` (`binding`,`namespace`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OauthUserMap`
--

LOCK TABLES `OauthUserMap` WRITE;
/*!40000 ALTER TABLE `OauthUserMap` DISABLE KEYS */;
/*!40000 ALTER TABLE `OauthUserMap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Packages`
--

DROP TABLE IF EXISTS `Packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Packages` (
  `pkgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkgName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `pkgDescription` text COLLATE utf8_unicode_ci,
  `pkgDateInstalled` datetime NOT NULL,
  `pkgIsInstalled` tinyint(1) NOT NULL DEFAULT '1',
  `pkgVersion` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgAvailableVersion` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`pkgID`),
  UNIQUE KEY `pkgHandle` (`pkgHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Packages`
--

LOCK TABLES `Packages` WRITE;
/*!40000 ALTER TABLE `Packages` DISABLE KEYS */;
/*!40000 ALTER TABLE `Packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageFeeds`
--

DROP TABLE IF EXISTS `PageFeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageFeeds` (
  `pfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `pfTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pfHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pfDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pfIncludeAllDescendents` tinyint(1) NOT NULL DEFAULT '0',
  `pfContentToDisplay` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `pfAreaHandleToDisplay` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customTopicAttributeKeyHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customTopicTreeNodeID` int(10) unsigned NOT NULL DEFAULT '0',
  `pfDisplayAliases` tinyint(1) NOT NULL DEFAULT '0',
  `ptID` smallint(5) unsigned DEFAULT NULL,
  `pfDisplayFeaturedOnly` tinyint(1) DEFAULT '0',
  `iconFID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pfID`),
  UNIQUE KEY `pfHandle` (`pfHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageFeeds`
--

LOCK TABLES `PageFeeds` WRITE;
/*!40000 ALTER TABLE `PageFeeds` DISABLE KEYS */;
INSERT INTO `PageFeeds` VALUES (1,158,'Blog','blog','concrete5 Blog',0,'S',NULL,NULL,0,0,7,0,0);
/*!40000 ALTER TABLE `PageFeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePaths`
--

DROP TABLE IF EXISTS `PagePaths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePaths` (
  `ppID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned DEFAULT '0',
  `cPath` text COLLATE utf8_unicode_ci NOT NULL,
  `ppIsCanonical` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `ppGeneratedFromURLSlugs` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ppID`),
  KEY `cID` (`cID`),
  KEY `ppIsCanonical` (`ppIsCanonical`),
  KEY `cPath` (`cPath`(255))
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePaths`
--

LOCK TABLES `PagePaths` WRITE;
/*!40000 ALTER TABLE `PagePaths` DISABLE KEYS */;
INSERT INTO `PagePaths` VALUES (1,2,'/dashboard','1',1),(2,3,'/dashboard/sitemap','1',1),(3,4,'/dashboard/sitemap/full','1',1),(4,5,'/dashboard/sitemap/explore','1',1),(5,6,'/dashboard/sitemap/search','1',1),(6,7,'/dashboard/files','1',1),(7,8,'/dashboard/files/search','1',1),(8,9,'/dashboard/files/attributes','1',1),(9,10,'/dashboard/files/sets','1',1),(10,11,'/dashboard/files/add_set','1',1),(11,12,'/dashboard/users','1',1),(12,13,'/dashboard/users/search','1',1),(13,14,'/dashboard/users/groups','1',1),(14,15,'/dashboard/users/attributes','1',1),(15,16,'/dashboard/users/add','1',1),(16,17,'/dashboard/users/add_group','1',1),(17,18,'/dashboard/users/groups/bulkupdate','1',1),(18,19,'/dashboard/users/group_sets','1',1),(19,20,'/dashboard/users/points','1',1),(20,21,'/dashboard/users/points/assign','1',1),(21,22,'/dashboard/users/points/actions','1',1),(22,23,'/dashboard/reports','1',1),(23,24,'/dashboard/reports/forms','1',1),(24,25,'/dashboard/reports/surveys','1',1),(25,26,'/dashboard/reports/logs','1',1),(26,27,'/dashboard/pages','1',1),(27,28,'/dashboard/pages/themes','1',1),(28,29,'/dashboard/pages/themes/inspect','1',1),(29,30,'/dashboard/pages/types','1',1),(30,31,'/dashboard/pages/types/organize','1',1),(31,32,'/dashboard/pages/types/add','1',1),(32,33,'/dashboard/pages/types/form','1',1),(33,34,'/dashboard/pages/types/output','1',1),(34,35,'/dashboard/pages/types/attributes','1',1),(35,36,'/dashboard/pages/types/permissions','1',1),(36,37,'/dashboard/pages/templates','1',1),(37,38,'/dashboard/pages/templates/add','1',1),(38,39,'/dashboard/pages/attributes','1',1),(39,40,'/dashboard/pages/single','1',1),(40,41,'/dashboard/pages/feeds','1',1),(41,42,'/dashboard/conversations','1',1),(42,43,'/dashboard/conversations/messages','1',1),(43,44,'/dashboard/workflow','1',1),(44,45,'/dashboard/workflow/me','1',1),(45,46,'/dashboard/workflow/workflows','1',1),(46,47,'/dashboard/blocks','1',1),(47,48,'/dashboard/blocks/stacks','1',1),(48,49,'/dashboard/blocks/permissions','1',1),(49,50,'/dashboard/blocks/stacks/list','1',1),(50,51,'/dashboard/blocks/types','1',1),(51,52,'/dashboard/extend','1',1),(52,53,'/dashboard/news','1',1),(53,54,'/dashboard/extend/install','1',1),(54,55,'/dashboard/extend/update','1',1),(55,56,'/dashboard/extend/connect','1',1),(56,57,'/dashboard/extend/themes','1',1),(57,58,'/dashboard/extend/addons','1',1),(58,59,'/dashboard/system','1',1),(59,60,'/dashboard/system/basics','1',1),(60,61,'/dashboard/system/basics/name','1',1),(61,62,'/dashboard/system/basics/accessibility','1',1),(62,63,'/dashboard/system/basics/social','1',1),(63,64,'/dashboard/system/basics/icons','1',1),(64,65,'/dashboard/system/basics/editor','1',1),(65,66,'/dashboard/system/basics/multilingual','1',1),(66,67,'/dashboard/system/basics/timezone','1',1),(67,68,'/dashboard/system/multilingual','1',1),(68,69,'/dashboard/system/multilingual/setup','1',1),(69,70,'/dashboard/system/multilingual/copy','1',1),(70,71,'/dashboard/system/multilingual/page_report','1',1),(71,72,'/dashboard/system/multilingual/translate_interface','1',1),(72,73,'/dashboard/system/seo','1',1),(73,74,'/dashboard/system/seo/urls','1',1),(74,75,'/dashboard/system/seo/bulk','1',1),(75,76,'/dashboard/system/seo/codes','1',1),(76,77,'/dashboard/system/seo/excluded','1',1),(77,78,'/dashboard/system/seo/searchindex','1',1),(78,79,'/dashboard/system/files','1',1),(79,80,'/dashboard/system/files/permissions','1',1),(80,81,'/dashboard/system/files/filetypes','1',1),(81,82,'/dashboard/system/files/thumbnails','1',1),(82,83,'/dashboard/system/files/storage','1',1),(83,84,'/dashboard/system/optimization','1',1),(84,85,'/dashboard/system/optimization/cache','1',1),(85,86,'/dashboard/system/optimization/clearcache','1',1),(86,87,'/dashboard/system/optimization/jobs','1',1),(87,88,'/dashboard/system/optimization/query_log','1',1),(88,89,'/dashboard/system/permissions','1',1),(89,90,'/dashboard/system/permissions/site','1',1),(90,91,'/dashboard/system/permissions/tasks','1',1),(91,92,'/dashboard/system/permissions/users','1',1),(92,93,'/dashboard/system/permissions/advanced','1',1),(93,94,'/dashboard/system/permissions/blacklist','1',1),(94,95,'/dashboard/system/permissions/captcha','1',1),(95,96,'/dashboard/system/permissions/antispam','1',1),(96,97,'/dashboard/system/permissions/maintenance','1',1),(97,98,'/dashboard/system/registration','1',1),(98,99,'/dashboard/system/registration/postlogin','1',1),(99,100,'/dashboard/system/registration/profiles','1',1),(100,101,'/dashboard/system/registration/open','1',1),(101,102,'/dashboard/system/registration/authentication','1',1),(102,103,'/dashboard/system/mail','1',1),(103,104,'/dashboard/system/mail/method','1',1),(104,105,'/dashboard/system/mail/method/test','1',1),(105,106,'/dashboard/system/mail/importers','1',1),(106,107,'/dashboard/system/conversations','1',1),(107,108,'/dashboard/system/conversations/settings','1',1),(108,109,'/dashboard/system/conversations/points','1',1),(109,110,'/dashboard/system/conversations/bannedwords','1',1),(110,111,'/dashboard/system/conversations/permissions','1',1),(111,112,'/dashboard/system/attributes','1',1),(112,113,'/dashboard/system/attributes/sets','1',1),(113,114,'/dashboard/system/attributes/types','1',1),(114,115,'/dashboard/system/attributes/topics','1',1),(115,116,'/dashboard/system/attributes/topics/add','1',1),(116,117,'/dashboard/system/environment','1',1),(117,118,'/dashboard/system/environment/info','1',1),(118,119,'/dashboard/system/environment/debug','1',1),(119,120,'/dashboard/system/environment/logging','1',1),(120,121,'/dashboard/system/environment/proxy','1',1),(121,122,'/dashboard/system/environment/entities','1',1),(122,123,'/dashboard/system/backup','1',1),(123,124,'/dashboard/system/backup/backup','1',1),(124,125,'/dashboard/system/backup/update','1',1),(125,126,'/dashboard/welcome','1',1),(126,127,'/dashboard/home','1',1),(127,128,'/!drafts','1',1),(128,129,'/!trash','1',1),(129,130,'/!stacks','1',1),(130,131,'/login','1',1),(131,132,'/register','1',1),(132,133,'/account','1',1),(133,134,'/account/edit_profile','1',1),(134,135,'/account/avatar','1',1),(135,136,'/account/messages','1',1),(136,137,'/account/messages/inbox','1',1),(137,138,'/members','1',1),(138,139,'/members/profile','1',1),(139,140,'/members/directory','1',1),(140,141,'/page_not_found','1',1),(141,142,'/page_forbidden','1',1),(142,143,'/download_file','1',1),(143,144,'/!stacks/footer-contact','1',1),(144,145,'/!stacks/footer-legal','1',1),(145,146,'/!stacks/footer-navigation','1',1),(146,147,'/!stacks/footer-site-title','1',1),(147,148,'/!stacks/footer-social','1',1),(148,149,'/!stacks/header-navigation','1',1),(149,150,'/!stacks/header-search','1',1),(150,151,'/!stacks/header-site-title','1',1),(152,155,'/project','1',1),(153,156,'/team','1',1),(154,158,'/service','1',1),(155,159,'/search','1',1),(156,160,'/contact','1',1),(157,161,'/blank-page','1',1),(158,163,'/project/project-title','1',1),(159,164,'/project/project-title-2','1',1),(160,165,'/project/project-title-3','1',1),(161,166,'/project/project-title-4','1',1),(162,167,'/project/project-title-5','1',1),(163,168,'/project/project-title-6','1',1),(164,170,'/service/support','1',1),(165,171,'/price','1',1),(166,172,'/flow','1',1),(167,173,'/team/about','1',1),(168,174,'/team/careers','1',1),(169,175,'/team/faq','1',1),(170,177,'/team/careers/web-developer','1',1),(171,178,'/team/careers/sales-associate','1',1),(172,182,'/!drafts/182','1',1),(173,183,'/!drafts/183','1',1),(178,153,'/about','1',0),(179,186,'/service/design','1',1),(180,188,'/service/responsive','1',1),(181,189,'/!drafts/189','1',1);
/*!40000 ALTER TABLE `PagePaths` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionAssignments`
--

DROP TABLE IF EXISTS `PagePermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`pkID`,`paID`),
  KEY `paID` (`paID`,`pkID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionAssignments`
--

LOCK TABLES `PagePermissionAssignments` WRITE;
/*!40000 ALTER TABLE `PagePermissionAssignments` DISABLE KEYS */;
INSERT INTO `PagePermissionAssignments` VALUES (1,1,49),(1,2,50),(1,3,51),(1,4,52),(1,5,53),(1,6,54),(1,7,55),(1,8,57),(1,9,58),(1,10,59),(1,11,60),(1,12,61),(1,13,62),(1,14,63),(1,15,64),(1,16,65),(1,17,66),(1,18,56),(2,1,69),(128,1,70),(128,2,87),(128,3,72),(128,4,73),(128,5,88),(128,6,89),(128,7,76),(128,8,77),(128,9,90),(128,10,91),(128,11,80),(128,12,92),(128,13,93),(128,14,94),(128,15,84),(128,16,85),(128,17,86),(131,1,67),(132,1,68);
/*!40000 ALTER TABLE `PagePermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionPageTypeAccessList`
--

DROP TABLE IF EXISTS `PagePermissionPageTypeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionPageTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `externalLink` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionPageTypeAccessList`
--

LOCK TABLES `PagePermissionPageTypeAccessList` WRITE;
/*!40000 ALTER TABLE `PagePermissionPageTypeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionPageTypeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionPageTypeAccessListCustom`
--

DROP TABLE IF EXISTS `PagePermissionPageTypeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionPageTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`ptID`),
  KEY `peID` (`peID`),
  KEY `ptID` (`ptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionPageTypeAccessListCustom`
--

LOCK TABLES `PagePermissionPageTypeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `PagePermissionPageTypeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionPageTypeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionPropertyAccessList`
--

DROP TABLE IF EXISTS `PagePermissionPropertyAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionPropertyAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `name` tinyint(1) DEFAULT '0',
  `publicDateTime` tinyint(1) DEFAULT '0',
  `uID` tinyint(1) DEFAULT '0',
  `description` tinyint(1) DEFAULT '0',
  `paths` tinyint(1) DEFAULT '0',
  `attributePermission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionPropertyAccessList`
--

LOCK TABLES `PagePermissionPropertyAccessList` WRITE;
/*!40000 ALTER TABLE `PagePermissionPropertyAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionPropertyAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionPropertyAttributeAccessListCustom`
--

DROP TABLE IF EXISTS `PagePermissionPropertyAttributeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionPropertyAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`),
  KEY `peID` (`peID`),
  KEY `akID` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionPropertyAttributeAccessListCustom`
--

LOCK TABLES `PagePermissionPropertyAttributeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `PagePermissionPropertyAttributeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionPropertyAttributeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionThemeAccessList`
--

DROP TABLE IF EXISTS `PagePermissionThemeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionThemeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionThemeAccessList`
--

LOCK TABLES `PagePermissionThemeAccessList` WRITE;
/*!40000 ALTER TABLE `PagePermissionThemeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionThemeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionThemeAccessListCustom`
--

DROP TABLE IF EXISTS `PagePermissionThemeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionThemeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `pThemeID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`pThemeID`),
  KEY `peID` (`peID`),
  KEY `pThemeID` (`pThemeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionThemeAccessListCustom`
--

LOCK TABLES `PagePermissionThemeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `PagePermissionThemeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionThemeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageSearchIndex`
--

DROP TABLE IF EXISTS `PageSearchIndex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageSearchIndex` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci,
  `cName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cDescription` text COLLATE utf8_unicode_ci,
  `cPath` text COLLATE utf8_unicode_ci,
  `cDatePublic` datetime DEFAULT NULL,
  `cDateLastIndexed` datetime DEFAULT NULL,
  `cDateLastSitemapped` datetime DEFAULT NULL,
  `cRequiresReindex` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`cID`),
  KEY `cDateLastIndexed` (`cDateLastIndexed`),
  KEY `cDateLastSitemapped` (`cDateLastSitemapped`),
  KEY `cRequiresReindex` (`cRequiresReindex`),
  FULLTEXT KEY `cName` (`cName`),
  FULLTEXT KEY `cDescription` (`cDescription`),
  FULLTEXT KEY `content` (`content`),
  FULLTEXT KEY `content2` (`cName`,`cDescription`,`content`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageSearchIndex`
--

LOCK TABLES `PageSearchIndex` WRITE;
/*!40000 ALTER TABLE `PageSearchIndex` DISABLE KEYS */;
INSERT INTO `PageSearchIndex` VALUES (2,'','Dashboard','','/dashboard','2017-06-26 14:58:32','2017-06-26 14:58:42',NULL,0),(3,'','Sitemap','Whole world at a glance.','/dashboard/sitemap','2017-06-26 14:58:33','2017-06-26 14:58:42',NULL,0),(4,'','Full Sitemap','','/dashboard/sitemap/full','2017-06-26 14:58:33','2017-06-26 14:58:42',NULL,0),(5,'','Flat View','','/dashboard/sitemap/explore','2017-06-26 14:58:33','2017-06-26 14:58:42',NULL,0),(6,'','Page Search','','/dashboard/sitemap/search','2017-06-26 14:58:33','2017-06-26 14:58:42',NULL,0),(8,'','File Manager','','/dashboard/files/search','2017-06-26 14:58:33','2017-06-26 14:58:42',NULL,0),(9,'','Attributes','','/dashboard/files/attributes','2017-06-26 14:58:33','2017-06-26 14:58:42',NULL,0),(10,'','File Sets','','/dashboard/files/sets','2017-06-26 14:58:33','2017-06-26 14:58:42',NULL,0),(11,'','Add File Set','','/dashboard/files/add_set','2017-06-26 14:58:33','2017-06-26 14:58:42',NULL,0),(12,'','Members','Add and manage the user accounts and groups on your website.','/dashboard/users','2017-06-26 14:58:33','2017-06-26 14:58:42',NULL,0),(13,'','Search Users','','/dashboard/users/search','2017-06-26 14:58:33','2017-06-26 14:58:42',NULL,0),(14,'','User Groups','','/dashboard/users/groups','2017-06-26 14:58:33','2017-06-26 14:58:42',NULL,0),(15,'','Attributes','','/dashboard/users/attributes','2017-06-26 14:58:33','2017-06-26 14:58:42',NULL,0),(16,'','Add User','','/dashboard/users/add','2017-06-26 14:58:34','2017-06-26 14:58:42',NULL,0),(17,'','Add Group','','/dashboard/users/add_group','2017-06-26 14:58:34','2017-06-26 14:58:43',NULL,0),(19,'','Group Sets','','/dashboard/users/group_sets','2017-06-26 14:58:34','2017-06-26 14:58:43',NULL,0),(20,'','Community Points',NULL,'/dashboard/users/points','2017-06-26 14:58:34','2017-06-26 14:58:43',NULL,0),(22,'','Actions',NULL,'/dashboard/users/points/actions','2017-06-26 14:58:34','2017-06-26 14:58:43',NULL,0),(23,'','Reports','Get data from forms and logs.','/dashboard/reports','2017-06-26 14:58:34','2017-06-26 14:58:43',NULL,0),(24,'','Form Results','Get submission data.','/dashboard/reports/forms','2017-06-26 14:58:34','2017-06-26 14:58:43',NULL,0),(25,'','Surveys','','/dashboard/reports/surveys','2017-06-26 14:58:34','2017-06-26 14:58:43',NULL,0),(26,'','Logs','','/dashboard/reports/logs','2017-06-26 14:58:34','2017-06-26 14:58:43',NULL,0),(28,'','Themes','Reskin your site.','/dashboard/pages/themes','2017-06-26 14:58:34','2017-06-26 14:58:43',NULL,0),(29,'','Inspect','','/dashboard/pages/themes/inspect','2017-06-26 14:58:34','2017-06-26 14:58:43',NULL,0),(31,'','Organize Page Type Order','','/dashboard/pages/types/organize','2017-06-26 14:58:34','2017-06-26 14:58:43',NULL,0),(32,'','Add Page Type','','/dashboard/pages/types/add','2017-06-26 14:58:34','2017-06-26 14:58:43',NULL,0),(33,'','Compose Form','','/dashboard/pages/types/form','2017-06-26 14:58:35','2017-06-26 14:58:43',NULL,0),(34,'','Defaults and Output','','/dashboard/pages/types/output','2017-06-26 14:58:35','2017-06-26 14:58:43',NULL,0),(35,'','Page Type Attributes','','/dashboard/pages/types/attributes','2017-06-26 14:58:35','2017-06-26 14:58:43',NULL,0),(36,'','Page Type Permissions','','/dashboard/pages/types/permissions','2017-06-26 14:58:35','2017-06-26 14:58:43',NULL,0),(38,'','Add Page Template','Add page templates to your site.','/dashboard/pages/templates/add','2017-06-26 14:58:35','2017-06-26 14:58:43',NULL,0),(39,'','Attributes','','/dashboard/pages/attributes','2017-06-26 14:58:35','2017-06-26 14:58:43',NULL,0),(40,'','Single Pages','','/dashboard/pages/single','2017-06-26 14:58:35','2017-06-26 14:58:43',NULL,0),(41,'','RSS Feeds','','/dashboard/pages/feeds','2017-06-26 14:58:35','2017-06-26 14:58:43',NULL,0),(43,'','Messages','','/dashboard/conversations/messages','2017-06-26 14:58:35','2017-06-26 14:58:43',NULL,0),(44,'','Workflow','','/dashboard/workflow','2017-06-26 14:58:35','2017-06-26 14:58:43',NULL,0),(48,'','Stacks','Share content across your site.','/dashboard/blocks/stacks','2017-06-26 14:58:35','2017-06-26 14:58:43',NULL,0),(50,'','Stack List','','/dashboard/blocks/stacks/list','2017-06-26 14:58:36','2017-06-26 14:58:43',NULL,0),(51,'','Block Types','Manage the installed block types in your site.','/dashboard/blocks/types','2017-06-26 14:58:36','2017-06-26 14:58:43',NULL,0),(52,'','Extend concrete5','','/dashboard/extend','2017-06-26 14:58:36','2017-06-26 14:58:43',NULL,0),(53,'','Dashboard','','/dashboard/news','2017-06-26 14:58:36','2017-06-26 14:58:43',NULL,0),(54,'','Add Functionality','Install add-ons & themes.','/dashboard/extend/install','2017-06-26 14:58:36','2017-06-26 14:58:43',NULL,0),(55,'','Update Add-Ons','Update your installed packages.','/dashboard/extend/update','2017-06-26 14:58:36','2017-06-26 14:58:43',NULL,0),(56,'','Connect to the Community','Connect to the concrete5 community.','/dashboard/extend/connect','2017-06-26 14:58:36','2017-06-26 14:58:43',NULL,0),(57,'','Get More Themes','Download themes from concrete5.org.','/dashboard/extend/themes','2017-06-26 14:58:36','2017-06-26 14:58:44',NULL,0),(58,'','Get More Add-Ons','Download add-ons from concrete5.org.','/dashboard/extend/addons','2017-06-26 14:58:36','2017-06-26 14:58:44',NULL,0),(59,'','System & Settings','Secure and setup your site.','/dashboard/system','2017-06-26 14:58:36','2017-06-26 14:58:44',NULL,0),(61,'','Site Name','','/dashboard/system/basics/name','2017-06-26 14:58:36','2017-06-26 14:58:44',NULL,0),(62,'','Accessibility','','/dashboard/system/basics/accessibility','2017-06-26 14:58:36','2017-06-26 14:58:44',NULL,0),(63,'','Social Links','','/dashboard/system/basics/social','2017-06-26 14:58:36','2017-06-26 14:58:44',NULL,0),(64,'','Bookmark Icons','Bookmark icon and mobile home screen icon setup.','/dashboard/system/basics/icons','2017-06-26 14:58:36','2017-06-26 14:58:44',NULL,0),(65,'','Rich Text Editor','','/dashboard/system/basics/editor','2017-06-26 14:58:37','2017-06-26 14:58:44',NULL,0),(66,'','Languages','','/dashboard/system/basics/multilingual','2017-06-26 14:58:37','2017-06-26 14:58:44',NULL,0),(67,'','Time Zone','','/dashboard/system/basics/timezone','2017-06-26 14:58:37','2017-06-26 14:58:44',NULL,0),(68,'','Multilingual','Run your site in multiple languages.','/dashboard/system/multilingual','2017-06-26 14:58:37','2017-06-26 14:58:44',NULL,0),(74,'','URLs and Redirection','','/dashboard/system/seo/urls','2017-06-26 14:58:37','2017-06-26 14:58:44',NULL,0),(75,'','Bulk SEO Updater','','/dashboard/system/seo/bulk','2017-06-26 14:58:37','2017-06-26 14:58:44',NULL,0),(76,'','Tracking Codes','','/dashboard/system/seo/codes','2017-06-26 14:58:37','2017-06-26 14:58:44',NULL,0),(77,'','Excluded URL Word List','','/dashboard/system/seo/excluded','2017-06-26 14:58:37','2017-06-26 14:58:44',NULL,0),(78,'','Search Index','','/dashboard/system/seo/searchindex','2017-06-26 14:58:37','2017-06-26 14:58:44',NULL,0),(80,'','File Manager Permissions','','/dashboard/system/files/permissions','2017-06-26 14:58:38','2017-06-26 14:58:44',NULL,0),(81,'','Allowed File Types','','/dashboard/system/files/filetypes','2017-06-26 14:58:38','2017-06-26 14:58:44',NULL,0),(82,'','Thumbnails','','/dashboard/system/files/thumbnails','2017-06-26 14:58:38','2017-06-26 14:58:44',NULL,0),(83,'','File Storage Locations','','/dashboard/system/files/storage','2017-06-26 14:58:38','2017-06-26 14:58:44',NULL,0),(85,'','Cache & Speed Settings','','/dashboard/system/optimization/cache','2017-06-26 14:58:38','2017-06-26 14:58:44',NULL,0),(86,'','Clear Cache','','/dashboard/system/optimization/clearcache','2017-06-26 14:58:38','2017-06-26 14:58:44',NULL,0),(87,'','Automated Jobs','','/dashboard/system/optimization/jobs','2017-06-26 14:58:38','2017-06-26 14:58:44',NULL,0),(88,'','Database Query Log','','/dashboard/system/optimization/query_log','2017-06-26 14:58:38','2017-06-26 14:58:44',NULL,0),(90,'','Site Access','','/dashboard/system/permissions/site','2017-06-26 14:58:38','2017-06-26 14:58:44',NULL,0),(91,'','Task Permissions','','/dashboard/system/permissions/tasks','2017-06-26 14:58:38','2017-06-26 14:58:44',NULL,0),(94,'','IP Blacklist','','/dashboard/system/permissions/blacklist','2017-06-26 14:58:39','2017-06-26 14:58:44',NULL,0),(95,'','Captcha Setup','','/dashboard/system/permissions/captcha','2017-06-26 14:58:39','2017-06-26 14:58:44',NULL,0),(96,'','Spam Control','','/dashboard/system/permissions/antispam','2017-06-26 14:58:39','2017-06-26 14:58:45',NULL,0),(97,'','Maintenance Mode','','/dashboard/system/permissions/maintenance','2017-06-26 14:58:39','2017-06-26 14:58:45',NULL,0),(99,'','Login Destination','','/dashboard/system/registration/postlogin','2017-06-26 14:58:39','2017-06-26 14:58:45',NULL,0),(100,'','Public Profiles','','/dashboard/system/registration/profiles','2017-06-26 14:58:39','2017-06-26 14:58:45',NULL,0),(101,'','Public Registration','','/dashboard/system/registration/open','2017-06-26 14:58:39','2017-06-26 14:58:45',NULL,0),(102,'','Authentication Types','','/dashboard/system/registration/authentication','2017-06-26 14:58:39','2017-06-26 14:58:45',NULL,0),(103,'','Email','Control how your site send and processes mail.','/dashboard/system/mail','2017-06-26 14:58:39','2017-06-26 14:58:45',NULL,0),(104,'','SMTP Method','','/dashboard/system/mail/method','2017-06-26 14:58:39','2017-06-26 14:58:45',NULL,0),(105,'','Test Mail Settings','','/dashboard/system/mail/method/test','2017-06-26 14:58:39','2017-06-26 14:58:45',NULL,0),(106,'','Email Importers','','/dashboard/system/mail/importers','2017-06-26 14:58:39','2017-06-26 14:58:45',NULL,0),(107,'','Conversations','Manage your conversations settings','/dashboard/system/conversations','2017-06-26 14:58:40','2017-06-26 14:58:45',NULL,0),(108,'','Settings','','/dashboard/system/conversations/settings','2017-06-26 14:58:40','2017-06-26 14:58:45',NULL,0),(109,'','Community Points','','/dashboard/system/conversations/points','2017-06-26 14:58:40','2017-06-26 14:58:45',NULL,0),(110,'','Banned Words','','/dashboard/system/conversations/bannedwords','2017-06-26 14:58:40','2017-06-26 14:58:45',NULL,0),(112,'','Attributes','Setup attributes for pages, users, files and more.','/dashboard/system/attributes','2017-06-26 14:58:40','2017-06-26 14:58:45',NULL,0),(113,'','Sets','Group attributes into sets for easier organization','/dashboard/system/attributes/sets','2017-06-26 14:58:40','2017-06-26 14:58:45',NULL,0),(114,'','Types','Choose which attribute types are available for different items.','/dashboard/system/attributes/types','2017-06-26 14:58:40','2017-06-26 14:58:45',NULL,0),(115,'','Topics','','/dashboard/system/attributes/topics','2017-06-26 14:58:40','2017-06-26 14:58:45',NULL,0),(117,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(118,'','Environment Information','','/dashboard/system/environment/info','2017-06-26 14:58:40','2017-06-26 14:58:45',NULL,0),(119,'','Debug Settings','','/dashboard/system/environment/debug','2017-06-26 14:58:40','2017-06-26 14:58:45',NULL,0),(120,'','Logging Settings','','/dashboard/system/environment/logging','2017-06-26 14:58:40','2017-06-26 14:58:45',NULL,0),(121,'','Proxy Server','','/dashboard/system/environment/proxy','2017-06-26 14:58:40','2017-06-26 14:58:45',NULL,0),(122,'','Database Entities','','/dashboard/system/environment/entities','2017-06-26 14:58:41','2017-06-26 14:58:45',NULL,0),(123,'','Backup & Restore','Backup or restore your website.','/dashboard/system/backup','2017-06-26 14:58:41','2017-06-26 14:58:45',NULL,0),(125,'','Update concrete5','','/dashboard/system/backup/update','2017-06-26 14:58:41','2017-06-26 14:58:45',NULL,0),(126,'                                        ','Welcome to concrete5','Learn about how to use concrete5, how to develop for concrete5, and get general help.','/dashboard/welcome','2017-06-26 14:58:42','2017-06-26 14:58:46',NULL,0),(127,'','Customize Dashboard Home','','/dashboard/home','2017-06-26 14:58:42','2017-06-26 14:58:46',NULL,0),(128,'','Drafts','','/!drafts','2017-06-26 14:58:47','2017-06-26 14:58:50',NULL,0),(129,'','Trash','','/!trash','2017-06-26 14:58:48','2017-06-26 14:58:50',NULL,0),(130,'','Stacks','','/!stacks','2017-06-26 14:58:48','2017-06-26 14:58:50',NULL,0),(133,'','My Account','','/account','2017-06-26 14:58:49','2017-06-26 14:58:50',NULL,0),(1,'Stand Out on the Web  Share your business with an impressive, yet minimal presentation. Let your customers understand your web presence through elegance and clarity.  A Simple Image Slider  This image slider can have any content that you want in it.   Easy to Edit Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Pixel Perfect Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Media Rich Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Presenting your Business has never been so easy Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.   Latest Blog Post Now Open For Business    We specialize in making your concepts a reality.          Sed cursus facilisis dignissim. Aliquam rhoncus enim et pellentesque varius. Nulla sodales nibh lorem, sit amet imperdiet arcu commodo sit amet. Mauris sed scelerisque nisl. Ut auctor ipsum tellus, vel viverra massa elementum sit amet.          Sed adipiscing tempus sem eu molestie. Aenean laoreet pretium ante vitae ultrices. Aenean eu gravida magna, vel aliquet magna. In auctor convallis gravida.            Contact Us Today    Customizable footer area with accent class.  ','Home','',NULL,'2017-06-26 14:57:53','2017-06-26 15:47:12',NULL,0),(153,'Our Expertise Quality Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sodales non leo id aliquet. Design Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sodales non leo id aliquet. Development Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sodales non leo id aliquet. Security Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sodales non leo id aliquet. Awesome Features Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed.  Guide Books Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna. Etiam aliquam, justo et varius eleifend, dui lectus egestas nunc, vel malesuada nisl purus nec metus.  Admin Accounts Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna. Etiam aliquam, justo et varius eleifend, dui lectus egestas nunc, vel malesuada nisl purus nec metus.   Support Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed.  Additional Options Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna.   Etiam aliquam, justo et varius eleifend, dui lectus egestas nunc, vel malesuada nisl purus nec metus. In gravida turpis a pharetra commodo. Donec non turpis vulputate, faucibus metus a, consectetur nunc. Morbi tortor nisi, hendrerit sed laoreet eget, fermentum et justo. Suspendisse potenti.  What Clients Are Saying About Us  Franz Maruna\nCEO & Founder\nconcrete5\nCurabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. John Doe\nMarketing Directory\nCompanyCo\nCurabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Andrew Embler\nCTO & Founder\nconcrete5\nCurabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Jane Doe\nIT Manager\nCompanyCo\nCurabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. ','About','','/services','2017-06-26 14:59:05','2017-06-26 16:23:01',NULL,0),(155,'','Project','','/project','2017-06-26 14:59:05','2017-06-26 16:28:09',NULL,0),(163,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tempus nibh a laoreet cursus. Phasellus malesuada vulputate bibendum. Ut vitae justo nisi. Sed consectetur vestibulum tortor, in bibendum diam lacinia vitae. Nullam volutpat risus quis orci consectetur adipiscing. In commodo vulputate arcu sit amet ornare. Vivamus ut iaculis velit. Pellentesque euismod lacus sed accumsan luctus. Suspendisse urna felis, lacinia vel tempor id, ultricies rutrum nisl. Nunc ultrices nulla et bibendum molestie. Phasellus porttitor sit amet libero vel fermentum. Sed sapien risus, eleifend vel hendrerit eu, porta vel tellus. Duis faucibus odio et magna varius, quis accumsan tellus vestibulum. Nam nunc nulla, convallis at elementum pharetra, adipiscing quis enim. Donec feugiat porttitor dolor, nec porttitor mi auctor eget. Fusce iaculis varius diam non dictum. Fusce elementum a nunc vel tincidunt. Morbi nec est elementum, vehicula odio nec, lobortis lacus. Nulla ultricies vitae nunc ut lacinia. Proin mattis felis sem, eu consectetur arcu varius et. Duis at lectus eu lorem elementum aliquet nec in elit. Vestibulum non metus ac risus adipiscing pellentesque sed sit amet lorem. Donec viverra, metus in varius pulvinar, augue nunc accumsan eros, a pulvinar est elit vitae nulla.  Duis non leo in enim laoreet pretium. Nullam vitae neque nec libero pharetra tempor at faucibus lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed imperdiet convallis arcu. Nam sollicitudin sollicitudin lacus non dictum. Aliquam erat volutpat. Nulla sapien quam, consequat non dui ut, eleifend sodales orci. Praesent quis lorem accumsan, volutpat lectus a, sollicitudin erat. Donec faucibus mi in sapien volutpat, ac auctor lorem mollis. Proin eget turpis non lacus bibendum porta non ac justo. Aliquam aliquam viverra lorem ac rutrum. In et sapien sit amet diam vestibulum cursus ut tristique tellus.  Ut in purus mi. Etiam ac aliquet ipsum. Pellentesque faucibus diam dui. Morbi a semper orci. Ut nec malesuada urna. Vestibulum aliquet ante ac lacus dictum, sit amet pulvinar leo laoreet. Maecenas ut est commodo, commodo quam nec, dignissim est. Quisque rutrum molestie nunc, sed mollis nulla volutpat et. Donec dignissim ornare augue eu aliquam. Aliquam in tincidunt velit. In at fermentum mauris, ut accumsan nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus.  Integer ac nulla at nisi sodales ullamcorper id in justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam pharetra elit odio, ac mattis turpis consequat ac. Pellentesque tincidunt sed enim nec auctor. Quisque varius, felis a hendrerit faucibus, nunc lorem varius nibh, vel dignissim velit dolor ut elit. Mauris ut vulputate neque. Donec at est vitae massa egestas fringilla. Praesent a tristique nibh. Nunc blandit dui risus, quis rhoncus nisi consectetur vel.  ','Project Title','Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing.','/portfolio/project-title','2014-08-06 15:30:00','2017-06-26 14:59:10',NULL,0),(164,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tempus nibh a laoreet cursus. Phasellus malesuada vulputate bibendum. Ut vitae justo nisi. Sed consectetur vestibulum tortor, in bibendum diam lacinia vitae. Nullam volutpat risus quis orci consectetur adipiscing. In commodo vulputate arcu sit amet ornare. Vivamus ut iaculis velit. Pellentesque euismod lacus sed accumsan luctus. Suspendisse urna felis, lacinia vel tempor id, ultricies rutrum nisl. Nunc ultrices nulla et bibendum molestie. Phasellus porttitor sit amet libero vel fermentum. Sed sapien risus, eleifend vel hendrerit eu, porta vel tellus. Duis faucibus odio et magna varius, quis accumsan tellus vestibulum. Nam nunc nulla, convallis at elementum pharetra, adipiscing quis enim. Donec feugiat porttitor dolor, nec porttitor mi auctor eget. Fusce iaculis varius diam non dictum. Fusce elementum a nunc vel tincidunt. Morbi nec est elementum, vehicula odio nec, lobortis lacus. Nulla ultricies vitae nunc ut lacinia. Proin mattis felis sem, eu consectetur arcu varius et. Duis at lectus eu lorem elementum aliquet nec in elit. Vestibulum non metus ac risus adipiscing pellentesque sed sit amet lorem. Donec viverra, metus in varius pulvinar, augue nunc accumsan eros, a pulvinar est elit vitae nulla.  Duis non leo in enim laoreet pretium. Nullam vitae neque nec libero pharetra tempor at faucibus lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed imperdiet convallis arcu. Nam sollicitudin sollicitudin lacus non dictum. Aliquam erat volutpat. Nulla sapien quam, consequat non dui ut, eleifend sodales orci. Praesent quis lorem accumsan, volutpat lectus a, sollicitudin erat. Donec faucibus mi in sapien volutpat, ac auctor lorem mollis. Proin eget turpis non lacus bibendum porta non ac justo. Aliquam aliquam viverra lorem ac rutrum. In et sapien sit amet diam vestibulum cursus ut tristique tellus.  Ut in purus mi. Etiam ac aliquet ipsum. Pellentesque faucibus diam dui. Morbi a semper orci. Ut nec malesuada urna. Vestibulum aliquet ante ac lacus dictum, sit amet pulvinar leo laoreet. Maecenas ut est commodo, commodo quam nec, dignissim est. Quisque rutrum molestie nunc, sed mollis nulla volutpat et. Donec dignissim ornare augue eu aliquam. Aliquam in tincidunt velit. In at fermentum mauris, ut accumsan nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus.  Integer ac nulla at nisi sodales ullamcorper id in justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam pharetra elit odio, ac mattis turpis consequat ac. Pellentesque tincidunt sed enim nec auctor. Quisque varius, felis a hendrerit faucibus, nunc lorem varius nibh, vel dignissim velit dolor ut elit. Mauris ut vulputate neque. Donec at est vitae massa egestas fringilla. Praesent a tristique nibh. Nunc blandit dui risus, quis rhoncus nisi consectetur vel.  ','Project Title 2','Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing.','/portfolio/project-title-2','2014-08-06 15:20:00','2017-06-26 14:59:11',NULL,0),(165,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tempus nibh a laoreet cursus. Phasellus malesuada vulputate bibendum. Ut vitae justo nisi. Sed consectetur vestibulum tortor, in bibendum diam lacinia vitae. Nullam volutpat risus quis orci consectetur adipiscing. In commodo vulputate arcu sit amet ornare. Vivamus ut iaculis velit. Pellentesque euismod lacus sed accumsan luctus. Suspendisse urna felis, lacinia vel tempor id, ultricies rutrum nisl. Nunc ultrices nulla et bibendum molestie. Phasellus porttitor sit amet libero vel fermentum. Sed sapien risus, eleifend vel hendrerit eu, porta vel tellus. Duis faucibus odio et magna varius, quis accumsan tellus vestibulum. Nam nunc nulla, convallis at elementum pharetra, adipiscing quis enim. Donec feugiat porttitor dolor, nec porttitor mi auctor eget. Fusce iaculis varius diam non dictum. Fusce elementum a nunc vel tincidunt. Morbi nec est elementum, vehicula odio nec, lobortis lacus. Nulla ultricies vitae nunc ut lacinia. Proin mattis felis sem, eu consectetur arcu varius et. Duis at lectus eu lorem elementum aliquet nec in elit. Vestibulum non metus ac risus adipiscing pellentesque sed sit amet lorem. Donec viverra, metus in varius pulvinar, augue nunc accumsan eros, a pulvinar est elit vitae nulla.  Duis non leo in enim laoreet pretium. Nullam vitae neque nec libero pharetra tempor at faucibus lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed imperdiet convallis arcu. Nam sollicitudin sollicitudin lacus non dictum. Aliquam erat volutpat. Nulla sapien quam, consequat non dui ut, eleifend sodales orci. Praesent quis lorem accumsan, volutpat lectus a, sollicitudin erat. Donec faucibus mi in sapien volutpat, ac auctor lorem mollis. Proin eget turpis non lacus bibendum porta non ac justo. Aliquam aliquam viverra lorem ac rutrum. In et sapien sit amet diam vestibulum cursus ut tristique tellus.  Ut in purus mi. Etiam ac aliquet ipsum. Pellentesque faucibus diam dui. Morbi a semper orci. Ut nec malesuada urna. Vestibulum aliquet ante ac lacus dictum, sit amet pulvinar leo laoreet. Maecenas ut est commodo, commodo quam nec, dignissim est. Quisque rutrum molestie nunc, sed mollis nulla volutpat et. Donec dignissim ornare augue eu aliquam. Aliquam in tincidunt velit. In at fermentum mauris, ut accumsan nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus.  Integer ac nulla at nisi sodales ullamcorper id in justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam pharetra elit odio, ac mattis turpis consequat ac. Pellentesque tincidunt sed enim nec auctor. Quisque varius, felis a hendrerit faucibus, nunc lorem varius nibh, vel dignissim velit dolor ut elit. Mauris ut vulputate neque. Donec at est vitae massa egestas fringilla. Praesent a tristique nibh. Nunc blandit dui risus, quis rhoncus nisi consectetur vel.  ','Project Title 3','Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing.','/portfolio/project-title-3','2014-08-06 15:10:00','2017-06-26 14:59:11',NULL,0),(166,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tempus nibh a laoreet cursus. Phasellus malesuada vulputate bibendum. Ut vitae justo nisi. Sed consectetur vestibulum tortor, in bibendum diam lacinia vitae. Nullam volutpat risus quis orci consectetur adipiscing. In commodo vulputate arcu sit amet ornare. Vivamus ut iaculis velit. Pellentesque euismod lacus sed accumsan luctus. Suspendisse urna felis, lacinia vel tempor id, ultricies rutrum nisl. Nunc ultrices nulla et bibendum molestie. Phasellus porttitor sit amet libero vel fermentum. Sed sapien risus, eleifend vel hendrerit eu, porta vel tellus. Duis faucibus odio et magna varius, quis accumsan tellus vestibulum. Nam nunc nulla, convallis at elementum pharetra, adipiscing quis enim. Donec feugiat porttitor dolor, nec porttitor mi auctor eget. Fusce iaculis varius diam non dictum. Fusce elementum a nunc vel tincidunt. Morbi nec est elementum, vehicula odio nec, lobortis lacus. Nulla ultricies vitae nunc ut lacinia. Proin mattis felis sem, eu consectetur arcu varius et. Duis at lectus eu lorem elementum aliquet nec in elit. Vestibulum non metus ac risus adipiscing pellentesque sed sit amet lorem. Donec viverra, metus in varius pulvinar, augue nunc accumsan eros, a pulvinar est elit vitae nulla.  Duis non leo in enim laoreet pretium. Nullam vitae neque nec libero pharetra tempor at faucibus lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed imperdiet convallis arcu. Nam sollicitudin sollicitudin lacus non dictum. Aliquam erat volutpat. Nulla sapien quam, consequat non dui ut, eleifend sodales orci. Praesent quis lorem accumsan, volutpat lectus a, sollicitudin erat. Donec faucibus mi in sapien volutpat, ac auctor lorem mollis. Proin eget turpis non lacus bibendum porta non ac justo. Aliquam aliquam viverra lorem ac rutrum. In et sapien sit amet diam vestibulum cursus ut tristique tellus.  Ut in purus mi. Etiam ac aliquet ipsum. Pellentesque faucibus diam dui. Morbi a semper orci. Ut nec malesuada urna. Vestibulum aliquet ante ac lacus dictum, sit amet pulvinar leo laoreet. Maecenas ut est commodo, commodo quam nec, dignissim est. Quisque rutrum molestie nunc, sed mollis nulla volutpat et. Donec dignissim ornare augue eu aliquam. Aliquam in tincidunt velit. In at fermentum mauris, ut accumsan nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus.  Integer ac nulla at nisi sodales ullamcorper id in justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam pharetra elit odio, ac mattis turpis consequat ac. Pellentesque tincidunt sed enim nec auctor. Quisque varius, felis a hendrerit faucibus, nunc lorem varius nibh, vel dignissim velit dolor ut elit. Mauris ut vulputate neque. Donec at est vitae massa egestas fringilla. Praesent a tristique nibh. Nunc blandit dui risus, quis rhoncus nisi consectetur vel.  ','Project Title 4','Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing.','/portfolio/project-title-4','2014-08-06 15:00:00','2017-06-26 14:59:12',NULL,0),(167,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tempus nibh a laoreet cursus. Phasellus malesuada vulputate bibendum. Ut vitae justo nisi. Sed consectetur vestibulum tortor, in bibendum diam lacinia vitae. Nullam volutpat risus quis orci consectetur adipiscing. In commodo vulputate arcu sit amet ornare. Vivamus ut iaculis velit. Pellentesque euismod lacus sed accumsan luctus. Suspendisse urna felis, lacinia vel tempor id, ultricies rutrum nisl. Nunc ultrices nulla et bibendum molestie. Phasellus porttitor sit amet libero vel fermentum. Sed sapien risus, eleifend vel hendrerit eu, porta vel tellus. Duis faucibus odio et magna varius, quis accumsan tellus vestibulum. Nam nunc nulla, convallis at elementum pharetra, adipiscing quis enim. Donec feugiat porttitor dolor, nec porttitor mi auctor eget. Fusce iaculis varius diam non dictum. Fusce elementum a nunc vel tincidunt. Morbi nec est elementum, vehicula odio nec, lobortis lacus. Nulla ultricies vitae nunc ut lacinia. Proin mattis felis sem, eu consectetur arcu varius et. Duis at lectus eu lorem elementum aliquet nec in elit. Vestibulum non metus ac risus adipiscing pellentesque sed sit amet lorem. Donec viverra, metus in varius pulvinar, augue nunc accumsan eros, a pulvinar est elit vitae nulla.  Duis non leo in enim laoreet pretium. Nullam vitae neque nec libero pharetra tempor at faucibus lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed imperdiet convallis arcu. Nam sollicitudin sollicitudin lacus non dictum. Aliquam erat volutpat. Nulla sapien quam, consequat non dui ut, eleifend sodales orci. Praesent quis lorem accumsan, volutpat lectus a, sollicitudin erat. Donec faucibus mi in sapien volutpat, ac auctor lorem mollis. Proin eget turpis non lacus bibendum porta non ac justo. Aliquam aliquam viverra lorem ac rutrum. In et sapien sit amet diam vestibulum cursus ut tristique tellus.  Ut in purus mi. Etiam ac aliquet ipsum. Pellentesque faucibus diam dui. Morbi a semper orci. Ut nec malesuada urna. Vestibulum aliquet ante ac lacus dictum, sit amet pulvinar leo laoreet. Maecenas ut est commodo, commodo quam nec, dignissim est. Quisque rutrum molestie nunc, sed mollis nulla volutpat et. Donec dignissim ornare augue eu aliquam. Aliquam in tincidunt velit. In at fermentum mauris, ut accumsan nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus.  Integer ac nulla at nisi sodales ullamcorper id in justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam pharetra elit odio, ac mattis turpis consequat ac. Pellentesque tincidunt sed enim nec auctor. Quisque varius, felis a hendrerit faucibus, nunc lorem varius nibh, vel dignissim velit dolor ut elit. Mauris ut vulputate neque. Donec at est vitae massa egestas fringilla. Praesent a tristique nibh. Nunc blandit dui risus, quis rhoncus nisi consectetur vel.  ','Project Title 5','Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing.','/portfolio/project-title-5','2014-08-06 14:30:00','2017-06-26 14:59:12',NULL,0),(168,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tempus nibh a laoreet cursus. Phasellus malesuada vulputate bibendum. Ut vitae justo nisi. Sed consectetur vestibulum tortor, in bibendum diam lacinia vitae. Nullam volutpat risus quis orci consectetur adipiscing. In commodo vulputate arcu sit amet ornare. Vivamus ut iaculis velit. Pellentesque euismod lacus sed accumsan luctus. Suspendisse urna felis, lacinia vel tempor id, ultricies rutrum nisl. Nunc ultrices nulla et bibendum molestie. Phasellus porttitor sit amet libero vel fermentum. Sed sapien risus, eleifend vel hendrerit eu, porta vel tellus. Duis faucibus odio et magna varius, quis accumsan tellus vestibulum. Nam nunc nulla, convallis at elementum pharetra, adipiscing quis enim. Donec feugiat porttitor dolor, nec porttitor mi auctor eget. Fusce iaculis varius diam non dictum. Fusce elementum a nunc vel tincidunt. Morbi nec est elementum, vehicula odio nec, lobortis lacus. Nulla ultricies vitae nunc ut lacinia. Proin mattis felis sem, eu consectetur arcu varius et. Duis at lectus eu lorem elementum aliquet nec in elit. Vestibulum non metus ac risus adipiscing pellentesque sed sit amet lorem. Donec viverra, metus in varius pulvinar, augue nunc accumsan eros, a pulvinar est elit vitae nulla.  Duis non leo in enim laoreet pretium. Nullam vitae neque nec libero pharetra tempor at faucibus lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed imperdiet convallis arcu. Nam sollicitudin sollicitudin lacus non dictum. Aliquam erat volutpat. Nulla sapien quam, consequat non dui ut, eleifend sodales orci. Praesent quis lorem accumsan, volutpat lectus a, sollicitudin erat. Donec faucibus mi in sapien volutpat, ac auctor lorem mollis. Proin eget turpis non lacus bibendum porta non ac justo. Aliquam aliquam viverra lorem ac rutrum. In et sapien sit amet diam vestibulum cursus ut tristique tellus.  Ut in purus mi. Etiam ac aliquet ipsum. Pellentesque faucibus diam dui. Morbi a semper orci. Ut nec malesuada urna. Vestibulum aliquet ante ac lacus dictum, sit amet pulvinar leo laoreet. Maecenas ut est commodo, commodo quam nec, dignissim est. Quisque rutrum molestie nunc, sed mollis nulla volutpat et. Donec dignissim ornare augue eu aliquam. Aliquam in tincidunt velit. In at fermentum mauris, ut accumsan nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus.  Integer ac nulla at nisi sodales ullamcorper id in justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam pharetra elit odio, ac mattis turpis consequat ac. Pellentesque tincidunt sed enim nec auctor. Quisque varius, felis a hendrerit faucibus, nunc lorem varius nibh, vel dignissim velit dolor ut elit. Mauris ut vulputate neque. Donec at est vitae massa egestas fringilla. Praesent a tristique nibh. Nunc blandit dui risus, quis rhoncus nisi consectetur vel.  ','Project Title 6','Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing.','/portfolio/project-title-6','2014-08-06 14:20:00','2017-06-26 14:59:13',NULL,0),(156,'John Smith\nCo-Founder / CEO\n\nCurabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Bob Smith\nCo-Founder / CTO\n\nCurabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. John Smith\nArt Director\n\nCurabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. John Smith\nArt Director\n\nCurabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Bob Smith\nArt Director\n\nCurabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Bob Smith\nArt Director\n\nCurabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Bob Smith\nArt Director\n\nCurabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Bob Smith\nArt Director\n\nCurabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis.                                                      Get in Touch  Sed cursus facilisis dignissim. Aliquam rhoncus enim et pellentesque varius. Nulla sodales nibh lorem, sit amet imperdiet arcu commodo sit amet.    Contact Us  ','Team','','/team','2017-06-26 14:59:05','2017-06-26 14:59:14',NULL,0),(158,'','SERVICE','','/service','2017-06-26 14:59:05','2017-06-27 15:39:01',NULL,0),(170,'Fusce volutpat sodales mauris quis dapibus. Maecenas convallis, libero eu ultrices interdum, leo mauris commodo diam, sed cursus sapien ligula nec leo. Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed. Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna. Etiam aliquam, justo et varius eleifend, dui lectus egestas nunc, vel malesuada nisl purus nec metus. In gravida turpis a pharetra commodo. Donec non turpis vulputate, faucibus metus a, consectetur nunc. Morbi tortor nisi, hendrerit sed laoreet eget, fermentum et justo. Suspendisse potenti.   Heading 2 Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed. Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna. Etiam aliquam, justo et varius eleifend, dui lectus egestas nunc, vel malesuada nisl purus nec metus. In gravida turpis a pharetra commodo. Donec non turpis vulputate, faucibus metus a, consectetur nunc. Morbi tortor nisi, hendrerit sed laoreet eget, fermentum et justo. Suspendisse potenti. Heading 3 Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Quisque dignissim neque a ipsum sodales, mattis aliquam ante dictum. Vestibulum elementum pellentesque tortor ac congue. Mauris vel nibh id metus tincidunt eleifend. In interdum gravida ligula, at venenatis odio fermentum at. Donec dapibus enim lectus, quis venenatis tellus volutpat in. Nullam in velit tortor. Heading 3 Donec blandit lectus nec neque ullamcorper rhoncus. Sed adipiscing tempus sem eu molestie. Aenean laoreet pretium ante vitae ultrices. Aenean eu gravida magna, vel aliquet magna. In auctor convallis gravida. Phasellus est erat, adipiscing nec lobortis quis, eleifend at sem. Curabitur fringilla viverra dolor, in rutrum ipsum rutrum sit amet. Vestibulum feugiat porttitor ipsum vel condimentum. Suspendisse at tempus libero. Sed eu tempor enim. Etiam convallis eleifend rutrum. Donec porta diam quis tellus feugiat dignissim. Cras posuere, massa eget laoreet laoreet, urna libero lobortis dolor, sed consequat elit urna eget massa. Donec aliquet pellentesque consectetur.  ','support','Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Quisque dignissim neque a ipsum sodales, mattis aliquam ante dictum.','/service/support','2014-07-01 12:00:00','2017-06-27 15:41:39',NULL,0),(171,' Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed. Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit.   CMS To the Rescue!  Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna. Etiam aliquam, justo et varius eleifend, dui lectus egestas nunc, vel malesuada nisl purus nec metus. In gravida turpis a pharetra commodo. Donec non turpis vulputate, faucibus metus a, consectetur nunc. Morbi tortor nisi, hendrerit sed laoreet eget, fermentum et justo. Suspendisse potenti.  Learn more at concrete5.org    ','Price','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna.','/price','2014-07-04 15:00:00','2017-06-27 15:46:18',NULL,0),(172,' Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed. Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna. Etiam aliquam, justo et varius eleifend, dui lectus egestas nunc, vel malesuada nisl purus nec metus. In gravida turpis a pharetra commodo. Donec non turpis vulputate, faucibus metus a, consectetur nunc. Morbi tortor nisi, hendrerit sed laoreet eget, fermentum et justo. Suspendisse potenti.  Heading 3  Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Quisque dignissim neque a ipsum sodales, mattis aliquam ante dictum. Vestibulum elementum pellentesque tortor ac congue. Mauris vel nibh id metus tincidunt eleifend. In interdum gravida ligula, at venenatis odio fermentum at. Donec dapibus enim lectus, quis venenatis tellus volutpat in. Nullam in velit tortor.    Look at my beautiful image. Don\'t you to look more?  Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Quisque dignissim neque a ipsum sodales, mattis aliquam ante dictum. Vestibulum elementum pellentesque tortor ac congue. Mauris vel nibh id metus tincidunt eleifend. In interdum gravida ligula, at venenatis odio fermentum at. Donec dapibus enim lectus, quis venenatis tellus volutpat in. Nullam in velit tortor.  ','Flow','Donec blandit lectus nec neque ullamcorper rhoncus. Sed adipiscing tempus sem eu molestie. Aenean laoreet pretium ante vitae ultrices. Aenean eu gravida magna, vel aliquet magna. In auctor convallis gravida. Phasellus est erat.','/flow','2014-08-01 16:30:00','2017-06-27 15:44:07',NULL,0),(159,'','Search','','/search','2017-06-26 14:59:05','2017-06-26 14:59:16',NULL,0),(160,'                                                     Headquarters 1234 SE Street View Suite 301 Portland, OR 98101 HOURS  M-F:  10 AM - 7 PM Sat: Noon - Midnight Sun: Closed                                                       Choosing Us Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Quisque dignissim neque a ipsum sodales, mattis aliquam ante dictum. Vestibulum elementum pellentesque tortor ac congue. Mauris vel nibh id metus tincidunt eleifend. In interdum gravida ligula, at venenatis odio fermentum at. Donec dapibus enim lectus, quis venenatis tellus volutpat in. Nullam in velit tortor.  We would love to hear from you! ','Contact','','/contact','2017-06-26 14:59:05','2017-06-26 14:59:16',NULL,0),(161,' This is my empty content block on my blank page.  ','Blank Page','','/blank-page','2017-06-26 14:59:05','2017-06-26 14:59:16',NULL,0),(173,'                                                     Fusce volutpat sodales mauris quis dapibus. Maecenas convallis, libero eu ultrices interdum.                                                       Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.   Quisque dignissim neque a ipsum sodales, mattis aliquam ante dictum. Vestibulum elementum pellentesque tortor ac congue. Mauris vel nibh id metus tincidunt eleifend.                                                       Heading 1Heading 2Heading 3Heading 4Heading 5Heading 6                                                       Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed. Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna. Etiam aliquam, justo et varius eleifend, dui lectus egestas nunc, vel malesuada nisl purus nec metus. In gravida turpis a pharetra commodo. Donec non turpis vulputate, faucibus metus a, consectetur nunc. Morbi tortor nisi, hendrerit sed laoreet eget, fermentum et justo. Suspendisse potenti.                                                             Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed. Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna. Etiam aliquam, justo et varius eleifend, dui lectus egestas nunc, vel malesuada nisl purus nec metus. In gravida turpis a pharetra commodo. Donec non turpis vulputate, faucibus metus a, consectetur nunc. Morbi tortor nisi, hendrerit sed laoreet eget, fermentum et justo. Suspendisse potenti.                                                       Get in Touch  Sed cursus facilisis dignissim. Aliquam rhoncus enim et pellentesque varius. Nulla sodales nibh lorem, sit amet imperdiet arcu commodo sit amet.    Contact Us  ','About','','/team/about','2017-06-26 14:59:06','2017-06-26 14:59:17',NULL,0),(174,'Work with Us   Welcome Home \n                                                    Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Great Workers \n                                                    Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Amazing Location \n                                                    Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Paid Time Off \n                                                    Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. No Meetings \n                                                    Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Free Drinks \n                                                    Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan.                                                      Open Positions  ','Careers','','/team/careers','2017-06-26 14:59:06','2017-06-26 14:59:18',NULL,0),(177,'                                                       Back to Careers  Department Location Job Information                                                                                               Quisque accumsan leo sit amet neque pretium consectetur. Sed blandit nulla at justo volutpat rhoncus. Sed risus orci, luctus sit amet fringilla faucibus, congue nec dui. Phasellus mattis lobortis magna sed dapibus. Donec sagittis nunc sed accumsan eleifend. Ut porttitor sapien eu nisl volutpat, vitae interdum est mollis. Sed laoreet sit amet elit in eleifend. Sed a tincidunt velit, nec posuere urna. In eget metus non est varius viverra. Quisque accumsan odio sem, in consequat nunc lobortis ac.  Cras dignissim nulla ut euismod adipiscing. Mauris non eros sem. Cras at lacinia nulla. Maecenas nec magna arcu. Aenean iaculis, augue sed pretium semper, odio tellus volutpat risus, quis consectetur nibh mauris ut odio. Integer convallis, augue a accumsan condimentum, sem nisl congue lorem, consectetur lacinia neque tortor eu neque. Aenean convallis arcu vitae enim dignissim vestibulum. Phasellus tincidunt dolor id enim gravida ullamcorper. Nullam ut lorem auctor, congue quam non, auctor arcu. Morbi ac aliquam ipsum, at aliquet ligula.  Cras adipiscing tellus non nulla suscipit congue. Pellentesque id neque euismod, elementum augue vel, volutpat turpis. Pellentesque sit amet tortor non lorem hendrerit pellentesque ac in nisi. Sed aliquet tincidunt arcu, eu lacinia lorem fringilla id. Integer ut ornare orci. Donec scelerisque vulputate est a condimentum. Morbi tellus sapien, vehicula vel ipsum non, luctus ullamcorper mi. Phasellus felis tortor, egestas quis felis sit amet, malesuada auctor nibh. Sed mollis mi sit amet tristique scelerisque. Cras elementum mauris urna, ullamcorper consectetur orci vehicula ut.  ','Web Developer','Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed. Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus.','/team/careers/web-developer','2017-06-26 14:59:06','2017-06-26 14:59:19',NULL,0),(178,'                                                       Back to Careers  Department Location Job Information                                                                                               Quisque accumsan leo sit amet neque pretium consectetur. Sed blandit nulla at justo volutpat rhoncus. Sed risus orci, luctus sit amet fringilla faucibus, congue nec dui. Phasellus mattis lobortis magna sed dapibus. Donec sagittis nunc sed accumsan eleifend. Ut porttitor sapien eu nisl volutpat, vitae interdum est mollis. Sed laoreet sit amet elit in eleifend. Sed a tincidunt velit, nec posuere urna. In eget metus non est varius viverra. Quisque accumsan odio sem, in consequat nunc lobortis ac.  Cras dignissim nulla ut euismod adipiscing. Mauris non eros sem. Cras at lacinia nulla. Maecenas nec magna arcu. Aenean iaculis, augue sed pretium semper, odio tellus volutpat risus, quis consectetur nibh mauris ut odio. Integer convallis, augue a accumsan condimentum, sem nisl congue lorem, consectetur lacinia neque tortor eu neque. Aenean convallis arcu vitae enim dignissim vestibulum. Phasellus tincidunt dolor id enim gravida ullamcorper. Nullam ut lorem auctor, congue quam non, auctor arcu. Morbi ac aliquam ipsum, at aliquet ligula.  Cras adipiscing tellus non nulla suscipit congue. Pellentesque id neque euismod, elementum augue vel, volutpat turpis. Pellentesque sit amet tortor non lorem hendrerit pellentesque ac in nisi. Sed aliquet tincidunt arcu, eu lacinia lorem fringilla id. Integer ut ornare orci. Donec scelerisque vulputate est a condimentum. Morbi tellus sapien, vehicula vel ipsum non, luctus ullamcorper mi. Phasellus felis tortor, egestas quis felis sit amet, malesuada auctor nibh. Sed mollis mi sit amet tristique scelerisque. Cras elementum mauris urna, ullamcorper consectetur orci vehicula ut.  ','Sales Associate','Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed. Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus.','/team/careers/sales-associate','2017-06-26 14:59:06','2017-06-26 14:59:20',NULL,0),(175,'What are page versions? What are page versions? \n                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. How do I add more people as editors in my website? How do I add more people as editors in my website? \n                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.  ','Frequently Asked Questions','','/team/faq','2017-06-26 14:59:06','2017-06-26 14:59:20',NULL,0),(186,'','Service Design','','/design','2017-06-26 16:26:01','2017-06-26 16:28:09',NULL,0),(188,'','Responsive','','/service/responsive','2017-06-26 16:27:40','2017-06-27 15:41:40',NULL,0);
/*!40000 ALTER TABLE `PageSearchIndex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTemplates`
--

DROP TABLE IF EXISTS `PageTemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTemplates` (
  `pTemplateID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pTemplateHandle` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `pTemplateIcon` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pTemplateName` varchar(90) COLLATE utf8_unicode_ci NOT NULL,
  `pTemplateIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pTemplateID`),
  UNIQUE KEY `pTemplateHandle` (`pTemplateHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTemplates`
--

LOCK TABLES `PageTemplates` WRITE;
/*!40000 ALTER TABLE `PageTemplates` DISABLE KEYS */;
INSERT INTO `PageTemplates` VALUES (1,'core_stack','','Stack',1,0),(2,'dashboard_primary_five','','Dashboard Primary + Five',1,0),(3,'dashboard_header_four_col','','Dashboard Header + Four Column',1,0),(4,'dashboard_full','','Dashboard Full',1,0),(5,'blank','blank.png','Blank',0,0),(6,'full','full.png','Full',0,0),(7,'left_sidebar','left_sidebar.png','Left Sidebar',0,0),(8,'right_sidebar','right_sidebar.png','Right Sidebar',0,0),(9,'details','full.png','Details',0,0),(10,'home','full.png','Home',0,0),(11,'news_entry','full.png','News Entry',0,0),(12,'about_entry','full.png','About Entry',0,0),(13,'flow_entry','full.png','Flow Entry',0,0),(14,'price_entry','full.png','Price Entry',0,0),(15,'service_design','full.png','Service Design',0,0),(16,'service_responsive','full.png','Service Responsive',0,0),(17,'service_support','full.png','Service Support',0,0),(18,'service_entry','full.png','Service Entry',0,0);
/*!40000 ALTER TABLE `PageTemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageThemeCustomStyles`
--

DROP TABLE IF EXISTS `PageThemeCustomStyles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageThemeCustomStyles` (
  `pThemeID` int(10) unsigned NOT NULL DEFAULT '0',
  `scvlID` int(10) unsigned DEFAULT '0',
  `preset` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sccRecordID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`pThemeID`),
  KEY `scvlID` (`scvlID`),
  KEY `sccRecordID` (`sccRecordID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageThemeCustomStyles`
--

LOCK TABLES `PageThemeCustomStyles` WRITE;
/*!40000 ALTER TABLE `PageThemeCustomStyles` DISABLE KEYS */;
/*!40000 ALTER TABLE `PageThemeCustomStyles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageThemes`
--

DROP TABLE IF EXISTS `PageThemes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageThemes` (
  `pThemeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pThemeHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `pThemeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pThemeDescription` text COLLATE utf8_unicode_ci,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `pThemeHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pThemeID`),
  UNIQUE KEY `ptHandle` (`pThemeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageThemes`
--

LOCK TABLES `PageThemes` WRITE;
/*!40000 ALTER TABLE `PageThemes` DISABLE KEYS */;
INSERT INTO `PageThemes` VALUES (1,'elemental','Elemental','Elegant, spacious theme with support for blogs, portfolios, layouts and more.',0,1),(3,'nina','﻿nina-archetype.com','ニナ・アーキタイプテーマ',0,1);
/*!40000 ALTER TABLE `PageThemes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypeComposerControlTypes`
--

DROP TABLE IF EXISTS `PageTypeComposerControlTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypeComposerControlTypes` (
  `ptComposerControlTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptComposerControlTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerControlTypeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptComposerControlTypeID`),
  UNIQUE KEY `ptComposerControlTypeHandle` (`ptComposerControlTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypeComposerControlTypes`
--

LOCK TABLES `PageTypeComposerControlTypes` WRITE;
/*!40000 ALTER TABLE `PageTypeComposerControlTypes` DISABLE KEYS */;
INSERT INTO `PageTypeComposerControlTypes` VALUES (1,'core_page_property','Built-In Property',0),(2,'collection_attribute','Custom Attribute',0),(3,'block','Block',0);
/*!40000 ALTER TABLE `PageTypeComposerControlTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypeComposerFormLayoutSetControls`
--

DROP TABLE IF EXISTS `PageTypeComposerFormLayoutSetControls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypeComposerFormLayoutSetControls` (
  `ptComposerFormLayoutSetControlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptComposerFormLayoutSetID` int(10) unsigned DEFAULT '0',
  `ptComposerControlTypeID` int(10) unsigned DEFAULT '0',
  `ptComposerControlObject` longtext COLLATE utf8_unicode_ci,
  `ptComposerFormLayoutSetControlDisplayOrder` int(10) unsigned DEFAULT '0',
  `ptComposerFormLayoutSetControlCustomLabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlCustomTemplate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlRequired` int(11) DEFAULT '0',
  PRIMARY KEY (`ptComposerFormLayoutSetControlID`),
  KEY `ptComposerControlTypeID` (`ptComposerControlTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypeComposerFormLayoutSetControls`
--

LOCK TABLES `PageTypeComposerFormLayoutSetControls` WRITE;
/*!40000 ALTER TABLE `PageTypeComposerFormLayoutSetControls` DISABLE KEYS */;
INSERT INTO `PageTypeComposerFormLayoutSetControls` VALUES (1,1,1,'O:78:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty\":9:{s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:1;s:17:\"\0*\0propertyHandle\";s:4:\"name\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:4:\"name\";s:24:\"\0*\0ptComposerControlName\";s:9:\"Page Name\";s:27:\"\0*\0ptComposerControlIconSRC\";s:34:\"/concrete/attributes/text/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',0,'Page Name',NULL,NULL,1),(2,1,1,'O:85:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\DescriptionCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:11:\"description\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:11:\"description\";s:24:\"\0*\0ptComposerControlName\";s:11:\"Description\";s:27:\"\0*\0ptComposerControlIconSRC\";s:38:\"/concrete/attributes/textarea/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',1,NULL,NULL,NULL,0),(3,1,1,'O:81:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\UrlSlugCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:8:\"url_slug\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:8:\"url_slug\";s:24:\"\0*\0ptComposerControlName\";s:8:\"URL Slug\";s:27:\"\0*\0ptComposerControlIconSRC\";s:34:\"/concrete/attributes/text/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',2,NULL,NULL,NULL,0),(4,1,1,'O:86:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PageTemplateCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:13:\"page_template\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:13:\"page_template\";s:24:\"\0*\0ptComposerControlName\";s:13:\"Page Template\";s:27:\"\0*\0ptComposerControlIconSRC\";s:36:\"/concrete/attributes/select/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',3,NULL,NULL,NULL,0),(5,1,1,'O:87:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PublishTargetCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:14:\"publish_target\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:14:\"publish_target\";s:24:\"\0*\0ptComposerControlName\";s:13:\"Page Location\";s:27:\"\0*\0ptComposerControlIconSRC\";s:40:\"/concrete/attributes/image_file/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',4,NULL,NULL,NULL,0),(6,2,1,'O:78:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty\":9:{s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:1;s:17:\"\0*\0propertyHandle\";s:4:\"name\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:4:\"name\";s:24:\"\0*\0ptComposerControlName\";s:9:\"Page Name\";s:27:\"\0*\0ptComposerControlIconSRC\";s:34:\"/concrete/attributes/text/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',0,'Entry Name',NULL,NULL,0),(7,2,1,'O:81:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\UrlSlugCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:8:\"url_slug\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:8:\"url_slug\";s:24:\"\0*\0ptComposerControlName\";s:8:\"URL Slug\";s:27:\"\0*\0ptComposerControlIconSRC\";s:34:\"/concrete/attributes/text/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',1,NULL,NULL,NULL,0),(8,2,1,'O:85:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\DescriptionCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:11:\"description\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:11:\"description\";s:24:\"\0*\0ptComposerControlName\";s:11:\"Description\";s:27:\"\0*\0ptComposerControlIconSRC\";s:38:\"/concrete/attributes/textarea/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',2,'Short Description',NULL,NULL,0),(9,2,1,'O:87:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PublishTargetCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:14:\"publish_target\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:14:\"publish_target\";s:24:\"\0*\0ptComposerControlName\";s:13:\"Page Location\";s:27:\"\0*\0ptComposerControlIconSRC\";s:40:\"/concrete/attributes/image_file/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',3,NULL,NULL,NULL,0),(10,2,2,'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":10:{s:7:\"\0*\0akID\";s:2:\"22\";s:5:\"\0*\0ak\";b:0;s:30:\"\0*\0ptComposerControlTypeHandle\";s:20:\"collection_attribute\";s:30:\"\0*\0ptComposerControlIdentifier\";s:2:\"22\";s:24:\"\0*\0ptComposerControlName\";s:17:\"Blog Entry Topics\";s:27:\"\0*\0ptComposerControlIconSRC\";s:36:\"/concrete/attributes/topics/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',4,'Topics',NULL,NULL,0),(11,3,2,'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":10:{s:7:\"\0*\0akID\";s:2:\"21\";s:5:\"\0*\0ak\";b:0;s:30:\"\0*\0ptComposerControlTypeHandle\";s:20:\"collection_attribute\";s:30:\"\0*\0ptComposerControlIdentifier\";s:2:\"21\";s:24:\"\0*\0ptComposerControlName\";s:9:\"Thumbnail\";s:27:\"\0*\0ptComposerControlIconSRC\";s:40:\"/concrete/attributes/image_file/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',0,NULL,NULL,NULL,0),(12,3,3,'O:53:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\BlockControl\":12:{s:7:\"\0*\0btID\";i:12;s:30:\"\0*\0ptComposerControlTypeHandle\";s:5:\"block\";s:5:\"\0*\0bt\";b:0;s:4:\"\0*\0b\";b:0;s:13:\"\0*\0controller\";N;s:30:\"\0*\0ptComposerControlIdentifier\";i:12;s:24:\"\0*\0ptComposerControlName\";s:7:\"Content\";s:27:\"\0*\0ptComposerControlIconSRC\";s:33:\"/concrete/blocks/content/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',1,NULL,NULL,NULL,0),(13,4,1,'O:78:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty\":9:{s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:1;s:17:\"\0*\0propertyHandle\";s:4:\"name\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:4:\"name\";s:24:\"\0*\0ptComposerControlName\";s:9:\"Page Name\";s:27:\"\0*\0ptComposerControlIconSRC\";s:34:\"/concrete/attributes/text/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',0,'Job Name',NULL,NULL,1),(14,4,1,'O:82:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\DateTimeCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:9:\"date_time\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:9:\"date_time\";s:24:\"\0*\0ptComposerControlName\";s:16:\"Public Date/Time\";s:27:\"\0*\0ptComposerControlIconSRC\";s:39:\"/concrete/attributes/date_time/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',1,'Posting Date',NULL,NULL,0),(15,5,2,'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":10:{s:7:\"\0*\0akID\";s:2:\"19\";s:5:\"\0*\0ak\";b:0;s:30:\"\0*\0ptComposerControlTypeHandle\";s:20:\"collection_attribute\";s:30:\"\0*\0ptComposerControlIdentifier\";s:2:\"19\";s:24:\"\0*\0ptComposerControlName\";s:8:\"Location\";s:27:\"\0*\0ptComposerControlIconSRC\";s:38:\"/concrete/attributes/textarea/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',0,NULL,NULL,NULL,0),(16,5,2,'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":10:{s:7:\"\0*\0akID\";s:2:\"18\";s:5:\"\0*\0ak\";b:0;s:30:\"\0*\0ptComposerControlTypeHandle\";s:20:\"collection_attribute\";s:30:\"\0*\0ptComposerControlIdentifier\";s:2:\"18\";s:24:\"\0*\0ptComposerControlName\";s:10:\"Department\";s:27:\"\0*\0ptComposerControlIconSRC\";s:36:\"/concrete/attributes/select/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',1,NULL,NULL,NULL,0),(17,5,1,'O:85:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\DescriptionCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:11:\"description\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:11:\"description\";s:24:\"\0*\0ptComposerControlName\";s:11:\"Description\";s:27:\"\0*\0ptComposerControlIconSRC\";s:38:\"/concrete/attributes/textarea/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',2,'Brief Description',NULL,NULL,0),(18,5,3,'O:53:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\BlockControl\":12:{s:7:\"\0*\0btID\";i:12;s:30:\"\0*\0ptComposerControlTypeHandle\";s:5:\"block\";s:5:\"\0*\0bt\";b:0;s:4:\"\0*\0b\";b:0;s:13:\"\0*\0controller\";N;s:30:\"\0*\0ptComposerControlIdentifier\";i:12;s:24:\"\0*\0ptComposerControlName\";s:7:\"Content\";s:27:\"\0*\0ptComposerControlIconSRC\";s:33:\"/concrete/blocks/content/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',3,'Job Details',NULL,NULL,0),(19,6,1,'O:78:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty\":9:{s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:1;s:17:\"\0*\0propertyHandle\";s:4:\"name\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:4:\"name\";s:24:\"\0*\0ptComposerControlName\";s:9:\"Page Name\";s:27:\"\0*\0ptComposerControlIconSRC\";s:34:\"/concrete/attributes/text/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',0,NULL,NULL,'Give your portfolio project a name.',0),(20,6,1,'O:81:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\UrlSlugCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:8:\"url_slug\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:8:\"url_slug\";s:24:\"\0*\0ptComposerControlName\";s:8:\"URL Slug\";s:27:\"\0*\0ptComposerControlIconSRC\";s:34:\"/concrete/attributes/text/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',1,NULL,NULL,NULL,0),(21,6,1,'O:87:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PublishTargetCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:14:\"publish_target\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:14:\"publish_target\";s:24:\"\0*\0ptComposerControlName\";s:13:\"Page Location\";s:27:\"\0*\0ptComposerControlIconSRC\";s:40:\"/concrete/attributes/image_file/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',2,NULL,NULL,NULL,0),(22,7,2,'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":10:{s:7:\"\0*\0akID\";s:2:\"23\";s:5:\"\0*\0ak\";b:0;s:30:\"\0*\0ptComposerControlTypeHandle\";s:20:\"collection_attribute\";s:30:\"\0*\0ptComposerControlIdentifier\";s:2:\"23\";s:24:\"\0*\0ptComposerControlName\";s:14:\"Project Topics\";s:27:\"\0*\0ptComposerControlIconSRC\";s:36:\"/concrete/attributes/topics/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',0,NULL,NULL,NULL,0),(23,7,1,'O:82:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\DateTimeCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:9:\"date_time\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:9:\"date_time\";s:24:\"\0*\0ptComposerControlName\";s:16:\"Public Date/Time\";s:27:\"\0*\0ptComposerControlIconSRC\";s:39:\"/concrete/attributes/date_time/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',1,'Date Completed',NULL,NULL,0),(24,7,2,'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":10:{s:7:\"\0*\0akID\";s:2:\"24\";s:5:\"\0*\0ak\";b:0;s:30:\"\0*\0ptComposerControlTypeHandle\";s:20:\"collection_attribute\";s:30:\"\0*\0ptComposerControlIdentifier\";s:2:\"24\";s:24:\"\0*\0ptComposerControlName\";s:6:\"Client\";s:27:\"\0*\0ptComposerControlIconSRC\";s:34:\"/concrete/attributes/text/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',2,NULL,NULL,NULL,0),(25,7,2,'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":10:{s:7:\"\0*\0akID\";s:2:\"25\";s:5:\"\0*\0ak\";b:0;s:30:\"\0*\0ptComposerControlTypeHandle\";s:20:\"collection_attribute\";s:30:\"\0*\0ptComposerControlIdentifier\";s:2:\"25\";s:24:\"\0*\0ptComposerControlName\";s:4:\"Task\";s:27:\"\0*\0ptComposerControlIconSRC\";s:36:\"/concrete/attributes/select/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',3,NULL,NULL,NULL,0),(26,7,2,'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":10:{s:7:\"\0*\0akID\";s:2:\"26\";s:5:\"\0*\0ak\";b:0;s:30:\"\0*\0ptComposerControlTypeHandle\";s:20:\"collection_attribute\";s:30:\"\0*\0ptComposerControlIdentifier\";s:2:\"26\";s:24:\"\0*\0ptComposerControlName\";s:6:\"Skills\";s:27:\"\0*\0ptComposerControlIconSRC\";s:36:\"/concrete/attributes/select/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',4,NULL,NULL,NULL,0),(27,7,2,'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":10:{s:7:\"\0*\0akID\";s:2:\"21\";s:5:\"\0*\0ak\";b:0;s:30:\"\0*\0ptComposerControlTypeHandle\";s:20:\"collection_attribute\";s:30:\"\0*\0ptComposerControlIdentifier\";s:2:\"21\";s:24:\"\0*\0ptComposerControlName\";s:9:\"Thumbnail\";s:27:\"\0*\0ptComposerControlIconSRC\";s:40:\"/concrete/attributes/image_file/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',5,NULL,NULL,NULL,0),(28,8,3,'O:53:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\BlockControl\":12:{s:7:\"\0*\0btID\";i:33;s:30:\"\0*\0ptComposerControlTypeHandle\";s:5:\"block\";s:5:\"\0*\0bt\";b:0;s:4:\"\0*\0b\";b:0;s:13:\"\0*\0controller\";N;s:30:\"\0*\0ptComposerControlIdentifier\";i:33;s:24:\"\0*\0ptComposerControlName\";s:12:\"Image Slider\";s:27:\"\0*\0ptComposerControlIconSRC\";s:38:\"/concrete/blocks/image_slider/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',0,NULL,NULL,NULL,0),(29,9,3,'O:53:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\BlockControl\":12:{s:7:\"\0*\0btID\";i:12;s:30:\"\0*\0ptComposerControlTypeHandle\";s:5:\"block\";s:5:\"\0*\0bt\";b:0;s:4:\"\0*\0b\";b:0;s:13:\"\0*\0controller\";N;s:30:\"\0*\0ptComposerControlIdentifier\";i:12;s:24:\"\0*\0ptComposerControlName\";s:7:\"Content\";s:27:\"\0*\0ptComposerControlIconSRC\";s:33:\"/concrete/blocks/content/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',0,NULL,NULL,NULL,0),(30,10,1,'O:78:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty\":9:{s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:1;s:17:\"\0*\0propertyHandle\";s:4:\"name\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:4:\"name\";s:24:\"\0*\0ptComposerControlName\";s:9:\"Page Name\";s:27:\"\0*\0ptComposerControlIconSRC\";s:34:\"/concrete/attributes/text/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',0,NULL,NULL,NULL,0),(31,10,1,'O:87:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PublishTargetCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:14:\"publish_target\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:14:\"publish_target\";s:24:\"\0*\0ptComposerControlName\";s:13:\"Page Location\";s:27:\"\0*\0ptComposerControlIconSRC\";s:40:\"/concrete/attributes/image_file/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',1,NULL,NULL,NULL,0),(32,11,1,'O:78:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty\":9:{s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:1;s:17:\"\0*\0propertyHandle\";s:4:\"name\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:4:\"name\";s:24:\"\0*\0ptComposerControlName\";s:9:\"Page Name\";s:27:\"\0*\0ptComposerControlIconSRC\";s:34:\"/concrete/attributes/text/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',0,'Name',NULL,NULL,0),(33,11,1,'O:87:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PublishTargetCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:14:\"publish_target\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:14:\"publish_target\";s:24:\"\0*\0ptComposerControlName\";s:13:\"Page Location\";s:27:\"\0*\0ptComposerControlIconSRC\";s:40:\"/concrete/attributes/image_file/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',1,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `PageTypeComposerFormLayoutSetControls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypeComposerFormLayoutSets`
--

DROP TABLE IF EXISTS `PageTypeComposerFormLayoutSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypeComposerFormLayoutSets` (
  `ptComposerFormLayoutSetID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptID` int(10) unsigned DEFAULT '0',
  `ptComposerFormLayoutSetName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetDescription` text COLLATE utf8_unicode_ci,
  `ptComposerFormLayoutSetDisplayOrder` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`ptComposerFormLayoutSetID`),
  KEY `ptID` (`ptID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypeComposerFormLayoutSets`
--

LOCK TABLES `PageTypeComposerFormLayoutSets` WRITE;
/*!40000 ALTER TABLE `PageTypeComposerFormLayoutSets` DISABLE KEYS */;
INSERT INTO `PageTypeComposerFormLayoutSets` VALUES (1,6,'Basics','',0),(2,7,'Post Details','',0),(3,7,'Content','',1),(4,8,'Basics','',0),(5,8,'About This Job','',1),(6,9,'Page','',0),(7,9,'Project Data','',1),(8,9,'Image Slider','',2),(9,9,'Body','',3),(10,10,'Details','',0),(11,11,'','',0);
/*!40000 ALTER TABLE `PageTypeComposerFormLayoutSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypeComposerOutputBlocks`
--

DROP TABLE IF EXISTS `PageTypeComposerOutputBlocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypeComposerOutputBlocks` (
  `ptComposerOutputBlockID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cbDisplayOrder` int(10) unsigned DEFAULT '0',
  `ptComposerFormLayoutSetControlID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`ptComposerOutputBlockID`),
  KEY `cID` (`cID`),
  KEY `bID` (`bID`,`cID`),
  KEY `ptComposerFormLayoutSetControlID` (`ptComposerFormLayoutSetControlID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypeComposerOutputBlocks`
--

LOCK TABLES `PageTypeComposerOutputBlocks` WRITE;
/*!40000 ALTER TABLE `PageTypeComposerOutputBlocks` DISABLE KEYS */;
INSERT INTO `PageTypeComposerOutputBlocks` VALUES (1,182,'Main',1,12,164);
/*!40000 ALTER TABLE `PageTypeComposerOutputBlocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypeComposerOutputControls`
--

DROP TABLE IF EXISTS `PageTypeComposerOutputControls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypeComposerOutputControls` (
  `ptComposerOutputControlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pTemplateID` int(10) unsigned DEFAULT '0',
  `ptID` int(10) unsigned DEFAULT '0',
  `ptComposerFormLayoutSetControlID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`ptComposerOutputControlID`),
  KEY `pTemplateID` (`pTemplateID`,`ptComposerFormLayoutSetControlID`),
  KEY `ptID` (`ptID`),
  KEY `ptComposerFormLayoutSetControlID` (`ptComposerFormLayoutSetControlID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypeComposerOutputControls`
--

LOCK TABLES `PageTypeComposerOutputControls` WRITE;
/*!40000 ALTER TABLE `PageTypeComposerOutputControls` DISABLE KEYS */;
INSERT INTO `PageTypeComposerOutputControls` VALUES (1,8,7,12),(2,7,8,18),(3,7,9,28),(4,7,9,29);
/*!40000 ALTER TABLE `PageTypeComposerOutputControls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypePageTemplateDefaultPages`
--

DROP TABLE IF EXISTS `PageTypePageTemplateDefaultPages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypePageTemplateDefaultPages` (
  `pTemplateID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `cID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`pTemplateID`,`ptID`),
  KEY `ptID` (`ptID`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypePageTemplateDefaultPages`
--

LOCK TABLES `PageTypePageTemplateDefaultPages` WRITE;
/*!40000 ALTER TABLE `PageTypePageTemplateDefaultPages` DISABLE KEYS */;
INSERT INTO `PageTypePageTemplateDefaultPages` VALUES (6,6,152),(6,11,154),(6,10,157),(7,9,162),(8,7,169),(7,8,176),(5,6,179),(7,6,180),(8,6,181),(12,6,184),(15,6,185),(16,6,187);
/*!40000 ALTER TABLE `PageTypePageTemplateDefaultPages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypePageTemplates`
--

DROP TABLE IF EXISTS `PageTypePageTemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypePageTemplates` (
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `pTemplateID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptID`,`pTemplateID`),
  KEY `pTemplateID` (`pTemplateID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypePageTemplates`
--

LOCK TABLES `PageTypePageTemplates` WRITE;
/*!40000 ALTER TABLE `PageTypePageTemplates` DISABLE KEYS */;
INSERT INTO `PageTypePageTemplates` VALUES (7,8),(8,7),(9,7),(10,6),(11,6);
/*!40000 ALTER TABLE `PageTypePageTemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypePermissionAssignments`
--

DROP TABLE IF EXISTS `PageTypePermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypePermissionAssignments` (
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `ptID` (`ptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypePermissionAssignments`
--

LOCK TABLES `PageTypePermissionAssignments` WRITE;
/*!40000 ALTER TABLE `PageTypePermissionAssignments` DISABLE KEYS */;
INSERT INTO `PageTypePermissionAssignments` VALUES (1,59,9),(1,60,9),(1,61,9),(1,62,9),(1,63,26),(2,59,9),(2,60,9),(2,61,9),(2,62,9),(2,63,27),(3,59,9),(3,60,9),(3,61,9),(3,62,9),(3,63,28),(4,59,9),(4,60,9),(4,61,9),(4,62,9),(4,63,29),(5,59,9),(5,60,9),(5,61,9),(5,62,9),(5,63,30),(6,59,9),(6,60,9),(6,61,9),(6,62,9),(6,63,33),(7,59,9),(7,60,9),(7,61,9),(7,62,9),(7,63,34),(8,59,9),(8,60,9),(8,61,9),(8,62,9),(8,63,35),(9,59,9),(9,60,9),(9,61,9),(9,62,9),(9,63,36),(10,59,9),(10,60,9),(10,61,9),(10,62,9),(10,63,37),(11,59,9),(11,60,9),(11,61,9),(11,62,9),(11,63,38);
/*!40000 ALTER TABLE `PageTypePermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypePublishTargetTypes`
--

DROP TABLE IF EXISTS `PageTypePublishTargetTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypePublishTargetTypes` (
  `ptPublishTargetTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptPublishTargetTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptPublishTargetTypeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptPublishTargetTypeID`),
  KEY `ptPublishTargetTypeHandle` (`ptPublishTargetTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypePublishTargetTypes`
--

LOCK TABLES `PageTypePublishTargetTypes` WRITE;
/*!40000 ALTER TABLE `PageTypePublishTargetTypes` DISABLE KEYS */;
INSERT INTO `PageTypePublishTargetTypes` VALUES (1,'parent_page','Always publish below a certain page',0),(2,'page_type','Choose from pages of a certain type',0),(3,'all','Choose from all pages when publishing',0);
/*!40000 ALTER TABLE `PageTypePublishTargetTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypes`
--

DROP TABLE IF EXISTS `PageTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypes` (
  `ptID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ptHandle` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ptPublishTargetTypeID` int(10) unsigned DEFAULT NULL,
  `ptDefaultPageTemplateID` int(10) unsigned DEFAULT NULL,
  `ptAllowedPageTemplates` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'A',
  `ptIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `ptIsFrequentlyAdded` tinyint(1) NOT NULL DEFAULT '1',
  `ptDisplayOrder` int(10) unsigned DEFAULT NULL,
  `ptLaunchInComposer` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptPublishTargetObject` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ptID`),
  UNIQUE KEY `ptHandle` (`ptHandle`),
  KEY `pkgID` (`pkgID`,`ptID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypes`
--

LOCK TABLES `PageTypes` WRITE;
/*!40000 ALTER TABLE `PageTypes` DISABLE KEYS */;
INSERT INTO `PageTypes` VALUES (1,'Stack','core_stack',3,0,'A',1,0,0,0,0,'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":5:{s:21:\"\0*\0selectorFormFactor\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;}'),(2,'Stack Category','core_stack_category',3,0,'A',1,0,1,0,0,'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":5:{s:21:\"\0*\0selectorFormFactor\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;}'),(3,'Dashboard Primary + Five','dashboard_primary_five',3,0,'A',1,0,2,0,0,'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":5:{s:21:\"\0*\0selectorFormFactor\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;}'),(4,'Dashboard Header + Four Column','dashboard_header_four_col',3,0,'A',1,0,3,0,0,'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":5:{s:21:\"\0*\0selectorFormFactor\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;}'),(5,'Dashboard Full','dashboard_full',3,0,'A',1,0,4,0,0,'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":5:{s:21:\"\0*\0selectorFormFactor\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;}'),(6,'Empty Page','page',3,6,'A',0,1,0,0,0,'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":5:{s:21:\"\0*\0selectorFormFactor\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;}'),(7,'Blog Entry','blog_entry',2,8,'C',0,1,1,1,0,'O:73:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\PageTypeConfiguration\":6:{s:7:\"\0*\0ptID\";s:2:\"10\";s:21:\"\0*\0selectorFormFactor\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"2\";s:25:\"ptPublishTargetTypeHandle\";s:9:\"page_type\";s:9:\"pkgHandle\";b:0;}'),(8,'Job Posting','job_posting',1,7,'C',0,1,2,1,0,'O:75:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\ParentPageConfiguration\":5:{s:12:\"\0*\0cParentID\";s:3:\"174\";s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"1\";s:25:\"ptPublishTargetTypeHandle\";s:11:\"parent_page\";s:9:\"pkgHandle\";b:0;}'),(9,'Portfolio Project','portfolio_project',2,7,'C',0,1,3,1,0,'O:73:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\PageTypeConfiguration\":6:{s:7:\"\0*\0ptID\";s:2:\"11\";s:21:\"\0*\0selectorFormFactor\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"2\";s:25:\"ptPublishTargetTypeHandle\";s:9:\"page_type\";s:9:\"pkgHandle\";b:0;}'),(10,'Blog','blog',3,6,'C',0,0,4,1,0,'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":5:{s:21:\"\0*\0selectorFormFactor\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;}'),(11,'Portfolio','portfolio',3,6,'C',0,0,5,1,0,'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":5:{s:21:\"\0*\0selectorFormFactor\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;}');
/*!40000 ALTER TABLE `PageTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageWorkflowProgress`
--

DROP TABLE IF EXISTS `PageWorkflowProgress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageWorkflowProgress` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`wpID`),
  KEY `wpID` (`wpID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageWorkflowProgress`
--

LOCK TABLES `PageWorkflowProgress` WRITE;
/*!40000 ALTER TABLE `PageWorkflowProgress` DISABLE KEYS */;
/*!40000 ALTER TABLE `PageWorkflowProgress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pages`
--

DROP TABLE IF EXISTS `Pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pages` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsTemplate` tinyint(1) NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  `cIsCheckedOut` tinyint(1) NOT NULL DEFAULT '0',
  `cCheckedOutUID` int(10) unsigned DEFAULT NULL,
  `cCheckedOutDatetime` datetime DEFAULT NULL,
  `cCheckedOutDatetimeLastEdit` datetime DEFAULT NULL,
  `cOverrideTemplatePermissions` tinyint(1) NOT NULL DEFAULT '1',
  `cInheritPermissionsFromCID` int(10) unsigned NOT NULL DEFAULT '0',
  `cInheritPermissionsFrom` varchar(8) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'PARENT',
  `cFilename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cPointerID` int(10) unsigned NOT NULL DEFAULT '0',
  `cPointerExternalLink` longtext COLLATE utf8_unicode_ci,
  `cPointerExternalLinkNewWindow` tinyint(1) NOT NULL DEFAULT '0',
  `cIsActive` tinyint(1) NOT NULL DEFAULT '1',
  `cChildren` int(10) unsigned NOT NULL DEFAULT '0',
  `cDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `cDraftTargetParentPageID` int(10) unsigned NOT NULL DEFAULT '0',
  `cCacheFullPageContent` smallint(6) NOT NULL DEFAULT '-1',
  `cCacheFullPageContentOverrideLifetime` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `cCacheFullPageContentLifetimeCustom` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsSystemPage` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`ptID`),
  KEY `cParentID` (`cParentID`),
  KEY `cIsActive` (`cID`,`cIsActive`),
  KEY `cCheckedOutUID` (`cCheckedOutUID`),
  KEY `uID` (`uID`,`cPointerID`),
  KEY `cPointerID` (`cPointerID`,`cDisplayOrder`),
  KEY `cIsTemplate` (`cID`,`cIsTemplate`),
  KEY `cIsSystemPage` (`cID`,`cIsSystemPage`),
  KEY `pkgID` (`pkgID`),
  KEY `cParentMaxDisplay` (`cParentID`,`cDisplayOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pages`
--

LOCK TABLES `Pages` WRITE;
/*!40000 ALTER TABLE `Pages` DISABLE KEYS */;
INSERT INTO `Pages` VALUES (1,0,0,1,0,NULL,NULL,NULL,1,1,'OVERRIDE',NULL,0,NULL,0,1,20,0,0,0,0,-1,'0',0,0),(2,0,0,1,0,NULL,NULL,NULL,1,2,'OVERRIDE','/dashboard/view.php',0,NULL,0,1,13,0,0,0,0,-1,'0',0,1),(3,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/view.php',0,NULL,0,1,3,0,2,0,0,-1,'0',0,1),(4,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/full.php',0,NULL,0,1,0,0,3,0,0,-1,'0',0,1),(5,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/explore.php',0,NULL,0,1,0,1,3,0,0,-1,'0',0,1),(6,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/search.php',0,NULL,0,1,0,2,3,0,0,-1,'0',0,1),(7,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/view.php',0,NULL,0,1,4,1,2,0,0,-1,'0',0,1),(8,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/search.php',0,NULL,0,1,0,0,7,0,0,-1,'0',0,1),(9,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/attributes.php',0,NULL,0,1,0,1,7,0,0,-1,'0',0,1),(10,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/sets.php',0,NULL,0,1,0,2,7,0,0,-1,'0',0,1),(11,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/add_set.php',0,NULL,0,1,0,3,7,0,0,-1,'0',0,1),(12,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/view.php',0,NULL,0,1,7,2,2,0,0,-1,'0',0,1),(13,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/search.php',0,NULL,0,1,0,0,12,0,0,-1,'0',0,1),(14,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/groups.php',0,NULL,0,1,1,1,12,0,0,-1,'0',0,1),(15,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/attributes.php',0,NULL,0,1,0,2,12,0,0,-1,'0',0,1),(16,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/add.php',0,NULL,0,1,0,3,12,0,0,-1,'0',0,1),(17,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/add_group.php',0,NULL,0,1,0,4,12,0,0,-1,'0',0,1),(18,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/groups/bulkupdate.php',0,NULL,0,1,0,0,14,0,0,-1,'0',0,1),(19,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/group_sets.php',0,NULL,0,1,0,5,12,0,0,-1,'0',0,1),(20,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/points/view.php',0,NULL,0,1,2,6,12,0,0,-1,'0',0,1),(21,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/points/assign.php',0,NULL,0,1,0,0,20,0,0,-1,'0',0,1),(22,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/points/actions.php',0,NULL,0,1,0,1,20,0,0,-1,'0',0,1),(23,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports.php',0,NULL,0,1,3,3,2,0,0,-1,'0',0,1),(24,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports/forms.php',0,NULL,0,1,0,0,23,0,0,-1,'0',0,1),(25,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports/surveys.php',0,NULL,0,1,0,1,23,0,0,-1,'0',0,1),(26,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports/logs.php',0,NULL,0,1,0,2,23,0,0,-1,'0',0,1),(27,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/view.php',0,NULL,0,1,6,4,2,0,0,-1,'0',0,1),(28,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/view.php',0,NULL,0,1,1,0,27,0,0,-1,'0',0,1),(29,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/inspect.php',0,NULL,0,1,0,0,28,0,0,-1,'0',0,1),(30,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/view.php',0,NULL,0,1,6,1,27,0,0,-1,'0',0,1),(31,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/organize.php',0,NULL,0,1,0,0,30,0,0,-1,'0',0,1),(32,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/add.php',0,NULL,0,1,0,1,30,0,0,-1,'0',0,1),(33,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/form.php',0,NULL,0,1,0,2,30,0,0,-1,'0',0,1),(34,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/output.php',0,NULL,0,1,0,3,30,0,0,-1,'0',0,1),(35,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/attributes.php',0,NULL,0,1,0,4,30,0,0,-1,'0',0,1),(36,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/permissions.php',0,NULL,0,1,0,5,30,0,0,-1,'0',0,1),(37,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/templates/view.php',0,NULL,0,1,1,2,27,0,0,-1,'0',0,1),(38,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/templates/add.php',0,NULL,0,1,0,0,37,0,0,-1,'0',0,1),(39,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/attributes.php',0,NULL,0,1,0,3,27,0,0,-1,'0',0,1),(40,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/single.php',0,NULL,0,1,0,4,27,0,0,-1,'0',0,1),(41,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/feeds.php',0,NULL,0,1,0,5,27,0,0,-1,'0',0,1),(42,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/conversations/view.php',0,NULL,0,1,1,5,2,0,0,-1,'0',0,1),(43,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/conversations/messages.php',0,NULL,0,1,0,0,42,0,0,-1,'0',0,1),(44,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/workflow/view.php',0,NULL,0,1,2,6,2,0,0,-1,'0',0,1),(45,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/workflow/me.php',0,NULL,0,1,0,0,44,0,0,-1,'0',0,1),(46,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/workflow/workflows.php',0,NULL,0,1,0,1,44,0,0,-1,'0',0,1),(47,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/view.php',0,NULL,0,1,3,7,2,0,0,-1,'0',0,1),(48,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/stacks/view.php',0,NULL,0,1,1,0,47,0,0,-1,'0',0,1),(49,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/permissions.php',0,NULL,0,1,0,1,47,0,0,-1,'0',0,1),(50,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/stacks/list/view.php',0,NULL,0,1,0,0,48,0,0,-1,'0',0,1),(51,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/types/view.php',0,NULL,0,1,0,2,47,0,0,-1,'0',0,1),(52,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/view.php',0,NULL,0,1,5,8,2,0,0,-1,'0',0,1),(53,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/news.php',0,NULL,0,1,0,9,2,0,0,-1,'0',0,1),(54,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/install.php',0,NULL,0,1,0,0,52,0,0,-1,'0',0,1),(55,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/update.php',0,NULL,0,1,0,1,52,0,0,-1,'0',0,1),(56,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/connect.php',0,NULL,0,1,0,2,52,0,0,-1,'0',0,1),(57,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/themes.php',0,NULL,0,1,0,3,52,0,0,-1,'0',0,1),(58,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/addons.php',0,NULL,0,1,0,4,52,0,0,-1,'0',0,1),(59,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/view.php',0,NULL,0,1,12,10,2,0,0,-1,'0',0,1),(60,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/view.php',0,NULL,0,1,7,0,59,0,0,-1,'0',0,1),(61,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/name.php',0,NULL,0,1,0,0,60,0,0,-1,'0',0,1),(62,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/accessibility.php',0,NULL,0,1,0,1,60,0,0,-1,'0',0,1),(63,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/social.php',0,NULL,0,1,0,2,60,0,0,-1,'0',0,1),(64,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/icons.php',0,NULL,0,1,0,3,60,0,0,-1,'0',0,1),(65,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/editor.php',0,NULL,0,1,0,4,60,0,0,-1,'0',0,1),(66,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/multilingual/view.php',0,NULL,0,1,0,5,60,0,0,-1,'0',0,1),(67,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/timezone.php',0,NULL,0,1,0,6,60,0,0,-1,'0',0,1),(68,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/multilingual/view.php',0,NULL,0,1,4,1,59,0,0,-1,'0',0,1),(69,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/multilingual/setup.php',0,NULL,0,1,0,0,68,0,0,-1,'0',0,1),(70,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/multilingual/copy.php',0,NULL,0,1,0,1,68,0,0,-1,'0',0,1),(71,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/multilingual/page_report.php',0,NULL,0,1,0,2,68,0,0,-1,'0',0,1),(72,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/multilingual/translate_interface.php',0,NULL,0,1,0,3,68,0,0,-1,'0',0,1),(73,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/view.php',0,NULL,0,1,5,2,59,0,0,-1,'0',0,1),(74,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/urls.php',0,NULL,0,1,0,0,73,0,0,-1,'0',0,1),(75,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/bulk.php',0,NULL,0,1,0,1,73,0,0,-1,'0',0,1),(76,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/codes.php',0,NULL,0,1,0,2,73,0,0,-1,'0',0,1),(77,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/excluded.php',0,NULL,0,1,0,3,73,0,0,-1,'0',0,1),(78,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/searchindex.php',0,NULL,0,1,0,4,73,0,0,-1,'0',0,1),(79,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/files/view.php',0,NULL,0,1,4,3,59,0,0,-1,'0',0,1),(80,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/files/permissions.php',0,NULL,0,1,0,0,79,0,0,-1,'0',0,1),(81,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/files/filetypes.php',0,NULL,0,1,0,1,79,0,0,-1,'0',0,1),(82,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/files/thumbnails.php',0,NULL,0,1,0,2,79,0,0,-1,'0',0,1),(83,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/files/storage.php',0,NULL,0,1,0,3,79,0,0,-1,'0',0,1),(84,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/view.php',0,NULL,0,1,4,4,59,0,0,-1,'0',0,1),(85,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/cache.php',0,NULL,0,1,0,0,84,0,0,-1,'0',0,1),(86,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/clearcache.php',0,NULL,0,1,0,1,84,0,0,-1,'0',0,1),(87,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/jobs.php',0,NULL,0,1,0,2,84,0,0,-1,'0',0,1),(88,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/query_log.php',0,NULL,0,1,0,3,84,0,0,-1,'0',0,1),(89,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/view.php',0,NULL,0,1,8,5,59,0,0,-1,'0',0,1),(90,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/site.php',0,NULL,0,1,0,0,89,0,0,-1,'0',0,1),(91,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/tasks.php',0,NULL,0,1,0,1,89,0,0,-1,'0',0,1),(92,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/users.php',0,NULL,0,1,0,2,89,0,0,-1,'0',0,1),(93,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/advanced.php',0,NULL,0,1,0,3,89,0,0,-1,'0',0,1),(94,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/blacklist.php',0,NULL,0,1,0,4,89,0,0,-1,'0',0,1),(95,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/captcha.php',0,NULL,0,1,0,5,89,0,0,-1,'0',0,1),(96,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/antispam.php',0,NULL,0,1,0,6,89,0,0,-1,'0',0,1),(97,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/maintenance.php',0,NULL,0,1,0,7,89,0,0,-1,'0',0,1),(98,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/view.php',0,NULL,0,1,4,6,59,0,0,-1,'0',0,1),(99,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/postlogin.php',0,NULL,0,1,0,0,98,0,0,-1,'0',0,1),(100,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/profiles.php',0,NULL,0,1,0,1,98,0,0,-1,'0',0,1),(101,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/open.php',0,NULL,0,1,0,2,98,0,0,-1,'0',0,1),(102,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/authentication.php',0,NULL,0,1,0,3,98,0,0,-1,'0',0,1),(103,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/mail/view.php',0,NULL,0,1,2,7,59,0,0,-1,'0',0,1),(104,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/mail/method.php',0,NULL,0,1,1,0,103,0,0,-1,'0',0,1),(105,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/mail/method/test.php',0,NULL,0,1,0,0,104,0,0,-1,'0',0,1),(106,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/mail/importers.php',0,NULL,0,1,0,1,103,0,0,-1,'0',0,1),(107,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/conversations/view.php',0,NULL,0,1,4,8,59,0,0,-1,'0',0,1),(108,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/conversations/settings.php',0,NULL,0,1,0,0,107,0,0,-1,'0',0,1),(109,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/conversations/points.php',0,NULL,0,1,0,1,107,0,0,-1,'0',0,1),(110,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/conversations/bannedwords.php',0,NULL,0,1,0,2,107,0,0,-1,'0',0,1),(111,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/conversations/permissions.php',0,NULL,0,1,0,3,107,0,0,-1,'0',0,1),(112,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/view.php',0,NULL,0,1,3,9,59,0,0,-1,'0',0,1),(113,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/sets.php',0,NULL,0,1,0,0,112,0,0,-1,'0',0,1),(114,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/types.php',0,NULL,0,1,0,1,112,0,0,-1,'0',0,1),(115,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/topics/view.php',0,NULL,0,1,1,2,112,0,0,-1,'0',0,1),(116,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/topics/add.php',0,NULL,0,1,0,0,115,0,0,-1,'0',0,1),(117,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/view.php',0,NULL,0,1,5,10,59,0,0,-1,'0',0,1),(118,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/info.php',0,NULL,0,1,0,0,117,0,0,-1,'0',0,1),(119,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/debug.php',0,NULL,0,1,0,1,117,0,0,-1,'0',0,1),(120,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/logging.php',0,NULL,0,1,0,2,117,0,0,-1,'0',0,1),(121,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/proxy.php',0,NULL,0,1,0,3,117,0,0,-1,'0',0,1),(122,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/entities.php',0,NULL,0,1,0,4,117,0,0,-1,'0',0,1),(123,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/backup/view.php',0,NULL,0,1,2,11,59,0,0,-1,'0',0,1),(124,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/backup/backup.php',0,NULL,0,1,0,0,123,0,0,-1,'0',0,1),(125,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/backup/update.php',0,NULL,0,1,0,1,123,0,0,-1,'0',0,1),(126,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT',NULL,0,NULL,0,1,0,11,2,0,0,-1,'0',0,1),(127,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT',NULL,0,NULL,0,1,0,12,2,0,0,-1,'0',0,1),(128,0,0,1,0,NULL,NULL,NULL,1,128,'OVERRIDE','/!drafts/view.php',0,NULL,0,1,3,0,0,0,0,-1,'0',0,1),(129,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/!trash/view.php',0,NULL,0,1,0,0,0,0,0,-1,'0',0,1),(130,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/!stacks/view.php',0,NULL,0,1,8,0,0,0,0,-1,'0',0,1),(131,0,0,1,0,NULL,NULL,NULL,1,131,'OVERRIDE','/login.php',0,NULL,0,1,0,0,0,0,0,-1,'0',0,1),(132,0,0,1,0,NULL,NULL,NULL,1,132,'OVERRIDE','/register.php',0,NULL,0,1,0,0,0,0,0,-1,'0',0,1),(133,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/account/view.php',0,NULL,0,1,3,0,0,0,0,-1,'0',0,1),(134,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/account/edit_profile.php',0,NULL,0,1,0,0,133,0,0,-1,'0',0,1),(135,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/account/avatar.php',0,NULL,0,1,0,1,133,0,0,-1,'0',0,1),(136,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/account/messages/view.php',0,NULL,0,1,1,2,133,0,0,-1,'0',0,1),(137,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/account/messages/inbox.php',0,NULL,0,1,0,0,136,0,0,-1,'0',0,1),(138,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/members/view.php',0,NULL,0,1,2,0,1,0,0,-1,'0',0,1),(139,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/members/profile.php',0,NULL,0,1,0,0,138,0,0,-1,'0',0,1),(140,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/members/directory.php',0,NULL,0,1,0,1,138,0,0,-1,'0',0,1),(141,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/page_not_found.php',0,NULL,0,1,0,1,0,0,0,-1,'0',0,1),(142,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/page_forbidden.php',0,NULL,0,1,0,1,0,0,0,-1,'0',0,1),(143,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/download_file.php',0,NULL,0,1,0,2,1,0,0,-1,'0',0,1),(144,1,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,130,0,0,-1,'0',0,1),(145,1,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,130,0,0,-1,'0',0,1),(146,1,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,130,0,0,-1,'0',0,1),(147,1,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,3,130,0,0,-1,'0',0,1),(148,1,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,4,130,0,0,-1,'0',0,1),(149,1,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,5,130,0,0,-1,'0',0,1),(150,1,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,6,130,0,0,-1,'0',0,1),(151,1,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,7,130,0,0,-1,'0',0,1),(152,6,1,NULL,0,NULL,NULL,NULL,1,152,'OVERRIDE',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(153,6,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,1,0,0,-1,'0',0,0),(154,11,1,NULL,0,NULL,NULL,NULL,1,154,'OVERRIDE',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(155,11,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,6,3,1,0,0,-1,'0',0,0),(156,6,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,3,4,1,0,0,-1,'0',0,0),(157,10,1,NULL,0,NULL,NULL,NULL,1,157,'OVERRIDE',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(158,6,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,3,5,1,0,0,-1,'0',0,0),(159,6,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,6,1,0,0,-1,'0',0,0),(160,6,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,9,1,0,0,-1,'0',0,0),(161,6,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,10,1,0,0,-1,'0',0,0),(162,9,1,NULL,0,NULL,NULL,NULL,1,162,'OVERRIDE',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(163,9,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,155,0,0,-1,'0',0,0),(164,9,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,155,0,0,-1,'0',0,0),(165,9,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,155,0,0,-1,'0',0,0),(166,9,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,3,155,0,0,-1,'0',0,0),(167,9,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,4,155,0,0,-1,'0',0,0),(168,9,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,5,155,0,0,-1,'0',0,0),(169,7,1,NULL,0,NULL,NULL,NULL,1,169,'OVERRIDE',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(170,6,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,158,0,0,-1,'0',0,0),(171,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,7,1,0,0,-1,'0',0,0),(172,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,8,1,0,0,-1,'0',0,0),(173,6,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,156,0,0,-1,'0',0,0),(174,6,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,2,1,156,0,0,-1,'0',0,0),(175,6,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,156,0,0,-1,'0',0,0),(176,8,1,NULL,0,NULL,NULL,NULL,1,176,'OVERRIDE',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(177,8,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,174,0,0,-1,'0',0,0),(178,8,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,174,0,0,-1,'0',0,0),(179,6,1,NULL,0,NULL,NULL,NULL,1,179,'OVERRIDE',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(180,6,1,NULL,0,NULL,NULL,NULL,1,180,'OVERRIDE',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(181,6,1,NULL,0,NULL,NULL,NULL,1,181,'OVERRIDE',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(182,7,0,1,0,NULL,NULL,NULL,1,128,'PARENT',NULL,0,NULL,0,0,0,0,128,0,0,-1,'0',0,1),(183,6,0,1,0,NULL,NULL,NULL,1,128,'PARENT',NULL,0,NULL,0,0,0,1,128,0,0,-1,'0',0,1),(184,6,1,NULL,0,NULL,NULL,NULL,1,184,'OVERRIDE',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(185,6,1,NULL,0,NULL,NULL,NULL,1,185,'OVERRIDE',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(186,6,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,11,158,0,153,-1,'0',0,0),(187,6,1,NULL,0,NULL,NULL,NULL,1,187,'OVERRIDE',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(188,6,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,10,158,0,1,-1,'0',0,0),(189,6,0,1,0,NULL,NULL,NULL,1,128,'PARENT',NULL,0,NULL,0,0,0,2,128,0,0,-1,'0',0,1);
/*!40000 ALTER TABLE `Pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccess`
--

DROP TABLE IF EXISTS `PermissionAccess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccess` (
  `paID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `paIsInUse` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccess`
--

LOCK TABLES `PermissionAccess` WRITE;
/*!40000 ALTER TABLE `PermissionAccess` DISABLE KEYS */;
INSERT INTO `PermissionAccess` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),(71,1),(72,1),(73,1),(74,1),(75,1),(76,1),(77,1),(78,1),(79,1),(80,1),(81,1),(82,1),(83,1),(84,1),(85,1),(86,1),(87,1),(88,1),(89,1),(90,1),(91,1),(92,1),(93,1),(94,1),(95,1),(96,1),(97,1),(98,1),(99,1),(100,1),(101,1),(102,1),(103,1),(104,1),(105,1),(106,1),(107,1);
/*!40000 ALTER TABLE `PermissionAccess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntities`
--

DROP TABLE IF EXISTS `PermissionAccessEntities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntities` (
  `peID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `petID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`peID`),
  KEY `petID` (`petID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntities`
--

LOCK TABLES `PermissionAccessEntities` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntities` DISABLE KEYS */;
INSERT INTO `PermissionAccessEntities` VALUES (1,1),(5,1),(6,1),(2,5),(3,6),(4,7);
/*!40000 ALTER TABLE `PermissionAccessEntities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntityGroupSets`
--

DROP TABLE IF EXISTS `PermissionAccessEntityGroupSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntityGroupSets` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`peID`,`gsID`),
  KEY `gsID` (`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntityGroupSets`
--

LOCK TABLES `PermissionAccessEntityGroupSets` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntityGroupSets` DISABLE KEYS */;
/*!40000 ALTER TABLE `PermissionAccessEntityGroupSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntityGroups`
--

DROP TABLE IF EXISTS `PermissionAccessEntityGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntityGroups` (
  `pegID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pegID`),
  KEY `peID` (`peID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntityGroups`
--

LOCK TABLES `PermissionAccessEntityGroups` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntityGroups` DISABLE KEYS */;
INSERT INTO `PermissionAccessEntityGroups` VALUES (1,1,3),(2,5,1),(3,6,2);
/*!40000 ALTER TABLE `PermissionAccessEntityGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntityTypeCategories`
--

DROP TABLE IF EXISTS `PermissionAccessEntityTypeCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntityTypeCategories` (
  `petID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`petID`,`pkCategoryID`),
  KEY `pkCategoryID` (`pkCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntityTypeCategories`
--

LOCK TABLES `PermissionAccessEntityTypeCategories` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntityTypeCategories` DISABLE KEYS */;
INSERT INTO `PermissionAccessEntityTypeCategories` VALUES (1,1),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20),(1,21),(2,1),(2,4),(2,5),(2,6),(2,7),(2,8),(2,9),(2,10),(2,11),(2,12),(2,13),(2,14),(2,15),(2,16),(2,17),(2,18),(2,19),(2,20),(2,21),(3,1),(3,4),(3,5),(3,6),(3,7),(3,8),(3,9),(3,10),(3,11),(3,12),(3,13),(3,14),(3,15),(3,16),(3,17),(3,18),(3,19),(3,20),(4,1),(4,4),(4,5),(4,6),(4,7),(4,8),(4,9),(4,10),(4,11),(4,12),(4,13),(4,14),(4,15),(4,16),(4,17),(4,18),(4,19),(4,20),(4,21),(5,1),(5,14),(6,5),(6,6),(7,19),(7,20);
/*!40000 ALTER TABLE `PermissionAccessEntityTypeCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntityTypes`
--

DROP TABLE IF EXISTS `PermissionAccessEntityTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntityTypes` (
  `petID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `petHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `petName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`petID`),
  UNIQUE KEY `petHandle` (`petHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntityTypes`
--

LOCK TABLES `PermissionAccessEntityTypes` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntityTypes` DISABLE KEYS */;
INSERT INTO `PermissionAccessEntityTypes` VALUES (1,'group','Group',0),(2,'user','User',0),(3,'group_set','Group Set',0),(4,'group_combination','Group Combination',0),(5,'page_owner','Page Owner',0),(6,'file_uploader','File Uploader',0),(7,'conversation_message_author','Message Author',0);
/*!40000 ALTER TABLE `PermissionAccessEntityTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntityUsers`
--

DROP TABLE IF EXISTS `PermissionAccessEntityUsers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntityUsers` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`peID`,`uID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntityUsers`
--

LOCK TABLES `PermissionAccessEntityUsers` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntityUsers` DISABLE KEYS */;
/*!40000 ALTER TABLE `PermissionAccessEntityUsers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessList`
--

DROP TABLE IF EXISTS `PermissionAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `pdID` int(10) unsigned NOT NULL DEFAULT '0',
  `accessType` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`),
  KEY `accessType` (`accessType`),
  KEY `peID` (`peID`),
  KEY `peID_accessType` (`peID`,`accessType`),
  KEY `pdID` (`pdID`),
  KEY `permissionAccessDuration` (`paID`,`pdID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessList`
--

LOCK TABLES `PermissionAccessList` WRITE;
/*!40000 ALTER TABLE `PermissionAccessList` DISABLE KEYS */;
INSERT INTO `PermissionAccessList` VALUES (1,1,0,10),(2,1,0,10),(3,1,0,10),(4,1,0,10),(5,1,0,10),(6,1,0,10),(7,1,0,10),(8,1,0,10),(9,1,0,10),(10,1,0,10),(11,1,0,10),(12,1,0,10),(13,1,0,10),(14,1,0,10),(15,1,0,10),(16,1,0,10),(17,1,0,10),(18,1,0,10),(19,1,0,10),(20,1,0,10),(21,1,0,10),(22,1,0,10),(23,1,0,10),(24,1,0,10),(25,1,0,10),(26,2,0,10),(27,2,0,10),(28,2,0,10),(29,2,0,10),(30,2,0,10),(31,5,0,10),(32,5,0,10),(33,2,0,10),(34,2,0,10),(35,2,0,10),(36,2,0,10),(37,2,0,10),(38,2,0,10),(39,5,0,10),(40,1,0,10),(40,5,0,10),(41,1,0,10),(42,1,0,10),(43,1,0,10),(44,1,0,10),(45,1,0,10),(46,1,0,10),(47,1,0,10),(48,1,0,10),(49,5,0,10),(50,1,0,10),(51,1,0,10),(52,1,0,10),(53,1,0,10),(54,1,0,10),(55,1,0,10),(56,1,0,10),(57,1,0,10),(58,1,0,10),(59,1,0,10),(60,1,0,10),(61,1,0,10),(62,1,0,10),(63,1,0,10),(64,1,0,10),(65,1,0,10),(66,1,0,10),(67,5,0,10),(68,5,0,10),(69,1,0,10),(70,5,0,10),(71,1,0,10),(72,1,0,10),(73,1,0,10),(74,1,0,10),(75,1,0,10),(76,1,0,10),(77,1,0,10),(78,1,0,10),(79,1,0,10),(80,1,0,10),(81,1,0,10),(82,1,0,10),(83,1,0,10),(84,1,0,10),(85,1,0,10),(86,1,0,10),(87,1,0,10),(87,2,0,10),(88,1,0,10),(88,2,0,10),(89,1,0,10),(89,2,0,10),(90,1,0,10),(90,2,0,10),(91,1,0,10),(91,2,0,10),(92,1,0,10),(92,2,0,10),(93,1,0,10),(93,2,0,10),(94,1,0,10),(94,2,0,10),(95,1,0,10),(96,1,0,10),(97,1,0,10),(98,1,0,10),(99,1,0,10),(100,5,0,10),(101,5,0,10),(102,1,0,10),(102,4,0,10),(103,1,0,10),(103,4,0,10),(104,1,0,10),(104,6,0,10),(105,1,0,10),(106,1,0,10),(107,1,0,10);
/*!40000 ALTER TABLE `PermissionAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessWorkflows`
--

DROP TABLE IF EXISTS `PermissionAccessWorkflows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessWorkflows` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`wfID`),
  KEY `wfID` (`wfID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessWorkflows`
--

LOCK TABLES `PermissionAccessWorkflows` WRITE;
/*!40000 ALTER TABLE `PermissionAccessWorkflows` DISABLE KEYS */;
/*!40000 ALTER TABLE `PermissionAccessWorkflows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAssignments`
--

DROP TABLE IF EXISTS `PermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAssignments` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`pkID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAssignments`
--

LOCK TABLES `PermissionAssignments` WRITE;
/*!40000 ALTER TABLE `PermissionAssignments` DISABLE KEYS */;
INSERT INTO `PermissionAssignments` VALUES (1,19),(2,20),(3,74),(4,75),(5,76),(6,78),(7,79),(8,80),(9,86),(10,87),(11,89),(12,90),(13,91),(14,92),(15,93),(16,94),(17,95),(18,96),(19,97),(20,98),(21,99),(22,100),(23,101),(24,102),(25,103);
/*!40000 ALTER TABLE `PermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionDurationObjects`
--

DROP TABLE IF EXISTS `PermissionDurationObjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionDurationObjects` (
  `pdID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pdObject` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pdID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionDurationObjects`
--

LOCK TABLES `PermissionDurationObjects` WRITE;
/*!40000 ALTER TABLE `PermissionDurationObjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `PermissionDurationObjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionKeyCategories`
--

DROP TABLE IF EXISTS `PermissionKeyCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionKeyCategories` (
  `pkCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkCategoryHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pkCategoryID`),
  UNIQUE KEY `pkCategoryHandle` (`pkCategoryHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionKeyCategories`
--

LOCK TABLES `PermissionKeyCategories` WRITE;
/*!40000 ALTER TABLE `PermissionKeyCategories` DISABLE KEYS */;
INSERT INTO `PermissionKeyCategories` VALUES (1,'page',NULL),(2,'single_page',NULL),(3,'stack',NULL),(4,'user',NULL),(5,'file_set',NULL),(6,'file',NULL),(7,'area',NULL),(8,'block_type',NULL),(9,'block',NULL),(10,'admin',NULL),(11,'sitemap',NULL),(12,'marketplace_newsflow',NULL),(13,'basic_workflow',NULL),(14,'page_type',NULL),(15,'gathering',NULL),(16,'group_tree_node',NULL),(17,'topic_category_tree_node',NULL),(18,'topic_tree_node',NULL),(19,'conversation',NULL),(20,'conversation_message',NULL),(21,'multilingual_section',NULL);
/*!40000 ALTER TABLE `PermissionKeyCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionKeys`
--

DROP TABLE IF EXISTS `PermissionKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionKeys` (
  `pkID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkCanTriggerWorkflow` tinyint(1) NOT NULL DEFAULT '0',
  `pkHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `pkDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pkID`),
  UNIQUE KEY `akHandle` (`pkHandle`),
  KEY `pkCategoryID` (`pkCategoryID`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionKeys`
--

LOCK TABLES `PermissionKeys` WRITE;
/*!40000 ALTER TABLE `PermissionKeys` DISABLE KEYS */;
INSERT INTO `PermissionKeys` VALUES (1,'view_page','View',0,0,'Can see a page exists and read its content.',1,0),(2,'view_page_versions','View Versions',0,0,'Can view the page versions dialog and read past versions of a page.',1,0),(3,'view_page_in_sitemap','View Page in Sitemap',0,0,'Controls whether a user can see a page in the sitemap or intelligent search.',1,0),(4,'preview_page_as_user','Preview Page As User',0,0,'Ability to see what this page will look like at a specific time in the future as a specific user.',1,0),(5,'edit_page_properties','Edit Properties',0,1,'Ability to change anything in the Page Properties menu.',1,0),(6,'edit_page_contents','Edit Contents',0,0,'Ability to make edits to at least some of the content in the page. You can lock down different block areas and specific blocks by clicking Permissions on them as well. ',1,0),(7,'edit_page_speed_settings','Edit Speed Settings',0,0,'Ability to change caching settings.',1,0),(8,'edit_page_theme','Change Theme',0,1,'Ability to change just the theme for this page.',1,0),(9,'edit_page_template','Change Page Template',0,0,'Ability to change just the page template for this page.',1,0),(10,'edit_page_page_type','Edit Page Type',0,0,'Change the type of an existing page.',1,0),(11,'edit_page_permissions','Edit Permissions',1,0,'Ability to change permissions for this page. Warning: by granting this a user could give themselves more access.',1,0),(12,'delete_page','Delete',1,0,'Ability to move this page to the site\'s Trash.',1,0),(13,'delete_page_versions','Delete Versions',1,0,'Ability to remove old versions of this page.',1,0),(14,'approve_page_versions','Approve Changes',1,0,'Can publish an unapproved version of the page.',1,0),(15,'add_subpage','Add Sub-Page',0,1,'Can add a page beneath the current page.',1,0),(16,'move_or_copy_page','Move or Copy Page',1,0,'Can move or copy this page to another location.',1,0),(17,'schedule_page_contents_guest_access','Schedule Guest Access',0,0,'Can control scheduled guest access to this page.',1,0),(18,'edit_page_multilingual_settings','Edit Multilingual Settings',0,0,'Controls whether a user can see the multilingual settings menu, re-map a page or set a page as ignored in multilingual settings.',1,0),(19,'add_block','Add Block',0,1,'Can add a block to any area on the site. If someone is added here they can add blocks to any area (unless that area has permissions that override these global permissions.)',8,0),(20,'add_stack','Add Stack',0,0,'Can add a stack or block from a stack to any area on the site. If someone is added here they can add stacks to any area (unless that area has permissions that override these global permissions.)',8,0),(21,'view_area','View Area',0,0,'Can view the area and its contents.',7,0),(22,'edit_area_contents','Edit Area Contents',0,0,'Can edit blocks within this area.',7,0),(23,'add_block_to_area','Add Block to Area',0,1,'Can add blocks to this area. This setting overrides the global Add Block permission for this area.',7,0),(24,'add_stack_to_area','Add Stack to Area',0,0,'Can add stacks to this area. This setting overrides the global Add Stack permission for this area.',7,0),(25,'add_layout_to_area','Add Layouts to Area',0,0,'Controls whether users get the ability to add layouts to a particular area.',7,0),(26,'edit_area_design','Edit Area Design',0,0,'Controls whether users see design controls and can modify an area\'s custom CSS.',7,0),(27,'edit_area_permissions','Edit Area Permissions',0,0,'Controls whether users can access the permissions on an area. Custom area permissions could override those of the page.',7,0),(28,'delete_area_contents','Delete Area Contents',0,0,'Controls whether users can delete blocks from this area.',7,0),(29,'schedule_area_contents_guest_access','Schedule Guest Access',0,0,'Controls whether users can schedule guest access permissions on blocks in this area. Guest Access is a shortcut for granting permissions just to the Guest Group.',7,0),(30,'view_block','View Block',0,0,'Controls whether users can view this block in the page.',9,0),(31,'edit_block','Edit Block',0,0,'Controls whether users can edit this block. This overrides any area or page permissions.',9,0),(32,'edit_block_custom_template','Change Custom Template',0,0,'Controls whether users can change the custom template on this block. This overrides any area or page permissions.',9,0),(33,'edit_block_cache_settings','Edit Cache Settings',0,0,'Controls whether users can change the block cache settings for this block instance.',9,0),(34,'edit_block_name','Edit Name',0,0,'Controls whether users can change the block\'s name (rarely used.)',9,0),(35,'delete_block','Delete Block',0,0,'Controls whether users can delete this block. This overrides any area or page permissions.',9,0),(36,'edit_block_design','Edit Design',0,0,'Controls whether users can set custom design properties or CSS on this block.',9,0),(37,'edit_block_permissions','Edit Permissions',0,0,'Controls whether users can change permissions on this block, potentially granting themselves or others greater access.',9,0),(38,'schedule_guest_access','Schedule Guest Access',0,0,'Controls whether users can schedule guest access permissions on this block. Guest Access is a shortcut for granting permissions just to the Guest Group.',9,0),(39,'view_file_set_file','View Files',0,0,'Can view and download files in the site.',5,0),(40,'search_file_set','Search Files in File Manager',0,0,'Can access the file manager',5,0),(41,'edit_file_set_file_properties','Edit File Properties',0,0,'Can edit a file\'s properties.',5,0),(42,'edit_file_set_file_contents','Edit File Contents',0,0,'Can edit or replace files in set.',5,0),(43,'copy_file_set_files','Copy File',0,0,'Can copy files in file set.',5,0),(44,'edit_file_set_permissions','Edit File Access',0,0,'Can edit access to file sets.',5,0),(45,'delete_file_set','Delete File Set',0,0,'Can delete file set.',5,0),(46,'delete_file_set_files','Delete File',0,0,'Can delete files in set.',5,0),(47,'add_file','Add File',0,1,'Can add files to set.',5,0),(48,'view_file','View Files',0,0,'Can view and download files.',6,0),(49,'view_file_in_file_manager','View File in File Manager',0,0,'Can access the File Manager.',6,0),(50,'edit_file_properties','Edit File Properties',0,0,'Can edit a file\'s properties.',6,0),(51,'edit_file_contents','Edit File Contents',0,0,'Can edit or replace files.',6,0),(52,'copy_file','Copy File',0,0,'Can copy file.',6,0),(53,'edit_file_permissions','Edit File Access',0,0,'Can edit access to file.',6,0),(54,'delete_file','Delete File',0,0,'Can delete file.',6,0),(55,'approve_basic_workflow_action','Approve or Deny',0,0,'Grant ability to approve workflow.',13,0),(56,'notify_on_basic_workflow_entry','Notify on Entry',0,0,'Notify approvers that a change has entered the workflow.',13,0),(57,'notify_on_basic_workflow_approve','Notify on Approve',0,0,'Notify approvers that a change has been approved.',13,0),(58,'notify_on_basic_workflow_deny','Notify on Deny',0,0,'Notify approvers that a change has been denied.',13,0),(59,'add_page_type','Add Pages of This Type',0,0,'',14,0),(60,'edit_page_type','Edit Page Type',0,0,'',14,0),(61,'delete_page_type','Delete Page Type',0,0,'',14,0),(62,'edit_page_type_permissions','Edit Page Type Permissions',0,0,'',14,0),(63,'edit_page_type_drafts','Edit Page Type Drafts',0,0,'',14,0),(64,'view_topic_tree_node','View Topic Tree Node',0,0,'',18,0),(65,'view_topic_category_tree_node','View Topic Category Tree Node',0,0,'',17,0),(66,'add_conversation_message','Add Message to Conversation',0,1,'',19,0),(67,'add_conversation_message_attachments','Add Message Attachments',0,0,'',19,0),(68,'edit_conversation_permissions','Edit Conversation Permissions',0,0,'',19,0),(69,'delete_conversation_message','Delete Message',0,0,'',19,0),(70,'edit_conversation_message','Edit Message',0,0,'',19,0),(71,'rate_conversation_message','Rate Message',0,0,'',19,0),(72,'flag_conversation_message','Flag Message',0,0,'',19,0),(73,'approve_conversation_message','Approve Message',0,0,'',19,0),(74,'edit_user_properties','Edit User Details',0,1,NULL,4,0),(75,'view_user_attributes','View User Attributes',0,1,NULL,4,0),(76,'activate_user','Activate/Deactivate User',0,0,NULL,4,0),(77,'sudo','Sign in as User',0,0,NULL,4,0),(78,'upgrade','Upgrade concrete5',0,0,NULL,10,0),(79,'access_group_search','Access Group Search',0,0,NULL,4,0),(80,'delete_user','Delete User',0,0,NULL,4,0),(81,'search_users_in_group','Search User Group',0,0,NULL,16,0),(82,'edit_group','Edit Group',0,0,NULL,16,0),(83,'assign_group','Assign Group',0,0,NULL,16,0),(84,'add_sub_group','Add Child Group',0,0,NULL,16,0),(85,'edit_group_permissions','Edit Group Permissions',0,0,NULL,16,0),(86,'access_page_type_permissions','Access Page Type Permissions',0,0,NULL,10,0),(87,'backup','Perform Backups',0,0,NULL,10,0),(88,'access_task_permissions','Access Task Permissions',0,0,NULL,10,0),(89,'access_sitemap','Access Sitemap',0,0,NULL,11,0),(90,'access_page_defaults','Access Page Type Defaults',0,0,NULL,10,0),(91,'customize_themes','Customize Themes',0,0,NULL,10,0),(92,'manage_layout_presets','Manage Layout Presets',0,0,NULL,10,0),(93,'empty_trash','Empty Trash',0,0,NULL,10,0),(94,'add_topic_tree','Add Topic Tree',0,0,NULL,10,0),(95,'remove_topic_tree','Remove Topic Tree',0,0,NULL,10,0),(96,'view_in_maintenance_mode','View Site in Maintenance Mode',0,0,'Ability to see and use the website when concrete5 is in maintenance mode.',10,0),(97,'uninstall_packages','Uninstall Packages',0,0,NULL,12,0),(98,'install_packages','Install Packages',0,0,NULL,12,0),(99,'view_newsflow','View Newsflow',0,0,NULL,12,0),(100,'access_user_search_export','Export Site Users',0,0,'Controls whether a user can export site users or not',4,0),(101,'access_user_search','Access User Search',0,0,'Controls whether a user can view the search user interface.',4,0),(102,'edit_gatherings','Edit Gatherings',0,0,'Can edit the footprint and items in all gatherings.',10,0),(103,'edit_gathering_items','Edit Gathering Items',0,0,'',15,0);
/*!40000 ALTER TABLE `PermissionKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PileContents`
--

DROP TABLE IF EXISTS `PileContents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PileContents` (
  `pcID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemType` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pcID`),
  KEY `pID` (`pID`,`displayOrder`),
  KEY `itemID` (`itemID`),
  KEY `itemType` (`itemType`,`itemID`,`pID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PileContents`
--

LOCK TABLES `PileContents` WRITE;
/*!40000 ALTER TABLE `PileContents` DISABLE KEYS */;
/*!40000 ALTER TABLE `PileContents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Piles`
--

DROP TABLE IF EXISTS `Piles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Piles` (
  `pID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `isDefault` tinyint(1) NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pID`),
  KEY `uID` (`uID`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Piles`
--

LOCK TABLES `Piles` WRITE;
/*!40000 ALTER TABLE `Piles` DISABLE KEYS */;
INSERT INTO `Piles` VALUES (1,1,1,'2017-06-26 15:52:45',NULL,'READY');
/*!40000 ALTER TABLE `Piles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QueueMessages`
--

DROP TABLE IF EXISTS `QueueMessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QueueMessages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `queue_id` int(10) unsigned NOT NULL,
  `handle` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `md5` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `timeout` decimal(14,0) DEFAULT NULL,
  `created` int(10) unsigned NOT NULL,
  PRIMARY KEY (`message_id`),
  UNIQUE KEY `message_handle` (`handle`),
  KEY `message_queueid` (`queue_id`),
  CONSTRAINT `queuemessages_ibfk_1` FOREIGN KEY (`queue_id`) REFERENCES `Queues` (`queue_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QueueMessages`
--

LOCK TABLES `QueueMessages` WRITE;
/*!40000 ALTER TABLE `QueueMessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `QueueMessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QueuePageDuplicationRelations`
--

DROP TABLE IF EXISTS `QueuePageDuplicationRelations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QueuePageDuplicationRelations` (
  `queue_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `originalCID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`originalCID`),
  KEY `originalCID` (`originalCID`,`queue_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QueuePageDuplicationRelations`
--

LOCK TABLES `QueuePageDuplicationRelations` WRITE;
/*!40000 ALTER TABLE `QueuePageDuplicationRelations` DISABLE KEYS */;
/*!40000 ALTER TABLE `QueuePageDuplicationRelations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Queues`
--

DROP TABLE IF EXISTS `Queues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Queues` (
  `queue_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `queue_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `timeout` int(10) unsigned NOT NULL DEFAULT '30',
  PRIMARY KEY (`queue_id`),
  KEY `queue_name` (`queue_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Queues`
--

LOCK TABLES `Queues` WRITE;
/*!40000 ALTER TABLE `Queues` DISABLE KEYS */;
/*!40000 ALTER TABLE `Queues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sessions`
--

DROP TABLE IF EXISTS `Sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sessions` (
  `sessionID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sessionValue` text COLLATE utf8_unicode_ci NOT NULL,
  `sessionTime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`sessionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sessions`
--

LOCK TABLES `Sessions` WRITE;
/*!40000 ALTER TABLE `Sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `Sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SignupRequests`
--

DROP TABLE IF EXISTS `SignupRequests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SignupRequests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ipFrom` tinyblob,
  `date_access` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `ipFrom` (`ipFrom`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SignupRequests`
--

LOCK TABLES `SignupRequests` WRITE;
/*!40000 ALTER TABLE `SignupRequests` DISABLE KEYS */;
/*!40000 ALTER TABLE `SignupRequests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SocialLinks`
--

DROP TABLE IF EXISTS `SocialLinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SocialLinks` (
  `slID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ssHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`slID`),
  UNIQUE KEY `ssHandle` (`ssHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SocialLinks`
--

LOCK TABLES `SocialLinks` WRITE;
/*!40000 ALTER TABLE `SocialLinks` DISABLE KEYS */;
INSERT INTO `SocialLinks` VALUES (1,'facebook','http://facebook.com/concrete5'),(2,'github','http://github.com/concrete5'),(3,'twitter','http://twitter.com/concrete5');
/*!40000 ALTER TABLE `SocialLinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Stacks`
--

DROP TABLE IF EXISTS `Stacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Stacks` (
  `stID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stType` int(10) unsigned NOT NULL DEFAULT '0',
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `stMultilingualSection` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`stID`),
  KEY `stType` (`stType`),
  KEY `stName` (`stName`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Stacks`
--

LOCK TABLES `Stacks` WRITE;
/*!40000 ALTER TABLE `Stacks` DISABLE KEYS */;
INSERT INTO `Stacks` VALUES (1,'Footer Contact',20,144,0),(2,'Footer Legal',20,145,0),(3,'Footer Navigation',20,146,0),(4,'Footer Site Title',20,147,0),(5,'Footer Social',20,148,0),(6,'Header Navigation',20,149,0),(7,'Header Search',20,150,0),(8,'Header Site Title',20,151,0);
/*!40000 ALTER TABLE `Stacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StyleCustomizerCustomCssRecords`
--

DROP TABLE IF EXISTS `StyleCustomizerCustomCssRecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StyleCustomizerCustomCssRecords` (
  `sccRecordID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`sccRecordID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StyleCustomizerCustomCssRecords`
--

LOCK TABLES `StyleCustomizerCustomCssRecords` WRITE;
/*!40000 ALTER TABLE `StyleCustomizerCustomCssRecords` DISABLE KEYS */;
/*!40000 ALTER TABLE `StyleCustomizerCustomCssRecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StyleCustomizerInlineStylePresets`
--

DROP TABLE IF EXISTS `StyleCustomizerInlineStylePresets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StyleCustomizerInlineStylePresets` (
  `pssPresetID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pssPresetName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `issID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pssPresetID`),
  KEY `issID` (`issID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StyleCustomizerInlineStylePresets`
--

LOCK TABLES `StyleCustomizerInlineStylePresets` WRITE;
/*!40000 ALTER TABLE `StyleCustomizerInlineStylePresets` DISABLE KEYS */;
/*!40000 ALTER TABLE `StyleCustomizerInlineStylePresets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StyleCustomizerInlineStyleSets`
--

DROP TABLE IF EXISTS `StyleCustomizerInlineStyleSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StyleCustomizerInlineStyleSets` (
  `issID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `backgroundColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `backgroundImageFileID` int(11) DEFAULT NULL,
  `backgroundRepeat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borderWidth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borderColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borderStyle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borderRadius` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `baseFontSize` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alignment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `textColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paddingTop` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paddingBottom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paddingLeft` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paddingRight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marginTop` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marginBottom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marginLeft` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marginRight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rotate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowHorizontal` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowVertical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowBlur` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowSpread` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customClass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hideOnExtraSmallDevice` tinyint(1) DEFAULT NULL,
  `hideOnSmallDevice` tinyint(1) DEFAULT NULL,
  `hideOnMediumDevice` tinyint(1) DEFAULT NULL,
  `hideOnLargeDevice` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`issID`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StyleCustomizerInlineStyleSets`
--

LOCK TABLES `StyleCustomizerInlineStyleSets` WRITE;
/*!40000 ALTER TABLE `StyleCustomizerInlineStyleSets` DISABLE KEYS */;
INSERT INTO `StyleCustomizerInlineStyleSets` VALUES (1,'',0,'','','','','','','','','','','','','','','','','','','','','','','','block-sidebar-wrapped',0,0,0,0),(2,'',0,'','','','','','','','','','','','','','','','','','','','','','','','block-sidebar-wrapped',0,0,0,0),(3,'',0,'','','','','','','','','','','','','','','','','','','','','','','','block-sidebar-wrapped',0,0,0,0),(4,'',0,'','','','','','','','','','','','','','','','','','','','','','','','blog-entry-list',0,0,0,0),(5,'',0,'','','','','','','','','','','','','','','','','','','','','','','','block-sidebar-wrapped',0,0,0,0),(6,'',0,'','','','','','','','','','','','','','','','','','','','','','','','block-sidebar-padded',0,0,0,0),(7,'',0,'no-repeat','','','none','','','','','','','','','','','','','','','','','','','','',0,0,0,0),(8,'',0,'','','','','','','','','','','','','','','','','','','','','','','','feature-home-page',0,0,0,0),(9,'',0,'','','','','','','','','','','','','','','','','','','','','','','','feature-home-page',0,0,0,0),(10,'',0,'','','','','','','','','','','','','','','','','','','','','','','','feature-home-page',0,0,0,0),(11,'',0,'','','','','','','','','','','','','','','80px','','','','','','','','','',0,0,0,0),(12,'',0,'','','','','','','','','','','','','','','','','','','','','','','','recent-blog-entry',0,0,0,0),(13,'',0,'','','','','','','','','','','','','','','','','','','','','','','','recent-blog-entry',0,0,0,0),(14,'',0,'','','','','','','','','','','','','','','','','','','','','','','','area-content-accent',0,0,0,0),(15,'',0,'','','','','','','','','','','','','','','','','','','','','','','','area-content-accent',0,0,0,0),(16,'',0,'','','','','','','','','','','','','','','','','','','','','','','','testimonial-bio',0,0,0,0),(17,'',0,'','','','','','','','','','','','','','','','','','','','','','','','testimonial-bio',0,0,0,0),(18,'',0,'','','','','','','','','','','','','','','','','','','','','','','','testimonial-bio',0,0,0,0),(19,'',0,'','','','','','','','','','','','','','','','','','','','','','','','testimonial-bio',0,0,0,0),(20,'',0,'','','','','','','','','','','','','','','','','','','','','','','','testimonial-bio',0,0,0,0),(21,'',0,'','','','','','','','','','','','','','','','','','','','','','','','testimonial-bio',0,0,0,0),(22,'',0,'','','','','','','','','','','','','','','','','','','','','','','','testimonial-bio',0,0,0,0),(23,'',0,'','','','','','','','','','','','','','','','','','','','','','','','testimonial-bio',0,0,0,0),(24,'',0,'','','','','','','','','','','','','','','','','','','','','','','','image-right-tilt',0,0,0,0),(25,'',0,'','','','','','','','','','','','','','','','','','','','','','','','image-circle',0,0,0,0),(26,'',0,'','','','','','','','','','','','','','','','','','','','','','','','image-right-tilt',0,0,0,0),(27,'',0,'','','','','','','','','','','','','','','','','','','','','','','','page-list-with-buttons',0,0,0,0);
/*!40000 ALTER TABLE `StyleCustomizerInlineStyleSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StyleCustomizerValueLists`
--

DROP TABLE IF EXISTS `StyleCustomizerValueLists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StyleCustomizerValueLists` (
  `scvlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`scvlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StyleCustomizerValueLists`
--

LOCK TABLES `StyleCustomizerValueLists` WRITE;
/*!40000 ALTER TABLE `StyleCustomizerValueLists` DISABLE KEYS */;
/*!40000 ALTER TABLE `StyleCustomizerValueLists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StyleCustomizerValues`
--

DROP TABLE IF EXISTS `StyleCustomizerValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StyleCustomizerValues` (
  `scvID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `scvlID` int(10) unsigned DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`scvID`),
  KEY `scvlID` (`scvlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StyleCustomizerValues`
--

LOCK TABLES `StyleCustomizerValues` WRITE;
/*!40000 ALTER TABLE `StyleCustomizerValues` DISABLE KEYS */;
/*!40000 ALTER TABLE `StyleCustomizerValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemAntispamLibraries`
--

DROP TABLE IF EXISTS `SystemAntispamLibraries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemAntispamLibraries` (
  `saslHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `saslName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `saslIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`saslHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemAntispamLibraries`
--

LOCK TABLES `SystemAntispamLibraries` WRITE;
/*!40000 ALTER TABLE `SystemAntispamLibraries` DISABLE KEYS */;
/*!40000 ALTER TABLE `SystemAntispamLibraries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemCaptchaLibraries`
--

DROP TABLE IF EXISTS `SystemCaptchaLibraries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemCaptchaLibraries` (
  `sclHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `sclName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sclIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sclHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemCaptchaLibraries`
--

LOCK TABLES `SystemCaptchaLibraries` WRITE;
/*!40000 ALTER TABLE `SystemCaptchaLibraries` DISABLE KEYS */;
INSERT INTO `SystemCaptchaLibraries` VALUES ('securimage','SecurImage (Default)',1,0);
/*!40000 ALTER TABLE `SystemCaptchaLibraries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemContentEditorSnippets`
--

DROP TABLE IF EXISTS `SystemContentEditorSnippets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemContentEditorSnippets` (
  `scsHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `scsName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scsIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`scsHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemContentEditorSnippets`
--

LOCK TABLES `SystemContentEditorSnippets` WRITE;
/*!40000 ALTER TABLE `SystemContentEditorSnippets` DISABLE KEYS */;
INSERT INTO `SystemContentEditorSnippets` VALUES ('page_name','Page Name',1,0),('user_name','User Name',1,0);
/*!40000 ALTER TABLE `SystemContentEditorSnippets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemDatabaseMigrations`
--

DROP TABLE IF EXISTS `SystemDatabaseMigrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemDatabaseMigrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemDatabaseMigrations`
--

LOCK TABLES `SystemDatabaseMigrations` WRITE;
/*!40000 ALTER TABLE `SystemDatabaseMigrations` DISABLE KEYS */;
INSERT INTO `SystemDatabaseMigrations` VALUES ('20150731000000');
/*!40000 ALTER TABLE `SystemDatabaseMigrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemDatabaseQueryLog`
--

DROP TABLE IF EXISTS `SystemDatabaseQueryLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemDatabaseQueryLog` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `query` text COLLATE utf8_unicode_ci,
  `params` text COLLATE utf8_unicode_ci,
  `executionMS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemDatabaseQueryLog`
--

LOCK TABLES `SystemDatabaseQueryLog` WRITE;
/*!40000 ALTER TABLE `SystemDatabaseQueryLog` DISABLE KEYS */;
/*!40000 ALTER TABLE `SystemDatabaseQueryLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TopicTrees`
--

DROP TABLE IF EXISTS `TopicTrees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TopicTrees` (
  `treeID` int(10) unsigned NOT NULL DEFAULT '0',
  `topicTreeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`treeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TopicTrees`
--

LOCK TABLES `TopicTrees` WRITE;
/*!40000 ALTER TABLE `TopicTrees` DISABLE KEYS */;
INSERT INTO `TopicTrees` VALUES (2,'Blog Entries'),(3,'Projects');
/*!40000 ALTER TABLE `TopicTrees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TreeCategoryNodes`
--

DROP TABLE IF EXISTS `TreeCategoryNodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TreeCategoryNodes` (
  `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeNodeCategoryName` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`treeNodeID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TreeCategoryNodes`
--

LOCK TABLES `TreeCategoryNodes` WRITE;
/*!40000 ALTER TABLE `TreeCategoryNodes` DISABLE KEYS */;
INSERT INTO `TreeCategoryNodes` VALUES (5,''),(6,'Reviews'),(14,'');
/*!40000 ALTER TABLE `TreeCategoryNodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TreeGroupNodes`
--

DROP TABLE IF EXISTS `TreeGroupNodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TreeGroupNodes` (
  `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`treeNodeID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TreeGroupNodes`
--

LOCK TABLES `TreeGroupNodes` WRITE;
/*!40000 ALTER TABLE `TreeGroupNodes` DISABLE KEYS */;
INSERT INTO `TreeGroupNodes` VALUES (2,1),(3,2),(4,3);
/*!40000 ALTER TABLE `TreeGroupNodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TreeNodePermissionAssignments`
--

DROP TABLE IF EXISTS `TreeNodePermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TreeNodePermissionAssignments` (
  `treeNodeID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`treeNodeID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TreeNodePermissionAssignments`
--

LOCK TABLES `TreeNodePermissionAssignments` WRITE;
/*!40000 ALTER TABLE `TreeNodePermissionAssignments` DISABLE KEYS */;
INSERT INTO `TreeNodePermissionAssignments` VALUES (1,81,95),(1,82,96),(1,83,97),(1,84,98),(1,85,99),(5,65,31),(14,65,32);
/*!40000 ALTER TABLE `TreeNodePermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TreeNodeTypes`
--

DROP TABLE IF EXISTS `TreeNodeTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TreeNodeTypes` (
  `treeNodeTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeNodeTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `pkgID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`treeNodeTypeID`),
  UNIQUE KEY `treeNodeTypeHandle` (`treeNodeTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TreeNodeTypes`
--

LOCK TABLES `TreeNodeTypes` WRITE;
/*!40000 ALTER TABLE `TreeNodeTypes` DISABLE KEYS */;
INSERT INTO `TreeNodeTypes` VALUES (1,'group',0),(2,'topic_category',0),(3,'topic',0);
/*!40000 ALTER TABLE `TreeNodeTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TreeNodes`
--

DROP TABLE IF EXISTS `TreeNodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TreeNodes` (
  `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeNodeTypeID` int(10) unsigned DEFAULT '0',
  `treeID` int(10) unsigned DEFAULT '0',
  `treeNodeParentID` int(10) unsigned DEFAULT '0',
  `treeNodeDisplayOrder` int(10) unsigned DEFAULT '0',
  `treeNodeOverridePermissions` tinyint(1) DEFAULT '0',
  `inheritPermissionsFromTreeNodeID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`treeNodeID`),
  KEY `treeNodeParentID` (`treeNodeParentID`),
  KEY `treeNodeTypeID` (`treeNodeTypeID`),
  KEY `treeID` (`treeID`),
  KEY `inheritPermissionsFromTreeNodeID` (`inheritPermissionsFromTreeNodeID`,`treeNodeID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TreeNodes`
--

LOCK TABLES `TreeNodes` WRITE;
/*!40000 ALTER TABLE `TreeNodes` DISABLE KEYS */;
INSERT INTO `TreeNodes` VALUES (1,1,1,0,0,1,1),(2,1,1,1,0,0,1),(3,1,1,1,1,0,1),(4,1,1,1,2,0,1),(5,2,2,0,0,1,5),(6,2,2,5,0,0,5),(7,3,2,6,0,0,5),(8,3,2,6,1,0,5),(9,3,2,6,2,0,5),(10,3,2,6,3,0,5),(11,3,2,5,1,0,5),(12,3,2,5,2,0,5),(13,3,2,5,3,0,5),(14,2,3,0,0,1,14),(15,3,3,14,0,0,14),(16,3,3,14,1,0,14),(17,3,3,14,2,0,14),(18,3,3,14,3,0,14);
/*!40000 ALTER TABLE `TreeNodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TreeTopicNodes`
--

DROP TABLE IF EXISTS `TreeTopicNodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TreeTopicNodes` (
  `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeNodeTopicName` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`treeNodeID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TreeTopicNodes`
--

LOCK TABLES `TreeTopicNodes` WRITE;
/*!40000 ALTER TABLE `TreeTopicNodes` DISABLE KEYS */;
INSERT INTO `TreeTopicNodes` VALUES (7,'Gadgets'),(8,'Movies'),(9,'Books'),(10,'Music'),(11,'Projects'),(12,'Sports'),(13,'Humor'),(15,'Crafts'),(16,'Homework'),(17,'Supplies'),(18,'Activities');
/*!40000 ALTER TABLE `TreeTopicNodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TreeTypes`
--

DROP TABLE IF EXISTS `TreeTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TreeTypes` (
  `treeTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `pkgID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`treeTypeID`),
  UNIQUE KEY `treeTypeHandle` (`treeTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TreeTypes`
--

LOCK TABLES `TreeTypes` WRITE;
/*!40000 ALTER TABLE `TreeTypes` DISABLE KEYS */;
INSERT INTO `TreeTypes` VALUES (1,'group',0),(2,'topic',0);
/*!40000 ALTER TABLE `TreeTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Trees`
--

DROP TABLE IF EXISTS `Trees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Trees` (
  `treeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeTypeID` int(10) unsigned DEFAULT '0',
  `treeDateAdded` datetime DEFAULT NULL,
  `rootTreeNodeID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`treeID`),
  KEY `treeTypeID` (`treeTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Trees`
--

LOCK TABLES `Trees` WRITE;
/*!40000 ALTER TABLE `Trees` DISABLE KEYS */;
INSERT INTO `Trees` VALUES (1,1,'2017-06-26 14:57:49',1),(2,2,'2017-06-26 14:59:03',5),(3,2,'2017-06-26 14:59:03',14);
/*!40000 ALTER TABLE `Trees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserAttributeKeys`
--

DROP TABLE IF EXISTS `UserAttributeKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserAttributeKeys` (
  `akID` int(10) unsigned NOT NULL,
  `uakProfileDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakMemberListDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakProfileEdit` tinyint(1) NOT NULL DEFAULT '1',
  `uakProfileEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEdit` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned DEFAULT '0',
  `uakIsActive` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserAttributeKeys`
--

LOCK TABLES `UserAttributeKeys` WRITE;
/*!40000 ALTER TABLE `UserAttributeKeys` DISABLE KEYS */;
INSERT INTO `UserAttributeKeys` VALUES (12,0,0,1,0,1,0,1,1),(13,0,0,1,0,1,0,2,1),(16,0,0,0,0,0,0,3,1);
/*!40000 ALTER TABLE `UserAttributeKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserAttributeValues`
--

DROP TABLE IF EXISTS `UserAttributeValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserAttributeValues` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`uID`,`akID`),
  KEY `akID` (`akID`),
  KEY `avID` (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserAttributeValues`
--

LOCK TABLES `UserAttributeValues` WRITE;
/*!40000 ALTER TABLE `UserAttributeValues` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserAttributeValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserBannedIPs`
--

DROP TABLE IF EXISTS `UserBannedIPs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserBannedIPs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ipFrom` tinyblob,
  `ipTo` tinyblob,
  `banCode` tinyint(1) NOT NULL DEFAULT '1',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `isManual` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ipFrom` (`ipFrom`(32),`ipTo`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserBannedIPs`
--

LOCK TABLES `UserBannedIPs` WRITE;
/*!40000 ALTER TABLE `UserBannedIPs` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserBannedIPs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserGroups`
--

DROP TABLE IF EXISTS `UserGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserGroups` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `ugEntered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`uID`,`gID`),
  KEY `uID` (`uID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserGroups`
--

LOCK TABLES `UserGroups` WRITE;
/*!40000 ALTER TABLE `UserGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionEditPropertyAccessList`
--

DROP TABLE IF EXISTS `UserPermissionEditPropertyAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionEditPropertyAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `uName` tinyint(1) DEFAULT '0',
  `uEmail` tinyint(1) DEFAULT '0',
  `uPassword` tinyint(1) DEFAULT '0',
  `uAvatar` tinyint(1) DEFAULT '0',
  `uTimezone` tinyint(1) DEFAULT '0',
  `uDefaultLanguage` tinyint(1) DEFAULT '0',
  `attributePermission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionEditPropertyAccessList`
--

LOCK TABLES `UserPermissionEditPropertyAccessList` WRITE;
/*!40000 ALTER TABLE `UserPermissionEditPropertyAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionEditPropertyAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionEditPropertyAttributeAccessListCustom`
--

DROP TABLE IF EXISTS `UserPermissionEditPropertyAttributeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionEditPropertyAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`),
  KEY `peID` (`peID`),
  KEY `akID` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionEditPropertyAttributeAccessListCustom`
--

LOCK TABLES `UserPermissionEditPropertyAttributeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `UserPermissionEditPropertyAttributeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionEditPropertyAttributeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionViewAttributeAccessList`
--

DROP TABLE IF EXISTS `UserPermissionViewAttributeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionViewAttributeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionViewAttributeAccessList`
--

LOCK TABLES `UserPermissionViewAttributeAccessList` WRITE;
/*!40000 ALTER TABLE `UserPermissionViewAttributeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionViewAttributeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionViewAttributeAccessListCustom`
--

DROP TABLE IF EXISTS `UserPermissionViewAttributeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionViewAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`),
  KEY `peID` (`peID`),
  KEY `akID` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionViewAttributeAccessListCustom`
--

LOCK TABLES `UserPermissionViewAttributeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `UserPermissionViewAttributeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionViewAttributeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPointActions`
--

DROP TABLE IF EXISTS `UserPointActions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPointActions` (
  `upaID` int(11) NOT NULL AUTO_INCREMENT,
  `upaHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upaName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upaDefaultPoints` int(11) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `upaHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `upaIsActive` tinyint(1) NOT NULL DEFAULT '1',
  `gBadgeID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`upaID`),
  UNIQUE KEY `upaHandle` (`upaHandle`),
  KEY `pkgID` (`pkgID`),
  KEY `gBBadgeID` (`gBadgeID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPointActions`
--

LOCK TABLES `UserPointActions` WRITE;
/*!40000 ALTER TABLE `UserPointActions` DISABLE KEYS */;
INSERT INTO `UserPointActions` VALUES (1,'won_badge','Won a Badge',5,0,1,1,0);
/*!40000 ALTER TABLE `UserPointActions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPointHistory`
--

DROP TABLE IF EXISTS `UserPointHistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPointHistory` (
  `upID` int(11) NOT NULL AUTO_INCREMENT,
  `upuID` int(11) NOT NULL DEFAULT '0',
  `upaID` int(11) DEFAULT '0',
  `upPoints` int(11) DEFAULT '0',
  `object` longtext COLLATE utf8_unicode_ci,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`upID`),
  KEY `upuID` (`upuID`),
  KEY `upaID` (`upaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPointHistory`
--

LOCK TABLES `UserPointHistory` WRITE;
/*!40000 ALTER TABLE `UserPointHistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPointHistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPrivateMessages`
--

DROP TABLE IF EXISTS `UserPrivateMessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPrivateMessages` (
  `msgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgDateCreated` datetime NOT NULL,
  `msgSubject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `msgBody` text COLLATE utf8_unicode_ci,
  `uToID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msgID`),
  KEY `uAuthorID` (`uAuthorID`,`msgDateCreated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPrivateMessages`
--

LOCK TABLES `UserPrivateMessages` WRITE;
/*!40000 ALTER TABLE `UserPrivateMessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPrivateMessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPrivateMessagesTo`
--

DROP TABLE IF EXISTS `UserPrivateMessagesTo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPrivateMessagesTo` (
  `msgID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgMailboxID` int(11) NOT NULL,
  `msgIsNew` tinyint(1) NOT NULL DEFAULT '0',
  `msgIsUnread` tinyint(1) NOT NULL DEFAULT '0',
  `msgIsReplied` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`msgID`,`uID`,`uAuthorID`,`msgMailboxID`),
  KEY `uID` (`uID`),
  KEY `uAuthorID` (`uAuthorID`),
  KEY `msgFolderID` (`msgMailboxID`),
  KEY `msgIsNew` (`msgIsNew`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPrivateMessagesTo`
--

LOCK TABLES `UserPrivateMessagesTo` WRITE;
/*!40000 ALTER TABLE `UserPrivateMessagesTo` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPrivateMessagesTo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserSearchIndexAttributes`
--

DROP TABLE IF EXISTS `UserSearchIndexAttributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserSearchIndexAttributes` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `ak_profile_private_messages_enabled` tinyint(1) DEFAULT '0',
  `ak_profile_private_messages_notification_enabled` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserSearchIndexAttributes`
--

LOCK TABLES `UserSearchIndexAttributes` WRITE;
/*!40000 ALTER TABLE `UserSearchIndexAttributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserSearchIndexAttributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserValidationHashes`
--

DROP TABLE IF EXISTS `UserValidationHashes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserValidationHashes` (
  `uvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `uHash` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `uDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uvhID`),
  KEY `uID` (`uID`,`type`),
  KEY `uHash` (`uHash`,`type`),
  KEY `uDateGenerated` (`uDateGenerated`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserValidationHashes`
--

LOCK TABLES `UserValidationHashes` WRITE;
/*!40000 ALTER TABLE `UserValidationHashes` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserValidationHashes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `uID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uName` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `uEmail` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `uPassword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uIsActive` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `uIsValidated` tinyint(1) NOT NULL DEFAULT '-1',
  `uIsFullRecord` tinyint(1) NOT NULL DEFAULT '1',
  `uDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uLastPasswordChange` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uHasAvatar` tinyint(1) NOT NULL DEFAULT '0',
  `uLastOnline` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastIP` tinyblob,
  `uPreviousLogin` int(10) unsigned DEFAULT '0',
  `uNumLogins` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastAuthTypeID` int(10) unsigned NOT NULL DEFAULT '0',
  `uTimezone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uDefaultLanguage` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uID`),
  UNIQUE KEY `uName` (`uName`),
  KEY `uEmail` (`uEmail`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'admin','e.bird.onishi@gmail.com','$2a$12$aXwEdmva9QkTCUtq19HQhOnCcj991C5pOvy3iDPR1wyt/0lIiaTlq','1',-1,1,'2017-06-26 14:57:49','2017-06-26 14:57:49',0,1498580545,1498577597,'ac110001',1498571458,4,1,NULL,NULL);
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowProgress`
--

DROP TABLE IF EXISTS `WorkflowProgress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowProgress` (
  `wpID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpCategoryID` int(10) unsigned DEFAULT NULL,
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpApproved` tinyint(1) NOT NULL DEFAULT '0',
  `wpDateAdded` datetime DEFAULT NULL,
  `wpDateLastAction` datetime DEFAULT NULL,
  `wpCurrentStatus` int(11) NOT NULL DEFAULT '0',
  `wrID` int(11) NOT NULL DEFAULT '0',
  `wpIsCompleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`wpID`),
  KEY `wpCategoryID` (`wpCategoryID`),
  KEY `wfID` (`wfID`),
  KEY `wrID` (`wrID`,`wpID`,`wpIsCompleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowProgress`
--

LOCK TABLES `WorkflowProgress` WRITE;
/*!40000 ALTER TABLE `WorkflowProgress` DISABLE KEYS */;
/*!40000 ALTER TABLE `WorkflowProgress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowProgressCategories`
--

DROP TABLE IF EXISTS `WorkflowProgressCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowProgressCategories` (
  `wpCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpCategoryHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`wpCategoryID`),
  UNIQUE KEY `wpCategoryHandle` (`wpCategoryHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowProgressCategories`
--

LOCK TABLES `WorkflowProgressCategories` WRITE;
/*!40000 ALTER TABLE `WorkflowProgressCategories` DISABLE KEYS */;
INSERT INTO `WorkflowProgressCategories` VALUES (1,'page',NULL),(2,'file',NULL),(3,'user',NULL);
/*!40000 ALTER TABLE `WorkflowProgressCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowProgressHistory`
--

DROP TABLE IF EXISTS `WorkflowProgressHistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowProgressHistory` (
  `wphID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `object` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`wphID`),
  KEY `wpID` (`wpID`,`timestamp`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowProgressHistory`
--

LOCK TABLES `WorkflowProgressHistory` WRITE;
/*!40000 ALTER TABLE `WorkflowProgressHistory` DISABLE KEYS */;
INSERT INTO `WorkflowProgressHistory` VALUES (1,1,'2017-06-26 15:46:51','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:1:\"1\";}'),(2,2,'2017-06-26 16:08:46','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"153\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:1:\"2\";}'),(3,3,'2017-06-26 16:22:31','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"153\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:1:\"3\";}'),(4,4,'2017-06-26 16:24:08','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"155\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:1:\"4\";}'),(5,5,'2017-06-26 16:26:01','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"186\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:1:\"5\";}'),(6,6,'2017-06-26 16:26:42','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"155\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:1:\"6\";}'),(7,7,'2017-06-26 16:27:41','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"188\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:1:\"7\";}'),(8,8,'2017-06-26 16:27:54','O:46:\"Concrete\\Core\\Workflow\\Request\\MovePageRequest\":9:{s:12:\"\0*\0targetCID\";s:1:\"1\";s:14:\"\0*\0wrStatusNum\";i:50;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"16\";s:3:\"cID\";s:3:\"186\";s:15:\"saveOldPagePath\";N;s:4:\"wrID\";s:1:\"8\";}'),(9,1,'2017-06-27 15:37:39','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"158\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:1:\"1\";}'),(10,2,'2017-06-27 15:38:33','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"158\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:1:\"2\";}'),(11,3,'2017-06-27 15:38:51','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"158\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:1:\"3\";}'),(12,4,'2017-06-27 15:39:25','O:46:\"Concrete\\Core\\Workflow\\Request\\MovePageRequest\":9:{s:12:\"\0*\0targetCID\";s:3:\"158\";s:14:\"\0*\0wrStatusNum\";i:50;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"16\";s:3:\"cID\";s:3:\"188\";s:15:\"saveOldPagePath\";N;s:4:\"wrID\";s:1:\"4\";}'),(13,5,'2017-06-27 15:39:39','O:46:\"Concrete\\Core\\Workflow\\Request\\MovePageRequest\":9:{s:12:\"\0*\0targetCID\";s:3:\"158\";s:14:\"\0*\0wrStatusNum\";i:50;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"16\";s:3:\"cID\";s:3:\"186\";s:15:\"saveOldPagePath\";N;s:4:\"wrID\";s:1:\"5\";}'),(14,6,'2017-06-27 15:40:04','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"170\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:1:\"6\";}'),(15,7,'2017-06-27 15:40:21','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"170\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:1:\"7\";}'),(16,8,'2017-06-27 15:41:20','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"170\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:1:\"8\";}'),(17,9,'2017-06-27 15:41:32','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"188\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:1:\"9\";}'),(18,10,'2017-06-27 15:42:51','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"172\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"10\";}'),(19,11,'2017-06-27 15:43:17','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"172\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"11\";}'),(20,12,'2017-06-27 15:43:36','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"172\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:2:\"12\";}'),(21,13,'2017-06-27 15:43:51','O:46:\"Concrete\\Core\\Workflow\\Request\\MovePageRequest\":9:{s:12:\"\0*\0targetCID\";s:1:\"1\";s:14:\"\0*\0wrStatusNum\";i:50;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"16\";s:3:\"cID\";s:3:\"172\";s:15:\"saveOldPagePath\";N;s:4:\"wrID\";s:2:\"13\";}'),(22,14,'2017-06-27 15:45:22','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"171\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"14\";}'),(23,15,'2017-06-27 15:45:39','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"171\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"15\";}'),(24,16,'2017-06-27 15:45:54','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"171\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:2:\"16\";}'),(25,17,'2017-06-27 15:46:08','O:46:\"Concrete\\Core\\Workflow\\Request\\MovePageRequest\":9:{s:12:\"\0*\0targetCID\";s:1:\"1\";s:14:\"\0*\0wrStatusNum\";i:50;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"16\";s:3:\"cID\";s:3:\"171\";s:15:\"saveOldPagePath\";N;s:4:\"wrID\";s:2:\"17\";}');
/*!40000 ALTER TABLE `WorkflowProgressHistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowRequestObjects`
--

DROP TABLE IF EXISTS `WorkflowRequestObjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowRequestObjects` (
  `wrID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wrObject` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`wrID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowRequestObjects`
--

LOCK TABLES `WorkflowRequestObjects` WRITE;
/*!40000 ALTER TABLE `WorkflowRequestObjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `WorkflowRequestObjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowTypes`
--

DROP TABLE IF EXISTS `WorkflowTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowTypes` (
  `wftID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wftHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `wftName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wftID`),
  UNIQUE KEY `wftHandle` (`wftHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowTypes`
--

LOCK TABLES `WorkflowTypes` WRITE;
/*!40000 ALTER TABLE `WorkflowTypes` DISABLE KEYS */;
INSERT INTO `WorkflowTypes` VALUES (1,'basic','Basic Workflow',0);
/*!40000 ALTER TABLE `WorkflowTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Workflows`
--

DROP TABLE IF EXISTS `Workflows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Workflows` (
  `wfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wfName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wftID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wfID`),
  UNIQUE KEY `wfName` (`wfName`),
  KEY `wftID` (`wftID`,`wfID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Workflows`
--

LOCK TABLES `Workflows` WRITE;
/*!40000 ALTER TABLE `Workflows` DISABLE KEYS */;
/*!40000 ALTER TABLE `Workflows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atAddress`
--

DROP TABLE IF EXISTS `atAddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atAddress` (
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  `address1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_province` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atAddress`
--

LOCK TABLES `atAddress` WRITE;
/*!40000 ALTER TABLE `atAddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `atAddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atAddressCustomCountries`
--

DROP TABLE IF EXISTS `atAddressCustomCountries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atAddressCustomCountries` (
  `atAddressCustomCountryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `country` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`atAddressCustomCountryID`),
  KEY `akID` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atAddressCustomCountries`
--

LOCK TABLES `atAddressCustomCountries` WRITE;
/*!40000 ALTER TABLE `atAddressCustomCountries` DISABLE KEYS */;
/*!40000 ALTER TABLE `atAddressCustomCountries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atAddressSettings`
--

DROP TABLE IF EXISTS `atAddressSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atAddressSettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akHasCustomCountries` tinyint(1) NOT NULL DEFAULT '0',
  `akDefaultCountry` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atAddressSettings`
--

LOCK TABLES `atAddressSettings` WRITE;
/*!40000 ALTER TABLE `atAddressSettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `atAddressSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atBoolean`
--

DROP TABLE IF EXISTS `atBoolean`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atBoolean` (
  `avID` int(10) unsigned NOT NULL,
  `value` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atBoolean`
--

LOCK TABLES `atBoolean` WRITE;
/*!40000 ALTER TABLE `atBoolean` DISABLE KEYS */;
INSERT INTO `atBoolean` VALUES (9,1),(16,1),(18,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(42,1),(43,1),(47,1),(51,1),(98,1),(106,1),(107,1),(108,1),(145,1),(146,1),(147,1),(158,1),(164,1),(180,1),(185,0),(195,1),(197,0),(198,1),(203,0),(210,0),(218,0),(222,0),(226,0),(230,0),(234,0),(238,0),(242,0),(246,0);
/*!40000 ALTER TABLE `atBoolean` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atBooleanSettings`
--

DROP TABLE IF EXISTS `atBooleanSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atBooleanSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akCheckedByDefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atBooleanSettings`
--

LOCK TABLES `atBooleanSettings` WRITE;
/*!40000 ALTER TABLE `atBooleanSettings` DISABLE KEYS */;
INSERT INTO `atBooleanSettings` VALUES (5,0),(6,0),(9,0),(10,0),(11,0),(12,1),(13,1),(20,1);
/*!40000 ALTER TABLE `atBooleanSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atDateTime`
--

DROP TABLE IF EXISTS `atDateTime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atDateTime` (
  `avID` int(10) unsigned NOT NULL,
  `value` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atDateTime`
--

LOCK TABLES `atDateTime` WRITE;
/*!40000 ALTER TABLE `atDateTime` DISABLE KEYS */;
/*!40000 ALTER TABLE `atDateTime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atDateTimeSettings`
--

DROP TABLE IF EXISTS `atDateTimeSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atDateTimeSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akDateDisplayMode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atDateTimeSettings`
--

LOCK TABLES `atDateTimeSettings` WRITE;
/*!40000 ALTER TABLE `atDateTimeSettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `atDateTimeSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atDefault`
--

DROP TABLE IF EXISTS `atDefault`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atDefault` (
  `avID` int(10) unsigned NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atDefault`
--

LOCK TABLES `atDefault` WRITE;
/*!40000 ALTER TABLE `atDefault` DISABLE KEYS */;
INSERT INTO `atDefault` VALUES (1,'fa fa-th-large'),(2,'pages, add page, delete page, copy, move, alias'),(3,'pages, add page, delete page, copy, move, alias'),(4,'pages, add page, delete page, copy, move, alias, bulk'),(5,'find page, search page, search, find, pages, sitemap'),(6,'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute'),(7,'file, file attributes, title, attribute, description, rename'),(8,'files, category, categories'),(10,'new file set'),(11,'users, groups, people, find, delete user, remove user, change password, password'),(12,'find, search, people, delete user, remove user, change password, password'),(13,'user, group, people, permissions, expire, badges'),(14,'user attributes, user data, gather data, registration data'),(15,'new user, create'),(17,'new user group, new group, group, create'),(19,'group set'),(20,'community, points, karma'),(21,'action, community actions'),(22,'forms, log, error, email, mysql, exception, survey'),(23,'forms, questions, response, data'),(24,'questions, quiz, response'),(25,'forms, log, error, email, mysql, exception, survey, history'),(26,'new theme, theme, active theme, change theme, template, css'),(27,'page types'),(36,'page attributes, custom'),(37,'single, page, custom, application'),(38,'atom, rss, feed, syndication'),(39,'icon-bullhorn'),(40,'add workflow, remove workflow'),(41,'stacks, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo'),(44,'edit stacks, view stacks, all stacks'),(45,'block, refresh, custom'),(46,'add-on, addon, add on, package, app, ecommerce, discussions, forums, themes, templates, blocks'),(48,'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks'),(49,'update, upgrade'),(50,'concrete5.org, my account, marketplace'),(52,'buy theme, new theme, marketplace, template'),(53,'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace'),(54,'dashboard, configuration'),(55,'website name, title'),(56,'accessibility, easy mode'),(57,'sharing, facebook, twitter'),(58,'logo, favicon, iphone, icon, bookmark'),(59,'tinymce, content block, fonts, editor, content, overlay'),(60,'translate, translation, internationalization, multilingual'),(61,'timezone, profile, locale'),(62,'multilingual, localization, internationalization, i18n'),(63,'vanity, pretty url, redirection, hostname, canonical, seo, pageview, view'),(64,'bulk, seo, change keywords, engine, optimization, search'),(65,'traffic, statistics, google analytics, quant, pageviews, hits'),(66,'pretty, slug'),(67,'configure search, site search, search option'),(68,'file options, file manager, upload, modify'),(69,'security, files, media, extension, manager, upload'),(70,'images, picture, responsive, retina'),(71,'security, alternate storage, hide files'),(72,'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching'),(73,'cache option, turn off cache, no cache, page cache, caching'),(74,'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old'),(75,'queries, database, mysql'),(76,'editors, hide site, offline, private, public, access'),(77,'security, actions, administrator, admin, package, marketplace, search'),(78,'security, lock ip, lock out, block ip, address, restrict, access'),(79,'security, registration'),(80,'antispam, block spam, security'),(81,'lock site, under construction, hide, hidden'),(82,'profile, login, redirect, specific, dashboard, administrators'),(83,'member profile, member page, community, forums, social, avatar'),(84,'signup, new user, community, public registration, public, registration'),(85,'auth, authentication, types, oauth, facebook, login, registration'),(86,'smtp, mail settings'),(87,'email server, mail settings, mail configuration, external, internal'),(88,'test smtp, test mail'),(89,'email server, mail settings, mail configuration, private message, message system, import, email, message'),(90,'conversations'),(91,'conversations'),(92,'conversations ratings, ratings, community, community points'),(93,'conversations bad words, banned words, banned, bad words, bad, words, list'),(94,'attribute configuration'),(95,'attributes, sets'),(96,'attributes, types'),(97,'topics, tags, taxonomy'),(99,'overrides, system info, debug, support, help'),(100,'errors, exceptions, develop, support, help'),(101,'email, logging, logs, smtp, pop, errors, mysql, log'),(102,'network, proxy server'),(103,'database, entities, doctrine, orm'),(104,'export, backup, database, sql, mysql, encryption, restore'),(105,'upgrade, new version, update'),(109,'fa fa-edit'),(110,'fa fa-trash-o'),(111,'fa fa-th'),(112,'fa fa-briefcase'),(150,'Test Client'),(155,'Test Client'),(161,'Test Client 2'),(167,'Test Client 2'),(172,'Test Client 2'),(177,'Test Client 2'),(181,NULL),(182,NULL),(183,NULL),(184,NULL),(192,NULL),(193,NULL),(194,NULL),(196,NULL),(199,NULL),(200,NULL),(201,NULL),(202,NULL),(205,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla massa lacus, vehicula eu interdum convallis, laoreet id lectus. Nunc turpis elit, aliquam sit amet aliquam tincidunt, dapibus vel tellus. '),(206,NULL),(207,NULL),(208,NULL),(209,NULL),(212,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla massa lacus, vehicula eu interdum convallis, laoreet id lectus. Nunc turpis elit, aliquam sit amet aliquam tincidunt, dapibus vel tellus. '),(215,''),(216,''),(217,''),(219,''),(220,''),(221,''),(223,''),(224,''),(225,''),(227,''),(228,''),(229,''),(231,''),(232,''),(233,''),(235,''),(236,''),(237,''),(239,''),(240,''),(241,''),(243,''),(244,''),(245,'');
/*!40000 ALTER TABLE `atDefault` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atFile`
--

DROP TABLE IF EXISTS `atFile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atFile` (
  `avID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`),
  KEY `fID` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atFile`
--

LOCK TABLES `atFile` WRITE;
/*!40000 ALTER TABLE `atFile` DISABLE KEYS */;
INSERT INTO `atFile` VALUES (214,0),(186,2),(148,6),(188,7),(153,8),(175,10),(190,11),(170,12),(165,15),(159,16);
/*!40000 ALTER TABLE `atFile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atNumber`
--

DROP TABLE IF EXISTS `atNumber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atNumber` (
  `avID` int(10) unsigned NOT NULL,
  `value` decimal(14,4) DEFAULT '0.0000',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atNumber`
--

LOCK TABLES `atNumber` WRITE;
/*!40000 ALTER TABLE `atNumber` DISABLE KEYS */;
INSERT INTO `atNumber` VALUES (113,200.0000),(114,200.0000),(115,500.0000),(116,500.0000),(117,460.0000),(118,460.0000),(119,592.0000),(120,397.0000),(121,250.0000),(122,252.0000),(123,1600.0000),(124,1067.0000),(125,200.0000),(126,200.0000),(127,1499.0000),(128,1067.0000),(129,1100.0000),(130,263.0000),(131,1600.0000),(132,1067.0000),(133,1600.0000),(134,1066.0000),(135,1600.0000),(136,1067.0000),(137,1100.0000),(138,368.0000),(139,1100.0000),(140,368.0000),(141,1600.0000),(142,1067.0000),(143,1600.0000),(144,953.0000);
/*!40000 ALTER TABLE `atNumber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atSelectOptions`
--

DROP TABLE IF EXISTS `atSelectOptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSelectOptions` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayOrder` int(10) unsigned DEFAULT NULL,
  `isEndUserAdded` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `akID` (`akID`,`displayOrder`),
  KEY `value` (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atSelectOptions`
--

LOCK TABLES `atSelectOptions` WRITE;
/*!40000 ALTER TABLE `atSelectOptions` DISABLE KEYS */;
INSERT INTO `atSelectOptions` VALUES (1,18,'Finance',0,0),(2,18,'Marketing and Sales',1,0),(3,18,'Human Resources',2,0),(4,18,'Technical and Operations',3,0),(5,18,'Management',4,0),(6,25,'Architecture',0,0),(7,25,'Multimedia',1,0),(8,25,'Design',2,0),(9,25,'Production',3,0),(10,25,'Development',4,0),(11,25,'Quality Assurance',5,0),(12,26,'HTML',0,0),(13,26,'JavaScript',1,0),(14,26,'PHP',2,0),(15,26,'Database',3,0),(16,26,'CSS',4,0),(17,26,'Ruby',5,0),(18,26,'Java',6,0),(19,26,'iOS/Android/App Development',7,0),(20,26,'Photoshop',8,0),(21,26,'Python',9,0),(22,26,'Writing',10,0);
/*!40000 ALTER TABLE `atSelectOptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atSelectOptionsSelected`
--

DROP TABLE IF EXISTS `atSelectOptionsSelected`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSelectOptionsSelected` (
  `avID` int(10) unsigned NOT NULL,
  `atSelectOptionID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`,`atSelectOptionID`),
  KEY `atSelectOptionID` (`atSelectOptionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atSelectOptionsSelected`
--

LOCK TABLES `atSelectOptionsSelected` WRITE;
/*!40000 ALTER TABLE `atSelectOptionsSelected` DISABLE KEYS */;
INSERT INTO `atSelectOptionsSelected` VALUES (151,6),(151,8),(151,9),(152,12),(152,13),(152,14),(156,6),(157,14),(162,7),(162,9),(162,10),(163,12),(163,13),(163,14),(163,16),(168,8),(169,20),(173,8),(174,20),(178,8),(179,20),(204,4),(211,2);
/*!40000 ALTER TABLE `atSelectOptionsSelected` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atSelectSettings`
--

DROP TABLE IF EXISTS `atSelectSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSelectSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akSelectAllowMultipleValues` tinyint(1) NOT NULL DEFAULT '0',
  `akSelectOptionDisplayOrder` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'display_asc',
  `akSelectAllowOtherValues` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atSelectSettings`
--

LOCK TABLES `atSelectSettings` WRITE;
/*!40000 ALTER TABLE `atSelectSettings` DISABLE KEYS */;
INSERT INTO `atSelectSettings` VALUES (8,1,'display_asc',1),(18,0,'display_asc',0),(25,1,'display_asc',0),(26,1,'display_asc',0);
/*!40000 ALTER TABLE `atSelectSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atSelectedTopics`
--

DROP TABLE IF EXISTS `atSelectedTopics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSelectedTopics` (
  `avID` int(10) unsigned NOT NULL,
  `TopicNodeID` int(11) NOT NULL,
  PRIMARY KEY (`avID`,`TopicNodeID`),
  KEY `TopicNodeID` (`TopicNodeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atSelectedTopics`
--

LOCK TABLES `atSelectedTopics` WRITE;
/*!40000 ALTER TABLE `atSelectedTopics` DISABLE KEYS */;
INSERT INTO `atSelectedTopics` VALUES (149,16),(154,18),(160,16),(166,16),(171,16),(176,16),(187,11),(189,13),(191,11);
/*!40000 ALTER TABLE `atSelectedTopics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atSocialLinks`
--

DROP TABLE IF EXISTS `atSocialLinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSocialLinks` (
  `avsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  `service` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serviceInfo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`avsID`),
  KEY `avID` (`avID`,`avsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atSocialLinks`
--

LOCK TABLES `atSocialLinks` WRITE;
/*!40000 ALTER TABLE `atSocialLinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `atSocialLinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atTextareaSettings`
--

DROP TABLE IF EXISTS `atTextareaSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atTextareaSettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akTextareaDisplayMode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `akTextareaDisplayModeCustomOptions` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atTextareaSettings`
--

LOCK TABLES `atTextareaSettings` WRITE;
/*!40000 ALTER TABLE `atTextareaSettings` DISABLE KEYS */;
INSERT INTO `atTextareaSettings` VALUES (2,'',''),(3,'',''),(4,'',''),(7,'',''),(19,'text','');
/*!40000 ALTER TABLE `atTextareaSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atTopicSettings`
--

DROP TABLE IF EXISTS `atTopicSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atTopicSettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akTopicParentNodeID` int(11) DEFAULT NULL,
  `akTopicTreeID` int(11) DEFAULT NULL,
  PRIMARY KEY (`akID`),
  KEY `akTopicTreeID` (`akTopicTreeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atTopicSettings`
--

LOCK TABLES `atTopicSettings` WRITE;
/*!40000 ALTER TABLE `atTopicSettings` DISABLE KEYS */;
INSERT INTO `atTopicSettings` VALUES (22,5,2),(23,14,3);
/*!40000 ALTER TABLE `atTopicSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authTypeConcreteCookieMap`
--

DROP TABLE IF EXISTS `authTypeConcreteCookieMap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authTypeConcreteCookieMap` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uID` int(11) DEFAULT NULL,
  `validThrough` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `token` (`token`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authTypeConcreteCookieMap`
--

LOCK TABLES `authTypeConcreteCookieMap` WRITE;
/*!40000 ALTER TABLE `authTypeConcreteCookieMap` DISABLE KEYS */;
/*!40000 ALTER TABLE `authTypeConcreteCookieMap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btContentFile`
--

DROP TABLE IF EXISTS `btContentFile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btContentFile` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `fileLinkText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filePassword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `forceDownload` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `fID` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btContentFile`
--

LOCK TABLES `btContentFile` WRITE;
/*!40000 ALTER TABLE `btContentFile` DISABLE KEYS */;
/*!40000 ALTER TABLE `btContentFile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btContentImage`
--

DROP TABLE IF EXISTS `btContentImage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btContentImage` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  `fOnstateID` int(10) unsigned DEFAULT '0',
  `maxWidth` int(10) unsigned DEFAULT '0',
  `maxHeight` int(10) unsigned DEFAULT '0',
  `externalLink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  `altText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`),
  KEY `fID` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btContentImage`
--

LOCK TABLES `btContentImage` WRITE;
/*!40000 ALTER TABLE `btContentImage` DISABLE KEYS */;
INSERT INTO `btContentImage` VALUES (110,5,0,0,0,'',0,'Blank Image','Blank Image'),(125,7,0,0,0,'',0,'',NULL),(132,4,0,0,0,'',0,'',NULL),(139,4,0,0,0,'',0,'',NULL),(143,5,0,0,0,'',0,'',NULL),(146,9,0,0,0,'',0,'',NULL);
/*!40000 ALTER TABLE `btContentImage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btContentLocal`
--

DROP TABLE IF EXISTS `btContentLocal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btContentLocal` (
  `bID` int(10) unsigned NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btContentLocal`
--

LOCK TABLES `btContentLocal` WRITE;
/*!40000 ALTER TABLE `btContentLocal` DISABLE KEYS */;
INSERT INTO `btContentLocal` VALUES (1,'<div style=\"padding: 40px; text-align: center\"> <iframe width=\"853\" height=\"480\" src=\"//www.youtube.com/embed/VB-R71zk06U\" frameborder=\"0\" allowfullscreen></iframe>                                     </div>'),(19,'                                                     <p><a href=\"{CCM:CID_174}\" style=\"background-color: rgb(255, 255, 255);\"><i class=\"fa fa-arrow-left\"></i> Back to Careers</a></p>'),(20,'<h3>Department</h3>'),(22,'<h3>Location</h3>'),(24,'<h3>Job Information</h3>'),(26,'                                                     <br/><br/>'),(43,'                                     <p>1234 SE StreetView</p><p>Suite 301</p><p>Portland, OR 98101</p><p><a href=\"{CCM:CID_160}\">View on Google Maps</a></p>'),(44,'                                     <p>© 2014 Elemental Theme</p>'),(45,'                                                                          <p><a href=\"{CCM:CID_175}\">FAQ / Help</a></p>                                     <p><a href=\"{CCM:CID_155}\">Case Studies</a></p>                                     <p><a href=\"{CCM:CID_158}\">Blog</a></p>                                     <p><a href=\"{CCM:CID_1}\">Another Link</a></p>                                     '),(46,'<a href=\"{CCM:CID_1}\" id=\"footer-site-title\">Elemental</a>'),(50,'<a href=\"{CCM:CID_1}\" id=\"header-site-title\">Elemental</a>'),(57,'<p style=\"text-align: center\"><span class=\"title-caps-bold\">Presenting your Business has never been so easy</span></p><p style=\"text-align: center;\">Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing.</p><p style=\"text-align: center;\">Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. </p>'),(61,'<h5>Latest Blog Post</h5>'),(62,'<h5>Now Open For Business</h5>'),(66,'<p>  <span class=\"title-thin\">We specialize in making your concepts a reality.</span>  </p>  <p>    Sed cursus facilisis dignissim. Aliquam rhoncus enim et pellentesque varius. Nulla sodales nibh lorem, sit amet imperdiet arcu commodo sit amet. Mauris sed scelerisque nisl. Ut auctor ipsum tellus, vel viverra massa elementum sit amet.  </p>  <p>    Sed adipiscing tempus sem eu molestie. Aenean laoreet pretium ante vitae ultrices. Aenean eu gravida magna, vel aliquet magna. In auctor convallis gravida.<br>  </p>  <br/>  <p>  <a href=\"{CCM:CID_160}\"><span class=\"btn btn-success\">Contact Us Today</span></a>  </p>'),(67,'<p style=\"text-align: center\"><span class=\"title-caps\">Customizable footer area with accent class.</span></p>'),(76,'<h3>Awesome Features</h3><p>Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed. </p><h3>Guide Books</h3><p>Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna. Etiam aliquam, justo et varius eleifend, dui lectus egestas nunc, vel malesuada nisl purus nec metus. </p><h3>Admin Accounts</h3><p>Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna. Etiam aliquam, justo et varius eleifend, dui lectus egestas nunc, vel malesuada nisl purus nec metus. </p>'),(77,'<h3>Support</h3><p>Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed. </p><h3>Additional Options</h3><p>Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna. </p><p>Etiam aliquam, justo et varius eleifend, dui lectus egestas nunc, vel malesuada nisl purus nec metus. In gravida turpis a pharetra commodo. Donec non turpis vulputate, faucibus metus a, consectetur nunc. Morbi tortor nisi, hendrerit sed laoreet eget, fermentum et justo. Suspendisse potenti.</p>'),(78,'<p style=\"text-align: center\"><span class=\"title-caps\">What Clients Are Saying About Us</span></p>'),(85,'<blockquote>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tempus nibh a laoreet cursus. Phasellus malesuada vulputate bibendum. Ut vitae justo nisi. Sed consectetur vestibulum tortor, in bibendum diam lacinia vitae. Nullam volutpat risus quis orci consectetur adipiscing. In commodo vulputate arcu sit amet ornare. Vivamus ut iaculis velit.</blockquote><p>Pellentesque euismod lacus sed accumsan luctus. Suspendisse urna felis, lacinia vel tempor id, ultricies rutrum nisl. Nunc ultrices nulla et bibendum molestie. Phasellus porttitor sit amet libero vel fermentum. Sed sapien risus, eleifend vel hendrerit eu, porta vel tellus. Duis faucibus odio et magna varius, quis accumsan tellus vestibulum. Nam nunc nulla, convallis at elementum pharetra, adipiscing quis enim. Donec feugiat porttitor dolor, nec porttitor mi auctor eget. Fusce iaculis varius diam non dictum. Fusce elementum a nunc vel tincidunt. Morbi nec est elementum, vehicula odio nec, lobortis lacus. Nulla ultricies vitae nunc ut lacinia. Proin mattis felis sem, eu consectetur arcu varius et. Duis at lectus eu lorem elementum aliquet nec in elit. Vestibulum non metus ac risus adipiscing pellentesque sed sit amet lorem. Donec viverra, metus in varius pulvinar, augue nunc accumsan eros, a pulvinar est elit vitae nulla.</p><p>Duis non leo in enim laoreet pretium. Nullam vitae neque nec libero pharetra tempor at faucibus lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed imperdiet convallis arcu. Nam sollicitudin sollicitudin lacus non dictum. Aliquam erat volutpat. Nulla sapien quam, consequat non dui ut, eleifend sodales orci. Praesent quis lorem accumsan, volutpat lectus a, sollicitudin erat. Donec faucibus mi in sapien volutpat, ac auctor lorem mollis. Proin eget turpis non lacus bibendum porta non ac justo. Aliquam aliquam viverra lorem ac rutrum. In et sapien sit amet diam vestibulum cursus ut tristique tellus.</p><p>Ut in purus mi. Etiam ac aliquet ipsum. Pellentesque faucibus diam dui. Morbi a semper orci. Ut nec malesuada urna. Vestibulum aliquet ante ac lacus dictum, sit amet pulvinar leo laoreet. Maecenas ut est commodo, commodo quam nec, dignissim est. Quisque rutrum molestie nunc, sed mollis nulla volutpat et. Donec dignissim ornare augue eu aliquam. Aliquam in tincidunt velit. In at fermentum mauris, ut accumsan nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p><p>Integer ac nulla at nisi sodales ullamcorper id in justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam pharetra elit odio, ac mattis turpis consequat ac. Pellentesque tincidunt sed enim nec auctor. Quisque varius, felis a hendrerit faucibus, nunc lorem varius nibh, vel dignissim velit dolor ut elit. Mauris ut vulputate neque. Donec at est vitae massa egestas fringilla. Praesent a tristique nibh. Nunc blandit dui risus, quis rhoncus nisi consectetur vel.</p>'),(87,'<blockquote>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tempus nibh a laoreet cursus. Phasellus malesuada vulputate bibendum. Ut vitae justo nisi. Sed consectetur vestibulum tortor, in bibendum diam lacinia vitae. Nullam volutpat risus quis orci consectetur adipiscing. In commodo vulputate arcu sit amet ornare. Vivamus ut iaculis velit.</blockquote><p>Pellentesque euismod lacus sed accumsan luctus. Suspendisse urna felis, lacinia vel tempor id, ultricies rutrum nisl. Nunc ultrices nulla et bibendum molestie. Phasellus porttitor sit amet libero vel fermentum. Sed sapien risus, eleifend vel hendrerit eu, porta vel tellus. Duis faucibus odio et magna varius, quis accumsan tellus vestibulum. Nam nunc nulla, convallis at elementum pharetra, adipiscing quis enim. Donec feugiat porttitor dolor, nec porttitor mi auctor eget. Fusce iaculis varius diam non dictum. Fusce elementum a nunc vel tincidunt. Morbi nec est elementum, vehicula odio nec, lobortis lacus. Nulla ultricies vitae nunc ut lacinia. Proin mattis felis sem, eu consectetur arcu varius et. Duis at lectus eu lorem elementum aliquet nec in elit. Vestibulum non metus ac risus adipiscing pellentesque sed sit amet lorem. Donec viverra, metus in varius pulvinar, augue nunc accumsan eros, a pulvinar est elit vitae nulla.</p><p>Duis non leo in enim laoreet pretium. Nullam vitae neque nec libero pharetra tempor at faucibus lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed imperdiet convallis arcu. Nam sollicitudin sollicitudin lacus non dictum. Aliquam erat volutpat. Nulla sapien quam, consequat non dui ut, eleifend sodales orci. Praesent quis lorem accumsan, volutpat lectus a, sollicitudin erat. Donec faucibus mi in sapien volutpat, ac auctor lorem mollis. Proin eget turpis non lacus bibendum porta non ac justo. Aliquam aliquam viverra lorem ac rutrum. In et sapien sit amet diam vestibulum cursus ut tristique tellus.</p><p>Ut in purus mi. Etiam ac aliquet ipsum. Pellentesque faucibus diam dui. Morbi a semper orci. Ut nec malesuada urna. Vestibulum aliquet ante ac lacus dictum, sit amet pulvinar leo laoreet. Maecenas ut est commodo, commodo quam nec, dignissim est. Quisque rutrum molestie nunc, sed mollis nulla volutpat et. Donec dignissim ornare augue eu aliquam. Aliquam in tincidunt velit. In at fermentum mauris, ut accumsan nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p><p>Integer ac nulla at nisi sodales ullamcorper id in justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam pharetra elit odio, ac mattis turpis consequat ac. Pellentesque tincidunt sed enim nec auctor. Quisque varius, felis a hendrerit faucibus, nunc lorem varius nibh, vel dignissim velit dolor ut elit. Mauris ut vulputate neque. Donec at est vitae massa egestas fringilla. Praesent a tristique nibh. Nunc blandit dui risus, quis rhoncus nisi consectetur vel.</p>'),(89,'<blockquote>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tempus nibh a laoreet cursus. Phasellus malesuada vulputate bibendum. Ut vitae justo nisi. Sed consectetur vestibulum tortor, in bibendum diam lacinia vitae. Nullam volutpat risus quis orci consectetur adipiscing. In commodo vulputate arcu sit amet ornare. Vivamus ut iaculis velit.</blockquote><p>Pellentesque euismod lacus sed accumsan luctus. Suspendisse urna felis, lacinia vel tempor id, ultricies rutrum nisl. Nunc ultrices nulla et bibendum molestie. Phasellus porttitor sit amet libero vel fermentum. Sed sapien risus, eleifend vel hendrerit eu, porta vel tellus. Duis faucibus odio et magna varius, quis accumsan tellus vestibulum. Nam nunc nulla, convallis at elementum pharetra, adipiscing quis enim. Donec feugiat porttitor dolor, nec porttitor mi auctor eget. Fusce iaculis varius diam non dictum. Fusce elementum a nunc vel tincidunt. Morbi nec est elementum, vehicula odio nec, lobortis lacus. Nulla ultricies vitae nunc ut lacinia. Proin mattis felis sem, eu consectetur arcu varius et. Duis at lectus eu lorem elementum aliquet nec in elit. Vestibulum non metus ac risus adipiscing pellentesque sed sit amet lorem. Donec viverra, metus in varius pulvinar, augue nunc accumsan eros, a pulvinar est elit vitae nulla.</p><p>Duis non leo in enim laoreet pretium. Nullam vitae neque nec libero pharetra tempor at faucibus lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed imperdiet convallis arcu. Nam sollicitudin sollicitudin lacus non dictum. Aliquam erat volutpat. Nulla sapien quam, consequat non dui ut, eleifend sodales orci. Praesent quis lorem accumsan, volutpat lectus a, sollicitudin erat. Donec faucibus mi in sapien volutpat, ac auctor lorem mollis. Proin eget turpis non lacus bibendum porta non ac justo. Aliquam aliquam viverra lorem ac rutrum. In et sapien sit amet diam vestibulum cursus ut tristique tellus.</p><p>Ut in purus mi. Etiam ac aliquet ipsum. Pellentesque faucibus diam dui. Morbi a semper orci. Ut nec malesuada urna. Vestibulum aliquet ante ac lacus dictum, sit amet pulvinar leo laoreet. Maecenas ut est commodo, commodo quam nec, dignissim est. Quisque rutrum molestie nunc, sed mollis nulla volutpat et. Donec dignissim ornare augue eu aliquam. Aliquam in tincidunt velit. In at fermentum mauris, ut accumsan nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p><p>Integer ac nulla at nisi sodales ullamcorper id in justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam pharetra elit odio, ac mattis turpis consequat ac. Pellentesque tincidunt sed enim nec auctor. Quisque varius, felis a hendrerit faucibus, nunc lorem varius nibh, vel dignissim velit dolor ut elit. Mauris ut vulputate neque. Donec at est vitae massa egestas fringilla. Praesent a tristique nibh. Nunc blandit dui risus, quis rhoncus nisi consectetur vel.</p>'),(91,'<blockquote>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tempus nibh a laoreet cursus. Phasellus malesuada vulputate bibendum. Ut vitae justo nisi. Sed consectetur vestibulum tortor, in bibendum diam lacinia vitae. Nullam volutpat risus quis orci consectetur adipiscing. In commodo vulputate arcu sit amet ornare. Vivamus ut iaculis velit.</blockquote><p>Pellentesque euismod lacus sed accumsan luctus. Suspendisse urna felis, lacinia vel tempor id, ultricies rutrum nisl. Nunc ultrices nulla et bibendum molestie. Phasellus porttitor sit amet libero vel fermentum. Sed sapien risus, eleifend vel hendrerit eu, porta vel tellus. Duis faucibus odio et magna varius, quis accumsan tellus vestibulum. Nam nunc nulla, convallis at elementum pharetra, adipiscing quis enim. Donec feugiat porttitor dolor, nec porttitor mi auctor eget. Fusce iaculis varius diam non dictum. Fusce elementum a nunc vel tincidunt. Morbi nec est elementum, vehicula odio nec, lobortis lacus. Nulla ultricies vitae nunc ut lacinia. Proin mattis felis sem, eu consectetur arcu varius et. Duis at lectus eu lorem elementum aliquet nec in elit. Vestibulum non metus ac risus adipiscing pellentesque sed sit amet lorem. Donec viverra, metus in varius pulvinar, augue nunc accumsan eros, a pulvinar est elit vitae nulla.</p><p>Duis non leo in enim laoreet pretium. Nullam vitae neque nec libero pharetra tempor at faucibus lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed imperdiet convallis arcu. Nam sollicitudin sollicitudin lacus non dictum. Aliquam erat volutpat. Nulla sapien quam, consequat non dui ut, eleifend sodales orci. Praesent quis lorem accumsan, volutpat lectus a, sollicitudin erat. Donec faucibus mi in sapien volutpat, ac auctor lorem mollis. Proin eget turpis non lacus bibendum porta non ac justo. Aliquam aliquam viverra lorem ac rutrum. In et sapien sit amet diam vestibulum cursus ut tristique tellus.</p><p>Ut in purus mi. Etiam ac aliquet ipsum. Pellentesque faucibus diam dui. Morbi a semper orci. Ut nec malesuada urna. Vestibulum aliquet ante ac lacus dictum, sit amet pulvinar leo laoreet. Maecenas ut est commodo, commodo quam nec, dignissim est. Quisque rutrum molestie nunc, sed mollis nulla volutpat et. Donec dignissim ornare augue eu aliquam. Aliquam in tincidunt velit. In at fermentum mauris, ut accumsan nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p><p>Integer ac nulla at nisi sodales ullamcorper id in justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam pharetra elit odio, ac mattis turpis consequat ac. Pellentesque tincidunt sed enim nec auctor. Quisque varius, felis a hendrerit faucibus, nunc lorem varius nibh, vel dignissim velit dolor ut elit. Mauris ut vulputate neque. Donec at est vitae massa egestas fringilla. Praesent a tristique nibh. Nunc blandit dui risus, quis rhoncus nisi consectetur vel.</p>'),(93,'<blockquote>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tempus nibh a laoreet cursus. Phasellus malesuada vulputate bibendum. Ut vitae justo nisi. Sed consectetur vestibulum tortor, in bibendum diam lacinia vitae. Nullam volutpat risus quis orci consectetur adipiscing. In commodo vulputate arcu sit amet ornare. Vivamus ut iaculis velit.</blockquote><p>Pellentesque euismod lacus sed accumsan luctus. Suspendisse urna felis, lacinia vel tempor id, ultricies rutrum nisl. Nunc ultrices nulla et bibendum molestie. Phasellus porttitor sit amet libero vel fermentum. Sed sapien risus, eleifend vel hendrerit eu, porta vel tellus. Duis faucibus odio et magna varius, quis accumsan tellus vestibulum. Nam nunc nulla, convallis at elementum pharetra, adipiscing quis enim. Donec feugiat porttitor dolor, nec porttitor mi auctor eget. Fusce iaculis varius diam non dictum. Fusce elementum a nunc vel tincidunt. Morbi nec est elementum, vehicula odio nec, lobortis lacus. Nulla ultricies vitae nunc ut lacinia. Proin mattis felis sem, eu consectetur arcu varius et. Duis at lectus eu lorem elementum aliquet nec in elit. Vestibulum non metus ac risus adipiscing pellentesque sed sit amet lorem. Donec viverra, metus in varius pulvinar, augue nunc accumsan eros, a pulvinar est elit vitae nulla.</p><p>Duis non leo in enim laoreet pretium. Nullam vitae neque nec libero pharetra tempor at faucibus lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed imperdiet convallis arcu. Nam sollicitudin sollicitudin lacus non dictum. Aliquam erat volutpat. Nulla sapien quam, consequat non dui ut, eleifend sodales orci. Praesent quis lorem accumsan, volutpat lectus a, sollicitudin erat. Donec faucibus mi in sapien volutpat, ac auctor lorem mollis. Proin eget turpis non lacus bibendum porta non ac justo. Aliquam aliquam viverra lorem ac rutrum. In et sapien sit amet diam vestibulum cursus ut tristique tellus.</p><p>Ut in purus mi. Etiam ac aliquet ipsum. Pellentesque faucibus diam dui. Morbi a semper orci. Ut nec malesuada urna. Vestibulum aliquet ante ac lacus dictum, sit amet pulvinar leo laoreet. Maecenas ut est commodo, commodo quam nec, dignissim est. Quisque rutrum molestie nunc, sed mollis nulla volutpat et. Donec dignissim ornare augue eu aliquam. Aliquam in tincidunt velit. In at fermentum mauris, ut accumsan nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p><p>Integer ac nulla at nisi sodales ullamcorper id in justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam pharetra elit odio, ac mattis turpis consequat ac. Pellentesque tincidunt sed enim nec auctor. Quisque varius, felis a hendrerit faucibus, nunc lorem varius nibh, vel dignissim velit dolor ut elit. Mauris ut vulputate neque. Donec at est vitae massa egestas fringilla. Praesent a tristique nibh. Nunc blandit dui risus, quis rhoncus nisi consectetur vel.</p>'),(95,'<blockquote>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tempus nibh a laoreet cursus. Phasellus malesuada vulputate bibendum. Ut vitae justo nisi. Sed consectetur vestibulum tortor, in bibendum diam lacinia vitae. Nullam volutpat risus quis orci consectetur adipiscing. In commodo vulputate arcu sit amet ornare. Vivamus ut iaculis velit.</blockquote><p>Pellentesque euismod lacus sed accumsan luctus. Suspendisse urna felis, lacinia vel tempor id, ultricies rutrum nisl. Nunc ultrices nulla et bibendum molestie. Phasellus porttitor sit amet libero vel fermentum. Sed sapien risus, eleifend vel hendrerit eu, porta vel tellus. Duis faucibus odio et magna varius, quis accumsan tellus vestibulum. Nam nunc nulla, convallis at elementum pharetra, adipiscing quis enim. Donec feugiat porttitor dolor, nec porttitor mi auctor eget. Fusce iaculis varius diam non dictum. Fusce elementum a nunc vel tincidunt. Morbi nec est elementum, vehicula odio nec, lobortis lacus. Nulla ultricies vitae nunc ut lacinia. Proin mattis felis sem, eu consectetur arcu varius et. Duis at lectus eu lorem elementum aliquet nec in elit. Vestibulum non metus ac risus adipiscing pellentesque sed sit amet lorem. Donec viverra, metus in varius pulvinar, augue nunc accumsan eros, a pulvinar est elit vitae nulla.</p><p>Duis non leo in enim laoreet pretium. Nullam vitae neque nec libero pharetra tempor at faucibus lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed imperdiet convallis arcu. Nam sollicitudin sollicitudin lacus non dictum. Aliquam erat volutpat. Nulla sapien quam, consequat non dui ut, eleifend sodales orci. Praesent quis lorem accumsan, volutpat lectus a, sollicitudin erat. Donec faucibus mi in sapien volutpat, ac auctor lorem mollis. Proin eget turpis non lacus bibendum porta non ac justo. Aliquam aliquam viverra lorem ac rutrum. In et sapien sit amet diam vestibulum cursus ut tristique tellus.</p><p>Ut in purus mi. Etiam ac aliquet ipsum. Pellentesque faucibus diam dui. Morbi a semper orci. Ut nec malesuada urna. Vestibulum aliquet ante ac lacus dictum, sit amet pulvinar leo laoreet. Maecenas ut est commodo, commodo quam nec, dignissim est. Quisque rutrum molestie nunc, sed mollis nulla volutpat et. Donec dignissim ornare augue eu aliquam. Aliquam in tincidunt velit. In at fermentum mauris, ut accumsan nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p><p>Integer ac nulla at nisi sodales ullamcorper id in justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam pharetra elit odio, ac mattis turpis consequat ac. Pellentesque tincidunt sed enim nec auctor. Quisque varius, felis a hendrerit faucibus, nunc lorem varius nibh, vel dignissim velit dolor ut elit. Mauris ut vulputate neque. Donec at est vitae massa egestas fringilla. Praesent a tristique nibh. Nunc blandit dui risus, quis rhoncus nisi consectetur vel.</p>'),(111,'                                                     <p class=\"title-thin\">Get in Touch</p><p>Sed cursus facilisis dignissim. Aliquam rhoncus enim et pellentesque varius. Nulla sodales nibh lorem, sit amet imperdiet arcu commodo sit amet.<br><br></p><p><a class=\"btn btn-success\" href=\"{CCM:CID_160}\">Contact Us</a></p>'),(113,'<blockquote>Fusce volutpat sodales mauris quis dapibus. Maecenas convallis, libero eu ultrices interdum, leo mauris commodo diam, sed cursus sapien ligula nec leo.</blockquote><p>Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed. Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna. Etiam aliquam, justo et varius eleifend, dui lectus egestas nunc, vel malesuada nisl purus nec metus. In gravida turpis a pharetra commodo. Donec non turpis vulputate, faucibus metus a, consectetur nunc. Morbi tortor nisi, hendrerit sed laoreet eget, fermentum et justo. Suspendisse potenti.</p><p><a href=\"{CCM:FID_DL_2}\" data-concrete5-link-lightbox=\"image\"><concrete-picture alt=\"\" fid=\"2\" /></a></p><h2>Heading 2</h2><p>Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed. Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna. Etiam aliquam, justo et varius eleifend, dui lectus egestas nunc, vel malesuada nisl purus nec metus. In gravida turpis a pharetra commodo. Donec non turpis vulputate, faucibus metus a, consectetur nunc. Morbi tortor nisi, hendrerit sed laoreet eget, fermentum et justo. Suspendisse potenti.</p><h3>Heading 3</h3><p>Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Quisque dignissim neque a ipsum sodales, mattis aliquam ante dictum. Vestibulum elementum pellentesque tortor ac congue. Mauris vel nibh id metus tincidunt eleifend. In interdum gravida ligula, at venenatis odio fermentum at. Donec dapibus enim lectus, quis venenatis tellus volutpat in. Nullam in velit tortor.</p><h3>Heading 3</h3><p>Donec blandit lectus nec neque ullamcorper rhoncus. Sed adipiscing tempus sem eu molestie. Aenean laoreet pretium ante vitae ultrices. Aenean eu gravida magna, vel aliquet magna. In auctor convallis gravida. Phasellus est erat, adipiscing nec lobortis quis, eleifend at sem. Curabitur fringilla viverra dolor, in rutrum ipsum rutrum sit amet. Vestibulum feugiat porttitor ipsum vel condimentum. Suspendisse at tempus libero. Sed eu tempor enim. Etiam convallis eleifend rutrum. Donec porta diam quis tellus feugiat dignissim. Cras posuere, massa eget laoreet laoreet, urna libero lobortis dolor, sed consequat elit urna eget massa. Donec aliquet pellentesque consectetur.</p>'),(115,'<p>Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed. Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. </p><p><span class=\"title-thin\">CMS To the Rescue!</span></p><p>Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna. Etiam aliquam, justo et varius eleifend, dui lectus egestas nunc, vel malesuada nisl purus nec metus. In gravida turpis a pharetra commodo. Donec non turpis vulputate, faucibus metus a, consectetur nunc. Morbi tortor nisi, hendrerit sed laoreet eget, fermentum et justo. Suspendisse potenti.</p><p><a href=\"http://www.concrete5.org\">Learn more at concrete5.org </a><br></p>'),(117,'<p>Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed. Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna. Etiam aliquam, justo et varius eleifend, dui lectus egestas nunc, vel malesuada nisl purus nec metus. In gravida turpis a pharetra commodo. Donec non turpis vulputate, faucibus metus a, consectetur nunc. Morbi tortor nisi, hendrerit sed laoreet eget, fermentum et justo. Suspendisse potenti.</p><p><span class=\"title-caps-bold\">Heading 3</span></p><p>Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Quisque dignissim neque a ipsum sodales, mattis aliquam ante dictum. Vestibulum elementum pellentesque tortor ac congue. Mauris vel nibh id metus tincidunt eleifend. In interdum gravida ligula, at venenatis odio fermentum at. Donec dapibus enim lectus, quis venenatis tellus volutpat in. Nullam in velit tortor.</p><p><a href=\"{CCM:FID_DL_11}\" data-concrete5-link-lightbox=\"image\"><concrete-picture alt=\"\" fid=\"11\" /></a></p><p><span class=\"image-caption\">Look at my beautiful image. Don\'t you to look more?</span></p><p>Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Quisque dignissim neque a ipsum sodales, mattis aliquam ante dictum. Vestibulum elementum pellentesque tortor ac congue. Mauris vel nibh id metus tincidunt eleifend. In interdum gravida ligula, at venenatis odio fermentum at. Donec dapibus enim lectus, quis venenatis tellus volutpat in. Nullam in velit tortor.</p>'),(122,'                                                     <h5>Headquarters</h5><p>1234 SE Street View<br>Suite 301<br>Portland, OR 98101</p><h5>HOURS</h5><p> <strong>M-F</strong>:  10 AM - 7 PM<br><strong>Sat</strong>: Noon - Midnight<br><strong>Sun</strong>: Closed</p>'),(126,'                                                     <h2>Choosing Us</h2><p>Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Quisque dignissim neque a ipsum sodales, mattis aliquam ante dictum. Vestibulum elementum pellentesque tortor ac congue. Mauris vel nibh id metus tincidunt eleifend. In interdum gravida ligula, at venenatis odio fermentum at. Donec dapibus enim lectus, quis venenatis tellus volutpat in. Nullam in velit tortor.</p>'),(127,'<h5>We would love to hear from you!</h5>'),(129,'<p>This is my empty content block on my blank page.</p>'),(133,'                                                     <blockquote>Fusce volutpat sodales mauris quis dapibus. Maecenas convallis, libero eu ultrices interdum.</blockquote>'),(134,'                                                     <p>Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. </p><p><a href=\"http://www.yahoo.com\">Quisque dignissim</a> neque a ipsum sodales, mattis aliquam ante dictum. Vestibulum elementum pellentesque tortor ac congue. Mauris vel nibh id metus tincidunt eleifend.</p>'),(137,'                                                     <h1>Heading 1</h1><h2>Heading 2</h2><h3>Heading 3</h3><h4>Heading 4</h4><h5>Heading 5</h5><h6>Heading 6</h6>'),(138,'                                                     <p>Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed. Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna. Etiam aliquam, justo et varius eleifend, dui lectus egestas nunc, vel malesuada nisl purus nec metus. In gravida turpis a pharetra commodo. Donec non turpis vulputate, faucibus metus a, consectetur nunc. Morbi tortor nisi, hendrerit sed laoreet eget, fermentum et justo. Suspendisse potenti.<br><br><br></p>'),(140,'                                                     <p><br><br>Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed. Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna. Etiam aliquam, justo et varius eleifend, dui lectus egestas nunc, vel malesuada nisl purus nec metus. In gravida turpis a pharetra commodo. Donec non turpis vulputate, faucibus metus a, consectetur nunc. Morbi tortor nisi, hendrerit sed laoreet eget, fermentum et justo. Suspendisse potenti.</p>'),(144,'                                                     <p class=\"title-thin\">Get in Touch</p><p>Sed cursus facilisis dignissim. Aliquam rhoncus enim et pellentesque varius. Nulla sodales nibh lorem, sit amet imperdiet arcu commodo sit amet.<br><br></p><p><a class=\"btn btn-success\" href=\"{CCM:CID_160}\">Contact Us</a></p>'),(147,'<div style=\"height: 50px\"></div>'),(157,'                                                     <div class=\"title-thin\">Open Positions</div>'),(159,'                                     <p>Quisque accumsan leo sit amet neque pretium consectetur. Sed blandit nulla at justo volutpat rhoncus. Sed risus orci, luctus sit amet fringilla faucibus, congue nec dui. Phasellus mattis lobortis magna sed dapibus. Donec sagittis nunc sed accumsan eleifend. Ut porttitor sapien eu nisl volutpat, vitae interdum est mollis. Sed laoreet sit amet elit in eleifend. Sed a tincidunt velit, nec posuere urna. In eget metus non est varius viverra. Quisque accumsan odio sem, in consequat nunc lobortis ac.</p><p>Cras dignissim nulla ut euismod adipiscing. Mauris non eros sem. Cras at lacinia nulla. Maecenas nec magna arcu. Aenean iaculis, augue sed pretium semper, odio tellus volutpat risus, quis consectetur nibh mauris ut odio. Integer convallis, augue a accumsan condimentum, sem nisl congue lorem, consectetur lacinia neque tortor eu neque. Aenean convallis arcu vitae enim dignissim vestibulum. Phasellus tincidunt dolor id enim gravida ullamcorper. Nullam ut lorem auctor, congue quam non, auctor arcu. Morbi ac aliquam ipsum, at aliquet ligula.</p><p>Cras adipiscing tellus non nulla suscipit congue. Pellentesque id neque euismod, elementum augue vel, volutpat turpis. Pellentesque sit amet tortor non lorem hendrerit pellentesque ac in nisi. Sed aliquet tincidunt arcu, eu lacinia lorem fringilla id. Integer ut ornare orci. Donec scelerisque vulputate est a condimentum. Morbi tellus sapien, vehicula vel ipsum non, luctus ullamcorper mi. Phasellus felis tortor, egestas quis felis sit amet, malesuada auctor nibh. Sed mollis mi sit amet tristique scelerisque. Cras elementum mauris urna, ullamcorper consectetur orci vehicula ut.</p>'),(160,'                                     <p>Quisque accumsan leo sit amet neque pretium consectetur. Sed blandit nulla at justo volutpat rhoncus. Sed risus orci, luctus sit amet fringilla faucibus, congue nec dui. Phasellus mattis lobortis magna sed dapibus. Donec sagittis nunc sed accumsan eleifend. Ut porttitor sapien eu nisl volutpat, vitae interdum est mollis. Sed laoreet sit amet elit in eleifend. Sed a tincidunt velit, nec posuere urna. In eget metus non est varius viverra. Quisque accumsan odio sem, in consequat nunc lobortis ac.</p><p>Cras dignissim nulla ut euismod adipiscing. Mauris non eros sem. Cras at lacinia nulla. Maecenas nec magna arcu. Aenean iaculis, augue sed pretium semper, odio tellus volutpat risus, quis consectetur nibh mauris ut odio. Integer convallis, augue a accumsan condimentum, sem nisl congue lorem, consectetur lacinia neque tortor eu neque. Aenean convallis arcu vitae enim dignissim vestibulum. Phasellus tincidunt dolor id enim gravida ullamcorper. Nullam ut lorem auctor, congue quam non, auctor arcu. Morbi ac aliquam ipsum, at aliquet ligula.</p><p>Cras adipiscing tellus non nulla suscipit congue. Pellentesque id neque euismod, elementum augue vel, volutpat turpis. Pellentesque sit amet tortor non lorem hendrerit pellentesque ac in nisi. Sed aliquet tincidunt arcu, eu lacinia lorem fringilla id. Integer ut ornare orci. Donec scelerisque vulputate est a condimentum. Morbi tellus sapien, vehicula vel ipsum non, luctus ullamcorper mi. Phasellus felis tortor, egestas quis felis sit amet, malesuada auctor nibh. Sed mollis mi sit amet tristique scelerisque. Cras elementum mauris urna, ullamcorper consectetur orci vehicula ut.</p>'),(164,NULL);
/*!40000 ALTER TABLE `btContentLocal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btCoreAreaLayout`
--

DROP TABLE IF EXISTS `btCoreAreaLayout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btCoreAreaLayout` (
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `arLayoutID` (`arLayoutID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btCoreAreaLayout`
--

LOCK TABLES `btCoreAreaLayout` WRITE;
/*!40000 ALTER TABLE `btCoreAreaLayout` DISABLE KEYS */;
INSERT INTO `btCoreAreaLayout` VALUES (36,1),(52,2),(60,3),(63,4),(69,5),(75,6),(79,7),(97,8),(101,9),(109,10),(120,11),(124,12),(131,13),(136,14),(142,15),(148,16),(156,17);
/*!40000 ALTER TABLE `btCoreAreaLayout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btCoreConversation`
--

DROP TABLE IF EXISTS `btCoreConversation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btCoreConversation` (
  `bID` int(10) unsigned NOT NULL,
  `cnvID` int(11) DEFAULT NULL,
  `enablePosting` int(11) DEFAULT '1',
  `paginate` tinyint(1) NOT NULL DEFAULT '1',
  `itemsPerPage` smallint(5) unsigned NOT NULL DEFAULT '50',
  `displayMode` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'threaded',
  `orderBy` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'date_desc',
  `enableOrdering` tinyint(1) NOT NULL DEFAULT '1',
  `enableCommentRating` tinyint(1) NOT NULL DEFAULT '1',
  `displayPostingForm` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'top',
  `addMessageLabel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dateFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'default',
  `customDateFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`),
  KEY `cnvID` (`cnvID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btCoreConversation`
--

LOCK TABLES `btCoreConversation` WRITE;
/*!40000 ALTER TABLE `btCoreConversation` DISABLE KEYS */;
INSERT INTO `btCoreConversation` VALUES (16,1,1,1,50,'threaded','date_asc',0,1,'top','Add Message','default',''),(112,2,1,1,50,'threaded','date_asc',0,1,'top','Add Message','default',''),(114,3,1,1,50,'threaded','date_asc',0,1,'top','Add Message','default',''),(116,4,1,1,50,'threaded','date_asc',0,1,'top','Add Message','default',''),(163,5,1,1,50,'threaded','date_asc',0,1,'top','Add Message','default','');
/*!40000 ALTER TABLE `btCoreConversation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btCorePageTypeComposerControlOutput`
--

DROP TABLE IF EXISTS `btCorePageTypeComposerControlOutput`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btCorePageTypeComposerControlOutput` (
  `bID` int(10) unsigned NOT NULL,
  `ptComposerOutputControlID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `ptComposerOutputControlID` (`ptComposerOutputControlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btCorePageTypeComposerControlOutput`
--

LOCK TABLES `btCorePageTypeComposerControlOutput` WRITE;
/*!40000 ALTER TABLE `btCorePageTypeComposerControlOutput` DISABLE KEYS */;
INSERT INTO `btCorePageTypeComposerControlOutput` VALUES (10,1),(25,2),(28,3),(32,4);
/*!40000 ALTER TABLE `btCorePageTypeComposerControlOutput` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btCoreScrapbookDisplay`
--

DROP TABLE IF EXISTS `btCoreScrapbookDisplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btCoreScrapbookDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `bOriginalID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`),
  KEY `bOriginalID` (`bOriginalID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btCoreScrapbookDisplay`
--

LOCK TABLES `btCoreScrapbookDisplay` WRITE;
/*!40000 ALTER TABLE `btCoreScrapbookDisplay` DISABLE KEYS */;
/*!40000 ALTER TABLE `btCoreScrapbookDisplay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btCoreStackDisplay`
--

DROP TABLE IF EXISTS `btCoreStackDisplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btCoreStackDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `stID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`),
  KEY `stID` (`stID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btCoreStackDisplay`
--

LOCK TABLES `btCoreStackDisplay` WRITE;
/*!40000 ALTER TABLE `btCoreStackDisplay` DISABLE KEYS */;
/*!40000 ALTER TABLE `btCoreStackDisplay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btDashboardNewsflowLatest`
--

DROP TABLE IF EXISTS `btDashboardNewsflowLatest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btDashboardNewsflowLatest` (
  `bID` int(10) unsigned NOT NULL,
  `slot` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btDashboardNewsflowLatest`
--

LOCK TABLES `btDashboardNewsflowLatest` WRITE;
/*!40000 ALTER TABLE `btDashboardNewsflowLatest` DISABLE KEYS */;
INSERT INTO `btDashboardNewsflowLatest` VALUES (4,'A'),(5,'B'),(8,'C');
/*!40000 ALTER TABLE `btDashboardNewsflowLatest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btDateNavigation`
--

DROP TABLE IF EXISTS `btDateNavigation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btDateNavigation` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `filterByParent` tinyint(1) DEFAULT '0',
  `redirectToResults` tinyint(1) DEFAULT '0',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `cTargetID` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'this field is where the links will direct you',
  `ptID` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btDateNavigation`
--

LOCK TABLES `btDateNavigation` WRITE;
/*!40000 ALTER TABLE `btDateNavigation` DISABLE KEYS */;
INSERT INTO `btDateNavigation` VALUES (39,'Archives',1,0,158,0,7);
/*!40000 ALTER TABLE `btDateNavigation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btExternalForm`
--

DROP TABLE IF EXISTS `btExternalForm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btExternalForm` (
  `bID` int(10) unsigned NOT NULL,
  `filename` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btExternalForm`
--

LOCK TABLES `btExternalForm` WRITE;
/*!40000 ALTER TABLE `btExternalForm` DISABLE KEYS */;
/*!40000 ALTER TABLE `btExternalForm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFaq`
--

DROP TABLE IF EXISTS `btFaq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFaq` (
  `bID` int(10) unsigned NOT NULL,
  `blockTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFaq`
--

LOCK TABLES `btFaq` WRITE;
/*!40000 ALTER TABLE `btFaq` DISABLE KEYS */;
INSERT INTO `btFaq` VALUES (162,'');
/*!40000 ALTER TABLE `btFaq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFaqEntries`
--

DROP TABLE IF EXISTS `btFaqEntries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFaqEntries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `linkTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` int(11) DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `bID` (`bID`,`sortOrder`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFaqEntries`
--

LOCK TABLES `btFaqEntries` WRITE;
/*!40000 ALTER TABLE `btFaqEntries` DISABLE KEYS */;
INSERT INTO `btFaqEntries` VALUES (4,162,'What are page versions?','What are page versions?',0,'\n                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. '),(5,162,'How do I add more people as editors in my website?','How do I add more people as editors in my website?',1,'\n                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. ');
/*!40000 ALTER TABLE `btFaqEntries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFeature`
--

DROP TABLE IF EXISTS `btFeature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFeature` (
  `bID` int(10) unsigned NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paragraph` text COLLATE utf8_unicode_ci,
  `externalLink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFeature`
--

LOCK TABLES `btFeature` WRITE;
/*!40000 ALTER TABLE `btFeature` DISABLE KEYS */;
INSERT INTO `btFeature` VALUES (53,'pencil','Easy to Edit','Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.','',0),(54,'eye','Pixel Perfect','Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.','',0),(55,'youtube-play','Media Rich','Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.','',0),(70,'star','Quality','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sodales non leo id aliquet.','',0),(71,'tint','Design','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sodales non leo id aliquet.','',0),(72,'cog','Development','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sodales non leo id aliquet.','',0),(73,'lock','Security','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sodales non leo id aliquet.','',0),(149,'home','Welcome Home','\n                                                    Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan.','',0),(150,'user','Great Workers','\n                                                    Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan.','',0),(151,'flag','Amazing Location','\n                                                    Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan.','',0),(152,'clock-o','Paid Time Off','\n                                                    Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan.','',0),(153,'star','No Meetings','\n                                                    Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan.','',0),(154,'beer','Free Drinks','\n                                                    Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan.','',0);
/*!40000 ALTER TABLE `btFeature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btForm`
--

DROP TABLE IF EXISTS `btForm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btForm` (
  `bID` int(10) unsigned NOT NULL,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `surveyName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `submitText` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'Submit',
  `thankyouMsg` text COLLATE utf8_unicode_ci,
  `notifyMeOnSubmission` tinyint(1) NOT NULL DEFAULT '0',
  `recipientEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayCaptcha` int(11) DEFAULT '1',
  `redirectCID` int(11) DEFAULT '0',
  `addFilesToSet` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `questionSetIdForeign` (`questionSetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btForm`
--

LOCK TABLES `btForm` WRITE;
/*!40000 ALTER TABLE `btForm` DISABLE KEYS */;
INSERT INTO `btForm` VALUES (128,1498489156,'Contact Us','Submit','Thanks!',0,'',0,0,0);
/*!40000 ALTER TABLE `btForm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFormAnswerSet`
--

DROP TABLE IF EXISTS `btFormAnswerSet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFormAnswerSet` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`asID`),
  KEY `questionSetId` (`questionSetId`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFormAnswerSet`
--

LOCK TABLES `btFormAnswerSet` WRITE;
/*!40000 ALTER TABLE `btFormAnswerSet` DISABLE KEYS */;
/*!40000 ALTER TABLE `btFormAnswerSet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFormAnswers`
--

DROP TABLE IF EXISTS `btFormAnswers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFormAnswers` (
  `aID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asID` int(10) unsigned DEFAULT '0',
  `msqID` int(10) unsigned DEFAULT '0',
  `answer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `answerLong` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`aID`),
  KEY `asID` (`asID`),
  KEY `msqID` (`msqID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFormAnswers`
--

LOCK TABLES `btFormAnswers` WRITE;
/*!40000 ALTER TABLE `btFormAnswers` DISABLE KEYS */;
/*!40000 ALTER TABLE `btFormAnswers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFormQuestions`
--

DROP TABLE IF EXISTS `btFormQuestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFormQuestions` (
  `qID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msqID` int(10) unsigned DEFAULT '0',
  `bID` int(10) unsigned DEFAULT '0',
  `questionSetId` int(10) unsigned DEFAULT '0',
  `question` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inputType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8_unicode_ci,
  `position` int(10) unsigned DEFAULT '1000',
  `width` int(10) unsigned DEFAULT '50',
  `height` int(10) unsigned DEFAULT '3',
  `defaultDate` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `required` int(11) DEFAULT '0',
  PRIMARY KEY (`qID`),
  KEY `questionSetId` (`questionSetId`),
  KEY `msqID` (`msqID`),
  KEY `bID` (`bID`,`questionSetId`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFormQuestions`
--

LOCK TABLES `btFormQuestions` WRITE;
/*!40000 ALTER TABLE `btFormQuestions` DISABLE KEYS */;
INSERT INTO `btFormQuestions` VALUES (19,1,128,1498489156,'First Name','field','',0,50,3,'',1),(20,2,128,1498489156,'Last Name','field','',0,50,3,'',1),(21,3,128,1498489156,'Email Address','email','a:1:{s:22:\"send_notification_from\";i:0;}',0,50,3,'',1),(25,4,128,1498489156,'Subject','select','\n                                                    I love your work.%%Great website.%%Check out this cool thing I found.%%Other.',0,50,3,'',0),(26,5,128,1498489156,'Message','text','',0,50,3,'',0);
/*!40000 ALTER TABLE `btFormQuestions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btGoogleMap`
--

DROP TABLE IF EXISTS `btGoogleMap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btGoogleMap` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `zoom` smallint(6) DEFAULT NULL,
  `width` varchar(8) COLLATE utf8_unicode_ci DEFAULT '100%',
  `height` varchar(8) COLLATE utf8_unicode_ci DEFAULT '400px',
  `scrollwheel` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btGoogleMap`
--

LOCK TABLES `btGoogleMap` WRITE;
/*!40000 ALTER TABLE `btGoogleMap` DISABLE KEYS */;
INSERT INTO `btGoogleMap` VALUES (121,'','1200 NW Naito Pkwy, Portland, OR, United States',45.5313254,-122.6763493,14,'100%','400px',0);
/*!40000 ALTER TABLE `btGoogleMap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btImageSlider`
--

DROP TABLE IF EXISTS `btImageSlider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btImageSlider` (
  `bID` int(10) unsigned NOT NULL,
  `navigationType` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btImageSlider`
--

LOCK TABLES `btImageSlider` WRITE;
/*!40000 ALTER TABLE `btImageSlider` DISABLE KEYS */;
INSERT INTO `btImageSlider` VALUES (51,1),(84,0),(86,0),(88,0),(90,0),(92,0),(94,0);
/*!40000 ALTER TABLE `btImageSlider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btImageSliderEntries`
--

DROP TABLE IF EXISTS `btImageSliderEntries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btImageSliderEntries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `cID` int(10) unsigned DEFAULT '0',
  `fID` int(10) unsigned DEFAULT '0',
  `linkURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  `title` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `sortOrder` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btImageSliderEntries`
--

LOCK TABLES `btImageSliderEntries` WRITE;
/*!40000 ALTER TABLE `btImageSliderEntries` DISABLE KEYS */;
INSERT INTO `btImageSliderEntries` VALUES (1,51,0,13,'',0,'Stand Out on the Web','<p>Share your business with an impressive, yet minimal presentation. Let your customers understand your web presence through elegance and clarity.</p>',0),(2,51,0,14,'',0,'A Simple Image Slider','<p>This image slider can have any content that you want in it.</p>',1),(3,84,0,16,'',0,'','',0),(4,84,0,15,'',0,'','',1),(5,84,0,12,'',0,'','',2),(6,86,0,16,'',0,'','',0),(7,86,0,15,'',0,'','',1),(8,86,0,12,'',0,'','',2),(9,88,0,16,'',0,'','',0),(10,88,0,15,'',0,'','',1),(11,88,0,12,'',0,'','',2),(12,90,0,16,'',0,'','',0),(13,90,0,15,'',0,'','',1),(14,90,0,12,'',0,'','',2),(15,92,0,16,'',0,'','',0),(16,92,0,15,'',0,'','',1),(17,92,0,12,'',0,'','',2),(18,94,0,16,'',0,'','',0),(19,94,0,15,'',0,'','',1),(20,94,0,12,'',0,'','',2);
/*!40000 ALTER TABLE `btImageSliderEntries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btNavigation`
--

DROP TABLE IF EXISTS `btNavigation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btNavigation` (
  `bID` int(10) unsigned NOT NULL,
  `orderBy` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'alpha_asc',
  `displayPages` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'top' COMMENT 'was enum(''top'',''current'',''above'',''below'',''custom'')',
  `displayPagesCID` int(10) unsigned NOT NULL DEFAULT '1',
  `displayPagesIncludeSelf` tinyint(1) NOT NULL DEFAULT '0',
  `displaySubPages` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'none' COMMENT 'was enum(''none'',''all'',''relevant'',''relevant_breadcrumb'')',
  `displaySubPageLevels` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'none' COMMENT 'was enum(''all'',''none'',''enough'',''enough_plus1'',''custom'')',
  `displaySubPageLevelsNum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `displayUnavailablePages` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btNavigation`
--

LOCK TABLES `btNavigation` WRITE;
/*!40000 ALTER TABLE `btNavigation` DISABLE KEYS */;
INSERT INTO `btNavigation` VALUES (48,'display_asc','top',0,0,'all','custom',1,0);
/*!40000 ALTER TABLE `btNavigation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btNextPrevious`
--

DROP TABLE IF EXISTS `btNextPrevious`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btNextPrevious` (
  `bID` int(10) unsigned NOT NULL,
  `nextLabel` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `previousLabel` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parentLabel` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loopSequence` int(11) DEFAULT '1',
  `excludeSystemPages` int(11) DEFAULT '1',
  `orderBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'display_asc',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btNextPrevious`
--

LOCK TABLES `btNextPrevious` WRITE;
/*!40000 ALTER TABLE `btNextPrevious` DISABLE KEYS */;
INSERT INTO `btNextPrevious` VALUES (11,'Next Post','Last Post','',0,1,'chrono_desc');
/*!40000 ALTER TABLE `btNextPrevious` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btPageAttributeDisplay`
--

DROP TABLE IF EXISTS `btPageAttributeDisplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btPageAttributeDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `attributeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attributeTitleText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayTag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateFormat` varchar(100) COLLATE utf8_unicode_ci DEFAULT 'div',
  `thumbnailHeight` int(10) unsigned DEFAULT NULL,
  `thumbnailWidth` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btPageAttributeDisplay`
--

LOCK TABLES `btPageAttributeDisplay` WRITE;
/*!40000 ALTER TABLE `btPageAttributeDisplay` DISABLE KEYS */;
INSERT INTO `btPageAttributeDisplay` VALUES (21,'job_posting_department','','p','m/d/y h:i:a',250,250),(23,'job_location','','p','m/d/y h:i:a',250,250),(29,'project_client','Client:','div','m/d/y h:i:a',250,250),(30,'project_tasks','Task:','div','m/d/y h:i:a',250,250),(31,'project_skills','Skills:','div','m/d/y h:i:a',250,250);
/*!40000 ALTER TABLE `btPageAttributeDisplay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btPageList`
--

DROP TABLE IF EXISTS `btPageList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btPageList` (
  `bID` int(10) unsigned NOT NULL,
  `num` smallint(5) unsigned NOT NULL,
  `orderBy` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Was enum, display_asc'',''display_desc'',''chrono_asc'',''chrono_desc'',''alpha_asc'',''alpha_desc'',''score_asc'',''score_desc''',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `cThis` tinyint(1) NOT NULL DEFAULT '0',
  `useButtonForLink` tinyint(1) NOT NULL DEFAULT '0',
  `buttonLinkText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pageListTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filterByRelated` tinyint(1) NOT NULL DEFAULT '0',
  `filterByCustomTopic` tinyint(1) NOT NULL DEFAULT '0',
  `filterDateOption` varchar(25) COLLATE utf8_unicode_ci DEFAULT 'all' COMMENT '(''all'',''today'',''past'',''future'',''between'')',
  `filterDateDays` int(10) unsigned NOT NULL DEFAULT '0',
  `filterDateStart` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filterDateEnd` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `relatedTopicAttributeKeyHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customTopicAttributeKeyHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customTopicTreeNodeID` int(10) unsigned NOT NULL DEFAULT '0',
  `includeName` tinyint(1) NOT NULL DEFAULT '1',
  `includeDescription` tinyint(1) NOT NULL DEFAULT '1',
  `includeDate` tinyint(1) NOT NULL DEFAULT '0',
  `includeAllDescendents` tinyint(1) NOT NULL DEFAULT '0',
  `paginate` tinyint(1) NOT NULL DEFAULT '0',
  `displayAliases` tinyint(1) NOT NULL DEFAULT '1',
  `enableExternalFiltering` tinyint(1) NOT NULL DEFAULT '0',
  `ptID` smallint(5) unsigned DEFAULT NULL,
  `pfID` int(11) DEFAULT '0',
  `truncateSummaries` int(11) DEFAULT '0',
  `displayFeaturedOnly` tinyint(1) DEFAULT '0',
  `noResultsMessage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayThumbnail` tinyint(1) DEFAULT '0',
  `truncateChars` int(11) DEFAULT '128',
  PRIMARY KEY (`bID`),
  KEY `ptID` (`ptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btPageList`
--

LOCK TABLES `btPageList` WRITE;
/*!40000 ALTER TABLE `btPageList` DISABLE KEYS */;
INSERT INTO `btPageList` VALUES (14,3,'random',158,0,0,NULL,'Related Posts',0,0,'',0,NULL,NULL,'','',0,1,0,0,0,0,0,0,7,0,0,0,NULL,0,0),(18,0,'chrono_desc',174,0,0,NULL,'Open Positions',0,0,'',0,NULL,NULL,'','',0,1,0,0,0,0,0,0,0,0,0,0,NULL,0,0),(34,3,'random',0,0,0,NULL,'Related Projects',0,0,'',0,NULL,NULL,'','',0,1,0,0,0,0,0,0,9,0,0,0,'No related projects found.',0,0),(37,10,'chrono_desc',0,0,0,'',NULL,0,0,'',0,NULL,NULL,'','',0,1,1,1,0,1,0,1,7,1,0,0,'No posts to this blog.',0,0),(42,0,'chrono_desc',0,0,0,'',NULL,0,0,'',0,NULL,NULL,'','',0,1,0,0,0,1,0,1,9,0,0,0,'No projects found.',1,0),(58,3,'chrono_desc',0,0,1,'View Project',NULL,0,0,'',0,NULL,NULL,'','',0,1,1,0,0,0,0,0,9,0,0,1,'',1,0),(64,1,'chrono_desc',0,0,0,'',NULL,0,0,'',0,NULL,NULL,'','',0,0,0,0,0,0,0,0,7,0,0,0,'',1,0),(65,1,'display_asc',0,0,0,'',NULL,0,0,'',0,NULL,NULL,'','',0,1,1,0,0,0,0,0,7,0,0,0,'',0,0),(158,0,'chrono_desc',174,1,1,'Apply Now',NULL,0,0,'',0,NULL,NULL,'','',0,1,1,0,0,0,0,0,8,0,0,0,NULL,0,0);
/*!40000 ALTER TABLE `btPageList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btPageTitle`
--

DROP TABLE IF EXISTS `btPageTitle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btPageTitle` (
  `bID` int(10) unsigned NOT NULL,
  `useCustomTitle` int(10) unsigned DEFAULT '0',
  `titleText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `formatting` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btPageTitle`
--

LOCK TABLES `btPageTitle` WRITE;
/*!40000 ALTER TABLE `btPageTitle` DISABLE KEYS */;
INSERT INTO `btPageTitle` VALUES (9,0,'[Page Title]',NULL),(17,0,'[Page Title]',NULL),(27,0,'[Page Title]',NULL),(35,0,'[Page Title]',NULL),(40,0,'[Page Title]',NULL),(68,1,'Our Expertise',NULL),(96,0,'',NULL),(119,0,'',NULL),(130,0,'',NULL),(145,1,'Work with Us',NULL),(161,0,'Frequently Asked Questions',NULL);
/*!40000 ALTER TABLE `btPageTitle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btRssDisplay`
--

DROP TABLE IF EXISTS `btRssDisplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btRssDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateFormat` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itemsToDisplay` int(10) unsigned DEFAULT '5',
  `showSummary` tinyint(1) NOT NULL DEFAULT '1',
  `launchInNewWindow` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btRssDisplay`
--

LOCK TABLES `btRssDisplay` WRITE;
/*!40000 ALTER TABLE `btRssDisplay` DISABLE KEYS */;
/*!40000 ALTER TABLE `btRssDisplay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSearch`
--

DROP TABLE IF EXISTS `btSearch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSearch` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `buttonText` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `baseSearchPath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postTo_cID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resultsURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSearch`
--

LOCK TABLES `btSearch` WRITE;
/*!40000 ALTER TABLE `btSearch` DISABLE KEYS */;
INSERT INTO `btSearch` VALUES (49,'','','','159',''),(118,'Search','Search','','','');
/*!40000 ALTER TABLE `btSearch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btShareThisPage`
--

DROP TABLE IF EXISTS `btShareThisPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btShareThisPage` (
  `btShareThisPageID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT '0',
  `service` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayOrder` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`btShareThisPageID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btShareThisPage`
--

LOCK TABLES `btShareThisPage` WRITE;
/*!40000 ALTER TABLE `btShareThisPage` DISABLE KEYS */;
INSERT INTO `btShareThisPage` VALUES (1,12,'facebook',0),(2,12,'twitter',1),(3,12,'linkedin',2),(4,12,'email',3);
/*!40000 ALTER TABLE `btShareThisPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSocialLinks`
--

DROP TABLE IF EXISTS `btSocialLinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSocialLinks` (
  `btSocialLinkID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT '0',
  `slID` int(10) unsigned DEFAULT '0',
  `displayOrder` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`btSocialLinkID`),
  KEY `bID` (`bID`,`displayOrder`),
  KEY `slID` (`slID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSocialLinks`
--

LOCK TABLES `btSocialLinks` WRITE;
/*!40000 ALTER TABLE `btSocialLinks` DISABLE KEYS */;
INSERT INTO `btSocialLinks` VALUES (1,47,3,0),(2,47,2,1),(3,47,1,2);
/*!40000 ALTER TABLE `btSocialLinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSurvey`
--

DROP TABLE IF EXISTS `btSurvey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSurvey` (
  `bID` int(10) unsigned NOT NULL,
  `question` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `requiresRegistration` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSurvey`
--

LOCK TABLES `btSurvey` WRITE;
/*!40000 ALTER TABLE `btSurvey` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSurvey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSurveyOptions`
--

DROP TABLE IF EXISTS `btSurveyOptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSurveyOptions` (
  `optionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(11) DEFAULT NULL,
  `optionName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayOrder` int(11) DEFAULT '0',
  PRIMARY KEY (`optionID`),
  KEY `bID` (`bID`,`displayOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSurveyOptions`
--

LOCK TABLES `btSurveyOptions` WRITE;
/*!40000 ALTER TABLE `btSurveyOptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSurveyOptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSurveyResults`
--

DROP TABLE IF EXISTS `btSurveyResults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSurveyResults` (
  `resultID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `optionID` int(10) unsigned DEFAULT '0',
  `uID` int(10) unsigned DEFAULT '0',
  `bID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT NULL,
  `ipAddress` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`resultID`),
  KEY `optionID` (`optionID`),
  KEY `cID` (`cID`,`optionID`,`bID`),
  KEY `bID` (`bID`,`cID`,`uID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSurveyResults`
--

LOCK TABLES `btSurveyResults` WRITE;
/*!40000 ALTER TABLE `btSurveyResults` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSurveyResults` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSwitchLanguage`
--

DROP TABLE IF EXISTS `btSwitchLanguage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSwitchLanguage` (
  `bID` int(10) unsigned NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSwitchLanguage`
--

LOCK TABLES `btSwitchLanguage` WRITE;
/*!40000 ALTER TABLE `btSwitchLanguage` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSwitchLanguage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btTags`
--

DROP TABLE IF EXISTS `btTags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btTags` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetCID` int(11) DEFAULT NULL,
  `displayMode` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'page',
  `cloudCount` int(11) DEFAULT '10',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btTags`
--

LOCK TABLES `btTags` WRITE;
/*!40000 ALTER TABLE `btTags` DISABLE KEYS */;
/*!40000 ALTER TABLE `btTags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btTestimonial`
--

DROP TABLE IF EXISTS `btTestimonial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btTestimonial` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `companyURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paragraph` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btTestimonial`
--

LOCK TABLES `btTestimonial` WRITE;
/*!40000 ALTER TABLE `btTestimonial` DISABLE KEYS */;
INSERT INTO `btTestimonial` VALUES (80,1,'Franz Maruna','CEO & Founder','concrete5','http://concrete5.org','Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus.'),(81,1,'John Doe','Marketing Directory','CompanyCo','','Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus.'),(82,1,'Andrew Embler','CTO & Founder','concrete5','http://concrete5.org','Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus.'),(83,1,'Jane Doe','IT Manager','CompanyCo','','Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus.'),(98,3,'John Smith','Co-Founder / CEO','','','Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis.'),(99,3,'Bob Smith','Co-Founder / CTO','','','Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis.'),(102,3,'John Smith','Art Director','','','Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis.'),(103,3,'John Smith','Art Director','','','Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis.'),(104,3,'Bob Smith','Art Director','','','Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis.'),(105,3,'Bob Smith','Art Director','','','Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis.'),(106,3,'Bob Smith','Art Director','','','Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis.'),(107,3,'Bob Smith','Art Director','','','Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis.');
/*!40000 ALTER TABLE `btTestimonial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btTopicList`
--

DROP TABLE IF EXISTS `btTopicList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btTopicList` (
  `bID` int(10) unsigned NOT NULL,
  `mode` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S' COMMENT 'S = Search, P = Page',
  `topicAttributeKeyHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `topicTreeID` int(10) unsigned NOT NULL DEFAULT '0',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btTopicList`
--

LOCK TABLES `btTopicList` WRITE;
/*!40000 ALTER TABLE `btTopicList` DISABLE KEYS */;
INSERT INTO `btTopicList` VALUES (13,'P','blog_entry_topics',2,158,'Topics'),(38,'S','',2,0,'Topics'),(41,'S','',3,0,'');
/*!40000 ALTER TABLE `btTopicList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btVideo`
--

DROP TABLE IF EXISTS `btVideo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btVideo` (
  `bID` int(10) unsigned NOT NULL,
  `webmfID` int(10) unsigned DEFAULT '0',
  `oggfID` int(10) unsigned DEFAULT '0',
  `posterfID` int(10) unsigned DEFAULT '0',
  `mp4fID` int(10) unsigned DEFAULT '0',
  `width` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btVideo`
--

LOCK TABLES `btVideo` WRITE;
/*!40000 ALTER TABLE `btVideo` DISABLE KEYS */;
/*!40000 ALTER TABLE `btVideo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btYouTube`
--

DROP TABLE IF EXISTS `btYouTube`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btYouTube` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `videoURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vHeight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vWidth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vPlayer` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btYouTube`
--

LOCK TABLES `btYouTube` WRITE;
/*!40000 ALTER TABLE `btYouTube` DISABLE KEYS */;
/*!40000 ALTER TABLE `btYouTube` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gaPage`
--

DROP TABLE IF EXISTS `gaPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gaPage` (
  `gaiID` int(10) unsigned NOT NULL,
  `cID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`gaiID`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gaPage`
--

LOCK TABLES `gaPage` WRITE;
/*!40000 ALTER TABLE `gaPage` DISABLE KEYS */;
/*!40000 ALTER TABLE `gaPage` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-27 17:18:21
