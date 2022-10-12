CREATE DATABASE  IF NOT EXISTS `WhereECO` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `WhereECO`;
-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: localhost    Database: WhereECO
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `link`
--

DROP TABLE IF EXISTS `link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `link` (
  `idLink` int NOT NULL AUTO_INCREMENT,
  `youtubeLink` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idLink`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `link`
--

LOCK TABLES `link` WRITE;
/*!40000 ALTER TABLE `link` DISABLE KEYS */;
INSERT INTO `link` VALUES (1,'NcSUweIWMTc'),(2,'gh_qZ66JHtE'),(3,'CeK2MsJz1aA');
/*!40000 ALTER TABLE `link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `map`
--

DROP TABLE IF EXISTS `map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `map` (
  `id` int NOT NULL,
  `latitude` decimal(18,10) NOT NULL,
  `longitude` decimal(18,10) NOT NULL,
  `addressName` varchar(25) NOT NULL,
  `palceName` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `map`
--

LOCK TABLES `map` WRITE;
/*!40000 ALTER TABLE `map` DISABLE KEYS */;
INSERT INTO `map` VALUES (1,37.6618404000,127.0411645000,'서울 도봉구 도봉로 143길 18','제로웨이스트샵 안녕상점'),(2,37.5026383000,127.0229664000,'서울 서초구 서운로26길 11','서울 서초구 서운로26길 11'),(3,37.5639570000,126.9903036000,'서울 중구 수표로 32-1','제로띵스'),(4,37.3807780000,126.9597506000,'서울시 구로구 경인로 661','미오솜_제로웨이스트샵'),(5,35.8190500000,127.8733000000,'서울 서초구 방배천로 160','제로웨이스트샵 완벽한소비'),(6,37.5007395000,127.0411645000,'서울 동작구 성대로1길 16','지구샵 상도점'),(7,37.5547100000,127.9338591000,'서울 강서구 우장산로2길 6','제로웨이스트카페 달그락'),(8,37.5510618000,127.8378100000,'서울 강동구 상암로 10','대안생활 공기'),(9,37.5577610000,127.1249270000,'서울 마포구 월드컵로25길 47','알맹상점'),(10,37.5492500000,127.9052790000,'서울 성동구 왕십리로14길9','더피커'),(11,37.5641300000,127.0452100000,'서울 마포구 성미산로 150','얼스어스'),(12,37.5203279000,127.0201670000,'서울 강남구 도산대로1길 62','아로마티카 제로스테이션 신사'),(13,37.5040617000,127.1349170000,'서울 성동구 왕십리로4길 26-14','30밀리스토어 서울숲점'),(14,37.6097700000,127.0218600000,'서울 성북구 삼양로 27','일상공감 길음'),(15,37.5342500000,127.1249200000,'서울 강동구 풍성로35길','송포어스'),(16,37.5947681000,127.0185480000,'서울 성북구 동소문로25길 8','순환지구'),(17,37.5643912000,127.9174880000,'서울 마포구 성미산로 17길 68','유민얼랏'),(18,37.5723800000,127.9082300000,'서울 서대문구 수색로 43','디어얼스'),(19,37.5526600000,127.8485100000,'서울 강서구 화곡로55길 23','허그어웨일'),(20,37.5412316000,127.0937680000,'서울 광진구 아치산로65길 22','디어에코');
/*!40000 ALTER TABLE `map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Todo`
--

DROP TABLE IF EXISTS `Todo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Todo` (
  `id` int NOT NULL,
  `todo1` tinyint NOT NULL,
  `todo2` tinyint NOT NULL,
  `todo3` tinyint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Todo`
--

LOCK TABLES `Todo` WRITE;
/*!40000 ALTER TABLE `Todo` DISABLE KEYS */;
/*!40000 ALTER TABLE `Todo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userid` varchar(45) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  `name` varchar(45) NOT NULL,
  `idLink` int DEFAULT NULL,
  `idTodo` int DEFAULT NULL,
  `idMap` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid_UNIQUE` (`userid`),
  KEY `idLink` (`idLink`),
  KEY `idTodo` (`idTodo`),
  KEY `idMap` (`idMap`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`idLink`) REFERENCES `Link` (`idLink`),
  CONSTRAINT `user_ibfk_2` FOREIGN KEY (`idTodo`) REFERENCES `Todo` (`id`),
  CONSTRAINT `user_ibfk_3` FOREIGN KEY (`idMap`) REFERENCES `map` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'aaa','aaa','aaa',NULL,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
	@@ -136,4 +26,4 @@ UNLOCK TABLES;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-30 14:53:51