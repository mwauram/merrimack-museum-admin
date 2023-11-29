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
  `date_created_year` int DEFAULT NULL,
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
  CONSTRAINT `FK_Artworks_Location` FOREIGN KEY (`location_id`) REFERENCES `location` (`idLocation`)
) ENGINE=InnoDB AUTO_INCREMENT=388 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artwork`
--

LOCK TABLES `artwork` WRITE;
/*!40000 ALTER TABLE `artwork` DISABLE KEYS */;
INSERT INTO `artwork` VALUES (1,'3',NULL,NULL,'',20.250,16.250,249,29,261,248,2353),(28,'\"Pie Town, New Mexico\"',NULL,2010,'',24.500,18.500,28,29,239,234,2393),(29,'',NULL,NULL,'',24.500,18.500,29,29,239,234,2394),(30,'',NULL,NULL,'',24.500,18.500,30,29,239,234,2394),(31,'',NULL,NULL,'',24.500,18.500,31,29,239,234,2394),(32,'',NULL,NULL,'',24.500,18.500,32,29,239,234,2394),(33,'',NULL,NULL,'',24.500,18.500,33,29,239,234,2394),(34,'\"Raedwald\'s Dilemma\"',NULL,NULL,'Right corner is broken',46.500,54.750,34,29,235,237,2395),(35,'\"Crossing the Channel with Men of the Cloth\"',NULL,NULL,'',47.250,53.250,35,29,238,237,2396),(36,'\"In Andy\'s Memory\"',NULL,NULL,'',47.000,52.750,36,29,235,237,2397),(37,'\"Lot\'s Wife\"',NULL,NULL,'',47.000,54.500,37,29,238,237,2398),(38,'\"Confessor Edward\'s Silver Penny\"',NULL,NULL,'',45.000,49.000,38,29,235,237,2399),(39,'',NULL,NULL,'',47.000,55.000,39,29,238,237,2400),(40,'\"Richard III A Polaroid Image\"',NULL,NULL,'',47.250,51.250,40,29,235,237,2401),(41,'',NULL,NULL,'',47.000,53.125,41,29,235,237,2402),(42,'',NULL,NULL,'',47.000,53.250,42,29,235,237,2403),(43,'',NULL,NULL,'',47.000,55.125,43,29,235,237,2404),(44,'\"Judas Gets His Paper Back\"',NULL,NULL,'Not 100% of name',46.000,53.625,44,29,235,237,2405),(45,'\"Bede\'s Journey\"',NULL,NULL,'',47.125,51.125,45,29,235,237,2406),(46,'\"Smoke From The 4th Crusade\"',NULL,NULL,'',47.000,53.000,46,29,235,253,2407),(47,'',NULL,NULL,'',47.000,55.125,252,29,266,237,2408),(48,'\"Great Alfred\'s Troublesome Danes\"',NULL,NULL,'',41.000,47.250,48,29,238,237,2409),(49,'\"The Revolt Of The Fifth Grade\"',NULL,NULL,'',41.000,45.250,49,29,235,253,2410),(50,'\"Great Alfred Inspires His Men\"',NULL,2007,'',47.000,55.000,50,29,235,237,2411),(51,'\"The Arrival Of Hengist And Horsa\"',NULL,NULL,'',46.750,56.750,51,29,235,237,2412),(52,'\"Urban II Launches The First Crusade\"',NULL,NULL,'',47.000,55.000,52,29,235,237,2413),(53,'\"Beowulf Is Writ\"',NULL,NULL,'Indent damage top right corner',49.250,55.000,53,29,235,237,2414),(54,'\"Ham-son of Noah Gets His Paper Back\"',NULL,NULL,'Not 100% sure of name',47.000,54.750,54,29,235,237,2415),(55,'\"Japheth Gets His Paper Back\"',NULL,NULL,'',47.000,55.250,55,29,235,237,2416),(56,'\"Matthew Paris - His Sketch Is History\"',NULL,NULL,'Indent damage top right corner',47.000,52.750,56,29,235,237,2417),(57,'\"The Tower Of Babel\"',NULL,NULL,'',46.750,54.750,57,29,235,237,2418),(58,'\"Shem-son of Noah Gets His Paper Back\"',NULL,NULL,'No info. on back',46.750,54.750,58,29,235,237,2419),(59,'\"Noah\'s Ark Thunders By\"',NULL,NULL,'',47.000,55.000,59,29,238,237,2420),(61,'\"Burial Ship At Sutton Hoo\"',NULL,NULL,'',49.000,55.000,61,29,267,253,2422),(62,'\"Paul\'s Tent-- Herod\'s Wall\"',NULL,NULL,'',46.750,55.000,62,29,266,237,2423),(63,'',NULL,1989,'No info. on back',50.000,96.000,63,29,235,237,2424),(64,'',NULL,1989,'No info. on back',50.000,96.000,64,29,235,237,2425),(65,'',NULL,1989,'No info. on back',50.000,96.000,65,29,268,237,2426),(66,'',NULL,1966,'',48.500,24.250,66,29,235,238,2427),(67,'\"Black-Press\"',NULL,1966,'',30.250,48.375,67,29,235,238,2428),(68,'\"Square no. 1\"',NULL,NULL,'Triptych',62.250,61.750,68,29,238,237,2436),(69,'\"Square no. 2\"',NULL,NULL,'Triptych',61.750,61.750,69,29,238,237,2437),(70,'\"Square no. 3\"',NULL,NULL,'Triptych',61.750,61.500,70,29,238,237,2438),(71,'',NULL,1977,'Diptych',28.375,60.750,71,29,235,237,2439),(72,'',NULL,1977,'Diptych',28.375,60.875,72,29,235,237,2439),(73,'\"Liquitex and Sex\"',NULL,1998,'Painting in Rogers Center',16.250,14.500,286,29,235,257,2440),(74,'',NULL,1986,'',56.500,40.750,74,29,239,237,2441),(75,'\"Pencil Self Portrait on Kraft Paper\"',NULL,NULL,'',12.563,15.375,75,29,235,258,2442),(76,'\"Unsparing\"',NULL,NULL,'Animas Series #8',33.250,45.750,76,29,235,259,2443),(77,'',NULL,NULL,'',NULL,NULL,77,29,266,237,2444),(78,'\"Vase with Daffodils\"',NULL,NULL,'Gift of the Estate of Richard B. Singer',21.250,28.250,78,29,266,256,2445),(79,'\"Vase of Flowers\"',NULL,NULL,'Gift of the Estate of Richard B. Singer',26.750,33.250,79,29,266,256,2446),(80,'\"Peonies\"',NULL,NULL,'Gift of the Estate of Richard B. Singer',29.750,38.500,80,29,266,260,2447),(81,'',NULL,NULL,'Gift of Andover Equity Associates Purchase Fund',41.125,41.250,81,29,235,261,2448),(82,'“Upright Gray”',NULL,NULL,'Andover Equity Associates Purchase Fund',40.000,40.000,82,29,235,261,2449),(83,'\"Cloud Abstraction/Day\"',NULL,1997,'Diptych',13.250,17.250,83,29,235,241,2450),(84,'\"Cloud Abstraction/Night\"',2,1997,'Diptych',11.250,14.500,254,29,235,241,2451),(85,'“Flauver” (Left Triptych)',4,1995,'Triptych',NULL,NULL,85,29,270,248,2452),(86,'“Flauver” (Right Triptych)',4,1995,'Triptych',NULL,NULL,86,29,270,248,2453),(87,'“Flauver” (Upper Triptych)',4,1995,'Triptych',NULL,NULL,87,29,270,248,2454),(88,'“Ribbons + Threads III: Phlysus”',4,1984,'',35.125,54.875,88,29,239,248,2455),(89,'',NULL,NULL,'No info; back framing is torn a bit',40.000,49.000,285,29,235,281,2527),(90,'',NULL,NULL,'MC Student Art Collection',36.000,48.000,90,29,235,237,2492),(91,'\"Mask and Meaning\"',NULL,NULL,'Merrimack College Collection',63.000,25.500,91,29,235,272,2493),(92,'\"I See, You See Me\"',NULL,1999,'Andover Equity Associates Purchase Fund',21.250,19.625,92,29,235,262,2456),(93,'',NULL,NULL,'',18.125,18.125,285,29,235,248,2526),(94,'\"Dark Mountain Series\"',11,1995,'Andover Equity Associates Purchase Fund',48.125,60.000,253,29,235,240,2514),(95,'\"Limework #10\"',NULL,2001,'Andover Equity Associates Purchase Fund',34.750,45.000,282,29,239,279,2515),(96,'',NULL,NULL,'Gift of Robert and Nancy Laplante',39.125,50.250,283,29,235,280,2516),(97,'\"Fugue\"',NULL,1999,'Andover Equity Associates Purchase Fund',33.125,44.875,97,29,235,262,2457),(98,'\"Moonwalk\"',NULL,NULL,'',60.250,28.000,285,29,261,248,2547),(99,'\"Untitled\"',NULL,NULL,'',38.000,51.625,284,29,261,248,2517),(100,'',NULL,NULL,'Possibly thrown out',39.375,31.250,285,29,261,248,2519),(101,'',NULL,NULL,'',19.500,25.625,285,29,261,248,2520),(102,'\"Mosaique\"',NULL,2008,'',24.000,20.250,102,29,261,248,2426),(103,'',NULL,NULL,'',30.250,23.000,285,29,261,248,2521),(104,'',NULL,NULL,'',30.000,23.125,285,29,261,248,2522),(105,'',NULL,NULL,'',NULL,NULL,285,29,261,248,2523),(106,'\"Coming\"',NULL,2004,'MC Collection',21.875,21.875,106,29,261,248,2464),(108,'',NULL,NULL,'',17.000,20.875,108,29,261,237,2465),(109,'',NULL,NULL,'MC Student Collection',16.250,20.250,109,29,261,237,2466),(110,'',NULL,2003,'',18.125,22.250,110,29,261,237,2460),(112,'',NULL,NULL,'',8.000,10.000,112,29,261,237,2467),(115,'',NULL,NULL,'',18.000,13.875,115,29,261,248,2468),(116,'',NULL,NULL,'',16.000,20.000,116,29,261,248,2469),(118,'\"This is some highbrow shit\"',NULL,NULL,'',15.875,20.000,118,29,261,248,2470),(119,'',NULL,NULL,'',20.000,16.000,119,29,261,248,2471),(120,'',NULL,NULL,'',24.125,36.000,285,29,261,248,2529),(121,'',NULL,NULL,'',17.250,23.000,285,29,261,248,2530),(123,'\"Laughing Head\"',NULL,1986,'',29.500,29.500,123,29,261,237,2472),(124,'\"Mill Dam\"',NULL,1986,'Gift of Robert and Nancy Laplante',12.000,12.000,124,29,261,260,2473),(125,'\"Winter Light II\"',NULL,NULL,'',25.750,29.000,125,29,261,248,2474),(126,'\"Deep in the Woods\"',NULL,NULL,'',12.250,30.250,126,29,261,248,2475),(127,'',NULL,NULL,'',26.000,26.000,127,29,261,248,2476),(128,'',NULL,NULL,'',36.000,24.000,128,29,261,248,2477),(129,'',NULL,NULL,'',49.125,37.500,129,29,261,248,2478),(130,'\"SARA\"',NULL,NULL,'',22.000,54.250,130,29,261,248,2479),(131,'',NULL,NULL,'No info. listed for title',20.250,16.250,285,29,261,248,2532),(132,'\"Communication of Contours\"',NULL,NULL,'',16.750,20.750,132,29,261,248,2480),(133,'\"Shadow Mask\"',NULL,NULL,'',24.250,17.750,133,29,261,248,2481),(134,'',NULL,NULL,'MC Student art collection',28.500,23.750,134,29,261,264,2482),(135,'\"Of Earth and Water\"',NULL,NULL,'',16.750,12.625,135,29,261,265,2483),(137,'\"Self Portrait\"',NULL,NULL,'',16.750,20.875,137,29,261,248,2484),(138,'\"Church\"',NULL,2010,'',28.625,23.625,138,29,261,266,2485),(139,'\"Fireworks\"',NULL,NULL,'',32.250,28.125,139,29,261,248,2486),(141,'',NULL,NULL,'',12.125,15.125,285,29,261,248,2533),(142,'\"Senit\"',NULL,2012,'',30.000,39.875,142,29,261,237,2487),(143,'',NULL,NULL,'',29.500,22.000,285,29,261,257,2536),(144,'Too heavy',NULL,NULL,'',72.250,48.500,285,29,261,237,2535),(145,'',NULL,NULL,'',17.250,20.500,285,29,261,248,2537),(146,'\"John Cage, #28\"',NULL,1992,'Gift of Robert and Nancy Laplante',15.250,18.375,146,29,235,263,2458),(147,'\"A Foyer Beyond Romance\"',NULL,1992,'Gift of Robert and Nancy Laplante',15.250,18.375,147,29,235,263,2459),(148,'\"Contemporary German\"',NULL,NULL,'Edition 50; $28',28.750,33.500,148,29,239,267,2488),(149,'',NULL,NULL,'MC Collection',24.000,24.000,149,29,235,268,2489),(150,'\"Canal Street Blues\"',NULL,NULL,'Gift of Robert and Nancy Laplante',14.000,10.500,150,29,235,269,2490),(151,'',NULL,NULL,'',20.000,24.000,151,29,235,248,2461),(152,'',NULL,NULL,'Stata Center Series',26.188,32.250,269,29,235,248,2491),(153,'',NULL,NULL,'',24.500,20.750,285,29,235,248,2538),(154,'',NULL,NULL,'',20.000,24.000,154,29,235,237,2494),(155,'',NULL,NULL,'',3.000,9.000,285,29,235,248,2539),(156,'',NULL,NULL,'',3.000,9.000,285,29,235,248,2540),(157,'',NULL,NULL,'Andover Equity Associates Purchase Fund',9.500,5.750,157,29,235,270,2495),(158,'',NULL,NULL,'Neck is broken',4.000,20.000,158,29,235,206,2496),(159,'',NULL,NULL,'',36.375,45.000,285,29,235,248,2541),(160,'\"Sap\"',NULL,NULL,'',44.000,52.000,160,29,235,248,2497),(161,'',NULL,NULL,'',34.750,45.250,285,29,235,248,2543),(162,'\"Black Cat\"',NULL,NULL,'Gift of Robert and Nancy Laplante',16.000,20.000,162,29,235,271,2498),(163,'\"For Rider\"',NULL,NULL,'',30.000,23.000,163,29,235,248,2462),(164,'',NULL,NULL,'',14.000,20.000,285,29,235,248,2542),(165,'',NULL,NULL,'',14.000,20.000,285,29,235,248,2544),(166,'',NULL,NULL,'',14.000,20.000,285,29,235,248,2545),(167,'',NULL,NULL,'',14.000,20.000,285,29,235,248,2546),(168,'\"For Rich\"',NULL,NULL,'',18.500,14.000,168,29,235,248,2463),(169,'\"Ocean\'s Cove\"',NULL,NULL,'',16.000,20.000,169,29,235,248,2499),(170,'Guild Hall\'s Cross',NULL,NULL,'',35.000,45.000,285,29,235,248,2524),(171,'',NULL,NULL,'',52.250,50.000,285,29,237,248,2548),(172,'\"Captiva FL, The Gulf of Mexico\"',NULL,NULL,'',21.500,12.000,267,29,237,256,2429),(173,'\"Mt. Bisoashae\" (Lebanon)',NULL,NULL,'',12.375,15.250,268,29,237,256,2430),(174,'\"A Dwelling in San Gimignano\"',NULL,NULL,'',10.000,13.000,174,29,237,256,2431),(175,'\"Tuscany\"',NULL,NULL,'',12.375,8.500,175,29,237,256,2432),(176,'\"Nile, Egypt\"',NULL,NULL,'',14.750,13.000,176,29,237,256,2433),(177,'\"Gulf Coast\"',NULL,NULL,'',21.750,17.875,268,29,237,256,2434),(178,'',NULL,NULL,'No info. on title',13.000,10.500,268,29,237,256,2435),(179,'\"Jardins d\'Alger\"',NULL,2010,'',21.000,17.000,179,29,271,261,2500),(180,'\"Landscape and Still Life With Figures\"',NULL,2013,'Gift of the artist college collection',108.250,48.000,180,29,271,273,2501),(181,'Rev. Vincent A. McQuade, O.S.A',NULL,1954,'Name is illegible',34.000,39.750,285,29,271,275,2518),(182,'',NULL,NULL,'',NULL,NULL,285,29,238,257,2549),(183,'',NULL,NULL,'',30.000,20.000,285,29,268,248,2550),(184,'',NULL,NULL,'',24.250,18.250,270,29,268,248,2502),(185,'',NULL,NULL,'',48.250,30.125,271,29,268,248,2503),(186,'',NULL,NULL,'',49.000,49.000,272,29,268,248,2504),(187,'',NULL,NULL,'',45.500,33.000,285,29,268,248,2551),(188,'\"Proposed Physical Education Building\"',NULL,NULL,'',31.000,21.250,285,29,268,248,2552),(189,'',NULL,NULL,'',21.250,25.250,273,29,268,248,2505),(190,'\"David and Bathsheba\"',NULL,1968,'',21.750,34.500,274,29,268,272,2506),(191,'',NULL,NULL,'',36.000,30.250,275,29,268,274,2507),(192,'',NULL,NULL,'',19.500,13.500,285,29,268,248,2553),(193,'',NULL,NULL,'',23.000,18.250,285,29,268,248,2554),(194,'',NULL,NULL,'',28.500,17.250,285,29,268,248,2555),(195,'\"Church Interior Alicante\"',NULL,1934,'',50.500,36.750,276,29,268,275,2508),(196,'',NULL,1908,'',27.813,28.063,277,29,268,274,2509),(197,'',NULL,NULL,'',60.875,49.000,278,29,268,248,2510),(198,'\"Bird With Rock\"',NULL,NULL,'',24.250,30.250,285,29,268,248,2528),(199,'\"Self Portrait\"',NULL,NULL,'',17.750,17.750,279,29,268,276,2511),(200,'\"Property of E. A. O\'Brien\"',NULL,NULL,'',20.500,13.000,285,29,268,248,2531),(201,'\"Dolls\"',NULL,NULL,'',12.000,15.000,285,29,268,248,2534),(202,'\"Haute Folie\"',NULL,NULL,'',16.500,19.500,280,29,268,277,2512),(203,'',NULL,NULL,'',24.250,28.250,285,29,268,248,2556),(204,'\"Anette\"',NULL,NULL,'',13.250,16.500,281,29,268,278,2513),(205,'',NULL,NULL,'',16.750,20.750,285,29,268,248,2525),(357,'4',NULL,NULL,'',20.250,16.250,263,NULL,1,234,2367),(358,'5',NULL,NULL,'',20.250,16.250,263,NULL,1,234,2368),(359,'6',NULL,NULL,'',20.250,16.250,263,NULL,1,234,2369),(360,'7',NULL,NULL,'',20.250,16.250,263,NULL,1,234,2370),(361,'8',NULL,NULL,'',20.250,16.250,263,NULL,1,234,2371),(362,'9',NULL,NULL,'',20.250,16.250,263,NULL,1,234,2372),(363,'11',NULL,NULL,'',20.250,16.250,263,NULL,1,234,2373),(364,'12',NULL,NULL,'',20.250,16.250,263,NULL,1,234,2374),(365,'13',NULL,NULL,'',20.250,16.250,263,NULL,1,234,2375),(366,'14',NULL,NULL,'',20.250,16.250,263,NULL,1,234,2376),(367,'17',NULL,NULL,'',20.250,16.250,263,NULL,1,234,2377),(368,'18',NULL,NULL,'',20.250,16.250,263,NULL,1,234,2378),(369,'19',NULL,NULL,'',20.250,16.250,263,NULL,1,234,2379),(370,'20',NULL,NULL,'',20.250,16.250,263,NULL,1,234,2380),(371,'21',NULL,NULL,'',20.250,16.250,263,NULL,1,234,2381),(372,'22',NULL,NULL,'',20.250,16.250,263,NULL,1,234,2382),(373,'23',NULL,NULL,'',20.250,16.250,263,NULL,1,234,2383),(374,'25',NULL,NULL,'',20.250,16.250,263,NULL,1,234,2384),(375,'26',NULL,NULL,'',20.250,16.250,263,NULL,1,234,2385),(376,'27',NULL,NULL,'',20.250,16.250,263,NULL,1,234,2386),(377,'28',NULL,NULL,'',20.250,16.250,263,NULL,1,234,2387),(378,'29',NULL,NULL,'',20.250,16.250,263,NULL,1,234,2388),(379,'30',NULL,NULL,'',20.250,16.250,263,NULL,1,234,2389),(380,'31',NULL,NULL,'',20.250,16.250,263,NULL,1,234,2390),(381,'',NULL,NULL,'',20.250,16.250,263,NULL,1,234,2391),(382,'',NULL,NULL,'',20.250,16.250,263,NULL,1,234,2392),(383,'Viking Regatta',NULL,NULL,'',47.000,54.750,252,NULL,238,254,2421),(384,'',NULL,NULL,'',NULL,NULL,206,NULL,269,255,2426);
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

-- Dump completed on 2023-11-28 20:29:52