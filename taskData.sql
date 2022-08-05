-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: AssignmentTask
-- ------------------------------------------------------
-- Server version	8.0.29-0ubuntu0.22.04.2

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
-- Table structure for table `Category`
--

DROP TABLE IF EXISTS `Category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Category` (
  `categoryId` int NOT NULL AUTO_INCREMENT,
  `cateName` varchar(100) NOT NULL,
  PRIMARY KEY (`categoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Category`
--

LOCK TABLES `Category` WRITE;
/*!40000 ALTER TABLE `Category` DISABLE KEYS */;
INSERT INTO `Category` VALUES (1,'cloths'),(2,'shoes'),(3,'electronic');
/*!40000 ALTER TABLE `Category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Orders`
--

DROP TABLE IF EXISTS `Orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Orders` (
  `subcateid` int NOT NULL,
  `subcatename` varchar(100) NOT NULL,
  `categoryId` int DEFAULT NULL,
  PRIMARY KEY (`subcateid`),
  KEY `categoryId` (`categoryId`),
  CONSTRAINT `Orders_ibfk_1` FOREIGN KEY (`categoryId`) REFERENCES `Category` (`categoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Orders`
--

LOCK TABLES `Orders` WRITE;
/*!40000 ALTER TABLE `Orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `Orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Product_item`
--

DROP TABLE IF EXISTS `Product_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Product_item` (
  `item_id` int NOT NULL AUTO_INCREMENT,
  `discripion` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `discount_price` int DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `unique_sku` varchar(255) DEFAULT NULL,
  `product_location` varchar(255) DEFAULT NULL,
  `subcateid` int DEFAULT NULL,
  PRIMARY KEY (`item_id`),
  KEY `subcateid` (`subcateid`),
  CONSTRAINT `Product_item_ibfk_1` FOREIGN KEY (`subcateid`) REFERENCES `Subcategory` (`subcateid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Product_item`
--

LOCK TABLES `Product_item` WRITE;
/*!40000 ALTER TABLE `Product_item` DISABLE KEYS */;
INSERT INTO `Product_item` VALUES (1,'tops','images/image_1659726749234.png',299,199,'black','fhdfhhfhhhh','indore',1),(2,'tee','images/image_1659726759659.png',299,199,'black','fhdfhhfhhhh','indore',1),(3,'teey','images/image_1659726767522.png',299,199,'black','fhdfhhfhhhh','indore',1),(4,'shirt','images/image_1659727355234.png',399,199,'red','fhdfhhfhhhh','indore',1);
/*!40000 ALTER TABLE `Product_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Subcategory`
--

DROP TABLE IF EXISTS `Subcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Subcategory` (
  `subcateid` int NOT NULL AUTO_INCREMENT,
  `subcatename` varchar(100) NOT NULL,
  `categoryId` int DEFAULT NULL,
  PRIMARY KEY (`subcateid`),
  KEY `categoryId` (`categoryId`),
  CONSTRAINT `Subcategory_ibfk_1` FOREIGN KEY (`categoryId`) REFERENCES `Category` (`categoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Subcategory`
--

LOCK TABLES `Subcategory` WRITE;
/*!40000 ALTER TABLE `Subcategory` DISABLE KEYS */;
INSERT INTO `Subcategory` VALUES (1,'dress',1),(2,'redtap',1),(3,'campus',2);
/*!40000 ALTER TABLE `Subcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Users` (
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES ('shivi','shii21@gmail.com','shivi123#@!');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-06  1:10:02
