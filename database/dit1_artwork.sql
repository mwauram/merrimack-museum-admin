-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dit1
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `artwork`
--

DROP TABLE IF EXISTS `artwork`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artwork` (
  `idArtwork` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `date_created_month` int DEFAULT NULL,
  `date_created_year` year DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `width` decimal(10,3) DEFAULT NULL,
  `height` decimal(10,3) DEFAULT NULL,
  `artist_id` int DEFAULT NULL,
  `donor_id` int DEFAULT NULL,
  `location_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `image_path_id` int DEFAULT NULL,
  PRIMARY KEY (`idArtwork`),
  KEY `FK_Artworks_Artists` (`artist_id`),
  KEY `FK_Artworks_Donors` (`donor_id`),
  KEY `fk_artwork_location_idx` (`location_id`),
  KEY `FK_Artworks_Category` (`category_id`),
  KEY `FK_Artworks_Image_idx` (`image_path_id`),
  CONSTRAINT `FK_Artworks_Artists` FOREIGN KEY (`artist_id`) REFERENCES `artist` (`idArtist`),
  CONSTRAINT `FK_Artworks_Category` FOREIGN KEY (`category_id`) REFERENCES `category` (`idCategory`),
  CONSTRAINT `FK_Artworks_Donors` FOREIGN KEY (`donor_id`) REFERENCES `donor` (`idDonor`),
  CONSTRAINT `FK_Artworks_Image` FOREIGN KEY (`image_path_id`) REFERENCES `images` (`idimages`),
  CONSTRAINT `FK_Artworks_Location` FOREIGN KEY (`location_id`) REFERENCES `location` (`idLocation`),
  CONSTRAINT `month_range` CHECK (((`date_created_month` >= 1) and (`date_created_month` <= 12))),
  CONSTRAINT `year_range` CHECK (((`date_created_year` >= 0) and (`date_created_year` <= 2100)))
) ENGINE=InnoDB AUTO_INCREMENT=260 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artwork`
--

LOCK TABLES `artwork` WRITE;
/*!40000 ALTER TABLE `artwork` DISABLE KEYS */;
INSERT INTO `artwork` VALUES (1,'3',NULL,NULL,NULL,20.250,16.250,1,NULL,1,1,1),(2,'4',NULL,NULL,NULL,20.250,16.250,2,NULL,2,2,2),(3,'5',NULL,NULL,NULL,20.250,16.250,3,NULL,3,3,3),(4,'6',NULL,NULL,NULL,20.250,16.250,4,NULL,4,4,4),(5,'7',NULL,NULL,NULL,20.250,16.250,5,NULL,5,5,5),(6,'8',NULL,NULL,NULL,20.250,16.250,6,NULL,6,6,6),(7,'9',NULL,NULL,NULL,20.250,16.250,7,NULL,7,7,7),(8,'11',NULL,NULL,NULL,20.250,16.250,8,NULL,8,8,8),(9,'12',NULL,NULL,NULL,20.250,16.250,9,NULL,9,9,9),(10,'13',NULL,NULL,NULL,20.250,16.250,10,NULL,10,10,10),(11,'14',NULL,NULL,NULL,20.250,16.250,11,NULL,11,11,11),(12,'17',NULL,NULL,NULL,20.250,16.250,12,NULL,12,12,12),(13,'18',NULL,NULL,NULL,20.250,16.250,13,NULL,13,13,13),(14,'19',NULL,NULL,NULL,20.250,16.250,14,NULL,14,14,14),(15,'20',NULL,NULL,NULL,20.250,16.250,15,NULL,15,15,15),(16,'21',NULL,NULL,NULL,20.250,16.250,16,NULL,16,16,16),(17,'22',NULL,NULL,NULL,20.250,16.250,17,NULL,17,17,17),(18,'23',NULL,NULL,NULL,20.250,16.250,18,NULL,18,18,18),(19,'25',NULL,NULL,NULL,20.250,16.250,19,NULL,19,19,19),(20,'26',NULL,NULL,NULL,20.250,16.250,20,NULL,20,20,20),(21,'27',NULL,NULL,NULL,20.250,16.250,21,NULL,21,21,21),(22,'28',NULL,NULL,NULL,20.250,16.250,22,NULL,22,22,22),(23,'29',NULL,NULL,NULL,20.250,16.250,23,NULL,23,23,23),(24,'30',NULL,NULL,NULL,20.250,16.250,24,NULL,24,24,24),(25,'31',NULL,NULL,NULL,20.250,16.250,25,NULL,25,25,25),(26,NULL,NULL,NULL,NULL,20.250,16.250,26,NULL,26,26,26),(27,NULL,NULL,NULL,NULL,20.250,16.250,27,NULL,27,27,27),(28,'\"Pie Town, New Mexico\"',NULL,2010,NULL,24.500,18.500,28,NULL,28,28,28),(29,NULL,NULL,NULL,NULL,24.500,18.500,29,NULL,29,29,29),(30,NULL,NULL,NULL,NULL,24.500,18.500,30,NULL,30,30,30),(31,NULL,NULL,NULL,NULL,24.500,18.500,31,NULL,31,31,31),(32,NULL,NULL,NULL,NULL,24.500,18.500,32,NULL,32,32,32),(33,NULL,NULL,NULL,NULL,24.500,18.500,33,NULL,33,33,33),(34,'\"Raedwald\'s Dilemma\"',NULL,NULL,'Right corner is broken',46.500,54.750,34,NULL,34,34,34),(35,'\"Crossing the Channel with Men of the Cloth\"',NULL,NULL,NULL,47.250,53.250,35,NULL,35,35,35),(36,'\"In Andy\'s Memory\"',NULL,NULL,NULL,47.000,52.750,36,NULL,36,36,36),(37,'\"Lot\'s Wife\"',NULL,NULL,NULL,47.000,54.500,37,NULL,37,37,37),(38,'\"Confessor Edward\'s Silver Penny\"',NULL,NULL,NULL,45.000,49.000,38,NULL,38,38,38),(39,NULL,NULL,NULL,NULL,47.000,55.000,39,NULL,39,39,39),(40,'\"Richard III A Polaroid Image\"',NULL,NULL,NULL,47.250,51.250,40,NULL,40,40,40),(41,NULL,NULL,NULL,NULL,47.000,53.125,41,NULL,41,41,41),(42,NULL,NULL,NULL,NULL,47.000,53.250,42,NULL,42,42,42),(43,NULL,NULL,NULL,NULL,47.000,55.125,43,NULL,43,43,43),(44,'\"Judas Gets His Paper Back\" ',NULL,NULL,'Not 100% of name',46.000,53.625,44,NULL,44,44,44),(45,'\"Bede\'s Journey\"',NULL,NULL,NULL,47.125,51.125,45,NULL,45,45,45),(46,'\"Smoke From The 4th Crusade\"',NULL,NULL,NULL,47.000,53.000,46,NULL,46,46,46),(47,NULL,NULL,NULL,NULL,47.000,55.250,47,NULL,47,47,47),(48,'\"Great Alfred\'s Troublesome Danes\"',NULL,NULL,NULL,41.000,47.250,48,NULL,48,48,48),(49,'\"The Revolt Of The Fifth Grade\"',NULL,NULL,NULL,41.000,45.250,49,NULL,49,49,49),(50,'\"Great Alfred Inspires His Men\"',NULL,2007,NULL,47.000,55.000,50,NULL,50,50,50),(51,'\"The Arrival Of Hengist And Horsa\"',NULL,NULL,NULL,46.750,56.750,51,NULL,51,51,51),(52,'\"Urban II Launches The First Crusade\"',NULL,NULL,NULL,47.000,55.000,52,NULL,52,52,52),(53,'\"Beowulf Is Writ\"',NULL,NULL,'Indent damage top right corner',49.250,55.000,53,NULL,53,53,53),(54,'\"Ham-son of Noah Gets His Paper Back\"',NULL,NULL,'Not 100% sure of name',47.000,54.750,54,NULL,54,54,54),(55,'\"Japheth Gets His Paper Back\"',NULL,NULL,NULL,47.000,55.250,55,NULL,55,55,55),(56,'\"Matthew Paris - His Sketch Is History\"',NULL,NULL,'Indent damage top right corner',47.000,52.750,56,NULL,56,56,56),(57,'\"The Tower Of Babel\"',NULL,NULL,NULL,46.750,54.750,57,NULL,57,57,57),(58,'\"Shem-son of Noah Gets His Paper Back\"',NULL,NULL,'No info. on back',46.750,54.750,58,NULL,58,58,58),(59,'\"Noah\'s Ark Thunders By\"',NULL,NULL,NULL,47.000,55.000,59,NULL,59,59,59),(60,'\"Viking Regatta\"',NULL,NULL,NULL,47.000,54.750,60,NULL,60,60,60),(61,'\"Burial Ship At Sutton Hoo\"',NULL,NULL,NULL,49.000,55.000,61,NULL,61,61,61),(62,'\"Paul\'s Tent-- Herod\'s Wall\"',NULL,NULL,NULL,46.750,55.000,62,NULL,62,62,62),(63,NULL,NULL,1989,'No info. on back',50.000,96.000,63,NULL,63,63,63),(64,NULL,NULL,1989,'No info. on back',50.000,96.000,64,NULL,64,64,64),(65,NULL,NULL,1989,'No info. on back',50.000,96.000,65,NULL,65,65,65),(66,NULL,NULL,1966,NULL,48.500,24.250,66,NULL,66,66,66),(67,'\"Black-Press\"',NULL,1966,NULL,30.250,48.375,67,NULL,67,67,67),(68,'\"Square no. 1\"',NULL,NULL,'Triptych',62.250,61.750,68,NULL,68,68,68),(69,'\"Square no. 2\"',NULL,NULL,'Triptych',61.750,61.750,69,NULL,69,69,69),(70,'\"Square no. 3\"',NULL,NULL,'Triptych',61.750,61.500,70,NULL,70,70,70),(71,'\"Untitled\"',NULL,1977,'Diptych',28.375,60.750,71,NULL,71,71,71),(72,'\"Untitled\"',NULL,1977,'Diptych',28.375,60.875,72,NULL,72,72,72),(73,'\"Liquitex and Sex\"',NULL,1998,'Painting in Rogers Center',NULL,NULL,73,NULL,73,73,73),(74,NULL,NULL,1986,NULL,56.500,40.750,74,NULL,74,74,74),(75,'\"Pencil Self Portrait on Kraft Paper\"',NULL,NULL,NULL,12.563,15.375,75,NULL,75,75,75),(76,'\"Unsparing\"',NULL,NULL,'Animas Series #8',33.250,45.750,76,NULL,76,76,76),(77,NULL,NULL,NULL,NULL,NULL,NULL,77,NULL,77,77,77),(78,'\"Vase with Daffodils\"',NULL,NULL,'Gift of the Estate of Richard B. Singer',21.250,28.250,78,NULL,78,78,78),(79,'\"Vase of Flowers\"',NULL,NULL,'Gift of the Estate of Richard B. Singer',26.750,33.250,79,NULL,79,79,79),(80,'\"Peonies\"',NULL,NULL,'Gift of the Estate of Richard B. Singer',29.750,38.500,80,NULL,80,80,80),(81,'“Untitled” (A/C)',NULL,NULL,'Gift of Andover Equity Associates Purchase Fund',41.125,41.250,81,NULL,81,81,81),(82,'“Upright Gray”',NULL,NULL,'Andover Equity Associates Purchase Fund',40.000,40.000,82,NULL,82,82,82),(83,'\"Cloud Abstraction/Day\"',NULL,1997,'Diptych',13.250,17.250,83,NULL,83,83,83),(84,'\"Cloud Abstraction/Night\"',NULL,1997,'Diptych',11.250,14.500,84,NULL,84,84,84),(85,'“Flauver” (Left Triptych)',4,1995,'Triptych',NULL,NULL,85,NULL,85,85,85),(86,'“Flauver” (Right Triptych)',4,1995,'Triptych',NULL,NULL,86,NULL,86,86,86),(87,'“Flauver” (Upper Triptych)',4,1995,'Triptych',NULL,NULL,87,NULL,87,87,87),(88,'“Ribbons + Threads III: Phlysus”',4,1984,NULL,35.125,54.875,88,NULL,88,88,88),(89,NULL,NULL,NULL,'No info; back framing is torn a bit',40.000,49.000,89,NULL,89,89,89),(90,NULL,NULL,NULL,'MC Student Art Collection',36.000,48.000,90,NULL,90,90,90),(91,'\"Mask and Meaning\"',NULL,NULL,'Merrimack College Collection',63.000,25.500,91,NULL,91,91,91),(92,'\"I See, You See Me\"',NULL,1999,'Andover Equity Associates Purchase Fund',21.250,19.625,92,NULL,92,92,92),(93,NULL,NULL,NULL,NULL,18.125,18.125,93,NULL,93,93,93),(94,'\"Dark Mountain Series\"',NULL,1995,'Andover Equity Associates Purchase Fund',48.125,60.000,94,NULL,94,94,94),(95,'\"Limework #10\"',NULL,2001,'Andover Equity Associates Purchase Fund',34.750,45.000,95,NULL,95,95,95),(96,'Untitled',NULL,NULL,'Gift of Robert and Nancy Laplante',39.125,50.250,96,NULL,96,96,96),(97,'\"Fugue\"',NULL,1999,'Andover Equity Associates Purchase Fund',33.125,44.875,97,NULL,97,97,97),(98,'\"Moonwalk\"',NULL,NULL,NULL,60.250,28.000,98,NULL,98,98,98),(99,'\"Untitled\"',NULL,NULL,NULL,38.000,51.625,99,NULL,99,99,99),(100,NULL,NULL,NULL,NULL,39.375,31.250,100,NULL,100,100,100),(101,NULL,NULL,NULL,NULL,19.500,25.625,101,NULL,101,101,101),(102,'\"Mosaique\"',NULL,2008,NULL,24.000,20.250,102,NULL,102,102,102),(103,NULL,NULL,NULL,NULL,30.250,23.000,103,NULL,103,103,103),(104,NULL,NULL,NULL,NULL,30.000,23.125,104,NULL,104,104,104),(105,NULL,NULL,NULL,NULL,NULL,NULL,105,NULL,105,105,105),(106,'\"Coming\"',NULL,2004,'MC Collection',21.875,21.875,106,NULL,106,106,106),(107,NULL,NULL,NULL,'Thrown out',32.000,34.500,107,NULL,107,107,107),(108,NULL,NULL,NULL,NULL,17.000,20.875,108,NULL,108,108,108),(109,'\"Untitled\"',NULL,NULL,'MC Student Collection',16.250,20.250,109,NULL,109,109,109),(110,NULL,NULL,2003,NULL,18.125,22.250,110,NULL,110,110,110),(111,NULL,NULL,NULL,NULL,22.875,31.875,111,NULL,111,111,111),(112,NULL,NULL,NULL,NULL,8.000,10.000,112,NULL,112,112,112),(113,NULL,NULL,NULL,NULL,11.000,14.000,113,NULL,113,113,113),(114,NULL,NULL,NULL,NULL,17.875,13.875,114,NULL,114,114,114),(115,NULL,NULL,NULL,NULL,18.000,13.875,115,NULL,115,115,115),(116,NULL,NULL,NULL,NULL,16.000,20.000,116,NULL,116,116,116),(117,NULL,NULL,NULL,'Thrown out',20.000,16.000,117,NULL,117,117,117),(118,'\"This is some highbrow shit\"',NULL,NULL,NULL,15.875,20.000,118,NULL,118,118,118),(119,NULL,NULL,NULL,NULL,20.000,16.000,119,NULL,119,119,119),(120,NULL,NULL,NULL,NULL,24.125,36.000,120,NULL,120,120,120),(121,NULL,NULL,NULL,NULL,17.250,23.000,121,NULL,121,121,121),(122,NULL,NULL,NULL,'Thrown out',40.000,16.000,122,NULL,122,122,122),(123,'\"Laughing Head\"',NULL,1986,NULL,29.500,29.500,123,NULL,123,123,123),(124,'\"Mill Dam\"',NULL,1986,'Gift of Robert and Nancy Laplante',12.000,12.000,124,NULL,124,124,124),(125,'\"Winter Light II\"',NULL,NULL,NULL,25.750,29.000,125,NULL,125,125,125),(126,'\"Deep in the Woods\"',NULL,NULL,NULL,12.250,30.250,126,NULL,126,126,126),(127,NULL,NULL,NULL,NULL,26.000,26.000,127,NULL,127,127,127),(128,NULL,NULL,NULL,NULL,36.000,24.000,128,NULL,128,128,128),(129,NULL,NULL,NULL,NULL,49.125,37.500,129,NULL,129,129,129),(130,'\"SARA\" ',NULL,NULL,NULL,22.000,54.250,130,NULL,130,130,130),(131,NULL,NULL,NULL,NULL,20.250,16.250,131,NULL,131,131,131),(132,'\"Communication of Contours\"',NULL,NULL,NULL,16.750,20.750,132,NULL,132,132,132),(133,'\"Shadow Mask\"',NULL,NULL,NULL,24.250,17.750,133,NULL,133,133,133),(134,'\"Untitled\"',NULL,NULL,'MC Student art collection',28.500,23.750,134,NULL,134,134,134),(135,'\"Of Earth and Water\"',NULL,NULL,NULL,16.750,12.625,135,NULL,135,135,135),(136,'\"Liquitex and Sex\"',NULL,1998,NULL,16.250,14.500,136,NULL,136,136,136),(137,'\"Self Portrait\"',NULL,NULL,NULL,16.750,20.875,137,NULL,137,137,137),(138,'\"Church\"',NULL,2010,NULL,28.625,23.625,138,NULL,138,138,138),(139,'\"Fireworks\"',NULL,NULL,NULL,32.250,28.125,139,NULL,139,139,139),(140,NULL,NULL,NULL,NULL,32.000,28.000,140,NULL,140,140,140),(141,NULL,NULL,NULL,NULL,12.125,15.125,141,NULL,141,141,141),(142,'\"Senit\"',NULL,2012,NULL,30.000,39.875,142,NULL,142,142,142),(143,NULL,NULL,NULL,NULL,29.500,22.000,143,NULL,143,143,143),(144,'Too heavy',NULL,NULL,NULL,72.250,48.500,144,NULL,144,144,144),(145,NULL,NULL,NULL,NULL,17.250,20.500,145,NULL,145,145,145),(146,'\"John Cage, #28\"',NULL,1992,'Gift of Robert and Nancy Laplante',15.250,18.375,146,NULL,146,146,146),(147,'\"A Foyer Beyond Romance\"',NULL,1992,'Gift of Robert and Nancy Laplante',15.250,18.375,147,NULL,147,147,147),(148,'\"Contemporary German\" ',NULL,NULL,'Edition 50; $28',28.750,33.500,148,NULL,148,148,148),(149,NULL,NULL,NULL,'MC Collection',24.000,24.000,149,NULL,149,149,149),(150,'\"Canal Street Blues\"',NULL,NULL,'Gift of Robert and Nancy Laplante',14.000,10.500,150,NULL,150,150,150),(151,NULL,NULL,NULL,NULL,20.000,24.000,151,NULL,151,151,151),(152,NULL,NULL,NULL,NULL,26.188,32.250,152,NULL,152,152,152),(153,NULL,NULL,NULL,NULL,24.500,20.750,153,NULL,153,153,153),(154,NULL,NULL,NULL,NULL,20.000,24.000,154,NULL,154,154,154),(155,NULL,NULL,NULL,NULL,3.000,9.000,155,NULL,155,155,155),(156,NULL,NULL,NULL,NULL,3.000,9.000,156,NULL,156,156,156),(157,NULL,NULL,NULL,'Andover Equity Associates Purchase Fund',9.500,5.750,157,NULL,157,157,157),(158,NULL,NULL,NULL,'Neck is broken',4.000,20.000,158,NULL,158,158,158),(159,NULL,NULL,NULL,NULL,36.375,45.000,159,NULL,159,159,159),(160,'\"Sap\"',NULL,NULL,NULL,44.000,52.000,160,NULL,160,160,160),(161,NULL,NULL,NULL,NULL,34.750,45.250,161,NULL,161,161,161),(162,'\"Black Cat\"',NULL,NULL,'Gift of Robert and Nancy Laplante',16.000,20.000,162,NULL,162,162,162),(163,'\"For Rider\" ',NULL,NULL,NULL,30.000,23.000,163,NULL,163,163,163),(164,NULL,NULL,NULL,NULL,14.000,20.000,164,NULL,164,164,164),(165,NULL,NULL,NULL,NULL,14.000,20.000,165,NULL,165,165,165),(166,NULL,NULL,NULL,NULL,14.000,20.000,166,NULL,166,166,166),(167,NULL,NULL,NULL,NULL,14.000,20.000,167,NULL,167,167,167),(168,'\"For Rich\" ',NULL,NULL,NULL,18.500,14.000,168,NULL,168,168,168),(169,'\"Ocean\'s Cove\"',NULL,NULL,NULL,16.000,20.000,169,NULL,169,169,169),(170,'Guild Hall\'s Cross',NULL,NULL,NULL,35.000,45.000,170,NULL,170,170,170),(171,NULL,NULL,NULL,NULL,52.250,50.000,171,NULL,171,171,171),(172,'\"Captiva FL, The Gulf of Mexico\"',NULL,NULL,NULL,21.500,12.000,172,NULL,172,172,172),(173,'\"Mt. Bisoashae\" (Lebanon)',NULL,NULL,NULL,12.375,15.250,173,NULL,173,173,173),(174,'\"A Dwelling in San Gimignano\"',NULL,NULL,NULL,10.000,13.000,174,NULL,174,174,174),(175,'\"Tuscany\"',NULL,NULL,NULL,12.375,8.500,175,NULL,175,175,175),(176,'\"Nile, Egypt\"',NULL,NULL,NULL,14.750,13.000,176,NULL,176,176,176),(177,'\"Gulf Coast\"',NULL,NULL,NULL,21.750,17.875,177,NULL,177,177,177),(178,NULL,NULL,NULL,NULL,13.000,10.500,178,NULL,178,178,178),(179,'\"Jardins d\'Alger\"',NULL,2010,NULL,21.000,17.000,179,NULL,179,179,179),(180,'\"Landscape and Still Life With Figures\"',NULL,2013,'Gift of the artist college collection',108.250,48.000,180,NULL,180,180,180),(181,'Rev. Vincent A. McQuade, O.S.A',NULL,1954,NULL,34.000,39.750,181,NULL,181,181,181),(182,NULL,NULL,NULL,NULL,NULL,NULL,182,NULL,182,182,182),(183,NULL,NULL,NULL,NULL,30.000,20.000,183,NULL,183,183,183),(184,NULL,NULL,NULL,NULL,24.250,18.250,184,NULL,184,184,184),(185,NULL,NULL,NULL,NULL,48.250,30.125,185,NULL,185,185,185),(186,NULL,NULL,NULL,NULL,49.000,49.000,186,NULL,186,186,186),(187,NULL,NULL,NULL,NULL,45.500,33.000,187,NULL,187,187,187),(188,'\"Proposed Physical Education Building\"',NULL,NULL,NULL,31.000,21.250,188,NULL,188,188,188),(189,NULL,NULL,NULL,NULL,21.250,25.250,189,NULL,189,189,189),(190,'\"David and Bathsheba\"',NULL,1968,NULL,21.750,34.500,190,NULL,190,190,190),(191,NULL,NULL,NULL,NULL,36.000,30.250,191,NULL,191,191,191),(192,NULL,NULL,NULL,NULL,19.500,13.500,192,NULL,192,192,192),(193,NULL,NULL,NULL,NULL,23.000,18.250,193,NULL,193,193,193),(194,NULL,NULL,NULL,NULL,28.500,17.250,194,NULL,194,194,194),(195,'\"Church Interior Alicante\"',NULL,1934,NULL,50.500,36.750,195,NULL,195,195,195),(196,NULL,NULL,1908,NULL,27.813,28.063,196,NULL,196,196,196),(197,NULL,NULL,NULL,NULL,60.875,49.000,197,NULL,197,197,197),(198,'\"Bird With Rock\"',NULL,NULL,NULL,24.250,30.250,198,NULL,198,198,198),(199,'\"Self Portrait\"',NULL,NULL,NULL,17.750,17.750,199,NULL,199,199,199),(200,'\"Property of E. A. O\'Brien\"',NULL,NULL,NULL,20.500,13.000,200,NULL,200,200,200),(201,'\"Dolls\"',NULL,NULL,NULL,12.000,15.000,201,NULL,201,201,201),(202,'\"Haute Folie\"',NULL,NULL,NULL,16.500,19.500,202,NULL,202,202,202),(203,NULL,NULL,NULL,NULL,24.250,28.250,203,NULL,203,203,203),(204,'\"Anette\"',NULL,NULL,NULL,13.250,16.500,204,NULL,204,204,204),(205,NULL,NULL,NULL,NULL,16.750,20.750,205,NULL,205,205,205),(206,NULL,NULL,NULL,NULL,NULL,NULL,206,NULL,206,206,206);
/*!40000 ALTER TABLE `artwork` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-13 21:48:18
