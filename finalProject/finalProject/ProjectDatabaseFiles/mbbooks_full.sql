CREATE DATABASE  IF NOT EXISTS `mbbooks`;
USE `mbbooks`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: mbbooks
-- ------------------------------------------------------
-- Server version	5.6.13

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
-- Table structure for table `booklist`
--

DROP TABLE IF EXISTS `booklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booklist` (
  `isbn` varchar(10) DEFAULT NULL,
  `title` varchar(175) DEFAULT NULL,
  `author` varchar(29) DEFAULT NULL,
  `description` varchar(225) DEFAULT NULL,
  `genre` varchar(22) DEFAULT NULL,
  `pages` varchar(5) DEFAULT NULL,
  `price` varchar(6) DEFAULT NULL,
  `publisher` varchar(25) DEFAULT NULL,
  `PublisherLocation` varchar(100) DEFAULT NULL,
  FULLTEXT KEY `COL 1` (`isbn`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booklist`
--

LOCK TABLES `booklist` WRITE;
/*!40000 ALTER TABLE `booklist` DISABLE KEYS */;
INSERT INTO `booklist` VALUES ('781444993','The Action Bible','Doug Mauss','Like the Bible but more action packed ','Action and Adventure','752','17.99','David C. Cook','Virginia'),('694003611','Goodnight Moon','Margaret Wise Brown','Best night time story ever','Childrens','30','9.99','Harper Collins Publishers','New York City'),('321934911','Creative 52: Weekly Projects to Invigorate Your Photography Portfolio','Lindsay Adler','A powerful portfolio involves so much more than just a strong grasp of the technical aspects of photography','Art','216','22.30','Peachpit Press','New York City'),('786939532','Homeland: The Dark Eld Trilogy Part 1','R.A. Salvatore','A Dark Elfs struggle to find his way in the world','Fantasy','384','9.99','Wizards of the Cost','New York City'),('1416524525','The Dark Tower','Stephen King','The thrilling ending to Stephen King\'s epic series ','Horror','1072','15.98','Pocket Books','Virginia'),('240818180','Photographing Childhood: The Image and the Memory','LaNola Stone','Children are one of the most intriguing yet difficult subjects to photograph.','Art','192','19.77','Focal Press','Massachusetts'),('399161287','Undisputed Truth','Mike Tyson','A bare-knuckled, tell-all memoir from Mike Tyson, the onetime \nheavyweight champion of the world—and a legend both in and out of the \nring.','Biography','592','16.95','Blue Rider Press','New York City'),('385349076','Dad is Fat','Jim Gaffigan','Jim tells what life is like living in a two bedroom apartment with his wife and 5 children','Humour','288','19.99','Three Rivers Press','New York City'),('930289234','Watchmen','Alan Moore','Super Heros Retire and then come back out for a second round ','Graphic Novel','416','12.98','DC Comics','New York City'),('805444211','Against All Odds: My Story','Chuck Norris','Millions of people worldwide know Chuck Norris as the star of more than twenty motion pictures, a martial arts expert, and the only man in the Western Hemisphere to hold an eighth degree Black Belt Grand Master in Tae Kwon Do','Autobiography','246','11.77','B&H Books','Tennesee'),('553593064','77 Shadow Street','Dean Koontz','A mysterious book that has a key on the cover','Mystery','451','5.99','Bantam Spectra','New York City'),('385537859','Inferno','Dan Brown','Robert Landon finds himself in Veniece doing the same stuff he always does ','Thriller','480','16.95','Doubleday','New York City'),('375842209','The Book Thief','Markus Zusak','About a little girl who steals books for a good reason','Historical Fiction','576','19.39','Alfred A. Knopf','New York City'),('968832032','Entertainment Industry: The Business of Music, Books, Movies, TV, Radio, Internet, Video Games, Theater, Fashion, Sports, Art, Merchandising, Copyright, Trademarks & Contracts','Mark Vinet','The entertainment industry is a multi-billion dollar business that showcases the work, services, talent, and creativity of a cross-section of the international workforce.','Entertainment','152','50.72','Wadem Publishing','Quebec'),('1591845114','The Sports Gene: Inside the Science of Extraordinary Athletic Performance','David Epstein','ports Illustrated senior writer David Epstein tackles the great nature vs. nurture','Sports','352','14.82','Current Hardcover','New York City'),('014242417X','The Fault In Our Stars','John Green','Little girl has cancer and goes to Holland to meet her Favorite Author','Fiction ','352','10','Speak','Virginia'),('160320976X','Sports Illustrated Almanac 2014 (Sports Illustrated Sports Almanac)','Editors of Sports Illustrated','America\'s best-selling sports almanac, now in its 23rd year, is as fact-filled and fun as ever.','Sports','544','11.57','Sports Illustrated','New York City'),('553593714','A Game of Thrones','George R.R. Martin','You think you like a character then they die','Fantasy','864','7.67','Bantam Spectra','New York City'),('098589024X','Enhancing the Art & Science of Teaching With Technology (Classroom Strategies)','Sonny Magana','Successfully leverage technology to enhance classroom practices with this practical resource.','Science and Technology','195','22.47','Marzano Research Lab','Massachusetts');
/*!40000 ALTER TABLE `booklist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- End of book list table----------------------------------------------------------------------------------------------

CREATE DATABASE  IF NOT EXISTS `mbbooks`;
USE `mbbooks`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: mbbooks
-- ------------------------------------------------------
-- Server version	5.6.13

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
-- Table structure for table `bookavailability`
--

DROP TABLE IF EXISTS `bookavailability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookavailability` (
  `isbn` varchar(10) DEFAULT NULL,
  `num_in_stock` int(11) DEFAULT NULL,
  `rentable` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookavailability`
--

LOCK TABLES `bookavailability` WRITE;
/*!40000 ALTER TABLE `bookavailability` DISABLE KEYS */;
INSERT INTO `bookavailability` VALUES ('781444993',15,'N'),('694003611',2,'Y'),('321934911',20,'N'),('786939532',6,'N'),('1416524525',12,'Y'),('240818180',18,'N'),('399161287',4,'N'),('385349076',16,'N'),('930289234',5,'N'),('805444211',3,'N'),('553593064',5,'N'),('385537859',10,'N'),('375842209',2,'Y'),('968832032',10,'N'),('1591845114',20,'N'),('014242417X',10,'N'),('160320976X',13,'N'),('553593714',8,'Y'),('098589024X',10,'N');
/*!40000 ALTER TABLE `bookavailability` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- end of book availability  table -----------------------------------------------------------------------------------

CREATE DATABASE  IF NOT EXISTS `mbbooks`;
USE `mbbooks`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: mbbooks
-- ------------------------------------------------------
-- Server version	5.6.13

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
-- Table structure for table `book_condition`
--

DROP TABLE IF EXISTS `book_condition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_condition` (
  `conditionkey` varchar(22) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `price_adj` float(2,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_condition`
--

LOCK TABLES `book_condition` WRITE;
/*!40000 ALTER TABLE `book_condition` DISABLE KEYS */;
INSERT INTO `book_condition` VALUES ('New','Book is New',1.0),('Good','Book is slightly used',0.8),('Fair','Book shows some wear',0.6),('Used','Book may be damaged or written in',0.4),('Unacceptable','Book is very damaged',0.2);
/*!40000 ALTER TABLE `book_condition` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- End of book condition table ----------------------------------------------------------------------------------------------------------

CREATE DATABASE  IF NOT EXISTS `mbbooks`;
USE `mbbooks`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: mbbooks
-- ------------------------------------------------------
-- Server version	5.6.13

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
-- Table structure for table `library`
--

DROP TABLE IF EXISTS `library`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `library` (
  `bookID` mediumint(9) NOT NULL AUTO_INCREMENT,
  `isbn` varchar(11) DEFAULT NULL,
  `rentable` char(1) DEFAULT NULL,
  `conditionkey` varchar(22) DEFAULT NULL,
  `price` decimal(15,2) DEFAULT NULL,
  `Title` varchar(100) DEFAULT NULL,
  `adj_price` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`bookID`)
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library`
--

LOCK TABLES `library` WRITE;
/*!40000 ALTER TABLE `library` DISABLE KEYS */;
INSERT INTO `library` VALUES (1,'321934911','N','New ',22.52,'Creative 52: Weekly Projects to Invigorate Your Photography Portfolio',22.52),(2,'321934911','N','New ',22.52,'Creative 52: Weekly Projects to Invigorate Your Photography Portfolio',22.52),(3,'321934911','N','New ',22.52,'Creative 52: Weekly Projects to Invigorate Your Photography Portfolio',22.52),(4,'321934911','N','New ',22.52,'Creative 52: Weekly Projects to Invigorate Your Photography Portfolio',22.52),(5,'321934911','N','New ',22.52,'Creative 52: Weekly Projects to Invigorate Your Photography Portfolio',22.52),(6,'321934911','N','New ',22.52,'Creative 52: Weekly Projects to Invigorate Your Photography Portfolio',22.52),(7,'321934911','N','New ',22.52,'Creative 52: Weekly Projects to Invigorate Your Photography Portfolio',22.52),(8,'321934911','N','New ',22.52,'Creative 52: Weekly Projects to Invigorate Your Photography Portfolio',22.52),(9,'321934911','N','New ',22.52,'Creative 52: Weekly Projects to Invigorate Your Photography Portfolio',22.52),(10,'321934911','N','New ',22.52,'Creative 52: Weekly Projects to Invigorate Your Photography Portfolio',22.52),(11,'321934911','N','New ',22.52,'Creative 52: Weekly Projects to Invigorate Your Photography Portfolio',22.52),(12,'321934911','N','New ',22.52,'Creative 52: Weekly Projects to Invigorate Your Photography Portfolio',22.52),(13,'321934911','N','New ',22.52,'Creative 52: Weekly Projects to Invigorate Your Photography Portfolio',22.52),(14,'321934911','N','New ',22.52,'Creative 52: Weekly Projects to Invigorate Your Photography Portfolio',22.52),(15,'321934911','N','Good',22.52,'Creative 52: Weekly Projects to Invigorate Your Photography Portfolio',18.02),(16,'321934911','N','Good',22.52,'Creative 52: Weekly Projects to Invigorate Your Photography Portfolio',18.02),(17,'321934911','N','Used',22.52,'Creative 52: Weekly Projects to Invigorate Your Photography Portfolio',9.01),(18,'321934911','N','Used',22.52,'Creative 52: Weekly Projects to Invigorate Your Photography Portfolio',9.01),(19,'321934911','N','Used',22.52,'Creative 52: Weekly Projects to Invigorate Your Photography Portfolio',9.01),(20,'321934911','N','Unacceptable',22.52,'Creative 52: Weekly Projects to Invigorate Your Photography Portfolio',4.50),(21,'1591845114','N','New ',16.63,'The Sports Gene: Inside the Science of Extraordinary Athletic Performance',16.63),(22,'1591845114','N','New ',16.63,'The Sports Gene: Inside the Science of Extraordinary Athletic Performance',16.63),(23,'1591845114','N','New ',16.63,'The Sports Gene: Inside the Science of Extraordinary Athletic Performance',16.63),(24,'1591845114','N','New ',16.63,'The Sports Gene: Inside the Science of Extraordinary Athletic Performance',16.63),(25,'1591845114','N','New ',16.63,'The Sports Gene: Inside the Science of Extraordinary Athletic Performance',16.63),(26,'1591845114','N','New ',16.63,'The Sports Gene: Inside the Science of Extraordinary Athletic Performance',16.63),(27,'1591845114','N','New ',16.63,'The Sports Gene: Inside the Science of Extraordinary Athletic Performance',16.63),(28,'1591845114','N','New ',16.63,'The Sports Gene: Inside the Science of Extraordinary Athletic Performance',16.63),(29,'1591845114','N','Good',16.63,'The Sports Gene: Inside the Science of Extraordinary Athletic Performance',13.30),(30,'1591845114','N','Good',16.63,'The Sports Gene: Inside the Science of Extraordinary Athletic Performance',13.30),(31,'1591845114','N','Good',16.63,'The Sports Gene: Inside the Science of Extraordinary Athletic Performance',13.30),(32,'1591845114','N','Good',16.63,'The Sports Gene: Inside the Science of Extraordinary Athletic Performance',13.30),(33,'1591845114','N','Good',16.63,'The Sports Gene: Inside the Science of Extraordinary Athletic Performance',13.30),(34,'1591845114','N','Good',16.63,'The Sports Gene: Inside the Science of Extraordinary Athletic Performance',13.30),(35,'1591845114','N','Fair',16.63,'The Sports Gene: Inside the Science of Extraordinary Athletic Performance',9.98),(36,'1591845114','N','Fair',16.63,'The Sports Gene: Inside the Science of Extraordinary Athletic Performance',9.98),(37,'1591845114','N','Fair',16.63,'The Sports Gene: Inside the Science of Extraordinary Athletic Performance',9.98),(38,'1591845114','N','Fair',16.63,'The Sports Gene: Inside the Science of Extraordinary Athletic Performance',9.98),(39,'1591845114','N','Fair',16.63,'The Sports Gene: Inside the Science of Extraordinary Athletic Performance',9.98),(40,'1591845114','N','Used',16.63,'The Sports Gene: Inside the Science of Extraordinary Athletic Performance',6.65),(41,'240818180','N','New ',16.63,'Photographing Childhood: The Image and the Memory',16.63),(42,'240818180','N','New ',16.63,'Photographing Childhood: The Image and the Memory',16.63),(43,'240818180','N','New ',16.63,'Photographing Childhood: The Image and the Memory',16.63),(44,'240818180','N','New ',16.63,'Photographing Childhood: The Image and the Memory',16.63),(45,'240818180','N','New ',16.63,'Photographing Childhood: The Image and the Memory',16.63),(46,'240818180','N','New ',16.63,'Photographing Childhood: The Image and the Memory',16.63),(47,'240818180','N','New ',16.63,'Photographing Childhood: The Image and the Memory',16.63),(48,'240818180','N','New ',16.63,'Photographing Childhood: The Image and the Memory',16.63),(49,'240818180','N','New ',16.63,'Photographing Childhood: The Image and the Memory',16.63),(50,'240818180','N','Fair',16.63,'Photographing Childhood: The Image and the Memory',9.98),(51,'240818180','N','Fair',16.63,'Photographing Childhood: The Image and the Memory',9.98),(52,'240818180','N','Fair',16.63,'Photographing Childhood: The Image and the Memory',9.98),(53,'240818180','N','Fair',16.63,'Photographing Childhood: The Image and the Memory',9.98),(54,'240818180','N','Fair',16.63,'Photographing Childhood: The Image and the Memory',9.98),(55,'240818180','N','Fair',16.63,'Photographing Childhood: The Image and the Memory',9.98),(56,'240818180','N','Fair',16.63,'Photographing Childhood: The Image and the Memory',9.98),(57,'240818180','N','Fair',16.63,'Photographing Childhood: The Image and the Memory',9.98),(58,'240818180','N','Used',16.63,'Photographing Childhood: The Image and the Memory',6.65),(59,'385349076','N','New ',16.63,'Dad is Fat',16.63),(60,'385349076','N','New ',16.63,'Dad is Fat',16.63),(61,'385349076','N','New ',16.63,'Dad is Fat',16.63),(62,'385349076','N','New ',16.63,'Dad is Fat',16.63),(63,'385349076','N','New ',16.63,'Dad is Fat',16.63),(64,'385349076','N','New ',16.63,'Dad is Fat',16.63),(65,'385349076','N','New ',16.63,'Dad is Fat',16.63),(66,'385349076','N','New ',16.63,'Dad is Fat',16.63),(67,'385349076','N','New ',16.63,'Dad is Fat',16.63),(68,'385349076','N','New ',16.63,'Dad is Fat',16.63),(69,'385349076','N','New ',16.63,'Dad is Fat',16.63),(70,'385349076','N','New ',16.63,'Dad is Fat',16.63),(71,'385349076','N','New ',16.63,'Dad is Fat',16.63),(72,'385349076','N','New ',16.63,'Dad is Fat',16.63),(73,'385349076','N','Fair',16.63,'Dad is Fat',9.98),(74,'385349076','N','Fair',16.63,'Dad is Fat',9.98),(75,'781444993','N','New ',16.63,'The Action Bible',16.63),(76,'781444993','N','New ',16.63,'The Action Bible',16.63),(77,'781444993','N','New ',16.63,'The Action Bible',16.63),(78,'781444993','N','New ',16.63,'The Action Bible',16.63),(79,'781444993','N','New ',16.63,'The Action Bible',16.63),(80,'781444993','N','New ',16.63,'The Action Bible',16.63),(81,'781444993','N','New ',16.63,'The Action Bible',16.63),(82,'781444993','N','New ',16.63,'The Action Bible',16.63),(83,'781444993','N','New ',16.63,'The Action Bible',16.63),(84,'781444993','N','New ',16.63,'The Action Bible',16.63),(85,'781444993','N','New ',16.63,'The Action Bible',16.63),(86,'781444993','N','New ',16.63,'The Action Bible',16.63),(87,'781444993','N','New ',16.63,'The Action Bible',16.63),(88,'781444993','N','New ',16.63,'The Action Bible',16.63),(89,'781444993','N','Unacceptable',16.63,'The Action Bible',3.33),(90,'160320976X','N','New ',11.50,'Sports Illustrated Almanac 2014 (Sports Illustrated Sports Almanac)',11.50),(91,'160320976X','N','New ',11.50,'Sports Illustrated Almanac 2014 (Sports Illustrated Sports Almanac)',11.50),(92,'160320976X','N','New ',11.50,'Sports Illustrated Almanac 2014 (Sports Illustrated Sports Almanac)',11.50),(93,'160320976X','N','New ',11.50,'Sports Illustrated Almanac 2014 (Sports Illustrated Sports Almanac)',11.50),(94,'160320976X','N','New ',11.50,'Sports Illustrated Almanac 2014 (Sports Illustrated Sports Almanac)',11.50),(95,'160320976X','N','New ',11.50,'Sports Illustrated Almanac 2014 (Sports Illustrated Sports Almanac)',11.50),(96,'160320976X','N','New ',11.50,'Sports Illustrated Almanac 2014 (Sports Illustrated Sports Almanac)',11.50),(97,'160320976X','N','New ',11.50,'Sports Illustrated Almanac 2014 (Sports Illustrated Sports Almanac)',11.50),(98,'160320976X','N','New ',11.50,'Sports Illustrated Almanac 2014 (Sports Illustrated Sports Almanac)',11.50),(99,'160320976X','N','New ',11.50,'Sports Illustrated Almanac 2014 (Sports Illustrated Sports Almanac)',11.50),(100,'160320976X','N','Used',11.50,'Sports Illustrated Almanac 2014 (Sports Illustrated Sports Almanac)',4.60),(101,'160320976X','N','Fair',11.50,'Sports Illustrated Almanac 2014 (Sports Illustrated Sports Almanac)',6.90),(102,'160320976X','N','Good',11.50,'Sports Illustrated Almanac 2014 (Sports Illustrated Sports Almanac)',9.20),(103,'1416524525','Y','New ',7.82,'The Dark Tower',7.82),(104,'1416524525','Y','New ',7.82,'The Dark Tower',7.82),(105,'1416524525','Y','New ',7.82,'The Dark Tower',7.82),(106,'1416524525','Y','New ',7.82,'The Dark Tower',7.82),(107,'1416524525','Y','New ',7.82,'The Dark Tower',7.82),(108,'1416524525','Y','Good',7.82,'The Dark Tower',6.26),(109,'1416524525','Y','Good',7.82,'The Dark Tower',6.26),(110,'1416524525','Y','Good',7.82,'The Dark Tower',6.26),(111,'1416524525','Y','Good',7.82,'The Dark Tower',6.26),(112,'1416524525','Y','Good',7.82,'The Dark Tower',6.26),(113,'1416524525','Y','Fair',7.82,'The Dark Tower',4.69),(114,'1416524525','Y','Used',7.82,'The Dark Tower',3.13),(115,'1416524525','Y','Used',7.82,'The Dark Tower',3.13),(116,'385537859','N','New ',17.08,'Inferno',17.08),(117,'385537859','N','New ',17.08,'Inferno',17.08),(118,'385537859','N','New ',17.08,'Inferno',17.08),(119,'385537859','N','New ',17.08,'Inferno',17.08),(120,'385537859','N','New ',17.08,'Inferno',17.08),(121,'385537859','N','New ',17.08,'Inferno',17.08),(122,'385537859','N','New ',17.08,'Inferno',17.08),(123,'385537859','N','New ',17.08,'Inferno',17.08),(124,'385537859','N','New ',17.08,'Inferno',17.08),(125,'385537859','N','New ',17.08,'Inferno',17.08),(126,'968832032','N','New ',17.08,'Inferno',17.08),(127,'968832032','N','New ',17.08,'Inferno',17.08),(128,'968832032','N','New ',17.08,'Inferno',17.08),(129,'968832032','N','Used',17.08,'Inferno',6.83),(130,'968832032','N','Used',17.08,'Inferno',6.83),(131,'968832032','N','Used',17.08,'Inferno',6.83),(132,'968832032','N','Used',17.08,'Inferno',6.83),(133,'968832032','N','Used',17.08,'Inferno',6.83),(134,'968832032','N','Used',17.08,'Inferno',6.83),(135,'968832032','N','Used',17.08,'Inferno',6.83),(136,'014242417X','N','New ',8.31,'The Fault In Our Stars',8.31),(137,'014242417X','N','New ',8.31,'The Fault In Our Stars',8.31),(138,'014242417X','N','New ',8.31,'The Fault In Our Stars',8.31),(139,'014242417X','N','New ',8.31,'The Fault In Our Stars',8.31),(140,'014242417X','N','New ',8.31,'The Fault In Our Stars',8.31),(141,'014242417X','N','New ',8.31,'The Fault In Our Stars',8.31),(142,'014242417X','N','New ',8.31,'The Fault In Our Stars',8.31),(143,'014242417X','N','Fair',8.31,'The Fault In Our Stars',4.99),(144,'014242417X','N','Used',8.31,'The Fault In Our Stars',3.32),(145,'014242417X','N','Good',8.31,'The Fault In Our Stars',6.65),(146,'098589024X','N','New ',22.92,'Enhancing the Art & Science of Teaching With Technology (Classroom Strategies)',22.92),(147,'098589024X','N','New ',22.92,'Enhancing the Art & Science of Teaching With Technology (Classroom Strategies)',22.92),(148,'098589024X','N','New ',22.92,'Enhancing the Art & Science of Teaching With Technology (Classroom Strategies)',22.92),(149,'098589024X','N','New ',22.92,'Enhancing the Art & Science of Teaching With Technology (Classroom Strategies)',22.92),(150,'098589024X','N','New ',22.92,'Enhancing the Art & Science of Teaching With Technology (Classroom Strategies)',22.92),(151,'098589024X','N','New ',22.92,'Enhancing the Art & Science of Teaching With Technology (Classroom Strategies)',22.92),(152,'098589024X','N','New ',22.92,'Enhancing the Art & Science of Teaching With Technology (Classroom Strategies)',22.92),(153,'098589024X','N','Fair',22.92,'Enhancing the Art & Science of Teaching With Technology (Classroom Strategies)',13.75),(154,'098589024X','N','Used',22.92,'Enhancing the Art & Science of Teaching With Technology (Classroom Strategies)',9.17),(155,'098589024X','N','Unacceptable',22.92,'Enhancing the Art & Science of Teaching With Technology (Classroom Strategies)',4.58),(156,'553593714','Y','New ',9.99,'A Game of Thrones',9.99),(157,'553593714','Y','New ',9.99,'A Game of Thrones',9.99),(158,'553593714','Y','New ',9.99,'A Game of Thrones',9.99),(159,'553593714','Y','New ',9.99,'A Game of Thrones',9.99),(160,'553593714','Y','New ',9.99,'A Game of Thrones',9.99),(161,'553593714','Y','New ',9.99,'A Game of Thrones',9.99),(162,'553593714','Y','Used',9.99,'A Game of Thrones',4.00),(163,'553593714','Y','Fair',9.99,'A Game of Thrones',5.99),(164,'786939532','N','New ',7.99,'Homeland: The Dark Eld Trilogy Part 1',7.99),(165,'786939532','N','New ',7.99,'Homeland: The Dark Eld Trilogy Part 2',7.99),(166,'786939532','N','New ',7.99,'Homeland: The Dark Eld Trilogy Part 3',7.99),(167,'786939532','N','New ',7.99,'Homeland: The Dark Eld Trilogy Part 4',7.99),(168,'786939532','N','Good',7.99,'Homeland: The Dark Eld Trilogy Part 5',6.39),(169,'786939532','N','Good',7.99,'Homeland: The Dark Eld Trilogy Part 6',6.39),(170,'930289234','N','Used',11.81,'Watchmen',4.72),(171,'930289234','N','Used',11.81,'Watchmen',4.72),(172,'930289234','N','Used',11.81,'Watchmen',4.72),(173,'930289234','N','Used',11.81,'Watchmen',4.72),(174,'930289234','N','Used',11.81,'Watchmen',4.72),(175,'553593064','N','Fair',9.07,'77 Shadow Street',5.44),(176,'553593064','N','Fair',9.07,'77 Shadow Street',5.44),(177,'553593064','N','Fair',9.07,'77 Shadow Street',5.44),(178,'553593064','N','Good',9.07,'77 Shadow Street',7.26),(179,'553593064','N','New ',9.07,'77 Shadow Street',9.07),(180,'399161287','N','New ',18.51,'Undisputed Truth',18.51),(181,'399161287','N','Good',18.51,'Undisputed Truth',14.81),(182,'399161287','N','Fair',18.51,'Undisputed Truth',11.11),(183,'399161287','N','Used',18.51,'Undisputed Truth',7.40),(184,'805444211','N','Unacceptable',11.53,'Against All Odds: My Story',2.31),(185,'805444211','N','New ',11.53,'Against All Odds: My Story',11.53),(186,'805444211','N','New ',11.53,'Against All Odds: My Story',11.53),(187,'694003611','Y','New ',8.09,'Goodnight Moon',8.09),(188,'694003611','Y','New ',8.09,'Goodnight Moon',8.09),(189,'375842209','Y','New ',7.58,'The Book Thief',7.58),(190,'375842209','Y','New ',7.58,'The Book Thief',7.58);
/*!40000 ALTER TABLE `library` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


-- End of library table ---------------------------------------------------------------------------------------------------

CREATE DATABASE  IF NOT EXISTS `mbbooks`;
USE `mbbooks`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: mbbooks
-- ------------------------------------------------------
-- Server version	5.6.13

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
-- Table structure for table `pricemap`
--

DROP TABLE IF EXISTS `pricemap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pricemap` (
  `isbn` varchar(11) DEFAULT NULL,
  `price` decimal(15,2) DEFAULT NULL,
  `conditionkey` varchar(20) DEFAULT NULL,
  `adj_price` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pricemap`
--

LOCK TABLES `pricemap` WRITE;
/*!40000 ALTER TABLE `pricemap` DISABLE KEYS */;
INSERT INTO `pricemap` VALUES ('1591845114',16.63,'Fair',9.98),('781444993',16.63,'Fair',9.98),('385537859',17.08,'Fair',10.25),('098589024X',22.92,'Fair',13.75),('930289234',11.81,'Fair',7.09),('805444211',11.53,'Fair',6.92),('240818180',16.63,'Fair',9.98),('160320976X',11.50,'Fair',6.90),('968832032',17.08,'Fair',10.25),('553593714',9.99,'Fair',5.99),('553593064',9.07,'Fair',5.44),('694003611',8.09,'Fair',4.85),('321934911',22.52,'Fair',13.51),('385349076',16.63,'Fair',9.98),('1416524525',7.82,'Fair',4.69),('014242417X',8.31,'Fair',4.99),('786939532',7.99,'Fair',4.79),('399161287',18.51,'Fair',11.11),('375842209',7.58,'Fair',4.55),('553593714',9.99,'Good',7.99),('553593064',9.07,'Good',7.26),('694003611',8.09,'Good',6.47),('321934911',22.52,'Good',18.02),('385349076',16.63,'Good',13.30),('1416524525',7.82,'Good',6.26),('014242417X',8.31,'Good',6.65),('786939532',7.99,'Good',6.39),('399161287',18.51,'Good',14.81),('375842209',7.58,'Good',6.06),('1591845114',16.63,'Good',13.30),('781444993',16.63,'Good',13.30),('385537859',17.08,'Good',13.66),('098589024X',22.92,'Good',18.34),('930289234',11.81,'Good',9.45),('805444211',11.53,'Good',9.22),('240818180',16.63,'Good',13.30),('160320976X',11.50,'Good',9.20),('968832032',17.08,'Good',13.66),('1591845114',16.63,'New',16.63),('781444993',16.63,'New',16.63),('385537859',17.08,'New',17.08),('098589024X',22.92,'New',22.92),('930289234',11.81,'New',11.81),('805444211',11.53,'New',11.53),('240818180',16.63,'New',16.63),('160320976X',11.50,'New',11.50),('968832032',17.08,'New',17.08),('553593714',9.99,'New',9.99),('553593064',9.07,'New',9.07),('694003611',8.09,'New',8.09),('321934911',22.52,'New',22.52),('385349076',16.63,'New',16.63),('1416524525',7.82,'New',7.82),('014242417X',8.31,'New',8.31),('786939532',7.99,'New',7.99),('399161287',18.51,'New',18.51),('375842209',7.58,'New',7.58),('781444993',16.63,'Unacceptable',3.33),('385537859',17.08,'Unacceptable',3.42),('098589024X',22.92,'Unacceptable',4.58),('930289234',11.81,'Unacceptable',2.36),('805444211',11.53,'Unacceptable',2.31),('240818180',16.63,'Unacceptable',3.33),('160320976X',11.50,'Unacceptable',2.30),('968832032',17.08,'Unacceptable',3.42),('553593714',9.99,'Unacceptable',2.00),('553593064',9.07,'Unacceptable',1.81),('694003611',8.09,'Unacceptable',1.62),('321934911',22.52,'Unacceptable',4.50),('385349076',16.63,'Unacceptable',3.33),('1416524525',7.82,'Unacceptable',1.56),('014242417X',8.31,'Unacceptable',1.66),('786939532',7.99,'Unacceptable',1.60),('399161287',18.51,'Unacceptable',3.70),('375842209',7.58,'Unacceptable',1.52),('1591845114',16.63,'Unacceptable',3.33),('694003611',8.09,'Used',3.24),('321934911',22.52,'Used',9.01),('385349076',16.63,'Used',6.65),('1416524525',7.82,'Used',3.13),('014242417X',8.31,'Used',3.32),('786939532',7.99,'Used',3.20),('399161287',18.51,'Used',7.40),('375842209',7.58,'Used',3.03),('1591845114',16.63,'Used',6.65),('781444993',16.63,'Used',6.65),('385537859',17.08,'Used',6.83),('098589024X',22.92,'Used',9.17),('930289234',11.81,'Used',4.72),('805444211',11.53,'Used',4.61),('240818180',16.63,'Used',6.65),('160320976X',11.50,'Used',4.60),('968832032',17.08,'Used',6.83),('553593714',9.99,'Used',4.00),('553593064',9.07,'Used',3.63);
/*!40000 ALTER TABLE `pricemap` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- End of price map table --------------------------
DELIMITER //
CREATE PROCEDURE GetAllBooks()
BEGIN
SELECT * FROM booklist;
END //


