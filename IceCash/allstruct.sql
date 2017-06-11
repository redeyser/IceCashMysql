-- MySQL dump 10.13  Distrib 5.5.53, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: IceCash
-- ------------------------------------------------------
-- Server version	5.5.53-0+deb8u1

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
-- Table structure for table `tb_Zet`
--

DROP TABLE IF EXISTS `tb_Zet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_Zet` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `idplace` int(4) DEFAULT '1',
  `nkassa` tinyint(1) DEFAULT '1',
  `begin_date` date DEFAULT NULL,
  `begin_time` time DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `date` date DEFAULT NULL,
  `begin_ncheck` int(4) DEFAULT NULL,
  `end_ncheck` int(4) DEFAULT NULL,
  `c_sale` int(4) DEFAULT '0',
  `c_return` int(4) DEFAULT '0',
  `c_error` int(4) DEFAULT '0',
  `c_cancel` int(4) DEFAULT '0',
  `summa` double(8,2) DEFAULT '0.00',
  `summa_ret` double(8,2) DEFAULT '0.00',
  `summa_nal` double(8,2) DEFAULT '0.00',
  `summa_bnal` double(8,2) DEFAULT '0.00',
  `discount` double(8,2) DEFAULT '0.00',
  `bonus` double(8,2) DEFAULT '0.00',
  `bonus_discount` double(8,2) DEFAULT '0.00',
  `number` int(4) DEFAULT '0',
  `vir` double(8,2) DEFAULT '0.00',
  `up` tinyint(1) DEFAULT '0',
  `c_nofiscal` int(4) DEFAULT '0',
  `c_saled` int(4) DEFAULT '0',
  `nf_summa` double(8,2) DEFAULT '0.00',
  `nf_discount` double(8,2) DEFAULT '0.00',
  `nf_bonus_discount` double(8,2) DEFAULT '0.00',
  `nf_vir` double(8,2) DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `pl` (`idplace`,`nkassa`,`id`),
  KEY `dt` (`idplace`,`nkassa`,`date`),
  KEY `up` (`idplace`,`nkassa`,`up`,`date`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_Zet_cont`
--

DROP TABLE IF EXISTS `tb_Zet_cont`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_Zet_cont` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `idhd` int(4) NOT NULL DEFAULT '1',
  `section` tinyint(1) DEFAULT '0',
  `idgroup` int(4) DEFAULT '0',
  `code` varchar(24) DEFAULT '0',
  `alco` tinyint(1) DEFAULT '0',
  `paramf1` double(8,2) DEFAULT '0.00',
  `paramf2` double(8,3) DEFAULT '0.000',
  `paramf3` double(8,2) DEFAULT '0.00',
  `discount` double(8,2) DEFAULT '0.00',
  `bonus` double(8,2) DEFAULT '0.00',
  `bonus_discount` double(8,2) DEFAULT '0.00',
  `isfiscal` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`idhd`,`id`),
  KEY `dt` (`idhd`,`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_actions_hd`
--

DROP TABLE IF EXISTS `tb_actions_hd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_actions_hd` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `dt1` date DEFAULT NULL,
  `dt2` date DEFAULT NULL,
  `tm1` time DEFAULT NULL,
  `tm2` time DEFAULT NULL,
  `daysweek` varchar(8) DEFAULT '0000000',
  `_if` mediumtext,
  `_then` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_boxes_ct`
--

DROP TABLE IF EXISTS `tb_boxes_ct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_boxes_ct` (
  `idhd` smallint(2) NOT NULL DEFAULT '0',
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `code` int(4) DEFAULT NULL,
  `count` decimal(8,3) DEFAULT '1.000',
  `storno` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`idhd`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_boxes_hd`
--

DROP TABLE IF EXISTS `tb_boxes_hd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_boxes_hd` (
  `id` smallint(2) unsigned NOT NULL,
  `idhd` smallint(2) DEFAULT '0',
  `status` tinyint(1) DEFAULT '0',
  `counts` tinyint(1) DEFAULT '0',
  `opened` tinyint(1) DEFAULT '0',
  `iduser` tinyint(1) DEFAULT '0',
  `dt` date DEFAULT NULL,
  `tm` time DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_check_cont`
--

DROP TABLE IF EXISTS `tb_check_cont`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_check_cont` (
  `iduser` int(4) NOT NULL DEFAULT '0',
  `idcheck` int(4) NOT NULL DEFAULT '0',
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `code` char(24) DEFAULT '0',
  `name` char(255) DEFAULT '',
  `storno` tinyint(3) unsigned DEFAULT '0',
  `p_idgroup` char(24) DEFAULT '0',
  `p_section` tinyint(1) unsigned DEFAULT '1',
  `p_cena` double(8,2) DEFAULT '0.00',
  `p_sheme` tinyint(3) unsigned DEFAULT '0',
  `p_max_skid` double(8,2) DEFAULT '0.00',
  `p_real` tinyint(3) unsigned DEFAULT '0',
  `p_type` tinyint(3) unsigned DEFAULT '0',
  `p_alco` tinyint(3) unsigned DEFAULT '0',
  `p_minprice` double(8,2) DEFAULT '0.00',
  `p_maxprice` double(8,2) DEFAULT '0.00',
  `multiprice` tinyint(3) unsigned DEFAULT '0',
  `paramf1` double(8,2) DEFAULT '0.00',
  `paramf2` double(7,3) DEFAULT '1.000',
  `paramf3` double(8,2) DEFAULT '0.00',
  `mark` char(6) DEFAULT '',
  `dcount` double(7,3) DEFAULT NULL,
  `discount` double(8,2) DEFAULT '0.00',
  `bonus` double(8,2) DEFAULT '0.00',
  `bonus_discount` double(8,2) DEFAULT '0.00',
  `p_litrag` double(8,4) DEFAULT '0.0000',
  `ean` char(24) DEFAULT '',
  `barcode` char(68) DEFAULT '',
  `p_shk` char(13) DEFAULT '',
  `discount_pos` double(8,2) DEFAULT '0.00',
  `bonus_pos` double(8,2) DEFAULT '0.00',
  `nbox` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`iduser`,`idcheck`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_check_head`
--

DROP TABLE IF EXISTS `tb_check_head`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_check_head` (
  `iduser` int(10) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `puttime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `type` tinyint(3) unsigned DEFAULT '0',
  `cursor` tinyint(3) unsigned DEFAULT '0',
  `seller` smallint(4) unsigned DEFAULT '0',
  `comment` char(255) DEFAULT '',
  `summa` double(8,2) DEFAULT '0.00',
  `discount_proc` double(8,4) DEFAULT '0.0000',
  `discount_sum` double(8,2) DEFAULT '0.00',
  `discount_card` char(24) DEFAULT '',
  `bonus_card` char(24) DEFAULT '',
  `bonus` double(8,2) DEFAULT '0.00',
  `bonus_proc` double(8,4) DEFAULT '0.0000',
  `bonus_max` double(8,4) DEFAULT '0.0000',
  `bonus_sum` double(8,2) DEFAULT '0.00',
  `bonus_type` tinyint(3) unsigned DEFAULT '0',
  `bonus_discount` double(8,2) DEFAULT '0.00',
  `errors` char(4) DEFAULT '',
  `ro` tinyint(1) DEFAULT '0',
  `bonus_payed` tinyint(1) DEFAULT '0',
  `egais_xml` mediumtext,
  `egais_url` char(255) DEFAULT '',
  `egais_sign` char(255) DEFAULT '',
  `idsystem` tinyint(1) DEFAULT '0',
  `idprize` char(100) DEFAULT '',
  `fio` char(100) DEFAULT '',
  PRIMARY KEY (`iduser`,`id`),
  KEY `sel` (`puttime`,`seller`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_discount`
--

DROP TABLE IF EXISTS `tb_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_discount` (
  `number` varchar(24) NOT NULL,
  `name` varchar(100) DEFAULT 'DISCOUNT CARD',
  `text` varchar(30) DEFAULT 'discount',
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `procent` double(5,2) NOT NULL DEFAULT '20.00',
  PRIMARY KEY (`number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_egais_docs_ct`
--

DROP TABLE IF EXISTS `tb_egais_docs_ct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_egais_docs_ct` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `iddoc` int(12) NOT NULL DEFAULT '0',
  `wb_Identity` char(30) DEFAULT NULL,
  `pref_Type` char(20) DEFAULT NULL,
  `pref_ShortName` char(255) DEFAULT NULL,
  `pref_AlcCode` char(30) DEFAULT NULL,
  `pref_Capacity` decimal(10,4) DEFAULT NULL,
  `pref_AlcVolume` decimal(10,3) DEFAULT NULL,
  `pref_ProductVCode` char(10) DEFAULT NULL,
  `oref_ClientRegId` char(20) DEFAULT NULL,
  `oref_INN` char(20) DEFAULT NULL,
  `oref_KPP` char(20) DEFAULT NULL,
  `oref_ShortName` char(255) DEFAULT NULL,
  `wb_Quantity` decimal(12,4) DEFAULT NULL,
  `wb_Price` decimal(10,2) DEFAULT NULL,
  `wb_Pack_ID` char(20) DEFAULT NULL,
  `wb_Party` char(40) DEFAULT NULL,
  `pref_RegId` char(40) DEFAULT NULL,
  `pref_BRegId` char(40) DEFAULT NULL,
  `wbr_InformBRegId` char(40) DEFAULT NULL,
  `real_Quantity` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`iddoc`,`id`),
  KEY `idd` (`iddoc`,`wb_Identity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_egais_docs_hd`
--

DROP TABLE IF EXISTS `tb_egais_docs_hd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_egais_docs_hd` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) DEFAULT '0',
  `puttime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` smallint(1) DEFAULT '0',
  `user` char(20) DEFAULT 'robot',
  `xml_doc` mediumtext,
  `xml_ticket` mediumtext,
  `xml_inform` mediumtext,
  `xml_answer` mediumtext,
  `url` char(255) DEFAULT '',
  `reply_id` char(255) DEFAULT '',
  `ns_FSRAR_ID` char(40) DEFAULT '',
  `ns_typedoc` char(40) DEFAULT '',
  `wb_Identity` char(40) DEFAULT '',
  `wb_NUMBER` char(30) DEFAULT '',
  `wb_Date` date DEFAULT NULL,
  `wb_ShippingDate` date DEFAULT NULL,
  `wb_Type` char(30) DEFAULT NULL,
  `wb_UnitType` char(30) DEFAULT NULL,
  `send_INN` char(20) DEFAULT NULL,
  `send_KPP` char(20) DEFAULT NULL,
  `send_SHORTNAME` char(255) DEFAULT NULL,
  `send_RegId` char(30) DEFAULT '',
  `recv_INN` char(20) DEFAULT NULL,
  `recv_KPP` char(20) DEFAULT NULL,
  `recv_SHORTNAME` char(255) DEFAULT NULL,
  `recv_RegId` char(30) DEFAULT '',
  `tc_RegId` char(40) DEFAULT '',
  `wt_IsConfirm` char(40) DEFAULT '',
  `tc_OperationName` char(40) DEFAULT '',
  `tc_OperationResult` char(40) DEFAULT '',
  `answer` char(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `news` (`type`,`status`,`wb_Date`,`recv_RegId`,`send_RegId`),
  KEY `num` (`type`,`recv_RegId`,`send_RegId`,`wb_NUMBER`),
  KEY `postav` (`type`,`send_RegId`,`wb_NUMBER`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_egais_docs_need`
--

DROP TABLE IF EXISTS `tb_egais_docs_need`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_egais_docs_need` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `ttn_WbRegID` char(40) DEFAULT NULL,
  `ttn_ttnNumber` char(40) DEFAULT NULL,
  `ttn_ttnDate` date DEFAULT NULL,
  `ttn_Shipper` char(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idd` (`ttn_WbRegID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_egais_ostat`
--

DROP TABLE IF EXISTS `tb_egais_ostat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_egais_ostat` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `rst_InformARegId` char(40) DEFAULT NULL,
  `rst_InformBRegId` char(40) DEFAULT NULL,
  `rst_Quantity` decimal(12,4) DEFAULT NULL,
  `pref_FullName` char(255) DEFAULT NULL,
  `pref_AlcCode` char(30) DEFAULT NULL,
  `pref_AlcVolume` decimal(10,3) DEFAULT NULL,
  `pref_ProductVCode` char(10) DEFAULT NULL,
  `oref_ClientRegId` char(20) DEFAULT NULL,
  `oref_INN` char(20) DEFAULT NULL,
  `oref_KPP` char(20) DEFAULT NULL,
  `oref_ShortName` char(255) DEFAULT NULL,
  `oref_FullName` char(255) DEFAULT NULL,
  `oref_Country` char(10) DEFAULT '643',
  `oref_RegionCode` char(10) DEFAULT '42',
  `oref_description` char(255) DEFAULT NULL,
  `pref_Capacity` char(20) DEFAULT '1.0000',
  PRIMARY KEY (`id`),
  KEY `idd` (`pref_AlcCode`)
) ENGINE=MyISAM AUTO_INCREMENT=1056 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_egais_places`
--

DROP TABLE IF EXISTS `tb_egais_places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_egais_places` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `ClientRegId` char(40) DEFAULT '',
  `INN` char(20) DEFAULT '',
  `KPP` char(20) DEFAULT '',
  `FullName` char(255) DEFAULT '',
  `ShortName` char(255) DEFAULT '',
  `description` char(255) DEFAULT '',
  `RegionCode` char(5) DEFAULT '42',
  `Country` char(5) DEFAULT '643',
  `city` char(40) DEFAULT '',
  `street` char(40) DEFAULT '',
  `house` char(40) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idd` (`INN`,`KPP`),
  KEY `fsrar` (`ClientRegId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_price`
--

DROP TABLE IF EXISTS `tb_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_price` (
  `id` varchar(24) NOT NULL DEFAULT '',
  `shk` varchar(13) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `litrag` double(15,4) DEFAULT '0.0000',
  `cena` double(15,2) unsigned NOT NULL DEFAULT '0.00',
  `ostatok` double(17,3) unsigned NOT NULL DEFAULT '0.000',
  `sheme` tinyint(1) NOT NULL DEFAULT '0',
  `real` tinyint(1) NOT NULL DEFAULT '0',
  `section` smallint(2) NOT NULL DEFAULT '0',
  `max_skid` double(5,2) NOT NULL DEFAULT '0.00',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `alco` tinyint(1) NOT NULL DEFAULT '0',
  `minprice` double(15,2) NOT NULL DEFAULT '0.00',
  `maxprice` double(15,2) NOT NULL DEFAULT '0.00',
  `reserved2` varchar(24) DEFAULT NULL,
  `idgroup` varchar(24) DEFAULT NULL,
  `istov` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`,`shk`),
  KEY `idgroup` (`idgroup`,`id`),
  KEY `section` (`section`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_price_shk`
--

DROP TABLE IF EXISTS `tb_price_shk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_price_shk` (
  `id` varchar(24) NOT NULL DEFAULT '',
  `shk` varchar(13) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL,
  `cena` double(15,2) unsigned NOT NULL DEFAULT '0.00',
  `koef` double(17,3) unsigned NOT NULL DEFAULT '0.000',
  PRIMARY KEY (`id`,`shk`,`cena`),
  KEY `shk` (`shk`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_sets`
--

DROP TABLE IF EXISTS `tb_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_sets` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `group` char(64) DEFAULT 'simple',
  `name` char(64) DEFAULT 'simple',
  `value` char(255) DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_tlist`
--

DROP TABLE IF EXISTS `tb_tlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_tlist` (
  `name` varchar(255) NOT NULL,
  `idt` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`,`idt`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_trsc_ct`
--

DROP TABLE IF EXISTS `tb_trsc_ct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_trsc_ct` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `idhd` int(4) NOT NULL DEFAULT '0',
  `date` date NOT NULL,
  `time` time NOT NULL,
  `code` varchar(24) DEFAULT '',
  `storno` tinyint(1) DEFAULT '0',
  `p_idgroup` varchar(24) DEFAULT '0',
  `p_section` tinyint(1) DEFAULT '1',
  `p_cena` double(8,2) DEFAULT '0.00',
  `p_sheme` tinyint(1) DEFAULT '0',
  `p_max_skid` double(8,2) DEFAULT '0.00',
  `p_real` tinyint(1) DEFAULT '0',
  `p_type` tinyint(1) DEFAULT '0',
  `p_alco` tinyint(1) DEFAULT '0',
  `p_minprice` double(8,2) DEFAULT '0.00',
  `p_maxprice` double(8,2) DEFAULT '0.00',
  `multiprice` tinyint(3) unsigned DEFAULT '0',
  `paramf1` double(8,2) DEFAULT '0.00',
  `paramf2` double(7,3) DEFAULT '1.000',
  `paramf3` double(8,2) DEFAULT '0.00',
  `mark` char(6) DEFAULT '',
  `dcount` double(7,3) DEFAULT NULL,
  `discount` double(8,2) DEFAULT '0.00',
  `bonus` double(8,2) DEFAULT '0.00',
  `bonus_discount` double(8,2) DEFAULT '0.00',
  `p_litrag` double(8,4) DEFAULT '0.0000',
  `p_shk` varchar(24) DEFAULT '0',
  `barcode` varchar(68) DEFAULT '',
  PRIMARY KEY (`idhd`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_trsc_hd`
--

DROP TABLE IF EXISTS `tb_trsc_hd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_trsc_hd` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idplace` int(4) DEFAULT NULL,
  `nkassa` tinyint(2) unsigned NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `type` tinyint(1) NOT NULL,
  `iduser` int(4) DEFAULT NULL,
  `seller` smallint(4) unsigned NOT NULL,
  `ncheck` int(5) unsigned DEFAULT '0',
  `ispayed` tinyint(1) unsigned DEFAULT '0',
  `pay_nal` double(8,2) DEFAULT '0.00',
  `pay_bnal` double(8,2) DEFAULT '0.00',
  `summa` double(8,2) DEFAULT '0.00',
  `discount_card` varchar(24) DEFAULT '',
  `bonus_card` varchar(24) DEFAULT '',
  `discount_proc` double(8,4) DEFAULT '0.0000',
  `bonus_proc` double(8,4) DEFAULT '0.0000',
  `bonus_max` double(8,4) DEFAULT '0.0000',
  `bonus_sum` double(8,2) DEFAULT '0.00',
  `bonus` double(8,2) DEFAULT '0.00',
  `discount_sum` double(8,2) DEFAULT '0.00',
  `bonus_discount` double(8,2) DEFAULT '0.00',
  `bonus_type` tinyint(1) unsigned DEFAULT '0',
  `errors` varchar(4) DEFAULT '',
  `up` tinyint(1) DEFAULT '0',
  `isfiscal` tinyint(1) DEFAULT '0',
  `egais_url` varchar(255) DEFAULT '',
  `egais_sign` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pl` (`idplace`,`nkassa`,`id`),
  KEY `tm` (`idplace`,`nkassa`,`date`,`time`),
  KEY `up` (`idplace`,`nkassa`,`up`,`date`,`time`)
) ENGINE=MyISAM AUTO_INCREMENT=3421 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_types`
--

DROP TABLE IF EXISTS `tb_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_types` (
  `pref` char(8) NOT NULL DEFAULT '',
  `id` int(4) NOT NULL DEFAULT '0',
  `name` char(64) DEFAULT '',
  PRIMARY KEY (`pref`,`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_users`
--

DROP TABLE IF EXISTS `tb_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_users` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `login` char(32) DEFAULT '',
  `password` char(32) DEFAULT '',
  `type` tinyint(1) DEFAULT NULL,
  `code` char(24) DEFAULT '',
  `idtab` int(4) DEFAULT '0',
  `css` char(100) DEFAULT '',
  `cur_price` char(24) DEFAULT '',
  `printer` char(24) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-11 19:37:14
