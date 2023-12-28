-- MySQL dump 10.13  Distrib 8.0.28, for macos11 (x86_64)
--
-- Host: localhost    Database: emp
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `course_id` int DEFAULT NULL,
  `name` text,
  `study_year` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (10,'Machine Learning',2015),(11,'Blockchain',2020),(12,'IOT',2022),(13,'NLP',2023),(14,'Python',2000),(15,'Computer Networks',2008),(16,'SQL',2010),(17,'Neural networks',2013),(18,'Maths',2016),(19,'Excel ',2019);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `emp_id` int DEFAULT NULL,
  `emp_name` text,
  `location` text,
  `joining_date` int DEFAULT NULL,
  `score` double DEFAULT NULL,
  `job_domain` text,
  `language_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'shridhar','maharashtra',2022,9.2,'marketing',4),(2,'rajendra','punjab',2021,7.3,'web development',3),(3,'manisha','maharashtra',2013,6,'Sales',4),(4,'pooja','punjab',2023,5,'web development',3),(5,'parth','maharashtra',2022,7,'web development',4),(6,'rajesh','gujrat',2000,9,'marketing',6),(7,'suresh','MP',2001,7,'marketing',1),(8,'mahesh','maharashtra',2009,8.4,'Sales',4),(9,'ravi','gujrat',2001,7.4,'web development',6),(10,'john','Goa',2015,7.2,'web development',2),(11,'adam','punjab',2000,9.3,'marketing',3),(12,'mohan','maharashtra',1999,8.8,'marketing',4),(13,'deepak','maharashtra',1998,8.6,'web development',4),(14,'mohit','maharashtra',1995,8,'marketing',4),(15,'sumer','Rajasthan',2000,8.5,'Sales',5),(16,'harry','maharashtra',1997,7.9,'Sales',4),(17,'sonal','gujrat',1946,8.6,'marketing',6),(18,'neil','maharashtra',2009,7.8,'finance',4),(19,'ankur','maharashtra',1972,9.2,'marketing',4),(20,'abhay','maharashtra',2008,9,'finance',4),(21,'swapnil','maharashtra',1990,9,'marketing',4),(22,'karan','Tamil nadu',2019,8.2,'Sales',5),(23,'arjun','maharashtra',2019,8.5,'marketing',4),(24,'paresh','maharashtra',2019,8.4,'web development',4),(25,'jaggi','punjab',2010,8,'marketing',3);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empstudy`
--

DROP TABLE IF EXISTS `empstudy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empstudy` (
  `emp_id` int DEFAULT NULL,
  `course_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empstudy`
--

LOCK TABLES `empstudy` WRITE;
/*!40000 ALTER TABLE `empstudy` DISABLE KEYS */;
INSERT INTO `empstudy` VALUES (1,10),(1,11),(2,12),(4,13),(5,14),(3,15),(7,16),(6,17),(9,18),(10,19),(10,11),(12,14),(13,13),(14,10),(15,13),(16,15),(17,12),(18,13),(19,14),(20,15),(21,16),(22,17),(20,18),(24,19);
/*!40000 ALTER TABLE `empstudy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `income`
--

DROP TABLE IF EXISTS `income`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `income` (
  `emp_id` int DEFAULT NULL,
  `salary` double DEFAULT NULL,
  `unit` text,
  `currency` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `income`
--

LOCK TABLES `income` WRITE;
/*!40000 ALTER TABLE `income` DISABLE KEYS */;
INSERT INTO `income` VALUES (1,5,'Billions','INR'),(2,1,'Millions','USD'),(3,0.5,'Millions','USD'),(4,2,'Millions','USD'),(5,3,'Millions','USD'),(6,0.3,'Millions','INR'),(7,5,'Millions','INR'),(8,4,'Millions','INR'),(9,1,'Billions','INR'),(10,1,'Millions','USD'),(11,2,'Millions','INR'),(12,7,'Millions','USD'),(13,2,'Millions','USD'),(14,10,'Millions','USD'),(15,11,'Millions','INR'),(16,2,'Millions','USD'),(17,3,'Millions','USD'),(18,1,'Millions','INR'),(19,5,'Millions','INR'),(20,4,'Millions','USD'),(21,2,'Millions','USD'),(22,3,'Millions','INR'),(23,1,'Millions','INR'),(26,10,'Millions','USD');
/*!40000 ALTER TABLE `income` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `language_id` int DEFAULT NULL,
  `lang` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'Hindi'),(2,'English'),(3,'Punjabi'),(4,'Marathi'),(5,'Tamil'),(6,'Gujrati'),(7,'Bengali');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-03  9:51:40
