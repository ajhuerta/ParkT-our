-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: cs411
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `plan_confirmed`
--

DROP TABLE IF EXISTS `plan_confirmed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plan_confirmed` (
  `PlanID` int NOT NULL,
  `Confirmed_Date` date DEFAULT NULL,
  `ParkCode` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PlanID`),
  KEY `idx_parkcode` (`ParkCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan_confirmed`
--

LOCK TABLES `plan_confirmed` WRITE;
/*!40000 ALTER TABLE `plan_confirmed` DISABLE KEYS */;
INSERT INTO `plan_confirmed` VALUES (1,'2021-09-08','lake','dXBNUyRqxl@gmail'),(2,'2021-04-26','afbg','o8mL9BZbyD@gmail'),(3,'2021-05-11','abli','2YqWYcqILp@gmail'),(4,'2021-12-24','klgo','r0Sv7V3Prf@gmail'),(5,'2021-05-25','abli','Ikl56t8c3x@gmail'),(6,'2021-10-18','lake','lc22CsNdui@gmail'),(7,'2021-11-27','klgo','41mszAxa1E@gmail'),(8,'2021-07-19','labe','VZqvRW8YmU@gmail'),(9,'2021-02-22','lake','mwxypPnAfI@gmail'),(10,'2021-05-19','klgo','bAyGPSeYZJ@gmail'),(11,'2021-10-02','labe','w5ck2sx9FM@gmail'),(12,'2021-01-21','agfo','BNv5vdxUu1@gmail'),(13,'2021-10-07','labe','FILhOFkdHy@gmail'),(14,'2021-09-25','afbg','ci3hJG6fT0@gmail'),(15,'2021-06-21','adam','4SPRqs9xxX@gmail'),(16,'2021-06-05','labe','GNeQCDWQ4y@gmail'),(17,'2021-02-27','hofr','ywnkGNlcH6@gmail'),(18,'2021-08-19','afam','OwxKP0u2y4@gmail'),(19,'2021-04-27','heho','XrtYUZbBIX@gmail'),(20,'2021-02-08','lake','NsXlqDUN6V@gmail');
/*!40000 ALTER TABLE `plan_confirmed` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-19  4:15:05
