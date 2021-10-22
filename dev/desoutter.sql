-- MySQL dump 10.11
--
-- Host: localhost    Database: desoutter
-- ------------------------------------------------------
-- Server version	5.0.51b-community-nt-log

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
-- Current Database: `desoutter`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `desoutter` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `desoutter`;

--
-- Table structure for table `desind`
--

DROP TABLE IF EXISTS `desind`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `desind` (
  `desind_id` int(11) NOT NULL auto_increment,
  `desind_name` varchar(20) default NULL,
  `desind_code` varchar(50) default NULL,
  PRIMARY KEY  (`desind_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `desind`
--

LOCK TABLES `desind` WRITE;
/*!40000 ALTER TABLE `desind` DISABLE KEYS */;
INSERT INTO `desind` VALUES (1,'sysall','sys/#'),(2,'sys pset','sys/15'),(3,'sys tightening','sys/61'),(4,'sys tighten detail','sys/61/detail'),(5,'sys d tightening','sys/7404'),(6,'sys d tighten detail','sys/7404/detail'),(7,'sys curve','sys/7410'),(8,'sys curve detail','sys/7410/detail'),(9,'entool','entool'),(10,NULL,'distool'),(11,NULL,'psetdo'),(12,NULL,'psetbatchsize'),(13,NULL,'vin'),(14,NULL,'acqer_//csvfile4mid61'),(15,NULL,'acqer_//csvfile4mid7404'),(16,NULL,'acqer_//csvfile4mid7410'),(17,'poscostart','poscostart');
/*!40000 ALTER TABLE `desind` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iot`
--

DROP TABLE IF EXISTS `iot`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `iot` (
  `tighteningid` bigint(20) NOT NULL,
  `topic` varchar(50) default NULL,
  `pset` tinyint(4) default NULL,
  `tighteningstatus` varchar(10) default NULL,
  `torquemin` double(18,2) default NULL,
  `torquemax` double(18,2) default NULL,
  `torque` double(18,2) default NULL,
  `torquestatus` tinyint(4) default NULL,
  `anglemin` double(18,2) default NULL,
  `anglemax` double(18,2) default NULL,
  `angle` double(18,2) default NULL,
  `anglestatus` tinyint(4) default NULL,
  `timestamp` varchar(20) default NULL,
  PRIMARY KEY  (`tighteningid`),
  KEY `topic` (`topic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `iot`
--

LOCK TABLES `iot` WRITE;
/*!40000 ALTER TABLE `iot` DISABLE KEYS */;
INSERT INTO `iot` VALUES (94,'devices/desoutter01/sys/61/detail',1,'PASS',0.00,10.00,0.02,1,100.00,200.00,2834.00,0,'2020-06-02:02:00:13');
/*!40000 ALTER TABLE `iot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iot_tighten_rs`
--

DROP TABLE IF EXISTS `iot_tighten_rs`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `iot_tighten_rs` (
  `idx` bigint(20) NOT NULL auto_increment,
  `topic` varchar(100) NOT NULL,
  `dt` date NOT NULL,
  `hr` tinyint(4) NOT NULL,
  `oks` int(11) default NULL,
  `noks` int(11) default NULL,
  PRIMARY KEY  (`idx`),
  UNIQUE KEY `topic_dt_hr` (`topic`,`dt`,`hr`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `iot_tighten_rs`
--

LOCK TABLES `iot_tighten_rs` WRITE;
/*!40000 ALTER TABLE `iot_tighten_rs` DISABLE KEYS */;
INSERT INTO `iot_tighten_rs` VALUES (1,'devices/desoutter01/sys/61/detail','2021-07-18',14,289,11),(2,'devices/desoutter01/sys/61/detail','2021-07-20',15,274,16),(3,'devices/desoutter01/sys/61/detail','2021-07-20',16,62,0),(4,'devices/desoutter01/sys/61/detail','2021-07-23',11,75,0),(5,'devices/desoutter01/sys/61/detail','2021-07-23',12,36,0),(6,'devices/desoutter01/sys/61/detail','2021-08-01',16,441,0),(7,'devices/desoutter01/sys/61/detail','2021-08-04',15,686,0),(8,'devices/desoutter01/sys/61/detail','2021-08-14',9,147,0),(9,'devices/desoutter01/sys/61/detail','2021-08-20',21,326,0),(10,'devices/desoutter01/sys/61/detail','2021-08-20',22,50,0),(11,'devices/desoutter01/sys/61/detail','2021-08-29',16,36,0),(12,'devices/desoutter01/sys/61/detail','2021-09-01',10,50,0);
/*!40000 ALTER TABLE `iot_tighten_rs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mesconfig`
--

DROP TABLE IF EXISTS `mesconfig`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mesconfig` (
  `mes_id` int(11) NOT NULL auto_increment,
  `station_id` int(11) default NULL,
  `mesapi` varchar(255) default NULL,
  `customer` varchar(50) default NULL COMMENT 'customer',
  `assemblyrevision` varchar(50) default NULL COMMENT 'assembly revision',
  `testername` varchar(50) default NULL COMMENT 'tester name',
  `testprocess` varchar(50) default NULL COMMENT 'test process',
  `assemblynumber` varchar(50) default NULL COMMENT 'assembly number',
  `division` varchar(50) default NULL COMMENT 'Line',
  `boardtype` varchar(50) default NULL,
  PRIMARY KEY  (`mes_id`),
  UNIQUE KEY `station_id` (`station_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mesconfig`
--

LOCK TABLES `mesconfig` WRITE;
/*!40000 ALTER TABLE `mesconfig` DISABLE KEYS */;
INSERT INTO `mesconfig` VALUES (1,1,'http://3ucs.com/mesapi','BMW','ar','CNHUAEEHPIE001','ASSEMBLE1','an','BMW','');
/*!40000 ALTER TABLE `mesconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modellist`
--

DROP TABLE IF EXISTS `modellist`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `modellist` (
  `modellist_id` int(11) NOT NULL auto_increment,
  `modellist_name` varchar(20) default NULL,
  `product_id` int(11) default NULL,
  `station_id` int(11) default NULL,
  `psetlist_id` int(11) default NULL,
  `created_by` int(11) NOT NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(11) NOT NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`modellist_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `modellist`
--

LOCK TABLES `modellist` WRITE;
/*!40000 ALTER TABLE `modellist` DISABLE KEYS */;
INSERT INTO `modellist` VALUES (1,'model001',1,1,NULL,0,'2021-07-17 11:51:26',0,'2021-07-17 11:51:26'),(2,'model002',2,1,NULL,0,'2021-07-29 21:45:26',0,'2021-07-29 21:45:26');
/*!40000 ALTER TABLE `modellist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posco`
--

DROP TABLE IF EXISTS `posco`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `posco` (
  `posco_id` int(11) NOT NULL auto_increment,
  `jobid` tinyint(4) default NULL,
  `product_id` int(4) default NULL,
  `station_id` int(11) default NULL,
  PRIMARY KEY  (`posco_id`),
  UNIQUE KEY `product_id` (`product_id`,`station_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `posco`
--

LOCK TABLES `posco` WRITE;
/*!40000 ALTER TABLE `posco` DISABLE KEYS */;
/*!40000 ALTER TABLE `posco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `prod_pc_screw_v`
--

DROP TABLE IF EXISTS `prod_pc_screw_v`;
/*!50001 DROP VIEW IF EXISTS `prod_pc_screw_v`*/;
/*!50001 CREATE TABLE `prod_pc_screw_v` (
  `screw_pos` tinyint(4),
  `pset` tinyint(4),
  `psetre` tinyint(4),
  `product_code` varchar(20),
  `product_name` varchar(50),
  `serialnumber` varchar(20),
  `memo` varchar(255),
  `img_pos_screw` varchar(255),
  `piece_id` bigint(20),
  `screw_id` int(11),
  `station_id` int(11),
  `product_id` int(11),
  `created_by` int(11),
  `creation_date` datetime,
  `last_update_by` int(11),
  `last_update_date` datetime
) */;

--
-- Temporary table structure for view `prod_piece_screw_v`
--

DROP TABLE IF EXISTS `prod_piece_screw_v`;
/*!50001 DROP VIEW IF EXISTS `prod_piece_screw_v`*/;
/*!50001 CREATE TABLE `prod_piece_screw_v` (
  `screw_pos` tinyint(4),
  `pset` tinyint(4),
  `psetre` tinyint(4),
  `product_code` varchar(20),
  `product_name` varchar(50),
  `serialnumber` varchar(20),
  `done` int(4),
  `memo` varchar(255),
  `img_pos_screw` varchar(255),
  `piece_screw_id` bigint(20),
  `piece_id` bigint(20),
  `screw_id` int(11),
  `station_id` int(11),
  `product_id` int(11),
  `created_by` int(11),
  `creation_date` datetime,
  `last_update_by` int(11),
  `last_update_date` datetime
) */;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `product` (
  `product_id` int(11) NOT NULL auto_increment,
  `product_code` varchar(20) default NULL,
  `product_name` varchar(50) default NULL,
  `memo` varchar(255) default NULL,
  `actived` tinyint(1) default '1',
  `created_by` int(11) NOT NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(11) NOT NULL,
  `last_update_date` datetime default NULL,
  `img_pos_screw` varchar(255) default NULL,
  PRIMARY KEY  (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'9894923','Clamshell-TLA Assembly','vmxp_12345',1,0,'2021-07-17 11:48:55',0,'2021-09-01 15:26:00',''),(2,'9894923','aaaaa','vWin10_34532342523',1,0,'2021-07-29 21:40:50',0,'2021-09-01 15:47:57',NULL);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_piece`
--

DROP TABLE IF EXISTS `product_piece`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `product_piece` (
  `piece_id` bigint(20) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL,
  `serialnumber` varchar(20) default NULL,
  `dt` datetime default NULL,
  PRIMARY KEY  (`piece_id`),
  UNIQUE KEY `product_ser` (`product_id`,`serialnumber`),
  KEY `serialnumber` (`serialnumber`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `product_piece`
--

LOCK TABLES `product_piece` WRITE;
/*!40000 ALTER TABLE `product_piece` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_piece` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_piece_screw`
--

DROP TABLE IF EXISTS `product_piece_screw`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `product_piece_screw` (
  `piece_screw_id` bigint(20) NOT NULL auto_increment,
  `piece_id` bigint(20) default NULL,
  `screw_id` int(11) default NULL,
  `done` tinyint(1) default NULL,
  `dt` datetime default NULL,
  PRIMARY KEY  (`piece_screw_id`),
  UNIQUE KEY `piece_id` (`piece_id`,`screw_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `product_piece_screw`
--

LOCK TABLES `product_piece_screw` WRITE;
/*!40000 ALTER TABLE `product_piece_screw` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_piece_screw` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_screw`
--

DROP TABLE IF EXISTS `product_screw`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `product_screw` (
  `screw_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL,
  `screw_pos` tinyint(4) NOT NULL,
  `pset` tinyint(4) default NULL,
  `psetre` tinyint(4) default NULL,
  `station_id` int(11) default NULL,
  `done` tinyint(1) default '0',
  `dt` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`screw_id`),
  UNIQUE KEY `product_screw_sta` (`product_id`,`screw_pos`,`station_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `product_screw`
--

LOCK TABLES `product_screw` WRITE;
/*!40000 ALTER TABLE `product_screw` DISABLE KEYS */;
INSERT INTO `product_screw` VALUES (1,1,4,1,50,1,0,'2021-09-05 00:58:10'),(2,1,1,1,50,1,0,'2021-09-05 00:57:39'),(3,1,2,1,50,1,0,'2021-09-05 00:57:46'),(4,1,3,2,50,1,0,'2021-09-05 00:58:03'),(5,2,1,1,50,1,0,'2021-08-16 01:59:51'),(6,2,2,1,50,1,0,'2021-08-16 01:57:59'),(7,2,3,1,50,1,0,'2021-08-16 01:57:59'),(8,2,4,1,50,1,0,'2021-08-16 01:57:59'),(9,2,5,1,50,1,0,'2021-08-16 01:57:59'),(10,2,6,1,50,1,0,'2021-08-16 01:57:59'),(11,2,7,1,50,1,0,'2021-08-16 01:57:59');
/*!40000 ALTER TABLE `product_screw` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psetlist`
--

DROP TABLE IF EXISTS `psetlist`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `psetlist` (
  `pset_id` int(11) NOT NULL auto_increment,
  `pset_no` int(11) default NULL,
  `pset_batchsize` int(11) default NULL,
  `is4redo` tinyint(1) default NULL COMMENT '重工',
  `modellist_id` int(11) default NULL,
  `created_by` int(11) NOT NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(11) NOT NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`pset_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `psetlist`
--

LOCK TABLES `psetlist` WRITE;
/*!40000 ALTER TABLE `psetlist` DISABLE KEYS */;
INSERT INTO `psetlist` VALUES (1,1,1,0,1,0,'2021-06-26 09:40:54',0,'2021-06-26 09:41:09'),(2,2,1,0,1,0,'2021-06-26 09:41:23',0,'2021-06-26 09:41:55'),(3,3,1,1,1,0,'2021-06-26 09:41:40',0,'2021-06-26 09:41:47');
/*!40000 ALTER TABLE `psetlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rule4scan`
--

DROP TABLE IF EXISTS `rule4scan`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `rule4scan` (
  `rule_id` int(11) NOT NULL auto_increment,
  `rule_name` varchar(20) default NULL,
  `name_data1` varchar(20) default NULL,
  `name_data2` varchar(20) default NULL,
  `name_data3` varchar(20) default NULL,
  `en_data1` tinyint(1) default NULL,
  `en_data2` tinyint(1) default NULL,
  `en_data3` tinyint(1) default NULL,
  PRIMARY KEY  (`rule_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `rule4scan`
--

LOCK TABLES `rule4scan` WRITE;
/*!40000 ALTER TABLE `rule4scan` DISABLE KEYS */;
/*!40000 ALTER TABLE `rule4scan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `station`
--

DROP TABLE IF EXISTS `station`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `station` (
  `station_id` int(11) NOT NULL auto_increment,
  `userhostname` varchar(20) default NULL,
  `station_code` varchar(20) NOT NULL,
  `posco_code` varchar(20) default NULL,
  `station_name` varchar(20) NOT NULL,
  `desoutter_ip` varchar(20) default NULL,
  `desoutter_port` int(11) default NULL,
  `logfilefmt` varchar(50) default NULL,
  `logfilepath` varchar(50) default NULL,
  `created_by` int(11) NOT NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(11) NOT NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`station_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `station`
--

LOCK TABLES `station` WRITE;
/*!40000 ALTER TABLE `station` DISABLE KEYS */;
INSERT INTO `station` VALUES (1,'','desoutter01','posco01','desoutter aa','192.168.1.100',5056,'','c:/tars',0,'2021-06-26 09:39:16',0,'2021-07-29 19:13:04');
/*!40000 ALTER TABLE `station` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `station_op_v`
--

DROP TABLE IF EXISTS `station_op_v`;
/*!50001 DROP VIEW IF EXISTS `station_op_v`*/;
/*!50001 CREATE TABLE `station_op_v` (
  `station_code` varchar(20),
  `station_name` varchar(20),
  `desoutter_ip` varchar(20),
  `posco_code` varchar(20),
  `desoutter_port` int(11),
  `logfilefmt` varchar(50),
  `logfilepath` varchar(50),
  `station_id` int(11),
  `mesapi` varchar(255),
  `customer` varchar(50),
  `division` varchar(50),
  `assemblynumber` varchar(50),
  `testername` varchar(50),
  `testprocess` varchar(50),
  `boardtype` varchar(50),
  `assemblyrevision` varchar(50)
) */;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `user_role` (
  `role_id` int(11) NOT NULL auto_increment COMMENT '角色id',
  `role_name` varchar(50) default NULL COMMENT '角色名',
  `layout` varchar(50) default NULL COMMENT '菜单id',
  `created_by` int(11) NOT NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(11) NOT NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,'admin','layout/ucin/desoutter/common.xml',0,NULL,0,NULL),(2,'station_op','layout/ucin/desoutter/index_sta.xml',0,'2021-07-02 15:48:15',0,'2021-07-02 15:48:15');
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL auto_increment,
  `user_name` varchar(30) default NULL COMMENT '用户名',
  `user_pass` varchar(50) default NULL COMMENT '密码',
  `user_role` tinyint(4) default NULL COMMENT '类型',
  `ap_name` varchar(30) default NULL COMMENT 'AP',
  `user_str` varchar(100) default NULL,
  `dept_info` smallint(6) default NULL COMMENT '部门',
  `memo` varchar(100) default NULL COMMENT '备注',
  `real_name` varchar(30) default NULL COMMENT '真实名字',
  `created_by` int(11) NOT NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(11) NOT NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='登录用户';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','e10adc3949ba59abbe56e057f20f883e',1,'','',0,'','张三',0,NULL,1,'2021-07-02 15:48:28'),(2,'tester','123456',2,NULL,NULL,NULL,'t','t',0,'2021-07-07 09:31:50',0,'2021-07-07 09:31:50');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'desoutter'
--
DELIMITER ;;
DELIMITER ;

--
-- Current Database: `desoutter`
--

USE `desoutter`;

--
-- Final view structure for view `prod_pc_screw_v`
--

/*!50001 DROP TABLE `prod_pc_screw_v`*/;
/*!50001 DROP VIEW IF EXISTS `prod_pc_screw_v`*/;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`i3u`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `prod_pc_screw_v` AS (select `s`.`screw_pos` AS `screw_pos`,`s`.`pset` AS `pset`,`s`.`psetre` AS `psetre`,`p`.`product_code` AS `product_code`,`p`.`product_name` AS `product_name`,`pp`.`serialnumber` AS `serialnumber`,`p`.`memo` AS `memo`,`p`.`img_pos_screw` AS `img_pos_screw`,`pp`.`piece_id` AS `piece_id`,`s`.`screw_id` AS `screw_id`,`s`.`station_id` AS `station_id`,`s`.`product_id` AS `product_id`,`p`.`created_by` AS `created_by`,`p`.`creation_date` AS `creation_date`,`p`.`last_update_by` AS `last_update_by`,`p`.`last_update_date` AS `last_update_date` from ((`product_screw` `s` join `product` `p` on((`s`.`product_id` = `p`.`product_id`))) join `product_piece` `pp` on((`p`.`product_id` = `pp`.`product_id`)))) */;

--
-- Final view structure for view `prod_piece_screw_v`
--

/*!50001 DROP TABLE `prod_piece_screw_v`*/;
/*!50001 DROP VIEW IF EXISTS `prod_piece_screw_v`*/;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`i3u`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `prod_piece_screw_v` AS (select `s`.`screw_pos` AS `screw_pos`,`s`.`pset` AS `pset`,`s`.`psetre` AS `psetre`,`p`.`product_code` AS `product_code`,`p`.`product_name` AS `product_name`,`pp`.`serialnumber` AS `serialnumber`,if(isnull(`pps`.`done`),0,`pps`.`done`) AS `done`,`p`.`memo` AS `memo`,`p`.`img_pos_screw` AS `img_pos_screw`,`pps`.`piece_screw_id` AS `piece_screw_id`,`pp`.`piece_id` AS `piece_id`,`s`.`screw_id` AS `screw_id`,`s`.`station_id` AS `station_id`,`s`.`product_id` AS `product_id`,`p`.`created_by` AS `created_by`,`p`.`creation_date` AS `creation_date`,`p`.`last_update_by` AS `last_update_by`,`p`.`last_update_date` AS `last_update_date` from (((`product_screw` `s` join `product` `p` on((`s`.`product_id` = `p`.`product_id`))) join `product_piece` `pp` on((`p`.`product_id` = `pp`.`product_id`))) left join `product_piece_screw` `pps` on(((`pp`.`piece_id` = `pps`.`piece_id`) and (`s`.`screw_id` = `pps`.`screw_id`))))) */;

--
-- Final view structure for view `station_op_v`
--

/*!50001 DROP TABLE `station_op_v`*/;
/*!50001 DROP VIEW IF EXISTS `station_op_v`*/;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`i3u`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `station_op_v` AS (select `s`.`station_code` AS `station_code`,`s`.`station_name` AS `station_name`,`s`.`desoutter_ip` AS `desoutter_ip`,`s`.`posco_code` AS `posco_code`,`s`.`desoutter_port` AS `desoutter_port`,`s`.`logfilefmt` AS `logfilefmt`,`s`.`logfilepath` AS `logfilepath`,`s`.`station_id` AS `station_id`,`mes`.`mesapi` AS `mesapi`,`mes`.`customer` AS `customer`,`mes`.`division` AS `division`,`mes`.`assemblynumber` AS `assemblynumber`,`mes`.`testername` AS `testername`,`mes`.`testprocess` AS `testprocess`,`mes`.`boardtype` AS `boardtype`,`mes`.`assemblyrevision` AS `assemblyrevision` from (`station` `s` join `mesconfig` `mes` on((`mes`.`station_id` = `s`.`station_id`)))) */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-05  1:22:43
