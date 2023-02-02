-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: cinema
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cinema`
--

DROP TABLE IF EXISTS `cinema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cinema` (
  `id_cinema` int NOT NULL AUTO_INCREMENT,
  `nom_cinema` varchar(255) NOT NULL,
  PRIMARY KEY (`id_cinema`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cinema`
--

LOCK TABLES `cinema` WRITE;
/*!40000 ALTER TABLE `cinema` DISABLE KEYS */;
INSERT INTO `cinema` VALUES (1,'La grande rue'),(2,'La petite rue'),(3,'L\'obelisque');
/*!40000 ALTER TABLE `cinema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film`
--

DROP TABLE IF EXISTS `film`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `film` (
  `id_film` int NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) NOT NULL,
  PRIMARY KEY (`id_film`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film`
--

LOCK TABLES `film` WRITE;
/*!40000 ALTER TABLE `film` DISABLE KEYS */;
INSERT INTO `film` VALUES (1,'Le grand bleu'),(2,'Titanic'),(3,'Star Wars'),(4,'Le seigneur des anneaux'),(5,'Avatar');
/*!40000 ALTER TABLE `film` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `heure`
--

DROP TABLE IF EXISTS `heure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `heure` (
  `id_heure` int NOT NULL AUTO_INCREMENT,
  `date_heure` datetime NOT NULL,
  PRIMARY KEY (`id_heure`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `heure`
--

LOCK TABLES `heure` WRITE;
/*!40000 ALTER TABLE `heure` DISABLE KEYS */;
INSERT INTO `heure` VALUES (1,'2023-06-01 10:00:00'),(2,'2023-06-01 14:00:00'),(3,'2023-06-01 18:00:00'),(4,'2023-06-01 21:00:00'),(5,'2023-06-02 10:00:00'),(6,'2023-06-02 14:00:00'),(7,'2023-06-02 18:00:00'),(8,'2023-06-02 21:00:00'),(9,'2023-06-03 10:00:00'),(10,'2023-06-03 14:00:00'),(11,'2023-06-03 18:00:00'),(12,'2023-06-03 21:00:00'),(13,'2023-06-04 10:00:00'),(14,'2023-06-04 14:00:00'),(15,'2023-06-04 18:00:00'),(16,'2023-06-04 21:00:00'),(17,'2023-06-05 10:00:00'),(18,'2023-06-05 14:00:00'),(19,'2023-06-05 18:00:00'),(20,'2023-06-05 21:00:00');
/*!40000 ALTER TABLE `heure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation` (
  `id_reservation` int NOT NULL AUTO_INCREMENT,
  `seance_id` int NOT NULL,
  `tarif_id` int NOT NULL,
  PRIMARY KEY (`id_reservation`),
  KEY `seance_id` (`seance_id`),
  KEY `tarif_id` (`tarif_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,1),(5,5,1),(6,6,1),(7,7,2),(8,8,2),(9,9,2),(10,10,1),(11,11,1),(12,12,2),(13,13,2),(14,14,2),(15,15,3),(16,16,3),(17,17,3),(18,18,3);
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salle`
--

DROP TABLE IF EXISTS `salle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salle` (
  `id_salle` int NOT NULL AUTO_INCREMENT,
  `places` int NOT NULL,
  `cinema_id` int NOT NULL,
  PRIMARY KEY (`id_salle`),
  KEY `cinema_id` (`cinema_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salle`
--

LOCK TABLES `salle` WRITE;
/*!40000 ALTER TABLE `salle` DISABLE KEYS */;
INSERT INTO `salle` VALUES (1,200,1),(2,200,2),(3,200,3),(4,100,1),(5,100,2),(6,100,3),(7,100,1),(8,100,2),(9,100,3);
/*!40000 ALTER TABLE `salle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seance`
--

DROP TABLE IF EXISTS `seance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seance` (
  `id_seance` int NOT NULL AUTO_INCREMENT,
  `film_id` int NOT NULL,
  `cinema_id` int NOT NULL,
  `salle_id` int NOT NULL,
  `heure_id` int NOT NULL,
  PRIMARY KEY (`id_seance`),
  KEY `film_id` (`film_id`),
  KEY `cinema_id` (`cinema_id`),
  KEY `salle_id` (`salle_id`),
  KEY `heure_id` (`heure_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seance`
--

LOCK TABLES `seance` WRITE;
/*!40000 ALTER TABLE `seance` DISABLE KEYS */;
INSERT INTO `seance` VALUES (1,1,1,1,1),(2,1,1,1,2),(3,1,1,1,3),(4,1,1,1,4),(5,1,1,1,5),(6,1,1,1,6),(7,1,1,1,7),(8,1,1,1,8),(9,1,1,1,9),(10,1,1,1,10),(11,2,1,2,1),(12,2,1,2,2),(13,2,1,2,3),(14,2,1,2,4),(15,2,1,2,5),(16,4,3,3,1),(17,4,3,3,2),(18,4,3,3,3);
/*!40000 ALTER TABLE `seance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarif`
--

DROP TABLE IF EXISTS `tarif`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tarif` (
  `id_tarif` int NOT NULL AUTO_INCREMENT,
  `type_tarif` varchar(255) NOT NULL,
  `prix` float NOT NULL,
  PRIMARY KEY (`id_tarif`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarif`
--

LOCK TABLES `tarif` WRITE;
/*!40000 ALTER TABLE `tarif` DISABLE KEYS */;
INSERT INTO `tarif` VALUES (1,'Plein tarif',9.2),(2,'Étudiant',7.6),(3,'Moins de 14 ans',5.9);
/*!40000 ALTER TABLE `tarif` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-02  9:08:52
