-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: localhost    Database: aibes_production_db
-- ------------------------------------------------------
-- Server version	5.5.46

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
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2022-04-07 07:56:33','2022-04-07 07:56:33');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `budget_categories`
--

DROP TABLE IF EXISTS `budget_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `budget_categories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `budget_categories`
--

LOCK TABLES `budget_categories` WRITE;
/*!40000 ALTER TABLE `budget_categories` DISABLE KEYS */;
INSERT INTO `budget_categories` VALUES (1,'Substructure','Substructure'),(2,'Concrete Slab','Concrete Slab'),(3,'Superstructure','Superstructure'),(4,'Concrete Lintols','Concrete Lintols'),(5,'Joinery, Carpentry & Ironmongery','Joinery, Carpentry & Ironmongery'),(6,'Aluminium & Metal Work','Aluminium & Metal Work'),(7,'Plastering & Floor Finishing','Plastering & Floor Finishing'),(8,'Painting','Painting'),(9,'Roofing','Roofing');
/*!40000 ALTER TABLE `budget_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `budget_items`
--

DROP TABLE IF EXISTS `budget_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `budget_items` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `budget_id` bigint(20) DEFAULT NULL,
  `item_code` varchar(255) DEFAULT NULL,
  `item_description` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `amount` decimal(18,2) DEFAULT '0.00',
  `purpose` varchar(255) DEFAULT NULL,
  `measuring_unit_id` int(11) NOT NULL,
  `budget_category_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_budget_items_on_budget_id` (`budget_id`),
  KEY `index_budget_items_on_budget_category_id` (`budget_category_id`),
  CONSTRAINT `fk_rails_6135db3849` FOREIGN KEY (`budget_id`) REFERENCES `budgets` (`id`),
  CONSTRAINT `fk_rails_c9e34fb7bf` FOREIGN KEY (`budget_category_id`) REFERENCES `budget_categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `budget_items`
--

LOCK TABLES `budget_items` WRITE;
/*!40000 ALTER TABLE `budget_items` DISABLE KEYS */;
INSERT INTO `budget_items` VALUES (1,1,NULL,'Wahed River Sand',20,20.00,'Footing',1,1,'2022-04-07 14:51:10','2022-04-07 14:51:10'),(2,1,NULL,'Cement 50kg PPC',78,9.00,'Footing',6,1,'2022-04-07 14:51:10','2022-04-07 14:51:10'),(3,1,NULL,'19mm stones or 3/4 stones',20,35.00,'Footing',1,1,'2022-04-07 14:51:10','2022-04-07 14:51:10'),(4,1,NULL,'Load bearing bricks',10,130.00,'Footing',2,1,'2022-04-07 14:51:10','2022-04-07 14:51:10'),(5,1,NULL,'Pitsand',10,8.00,'Footing',1,1,'2022-04-07 14:51:10','2022-04-07 14:51:10'),(6,1,NULL,'Brick Force to suite 115mm wall --(20m rolls)',12,3.00,'Footing',2,1,'2022-04-07 14:51:10','2022-04-07 14:51:10'),(7,1,NULL,'Brick Force to suite 230mm wall --(20m rolls)',16,2.50,'Footing',2,1,'2022-04-07 14:51:10','2022-04-07 14:51:10'),(8,1,NULL,'Harcore(fill material)',58,20.00,'Footing',1,1,'2022-04-07 14:51:10','2022-04-07 14:51:10'),(9,1,NULL,'Termite Poison',22,4.00,'Footing',2,1,'2022-04-07 14:51:10','2022-04-07 14:51:10'),(10,1,NULL,'Reinforced Mesh S193',14,35.00,'Footing',2,1,'2022-04-07 14:51:10','2022-04-07 14:51:10'),(11,1,NULL,'Black Polythene sheeting 2400mm wide mm(100m rolls)',1,90.00,'Footing',2,1,'2022-04-07 14:51:10','2022-04-07 14:51:10'),(12,1,NULL,'19mm stones or 3/4 stones',17,35.00,'Concrete Slab',1,2,'2022-04-07 14:51:10','2022-04-07 14:51:10'),(13,1,NULL,'River Sand',9,20.00,'Concrete Slab',1,2,'2022-04-07 14:51:10','2022-04-07 14:51:10'),(14,1,NULL,'Cement 50kg bags (PPC)',84,8.00,'Concrete Slab',2,2,'2022-04-07 14:51:10','2022-04-07 14:51:10'),(15,1,NULL,'3 ply bituminous D.P.C for 115mm wall(20m rolls)',3,2.00,'Superstructure(Provisional)',2,3,'2022-04-07 14:51:10','2022-04-07 14:51:10'),(16,1,NULL,'3 ply bituminous D.P.C for 230mm wall(20m rolls)',3,3.00,'Superstructure(Provisional)',2,3,'2022-04-07 14:51:10','2022-04-07 14:51:10'),(17,1,NULL,'Pit sand',13,8.00,'Superstructure(Provisional)',1,3,'2022-04-07 14:51:10','2022-04-07 14:51:10'),(18,1,NULL,'PC Cement 50kg bags ',75,8.00,'Superstructure(Provisional)',2,3,'2022-04-07 14:51:10','2022-04-07 14:51:10'),(19,1,NULL,'Hard common bricks',19,130.00,'Superstructure(Provisional)',2,3,'2022-04-07 14:51:10','2022-04-07 14:51:10'),(20,1,NULL,'Brick Force to suite 115mm wall --(20m rolls)',22,2.00,'Superstructure(Provisional)',2,3,'2022-04-07 14:51:10','2022-04-07 14:51:10'),(21,1,NULL,'Brick Force to suite 230mm wall --(20m rolls)',25,2.50,'Superstructure(Provisional)',2,3,'2022-04-07 15:03:49','2022-04-07 15:03:49'),(22,1,NULL,'Internal gypsum air vent',30,1.00,'Superstructure(Provisional)',2,3,'2022-04-07 15:03:49','2022-04-07 15:03:49'),(23,1,NULL,'External cement air vent',30,1.00,'Superstructure(Provisional)',2,3,'2022-04-07 15:03:49','2022-04-07 15:03:49'),(24,1,NULL,'Lintols 3275mm x 230mm x 110mm long',1,120.00,'Concrete Lintols',2,4,'2022-04-07 15:03:49','2022-04-07 15:03:49'),(25,1,NULL,'Lintols 4000mmx 230mm x 110mm long',1,1.00,'Concrete Lintols',2,4,'2022-04-07 15:03:49','2022-04-07 15:03:49'),(26,1,NULL,'Ditto 1640mm x 115mm x 110mm',12,12.00,'Concrete Lintols',2,4,'2022-04-07 15:03:49','2022-04-07 15:03:49'),(27,1,NULL,'12mm deformed bars',52,6.00,'Reinforcement Bars',4,4,'2022-04-07 15:03:49','2022-04-07 15:03:49'),(28,1,NULL,'Tying wire',10,2.00,'Reinforcement Bars',6,4,'2022-04-07 15:03:49','2022-04-07 15:03:49'),(29,1,NULL,'Sawn Timber',20,6.00,'Reinforcement Bars',2,4,'2022-04-07 15:03:50','2022-04-07 15:03:50'),(30,1,NULL,'3\'\' nails',10,7.00,'Reinforcement Bars',6,4,'2022-04-07 15:03:50','2022-04-07 15:03:50'),(31,1,NULL,'19mm stones or 3/4 stones',5,35.00,'Reinforcement Bars',1,4,'2022-04-07 15:03:50','2022-04-07 15:03:50'),(32,1,NULL,'River Sand',5,20.00,'Reinforcement Bars',1,4,'2022-04-07 15:03:50','2022-04-07 15:03:50'),(33,1,NULL,'Cement 50kg bags (PPC)',40,8.00,'Reinforcement Bars',6,4,'2022-04-07 15:03:50','2022-04-07 15:03:50'),(34,1,NULL,'Three lever mortice lockset',10,15.00,'Ironmongery',2,5,'2022-04-08 06:58:45','2022-04-08 06:58:45'),(35,1,NULL,'38mm diameter door stopper',10,2.00,'Ironmongery',2,5,'2022-04-08 06:58:45','2022-04-08 06:58:45'),(36,1,NULL,'6000m x 38 x 38mm brandering',96,3.00,'Ceiling',4,5,'2022-04-08 06:58:45','2022-04-08 06:58:45'),(37,1,NULL,'Plaster boards 2400mm x 1200mm',83,12.00,'Ceiling',2,5,'2022-04-08 06:58:45','2022-04-08 06:58:45'),(38,1,NULL,'6000m x 76mm curved pine cornice',36,2.00,'Ceiling',4,5,'2022-04-08 06:58:45','2022-04-08 06:58:45'),(39,1,NULL,'19mm Quadrant skirting',42,2.00,'Ceiling',4,5,'2022-04-08 06:58:45','2022-04-08 06:58:45'),(40,1,NULL,'Trap door 600mm x 600mm',2,34.00,'Ceiling',2,5,'2022-04-08 06:58:45','2022-04-08 06:58:45'),(41,1,NULL,'Paper Scrim',3,5.00,'Ceiling',2,5,'2022-04-08 06:58:45','2022-04-08 06:58:45'),(42,1,NULL,'Rhinobond',14,11.00,'Ceiling',6,5,'2022-04-08 06:58:45','2022-04-08 06:58:45'),(43,1,NULL,'Rhinoset',19,18.00,'Ceiling',6,5,'2022-04-08 06:58:45','2022-04-08 06:58:45'),(44,1,NULL,'Allow for nails 75mm wire nails',17,3.00,'Ceiling',6,5,'2022-04-08 06:58:45','2022-04-08 06:58:45'),(45,1,NULL,'Size 2000 x 1525mm bronze coated window - 4mm glass',4,80.00,'Standard Aluminum Window With all Accessories',2,6,'2022-04-08 07:06:30','2022-04-08 07:06:30'),(46,1,NULL,'Size 1800x 900mm bronze coated window - 4mm glass',1,70.00,'Standard Aluminum Window With all Accessories',2,6,'2022-04-08 07:06:30','2022-04-08 07:06:30'),(47,1,NULL,'Size 1200 x 900mm bronze coated window - 4mm glass',2,80.00,'Standard Aluminum Window With all Accessories',2,6,'2022-04-08 07:06:30','2022-04-08 07:06:30'),(48,1,NULL,'Size 600x 951mm bronze coated window - 4mm glass',4,65.00,'Standard Aluminum Window With all Accessories',2,6,'2022-04-08 07:06:30','2022-04-08 07:06:30'),(49,1,NULL,'Size 2390 x 1490mm bronze coated window - 4mm glass',1,140.00,'Standard Aluminum Window With all Accessories',2,6,'2022-04-08 07:06:30','2022-04-08 07:06:30'),(50,1,NULL,'Size 600 x 1000mm bronze coated window - 4mm glass',0,60.00,'Standard Aluminum Window With all Accessories',2,6,'2022-04-08 07:06:30','2022-04-08 07:06:30'),(51,1,NULL,'Size 1200 x 1000mm bronze coated window - 4mm glass',0,65.00,'Standard Aluminum Window With all Accessories',2,6,'2022-04-08 07:06:30','2022-04-08 07:06:30'),(52,1,NULL,'Standard Gauge 8 mm size 813 x 2032mm(R/H)',6,35.00,'Standard Steel Door Frames for 115mm wall',2,6,'2022-04-08 07:34:35','2022-04-08 07:34:35'),(53,1,NULL,'Standard Gauge 8 mm size 813 x 2032mm(L/H)',3,35.00,'Standard Steel Door Frames for 115mm wall',2,6,'2022-04-08 07:34:35','2022-04-08 07:34:35'),(54,1,NULL,'Standard Gauge 8 mm size 813 x 2032mm(F.L) or frame',0,45.00,'Standard Steel Door Frames for 115mm wall',2,6,'2022-04-08 07:34:35','2022-04-08 07:34:35'),(55,1,NULL,'Standard Gauge 8 mm size 2032mm x 813mm(R/H)',1,45.00,'Pressed Steel Door Frames for  230mm wall',2,6,'2022-04-08 07:34:35','2022-04-08 07:34:35'),(56,1,NULL,'Standard Gauge 8 mm size 2032mm x 813mm(L/H)',0,45.00,'Pressed Steel Door Frames for  230mm wall',2,6,'2022-04-08 07:34:35','2022-04-08 07:34:35'),(57,1,NULL,'Timber frame  pivot door size 1200mm x  2100mm',0,350.00,'Pressed Steel Door Frames for  230mm wall',2,6,'2022-04-08 07:34:35','2022-04-08 07:34:35'),(58,1,NULL,'Fire rated type size 2032mm x 813mm (L/H)',0,105.00,'Pressed Steel Door Frames for  230mm wall',2,6,'2022-04-08 07:34:35','2022-04-08 07:34:35'),(59,1,NULL,'Sliding Aluminum door size 2825mm x 2400mm',1,2350.00,'Purpose Made Aluminum Sliding Door',2,6,'2022-04-08 07:34:35','2022-04-08 07:34:35'),(60,1,NULL,'Sliding Aluminum door size 3000mm x 2100mm',0,2050.00,'Purpose Made Aluminum Sliding Door',2,6,'2022-04-08 07:34:35','2022-04-08 07:34:35'),(61,1,NULL,'44mm x 813mm x 2032mm external panel door',1,100.00,'Doors',2,6,'2022-04-08 07:34:35','2022-04-08 07:34:35'),(62,1,NULL,'44mm x 813mm x 2032mm internal panel door',9,45.00,'Doors',2,6,'2022-04-08 07:34:35','2022-04-08 07:34:35'),(63,1,NULL,'2672mm x 2100mm Laziman Garage Doors',1,650.00,'Doors',2,6,'2022-04-08 07:34:35','2022-04-08 07:34:35'),(64,1,NULL,'Washed River Sand',8,20.00,'Plastering, Screeds, Wall and Floor Finishing',1,7,'2022-04-08 07:34:35','2022-04-08 07:34:35'),(65,1,NULL,'Pit Sand',20,8.00,'Plastering, Screeds, Wall and Floor Finishing',1,7,'2022-04-08 07:34:35','2022-04-08 07:34:35'),(66,1,NULL,'PC Cement 50kg bags',65,8.00,'Plastering, Screeds, Wall and Floor Finishing',6,7,'2022-04-08 07:34:35','2022-04-08 07:34:35'),(67,1,NULL,'Rhinoset 25kg bags (walls)',25,8.00,'Plastering, Screeds, Wall and Floor Finishing',6,7,'2022-04-08 07:34:35','2022-04-08 07:34:35'),(68,1,NULL,'Rhinobond 25kg bags',36,12.00,'Plastering, Screeds, Wall and Floor Finishing',6,7,'2022-04-08 07:34:35','2022-04-08 07:34:35'),(69,1,NULL,'300mm x 300mm x 8mm Porcelain Floor Tiles',132,9.00,'Plastering, Screeds, Wall and Floor Finishing',2,7,'2022-04-08 07:34:35','2022-04-08 07:34:35'),(70,1,NULL,'350mm x 350mm x 8mm Ceramic Wall Tiles',32,13.00,'Plastering, Screeds, Wall and Floor Finishing',2,7,'2022-04-08 07:34:35','2022-04-08 07:34:35'),(71,1,NULL,'Tile adhesive 20kg bag',20,4.00,'Plastering, Screeds, Wall and Floor Finishing',6,7,'2022-04-08 07:34:35','2022-04-08 07:34:35'),(72,1,NULL,'Grout Grey 5kgs Bags',10,5.00,'Plastering, Screeds, Wall and Floor Finishing',6,7,'2022-04-08 07:39:59','2022-04-08 07:39:59'),(73,1,NULL,'Grout White 5kgs Bags',15,7.00,'Plastering, Screeds, Wall and Floor Finishing',6,7,'2022-04-08 07:39:59','2022-04-08 07:39:59'),(74,1,NULL,'Universal Undercoat White',3,28.00,'Painting',7,8,'2022-04-08 07:59:39','2022-04-08 07:59:39'),(75,1,NULL,'Interior / Exterior PVA White Paint',4,48.00,'Painting',7,8,'2022-04-08 07:59:39','2022-04-08 07:59:39'),(76,1,NULL,'Wash N Wear Silk (Tinted)',4,218.00,'Painting',7,8,'2022-04-08 07:59:39','2022-04-08 07:59:39'),(77,1,NULL,'Gloss Enamel Paint',4,42.00,'Painting',7,8,'2022-04-08 07:59:39','2022-04-08 07:59:39'),(78,1,NULL,'Ceiling White',2,55.00,'Painting',7,8,'2022-04-08 07:59:39','2022-04-08 07:59:39'),(79,1,NULL,'Turpentine / Thinners',2,15.00,'Painting',7,8,'2022-04-08 07:59:39','2022-04-08 07:59:39'),(80,1,NULL,'Brushes / Sandpaper',1,20.00,'Painting',2,8,'2022-04-08 07:59:39','2022-04-08 07:59:39'),(81,1,NULL,'Wood Primer ',3,25.00,'Painting',7,8,'2022-04-08 07:59:39','2022-04-08 07:59:39'),(82,1,NULL,'Tinters (4 x 50ml per 20L) Ext',16,3.00,'Painting',8,8,'2022-04-08 07:59:39','2022-04-08 07:59:39'),(83,1,NULL,'Tinters (4 x 50ml per 20L) Int',16,3.00,'Painting',8,8,'2022-04-08 07:59:39','2022-04-08 07:59:39'),(84,1,NULL,'Wire Nails',8,8.00,'Timber Roof',2,9,'2022-04-08 07:59:39','2022-04-08 07:59:39'),(85,1,NULL,'Conc Roofing Tiles',2800,1.00,'Timber Roof',2,9,'2022-04-08 07:59:39','2022-04-08 07:59:39'),(86,1,NULL,'Carbolineum',20,6.00,'Timber Roof',7,9,'2022-04-08 07:59:39','2022-04-08 07:59:39'),(87,1,NULL,'Galvanised Hoop Irons',120,2.00,'Timber Roof',2,9,'2022-04-08 07:59:39','2022-04-08 07:59:39'),(88,1,NULL,'Gutter Brackets',104,1.00,'Rain Water Disposal:PVC',2,9,'2022-04-08 07:59:39','2022-04-08 07:59:39'),(89,1,NULL,'G.I Valley Gutters',56,6.00,'Rain Water Disposal:PVC',4,9,'2022-04-08 07:59:39','2022-04-08 07:59:39'),(90,1,NULL,'100mm x 125mm G.I Eaves Gutter(gms)',104,5.00,'Rain Water Disposal:PVC',4,9,'2022-04-08 07:59:39','2022-04-08 07:59:39'),(91,1,NULL,'Outlet Nozzle',8,6.00,'Rain Water Disposal:PVC',2,9,'2022-04-08 07:59:39','2022-04-08 07:59:39'),(92,1,NULL,'100 x 75mm Rain Water Down Pipe(gms)',7,8.00,'Rain Water Disposal:PVC',4,9,'2022-04-08 07:59:39','2022-04-08 07:59:39'),(93,1,NULL,'75mm Eaves Offset',8,12.20,'Rain Water Disposal:PVC',2,9,'2022-04-08 07:59:39','2022-04-08 07:59:39'),(94,1,NULL,'Shoe',7,7.00,'Rain Water Disposal:PVC',2,9,'2022-04-08 08:03:24','2022-04-08 08:03:24'),(95,1,NULL,'Solvent Cement',2,8.00,'Rain Water Disposal:PVC',8,9,'2022-04-08 08:03:24','2022-04-08 08:03:24'),(96,1,NULL,'100mm Gutter External Angels',12,13.50,'Rain Water Disposal:PVC',2,9,'2022-04-08 08:03:24','2022-04-08 08:03:24'),(97,1,NULL,'100mm Gutter Internal Angels',8,13.50,'Rain Water Disposal:PVC',2,9,'2022-04-08 08:03:24','2022-04-08 08:03:24'),(98,1,NULL,'Holder Bats',21,4.00,'Rain Water Disposal:PVC',2,9,'2022-04-08 08:03:24','2022-04-08 08:03:24'),(99,1,NULL,'Drip Stones',7,7.00,'Rain Water Disposal:PVC',2,9,'2022-04-08 08:03:24','2022-04-08 08:03:24');
/*!40000 ALTER TABLE `budget_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `budgets`
--

DROP TABLE IF EXISTS `budgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `budgets` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `project_id` bigint(20) DEFAULT NULL,
  `period` date NOT NULL,
  `currency_id` bigint(20) DEFAULT NULL,
  `boq_reference_number` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_budgets_on_project_id` (`project_id`),
  KEY `index_budgets_on_currency_id` (`currency_id`),
  KEY `index_budgets_on_user_id` (`user_id`),
  CONSTRAINT `fk_rails_4d98e164e4` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`),
  CONSTRAINT `fk_rails_c00651a0d3` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`),
  CONSTRAINT `fk_rails_e708f32fd8` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `budgets`
--

LOCK TABLES `budgets` WRITE;
/*!40000 ALTER TABLE `budgets` DISABLE KEYS */;
INSERT INTO `budgets` VALUES (1,'House 33016 Mabvazuva',1,'2021-01-01',1,'33016',1,'2022-04-07 08:03:43','2022-04-07 08:03:43'),(2,'House1095',4,'2022-01-01',1,'ZSC1095',1,'2022-04-08 11:43:25','2022-04-08 11:43:25');
/*!40000 ALTER TABLE `budgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_equipments`
--

DROP TABLE IF EXISTS `company_equipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_equipments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `equipment_category_id` bigint(20) DEFAULT NULL,
  `purpose` varchar(255) DEFAULT NULL,
  `registration_number` varchar(255) NOT NULL,
  `serial_number` varchar(255) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `location_id` bigint(20) DEFAULT NULL,
  `value` decimal(18,2) DEFAULT '0.00',
  `active` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `available` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `index_company_equipments_on_equipment_category_id` (`equipment_category_id`),
  KEY `index_company_equipments_on_location_id` (`location_id`),
  CONSTRAINT `fk_rails_14dd8c14a5` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`),
  CONSTRAINT `fk_rails_bfc7d81ea6` FOREIGN KEY (`equipment_category_id`) REFERENCES `equipment_categories` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_equipments`
--

LOCK TABLES `company_equipments` WRITE;
/*!40000 ALTER TABLE `company_equipments` DISABLE KEYS */;
/*!40000 ALTER TABLE `company_equipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currencies` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `rate` decimal(8,2) DEFAULT '0.00',
  `active` tinyint(1) DEFAULT '1',
  `symbol` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` VALUES (1,'USD',1.00,1,''),(2,'ZWL',1.00,1,'');
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipment_categories`
--

DROP TABLE IF EXISTS `equipment_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipment_categories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment_categories`
--

LOCK TABLES `equipment_categories` WRITE;
/*!40000 ALTER TABLE `equipment_categories` DISABLE KEYS */;
INSERT INTO `equipment_categories` VALUES (1,'Graders'),(2,'Roller Compactor'),(3,'Bull dozers'),(4,'Lorries');
/*!40000 ALTER TABLE `equipment_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipment_timesheets`
--

DROP TABLE IF EXISTS `equipment_timesheets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipment_timesheets` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `equipment_id` int(11) DEFAULT NULL,
  `equipment_description` varchar(255) NOT NULL,
  `ownership` varchar(255) NOT NULL,
  `checkout_date` datetime NOT NULL,
  `checkin_date` datetime DEFAULT NULL,
  `assigned_to` varchar(255) NOT NULL,
  `scope` varchar(255) NOT NULL,
  `measure` varchar(255) NOT NULL,
  `estimated_quantity` decimal(8,1) NOT NULL DEFAULT '0.0',
  `actual_quantity` decimal(8,1) DEFAULT '0.0',
  `rate_scope` varchar(255) NOT NULL,
  `rate` decimal(18,2) DEFAULT '0.00',
  `assessment` text,
  `equipment_condition` varchar(255) DEFAULT NULL,
  `chargeable` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment_timesheets`
--

LOCK TABLES `equipment_timesheets` WRITE;
/*!40000 ALTER TABLE `equipment_timesheets` DISABLE KEYS */;
/*!40000 ALTER TABLE `equipment_timesheets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expense_categories`
--

DROP TABLE IF EXISTS `expense_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expense_categories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_material` tinyint(1) DEFAULT '0',
  `is_default` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense_categories`
--

LOCK TABLES `expense_categories` WRITE;
/*!40000 ALTER TABLE `expense_categories` DISABLE KEYS */;
INSERT INTO `expense_categories` VALUES (1,'Purchases','',1,1),(2,'Administration',NULL,0,1);
/*!40000 ALTER TABLE `expense_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expense_transactions`
--

DROP TABLE IF EXISTS `expense_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expense_transactions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `transaction_date` date NOT NULL,
  `description` varchar(255) NOT NULL,
  `purpose` varchar(255) NOT NULL,
  `expense_id` bigint(20) DEFAULT NULL,
  `project_id` bigint(20) DEFAULT NULL,
  `quantity` decimal(18,1) DEFAULT '1.0',
  `vat` decimal(18,2) DEFAULT '0.00',
  `amount` decimal(18,2) DEFAULT '0.00',
  `line_total` decimal(18,2) DEFAULT '0.00',
  `line_vat` decimal(18,2) DEFAULT '0.00',
  `approved_by_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `comment` varchar(255) DEFAULT NULL,
  `is_material` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `currency_id` bigint(20) DEFAULT NULL,
  `budget_item_id` int(11) DEFAULT NULL,
  `inventory_category_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_expense_transactions_on_expense_id` (`expense_id`),
  KEY `index_expense_transactions_on_project_id` (`project_id`),
  KEY `index_expense_transactions_on_user_id` (`user_id`),
  KEY `index_expense_transactions_on_currency_id` (`currency_id`),
  CONSTRAINT `fk_rails_5f031a309d` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`),
  CONSTRAINT `fk_rails_a9613b122d` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`),
  CONSTRAINT `fk_rails_b262f5db5a` FOREIGN KEY (`expense_id`) REFERENCES `expenses` (`id`),
  CONSTRAINT `fk_rails_cb3b6d154b` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense_transactions`
--

LOCK TABLES `expense_transactions` WRITE;
/*!40000 ALTER TABLE `expense_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `expense_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expenses` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `expense_category_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `index_expenses_on_expense_category_id` (`expense_category_id`),
  CONSTRAINT `fk_rails_3f5911559b` FOREIGN KEY (`expense_category_id`) REFERENCES `expense_categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expenses`
--

LOCK TABLES `expenses` WRITE;
/*!40000 ALTER TABLE `expenses` DISABLE KEYS */;
INSERT INTO `expenses` VALUES (1,2,'Labour','Human Capital Expenses','001',1),(2,2,'Food','Food for Human capital','002',1),(3,1,'Bricks','Bricks','001',1),(4,1,'Stones','Stones','002',1),(5,1,'Sands','Sands','003',1),(6,1,'Reinforcements','Reinforcements','004',1),(7,1,'Sundries & General','Sundries & General','005',1),(8,1,'Cement & Adhesives','Cement & Adhesives','',1);
/*!40000 ALTER TABLE `expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventories`
--

DROP TABLE IF EXISTS `inventories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `purpose` varchar(255) NOT NULL,
  `inventory_category_id` bigint(20) DEFAULT NULL,
  `budget_category_id` bigint(20) DEFAULT NULL,
  `quantity` int(11) DEFAULT '1',
  `amount` decimal(18,2) DEFAULT '0.00',
  `measuring_unit_id` bigint(20) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `budget_item_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_inventories_on_inventory_category_id` (`inventory_category_id`),
  KEY `index_inventories_on_budget_category_id` (`budget_category_id`),
  KEY `index_inventories_on_measuring_unit_id` (`measuring_unit_id`),
  CONSTRAINT `fk_rails_b0c1843bf9` FOREIGN KEY (`inventory_category_id`) REFERENCES `inventory_categories` (`id`),
  CONSTRAINT `fk_rails_e6da753403` FOREIGN KEY (`budget_category_id`) REFERENCES `budget_categories` (`id`),
  CONSTRAINT `fk_rails_e033dac51f` FOREIGN KEY (`measuring_unit_id`) REFERENCES `measuring_units` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventories`
--

LOCK TABLES `inventories` WRITE;
/*!40000 ALTER TABLE `inventories` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_categories`
--

DROP TABLE IF EXISTS `inventory_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_categories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_categories`
--

LOCK TABLES `inventory_categories` WRITE;
/*!40000 ALTER TABLE `inventory_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventory_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `address_line_1` varchar(255) NOT NULL,
  `address_line_2` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,'Msasa Warehouse','Msasa','Msasa','Harare','Zimbabwe','',''),(2,'Mabvazuva','Mutare Road','Ruwa','Harare','Zimbabwe','','');
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `measuring_units`
--

DROP TABLE IF EXISTS `measuring_units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `measuring_units` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `measuring_units`
--

LOCK TABLES `measuring_units` WRITE;
/*!40000 ALTER TABLE `measuring_units` DISABLE KEYS */;
INSERT INTO `measuring_units` VALUES (1,'Cubic','m3'),(2,'Each','each'),(3,'Centimetres','cm'),(4,'Metres','m'),(5,'Grams','g'),(6,'Kilograms','kg'),(7,'Litres','l'),(8,'Milliliters','mls');
/*!40000 ALTER TABLE `measuring_units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `location` varchar(255) NOT NULL,
  `active` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'Mabvazuva','Mabvazuva','Ruwa, Harare',1,'2022-04-07 08:00:44','2022-04-07 08:00:44'),(2,'Mabvazuva Estates','Madokero','Madokero',1,'2022-04-08 11:41:45','2022-04-08 11:41:45'),(3,'Borrowdale Clusters','Borrowdale Clusters','Borrowdale',1,'2022-04-08 11:42:01','2022-04-08 11:42:01'),(4,'Leengate Clusters','Harare','New Zimbabwe',1,'2022-04-08 11:42:26','2022-04-08 11:42:26');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20220321105822'),('20220321124902'),('20220321125345'),('20220321125849'),('20220321130414'),('20220321131032'),('20220321131621'),('20220321151753'),('20220322141912'),('20220324121349'),('20220324123528'),('20220324132934'),('20220324135953'),('20220324144424'),('20220330091337'),('20220330091744'),('20220330092734'),('20220330112642'),('20220331095005'),('20220331100115'),('20220401102618'),('20220401102921'),('20220401105045'),('20220401112506');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL DEFAULT '',
  `lastname` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `confirmation_sent_at` datetime DEFAULT NULL,
  `unconfirmed_email` varchar(255) DEFAULT NULL,
  `failed_attempts` int(11) NOT NULL DEFAULT '0',
  `unlock_token` varchar(255) DEFAULT NULL,
  `locked_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`),
  UNIQUE KEY `index_users_on_confirmation_token` (`confirmation_token`),
  UNIQUE KEY `index_users_on_unlock_token` (`unlock_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'','','tdchihobvu@gmail.com','$2a$12$IioEVXtLNAPGvs.Wg8McXedzFcBJTjBTzGTvUp0qpcsDyWIezQL1C',NULL,NULL,NULL,6,'2022-04-08 08:42:15','2022-04-08 06:48:23','::1','::1','WzvMJNCV_APvqFtVc5Ez','2022-04-07 07:58:29','2022-04-07 07:58:16',NULL,0,NULL,NULL,'2022-04-07 07:58:16','2022-04-08 08:42:15');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-08 15:33:57
