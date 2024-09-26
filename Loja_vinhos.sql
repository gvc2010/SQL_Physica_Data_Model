-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: lojadevinhos
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Dumping data for table `regiao`
--

LOCK TABLES `regiao` WRITE;
/*!40000 ALTER TABLE `regiao` DISABLE KEYS */;
INSERT INTO `regiao` VALUES (1,'Região Norte','Região famosa por vinhos tintos encorpados'),(2,'Região Sul','Região com clima ideal para vinhos brancos'),(3,'Região Centro-Oeste','Região com grande diversidade de vinhos'),(4,'Região Sudeste','Região com vinhos suaves e espumantes'),(5,'Região Nordeste','Clima tropical proporcionando vinhos exóticos');
/*!40000 ALTER TABLE `regiao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `vinho`
--

LOCK TABLES `vinho` WRITE;
/*!40000 ALTER TABLE `vinho` DISABLE KEYS */;
INSERT INTO `vinho` VALUES (1,'Aurora Chardonnay','Branco',2020,'Vinho branco com notas de frutas tropicais',1),(2,'Salton Espumante','Espumante',2021,'Espumante com aroma de frutas cítricas',2),(3,'Miolo Cabernet','Tinto',2019,'Vinho tinto encorpado, com notas de carvalho',3),(4,'Garibaldi Prosecco','Espumante',2021,'Espumante com leveza e frescor',4),(5,'Valduga Malbec','Tinto',2022,'Vinho tinto robusto e frutado',5);
/*!40000 ALTER TABLE `vinho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `vinicola`
--

LOCK TABLES `vinicola` WRITE;
/*!40000 ALTER TABLE `vinicola` DISABLE KEYS */;
INSERT INTO `vinicola` VALUES (1,'Vinícola Aurora','Vinícola especializada em vinhos finos','1234-5678','aurora@vinicola.com',1),(2,'Vinícola Salton','Vinícola tradicional com 100 anos de história','9876-5432','salton@vinicola.com',2),(3,'Vinícola Miolo','Vinícola premiada por vinhos tintos','4567-8901','miolo@vinicola.com',3),(4,'Vinícola Garibaldi','Famosa pelos espumantes','4321-8765','garibaldi@vinicola.com',4),(5,'Vinícola Casa Valduga','Vinícola familiar, tradicional','5678-4321','valduga@vinicola.com',5);
/*!40000 ALTER TABLE `vinicola` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-25 21:21:22
