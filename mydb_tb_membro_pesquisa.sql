-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `tb_membro_pesquisa`
--

DROP TABLE IF EXISTS `tb_membro_pesquisa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_membro_pesquisa` (
  `id_membro` int NOT NULL,
  `id_pesquisa` int NOT NULL,
  PRIMARY KEY (`id_membro`,`id_pesquisa`),
  KEY `fk_tb_membro_has_tb_pesquisa_tb_pesquisa1_idx` (`id_pesquisa`),
  KEY `fk_tb_membro_has_tb_pesquisa_tb_membro1_idx` (`id_membro`),
  CONSTRAINT `fk_tb_membro_has_tb_pesquisa_tb_membro1` FOREIGN KEY (`id_membro`) REFERENCES `tb_membro` (`id_membro`),
  CONSTRAINT `fk_tb_membro_has_tb_pesquisa_tb_pesquisa1` FOREIGN KEY (`id_pesquisa`) REFERENCES `tb_pesquisa` (`id_pesquisa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_membro_pesquisa`
--

LOCK TABLES `tb_membro_pesquisa` WRITE;
/*!40000 ALTER TABLE `tb_membro_pesquisa` DISABLE KEYS */;
INSERT INTO `tb_membro_pesquisa` VALUES (1,1),(2,2),(3,3),(4,4),(5,5);
/*!40000 ALTER TABLE `tb_membro_pesquisa` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-16  8:48:03
