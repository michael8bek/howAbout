CREATE DATABASE  IF NOT EXISTS `howaboutdb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `howaboutdb`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: howaboutdb.cvq1vn4xsjwv.ap-northeast-2.rds.amazonaws.com    Database: howaboutdb
-- ------------------------------------------------------
-- Server version	5.5.5-10.0.24-MariaDB

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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `cart_id` varchar(30) NOT NULL,
  `cart_date` date DEFAULT NULL,
  `mem_id` varchar(30) DEFAULT NULL,
  `goods_id` varchar(30) DEFAULT NULL,
  `cart_editdate` date DEFAULT NULL,
  `cart_state` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `R_8` (`mem_id`),
  KEY `R_9` (`goods_id`),
  CONSTRAINT `R_8` FOREIGN KEY (`mem_id`) REFERENCES `member` (`mem_id`),
  CONSTRAINT `R_9` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES ('1','2017-09-27','jeagong','1','2017-09-27','y'),('2','2017-09-27','moon1214','2','2017-09-27','y'),('3','2017-09-27','moon1214','2','2017-09-27','y');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon`
--

DROP TABLE IF EXISTS `coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon` (
  `cp_id` varchar(30) NOT NULL,
  `cp_benefit` int(50) DEFAULT NULL,
  PRIMARY KEY (`cp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon`
--

LOCK TABLES `coupon` WRITE;
/*!40000 ALTER TABLE `coupon` DISABLE KEYS */;
INSERT INTO `coupon` VALUES ('cp_bronze',5000),('cp_christmas',20000),('cp_gold',15000),('cp_silver',10000);
/*!40000 ALTER TABLE `coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `couponlist`
--

DROP TABLE IF EXISTS `couponlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `couponlist` (
  `cplist_id` varchar(30) NOT NULL,
  `cplist_regdate` date DEFAULT NULL,
  `cplist_expire` date DEFAULT NULL,
  `cplist_use` varchar(5) DEFAULT NULL,
  `cp_id` varchar(30) NOT NULL,
  `mem_id` varchar(30) NOT NULL,
  PRIMARY KEY (`cplist_id`),
  KEY `R_1` (`cp_id`),
  KEY `R_2` (`mem_id`),
  CONSTRAINT `R_1` FOREIGN KEY (`cp_id`) REFERENCES `coupon` (`cp_id`),
  CONSTRAINT `R_2` FOREIGN KEY (`mem_id`) REFERENCES `member` (`mem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `couponlist`
--

LOCK TABLES `couponlist` WRITE;
/*!40000 ALTER TABLE `couponlist` DISABLE KEYS */;
INSERT INTO `couponlist` VALUES ('1','2017-09-27','2018-01-01','n','cp_bronze','moon1214');
/*!40000 ALTER TABLE `couponlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery` (
  `delivery_state` varchar(30) DEFAULT NULL,
  `pay_id` varchar(30) NOT NULL,
  PRIMARY KEY (`pay_id`),
  CONSTRAINT `R_10` FOREIGN KEY (`pay_id`) REFERENCES `payment` (`pay_id`),
  CONSTRAINT `R_29` FOREIGN KEY (`pay_id`) REFERENCES `payment` (`pay_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery`
--

LOCK TABLES `delivery` WRITE;
/*!40000 ALTER TABLE `delivery` DISABLE KEYS */;
/*!40000 ALTER TABLE `delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp`
--

DROP TABLE IF EXISTS `exp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp` (
  `mem_id` varchar(30) NOT NULL,
  `exp_write` int(50) DEFAULT NULL,
  `exp_reply` int(50) DEFAULT NULL,
  `exp_like` int(50) DEFAULT NULL,
  `exp_totalexp` int(50) DEFAULT NULL,
  PRIMARY KEY (`mem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp`
--

LOCK TABLES `exp` WRITE;
/*!40000 ALTER TABLE `exp` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods` (
  `goods_id` varchar(30) NOT NULL,
  `goods_bigc` varchar(30) DEFAULT NULL,
  `goods_smc` varchar(30) DEFAULT NULL,
  `goods_price` int(50) DEFAULT NULL,
  `goods_brand` varchar(30) DEFAULT NULL,
  `goods_color` varchar(30) DEFAULT NULL,
  `goods_theme` varchar(30) DEFAULT NULL,
  `goods_size` int(50) DEFAULT NULL,
  `goods_pattern` varchar(30) DEFAULT NULL,
  `goods_img` varchar(30) DEFAULT NULL,
  `goods_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES ('1','shirts','short_shirts',10000,'polo','white','office',0,'stripe','img001','폴로 반팔 셔츠'),('2','skirt','long skirt',20000,'nike','red','nature',100,'dot','ima002','나이키 긴 스커트'),('3','shirts','long t-shirtc',39900,'guess','pink','nature',100,'colour','ima003','게스 반팔 셔츠');
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_reply`
--

DROP TABLE IF EXISTS `goods_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods_reply` (
  `reply_id` varchar(30) NOT NULL,
  `goods_id` varchar(30) NOT NULL,
  PRIMARY KEY (`reply_id`,`goods_id`),
  KEY `goods_id_idx` (`goods_id`),
  CONSTRAINT `goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`goods_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `reply_id` FOREIGN KEY (`reply_id`) REFERENCES `reply` (`reply_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_reply`
--

LOCK TABLES `goods_reply` WRITE;
/*!40000 ALTER TABLE `goods_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `goods_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade`
--

DROP TABLE IF EXISTS `grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade` (
  `grade_name` varchar(30) NOT NULL,
  `grade_totalexp` int(50) DEFAULT NULL,
  PRIMARY KEY (`grade_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade`
--

LOCK TABLES `grade` WRITE;
/*!40000 ALTER TABLE `grade` DISABLE KEYS */;
INSERT INTO `grade` VALUES ('bronze',10),('gold',1000),('silver',100);
/*!40000 ALTER TABLE `grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guestbook`
--

DROP TABLE IF EXISTS `guestbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guestbook` (
  `gb_id` varchar(30) NOT NULL,
  `mem_id` varchar(30) DEFAULT NULL,
  `gb_content` varchar(500) DEFAULT NULL,
  `gb_regdate` date DEFAULT NULL,
  `gb_del` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`gb_id`),
  KEY `R_44` (`mem_id`),
  CONSTRAINT `R_43` FOREIGN KEY (`mem_id`) REFERENCES `member` (`mem_id`),
  CONSTRAINT `R_44` FOREIGN KEY (`mem_id`) REFERENCES `member` (`mem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guestbook`
--

LOCK TABLES `guestbook` WRITE;
/*!40000 ALTER TABLE `guestbook` DISABLE KEYS */;
/*!40000 ALTER TABLE `guestbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `md_like`
--

DROP TABLE IF EXISTS `md_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `md_like` (
  `mem_id` varchar(30) NOT NULL,
  `mdtext_id` varchar(30) NOT NULL,
  PRIMARY KEY (`mem_id`,`mdtext_id`),
  CONSTRAINT `mem_id` FOREIGN KEY (`mem_id`) REFERENCES `member` (`mem_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `md_like`
--

LOCK TABLES `md_like` WRITE;
/*!40000 ALTER TABLE `md_like` DISABLE KEYS */;
/*!40000 ALTER TABLE `md_like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `md_reply`
--

DROP TABLE IF EXISTS `md_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `md_reply` (
  `mdtext_id` varchar(30) NOT NULL,
  `reply_id` varchar(30) NOT NULL,
  PRIMARY KEY (`mdtext_id`,`reply_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `md_reply`
--

LOCK TABLES `md_reply` WRITE;
/*!40000 ALTER TABLE `md_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `md_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdtext`
--

DROP TABLE IF EXISTS `mdtext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdtext` (
  `mdtext_id` varchar(30) NOT NULL,
  `mdtext_type` varchar(30) DEFAULT NULL,
  `mdtext_content` varchar(1000) DEFAULT NULL,
  `mdtext_regdate` date DEFAULT NULL,
  `mdtext_del` varchar(5) DEFAULT NULL,
  `mem_id` varchar(30) DEFAULT NULL,
  `mdtext_readcount` int(50) DEFAULT NULL,
  PRIMARY KEY (`mdtext_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdtext`
--

LOCK TABLES `mdtext` WRITE;
/*!40000 ALTER TABLE `mdtext` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdtext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `mem_id` varchar(30) NOT NULL,
  `mem_name` varchar(30) DEFAULT NULL,
  `mem_pw` varchar(30) DEFAULT NULL,
  `mem_email` varchar(50) DEFAULT NULL,
  `mem_birth` date DEFAULT NULL,
  `mem_phone` varchar(30) DEFAULT NULL,
  `mem_point` int(50) DEFAULT NULL,
  `mem_regdate` date DEFAULT NULL,
  `mem_exitdate` date DEFAULT NULL,
  `mem_exitstate` varchar(5) DEFAULT NULL,
  `mem_addr` varchar(50) DEFAULT NULL,
  `grade_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`mem_id`),
  KEY `R_3` (`grade_name`),
  CONSTRAINT `R_3` FOREIGN KEY (`grade_name`) REFERENCES `grade` (`grade_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('jeagong','jeongjeagong','1234','jjkong86@gmail.com','1986-04-26','010-4923-9954',0,'2017-09-25',NULL,'n','sangdodong','bronze'),('master','master','master',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('moon1214','moonjimin','1234','jimin11592@gmail.com','1988-12-14','010-8831-1866',0,'2017-09-25',NULL,'n','incheon','bronze');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `order_id` varchar(30) NOT NULL,
  `order_date` date DEFAULT NULL,
  `order_odertype` varchar(30) DEFAULT NULL,
  `mem_id` varchar(30) NOT NULL,
  `goods_id` varchar(30) NOT NULL,
  `cplist_id` varchar(30) DEFAULT NULL,
  `cart_id` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `R_5` (`mem_id`),
  KEY `R_27` (`cplist_id`),
  KEY `R_7` (`goods_id`),
  KEY `R_48` (`cart_id`),
  CONSTRAINT `R_27` FOREIGN KEY (`cplist_id`) REFERENCES `couponlist` (`cplist_id`),
  CONSTRAINT `R_48` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`cart_id`),
  CONSTRAINT `R_5` FOREIGN KEY (`mem_id`) REFERENCES `member` (`mem_id`),
  CONSTRAINT `R_7` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment` (
  `pay_payment` varchar(30) DEFAULT NULL,
  `pay_info` varchar(30) DEFAULT NULL,
  `pay_addr` varchar(30) DEFAULT NULL,
  `pay_id` varchar(30) NOT NULL,
  `order_id` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`pay_id`),
  KEY `R_28` (`order_id`),
  CONSTRAINT `R_28` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question` (
  `reply_id` varchar(30) NOT NULL,
  `stock_id` varchar(30) NOT NULL,
  PRIMARY KEY (`reply_id`,`stock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply`
--

DROP TABLE IF EXISTS `reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply` (
  `reply_id` varchar(30) NOT NULL,
  `reply_type` varchar(30) DEFAULT NULL,
  `reply_content` varchar(1000) DEFAULT NULL,
  `mem_id` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`reply_id`),
  KEY `mem_id` (`mem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply`
--

LOCK TABLES `reply` WRITE;
/*!40000 ALTER TABLE `reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review` (
  `review_id` varchar(30) NOT NULL,
  `review_content` varchar(1000) DEFAULT NULL,
  `review_regdate` date DEFAULT NULL,
  `review_del` varchar(5) DEFAULT NULL,
  `pay_id` varchar(30) DEFAULT NULL,
  `review_readcount` int(50) DEFAULT NULL,
  PRIMARY KEY (`review_id`),
  KEY `pay_id_idx` (`pay_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_like`
--

DROP TABLE IF EXISTS `review_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review_like` (
  `mem_id` varchar(30) NOT NULL,
  `review_id` varchar(30) NOT NULL,
  PRIMARY KEY (`mem_id`,`review_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_like`
--

LOCK TABLES `review_like` WRITE;
/*!40000 ALTER TABLE `review_like` DISABLE KEYS */;
/*!40000 ALTER TABLE `review_like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_reply`
--

DROP TABLE IF EXISTS `review_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review_reply` (
  `review_id` varchar(30) NOT NULL,
  `reply_id` varchar(30) NOT NULL,
  PRIMARY KEY (`review_id`,`reply_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_reply`
--

LOCK TABLES `review_reply` WRITE;
/*!40000 ALTER TABLE `review_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `review_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock` (
  `stock_qty` int(50) DEFAULT NULL,
  `stock_regdate` date DEFAULT NULL,
  `stock_editdate` date DEFAULT NULL,
  `stock_sale` varchar(30) DEFAULT NULL,
  `goods_id` varchar(30) NOT NULL,
  `stock_id` varchar(30) NOT NULL,
  PRIMARY KEY (`stock_id`),
  KEY `R_11` (`goods_id`),
  CONSTRAINT `R_11` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES (5,'2017-09-27','2017-09-27','rent','1','1');
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trendshare`
--

DROP TABLE IF EXISTS `trendshare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trendshare` (
  `ts_id` varchar(30) NOT NULL,
  `ts_content` varchar(1000) DEFAULT NULL,
  `ts_regdate` date DEFAULT NULL,
  `ts_del` varchar(5) DEFAULT NULL,
  `mem_id` varchar(30) DEFAULT NULL,
  `ts_readcount` int(50) DEFAULT NULL,
  PRIMARY KEY (`ts_id`),
  KEY `R_16` (`mem_id`),
  CONSTRAINT `R_16` FOREIGN KEY (`mem_id`) REFERENCES `member` (`mem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trendshare`
--

LOCK TABLES `trendshare` WRITE;
/*!40000 ALTER TABLE `trendshare` DISABLE KEYS */;
/*!40000 ALTER TABLE `trendshare` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_like`
--

DROP TABLE IF EXISTS `ts_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_like` (
  `mem_id` varchar(30) NOT NULL,
  `ts_id` varchar(30) NOT NULL,
  PRIMARY KEY (`mem_id`,`ts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_like`
--

LOCK TABLES `ts_like` WRITE;
/*!40000 ALTER TABLE `ts_like` DISABLE KEYS */;
/*!40000 ALTER TABLE `ts_like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_reply`
--

DROP TABLE IF EXISTS `ts_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_reply` (
  `ts_id` varchar(30) NOT NULL,
  `reply_id` varchar(30) NOT NULL,
  PRIMARY KEY (`ts_id`,`reply_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_reply`
--

LOCK TABLES `ts_reply` WRITE;
/*!40000 ALTER TABLE `ts_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `ts_reply` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-28 20:34:33


use howaboutdb;

insert into grade values('bronze',10);
insert into grade values('silver',100);
insert into grade values('gold',1000);

insert into member values('moon1214','moonjimin',1234,'jimin11592@gmail.com','19881214','010-8831-1866',0, '20170925', null, 'n' ,'incheon','bronze');
insert into member values('jeagong','jeongjeagong',1234,'jjkong86@gmail.com','19860426','010-4923-9954',0, '20170925', null, 'n' ,'sangdodong','bronze');
insert into member values('master','master', 'master',null,null,null,null,null,null,null,null,null);

insert into cart values(1, now(), 'jeagong', 1, now(), 'y');
insert into cart values(2, now(), 'moon1214', 2, now(), 'n');
insert into cart values(3, now(), 'moon1214', 2, now(), 'n');
insert into cart values(4, now(), 'jeagong', 2, now(), 'y');

insert into coupon values ('cp_bronze','5000');
insert into coupon values ('cp_silver','10000');
insert into coupon values ('cp_gold','15000');
insert into coupon values ('cp_christmas','20000');

insert into couponlist values(1, now(), '20180101', 'n', 'cp_bronze','moon1214');

insert into goods values(1,'shirts','short_shirts', 10000, 'polo', 'white', 'office', 0 , 'stripe', 'img001');
insert into goods values(2, 'skirt','long skirt', 20000, 'nike', 'red', 'nature', 100, 'dot', 'ima002');
insert into goods values(3, 'skirt','long t-shirt', 39900, 'guess', 'pink', 'nature', 100, 'colour', 'ima003');
INSERT INTO `goods` VALUES ('11','shirts','short_shirts',12345,'adidas','red','nature',50,'stripe','s01.jpg','짱셔츠',1000);
INSERT INTO `goods` VALUES ('12','shirts','short_shirts',54321,'adidas','blue','nature',500,'stripe','s02.jpg','돌맹이셔츠',12345);
insert into stock values(1,now(), now(), 'rent', 5, 1 );

show tables;

--상품테이블 변경
alter table goods add goods_name varchar(30);
--상품테이블 데이터 변경
update goods set goods_name='폴로 반팔 셔츠'  where goods_id='1';
update goods set goods_name='나이키 긴 스커트' where goods_id='2';
update goods set goods_name='게스 반팔 셔츠', goods_bigc='shirts' where goods_id='3';
--카트테이블 데이터 변경
update cart set cart_state='y'  where cart_id='1';
update cart set cart_state='y'  where cart_id='2';
update cart set cart_state='y'  where cart_id='3';

insert into orders values(1, now(), 'y', null, 1);
insert into orders values(2, now(), 'y', null, 4);

insert into cart values(5, now(), 'jeagong', 3, now(), 'put', 1);
