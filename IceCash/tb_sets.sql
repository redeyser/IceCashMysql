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
-- Dumping data for table `tb_sets`
--

LOCK TABLES `tb_sets` WRITE;
/*!40000 ALTER TABLE `tb_sets` DISABLE KEYS */;
INSERT INTO `tb_sets` VALUES (1,'server','version','2.0.074'),(2,'server','server_port','10110'),(3,'server','dtprint_ip','localhost'),(4,'server','dtprint_port','10111'),(5,'server','backoffice_ip','10.5.5.1'),(6,'server','backservice_port','10100'),(7,'server','bonus_port','7172'),(8,'server','dtprint_passwd','dtpadm'),(9,'server','regid','beerkem'),(10,'server','egais_ip','localhost'),(11,'server','regpassword','766766'),(12,'client','timeout_ping','15'),(13,'client','timeout_query','60'),(14,'client','css','default'),(15,'client','scale_prefix','21'),(16,'client','user_prefix','111'),(17,'client','discount_prefix','222'),(18,'client','bonus_prefix','777'),(19,'magazine','texthead',''),(20,'magazine','textfoot',''),(21,'magazine','orgname','ООО фирма Илва'),(22,'magazine','placename','г. Кемерово пр.Ленина 82'),(23,'magazine','inn','4207008740'),(24,'magazine','kpp','420545008'),(25,'magazine','logo',''),(26,'magazine','idplace','1'),(27,'magazine','nkassa','1'),(28,'magazine','calcost','0'),(29,'magazine','pricenum','2017-04-05 09:50:03'),(30,'magazine','messagetype','default'),(31,'magazine','begin_time','06:00:00'),(32,'device','dev_scanner',NULL),(33,'device','d_name',NULL),(34,'device','d_speed','1200'),(35,'device','d_devtype',NULL),(36,'device','d_printsh','1'),(37,'device','d_autonull','1'),(38,'device','d_autobox','0'),(39,'device','d_summertm','1'),(40,'device','d_autocut','1'),(41,'magazine','action','581'),(42,'device','d_ignore','0'),(43,'magazine','sets','7346'),(44,'magazine','temperature','0.17'),(47,'magazine','upgrade','28'),(48,'server','prize_port','7174'),(49,'server','icerest_ip','localhost'),(50,'device','d_ncheck','1'),(51,'client','site','site'),(52,'device','d_ofd','1'),(53,'magazine','nofiscal_proc','0.3');
/*!40000 ALTER TABLE `tb_sets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-11 19:40:53
