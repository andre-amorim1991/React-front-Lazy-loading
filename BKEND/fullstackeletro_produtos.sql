-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: fullstackeletro
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `idprodutos` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(180) NOT NULL,
  `descricao` varchar(500) NOT NULL,
  `preco` float NOT NULL,
  `preco_venda` float NOT NULL,
  `imagem` varchar(150) NOT NULL,
  PRIMARY KEY (`idprodutos`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,'geladeira','Geladeria Consul 520 Litros',3560,3099,'img/geladeira-consul.jpeg'),(2,'geladeira','Geladeira Duplex Brastemp 600 Litros',5399,4990,'img/geladeira-brastemp.jpg'),(3,'geladeira','Geladeira Brastemp 550 Litros',4399,3999,'img/geladeira-brastemp-branca.jpeg'),(4,'fogoes','Fogão Eletrolux',1290,959.9,'img/fogao-eletrolux.jpeg'),(5,'fogoes','Fogão Consul',1429,1099.9,'img/fogao-prata.jpeg'),(6,'microondas','Microondas Eletrolux 33 Litros',859,659.9,'img/microndas-eletrolux.jpeg'),(7,'microondas','Microondas Panasonic 29 Litros',729.9,559.99,'img/microondas-panasonic.jpeg'),(8,'microondas','Microondas Consul 25 Litros',679,529.9,'img/microondas.jpeg'),(9,'lava_roupas','Lava roupas Consul',2925.1,2199.99,'img/lava-roupa-consul.jpeg'),(10,'lava_roupas','Lava de roupas Eletrolux',1649,1199,'img/lava-roupa-eletrolux.jpeg'),(11,'lava_loucas','Lava-Louças Consul',2564,1799,'img/lava-louca-consul.jpeg'),(12,'lava_loucas','Lava-louça Eletrolux',3284,2350,'img/lava-louca-eletrolux.jpg');
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-15  0:06:12
