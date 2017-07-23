-- MySQL dump 10.13  Distrib 5.6.12, for Win64 (x86_64)
--
-- Host: localhost    Database: db_hw_cms
-- ------------------------------------------------------
-- Server version	5.6.12-enterprise-commercial-advanced

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
  `is_file` char(1) NOT NULL DEFAULT 'Y',
  `is_secret` char(1) NOT NULL DEFAULT 'Y',
  `is_nologin` char(1) NOT NULL DEFAULT 'Y',
  `regdate` datetime DEFAULT '0000-00-00 00:00:00',
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
-- Table structure for table `tb_board`
--

DROP TABLE IF EXISTS `tb_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_board` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `tb_name` varchar(45) DEFAULT 'base',
  `writer_key` varchar(20) DEFAULT NULL,
  `writer` varchar(45) DEFAULT NULL,
  `writer_pw` varchar(45) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `content_text` text,
  `content_html` mediumtext,
  `is_use` varchar(1) DEFAULT 'N',
  `is_notice` varchar(1) DEFAULT 'N',
  `regdate` datetime DEFAULT '0000-00-00 00:00:00',
  `reg_ip` varchar(15) DEFAULT NULL,
  `views` int(11) DEFAULT '0',
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_board`
--

LOCK TABLES `tb_board` WRITE;
/*!40000 ALTER TABLE `tb_board` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_board_base`
--

DROP TABLE IF EXISTS `tb_board_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_board_base` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `writer_key` varchar(20) DEFAULT NULL,
  `writer` varchar(45) DEFAULT NULL,
  `writer_pw` varchar(45) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `content_text` text,
  `content_html` mediumtext,
  `is_use` varchar(1) DEFAULT 'N',
  `is_notice` varchar(1) DEFAULT 'N',
  `regdate` datetime DEFAULT '0000-00-00 00:00:00',
  `reg_ip` varchar(15) DEFAULT NULL,
  `views` int(11) DEFAULT '0',
  `opt1` varchar(200) DEFAULT NULL,
  `opt2` varchar(200) DEFAULT NULL,
  `opt3` varchar(200) DEFAULT NULL,
  `opt4` varchar(200) DEFAULT NULL,
  `opt5` varchar(200) DEFAULT NULL,
  `opt6` varchar(200) DEFAULT NULL,
  `opt7` varchar(200) DEFAULT NULL,
  `opt8` varchar(200) DEFAULT NULL,
  `opt9` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_board_base`
--

LOCK TABLES `tb_board_base` WRITE;
/*!40000 ALTER TABLE `tb_board_base` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_board_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_board_base_comment`
--

DROP TABLE IF EXISTS `tb_board_base_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_board_base_comment` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `tb_idx` int(11) DEFAULT NULL,
  `tb_name` varchar(45) DEFAULT NULL,
  `writer_key` varchar(20) DEFAULT NULL,
  `writer` varchar(45) DEFAULT NULL,
  `writer_pw` varchar(45) DEFAULT NULL,
  `comment_text` text,
  `comment_html` mediumtext,
  `regdate` datetime DEFAULT '0000-00-00 00:00:00',
  `reg_ip` varchar(15) DEFAULT NULL,
  `is_use` varchar(1) DEFAULT 'Y',
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_board_base_comment`
--

LOCK TABLES `tb_board_base_comment` WRITE;
/*!40000 ALTER TABLE `tb_board_base_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_board_base_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_comment`
--

DROP TABLE IF EXISTS `tb_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_comment` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `tb_idx` int(11) DEFAULT NULL,
  `tb_name` varchar(45) DEFAULT NULL,
  `writer_key` varchar(20) DEFAULT NULL,
  `writer` varchar(45) DEFAULT NULL,
  `writer_pw` varchar(45) DEFAULT NULL,
  `comment_text` text,
  `comment_html` mediumtext,
  `regdate` datetime DEFAULT '0000-00-00 00:00:00',
  `reg_ip` varchar(15) DEFAULT NULL,
  `is_use` varchar(1) DEFAULT 'Y',
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_comment`
--

LOCK TABLES `tb_comment` WRITE;
/*!40000 ALTER TABLE `tb_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_comment` ENABLE KEYS */;
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
  `regdate` datetime DEFAULT '0000-00-00 00:00:00',
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
  `regdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_admin` char(1) NOT NULL DEFAULT 'N',
  `is_delete` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`idx`),
  KEY `index_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_users`
--

LOCK TABLES `tb_users` WRITE;
/*!40000 ALTER TABLE `tb_users` DISABLE KEYS */;
INSERT INTO `tb_users` VALUES (1,'admin','688ce3e93c0b8f6b7a21dfd9926db4d5','관리자','2016-02-02 15:20:54','Y','N');
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

-- Dump completed on 2016-02-15 17:48:31
