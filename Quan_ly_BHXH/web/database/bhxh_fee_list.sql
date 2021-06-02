-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: bhxh
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `fee_list`
--

DROP TABLE IF EXISTS `fee_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fee_list` (
  `id` int unsigned NOT NULL,
  `time` varchar(50) NOT NULL,
  `salary` varchar(45) NOT NULL,
  `insuranceFee` varchar(45) NOT NULL,
  `payment` int NOT NULL,
  `subsidy` varchar(45) NOT NULL,
  `receive` int NOT NULL,
  PRIMARY KEY (`id`,`time`,`receive`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fee_list`
--

LOCK TABLES `fee_list` WRITE;
/*!40000 ALTER TABLE `fee_list` DISABLE KEYS */;
INSERT INTO `fee_list` VALUES (1,'1-2021','5000000','552000',1,'0',0),(1,'10-2021','5000000','552000',1,'0',0),(1,'11-2021','5000000','552000',1,'0',0),(1,'12-2021','5000000','552000',1,'0',0),(1,'2-2021','5000000','552000',1,'0',0),(1,'3-2021','5000000','552000',1,'0',0),(1,'4-2021','5000000','552000',1,'0',0),(1,'5-2021','5000000','552000',1,'0',0),(1,'6-2021','5000000','552000',1,'0',0),(1,'7-2021','5000000','552000',1,'0',0),(1,'8-2021','5000000','552000',1,'0',0),(1,'9-2021','5000000','552000',1,'0',0),(2,'1-2021','6000000','630000',1,'0',0),(2,'10-2021','6000000','630000',1,'0',0),(2,'11-2021','6000000','630000',1,'0',0),(2,'12-2021','6000000','630000',1,'0',0),(2,'2-2021','6000000','630000',1,'0',0),(2,'3-2021','6000000','630000',1,'0',0),(2,'4-2021','6000000','630000',1,'0',0),(2,'5-2021','6000000','630000',1,'0',0),(2,'6-2021','6000000','630000',1,'0',0),(2,'7-2021','6000000','630000',1,'0',0),(2,'8-2021','6000000','630000',1,'0',0),(2,'9-2021','6000000','630000',1,'0',0),(3,'1-2021','6000000','630000',1,'0',0),(3,'10-2021','6000000','630000',1,'0',0),(3,'11-2021','6000000','630000',1,'0',0),(3,'12-2021','6000000','630000',1,'0',0),(3,'2-2021','6000000','630000',1,'0',0),(3,'3-2021','6000000','630000',1,'0',0),(3,'4-2021','6000000','630000',1,'0',0),(3,'5-2021','6000000','630000',1,'0',0),(3,'6-2021','6000000','630000',1,'0',0),(3,'7-2021','6000000','630000',1,'0',0),(3,'8-2021','6000000','630000',1,'0',0),(3,'9-2021','600000','630000',1,'0',0),(4,'1-2021','6400000','672000',1,'0',0),(4,'10-2021','6400000','672000',1,'0',0),(4,'11-2021','6400000','672000',1,'0',0),(4,'12-2021','6400000','672000',1,'0',0),(4,'2-2021','6400000','672000',1,'0',0),(4,'3-2021','6400000','672000',1,'0',0),(4,'4-2021','6400000','672000',1,'0',0),(4,'5-2021','6400000','672000',1,'0',0),(4,'6-2021','6400000','672000',1,'0',0),(4,'7-2021','6400000','672000',1,'0',0),(4,'8-2021','6400000','672000',1,'0',0),(4,'9-2021','6400000','672000',1,'0',0),(5,'1-2021','6400000','672000',1,'0',0),(5,'10-2021','6400000','672000',1,'0',0),(5,'11-2021','6400000','672000',1,'0',0),(5,'12-2021','6400000','672000',1,'0',0),(5,'2-2021','6400000','672000',1,'0',0),(5,'3-2021','6400000','672000',1,'0',0),(5,'4-2021','6400000','672000',1,'0',0),(5,'5-2021','6400000','672000',1,'0',0),(5,'6-2021','6400000','672000',1,'0',0),(5,'7-2021','6400000','672000',1,'0',0),(5,'8-2021','6400000','672000',1,'0',0),(5,'9-2021','6400000','672000',1,'0',0),(6,'1-2021','6400000','672000',1,'0',0),(6,'10-2021','6400000','672000',1,'0',0),(6,'11-2021','6400000','672000',1,'0',0),(6,'12-2021','6400000','672000',1,'0',0),(6,'2-2021','6400000','672000',1,'0',0),(6,'3-2021','6400000','672000',1,'0',0),(6,'4-2021','6400000','672000',1,'0',0),(6,'5-2021','6400000','672000',1,'0',0),(6,'6-2021','6400000','672000',1,'0',0),(6,'7-2021','6400000','672000',1,'0',0),(6,'8-2021','6400000','672000',1,'0',0),(6,'9-2021','6400000','672000',1,'0',0),(7,'1-2021','6400000','672000',1,'0',0),(7,'10-2021','6400000','672000',1,'0',0),(7,'11-2021','6400000','672000',1,'0',0),(7,'12-2021','6400000','672000',1,'0',0),(7,'2-2021','6400000','672000',1,'0',0),(7,'3-2021','6400000','672000',1,'0',0),(7,'4-2021','6400000','672000',1,'0',0),(7,'5-2021','6400000','672000',1,'0',0),(7,'6-2021','6400000','672000',1,'0',0),(7,'7-2021','6400000','672000',1,'0',0),(7,'8-2021','6400000','672000',1,'0',0),(7,'9-2021','6400000','672000',1,'0',0),(8,'1-2021','6400000','672000',1,'0',0),(8,'10-2021','6400000','672000',1,'0',0),(8,'11-2021','6400000','672000',1,'0',0),(8,'12-2021','6400000','672000',1,'0',0),(8,'2-2021','6400000','672000',1,'0',0),(8,'3-2021','6400000','672000',1,'0',0),(8,'4-2021','6400000','672000',1,'0',0),(8,'5-2021','6400000','672000',1,'0',0),(8,'6-2021','6400000','672000',1,'0',0),(8,'7-2021','6400000','672000',1,'0',0),(8,'8-2021','6400000','672000',1,'0',0),(8,'9-2021','6400000','672000',1,'0',0),(9,'1-2021','6400000','672000',1,'0',0),(9,'10-2021','6400000','672000',1,'0',0),(9,'11-2021','6400000','672000',1,'0',0),(9,'12-2021','6400000','672000',1,'0',0),(9,'2-2021','6400000','672000',1,'0',0),(9,'3-2021','6400000','672000',1,'0',0),(9,'4-2021','6400000','672000',1,'0',0),(9,'5-2021','6400000','672000',1,'0',0),(9,'6-2021','6400000','672000',1,'0',0),(9,'7-2021','6400000','672000',1,'0',0),(9,'8-2021','6400000','672000',1,'0',0),(9,'9-2021','6400000','672000',1,'0',0),(10,'1-2021','6400000','672000',1,'0',0),(10,'10-2021','6400000','672000',1,'0',0),(10,'11-2021','6400000','672000',1,'0',0),(10,'12-2021','6400000','672000',1,'0',0),(10,'2-2021','6400000','672000',1,'0',0),(10,'3-2021','6400000','672000',1,'0',0),(10,'4-2021','6400000','672000',1,'0',0),(10,'5-2021','6400000','672000',1,'0',0),(10,'6-2021','6400000','672000',1,'0',0),(10,'7-2021','6400000','672000',1,'0',0),(10,'8-2021','6400000','672000',1,'0',0),(10,'9-2021','6400000','672000',1,'0',0),(11,'1-2021','6400000','672000',1,'0',0),(11,'10-2021','6400000','672000',1,'0',0),(11,'11-2021','6400000','672000',1,'0',0),(11,'12-2021','6400000','672000',1,'0',0),(11,'2-2021','6400000','672000',1,'0',0),(11,'3-2021','6400000','672000',1,'0',0),(11,'4-2021','6400000','672000',1,'0',0),(11,'5-2021','6400000','672000',1,'0',0),(11,'6-2021','6400000','672000',1,'0',0),(11,'7-2021','6400000','672000',1,'0',0),(11,'8-2021','6400000','672000',1,'0',0),(11,'9-2021','6400000','672000',1,'0',0),(12,'1-2021','6400000','672000',1,'0',0),(12,'10-2021','6400000','672000',1,'0',0),(12,'11-2021','6400000','672000',1,'0',0),(12,'12-2021','6400000','672000',1,'0',0),(12,'2-2021','6400000','672000',1,'0',0),(12,'3-2021','6400000','672000',1,'0',0),(12,'4-2021','6400000','672000',1,'0',0),(12,'5-2021','6400000','672000',1,'0',0),(12,'6-2021','6400000','672000',1,'0',0),(12,'7-2021','6400000','672000',1,'0',0),(12,'8-2021','6400000','672000',1,'0',0),(12,'9-2021','6400000','672000',1,'0',0),(13,'1-2021','6400000','672000',1,'0',0),(13,'10-2021','6400000','672000',1,'0',0),(13,'11-2021','6400000','672000',1,'0',0),(13,'12-2021','6400000','672000',1,'0',0),(13,'2-2021','6400000','672000',1,'0',0),(13,'3-2021','6400000','672000',1,'0',0),(13,'4-2021','6400000','672000',1,'0',0),(13,'5-2021','6400000','672000',1,'0',0),(13,'6-2021','6400000','672000',1,'0',0),(13,'7-2021','6400000','672000',1,'0',0),(13,'8-2021','6400000','672000',1,'0',0),(13,'9-2021','6400000','672000',1,'0',0),(14,'1-2021','6400000','672000',1,'0',0),(14,'10-2021','6400000','672000',1,'0',0),(14,'11-2021','6400000','672000',1,'0',0),(14,'12-2021','6400000','672000',1,'0',0),(14,'2-2021','6400000','672000',1,'0',0),(14,'3-2021','6400000','672000',1,'0',0),(14,'4-2021','6400000','672000',1,'0',0),(14,'5-2021','6400000','672000',1,'0',0),(14,'6-2021','6400000','672000',1,'0',0),(14,'7-2021','6400000','672000',1,'0',0),(14,'8-2021','6400000','672000',1,'0',0),(14,'9-2021','6400000','672000',1,'0',0),(15,'1-2021','6400000','672000',1,'0',0),(15,'10-2021','6400000','672000',1,'0',0),(15,'11-2021','6400000','672000',1,'0',0),(15,'12-2021','6400000','672000',1,'0',0),(15,'2-2021','6400000','672000',1,'0',0),(15,'3-2021','6400000','672000',1,'0',0),(15,'4-2021','6400000','672000',1,'0',0),(15,'5-2021','6400000','672000',1,'0',0),(15,'6-2021','6400000','672000',1,'0',0),(15,'7-2021','6400000','672000',1,'0',0),(15,'8-2021','6400000','672000',1,'0',0),(15,'9-2021','6400000','672000',1,'0',0),(16,'1-2021','6400000','672000',1,'0',0),(16,'10-2021','6400000','672000',1,'0',0),(16,'11-2021','6400000','672000',1,'0',0),(16,'12-2021','6400000','672000',1,'0',0),(16,'2-2021','6400000','672000',1,'0',0),(16,'3-2021','6400000','672000',1,'0',0),(16,'4-2021','6400000','672000',1,'0',0),(16,'5-2021','6400000','672000',1,'0',0),(16,'6-2021','6400000','672000',1,'0',0),(16,'7-2021','6400000','672000',1,'0',0),(16,'8-2021','6400000','672000',1,'0',0),(16,'9-2021','6400000','672000',1,'0',0),(17,'1-2021','6400000','672000',1,'0',0),(17,'10-2021','6400000','672000',1,'0',0),(17,'11-2021','6400000','672000',1,'0',0),(17,'12-2021','6400000','672000',1,'0',0),(17,'2-2021','6400000','672000',1,'0',0),(17,'3-2021','6400000','672000',1,'0',0),(17,'4-2021','6400000','672000',1,'0',0),(17,'5-2021','6400000','672000',1,'0',0),(17,'6-2021','6400000','0',1,'0',0),(17,'7-2021','6400000','672000',1,'0',0),(17,'8-2021','6400000','672000',1,'0',0),(17,'9-2021','6400000','672000',1,'0',0),(18,'1-2021','6400000','672000',1,'0',0),(18,'10-2021','6400000','672000',1,'0',0),(18,'11-2021','6400000','672000',1,'0',0),(18,'12-2021','6400000','672000',1,'0',0),(18,'2-2021','6400000','672000',1,'0',0),(18,'3-2021','6400000','672000',1,'0',0),(18,'4-2021','6400000','672000',1,'0',0),(18,'5-2021','6400000','672000',1,'0',0),(18,'6-2021','6400000','672000',1,'0',0),(18,'7-2021','6400000','672000',1,'0',0),(18,'8-2021','6400000','672000',1,'0',0),(18,'9-2021','6400000','672000',1,'0',0),(19,'1-2021','6400000','672000',1,'0',0),(19,'10-2021','6400000','672000',1,'0',0),(19,'11-2021','6400000','672000',1,'0',0),(19,'12-2021','6400000','672000',1,'0',0),(19,'2-2021','6400000','672000',1,'0',0),(19,'3-2021','6400000','672000',1,'0',0),(19,'4-2021','6400000','672000',1,'0',0),(19,'5-2021','6400000','672000',1,'0',0),(19,'6-2021','6400000','672000',1,'0',0),(19,'7-2021','6400000','672000',1,'0',0),(19,'8-2021','6400000','672000',1,'0',0),(19,'9-2021','6400000','672000',1,'0',0);
/*!40000 ALTER TABLE `fee_list` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-27  0:06:55