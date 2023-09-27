-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: p2alterworld
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `p2alterworld`
--

/*!40000 DROP DATABASE IF EXISTS `p2alterworld`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `p2alterworld` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `p2alterworld`;

--
-- Table structure for table `album`
--

DROP TABLE IF EXISTS `album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `album` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album`
--

LOCK TABLES `album` WRITE;
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
/*!40000 ALTER TABLE `album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `basket`
--

DROP TABLE IF EXISTS `basket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `basket` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usersId` int DEFAULT NULL,
  `productsId` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usersId` (`usersId`),
  KEY `productsId` (`productsId`),
  CONSTRAINT `basket_ibfk_1` FOREIGN KEY (`usersId`) REFERENCES `users` (`usersId`),
  CONSTRAINT `basket_ibfk_2` FOREIGN KEY (`productsId`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basket`
--

LOCK TABLES `basket` WRITE;
/*!40000 ALTER TABLE `basket` DISABLE KEYS */;
INSERT INTO `basket` VALUES (121,NULL,NULL,3,NULL),(122,NULL,NULL,4,NULL),(123,NULL,NULL,7,NULL),(124,NULL,NULL,4,NULL),(150,NULL,NULL,3,NULL),(151,NULL,NULL,7,NULL),(152,NULL,NULL,11,NULL);
/*!40000 ALTER TABLE `basket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorites` (
  `Products_id` int NOT NULL,
  `Users_id` int NOT NULL,
  PRIMARY KEY (`Products_id`,`Users_id`),
  KEY `fk_Produits_has_Users_Users1_idx` (`Users_id`),
  KEY `fk_Produits_has_Users_Produits1_idx` (`Products_id`),
  CONSTRAINT `fk_Produits_has_Users_Produits1` FOREIGN KEY (`Products_id`) REFERENCES `products` (`id`),
  CONSTRAINT `fk_Produits_has_Users_Users1` FOREIGN KEY (`Users_id`) REFERENCES `users` (`usersId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `billNumber` int NOT NULL,
  `date` date DEFAULT NULL,
  `usersId` int DEFAULT NULL,
  `productsId` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total` decimal(5,2) DEFAULT NULL,
  KEY `fk_Users_has_Produits_Produits2_idx` (`productsId`),
  KEY `fk_Users_has_Produits_Users2_idx` (`usersId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2022-02-03',1,1,1,NULL),(2,'2021-10-25',1,3,2,NULL),(3,'2021-05-26',2,1,3,NULL),(4,'2023-06-14',2,4,1,NULL),(16,'2023-09-15',28,3,1,6.69),(65,'2023-09-14',38,48,35,67.00),(66,'2023-09-14',25,NULL,2,67.00),(69,'2023-09-14',12,NULL,2,67.00),(85,'2023-09-14',38,NULL,6,67.00),(96,'2023-09-14',38,NULL,NULL,NULL),(97,'2023-09-14',38,NULL,NULL,NULL),(98,'2023-09-14',38,NULL,NULL,NULL),(99,'2023-09-14',38,NULL,NULL,NULL),(100,'2023-09-14',38,NULL,NULL,NULL),(101,'2023-09-14',38,NULL,NULL,NULL),(105,'2023-09-14',28,1,2,15.96),(123,'2023-09-15',38,3,1,6.69),(124,'2023-09-15',28,3,1,6.69),(125,'2023-09-15',28,1,1,7.98),(126,'2023-09-15',28,8,1,6.89),(127,'2023-09-15',27,1,1,7.98),(129,'2023-09-18',27,2,1,7.25),(129,'2023-09-18',27,2,1,7.25),(129,'2023-09-18',27,1,1,7.98),(129,'2023-09-18',27,2,1,7.25),(129,'2023-09-18',27,1,1,7.98),(130,'2023-09-18',27,2,1,7.25),(130,'2023-09-18',27,1,1,7.98),(130,'2023-09-18',27,3,1,6.69),(131,'2023-09-18',27,2,1,7.25),(131,'2023-09-18',27,1,1,7.98),(131,'2023-09-18',27,3,1,6.69),(131,'2023-09-18',27,5,1,7.96),(132,'2023-09-19',27,2,1,7.25),(132,'2023-09-19',27,3,2,13.38),(133,'2023-09-19',27,2,1,7.25),(133,'2023-09-19',27,3,2,13.38),(134,'2023-09-19',27,3,2,13.38),(134,'2023-09-19',27,2,1,7.25),(135,'2023-09-19',27,3,2,13.38),(135,'2023-09-19',27,2,1,7.25),(136,'2023-09-19',27,2,1,7.25),(136,'2023-09-19',27,3,2,13.38),(137,'2023-09-19',27,2,1,7.25),(137,'2023-09-19',27,3,2,13.38),(138,'2023-09-19',27,5,1,7.96),(138,'2023-09-19',27,1,2,15.96),(139,'2023-09-19',27,5,1,7.96),(139,'2023-09-19',27,1,2,15.96),(138,'2023-09-19',27,1,2,15.96),(138,'2023-09-19',27,5,1,7.96),(139,'2023-09-19',27,5,1,7.96),(139,'2023-09-19',27,1,2,15.96),(140,'2023-09-19',27,5,1,7.96),(140,'2023-09-19',27,1,2,15.96),(141,'2023-09-19',27,9,1,6.99),(141,'2023-09-19',27,16,1,4.00),(142,'2023-09-19',27,14,1,6.78),(142,'2023-09-19',27,11,1,4.46),(143,'2023-09-19',27,14,1,6.78),(143,'2023-09-19',27,11,1,4.46),(144,'2023-09-19',27,14,1,6.78),(144,'2023-09-19',27,11,1,4.46),(145,'2023-09-19',27,14,1,6.78),(145,'2023-09-19',27,11,1,4.46),(146,'2023-09-19',27,14,1,6.78),(146,'2023-09-19',27,11,1,4.46),(147,'2023-09-19',27,14,1,6.78),(147,'2023-09-19',27,11,1,4.46),(146,'2023-09-19',27,14,1,6.78),(146,'2023-09-19',27,11,1,4.46),(147,'2023-09-19',27,14,1,6.78),(147,'2023-09-19',27,11,1,4.46),(148,'2023-09-19',27,14,1,6.78),(148,'2023-09-19',27,11,1,4.46),(148,'2023-09-19',27,14,1,6.78),(148,'2023-09-19',27,11,1,4.46),(149,'2023-09-19',27,14,1,6.78),(149,'2023-09-19',27,11,1,4.46),(150,'2023-09-19',27,14,1,6.78),(150,'2023-09-19',27,11,1,4.46),(150,'2023-09-19',27,11,1,4.46),(150,'2023-09-19',27,14,1,6.78),(151,'2023-09-19',27,14,1,6.78),(151,'2023-09-19',27,11,1,4.46),(151,'2023-09-19',27,11,1,4.46),(151,'2023-09-19',27,14,1,6.78),(152,'2023-09-19',27,14,1,6.78),(152,'2023-09-19',27,11,1,4.46),(152,'2023-09-19',27,14,1,6.78),(152,'2023-09-19',27,11,1,4.46),(153,'2023-09-19',27,14,1,6.78),(153,'2023-09-19',27,11,1,4.46),(153,'2023-09-19',27,14,1,6.78),(153,'2023-09-19',27,11,1,4.46),(154,'2023-09-19',27,14,1,6.78),(154,'2023-09-19',27,11,1,4.46),(154,'2023-09-19',27,14,1,6.78),(154,'2023-09-19',27,11,1,4.46),(155,'2023-09-19',27,14,1,6.78),(155,'2023-09-19',27,11,1,4.46),(155,'2023-09-19',27,14,1,6.78),(155,'2023-09-19',27,11,1,4.46),(156,'2023-09-19',27,14,1,6.78),(156,'2023-09-19',27,11,1,4.46),(156,'2023-09-19',27,11,1,4.46),(156,'2023-09-19',27,14,1,6.78),(157,'2023-09-19',27,14,1,6.78),(157,'2023-09-19',27,11,1,4.46),(157,'2023-09-19',27,14,1,6.78),(157,'2023-09-19',27,11,1,4.46),(158,'2023-09-19',27,14,1,6.78),(158,'2023-09-19',27,11,1,4.46),(159,'2023-09-19',27,14,1,6.78),(159,'2023-09-19',27,11,1,4.46),(159,'2023-09-19',27,11,1,4.46),(159,'2023-09-19',27,14,1,6.78),(160,'2023-09-19',27,14,1,6.78),(160,'2023-09-19',27,11,1,4.46),(160,'2023-09-19',27,11,1,4.46),(160,'2023-09-19',27,14,1,6.78),(161,'2023-09-19',27,14,1,6.78),(161,'2023-09-19',27,11,1,4.46),(161,'2023-09-19',27,14,1,6.78),(161,'2023-09-19',27,11,1,4.46),(162,'2023-09-19',27,14,1,6.78),(162,'2023-09-19',27,11,1,4.46),(163,'2023-09-19',27,14,1,6.78),(163,'2023-09-19',27,11,1,4.46),(163,'2023-09-19',27,14,1,6.78),(163,'2023-09-19',27,11,1,4.46),(164,'2023-09-19',27,14,1,6.78),(164,'2023-09-19',27,11,1,4.46),(165,'2023-09-19',27,14,1,6.78),(165,'2023-09-19',27,11,1,4.46),(166,'2023-09-19',27,14,1,6.78),(166,'2023-09-19',27,11,1,4.46),(167,'2023-09-19',27,14,1,6.78),(167,'2023-09-19',27,11,1,4.46),(168,'2023-09-19',27,14,1,6.78),(168,'2023-09-19',27,11,1,4.46),(169,'2023-09-19',27,3,1,6.69),(169,'2023-09-19',27,1,1,7.98),(170,'2023-09-19',27,3,1,6.69),(169,'2023-09-19',27,3,1,6.69),(169,'2023-09-19',27,1,1,7.98),(167,'2023-09-19',27,14,1,6.78),(167,'2023-09-19',27,11,1,4.46),(170,'2023-09-19',27,1,1,7.98),(171,'2023-09-19',27,3,1,6.69),(171,'2023-09-19',27,1,1,7.98),(172,'2023-09-19',27,3,1,6.69),(172,'2023-09-19',27,1,1,7.98),(171,'2023-09-19',27,3,1,6.69),(170,'2023-09-19',27,3,1,6.69),(170,'2023-09-19',27,1,1,7.98),(171,'2023-09-19',27,1,1,7.98),(172,'2023-09-19',27,3,1,6.69),(172,'2023-09-19',27,1,1,7.98),(173,'2023-09-19',27,3,1,6.69),(173,'2023-09-19',27,1,1,7.98),(174,'2023-09-19',27,3,1,6.69),(174,'2023-09-19',27,1,1,7.98),(173,'2023-09-19',27,3,1,6.69),(173,'2023-09-19',27,1,1,7.98),(174,'2023-09-19',27,3,1,6.69),(174,'2023-09-19',27,1,1,7.98),(175,'2023-09-19',27,3,1,6.69),(175,'2023-09-19',27,1,1,7.98),(175,'2023-09-19',27,3,1,6.69),(175,'2023-09-19',27,1,1,7.98),(176,'2023-09-19',27,3,1,6.69),(176,'2023-09-19',27,1,1,7.98),(176,'2023-09-19',27,3,1,6.69),(176,'2023-09-19',27,1,1,7.98),(177,'2023-09-19',27,3,1,6.69),(177,'2023-09-19',27,1,1,7.98),(178,'2023-09-20',27,3,1,6.69),(178,'2023-09-20',27,2,1,7.25),(178,'2023-09-20',27,1,1,7.98),(178,'2023-09-20',27,2,1,7.25),(178,'2023-09-20',27,1,1,7.98),(178,'2023-09-20',27,3,1,6.69),(179,'2023-09-20',27,3,1,6.69),(179,'2023-09-20',27,1,1,7.98),(179,'2023-09-20',27,2,1,7.25),(180,'2023-09-20',27,2,1,7.25),(180,'2023-09-20',27,3,1,6.69),(179,'2023-09-20',27,1,1,7.98),(179,'2023-09-20',27,2,1,7.25),(179,'2023-09-20',27,3,1,6.69),(180,'2023-09-20',27,2,1,7.25),(180,'2023-09-20',27,3,1,6.69),(181,'2023-09-20',27,2,1,7.25),(181,'2023-09-20',27,3,1,6.69),(181,'2023-09-20',27,2,1,7.25),(181,'2023-09-20',27,3,1,6.69),(182,'2023-09-20',27,2,1,7.25),(182,'2023-09-20',27,3,1,6.69),(182,'2023-09-20',27,2,1,7.25),(182,'2023-09-20',27,3,1,6.69),(183,'2023-09-20',27,2,1,7.25),(183,'2023-09-20',27,3,1,6.69),(183,'2023-09-20',27,2,1,7.25),(183,'2023-09-20',27,3,1,6.69),(184,'2023-09-20',27,2,1,7.25),(184,'2023-09-20',27,3,1,6.69),(185,'2023-09-20',27,2,1,7.25),(185,'2023-09-20',27,3,1,6.69),(186,'2023-09-20',27,2,1,7.25),(186,'2023-09-20',27,3,1,6.69),(187,'2023-09-20',27,2,1,7.25),(187,'2023-09-20',27,3,1,6.69),(188,'2023-09-20',27,2,1,7.25),(188,'2023-09-20',27,3,1,6.69),(188,'2023-09-20',27,2,1,7.25),(188,'2023-09-20',27,3,1,6.69),(189,'2023-09-20',27,2,1,7.25),(190,'2023-09-20',27,8,1,6.89),(190,'2023-09-20',27,10,1,5.99),(191,'2023-09-20',27,8,1,6.89),(191,'2023-09-20',27,10,1,5.99),(192,'2023-09-20',27,2,1,7.25),(192,'2023-09-20',27,16,1,4.00),(192,'2023-09-20',27,18,1,5.03),(192,'2023-09-20',27,2,1,7.25),(192,'2023-09-20',27,16,1,4.00),(192,'2023-09-20',27,18,1,5.03),(191,'2023-09-20',27,8,1,6.89),(191,'2023-09-20',27,10,1,5.99),(193,'2023-09-20',27,6,1,6.36),(193,'2023-09-20',27,14,1,6.78),(193,'2023-09-20',27,6,1,6.36),(193,'2023-09-20',27,14,1,6.78),(194,'2023-09-20',27,6,1,6.36),(194,'2023-09-20',27,14,1,6.78),(194,'2023-09-20',27,6,1,6.36),(194,'2023-09-20',27,14,1,6.78),(195,'2023-09-20',27,1,1,7.98),(196,'2023-09-20',27,2,1,7.25),(196,'2023-09-20',27,11,2,8.92),(196,'2023-09-20',27,1,1,7.98),(197,'2023-09-21',29,3,3,20.07),(197,'2023-09-21',29,2,1,7.25),(197,'2023-09-21',29,8,7,48.23),(198,'2023-09-21',29,5,2,15.92),(198,'2023-09-21',29,8,4,27.56),(199,'2023-09-21',27,10,3,17.97),(199,'2023-09-21',27,7,3,17.97),(200,'2023-09-21',27,9,3,20.97),(200,'2023-09-21',29,10,11,65.89),(200,'2023-09-21',29,10,11,65.89),(200,'2023-09-21',27,9,3,20.97),(201,'2023-09-22',31,3,5,33.45),(201,'2023-09-22',31,8,3,20.67),(201,'2023-09-22',31,15,4,24.48),(202,'2023-09-22',31,7,4,23.96),(202,'2023-09-22',31,19,10,55.40),(202,'2023-09-22',31,11,7,31.22),(203,'2023-09-22',32,3,4,26.76),(203,'2023-09-22',32,11,11,49.06),(203,'2023-09-22',32,18,12,60.36),(204,'2023-09-22',33,16,3,12.00),(204,'2023-09-22',33,5,1,7.96),(204,'2023-09-22',33,9,14,97.86),(204,'2023-09-22',33,16,14,56.00),(205,'2023-09-22',27,11,1,4.46),(206,'2023-09-22',33,1,2,15.96),(207,'2023-09-22',32,3,1,6.69),(208,'2023-09-22',27,5,1,7.96),(209,'2023-09-22',27,19,1,5.54),(210,'2023-09-22',27,1,3,23.94),(210,'2023-09-22',27,20,1,6.00),(211,'2023-09-26',29,5,1,7.96),(211,'2023-09-26',29,21,2,13.16);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `image` varchar(400) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `creatorId` int DEFAULT NULL,
  `univerId` int DEFAULT NULL,
  `typesId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Produits_Users1_idx` (`creatorId`),
  KEY `products_ibfk_1` (`univerId`),
  KEY `products_ibfk_2` (`typesId`),
  CONSTRAINT `fk_Produits_Users1` FOREIGN KEY (`creatorId`) REFERENCES `users` (`usersId`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`univerId`) REFERENCES `univers` (`id`),
  CONSTRAINT `products_ibfk_2` FOREIGN KEY (`typesId`) REFERENCES `types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Chat astronaute','/assets/images/1ChatAstronauteImage1.png',7.98,1,3,1),(2,'Prince','/assets/images/2PrinceImage1.png',7.25,2,1,1),(3,'Hydre','/assets/images/3HydreImage1.png',6.69,2,1,2),(4,'Maps city','/assets/images/4MapsCityImage1.png',7.28,1,2,4),(5,'Epée medievale','/assets/images/5EpeeMedievaleImage1.png',7.96,1,1,3),(6,'Dague medievale','/assets/images/6DagueMedievaleImage1.png',6.36,2,1,3),(7,'Bouclier noir','/assets/images/7BouclierNoirImage1.png',5.99,2,1,3),(8,'Champignon vert','/assets/images/8ChampignonVertImage1.png',6.89,1,1,2),(9,'Feux vert','/assets/images/9FeuxVertImage1.png',6.99,1,1,2),(10,'Goblin','/assets/images/10GoblinImage1.png',5.99,2,1,2),(11,'Chevalier d\'or','/assets/images/12AvatarsFantImg1ChevalierOr.png',4.46,1,1,1),(14,'PredatorSF','/assets/images/12PredatorSFImage1.png',6.78,2,3,2),(15,'PredatorSF2','/assets/images/13PredatorSF2.png',6.12,2,3,2),(16,'HerosSF','/assets/images/14HerosSF.png',4.00,1,3,1),(17,'Map desert','/assets/images/21MapsFantImg1.png',5.00,2,1,4),(18,'Map fleuve','/assets/images/22MapsFantImg1.png',5.03,2,1,4),(19,'Map ocean','/assets/images/23MapsFantImg1.png',5.54,2,1,4),(20,'Princesse','/assets/images/25AvatarsFantIm1Princesse.png',6.00,1,1,1),(21,'Chevalier rouge','/assets/images/chevalierRouge.png',6.58,2,1,1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `types`
--

DROP TABLE IF EXISTS `types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `types` (
  `id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `types`
--

LOCK TABLES `types` WRITE;
/*!40000 ALTER TABLE `types` DISABLE KEYS */;
INSERT INTO `types` VALUES (1,'Heros'),(2,'Monstres'),(3,'Armes'),(4,'Maps');
/*!40000 ALTER TABLE `types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `univers`
--

DROP TABLE IF EXISTS `univers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `univers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `univers`
--

LOCK TABLES `univers` WRITE;
/*!40000 ALTER TABLE `univers` DISABLE KEYS */;
INSERT INTO `univers` VALUES (1,'Fantaisy'),(2,'Post Apocalypse'),(3,'Science Fiction');
/*!40000 ALTER TABLE `univers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `usersId` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(220) DEFAULT NULL,
  `zipcode` varchar(20) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `phoneNumber` varchar(20) DEFAULT NULL,
  `password` varchar(1000) DEFAULT NULL,
  `presentation` varchar(1000) DEFAULT NULL,
  `isCreator` tinyint(1) DEFAULT '0',
  `isAdministrator` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`usersId`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Sebastien','ANTICOURT','seb.live.fr','179 rue camille godard','33000','bordeaux','647049474','test1','salut',1,1),(2,'test2','test2','test.mail','testadresse','33000','bordeaux','25','test2','salut',1,1),(4,'front','front','truc.front@live.fr',NULL,NULL,NULL,NULL,'front',NULL,NULL,0),(7,'hashPassword','hashPassword','hashPassword@live.fr',NULL,NULL,NULL,NULL,'$argon2id$v=19$m=65536,t=5,p=1$wEkcaZJiG66fGkTteqcNmQ$OwD23PhszF5nj0b8hWhgqMIr00ZWgB4L+wzeNEnwGVk',NULL,NULL,0),(9,'test2','test3','sebastien.ant@live.fr',NULL,NULL,NULL,NULL,'$argon2id$v=19$m=65536,t=5,p=1$MZw6yhI7QLs27AnxH61UVw$cZwLoZXWCvghlYTHAguAv75Qo/biPo0x9sewBtChEes',NULL,NULL,0),(13,'Vlidator','valid','test@live.fr',NULL,NULL,NULL,NULL,'$argon2id$v=19$m=65536,t=5,p=1$pS/bjn4LFs6TISSshy+S2Q$ThEvx4xWbDlPjaUva5eOXEh1C0qmvYcu/YeI2WebB7w',NULL,NULL,0),(20,'macchin','macchin','mqkjdl@live.fr',NULL,NULL,NULL,NULL,'$argon2id$v=19$m=65536,t=5,p=1$7Ubzv2977ih6ySKilJjyHw$paneuFGcanNlE9rbKlwkEh3rGTRjOMwR+W7NtPpLHlU',NULL,0,0),(22,'johanny','johanny','kout@mail.fr',NULL,NULL,NULL,NULL,'$argon2id$v=19$m=65536,t=5,p=1$RnNqAKBoRKL84u9uHdOPvg$fLZ3DC7K9sb8/TUYfvYHvpzf3QO8+Bdovsyg4gjQ9tw',NULL,0,0),(24,'jonjo','jojo','aout@mail.fsjflmjsdk',NULL,NULL,NULL,NULL,'$argon2id$v=19$m=65536,t=5,p=1$3IxQa3qIkOvhsoz6LreAgQ$nIIEgcv6iEAFX9Plwv2OUcE52AwHfOV5Vxv70FZ6uWs',NULL,0,0),(25,'test28','test28','jjjjjjjjjjjjut@mail.fr',NULL,NULL,NULL,NULL,'$argon2id$v=19$m=65536,t=5,p=1$rXJrea4fekd4S2a7UN3SZw$i+6v0dSj5RIdp5S2zwiodAO60iREajgd8mFmIu8X928',NULL,0,0),(27,'sebastien','sebastien','sebastien.anticourt@lives.fr','179 rue Camille Godard','33000','Bordeaux','0647049474','$argon2id$v=19$m=65536,t=5,p=1$RzVgxGnlFYMTQP2Ff341JQ$DwdnuMDwCb3kxq1Y8ECEkGKwMqoFKQa3BdjOLmQUeWc',NULL,0,0),(28,'test3','test3','test3',NULL,NULL,NULL,NULL,'$argon2id$v=19$m=65536,t=5,p=1$Dt7InSc3SpReTmVEK+b+fg$96bruuZgiK4bSMUPVBzffnU8bmZ5nxqNzh4oAblzg5s',NULL,0,0),(29,'marc','marc','marc',NULL,NULL,NULL,NULL,'$argon2id$v=19$m=65536,t=5,p=1$+OdKmQDe0Tu27AXZDkDkfQ$mS5fH6M1Cn1LbgQAmHH9+BPPXKaM47t70haC2i7ybEE',NULL,0,0),(31,'paul','paul','paul',NULL,NULL,NULL,NULL,'$argon2id$v=19$m=65536,t=5,p=1$RHYiE5z+7YHg7VMFA8JkPQ$uK43X/+eqjvpkXl+VZxaWWA5RjyCn8/dr+d7p3pBGgI',NULL,0,0),(32,'luc','luc','luc',NULL,NULL,NULL,NULL,'$argon2id$v=19$m=65536,t=5,p=1$8ElQ42739/gYNmIS+EvKuw$8i6ktJAjWHrLP2jcdcGFtV40yG9+aXr7DqkV9/Jbfpc',NULL,0,0),(33,'jean','jean','jean',NULL,NULL,NULL,NULL,'$argon2id$v=19$m=65536,t=5,p=1$FHYsharkxnvqSJEmvFb5xQ$rpR0i2T5xfAg1T0oUF8hmkjMKHJbvNPfhSl+wioSiYc',NULL,0,0);
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

-- Dump completed on 2023-09-27 17:21:15
