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
  `cart_id` int(50) NOT NULL,
  `cart_date` date DEFAULT NULL,
  `mem_id` varchar(30) DEFAULT NULL,
  `goods_id` int(50) DEFAULT NULL,
  `cart_editdate` date DEFAULT NULL,
  `cart_state` varchar(30) DEFAULT NULL,
  `goods_qty` int(5) DEFAULT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (2,'2017-09-27','moon1214',2,'2017-09-27','put',10),(3,'2017-09-27','moon1214',2,'2017-09-27','orders',10),(8,'2017-10-23','moon',9,'2017-10-23','done',2),(10,'2017-10-23','master',2,'2017-10-23','del',1),(12,'2017-10-23','master',2,'2017-10-23','del',1),(13,'2017-10-23','master',2,'2017-10-23','del',1),(15,'2017-10-23','moon',14,'2017-10-23','done',2),(16,'2017-10-23','moon',10,'2017-10-23','done',1),(28,'2017-10-23','moon',9,'2017-10-23','put',1),(38,'2017-10-23','lee',1,'2017-10-23','done',1),(39,'2017-10-23','lee',1,'2017-10-23','del',1),(40,'2017-10-23','lee',2,'2017-10-23','del',1),(41,'2017-10-23','lee',3,'2017-10-23','del',10),(42,'2017-10-23','lee',1,'2017-10-23','done',1),(43,'2017-10-23','lee',1,'2017-10-23','del',1),(44,'2017-10-23','lee',3,'2017-10-23','done',5),(45,'2017-10-23','lee',2,'2017-10-23','del',4),(46,'2017-10-23','lee',3,'2017-10-23','del',5),(47,'2017-10-23',NULL,8,'2017-10-23','put',1),(48,'2017-10-24','jeagong',6,'2017-10-24','done',2),(49,'2017-10-24','jeagong',1,'2017-10-24','del',1),(50,'2017-10-24','jeagong',7,'2017-10-24','del',4),(51,'2017-10-24','jeagong',4,'2017-10-24','del',1),(52,'2017-10-24','jeagong',15,'2017-10-24','del',1),(53,'2017-10-24','jeagong',13,'2017-10-24','done',3),(54,'2017-10-24','jeagong',1,'2017-10-24','del',1),(55,'2017-10-24','jeagong',7,'2017-10-24','del',1),(56,'2017-10-24','jeagong',1,'2017-10-24','del',1),(57,'2017-10-24','jeagong',8,'2017-10-24','del',1),(58,'2017-10-24','jeagong',10,'2017-10-24','del',1),(59,'2017-10-24','jeagong',1,'2017-10-24','del',1),(60,'2017-10-24','jeagong',7,'2017-10-24','del',4),(61,'2017-10-24','jeagong',4,'2017-10-24','del',1),(62,'2017-10-24','jeagong',6,'2017-10-24','del',3),(63,'2017-10-24','jeagong',17,'2017-10-24','del',10),(64,'2017-10-24','jeagong',2,'2017-10-24','del',1),(65,'2017-10-24','jeagong',7,'2017-10-24','del',5),(66,'2017-10-24','master',17,'2017-10-24','del',2),(67,'2017-10-24','lee',15,'2017-10-24','del',1),(68,'2017-10-24','jeagong',6,'2017-10-24','done',2),(69,'2017-10-24','jeagong',9,'2017-10-24','del',2),(70,'2017-10-24','jeagong',3,'2017-10-24','done',3),(71,'2017-10-24','jeagong',8,'2017-10-24','del',4),(72,'2017-10-26','master',5,'2017-10-26','orders',1),(73,'2017-10-26','master',3,'2017-10-26','orders',1),(74,'2017-10-26','jeagong',8,'2017-10-26','del',1),(75,'2017-10-26','jeagong',5,'2017-10-26','del',3),(76,'2017-10-26','jeagong',3,'2017-10-26','del',2),(77,'2017-10-27','jeagong',8,'2017-10-27','orders',1),(78,'2017-10-27','jeagong',7,'2017-10-27','orders',3),(79,'2017-10-27','jeagong',2,'2017-10-27','orders',1),(80,'2017-10-27','jeagong',3,'2017-10-27','del',1),(81,'2017-10-27','jeagong',4,'2017-10-27','orders',1),(82,'2017-10-27','jeagong',9,'2017-10-27','orders',1),(83,'2017-10-27','jeagong',2,'2017-10-27','put',1),(84,'2017-11-07','master',1,'2017-11-07','put',1);
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
  `cp_benefit` int(50) NOT NULL,
  PRIMARY KEY (`cp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon`
--

LOCK TABLES `coupon` WRITE;
/*!40000 ALTER TABLE `coupon` DISABLE KEYS */;
INSERT INTO `coupon` VALUES ('bronze',5000),('gold',15000),('silver',10000),('x-mas coupon',20000);
/*!40000 ALTER TABLE `coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `couponlist`
--

DROP TABLE IF EXISTS `couponlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `couponlist` (
  `cplist_id` int(30) NOT NULL,
  `cplist_regdate` date DEFAULT NULL,
  `cplist_expire` date DEFAULT NULL,
  `cplist_use` varchar(5) DEFAULT NULL,
  `cp_id` varchar(30) DEFAULT NULL,
  `mem_id` varchar(30) DEFAULT NULL,
  `cp_benefit` int(50) DEFAULT NULL,
  PRIMARY KEY (`cplist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `couponlist`
--

LOCK TABLES `couponlist` WRITE;
/*!40000 ALTER TABLE `couponlist` DISABLE KEYS */;
INSERT INTO `couponlist` VALUES (1,'2017-09-27','2018-01-01','n','bronze','ki',5000),(2,'2017-09-27','2018-01-01','n','x-mas coupon','ki',20000),(3,'2017-09-27','2018-01-01','y','gold','lee',15000),(4,'2017-09-27','2018-01-01','n','x-mas coupon','jeagong',20000),(5,'2017-10-23','2017-10-26','y','silver','jeagong',10000),(6,'2017-10-23','2017-12-29','n','x-mas coupon','master',20000);
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
  PRIMARY KEY (`pay_id`)
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
  `goods_id` int(50) NOT NULL,
  `goods_bigc` varchar(30) NOT NULL,
  `goods_smc` varchar(30) NOT NULL,
  `goods_price` int(255) NOT NULL,
  `goods_brand` varchar(300) NOT NULL,
  `goods_color` varchar(30) NOT NULL,
  `goods_theme` varchar(30) NOT NULL,
  `goods_size` int(50) NOT NULL,
  `goods_pat` varchar(30) NOT NULL,
  `goods_img` varchar(3000) NOT NULL,
  `goods_name` varchar(30) NOT NULL,
  `goods_delprice` int(255) NOT NULL,
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES (1,'women','short_shirts',25000,'daks','white','office',90,'stripe','01.png','폴로 반팔 셔츠',2500),(2,'women','long skirt',20000,'daks','red','nature',100,'dot','02.png','나이키 긴 스커트',2500),(3,'men','long t-shirtc',39900,'빈폴','pink','nature',100,'colour','03.png','가을한정코트',2500),(4,'men','jacket',50000,'나이키','dark','daily',0,'none','04.png','검정검정내자켓',5000),(5,'women','one-piece',20000,'나이키','yellow','office',0,'none','05.png','노랑노랑원피스',5000),(6,'men','shirts',15000,'폴로','dark','office',0,'check','06.png','체크체크남방',10000),(7,'women','jacket',30000,'버버리','red','office',66,'check','07.png','버버리체크체크',2500),(8,'men','short_shirts',50000,'adidas','red','nature',50,'stripe','08.png','갈색코드얍얍',2500),(9,'men','short_shirts',20000,'adidas','red','nature',50,'stripe','09.png','돌맹이셔츠',2500),(10,'men','short_shirts',100000,'adidas','red','nature',50,'stripe','10.png','강한빨강져지다',2500),(11,'women','short_shirts',10000,'게스','red','nature',50,'stripe','11.png','핑쿠핑쿠티셔츠',2500),(12,'men','short_shirts',12000,'폴로','blue','nature',500,'stripe','12.png','하양하양반팔셔츠',5000),(13,'women','shirts',35000,'야옹이','pink','office',105,'none','13.png','야옹이와핑크티',5000),(14,'women','jacket',45000,'ZARA','dark','office',0,'none','23.png','코트코트 예쁜코트',2500),(15,'men','shoes',75000,'뉴발란스','dark','student',105,'none','15.png','뉴발580',2500),(16,'women','shoes',32000,'스케이트','dark','daily',105,'none','15.png','검백434',2500),(17,'men','jacket',45000,'자라','red','student',44,'none','25.png','트렌치코트',2500),(18,'men','suit',30000,'아디다스','orange','office',0,'none','16.png','16번상품',2500);
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
  PRIMARY KEY (`reply_id`,`goods_id`)
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
  `mdtext_id` int(50) NOT NULL,
  `mdtext_type` varchar(30) NOT NULL,
  `mdtext_goods_id` int(50) NOT NULL,
  `mdtext_goods_img` varchar(50) NOT NULL,
  `mdtext_content` varchar(1000) NOT NULL,
  `mdtext_regdate` date NOT NULL,
  `mdtext_del` varchar(5) NOT NULL,
  `mem_id` varchar(30) NOT NULL,
  `mdtext_readcount` int(50) NOT NULL,
  PRIMARY KEY (`mdtext_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdtext`
--

LOCK TABLES `mdtext` WRITE;
/*!40000 ALTER TABLE `mdtext` DISABLE KEYS */;
INSERT INTO `mdtext` VALUES (1,'fall',7,'07.png','가을상품입니다. 정말 예뻐요','2017-09-24','n','moon',329),(2,'fall',6,'06.png','가을 맞이 코디 입니다','2017-10-01','n','bk',42),(3,'여심 저격',8,'08.png','가을이 왔어요.\r\n\r\n여성분들 입어봐요.\r\n\r\n예뻐요. 따뜻함보다는 패션이죠.\r\n\r\n이거입으면 남친생기는 남친룩이에요.','2017-10-17','n','master',0),(4,'남심 저격',9,'09.png','가을이 왔어요.\r\n\r\n남성분들 입어봐요.\r\n\r\n예뻐요. 따뜻함보다는 패션이죠.\r\n\r\n이거입으면 남친생기는 남친룩이에요.','2017-10-17','n','master',0),(5,'남자는 남방이지',1,'01.png','남방을 입으면 멋쟁이','2017-10-19','n','master',0),(6,'강한남자는',10,'10.png','빨강을 입어줘야 강하다.','2017-10-19','n','master',0),(7,'소개팅은 하양하양',12,'12.png','깔끔함으로 소개를 깔끔하게  하양하양한 마음처럼','2017-10-19','n','master',0),(8,'옷입기 싫은 날',9,'09.png','이건 절대 입을 수 없죠','2017-10-19','n','master',0),(9,'롱코트가 필요해',7,'07.png','추우면 로오오오오오옹 코트를 입어요.\r\n\r\n따뜻따뜻따뜻따뜻따뜻따뜻','2017-10-19','n','master',0),(10,'가을이에요',17,'25.png','트렌치 코트에요 ~','2017-10-24','n','master',0),(11,'가을이 좋아요',8,'08.png','많이 사주세요','2017-10-24','n','master',0);
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
  `mem_name` varchar(30) DEFAULT NULL COMMENT 'utf8',
  `mem_pw` varchar(30) DEFAULT NULL,
  `mem_email` varchar(50) DEFAULT NULL,
  `mem_birth` date DEFAULT NULL,
  `mem_phone` varchar(30) DEFAULT NULL,
  `mem_point` int(50) DEFAULT NULL,
  `mem_regdate` date DEFAULT NULL,
  `mem_exitdate` date DEFAULT NULL,
  `mem_exitstate` varchar(5) DEFAULT NULL,
  `mem_addr` varchar(50) DEFAULT NULL COMMENT 'utf8',
  `grade_name` varchar(30) DEFAULT NULL,
  `cp_benefit` varchar(45) DEFAULT NULL,
  `mem_pic` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`mem_id`),
  KEY `R_3` (`grade_name`),
  CONSTRAINT `R_3` FOREIGN KEY (`grade_name`) REFERENCES `grade` (`grade_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='utf8';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('gaib','성희','gaib','gaib@gaib','2017-09-06','22211231234',0,'2017-09-29',NULL,'n','0100010010','bronze','5000',NULL),('hello','헬로우','hello','he@he','2017-09-05','123123123123',0,'2017-09-29',NULL,'n','2323232','bronze','5000',NULL),('hi','안녕','hi','hi@hi','2017-09-20','123333',0,'2017-09-29',NULL,'n','2323','bronze','5000',NULL),('jeagong','jeongjeagong','1234','jjkong86@gmail.com','1986-04-26','010-4923-9954',19370,'2017-09-25',NULL,'put','sangdodong','bronze','5000',NULL),('ki','김영정','ki','ki@ki','2017-09-05','010101010101',4080,'2017-09-29',NULL,'n','여의도불꽃','bronze','5000',NULL),('lee','이지훈','lee','lee@lee','1992-02-12','01012345678',17450,'2017-09-29',NULL,'put','강남구','bronze','5000',NULL),('maeng','맹범기','qwe','m@m.com','2017-10-11','12341234123',90000000,'2017-10-20',NULL,'n','여기','gold',NULL,NULL),('master','master','master','master@howabout.com','2000-01-01','1234-45676',15990,'2017-09-08',NULL,'put','하늘','gold','100000',NULL),('moon','문지민','1234','jimin11592@gmail.com','1988-12-14','010-8831-1866',9500,'2017-09-29',NULL,'put','인천시','bronze','5000',NULL),('moon1214','moonjimin','1234','jimin11592@gmail.com','1988-12-14','010-8831-1866',35000,'2017-09-25',NULL,'put','incheon','bronze','5000',NULL),('qweqwe','건영','qweqwe','qwe@qwe','1999-02-12','01022224444',0,'2017-09-29',NULL,'n','seoul','bronze','5000',NULL),('아아아','222','222','222@2222','2017-10-03','222222',0,'2017-10-11',NULL,'n','2222','bronze','5000',NULL);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `orders_id` varchar(30) NOT NULL,
  `orders_date` date DEFAULT NULL,
  `orders_type` varchar(30) DEFAULT NULL,
  `cplist_id` varchar(30) DEFAULT NULL,
  `cart_id` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`orders_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('1','2017-09-30','y',NULL,'1'),('2','2017-09-30','y',NULL,'4');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment` (
  `pay_id` int(50) NOT NULL AUTO_INCREMENT,
  `goods_id` int(50) NOT NULL,
  `goods_qty` int(50) DEFAULT NULL,
  `mem_id` varchar(30) NOT NULL,
  `pay_name` varchar(30) NOT NULL,
  `pay_phone` varchar(30) NOT NULL,
  `pay_email` varchar(30) NOT NULL,
  `pay_addr` varchar(30) NOT NULL,
  `pay_rename` varchar(30) NOT NULL,
  `pay_rephone` varchar(30) NOT NULL,
  `pay_required` varchar(500) NOT NULL,
  `pay_total` int(50) NOT NULL,
  `pay_time` date NOT NULL,
  `cplist_id` int(30) DEFAULT NULL,
  `cart_id` int(50) DEFAULT NULL,
  `mem_usepoint` int(50) DEFAULT NULL,
  PRIMARY KEY (`pay_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (50,6,2,'jeagong','jeagong','010-4923-9954','jjkong86@gmail.com','sangdodong','jeagong','010-4923-9954','',11974,'2017-10-24',0,48,18026),(51,1,1,'jeagong','jeagong','010-4923-9954','jjkong86@gmail.com','sangdodong','jeagong','010-4923-9954','',22500,'2017-10-24',0,49,0),(52,7,4,'jeagong','jeagong','010-4923-9954','jjkong86@gmail.com','sangdodong','jeagong','010-4923-9954','',96553,'2017-10-24',0,50,3447),(53,4,1,'jeagong','jeagong','010-4923-9954','jjkong86@gmail.com','sangdodong','jeagong','010-4923-9954','',90000,'2017-10-24',0,51,0),(54,13,3,'jeagong','jeagong','010-4923-9954','jjkong86@gmail.com','sangdodong','jeagong','010-4923-9954','',11345,'2017-10-24',5,53,58655),(55,6,2,'jeagong','jeagong','010-4923-9954','jjkong86@gmail.com','sangdodong','jeagong','010-4923-9954','',19000,'2017-10-24',13,68,1000),(56,3,3,'jeagong','jeagong','010-4923-9954','jjkong86@gmail.com','sangdodong','jeagong','010-4923-9954','',84700,'2017-10-24',13,70,10000),(57,3,5,'lee','lee','01012345678','lee@lee','강남구','lee','01012345678','',159500,'2017-10-26',3,44,10000);
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
  `reply_id` int(11) NOT NULL AUTO_INCREMENT,
  `reply_type` varchar(30) DEFAULT NULL,
  `reply_content` varchar(1000) DEFAULT NULL,
  `mem_id` varchar(30) DEFAULT NULL,
  `reply_regdate` datetime DEFAULT CURRENT_TIMESTAMP,
  `reply_del` varchar(20) DEFAULT 'n',
  `mem_name` varchar(30) NOT NULL,
  PRIMARY KEY (`reply_id`)
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply`
--

LOCK TABLES `reply` WRITE;
/*!40000 ALTER TABLE `reply` DISABLE KEYS */;
INSERT INTO `reply` VALUES (65,'feed','댓글을','moon','2017-10-19 17:46:21','n','문지민'),(66,'feed','입력하세요','moon','2017-10-19 17:46:38','n','문지민'),(67,'feed','','','2017-10-19 17:48:15','n',''),(68,'feed','','moon','2017-10-19 17:53:46','n','문지민'),(69,'feed','','moon','2017-10-19 17:54:26','n','문지민'),(70,'feed','대그을','moon','2017-10-19 17:57:42','n','문지민'),(71,'feed','대뜨긍른ㅇㄹㄴㅇㄹ','moon','2017-10-19 17:58:35','n','문지민'),(72,'feed','혜리 ㅎㅇㅎㅇ','jeagong','2017-10-19 18:20:26','n','jeongjeagong'),(73,'feed','시간이 빠르다','moon','2017-10-19 18:25:50','n','문지민'),(74,'feed','응 빨라','moon','2017-10-19 18:27:31','n','문지민'),(75,'feed','아아아아아아','moon','2017-10-19 18:29:01','n','문지민'),(76,'feed','어랏','moon','2017-10-19 18:29:15','n','문지민'),(77,'feed','어랏','moon','2017-10-19 18:29:32','n','문지민'),(78,'feed','ㅁㄴㅇ','moon','2017-10-19 18:29:49','n','문지민'),(79,'feed','ㅂㅈㅇㅂㅈㅇ','moon','2017-10-19 18:30:04','n','문지민'),(80,'feed','왜이래','moon','2017-10-19 18:42:23','n','문지민'),(81,'feed','왜이래','moon','2017-10-19 18:42:24','n','문지민'),(82,'feed','댓글 브이브이','master','2017-10-19 20:07:13','n','master'),(83,'feed','잠이안와','moon','2017-10-20 00:56:52','n','문지민'),(84,'feed','어라','moon','2017-10-20 00:57:00','n','문지민'),(85,'feed','으아','moon','2017-10-20 01:14:48','n','문지민'),(86,'feed','하이','moon','2017-10-20 01:18:44','n','문지민'),(87,'feed','아놔','moon','2017-10-20 01:26:02','n','문지민'),(88,'feed','11','moon','2017-10-20 01:27:19','n','문지민'),(89,'feed','세시다','moon','2017-10-20 03:29:23','n','문지민'),(90,'feed','ㅋㅋㅋㅋ','jeagong','2017-10-20 10:28:25','n','jeongjeagong'),(91,'feed','배부르다','moon','2017-10-20 13:28:01','n','문지민'),(92,'feed','금욜이다~~!!','moon','2017-10-20 13:33:04','n','문지민'),(93,'feed','일요일이네 하아아','moon','2017-10-22 16:02:09','n','문지민'),(94,'feed','으아아','moon','2017-10-22 17:13:39','n','문지민'),(95,'feed','테스트','moon','2017-10-22 18:50:22','n','문지민'),(96,'feed','테스트','moon','2017-10-22 18:50:41','n','문지민'),(97,'feed','댓글 카운트','moon','2017-10-22 18:58:51','n','문지민'),(98,'feed','댓글 카운트','moon','2017-10-22 18:58:54','n','문지민'),(99,'feed','우아','moon','2017-10-22 19:03:12','n','문지민'),(100,'feed','테스트','moon','2017-10-22 19:06:28','n','문지민'),(101,'feed','테스트','moon','2017-10-22 19:07:03','n','문지민'),(102,'feed','일요일이다','moon','2017-10-22 19:08:36','n','문지민'),(103,'feed','엇','moon','2017-10-22 19:13:40','n','문지민'),(104,'feed','오옷','moon','2017-10-22 19:16:17','n','문지민'),(105,'feed','으아','moon','2017-10-22 19:19:59','n','문지민'),(106,'feed','졸리다','moon','2017-10-22 19:23:14','n','문지민'),(107,'feed','오홋','moon','2017-10-22 19:24:11','n','문지민'),(108,'feed','아하','moon','2017-10-22 19:24:31','n','문지민'),(109,'feed','우후','moon','2017-10-22 19:28:26','n','문지민'),(110,'feed','안녕','moon','2017-10-22 19:30:26','n','문지민'),(111,'feed','오오','moon','2017-10-22 19:32:02','n','문지민'),(112,'feed','오호','moon','2017-10-22 19:39:32','n','문지민'),(113,'feed','아하','moon','2017-10-22 19:43:54','n','문지민'),(114,'feed','1111111','moon','2017-10-22 19:45:12','n','문지민'),(115,'feed','으으','moon','2017-10-22 19:48:03','n','문지민'),(116,'feed','으아','moon','2017-10-22 19:50:41','n','문지민'),(117,'feed','으아','moon','2017-10-22 19:51:58','n','문지민'),(118,'feed','123','moon','2017-10-22 19:54:03','n','문지민'),(119,'feed','123','moon','2017-10-22 19:56:22','n','문지민'),(120,'feed','1234','moon','2017-10-22 19:58:04','n','문지민'),(121,'feed','1234','moon','2017-10-22 19:58:08','n','문지민'),(122,'feed','!!!!!','moon','2017-10-22 20:04:11','n','문지민'),(123,'feed','344','moon','2017-10-22 20:18:00','n','문지민'),(124,'feed','으아아','moon','2017-10-22 20:59:28','n','문지민'),(125,'feed','나도 마이페이지 가고싶다','master','2017-10-23 14:23:36','n','master'),(126,'feed','나도 마이페이지 가고싶다','master','2017-10-23 14:23:47','n','master'),(127,'feed','나도 마이페이지 가고싶다','master','2017-10-23 14:23:48','n','master'),(128,'feed','나도 마이페이지 가고싶다','master','2017-10-23 14:23:49','n','master'),(129,'feed','나도 마이페이지 가고싶다','master','2017-10-23 14:23:49','n','master'),(130,'feed','나도 마이페이지 가고싶다','master','2017-10-23 14:23:49','n','master'),(131,'feed','나도 마이페이지 가고싶다','master','2017-10-23 14:23:50','n','master'),(132,'feed','나도 마이페이지 가고싶다','master','2017-10-23 14:23:50','n','master'),(133,'feed','나도 마이페이지 가고싶다','master','2017-10-23 14:23:51','n','master'),(134,'feed','나도 마이페이지 가고싶다','master','2017-10-23 14:23:51','n','master'),(135,'feed','나도 마이페이지 가고싶다','master','2017-10-23 14:23:51','n','master'),(136,'feed','나도 마이페이지 가고싶다','master','2017-10-23 14:23:52','n','master'),(137,'feed','나도 마이페이지 가고싶다','master','2017-10-23 14:23:52','n','master'),(138,'feed','나도 마이페이지 가고싶다','master','2017-10-23 14:23:52','n','master'),(139,'feed','나도 마이페이지 가고싶다','master','2017-10-23 14:23:52','n','master'),(140,'feed','나도 마이페이지 가고싶다','master','2017-10-23 14:23:53','n','master'),(141,'feed','나도 마이페이지 가고싶다','master','2017-10-23 14:23:53','n','master'),(142,'feed','나도 마이페이지 가고싶다','master','2017-10-23 14:23:53','n','master'),(143,'feed','댓글수','master','2017-10-23 14:25:05','n','master'),(144,'feed','댓글수','master','2017-10-23 14:25:06','n','master'),(145,'feed','ewrq','jeagong','2017-10-23 18:09:36','n','jeongjeagong'),(146,'feed','1233','jeagong','2017-10-23 19:01:04','n','jeongjeagong'),(147,'feed','1233','jeagong','2017-10-23 19:01:06','n','jeongjeagong'),(148,'feed','','jeagong','2017-10-24 10:38:52','n','jeongjeagong'),(149,'feed','하이요 !','jeagong','2017-10-24 10:38:56','n','jeongjeagong'),(150,'feed','ㅎㅇㅎㅇ','jeagong','2017-10-24 10:42:10','n','jeongjeagong'),(151,'feed','이뻐요 좌표좀','jeagong','2017-10-24 15:27:59','n','jeongjeagong'),(152,'feed','가방은 어디껀가요 !!!','moon','2017-10-24 15:29:48','n','문지민'),(153,'feed','코트 이뻐요~~~~','moon','2017-10-24 15:30:35','n','문지민'),(154,'feed','이뻐요','moon','2017-10-24 15:40:08','n','문지민'),(155,'feed','이뻐요','moon','2017-10-24 15:41:10','n','문지민'),(156,'feed','이뻐요 ','jeagong','2017-10-24 15:56:33','n','jeongjeagong'),(157,'feed','이뻐요','moon','2017-10-24 16:27:01','n','문지민'),(158,'feed','내가 패션왕이다','moon','2017-10-24 16:34:30','n','문지민'),(159,'feed','댓글','jeagong','2017-10-24 16:40:30','n','jeongjeagong');
/*!40000 ALTER TABLE `reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review` (
  `review_id` int(50) NOT NULL AUTO_INCREMENT,
  `review_content` varchar(1000) DEFAULT NULL,
  `review_regdate` date DEFAULT NULL,
  `review_del` varchar(50) DEFAULT NULL,
  `pay_id` int(50) DEFAULT NULL,
  `review_readcount` int(50) DEFAULT NULL,
  `review_title` varchar(100) DEFAULT NULL,
  `mem_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`review_id`),
  KEY `pay_id_idx` (`pay_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (3,'핏이 예뻐요 ㅋㅋ','2017-10-24','n',50,0,'체크체크남방 후기~','jeagong'),(4,'딱 내스타일이야 ~','2017-10-24','n',51,0,'폴로 반팔 셔츠','jeagong'),(5,'엄청 따뜻해요','2017-10-24','n',52,0,'버버리체크체크 후기 !','jeagong'),(6,'완전 까매요 ㅋㅋ','2017-10-24','n',53,0,'검정검정내자켓 후기','jeagong'),(7,'핑크핑크해요 ㅋㅋ','2017-10-24','n',54,0,'야옹이와핑크티 후기','jeagong');
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
  `stock_id` int(50) NOT NULL,
  `goods_id` int(50) NOT NULL,
  `stock_qty` int(50) NOT NULL,
  `stock_regdate` date NOT NULL,
  `stock_editdate` date NOT NULL,
  `stock_sale` varchar(30) NOT NULL,
  PRIMARY KEY (`stock_id`),
  KEY `good_id_idx` (`goods_id`),
  CONSTRAINT `good_id` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`goods_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES (1,1,8,'2017-09-27','2017-09-27','sale'),(2,2,0,'2017-09-27','2017-09-27','sale'),(3,3,3,'2017-09-27','2017-09-27','sale'),(4,4,8,'2017-09-27','2017-09-27','sale'),(5,5,8,'2017-09-27','2017-09-27','sale'),(6,6,2,'2017-09-27','2017-09-27','sale'),(7,7,5,'2017-09-27','2017-09-27','sale'),(8,8,10,'2017-09-27','2017-09-27','sale'),(9,9,6,'2017-09-27','2017-09-27','sale'),(10,10,9,'2017-09-27','2017-09-27','sale'),(11,11,10,'2017-09-27','2017-09-27','sale'),(12,12,10,'2017-09-27','2017-09-27','sale'),(13,13,7,'2017-09-27','2017-09-27','sale'),(14,14,10,'2017-09-27','2017-09-27','sale'),(15,15,10,'2017-10-16','2017-10-16','sale'),(16,16,10,'2017-10-16','2017-10-16','sale'),(17,17,10,'2017-10-24','2017-10-24','sale'),(18,18,10,'2017-10-24','2017-10-24','sale');
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_file`
--

DROP TABLE IF EXISTS `tb_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_file` (
  `IDX` int(11) NOT NULL AUTO_INCREMENT,
  `BOARD_IDX` int(11) DEFAULT NULL,
  `ORIGINAL_FILE_NAME` varchar(250) NOT NULL,
  `STORED_FILE_NAME` varchar(36) DEFAULT NULL,
  `FILE_SIZE` int(11) DEFAULT NULL,
  `CREA_DTM` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CREA_ID` varchar(30) DEFAULT NULL,
  `DEL_GB` varchar(1) DEFAULT 'N',
  PRIMARY KEY (`IDX`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_file`
--

LOCK TABLES `tb_file` WRITE;
/*!40000 ALTER TABLE `tb_file` DISABLE KEYS */;
INSERT INTO `tb_file` VALUES (1,0,'제목','',NULL,'0000-00-00 00:00:00','','N'),(2,NULL,'제목',NULL,NULL,'0000-00-00 00:00:00',NULL,'N'),(3,NULL,'제목2',NULL,NULL,'0000-00-00 00:00:00',NULL,'N'),(4,NULL,'제목3',NULL,NULL,'2017-10-11 06:19:08',NULL,'N');
/*!40000 ALTER TABLE `tb_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trendshare`
--

DROP TABLE IF EXISTS `trendshare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trendshare` (
  `ts_id` int(11) NOT NULL AUTO_INCREMENT,
  `ts_content` varchar(1000) DEFAULT NULL,
  `ts_regdate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ts_del` varchar(5) DEFAULT 'n',
  `mem_id` varchar(30) DEFAULT NULL,
  `ts_readcount` int(50) DEFAULT '1',
  `ts_img_path` varchar(100) DEFAULT 'resources/images/feeds/',
  `ts_img_name` varchar(250) DEFAULT NULL,
  `mem_name` varchar(30) NOT NULL,
  `ts_like` int(50) DEFAULT '0',
  PRIMARY KEY (`ts_id`),
  KEY `R_16` (`mem_id`),
  CONSTRAINT `R_16` FOREIGN KEY (`mem_id`) REFERENCES `member` (`mem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trendshare`
--

LOCK TABLES `trendshare` WRITE;
/*!40000 ALTER TABLE `trendshare` DISABLE KEYS */;
INSERT INTO `trendshare` VALUES (1,'교복에입을려고 후리스샀는데 사복에도 짱짱이쁨 사이즈도딱이구 ㅠㅠ...','2017-10-13 09:30:18','n','moon',41,'','https://usercontents-c.styleshare.kr/images/23136781/440x440','문지민',12),(2,'꼭 꼭 구매하고 싶었던 가을 팬톤컬러 slsl상의와 트렌치코트가 떠오르는 단정한...','2017-10-13 09:30:44','n','moon',23,'','https://usercontents-c.styleshare.kr/images/23128988/440x440','문지민',2),(3,'내기준 가격대비 진짜 존좋 코디 ','2017-10-13 09:43:10','n','master',4,'','https://usercontents-c.styleshare.kr/images/23128812/440x440','master',5),(4,'너무나도 색감이쁜 맨투맨ㅠㅠ애들이 어디서삿냐고 다물어본다 키가작은...','2017-10-13 09:56:44','n','master',5,'','https://usercontents-c.styleshare.kr/images/23130983/440x440','master',20),(5,'핏도 예쁘고 질도 좋은 바지가 오늘까지 만원 !!! ','2017-10-13 16:41:41','n','moon',132,'','https://usercontents-c.styleshare.kr/images/23140728/440x440','문지민',82),(6,'가을가을한 아메카지스타일!!','2017-10-14 13:24:49','n','moon',40,'','https://usercontents-c.styleshare.kr/images/23128845/440x440','문지민',2),(7,'요즘엔 이렇게 입는게 좋더라 ~~ ','2017-10-15 11:25:36','n','moon',12,'','https://usercontents-c.styleshare.kr/images/23114829/440x440','문지민',1),(8,'요즘 좋아하는 데일리룩 ','2017-10-15 15:33:21','n','moon',7,'','https://usercontents-c.styleshare.kr/images/23139402/440x440','문지민',5),(17,'2018 S/S 헤라서울패션위크 ','2017-10-17 20:55:17','n','moon',37,'','https://usercontents-c.styleshare.kr/images/23136798/440x440','문지민',0),(18,'oioi 오리지날 드디어 나왔다ㅠㅠ','2017-10-17 23:20:56','n','moon',25,'','https://usercontents-c.styleshare.kr/images/23115769/440x660','문지민',6),(19,'진짜 안에 얇은 티 하나 입고 입었는데도 따뜻 ㅠㅠㅠ ❤️ 지금 이런 날씨에 딱...','2017-10-18 01:23:25','n','moon',63,'','https://usercontents-c.styleshare.kr/images/23119267/440x586','문지민',4),(20,'후드티 넘예 존예 재질도 남다르다 안감은 기모라눙... ','2017-10-18 14:19:14','n','moon',48,'','https://usercontents-c.styleshare.kr/images/23129415/440x440','문지민',47),(21,'만원도 안하는 이너 페이크폴라 ㅎㅎ','2017-10-18 15:27:36','n','master',205,'','https://usercontents-c.styleshare.kr/images/23138126/440x440','master',18),(22,'','2017-10-18 17:06:04','n','jeagong',235,'','https://usercontents-c.styleshare.kr/images/23141004/440x586','jeongjeagong',174),(23,'오늘은 이렇게','2017-10-20 13:43:44','n','lee',42,'','https://usercontents-c.styleshare.kr/images/23138665/440x434','이재훈',4),(24,'가을가을한 아메카지스타일!!','2017-10-21 18:32:38','n','moon',68,'/howAbout/resources/images/goods/','08.png','문지민',11),(27,'패션왕			','2017-10-24 15:58:20','n','jeagong',5,'resources/images/feeds/','feed_jeagong_20171024-155820.png','jeongjeagong',0);
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
INSERT INTO `ts_reply` VALUES ('1','120'),('1','121'),('1','71'),('1','82'),('17','104'),('17','125'),('17','126'),('17','127'),('17','128'),('17','129'),('17','130'),('17','131'),('17','132'),('17','133'),('17','134'),('17','135'),('17','136'),('17','137'),('17','138'),('17','139'),('17','140'),('17','141'),('17','142'),('17','72'),('17','85'),('18','155'),('19','119'),('19','123'),('19','124'),('19','65'),('19','66'),('19','89'),('19','90'),('19','91'),('19','92'),('19','94'),('19','96'),('20','143'),('20','144'),('20','73'),('20','74'),('20','75'),('20','80'),('20','81'),('20','95'),('20','99'),('21','100'),('21','122'),('21','154'),('21','156'),('21','159'),('21','70'),('21','76'),('21','77'),('21','84'),('21','86'),('21','93'),('21','97'),('21','98'),('22','101'),('22','102'),('22','105'),('22','106'),('22','107'),('22','108'),('22','109'),('22','110'),('22','111'),('22','145'),('22','79'),('23','151'),('23','152'),('23','157'),('24','148'),('24','149'),('24','153'),('25','150'),('27','158'),('4','114'),('4','67'),('4','87'),('4','88'),('6','116'),('6','118'),('6','68'),('6','69'),('7','117'),('7','146'),('7','147'),('7','83'),('8','103'),('8','112'),('8','113'),('8','115'),('8','78');
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

-- Dump completed on 2017-11-07 20:49:09
