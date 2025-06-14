-- MySQL dump 10.13  Distrib 8.0.41, for macos15 (x86_64)
--
-- Host: localhost    Database: pandemic
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `location_id` int NOT NULL AUTO_INCREMENT,
  `entity` varchar(255) NOT NULL,
  `code` varchar(20) NOT NULL,
  PRIMARY KEY (`location_id`),
  UNIQUE KEY `uq_location` (`entity`,`code`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'Afghanistan','AFG'),(2,'Africa',''),(3,'African Region (WHO)',''),(4,'Albania','ALB'),(5,'Algeria','DZA'),(6,'American Samoa','ASM'),(7,'Americas',''),(8,'Andorra','AND'),(9,'Angola','AGO'),(10,'Antigua and Barbuda','ATG'),(11,'Argentina','ARG'),(12,'Armenia','ARM'),(13,'Asia',''),(14,'Australia','AUS'),(15,'Austria','AUT'),(16,'Azerbaijan','AZE'),(17,'Bahamas','BHS'),(18,'Bahrain','BHR'),(19,'Bangladesh','BGD'),(20,'Barbados','BRB'),(21,'Belarus','BLR'),(22,'Belgium','BEL'),(23,'Belize','BLZ'),(24,'Benin','BEN'),(25,'Bermuda','BMU'),(26,'Bhutan','BTN'),(27,'Bolivia','BOL'),(28,'Bosnia and Herzegovina','BIH'),(29,'Botswana','BWA'),(30,'Brazil','BRA'),(31,'Brunei','BRN'),(32,'Bulgaria','BGR'),(33,'Burkina Faso','BFA'),(34,'Burundi','BDI'),(35,'Cambodia','KHM'),(36,'Cameroon','CMR'),(37,'Canada','CAN'),(38,'Cape Verde','CPV'),(39,'Central African Republic','CAF'),(40,'Chad','TCD'),(41,'Chile','CHL'),(42,'China','CHN'),(43,'Colombia','COL'),(44,'Comoros','COM'),(45,'Congo','COG'),(46,'Cook Islands','COK'),(47,'Costa Rica','CRI'),(48,'Cote d\'Ivoire','CIV'),(49,'Croatia','HRV'),(50,'Cuba','CUB'),(51,'Cyprus','CYP'),(52,'Czechia','CZE'),(53,'Democratic Republic of Congo','COD'),(54,'Denmark','DNK'),(55,'Djibouti','DJI'),(56,'Dominica','DMA'),(57,'Dominican Republic','DOM'),(58,'East Asia & Pacific (WB)',''),(59,'East Timor','TLS'),(60,'Eastern Mediterranean',''),(61,'Eastern Mediterranean Region (WHO)',''),(62,'Ecuador','ECU'),(63,'Egypt','EGY'),(64,'El Salvador','SLV'),(65,'England',''),(66,'Equatorial Guinea','GNQ'),(67,'Eritrea','ERI'),(68,'Estonia','EST'),(69,'Eswatini','SWZ'),(70,'Ethiopia','ETH'),(71,'Europe',''),(72,'Europe & Central Asia (WB)',''),(73,'European Region (WHO)',''),(74,'Fiji','FJI'),(75,'Finland','FIN'),(76,'France','FRA'),(77,'G20',''),(78,'Gabon','GAB'),(79,'Gambia','GMB'),(80,'Georgia','GEO'),(81,'Germany','DEU'),(82,'Ghana','GHA'),(83,'Greece','GRC'),(84,'Greenland','GRL'),(85,'Grenada','GRD'),(86,'Guam','GUM'),(87,'Guatemala','GTM'),(88,'Guinea','GIN'),(89,'Guinea-Bissau','GNB'),(90,'Guyana','GUY'),(91,'Haiti','HTI'),(92,'High Income (WB)',''),(93,'Honduras','HND'),(94,'Hong Kong','HKG'),(95,'Hungary','HUN'),(96,'Iceland','ISL'),(97,'India','IND'),(98,'Indonesia','IDN'),(99,'Iran','IRN'),(100,'Iraq','IRQ'),(101,'Ireland','IRL'),(102,'Israel','ISR'),(103,'Italy','ITA'),(104,'Jamaica','JAM'),(105,'Japan','JPN'),(106,'Jordan','JOR'),(107,'Kazakhstan','KAZ'),(108,'Kenya','KEN'),(109,'Kiribati','KIR'),(110,'Kuwait','KWT'),(111,'Kyrgyzstan','KGZ'),(112,'Laos','LAO'),(113,'Latin America & Caribbean (WB)',''),(114,'Latvia','LVA'),(115,'Lebanon','LBN'),(116,'Lesotho','LSO'),(117,'Liberia','LBR'),(118,'Libya','LBY'),(119,'Lithuania','LTU'),(120,'Low Income (WB)',''),(121,'Lower Middle Income (WB)',''),(122,'Luxembourg','LUX'),(123,'Macao','MAC'),(124,'Madagascar','MDG'),(125,'Malawi','MWI'),(126,'Malaysia','MYS'),(127,'Maldives','MDV'),(128,'Mali','MLI'),(129,'Malta','MLT'),(130,'Marshall Islands','MHL'),(131,'Mauritania','MRT'),(132,'Mauritius','MUS'),(133,'Mexico','MEX'),(134,'Micronesia (country)','FSM'),(135,'Middle East & North Africa (WB)',''),(136,'Middle Income (WB)',''),(137,'Moldova','MDA'),(138,'Monaco','MCO'),(139,'Mongolia','MNG'),(140,'Montenegro','MNE'),(141,'Morocco','MAR'),(142,'Mozambique','MOZ'),(143,'Myanmar','MMR'),(144,'Namibia','NAM'),(145,'Nauru','NRU'),(146,'Nepal','NPL'),(147,'Netherlands','NLD'),(148,'New Zealand','NZL'),(149,'Nicaragua','NIC'),(150,'Niger','NER'),(151,'Nigeria','NGA'),(152,'Niue','NIU'),(153,'North America',''),(154,'North America (WB)',''),(155,'North Korea','PRK'),(156,'North Macedonia','MKD'),(157,'Northern Ireland',''),(158,'Northern Mariana Islands','MNP'),(159,'Norway','NOR'),(161,'Oceania',''),(160,'OECD Countries',''),(162,'Oman','OMN'),(163,'Pakistan','PAK'),(164,'Palau','PLW'),(165,'Palestine','PSE'),(166,'Panama','PAN'),(167,'Papua New Guinea','PNG'),(168,'Paraguay','PRY'),(169,'Peru','PER'),(170,'Philippines','PHL'),(171,'Poland','POL'),(172,'Portugal','PRT'),(173,'Puerto Rico','PRI'),(174,'Qatar','QAT'),(175,'Region of the Americas (WHO)',''),(176,'Reunion','REU'),(177,'Romania','ROU'),(178,'Russia','RUS'),(179,'Rwanda','RWA'),(180,'Saint Helena','SHN'),(181,'Saint Kitts and Nevis','KNA'),(182,'Saint Lucia','LCA'),(183,'Saint Vincent and the Grenadines','VCT'),(184,'Samoa','WSM'),(185,'San Marino','SMR'),(186,'Sao Tome and Principe','STP'),(187,'Saudi Arabia','SAU'),(188,'Scotland',''),(189,'Senegal','SEN'),(190,'Serbia','SRB'),(191,'Serbia and Montenegro','OWID_SRM'),(192,'Serbia and Montenegro (former)',''),(193,'Seychelles','SYC'),(194,'Sierra Leone','SLE'),(195,'Singapore','SGP'),(196,'Slovakia','SVK'),(197,'Slovenia','SVN'),(198,'Solomon Islands','SLB'),(199,'Somalia','SOM'),(200,'South Africa','ZAF'),(201,'South America',''),(202,'South Asia (WB)',''),(203,'South Korea','KOR'),(204,'South Sudan','SSD'),(205,'South-East Asia',''),(206,'South-East Asia Region (WHO)',''),(207,'Spain','ESP'),(208,'Sri Lanka','LKA'),(209,'Sub-Saharan Africa (WB)',''),(210,'Sudan','SDN'),(211,'Suriname','SUR'),(212,'Sweden','SWE'),(213,'Switzerland','CHE'),(214,'Syria','SYR'),(215,'Taiwan','TWN'),(216,'Tajikistan','TJK'),(217,'Tanzania','TZA'),(218,'Thailand','THA'),(219,'Togo','TGO'),(220,'Tokelau','TKL'),(221,'Tonga','TON'),(222,'Trinidad and Tobago','TTO'),(223,'Tunisia','TUN'),(224,'Turkey','TUR'),(225,'Turkmenistan','TKM'),(226,'Tuvalu','TUV'),(227,'Uganda','UGA'),(228,'Ukraine','UKR'),(229,'United Arab Emirates','ARE'),(230,'United Kingdom','GBR'),(231,'United States','USA'),(232,'United States Virgin Islands','VIR'),(233,'Uruguay','URY'),(234,'Uzbekistan','UZB'),(235,'Vanuatu','VUT'),(236,'Venezuela','VEN'),(237,'Vietnam','VNM'),(238,'Wales',''),(239,'Western Pacific',''),(240,'Western Pacific Region (WHO)',''),(241,'World','OWID_WRL'),(242,'Yemen','YEM'),(243,'Yugoslavia','OWID_YGS'),(244,'Zambia','ZMB'),(245,'Zimbabwe','ZWE');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-29  1:21:02
