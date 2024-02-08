CREATE DATABASE  IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mydb`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `environmental_impact`
--

DROP TABLE IF EXISTS `environmental_impact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `environmental_impact` (
  `Environmental_Impact_ID` int NOT NULL,
  `Utility_ID` int NOT NULL,
  `Electrical_Range` int NOT NULL,
  PRIMARY KEY (`Environmental_Impact_ID`),
  KEY `Utility_ID_idx` (`Utility_ID`) /*!80000 INVISIBLE */,
  CONSTRAINT `Utility_ID` FOREIGN KEY (`Utility_ID`) REFERENCES `utility` (`Utility_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `environmental_impact`
--

LOCK TABLES `environmental_impact` WRITE;
/*!40000 ALTER TABLE `environmental_impact` DISABLE KEYS */;
INSERT INTO `environmental_impact` VALUES (1,1,15),(2,2,111),(3,3,12),(4,4,17),(5,5,32),(6,6,17),(7,7,111),(8,8,17),(9,9,14),(10,10,17),(11,11,17),(12,12,17),(13,13,111),(14,14,17),(15,15,16),(16,16,19),(17,17,111),(18,18,14),(19,19,14),(20,20,17),(21,21,12),(22,22,12),(23,23,19),(24,24,111),(25,25,17),(26,26,17),(27,27,111),(28,28,17),(29,29,111),(30,30,14),(31,31,12),(32,32,17),(33,33,14),(34,34,19),(35,35,19),(36,36,14),(37,37,17),(38,38,19),(39,39,17),(40,40,32),(41,41,14),(42,42,15),(43,43,19),(44,44,14),(45,45,17),(46,46,111),(47,47,17),(48,48,12),(49,49,16),(50,50,14);
/*!40000 ALTER TABLE `environmental_impact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `environmental_vehicle_utility`
--

DROP TABLE IF EXISTS `environmental_vehicle_utility`;
/*!50001 DROP VIEW IF EXISTS `environmental_vehicle_utility`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `environmental_vehicle_utility` AS SELECT 
 1 AS `Vehicle_VinNumber`,
 1 AS `Electrical_Range`,
 1 AS `Electric_Utility`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `legislative_district`
--

DROP TABLE IF EXISTS `legislative_district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `legislative_district` (
  `Legislative_District_ID` int NOT NULL,
  `Legislative_District` int NOT NULL,
  `2020_Census_Tract` decimal(20,0) NOT NULL,
  `Postal_Code` int NOT NULL,
  `County` varchar(20) NOT NULL,
  PRIMARY KEY (`Legislative_District_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `legislative_district`
--

LOCK TABLES `legislative_district` WRITE;
/*!40000 ALTER TABLE `legislative_district` DISABLE KEYS */;
INSERT INTO `legislative_district` VALUES (1,21,53061042004,98087,'Snohomish'),(2,22,53067011200,98503,'Thurston'),(3,18,53011040610,98607,'Clark'),(4,36,53033005801,98199,'King'),(5,45,53033032323,98052,'King'),(6,8,53005010810,99352,'Benton'),(7,45,53033022401,98033,'King'),(8,48,53033024200,98039,'King'),(9,28,53053072603,98303,'Pierce'),(10,37,53033008700,98122,'King'),(11,1,53061051932,98036,'Snohomish'),(12,47,53033031708,98042,'King'),(13,48,53033022604,98033,'King'),(14,26,53053072405,98335,'Pierce'),(15,1,53061052107,98012,'Snohomish'),(16,23,53035090902,98110,'Kitsap'),(17,19,53049950200,98577,'Pacific'),(18,18,53011040505,98606,'Clark'),(19,49,53011041110,98661,'Clark'),(20,1,53033022205,98034,'King'),(21,24,53027001400,98550,'Grays Harbor'),(22,34,53033011601,98136,'King'),(23,33,53033028600,98166,'King'),(24,33,53033029001,98198,'King'),(25,48,53033022502,98033,'King'),(26,5,53033032222,98029,'King'),(27,27,53053060600,98403,'Pierce'),(28,45,53033022005,98034,'King'),(29,45,53033022006,98034,'King'),(30,41,53033024601,98040,'King'),(31,5,53033032008,98038,'King'),(32,41,53033032213,98075,'King'),(33,46,53033001900,98115,'King'),(34,45,53033032328,98053,'King'),(35,46,53033000601,98133,'King'),(36,33,53033028600,98166,'King'),(37,46,53033002200,98115,'King'),(38,46,53033002200,98115,'King'),(39,44,53061052004,98012,'Snohomish'),(40,23,53035090502,98370,'Kitsap'),(41,19,53015001900,98632,'Cowlitz'),(42,21,53061042005,98275,'Snohomish'),(43,41,53033032218,98075,'King'),(44,23,53035090700,98110,'Kitsap'),(45,36,53033003201,98107,'King'),(46,46,53033002400,98115,'King'),(47,45,53033032307,98072,'King'),(48,45,53033032307,98072,'King'),(49,2,53053073132,98338,'Pierce'),(50,4,53063013001,99016,'Spokane');
/*!40000 ALTER TABLE `legislative_district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `Location_ID` int NOT NULL,
  `Legislative_District_ID` int NOT NULL,
  `Coordinates` varchar(45) NOT NULL,
  `City` varchar(24) NOT NULL,
  `State` char(2) NOT NULL,
  PRIMARY KEY (`Location_ID`),
  KEY `Legislative_District_ID_idx` (`Legislative_District_ID`),
  CONSTRAINT `Legislative_District_ID` FOREIGN KEY (`Legislative_District_ID`) REFERENCES `legislative_district` (`Legislative_District_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,1,'POINT (-122.27981 47.85727)','Lynnwood','WA'),(2,2,'POINT (-122.82324 47.04437)','Lacey','WA'),(3,3,'POINT (-122.40199 45.58694)','Camas','WA'),(4,4,'POINT (-122.40092 47.65908)','Seattle','WA'),(5,5,'POINT (-122.13158 47.67858)','Redmond','WA'),(6,6,'POINT (-119.27372 46.27391)','Richland','WA'),(7,7,'POINT (-122.2066 47.67887)','Kirkland','WA'),(8,8,'POINT (-122.23892 47.61613)','Medina','WA'),(9,9,'POINT (-122.67876 47.17794)','Anderson Island','WA'),(10,10,'POINT (-122.31009 47.60803)','Seattle','WA'),(11,11,'POINT (-122.29245 47.82557)','Lynnwood','WA'),(12,12,'POINT (-122.09124 47.33778)','Kent','WA'),(13,13,'POINT (-122.2066 47.67887)','Kirkland','WA'),(14,14,'POINT (-122.58009 47.328)','Gig Harbor','WA'),(15,15,'POINT (-122.21061 47.83448)','Bothell','WA'),(16,16,'POINT (-122.521 47.62728)','Bainbridge Island','WA'),(17,17,'POINT (-123.72994 46.68867)','Raymond','WA'),(18,18,'POINT (-122.54578 45.73473)','Brush Prairie','WA'),(19,19,'POINT (-122.62934 45.63201)','Vancouver','WA'),(20,20,'POINT (-122.22901 47.72201)','Kirkland','WA'),(21,21,'POINT (-123.88689 46.97982)','Hoquiam','WA'),(22,22,'POINT (-122.38415 47.53755)','Seattle','WA'),(23,23,'POINT (-122.34118 47.46665)','Normandy Park','WA'),(24,24,'POINT (-122.29592 47.40139)','Des Moines','WA'),(25,25,'POINT (-122.2066 47.67887)','Kirkland','WA'),(26,26,'POINT (-122.00292 47.54748)','Sammamish','WA'),(27,27,'POINT (-122.45691 47.26496)','Tacoma','WA'),(28,28,'POINT (-122.22901 47.72201)','Kirkland','WA'),(29,29,'POINT (-122.22901 47.72201)','Kirkland','WA'),(30,30,'POINT (-122.21238 47.57816)','Mercer Island','WA'),(31,31,'POINT (-122.04526 47.39394)','Maple Valley','WA'),(32,32,'POINT (-122.03539 47.61344)','Sammamish','WA'),(33,33,'POINT (-122.31765 47.70013)','Seattle','WA'),(34,34,'POINT (-122.03287 47.68555)','Redmond','WA'),(35,35,'POINT (-122.3503 47.71868)','Seattle','WA'),(36,36,'POINT (-122.34118 47.46665)','Normandy Park','WA'),(37,37,'POINT (-122.31765 47.70013)','Seattle','WA'),(38,38,'POINT (-122.31765 47.70013)','Seattle','WA'),(39,39,'POINT (-122.21061 47.83448)','Mill Creek','WA'),(40,40,'POINT (-122.64681 47.73689)','Poulsbo','WA'),(41,41,'POINT (-122.95058 46.14681)','Longview','WA'),(42,42,'POINT (-122.29196 47.89908)','Mukilteo','WA'),(43,43,'POINT (-122.03539 47.61344)','Sammamish','WA'),(44,44,'POINT (-122.521 47.62728)','Bainbridge Island','WA'),(45,45,'POINT (-122.38591 47.67597)','Seattle','WA'),(46,46,'POINT (-122.31765 47.70013)','Seattle','WA'),(47,47,'POINT (-122.15545 47.75448)','Woodinville','WA'),(48,48,'POINT (-122.15545 47.75448)','Woodinville','WA'),(49,49,'POINT (-122.29477 47.05703)','Graham','WA'),(50,50,'POINT (-117.1748 47.65699)','Veradale','WA');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `location_specifications`
--

DROP TABLE IF EXISTS `location_specifications`;
/*!50001 DROP VIEW IF EXISTS `location_specifications`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `location_specifications` AS SELECT 
 1 AS `Vehicle_VinNumber`,
 1 AS `Legislative_District`,
 1 AS `County`,
 1 AS `2020_Census_Tract`,
 1 AS `Region`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `range_location_impact`
--

DROP TABLE IF EXISTS `range_location_impact`;
/*!50001 DROP VIEW IF EXISTS `range_location_impact`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `range_location_impact` AS SELECT 
 1 AS `Make`,
 1 AS `Model`,
 1 AS `Model_Year`,
 1 AS `City`,
 1 AS `Legislative_District`,
 1 AS `County`,
 1 AS `Electrical_Range`,
 1 AS `Avg_Range`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `utility`
--

DROP TABLE IF EXISTS `utility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utility` (
  `Utility_ID` int NOT NULL,
  `Electric_Utility` varchar(112) NOT NULL,
  PRIMARY KEY (`Utility_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utility`
--

LOCK TABLES `utility` WRITE;
/*!40000 ALTER TABLE `utility` DISABLE KEYS */;
INSERT INTO `utility` VALUES (1,'PUGET SOUND ENERGY INC'),(2,'PUGET SOUND ENERGY INC'),(3,'BONNEVILLE POWER ADMINISTRATION||PUD NO 1 OF CLARK COUNTY - (WA)'),(4,'CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)'),(5,'PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA)'),(6,'BONNEVILLE POWER ADMINISTRATION||CITY OF RICHLAND - (WA)'),(7,'PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA)'),(8,'PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA)'),(9,'BONNEVILLE POWER ADMINISTRATION||CITY OF TACOMA - (WA)||PENINSULA LIGHT COMPANY'),(10,'CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)'),(11,'PUGET SOUND ENERGY INC'),(12,'PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA)'),(13,'PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA)'),(14,'BONNEVILLE POWER ADMINISTRATION||CITY OF TACOMA - (WA)||PENINSULA LIGHT COMPANY'),(15,'PUGET SOUND ENERGY INC'),(16,'PUGET SOUND ENERGY INC'),(17,'BONNEVILLE POWER ADMINISTRATION||PUD NO 2 OF PACIFIC COUNTY'),(18,'BONNEVILLE POWER ADMINISTRATION||PUD NO 1 OF CLARK COUNTY - (WA)'),(19,'BONNEVILLE POWER ADMINISTRATION||PUD NO 1 OF CLARK COUNTY - (WA)'),(20,'PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA)'),(21,'BONNEVILLE POWER ADMINISTRATION||PUD NO 1 OF GRAYS HARBOR COUNTY'),(22,'CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)'),(23,'PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA)'),(24,'PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA)'),(25,'PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA)'),(26,'PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA)'),(27,'BONNEVILLE POWER ADMINISTRATION||CITY OF TACOMA - (WA)||PENINSULA LIGHT COMPANY'),(28,'PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA)'),(29,'PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA)'),(30,'PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA)'),(31,'PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA)'),(32,'PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA)'),(33,'CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)'),(34,'PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA)'),(35,'CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)'),(36,'PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA)'),(37,'CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)'),(38,'PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA)'),(39,'PUGET SOUND ENERGY INC'),(40,'PUGET SOUND ENERGY INC'),(41,'BONNEVILLE POWER ADMINISTRATION||PUD NO 1 OF COWLITZ COUNTY'),(42,'PUGET SOUND ENERGY INC'),(43,'PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA)'),(44,'PUGET SOUND ENERGY INC'),(45,'CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)'),(46,'CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)'),(47,'PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA)'),(48,'PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA)'),(49,'BONNEVILLE POWER ADMINISTRATION||CITY OF TACOMA - (WA)||PENINSULA LIGHT COMPANY'),(50,'BONNEVILLE POWER ADMINISTRATION||AVISTA CORP||INLAND POWER & LIGHT COMPANY');
/*!40000 ALTER TABLE `utility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `utility_location_price`
--

DROP TABLE IF EXISTS `utility_location_price`;
/*!50001 DROP VIEW IF EXISTS `utility_location_price`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `utility_location_price` AS SELECT 
 1 AS `Vehicle_VinNumber`,
 1 AS `Make`,
 1 AS `Model`,
 1 AS `Model_Year`,
 1 AS `Region`,
 1 AS `Electric_Utility`,
 1 AS `Base_MSRP`,
 1 AS `Avg_Price`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vehicle_impact`
--

DROP TABLE IF EXISTS `vehicle_impact`;
/*!50001 DROP VIEW IF EXISTS `vehicle_impact`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vehicle_impact` AS SELECT 
 1 AS `Electrical_Range`,
 1 AS `Vehicle_VinNumber`,
 1 AS `Make`,
 1 AS `Model`,
 1 AS `Model_Year`,
 1 AS `Electric_Vehicle_Type`,
 1 AS `CAFV_Eligibility`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `vehicle_model`
--

DROP TABLE IF EXISTS `vehicle_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_model` (
  `Model_ID` int NOT NULL,
  `Make` varchar(14) NOT NULL,
  `Model` varchar(24) NOT NULL,
  `Model_Year` int NOT NULL,
  `Base_MSRP` int NOT NULL,
  `Electric_Vehicle_Type` varchar(38) NOT NULL,
  `CAFV_Eligibility` varchar(60) NOT NULL,
  PRIMARY KEY (`Model_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_model`
--

LOCK TABLES `vehicle_model` WRITE;
/*!40000 ALTER TABLE `vehicle_model` DISABLE KEYS */;
INSERT INTO `vehicle_model` VALUES (1,'BMW','530E',2019,55700,'Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range'),(2,'KIA','SOUL EV',2018,33950,'Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible'),(3,'MINI','COUNTRYMAN',2019,36900,'Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range'),(4,'SUBARU','CROSSTREK',2019,34995,'Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range'),(5,'CHRYSLER','PACIFICA',2019,39995,'Plug-in Hybrid Electric Vehicle (PHEV)','Clean Alternative Fuel Vehicle Eligible'),(6,'SUBARU','CROSSTREK',2019,34995,'Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range'),(7,'KIA','SOUL EV',2018,33950,'Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible'),(8,'VOLVO','XC60',2019,52900,'Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range'),(9,'BMW','530E',2018,54950,'Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range'),(10,'VOLVO','XC60',2018,52900,'Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range'),(11,'SUBARU','CROSSTREK',2019,34995,'Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range'),(12,'VOLVO','XC60',2018,52900,'Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range'),(13,'KIA','SOUL EV',2018,33950,'Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible'),(14,'VOLVO','XC60',2018,52900,'Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range'),(15,'BMW','530E',2019,53400,'Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range'),(16,'VOLVO','XC90',2018,64950,'Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range'),(17,'KIA','SOUL EV',2018,33950,'Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible'),(18,'BMW','330E',2018,45600,'Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range'),(19,'BMW','330E',2018,45600,'Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range'),(20,'VOLVO','XC60',2019,52900,'Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range'),(21,'MINI','COUNTRYMAN',2019,36900,'Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range'),(22,'MINI','COUNTRYMAN',2019,36900,'Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range'),(23,'VOLVO','XC90',2018,64950,'Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range'),(24,'KIA','SOUL EV',2018,33950,'Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible'),(25,'VOLVO','XC60',2018,52900,'Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range'),(26,'VOLVO','XC60',2018,52900,'Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range'),(27,'KIA','SOUL EV',2018,33950,'Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible'),(28,'VOLVO','XC60',2019,52900,'Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range'),(29,'KIA','SOUL EV',2018,33950,'Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible'),(30,'PORSCHE','PANAMERA',2018,184400,'Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range'),(31,'MINI','COUNTRYMAN',2019,36900,'Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range'),(32,'VOLVO','XC60',2019,52900,'Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range'),(33,'BMW','530E',2018,54950,'Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range'),(34,'VOLVO','XC90',2018,64950,'Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range'),(35,'VOLVO','XC90',2018,64950,'Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range'),(36,'BMW','740E',2018,90700,'Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range'),(37,'VOLVO','XC60',2018,52900,'Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range'),(38,'VOLVO','XC90',2018,64950,'Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range'),(39,'VOLVO','XC60',2018,52900,'Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range'),(40,'CHRYSLER','PACIFICA',2019,39995,'Plug-in Hybrid Electric Vehicle (PHEV)','Clean Alternative Fuel Vehicle Eligible'),(41,'BMW','330E',2018,45600,'Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range'),(42,'BMW','530E',2019,55700,'Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range'),(43,'VOLVO','XC90',2018,64950,'Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range'),(44,'BMW','330E',2018,45600,'Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range'),(45,'SUBARU','CROSSTREK',2019,34995,'Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range'),(46,'KIA','SOUL EV',2018,33950,'Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible'),(47,'SUBARU','CROSSTREK',2019,34995,'Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range'),(48,'MINI','COUNTRYMAN',2018,36800,'Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range'),(49,'BMW','530E',2019,53400,'Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range'),(50,'BMW','740E',2018,90700,'Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range');
/*!40000 ALTER TABLE `vehicle_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicles` (
  `Vehicle_ID` int NOT NULL,
  `Model_ID` int NOT NULL,
  `Environmental_Impact_ID` int NOT NULL,
  `Vehicle_VinNumber` varchar(10) NOT NULL,
  PRIMARY KEY (`Vehicle_ID`),
  KEY `Model_ID_idx` (`Model_ID`),
  KEY `Environmental_Impact_ID_idx` (`Environmental_Impact_ID`),
  CONSTRAINT `Environmental_Impact_ID` FOREIGN KEY (`Environmental_Impact_ID`) REFERENCES `environmental_impact` (`Environmental_Impact_ID`),
  CONSTRAINT `Model_ID` FOREIGN KEY (`Model_ID`) REFERENCES `vehicle_model` (`Model_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` VALUES (1,1,1,'WBAJB1C51K'),(2,2,2,'KNDJX3AE6J'),(3,3,3,'WMZYU7C57K'),(4,4,4,'JF2GTDNC9K'),(5,5,5,'2C4RC1L72K'),(6,6,6,'JF2GTDNC3K'),(7,7,7,'KNDJP3AE5J'),(8,8,8,'LYVBR0DL4K'),(9,9,9,'WBAJB1C53J'),(10,10,10,'YV4BR0DL8J'),(11,11,11,'JF2GTDNC5K'),(12,12,12,'YV4BR0DM4J'),(13,13,13,'KNDJX3AE5J'),(14,14,14,'YV4BR0DK8J'),(15,15,15,'WBAJA9C51K'),(16,16,16,'YV4BR0PL4J'),(17,17,17,'KNDJP3AE1J'),(18,18,18,'WBA8E1C56J'),(19,19,19,'WBA8E1C58J'),(20,20,20,'LYVBR0DM3K'),(21,21,21,'WMZYU7C59K'),(22,22,22,'WMZYU7C52K'),(23,23,23,'YV4BR0PK1J'),(24,24,24,'KNDJP3AE8J'),(25,25,25,'LYVBR0DL3J'),(26,26,26,'LYVBR0DL6J'),(27,27,27,'KNDJX3AE8J'),(28,28,28,'LYVBR0DL0K'),(29,29,29,'KNDJX3AE0J'),(30,30,30,'WP0CH2A76J'),(31,31,31,'WMZYU7C50K'),(32,32,32,'LYVBR0DMXK'),(33,33,33,'WBAJB1C52J'),(34,34,34,'YV4BR0PLXJ'),(35,35,35,'YV4BR0PL8J'),(36,36,36,'WBA7J2C51J'),(37,37,37,'YV4BR0DK2J'),(38,38,38,'YV4BR0PL7J'),(39,39,39,'LYVBR0DL0J'),(40,40,40,'2C4RC1L7XK'),(41,41,41,'WBA8E1C50J'),(42,42,42,'WBAJB1C56K'),(43,43,43,'YV4BR0PK0J'),(44,44,44,'WBA8E1C59J'),(45,45,45,'JF2GTDNC0K'),(46,46,46,'KNDJX3AE3J'),(47,47,47,'JF2GTDNC6K'),(48,48,48,'WMZYU7C47J'),(49,49,49,'WBAJA9C57K'),(50,50,50,'WBA7J2C56J');
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicles_location`
--

DROP TABLE IF EXISTS `vehicles_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicles_location` (
  `Vehicle_ID` int NOT NULL,
  `Location_ID` int NOT NULL,
  PRIMARY KEY (`Vehicle_ID`,`Location_ID`),
  KEY `fk_Vehicles_has_Location_Location1_idx` (`Location_ID`),
  KEY `fk_Vehicles_has_Location_Vehicles1_idx` (`Vehicle_ID`),
  CONSTRAINT `fk_Vehicles_has_Location_Location1` FOREIGN KEY (`Location_ID`) REFERENCES `location` (`Location_ID`),
  CONSTRAINT `fk_Vehicles_has_Location_Vehicles1` FOREIGN KEY (`Vehicle_ID`) REFERENCES `vehicles` (`Vehicle_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles_location`
--

LOCK TABLES `vehicles_location` WRITE;
/*!40000 ALTER TABLE `vehicles_location` DISABLE KEYS */;
INSERT INTO `vehicles_location` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),(31,31),(32,32),(33,33),(34,34),(35,35),(36,36),(37,37),(38,38),(39,39),(40,40),(41,41),(42,42),(43,43),(44,44),(45,45),(46,46),(47,47),(48,48),(49,49),(50,50);
/*!40000 ALTER TABLE `vehicles_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicles_location_utility`
--

DROP TABLE IF EXISTS `vehicles_location_utility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicles_location_utility` (
  `Vehicle_ID` int NOT NULL,
  `Location_ID` int NOT NULL,
  `Utility_ID` int NOT NULL,
  PRIMARY KEY (`Vehicle_ID`,`Location_ID`,`Utility_ID`),
  KEY `fk_Vehicles_has_Location_has_Vehicle Utility_Vehicle Utilit_idx` (`Utility_ID`),
  KEY `fk_Vehicles_has_Location_has_Vehicle Utility_Vehicles_has_L_idx` (`Vehicle_ID`,`Location_ID`),
  CONSTRAINT `fk_Vehicles_has_Location_has_Vehicle Utility_Vehicle Utility1` FOREIGN KEY (`Utility_ID`) REFERENCES `utility` (`Utility_ID`),
  CONSTRAINT `fk_Vehicles_has_Location_has_Vehicle Utility_Vehicles_has_Loc1` FOREIGN KEY (`Vehicle_ID`, `Location_ID`) REFERENCES `vehicles_location` (`Vehicle_ID`, `Location_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles_location_utility`
--

LOCK TABLES `vehicles_location_utility` WRITE;
/*!40000 ALTER TABLE `vehicles_location_utility` DISABLE KEYS */;
INSERT INTO `vehicles_location_utility` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,11,11),(12,12,12),(13,13,13),(14,14,14),(15,15,15),(16,16,16),(17,17,17),(18,18,18),(19,19,19),(20,20,20),(21,21,21),(22,22,22),(23,23,23),(24,24,24),(25,25,25),(26,26,26),(27,27,27),(28,28,28),(29,29,29),(30,30,30),(31,31,31),(32,32,32),(33,33,33),(34,34,34),(35,35,35),(36,36,36),(37,37,37),(38,38,38),(39,39,39),(40,40,40),(41,41,41),(42,42,42),(43,43,43),(44,44,44),(45,45,45),(46,46,46),(47,47,47),(48,48,48),(49,49,49),(50,50,50);
/*!40000 ALTER TABLE `vehicles_location_utility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `environmental_vehicle_utility`
--

/*!50001 DROP VIEW IF EXISTS `environmental_vehicle_utility`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `environmental_vehicle_utility` AS select `v`.`Vehicle_VinNumber` AS `Vehicle_VinNumber`,`ei`.`Electrical_Range` AS `Electrical_Range`,`u`.`Electric_Utility` AS `Electric_Utility` from ((`vehicles` `v` join `environmental_impact` `ei` on((`v`.`Environmental_Impact_ID` = `ei`.`Environmental_Impact_ID`))) join `utility` `u` on((`ei`.`Utility_ID` = `u`.`Utility_ID`))) order by `v`.`Vehicle_VinNumber` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `location_specifications`
--

/*!50001 DROP VIEW IF EXISTS `location_specifications`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `location_specifications` AS select `v`.`Vehicle_VinNumber` AS `Vehicle_VinNumber`,`ld`.`Legislative_District` AS `Legislative_District`,`ld`.`County` AS `County`,`ld`.`2020_Census_Tract` AS `2020_Census_Tract`,concat(`l`.`City`,', ',`l`.`State`) AS `Region` from (((`legislative_district` `ld` join `location` `l` on((`ld`.`Legislative_District_ID` = `l`.`Legislative_District_ID`))) join `vehicles_location` `vl` on((`l`.`Location_ID` = `vl`.`Location_ID`))) join `vehicles` `v` on((`vl`.`Vehicle_ID` = `v`.`Vehicle_ID`))) order by `v`.`Vehicle_VinNumber` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `range_location_impact`
--

/*!50001 DROP VIEW IF EXISTS `range_location_impact`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `range_location_impact` AS select `vm`.`Make` AS `Make`,`vm`.`Model` AS `Model`,`vm`.`Model_Year` AS `Model_Year`,`l`.`City` AS `City`,`ld`.`Legislative_District` AS `Legislative_District`,`ld`.`County` AS `County`,`ei`.`Electrical_Range` AS `Electrical_Range`,(select avg(`environmental_impact`.`Electrical_Range`) from `environmental_impact`) AS `Avg_Range` from (((((`environmental_impact` `ei` join `vehicles` `v` on((`ei`.`Environmental_Impact_ID` = `v`.`Environmental_Impact_ID`))) join `vehicle_model` `vm` on((`v`.`Model_ID` = `vm`.`Model_ID`))) join `vehicles_location` `vl` on((`v`.`Vehicle_ID` = `vl`.`Vehicle_ID`))) join `location` `l` on((`vl`.`Location_ID` = `l`.`Location_ID`))) join `legislative_district` `ld` on((`l`.`Legislative_District_ID` = `ld`.`Legislative_District_ID`))) having (`ei`.`Electrical_Range` > `Avg_Range`) order by `vm`.`Make` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `utility_location_price`
--

/*!50001 DROP VIEW IF EXISTS `utility_location_price`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `utility_location_price` AS select `v`.`Vehicle_VinNumber` AS `Vehicle_VinNumber`,`vm`.`Make` AS `Make`,`vm`.`Model` AS `Model`,`vm`.`Model_Year` AS `Model_Year`,concat(`l`.`City`,', ',`l`.`State`) AS `Region`,`u`.`Electric_Utility` AS `Electric_Utility`,`vm`.`Base_MSRP` AS `Base_MSRP`,(select avg(`vehicle_model`.`Base_MSRP`) from `vehicle_model`) AS `Avg_Price` from ((((`vehicles` `v` join `vehicle_model` `vm` on((`v`.`Model_ID` = `vm`.`Model_ID`))) join `vehicles_location_utility` `vlu` on((`v`.`Vehicle_ID` = `vlu`.`Vehicle_ID`))) join `location` `l` on((`vlu`.`Location_ID` = `l`.`Location_ID`))) join `utility` `u` on((`vlu`.`Utility_ID` = `u`.`Utility_ID`))) having (`vm`.`Base_MSRP` > `Avg_Price`) order by `v`.`Vehicle_VinNumber` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vehicle_impact`
--

/*!50001 DROP VIEW IF EXISTS `vehicle_impact`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vehicle_impact` AS select `ei`.`Electrical_Range` AS `Electrical_Range`,`v`.`Vehicle_VinNumber` AS `Vehicle_VinNumber`,`vm`.`Make` AS `Make`,`vm`.`Model` AS `Model`,`vm`.`Model_Year` AS `Model_Year`,`vm`.`Electric_Vehicle_Type` AS `Electric_Vehicle_Type`,`vm`.`CAFV_Eligibility` AS `CAFV_Eligibility` from ((`vehicles` `v` join `vehicle_model` `vm` on((`v`.`Model_ID` = `vm`.`Model_ID`))) join `environmental_impact` `ei` on((`v`.`Environmental_Impact_ID` = `ei`.`Environmental_Impact_ID`))) where (`vm`.`CAFV_Eligibility` = 'Not eligible due to low battery range') order by `v`.`Vehicle_VinNumber`,`vm`.`Make`,`vm`.`Model`,`vm`.`Model_Year`,`vm`.`Electric_Vehicle_Type`,`vm`.`CAFV_Eligibility` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-14 18:32:07
