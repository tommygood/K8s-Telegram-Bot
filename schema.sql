-- MySQL dump 10.19  Distrib 10.3.38-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: telegram_db
-- ------------------------------------------------------
-- Server version	10.3.38-MariaDB-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `all_command`
--

DROP TABLE IF EXISTS `all_command`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `all_command` (
  `name` varchar(50) NOT NULL,
  `content` varchar(100) NOT NULL,
  `permission` int(1) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `all_command`
--

LOCK TABLES `all_command` WRITE;
/*!40000 ALTER TABLE `all_command` DISABLE KEYS */;
INSERT INTO `all_command` VALUES ('/app','輸入 Wordpress App Name',2),('/au','註冊使用者',3),('/ccpst','k8s cluster 中所有的 container 正在使用的所有 node 的 cpu 的百分比',1),('/clear','清除目前 Wordpress 建置紀錄',2),('/cpcu','不同 container 使用了多少其限制的 cpu 的百分比',2),('/cw','新增 Wordpress',2),('/ecmu','各個 container 佔用了多少其限制的 memory 的百分比',2),('/gu','取得使用者資訊',3),('/ncst','k8s cluster 中所有 node 的各別已使用的 cpu 的百分比',1),('/nmst','k8s cluster 中的所有 node 的各別已使用的 memory 的百分比',1),('/ns','輸入 Wordpress namespace Name',2),('/pmuin','node 上部屬的全部的 pod 所佔 node 的 memory 的百分比',1),('/rpnin','各個 namespace 不同時間有多少 pod 同時執行',2),('/rs','輸入 Wordpress replicas 數量',2),('/wpnin','各個 namespace 不正常 pod 的數量',2);
/*!40000 ALTER TABLE `all_command` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `all_namespace`
--

DROP TABLE IF EXISTS `all_namespace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `all_namespace` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `uid` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `all_namespace`
--

LOCK TABLES `all_namespace` WRITE;
/*!40000 ALTER TABLE `all_namespace` DISABLE KEYS */;
/*!40000 ALTER TABLE `all_namespace` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `all_user`
--

DROP TABLE IF EXISTS `all_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `all_user` (
  `uid` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `permission` int(1) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `all_user`
--

LOCK TABLES `all_user` WRITE;
/*!40000 ALTER TABLE `all_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `all_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `all_wordpress`
--

DROP TABLE IF EXISTS `all_wordpress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `all_wordpress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_name` varchar(50) DEFAULT NULL,
  `namespace` varchar(50) DEFAULT NULL,
  `replicas` int(1) DEFAULT NULL,
  `uid` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `all_wordpress`
--

LOCK TABLES `all_wordpress` WRITE;
/*!40000 ALTER TABLE `all_wordpress` DISABLE KEYS */;
/*!40000 ALTER TABLE `all_wordpress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `k8s_namespace`
--

DROP TABLE IF EXISTS `k8s_namespace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `k8s_namespace` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `namespace` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k8s_namespace`
--

LOCK TABLES `k8s_namespace` WRITE;
/*!40000 ALTER TABLE `k8s_namespace` DISABLE KEYS */;
/*!40000 ALTER TABLE `k8s_namespace` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-13 12:25:58
