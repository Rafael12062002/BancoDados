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
-- Table structure for table `tb_membro`
--

DROP TABLE IF EXISTS `tb_membro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_membro` (
  `id_membro` int NOT NULL,
  `nome` varchar(200) DEFAULT NULL,
  `foto` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `mini_bibliografia` varchar(400) DEFAULT NULL,
  `matricula` double DEFAULT NULL,
  `id_turma` int NOT NULL,
  `id_area_pesquisa` int NOT NULL,
  PRIMARY KEY (`id_membro`),
  KEY `fk_tb_membro_turma_idx` (`id_turma`),
  KEY `fk_tb_membro_tb_area_pesquisa1_idx` (`id_area_pesquisa`),
  CONSTRAINT `fk_tb_membro_tb_area_pesquisa1` FOREIGN KEY (`id_area_pesquisa`) REFERENCES `tb_area_pesquisa` (`id_area_pesquisa`),
  CONSTRAINT `fk_tb_membro_turma` FOREIGN KEY (`id_turma`) REFERENCES `tb_turma` (`id_turma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_membro`
--

LOCK TABLES `tb_membro` WRITE;
/*!40000 ALTER TABLE `tb_membro` DISABLE KEYS */;
INSERT INTO `tb_membro` VALUES (1,'Renne','Http://link','@gmail.com',1,'texto',12062000,1,1),(2,'Rafael','Http://link','@gmail.com',1,'texto',12062006,2,2),(3,'Idê','Http://link','@gmail.com',1,'texto',12062001,3,3),(4,'Naylan','Http://link','@gmail.com',0,'texto',12062002,4,4),(5,'Caio','Http://link','@gmail.com',1,'texto',12062003,5,5);
/*!40000 ALTER TABLE `tb_membro` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-16  8:48:04
