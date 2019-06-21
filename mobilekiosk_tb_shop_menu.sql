-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: mobilekiosk
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `tb_shop_menu`
--

DROP TABLE IF EXISTS `tb_shop_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_shop_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(32) NOT NULL,
  `menu_size` varchar(32) DEFAULT NULL,
  `hotorcold` int(11) DEFAULT NULL,
  `menu_price` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `menu_img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `TB_SHOP_MENU_shop_id_9d4be255_fk_TB_SHOP_INFO_shop_id` (`shop_id`),
  CONSTRAINT `TB_SHOP_MENU_shop_id_9d4be255_fk_TB_SHOP_INFO_shop_id` FOREIGN KEY (`shop_id`) REFERENCES `tb_shop_info` (`shop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_shop_menu`
--

LOCK TABLES `tb_shop_menu` WRITE;
/*!40000 ALTER TABLE `tb_shop_menu` DISABLE KEYS */;
INSERT INTO `tb_shop_menu` VALUES (1,'아메리카노','',1,5000,1,'img'),(2,'카페라떼','',1,6000,1,'img'),(3,'초코라떼','',1,6000,1,'img'),(4,'망고주스','',1,7500,1,'img'),(5,'스콘','',1,6000,1,'img'),(6,'일반 보쌈','',1,19000,2,'img'),(7,'특 보쌈&족발','',1,33000,2,'img'),(8,'일반 족발','',1,22000,2,'img'),(9,'마늘보쌈','',1,25000,2,'img'),(10,'마늘족발','',1,26000,2,'img'),(11,'일반 보쌈','',1,19000,3,'img'),(12,'특 보쌈&족발','',1,33000,3,'img'),(13,'일반 족발','',1,22000,3,'img'),(14,'마늘보쌈','',1,25000,3,'img'),(15,'마늘족발','',1,26000,3,'img'),(16,'일반 보쌈','',1,19000,4,'img'),(17,'특 보쌈&족발','',1,33000,4,'img'),(18,'일반 족발','',1,22000,4,'img'),(19,'마늘보쌈','',1,25000,4,'img'),(20,'마늘족발','',1,26000,4,'img'),(21,'후라이드 치킨','',1,19000,5,'img'),(22,'양념치킨','',1,20000,5,'img'),(23,'마늘치킨','',1,22000,5,'img'),(24,'핫양념치킨','',1,22000,5,'img'),(25,'스노우치킨','',1,23000,5,'img'),(26,'후라이드 치킨','',1,19000,6,'img'),(27,'양념치킨','',6,20000,5,'img'),(28,'마늘치킨','',1,22000,6,'img'),(29,'핫양념치킨','',1,22000,6,'img'),(30,'스노우치킨','',1,23000,6,'img'),(31,'후라이드 치킨','',1,19000,7,'img'),(32,'양념치킨','',1,20000,7,'img'),(33,'마늘치킨','',1,22000,7,'img'),(34,'핫양념치킨','',1,22000,7,'img'),(35,'스노우치킨','',1,23000,7,'img'),(36,'후라이드 치킨','',1,19000,8,'img'),(37,'양념치킨','',1,20000,8,'img'),(38,'마늘치킨','',1,22000,8,'img'),(39,'핫양념치킨','',1,22000,8,'img'),(40,'스노우치킨','',1,23000,8,'img'), (41,'아메리카노','',1,5000,9,'img'),(42,'카페라떼','',1,6000,9,'img'),(43,'초코라떼','',1,6000,9,'img'),(44,'망고주스','',1,7500,9,'img'),(45,'스콘','',1,6000,9,'img'),(46,'후라이드 치킨','',1,19000,10,'img'),(47,'양념치킨','',6,20000,10,'img'),(48,'마늘치킨','',1,22000,10,'img'),(49,'핫양념치킨','',1,22000,10,'img'),(50,'스노우치킨','',1,23000,10,'img');
					
/*!40000 ALTER TABLE `tb_shop_menu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-20 22:27:03
