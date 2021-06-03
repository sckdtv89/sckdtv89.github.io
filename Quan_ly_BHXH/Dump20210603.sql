-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bhxh
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

--
-- Table structure for table `fund_percent`
--

DROP TABLE IF EXISTS `fund_percent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fund_percent` (
  `idfund` int NOT NULL,
  `fundName` varchar(45) NOT NULL,
  `percent` float NOT NULL,
  PRIMARY KEY (`idfund`),
  UNIQUE KEY `idfund_UNIQUE` (`idfund`),
  UNIQUE KEY `fundName_UNIQUE` (`fundName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fund_percent`
--

LOCK TABLES `fund_percent` WRITE;
/*!40000 ALTER TABLE `fund_percent` DISABLE KEYS */;
INSERT INTO `fund_percent` VALUES (1,'Hưu trí, tử tuất',2.5),(2,'Thai sản, Đau ốm',3),(3,'Tai nạn lao động, bệnh nghề nghiệp',0.5),(4,'Thất nghiệp',1),(5,'Y tế',5);
/*!40000 ALTER TABLE `fund_percent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `limit_salary`
--

DROP TABLE IF EXISTS `limit_salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `limit_salary` (
  `id` int NOT NULL,
  `type` varchar(45) NOT NULL,
  `valueLimit` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idlimit_salary_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `limit_salary`
--

LOCK TABLES `limit_salary` WRITE;
/*!40000 ALTER TABLE `limit_salary` DISABLE KEYS */;
INSERT INTO `limit_salary` VALUES (1,'max','22.0'),(2,'min','21.0');
/*!40000 ALTER TABLE `limit_salary` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `salary_region`
--

DROP TABLE IF EXISTS `salary_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salary_region` (
  `idRegion` int NOT NULL,
  `saraly` varchar(45) NOT NULL,
  PRIMARY KEY (`idRegion`),
  UNIQUE KEY `idRegion_UNIQUE` (`idRegion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary_region`
--

LOCK TABLES `salary_region` WRITE;
/*!40000 ALTER TABLE `salary_region` DISABLE KEYS */;
INSERT INTO `salary_region` VALUES (1,'300000'),(2,'3710000'),(3,'3250000'),(4,'2920000');
/*!40000 ALTER TABLE `salary_region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_list`
--

DROP TABLE IF EXISTS `staff_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_list` (
  `userName` varchar(50) NOT NULL,
  `fullName` varchar(45) NOT NULL,
  `birthYear` int NOT NULL,
  `homeTown` varchar(45) NOT NULL,
  `department` varchar(45) NOT NULL,
  PRIMARY KEY (`userName`),
  UNIQUE KEY `userName_UNIQUE` (`userName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_list`
--

LOCK TABLES `staff_list` WRITE;
/*!40000 ALTER TABLE `staff_list` DISABLE KEYS */;
INSERT INTO `staff_list` VALUES ('hoangducan','Hoàng Đức An',1999,'Hà Nội','Kế toán'),('leducanh','Lê Đức Anh',1999,'Thanh Hóa','Kế toán'),('letuananh','Lê Tuấn Anh',1999,'Hà Nội','Kế toán'),('trantuananh','Trần Tuấn Anh',1999,'Nam Định','Kế toán');
/*!40000 ALTER TABLE `staff_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_join`
--

DROP TABLE IF EXISTS `time_join`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_join` (
  `id` varchar(50) NOT NULL,
  `joinTime` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_join`
--

LOCK TABLES `time_join` WRITE;
/*!40000 ALTER TABLE `time_join` DISABLE KEYS */;
INSERT INTO `time_join` VALUES ('1','2021-01-01'),('10','2021-01-01'),('11','2021-01-01'),('12','2021-01-01'),('13','2021-01-01'),('14','2021-01-01'),('15','2021-01-01'),('16','2021-01-01'),('17','2021-01-01'),('18','2021-01-01'),('19','2021-01-01'),('2','2021-01-01'),('3','2021-01-01'),('4','2021-01-01'),('5','2021-01-01'),('6','2021-01-01'),('7','2021-01-01'),('8','2021-01-01'),('9','2021-01-01');
/*!40000 ALTER TABLE `time_join` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_out`
--

DROP TABLE IF EXISTS `time_out`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_out` (
  `id` varchar(45) NOT NULL,
  `timeOut` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_out`
--

LOCK TABLES `time_out` WRITE;
/*!40000 ALTER TABLE `time_out` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_out` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `userName` varchar(50) NOT NULL,
  `passWord` varchar(45) NOT NULL,
  PRIMARY KEY (`userName`),
  UNIQUE KEY `userName_UNIQUE` (`userName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('admin','12345678'),('admin1','12345678'),('admin2','12345678'),('hoangducan','12345678'),('leducanh','12345678'),('letuananh','12345678'),('trantuananh','12345678');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-03 20:56:38
