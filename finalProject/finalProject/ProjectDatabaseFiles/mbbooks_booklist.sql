CREATE DATABASE  IF NOT EXISTS `mbbooks` /*!40100 DEFAULT CHARACTER SET utf8 */;
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

-- Dump completed on 2014-05-01 12:38:11
