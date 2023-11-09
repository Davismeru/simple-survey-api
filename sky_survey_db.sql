-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: sky_survey_db
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
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `programming_stack` varchar(255) NOT NULL,
  `certificates` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,'What is your full name?','What is your email address?','Tell us a bit more about yourself','What is your gender?','What programming stack are you familiar with?','Upload any of your certificates?','2023-11-05 02:50:08','2023-11-05 02:50:08');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `responses`
--

DROP TABLE IF EXISTS `responses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `responses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `programming_stack` varchar(255) NOT NULL,
  `certificates` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `responses`
--

LOCK TABLES `responses` WRITE;
/*!40000 ALTER TABLE `responses` DISABLE KEYS */;
INSERT INTO `responses` VALUES (1,'Njoroge Davis Meru','davis@gmail.com','I am a really good programmer','male','React Js,Vue Js,Microsoft SQL Server','uploads\\1699191141833cover letter.pdf,uploads\\1699191141836Curriculum Vitae.pdf','2023-11-05 13:32:21','2023-11-05 13:32:21'),(2,'Maimuna Binti Habibi','habibi@gmail.com','I\'m from coast','female','Postgres,SQL','uploads\\1699191240805davis application letter.pdf,uploads\\1699191240806Gau Completion.pdf','2023-11-05 13:34:00','2023-11-05 13:34:00'),(3,'Uhuru Jayden Kenyatta','ken@254','I an the last good president of Kenya','male','SQL,MySQL','uploads\\1699196356809Gau Completion.pdf,uploads\\1699196356813GaU recommendation.pdf,uploads\\1699196356821id.pdf','2023-11-05 14:59:16','2023-11-05 14:59:16'),(4,'Brosev Dudikoff','bro@email.com','I am a an international start who lovesI am a an international start who lovesI am a an international start who lovesI am a an international start who loves','male','Angular Js,Vue Js,Postgres','uploads\\1699207283973davis application letter.pdf,uploads\\1699207283977Gau Completion.pdf,uploads\\1699207283987GaU recommendation.pdf','2023-11-05 18:01:24','2023-11-05 18:01:24'),(5,'Kimathi Jimnah Wanyonyi','wanjo@email.com','I am Wanyo a good dude','male','Angular Js,MySQL,Microsoft SQL Server','uploads\\1699279855709passport.pdf,uploads\\1699279855711Uni Certificate.pdf','2023-11-06 14:10:55','2023-11-06 14:10:55'),(6,'Zam Issack Ali','zam@gmail.com','My name is zam and I\'m a Muslim laidee!!','female','Postgres,Java','uploads\\1699408992455resume.pdf,uploads\\1699408992470Uni Certificate.pdf','2023-11-08 02:03:12','2023-11-08 02:03:12'),(7,'Marcus Rashford','marc@gmail.com','I am a professional footballer','male','Angular Js,MySQL,Vue Js,Microsoft SQL Server','','2023-11-08 02:58:35','2023-11-08 02:58:35'),(8,'Miles Morales','morales@gmail.com','I am a Jack of all trades','male','Angular Js,Java','','2023-11-08 03:04:52','2023-11-08 03:04:52'),(9,'Chandler Bing','bing@gmail.com','I will be remembered','male','React Js,Microsoft SQL Server','','2023-11-08 03:34:51','2023-11-08 03:34:51'),(10,'Tina Turner','tina@yahoo.com','I am a renowed musician','female','Angular Js,Postgres','','2023-11-08 03:58:07','2023-11-08 03:58:07'),(11,'Yondo Sister','yondo@outlook.com','Everytime time i sing someone smiles','female','Java,PHP','','2023-11-08 04:03:22','2023-11-08 04:03:22'),(12,'Anita Juiliette Rosalita','anitawangu@gmail.com','My name is Anita, amarula','female','Postgres,SQL,MySQL','','2023-11-08 07:22:58','2023-11-08 07:22:58'),(13,'qewrewr','qwrq','qwe','Other','Angular Js','','2023-11-08 23:30:48','2023-11-08 23:30:48'),(14,'Otieno Peter Parker','parker@gmail.com','I am peter parker, and am the fastest man alive','Male','SQL, Go','uploads\\1699501590343Gau Completion.pdf,uploads\\1699501590354GaU recommendation.pdf','2023-11-09 03:46:30','2023-11-09 03:46:30');
/*!40000 ALTER TABLE `responses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-09  7:17:49
