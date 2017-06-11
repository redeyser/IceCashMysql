-- MySQL dump 10.13  Distrib 5.5.54, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: IceServ
-- ------------------------------------------------------
-- Server version	5.5.52-0ubuntu0.12.04.1

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
  `idreg` int(4) NOT NULL DEFAULT '1',
  `idplace` int(4) NOT NULL DEFAULT '1',
  `nkassa` tinyint(1) NOT NULL DEFAULT '1',
  `_id` int(4) DEFAULT '1',
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
  PRIMARY KEY (`idreg`,`idplace`,`nkassa`,`id`),
  KEY `dt` (`idreg`,`idplace`,`nkassa`,`date`),
  KEY `up` (`idreg`,`up`,`idplace`,`nkassa`,`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_Zet_cont`
--

DROP TABLE IF EXISTS `tb_Zet_cont`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_Zet_cont` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `idreg` int(4) NOT NULL DEFAULT '1',
  `idplace` int(4) NOT NULL DEFAULT '1',
  `nkassa` tinyint(1) NOT NULL DEFAULT '1',
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
  `isfiscal` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`idreg`,`idplace`,`nkassa`,`idhd`,`id`),
  KEY `dt` (`idreg`,`idplace`,`nkassa`,`idhd`,`code`)
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
  `idreg` int(4) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `isactive` tinyint(1) DEFAULT '0',
  `dt1` date DEFAULT NULL,
  `dt2` date DEFAULT NULL,
  `tm1` time DEFAULT NULL,
  `tm2` time DEFAULT NULL,
  `daysweek` varchar(8) DEFAULT '0000000',
  `_if` mediumtext,
  `_then` mediumtext,
  PRIMARY KEY (`idreg`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_discount`
--

DROP TABLE IF EXISTS `tb_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_discount` (
  `idreg` int(4) NOT NULL DEFAULT '0',
  `idplace` int(4) NOT NULL DEFAULT '0',
  `nkassa` int(4) NOT NULL DEFAULT '0',
  `number` varchar(24) NOT NULL,
  `name` varchar(100) DEFAULT 'DISCOUNT CARD',
  `text` varchar(30) DEFAULT 'discount',
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `procent` double(5,2) NOT NULL DEFAULT '20.00',
  PRIMARY KEY (`idreg`,`idplace`,`nkassa`,`number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_gplace_ct`
--

DROP TABLE IF EXISTS `tb_gplace_ct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_gplace_ct` (
  `ida` int(4) NOT NULL DEFAULT '0',
  `idreg` int(4) NOT NULL DEFAULT '0',
  `idplace` int(4) NOT NULL DEFAULT '0',
  `act_date` date DEFAULT NULL,
  `act_time` time DEFAULT NULL,
  PRIMARY KEY (`idreg`,`ida`,`idplace`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_gplace_hd`
--

DROP TABLE IF EXISTS `tb_gplace_hd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_gplace_hd` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `idreg` int(4) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`idreg`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_group`
--

DROP TABLE IF EXISTS `tb_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_group` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `tag` char(32) DEFAULT '',
  `title` char(128) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `tag` (`tag`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_kasses`
--

DROP TABLE IF EXISTS `tb_kasses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_kasses` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `idplace` int(4) NOT NULL DEFAULT '0',
  `idreg` int(4) NOT NULL DEFAULT '0',
  `nkassa` tinyint(1) NOT NULL DEFAULT '1',
  `idprice` int(4) DEFAULT NULL,
  `name` char(255) DEFAULT '',
  `nickname` char(32) DEFAULT '',
  `password` char(32) DEFAULT '',
  `ip` char(24) DEFAULT '',
  `css` char(100) DEFAULT '',
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `up_date` date DEFAULT NULL,
  `up_time` time DEFAULT NULL,
  `off` tinyint(1) DEFAULT '0',
  `version` char(24) DEFAULT '',
  `upgrade` char(24) DEFAULT '',
  `prn_name` char(24) DEFAULT '',
  `prn_type` char(24) DEFAULT '',
  PRIMARY KEY (`idreg`,`id`,`idplace`,`nkassa`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_menu`
--

DROP TABLE IF EXISTS `tb_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_menu` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `idhd` int(4) DEFAULT '0',
  `tag` char(32) DEFAULT '',
  `title` char(128) DEFAULT '',
  `template` char(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `hd` (`idhd`,`id`),
  KEY `url` (`template`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_price`
--

DROP TABLE IF EXISTS `tb_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_price` (
  `idreg` int(4) NOT NULL DEFAULT '0',
  `idprice` int(4) NOT NULL DEFAULT '0',
  `id` varchar(24) NOT NULL DEFAULT '',
  `shk` varchar(13) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `litrag` double(15,3) DEFAULT '0.000',
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
  PRIMARY KEY (`idreg`,`idprice`,`id`),
  KEY `name` (`idreg`,`idprice`,`name`,`shk`),
  KEY `idgroup` (`idreg`,`idprice`,`idgroup`,`id`),
  KEY `section` (`idreg`,`idprice`,`section`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_price_ext`
--

DROP TABLE IF EXISTS `tb_price_ext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_price_ext` (
  `idreg` int(4) NOT NULL DEFAULT '0',
  `idprice` int(4) NOT NULL DEFAULT '0',
  `id` varchar(24) NOT NULL DEFAULT '',
  `vlitrag` double(15,2) DEFAULT '0.00',
  `type` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`idreg`,`idprice`,`id`),
  KEY `name` (`idreg`,`idprice`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_price_shk`
--

DROP TABLE IF EXISTS `tb_price_shk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_price_shk` (
  `idreg` int(4) NOT NULL DEFAULT '0',
  `idprice` int(4) NOT NULL DEFAULT '0',
  `id` varchar(24) NOT NULL DEFAULT '',
  `shk` varchar(13) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL,
  `cena` double(15,2) unsigned NOT NULL DEFAULT '0.00',
  `koef` double(17,3) unsigned NOT NULL DEFAULT '0.000',
  PRIMARY KEY (`idreg`,`idprice`,`id`,`shk`,`cena`),
  KEY `shk` (`shk`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_prices`
--

DROP TABLE IF EXISTS `tb_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_prices` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `idreg` int(4) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  PRIMARY KEY (`idreg`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_property`
--

DROP TABLE IF EXISTS `tb_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_property` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `hd_type` int(4) DEFAULT '0',
  `idhd` int(4) DEFAULT '0',
  `ct_type` int(4) DEFAULT '0',
  `idct` int(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `rule` (`hd_type`,`idhd`,`ct_type`,`idct`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_query`
--

DROP TABLE IF EXISTS `tb_query`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_query` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `url` char(255) DEFAULT '',
  `title` char(128) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `url` (`url`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_regs`
--

DROP TABLE IF EXISTS `tb_regs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_regs` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `regid` char(32) DEFAULT '',
  `adm_pass` char(32) DEFAULT '',
  `client_pass` char(32) DEFAULT '',
  `name` char(24) DEFAULT '',
  `css` char(100) DEFAULT '',
  `action` int(4) DEFAULT '0',
  `sets` int(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `reg` (`regid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_regs_sets`
--

DROP TABLE IF EXISTS `tb_regs_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_regs_sets` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `idreg` int(4) NOT NULL DEFAULT '0',
  `name` char(255) DEFAULT '',
  `value` char(255) DEFAULT '',
  PRIMARY KEY (`idreg`,`id`),
  KEY `n` (`idreg`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_rule`
--

DROP TABLE IF EXISTS `tb_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_rule` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `tag` char(32) DEFAULT '',
  `title` char(128) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `tag` (`tag`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_tlist_ct`
--

DROP TABLE IF EXISTS `tb_tlist_ct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_tlist_ct` (
  `ida` int(4) NOT NULL DEFAULT '0',
  `idreg` int(4) NOT NULL DEFAULT '0',
  `idt` int(4) NOT NULL DEFAULT '0',
  `dopcode` int(4) DEFAULT NULL,
  `count` double(8,3) DEFAULT '0.000',
  PRIMARY KEY (`idreg`,`ida`,`idt`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_tlist_hd`
--

DROP TABLE IF EXISTS `tb_tlist_hd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_tlist_hd` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `idreg` int(4) NOT NULL DEFAULT '0',
  `idprice` int(4) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`idreg`,`id`),
  KEY `idreg` (`idreg`,`idprice`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_trsc_ct`
--

DROP TABLE IF EXISTS `tb_trsc_ct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_trsc_ct` (
  `id` int(4) NOT NULL DEFAULT '0',
  `idreg` int(4) NOT NULL DEFAULT '0',
  `idplace` int(4) NOT NULL DEFAULT '0',
  `nkassa` tinyint(2) unsigned NOT NULL,
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
  `p_litrag` double(8,3) DEFAULT '0.000',
  `p_shk` varchar(24) DEFAULT '',
  `barcode` varchar(68) DEFAULT '',
  PRIMARY KEY (`idreg`,`idplace`,`nkassa`,`idhd`,`id`)
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
  `idreg` int(4) NOT NULL DEFAULT '0',
  `idplace` int(4) NOT NULL DEFAULT '0',
  `nkassa` tinyint(2) unsigned NOT NULL,
  `_id` int(4) DEFAULT NULL,
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
  PRIMARY KEY (`idreg`,`idplace`,`nkassa`,`id`),
  KEY `ch` (`idreg`,`idplace`,`nkassa`,`_id`,`date`,`time`),
  KEY `tm` (`idreg`,`idplace`,`nkassa`,`date`,`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
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
-- Table structure for table `tb_user`
--

DROP TABLE IF EXISTS `tb_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_user` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `idreg` int(4) DEFAULT '0',
  `name` char(128) DEFAULT '',
  `login` char(32) DEFAULT '',
  `chatname` char(32) DEFAULT '',
  `password` char(32) DEFAULT '',
  `type` tinyint(1) DEFAULT '0',
  `code` char(24) DEFAULT '',
  `idtab` int(4) DEFAULT '0',
  `css` char(100) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `login` (`idreg`,`login`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_user_vars`
--

DROP TABLE IF EXISTS `tb_user_vars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_user_vars` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `idhd` int(4) DEFAULT '0',
  `name` varchar(64) DEFAULT '',
  `value` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `rule` (`idhd`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `temp`
--

DROP TABLE IF EXISTS `temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp` (
  `idreg` int(4) NOT NULL DEFAULT '0',
  `idplace` int(4) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-11 23:56:54
