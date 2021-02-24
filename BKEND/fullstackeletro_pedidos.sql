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
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `id_pedido` int(11) NOT NULL AUTO_INCREMENT,
  `nome_cliente` varchar(45) CHARACTER SET latin1 NOT NULL,
  `estado_endereco` int(11) DEFAULT NULL,
  `bairro_endereco` varchar(45) DEFAULT NULL,
  `logradouro_endereco` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `numero_endereco` varchar(45) DEFAULT NULL,
  `cidade_endereco` varchar(45) DEFAULT NULL,
  `telefone_cliente` varchar(20) CHARACTER SET latin1 NOT NULL,
  `quantidade` int(11) NOT NULL,
  `data_pedido` datetime DEFAULT CURRENT_TIMESTAMP,
  `fk_produto` int(11) NOT NULL,
  `cpf_cliente` bigint(12) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_pedido`),
  KEY `fk_pedido_produto_idx` (`fk_produto`),
  KEY `fk_pedido_estado_idx` (`estado_endereco`),
  CONSTRAINT `fk_estado` FOREIGN KEY (`estado_endereco`) REFERENCES `estados` (`idestado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_produto` FOREIGN KEY (`fk_produto`) REFERENCES `produtos` (`idprodutos`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,'andre',27,'graja','av belmira','234','são paulo','11987678654',1,'2020-12-13 19:09:34',2,12345678910),(2,'andre',2,'graja','av belmira','234','rio ','11987678654',1,'2020-12-13 19:23:36',2,12345678910),(3,'Andre',1,'Graja','AV Belmira','345','São Paulo','11984595519',1,'2020-12-13 19:35:25',8,12345678910);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
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
