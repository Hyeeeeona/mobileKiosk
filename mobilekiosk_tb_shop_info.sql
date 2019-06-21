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
-- Table structure for table `tb_shop_info`
--

DROP TABLE IF EXISTS `tb_shop_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_shop_info` (
  `uid` varchar(32) NOT NULL,
  `shop_id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_name` varchar(32) NOT NULL,
  `shop_tel` varchar(32) NOT NULL,
  `business_hours` varchar(32) NOT NULL,
  `personal_day` varchar(32) NOT NULL,
  `introduction` varchar(255) DEFAULT NULL,
  `shop_address` varchar(128) NOT NULL,
  `shop_img` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`shop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_shop_info`
--

LOCK TABLES `tb_shop_info` WRITE;
/*!40000 ALTER TABLE `tb_shop_info` DISABLE KEYS */;
INSERT INTO `tb_shop_info` VALUES ('1',1,'카페베네','032-663-6232','00:00~24:00','월,화,수,목,금,토,일','아메리카노, 카페라떼, 그외 커피','경기 부천시 부일로 455','img',1),('1',2,'족발팩토리본점','032-327-2728','14:00~23:00','월,화,수,목,금','족발, 보쌈','경기 부천시 소향로13번길 14-22','img',1),('1',3,'개성족발보쌈','032-324-8933','15:00~03:00','월,화,수,목,금','마늘족발, 보쌈','경기 부천시 조마루로297번길 61','img',1),('1',4,'족발신선생 부천본점','032-655-9225','15:00~02:00','월,화,수,목,금','족발, 보쌈 무한리필','경기 부천시 신흥로40번길 55','img',1),('1',5,'치킨매니아','032-324-7982','13:00~01:30','월,화,수,목,금','후라이드 치킨, 양념 치킨','경기 부천시 소향로 17','img',1),('1',6,'멕시카나 치킨','050-7982-6921','07:00~22:30','월,화,수,목,금','후라이드 치킨, 양념 치킨','경기 부천시 송내대로73번길 11','img',2), ('1',7,'푸라닭치킨 상동점','032-321-9206','07:00~22:30','월,화,수,목,금','후라이드 치킨, 양념 치킨','경기 부천시 소향로 25','img',1),('1',8,'BBQ 치킨 역곡역점','032-345-0669','14:00~01:00','월,화,수,목,금','후라이드 치킨, 양념 치킨','경기 부천시 부일로 702','img',2),('1',9,'스타벅스 부천상동점','032-325-8433','07:00~23:00','월,화,수,목,금','아메리카노, 카페라떼, 그외 커피','경기 부천시 상동로 87','img',2),('1',10,'땅땅치킨 송내역점','032-322-5077','13:00~02:30','월,화,수,목,금','후라이드, 양념 치킨','경기 부천시 송내대로73번길 22','img',1);
/*!40000 ALTER TABLE `tb_shop_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-20 22:27:04
