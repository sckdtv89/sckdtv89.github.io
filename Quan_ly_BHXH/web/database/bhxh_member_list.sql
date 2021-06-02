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
-- Table structure for table `member_list`
--

DROP TABLE IF EXISTS `member_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_list` (
  `id` varchar(50) NOT NULL,
  `fullName` varchar(50) NOT NULL,
  `birthYear` int NOT NULL,
  `homeTown` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `member_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_list`
--

LOCK TABLES `member_list` WRITE;
/*!40000 ALTER TABLE `member_list` DISABLE KEYS */;
INSERT INTO `member_list` VALUES ('1','nguyễn văn an',1999,'Nam Định'),('10','phạm hoàng giang',1999,'Hà Nội'),('11','đàm văn kiền',1999,'Hà Nội'),('12','đỗ duy hoàng',1999,'Nam Định'),('13','đỗ duy hoàng',1999,'Hà Nội'),('14','phạm thị hương',1999,'Hà Nội'),('15','đàm văn kiền',1999,'Hà Nội'),('16','đỗ đức kiên',1999,'Nam Định'),('17','lê văn minh',1999,'Hà Nam'),('18','vũ thị ninh',1999,'Nam Định'),('19','phạm thị xuyến',1999,'Hà Nội'),('2','phạm văn an',1999,'Nam Định'),('3','đỗ hoàng anh',1999,'Hà Nội'),('4','phạm thị lan anh',1999,'Hà Nam'),('5','chương tiến đàn',1999,'Hà Nam'),('6','triệu văn đạt',1999,'Nam Định'),('7','hồ tiến đạt',1999,'Hà Nội'),('8','phạm tiến độ',1999,'Hà Nội'),('9','lê thị giang',1999,'Nam Định');
/*!40000 ALTER TABLE `member_list` ENABLE KEYS */;
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
