-- MySQL dump 10.13  Distrib 5.6.34, for Win32 (AMD64)
--
-- Host: localhost    Database: db_cms
-- ------------------------------------------------------
-- Server version	5.6.34-log

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
-- Table structure for table `access_log`
--

DROP TABLE IF EXISTS `access_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `request_uri` varchar(100) NOT NULL DEFAULT '',
  `query_string` varchar(200) NOT NULL DEFAULT '',
  `remote_address` varchar(30) NOT NULL DEFAULT '',
  `server_name` varchar(60) NOT NULL DEFAULT '',
  `server_port` varchar(10) NOT NULL DEFAULT '',
  `locale` varchar(20) NOT NULL DEFAULT '',
  `browser` varchar(200) NOT NULL DEFAULT '',
  `referer` varchar(255) NOT NULL DEFAULT '',
  `session_id` varchar(80) NOT NULL DEFAULT '',
  `user_id` varchar(20) NOT NULL DEFAULT '',
  `response_time` int(11) NOT NULL DEFAULT '0',
  `regdate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access_log`
--

LOCK TABLES `access_log` WRITE;
/*!40000 ALTER TABLE `access_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `access_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_banner`
--

DROP TABLE IF EXISTS `tb_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_banner` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `link` text,
  `link_type` varchar(10) DEFAULT '_blank',
  `banner_img` mediumtext,
  `ordering` int(11) DEFAULT '99',
  `regdate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_banner`
--

LOCK TABLES `tb_banner` WRITE;
/*!40000 ALTER TABLE `tb_banner` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_bbs_manager`
--

DROP TABLE IF EXISTS `tb_bbs_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_bbs_manager` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `board_key` varchar(45) NOT NULL,
  `board_name` varchar(45) NOT NULL,
  `skin` varchar(45) DEFAULT NULL,
  `is_notice` char(1) NOT NULL DEFAULT 'Y',
  `is_comment` char(1) NOT NULL DEFAULT 'Y',
  `is_comment_level` int(11) NOT NULL DEFAULT '99',
  `is_file` char(1) NOT NULL DEFAULT 'Y',
  `is_thumbnail` char(1) DEFAULT 'N',
  `is_secret` char(1) NOT NULL DEFAULT 'Y',
  `is_nologin` char(1) NOT NULL DEFAULT 'Y',
  `write_level` int(11) NOT NULL DEFAULT '99',
  `page_count` int(11) NOT NULL DEFAULT '15',
  `description` text,
  `regdate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_bbs_manager`
--

LOCK TABLES `tb_bbs_manager` WRITE;
/*!40000 ALTER TABLE `tb_bbs_manager` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_bbs_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_calendar`
--

DROP TABLE IF EXISTS `tb_calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_calendar` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(45) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `content` text,
  `st_date` datetime DEFAULT NULL,
  `ed_date` datetime DEFAULT NULL,
  `is_open` char(1) DEFAULT NULL,
  `is_loop` char(1) DEFAULT NULL,
  `regdate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_calendar`
--

LOCK TABLES `tb_calendar` WRITE;
/*!40000 ALTER TABLE `tb_calendar` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_files`
--

DROP TABLE IF EXISTS `tb_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_files` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `tb_idx` int(11) DEFAULT NULL,
  `tb_name` varchar(45) DEFAULT NULL,
  `web_path` varchar(100) DEFAULT NULL,
  `realfilename` varchar(200) DEFAULT NULL,
  `filename` varchar(200) DEFAULT NULL,
  `fileext` varchar(10) DEFAULT NULL,
  `filesize` varchar(45) DEFAULT NULL,
  `regdate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_files`
--

LOCK TABLES `tb_files` WRITE;
/*!40000 ALTER TABLE `tb_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_popup`
--

DROP TABLE IF EXISTS `tb_popup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_popup` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `img_main` mediumtext,
  `link_position_x` int(11) DEFAULT '0',
  `link_position_y` int(11) DEFAULT '0',
  `link_size_x` int(11) DEFAULT '0',
  `link_size_y` int(11) DEFAULT '0',
  `close_position_x` int(11) DEFAULT '0',
  `close_position_y` int(11) DEFAULT '0',
  `url` varchar(200) DEFAULT NULL,
  `size_x` int(11) DEFAULT '0',
  `size_y` int(11) DEFAULT '0',
  `regdate` datetime DEFAULT NULL,
  `is_use` char(1) DEFAULT 'Y',
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_popup`
--

LOCK TABLES `tb_popup` WRITE;
/*!40000 ALTER TABLE `tb_popup` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_popup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_users`
--

DROP TABLE IF EXISTS `tb_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_users` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) NOT NULL,
  `passwd` varchar(150) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `level` int(11) NOT NULL DEFAULT '1',
  `regdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_admin` char(1) NOT NULL DEFAULT 'N',
  `is_delete` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`idx`),
  KEY `index_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_users`
--

LOCK TABLES `tb_users` WRITE;
/*!40000 ALTER TABLE `tb_users` DISABLE KEYS */;
INSERT INTO `tb_users` VALUES (4,'admin','21232f297a57a5a743894a0e4a801fc3','관리자',99,'2017-05-23 11:10:48','Y','N');
/*!40000 ALTER TABLE `tb_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-23 11:16:18
