-- MariaDB dump 10.19  Distrib 10.5.10-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: estoque
-- ------------------------------------------------------
-- Server version	10.5.10-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `cliente_id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefone` char(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cpf` char(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_alteracao` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `CEP` char(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rua` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bairro` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cidade` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cliente_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Gavin Rivera','40793752476',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(2,'Jameson Kane','02325747839',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(3,'Theodore Vincent','30267704725',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(4,'Connor Battle','70552842586',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(5,'Ivor Rogers','51900297104',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(6,'Moses Gallagher','22006897992',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(7,'Edan Holt','09355804267',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(8,'Dustin Randall','00959428709',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(9,'Keith Grimes','86029581229',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(10,'Wylie Marks','92794651378',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(11,'Gregory Ryan','26460348425',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(12,'Merritt Jackson','01724257718',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(13,'Jameson Montgomery','34055726635',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(14,'Jermaine Hansen','98409137184',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(15,'Branden Bell','67102897996',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(16,'Josiah Mcneil','42201133905',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(17,'Zachery Buchanan','67313756576',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(18,'Plato Banks','22674152651',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(19,'Keaton Lucas','87841998745',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(20,'Jason Obrien','98307577773',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(21,'Galvin Richmond','25516614788',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(22,'Channing Cunningham','90194687438',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(23,'Wallace Soto','67130590467',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(24,'Addison Roberson','23696339927',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(25,'Graiden England','08686099679',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(26,'Brock Gentry','83614129801',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(27,'Andrew Atkinson','64465246125',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(28,'Bernard Valdez','20306333912',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(29,'Matthew Hurst','92852191665',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(30,'Scott Mosley','21122958522',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(31,'Julian Knox','39453624799',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(32,'Levi Thornton','10015452596',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(33,'Graham Poole','26222361494',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(34,'Cairo Hyde','74255775911',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(35,'Noble Ewing','94660906100',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(36,'Samson Parsons','79582217812',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(37,'Kasimir Cohen','98268397887',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(38,'Benedict Bradshaw','73547441958',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(39,'Rashad Carson','26487080355',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(40,'Dominic Foster','18746190743',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(41,'Arden Ruiz','10284618703',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(42,'Arden Walter','69129211229',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(43,'Kenyon Solomon','47537505703',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(44,'Ashton Hurst','61013244789',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(45,'Neil Munoz','22499136377',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(46,'Igor Valencia','03581212368',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(47,'Kenyon Buckner','01746110189',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(48,'Drew Perry','97918559761',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(49,'Trevor Rosario','31695464653',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(50,'Zane Mann','28376605986',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(51,'Cade Aguirre','24937940465',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(52,'Leonard Todd','70491031920',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(53,'Erasmus Stein','85585187823',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(54,'Grant Ross','30630102287',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(55,'Steel Daniel','72741970692',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(56,'Graiden Wallace','09928094801',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(57,'Deacon Larsen','50323326416',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(58,'Acton Osborne','39219316929',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(59,'Brian Barron','69846916727',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(60,'Kyle Kaufman','49417171054',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(61,'Thaddeus Mccray','89590076518',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(62,'Berk Avila','48340913801',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(63,'Alexander Clark','50517041928',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(64,'Jerry Trujillo','50218772548',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(65,'Myles Mcconnell','36078808645',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(66,'Abbot Kinney','70551486642',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(67,'Francis Barker','85113579636',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(68,'Tanner Mcintyre','69017455904',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(69,'Boris Griffin','10691816063',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(70,'Edan Baker','07093230937',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(71,'Kenyon Contreras','47134084218',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(72,'Camden Gill','32115747792',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(73,'Micah Rivers','67396339349',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(74,'Timon Hamilton','19989212665',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(75,'Melvin Dodson','86149145930',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(76,'Quentin Mccall','00997053460',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(77,'Aristotle Cook','75530105917',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(78,'Wang Silva','02423562448',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(79,'Alan Rich','32990963979',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(80,'Dexter Jenkins','12090755073',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(81,'Alec Macdonald','10428362791',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(82,'David Watson','64166301993',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(83,'Xavier Benjamin','25263754215',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(84,'Jeremy Vang','77638430733',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(85,'Knox Douglas','79483054546',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(86,'Chase Baird','23713282978',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(87,'Buckminster Huber','82311211022',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(88,'Reuben Mcintosh','81196855426',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(89,'Hilel Schneider','37278482471',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(90,'Zeph Nguyen','71549023920',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(91,'Harrison Hyde','52686059629',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(92,'Omar Lynch','15634944123',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(93,'Tyler Navarro','26252546345',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(94,'Preston Gillespie','15958050963',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(95,'Colby Bird','11208866803',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(96,'Calvin Chambers','36777031237',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(97,'Gareth Nielsen','80652064440',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(98,'Harlan Farrell','27956112957',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(99,'Nicholas Walsh','91863143145',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL),(100,'Martin Doyle','46987579337',NULL,'2021-02-16 15:08:57',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ficha`
--

DROP TABLE IF EXISTS `ficha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ficha` (
  `ficha_id` int(11) NOT NULL AUTO_INCREMENT,
  `preco_total` float NOT NULL DEFAULT 0,
  `data` datetime NOT NULL DEFAULT current_timestamp(),
  `fk_funcionario_id` int(11) NOT NULL,
  `fk_cliente_id` int(11) NOT NULL,
  PRIMARY KEY (`ficha_id`),
  KEY `fk_funcionario_id` (`fk_funcionario_id`),
  KEY `fk_cliente_id` (`fk_cliente_id`),
  CONSTRAINT `ficha_ibfk_1` FOREIGN KEY (`fk_funcionario_id`) REFERENCES `funcionario` (`funcionario_id`),
  CONSTRAINT `ficha_ibfk_2` FOREIGN KEY (`fk_cliente_id`) REFERENCES `cliente` (`cliente_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ficha`
--

LOCK TABLES `ficha` WRITE;
/*!40000 ALTER TABLE `ficha` DISABLE KEYS */;
INSERT INTO `ficha` VALUES (1,50,'2021-02-18 13:10:59',1,1),(2,150,'2021-02-18 13:10:59',2,2),(3,80,'2021-02-18 13:10:59',3,3),(4,150,'2021-02-18 13:10:59',4,1),(5,35,'2021-02-18 13:10:59',2,4);
/*!40000 ALTER TABLE `ficha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ficha_produto`
--

DROP TABLE IF EXISTS `ficha_produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ficha_produto` (
  `fk_produto_id` int(11) NOT NULL,
  `fk_ficha_id` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL DEFAULT 0,
  `preco_unitario` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`fk_produto_id`,`fk_ficha_id`),
  KEY `fk_ficha_id` (`fk_ficha_id`),
  CONSTRAINT `ficha_produto_ibfk_1` FOREIGN KEY (`fk_produto_id`) REFERENCES `produto` (`produto_id`),
  CONSTRAINT `ficha_produto_ibfk_2` FOREIGN KEY (`fk_ficha_id`) REFERENCES `ficha` (`ficha_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ficha_produto`
--

LOCK TABLES `ficha_produto` WRITE;
/*!40000 ALTER TABLE `ficha_produto` DISABLE KEYS */;
INSERT INTO `ficha_produto` VALUES (1,1,1,20),(2,1,1,30),(3,5,1,35),(4,2,1,150),(4,4,1,150),(5,3,1,80);
/*!40000 ALTER TABLE `ficha_produto` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`exebixel`@`localhost`*/ /*!50003 TRIGGER novo_produto
AFTER INSERT
ON ficha_produto FOR EACH ROW
BEGIN
	UPDATE ficha SET preco_total = preco_total + (NEW.preco_unitario * NEW.quantidade)
	WHERE id = NEW.fk_ficha_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`exebixel`@`localhost`*/ /*!50003 TRIGGER excluir_produto
AFTER DELETE 
ON ficha_produto FOR EACH ROW
BEGIN 
	UPDATE ficha SET preco_total = preco_total - (OLD.preco_unitario * OLD.quantidade)
	WHERE id = OLD.fk_ficha_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionario` (
  `funcionario_id` int(11) NOT NULL AUTO_INCREMENT,
  `nome_completo` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `senha` char(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92',
  `telefone` char(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cpf_cnpj` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_alteracao` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `CEP` char(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rua` char(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero` char(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bairro` char(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cidade` char(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` char(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`funcionario_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (1,'Kay Raymond','nulla.Donec@musAenean.org','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','34884097342','686724048','2021-02-16 15:21:34',NULL,NULL,NULL,NULL,NULL,NULL),(2,'Victor Koch','Nam@tortornibhsit.ca','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','19801649598','464054337','2021-02-16 15:21:34',NULL,NULL,NULL,NULL,NULL,NULL),(3,'Ishmael Mccarthy','a.nunc@AeneanmassaInteger.ca','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','91288996691','679684571','2021-02-16 15:21:34',NULL,NULL,NULL,NULL,NULL,NULL),(4,'Kasper Gibson','mollis.Integer@Suspendisse.co.uk','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','20874978088','099128068','2021-02-16 15:21:34',NULL,NULL,NULL,NULL,NULL,NULL),(5,'Kyla Dudley','sodales@nibh.com','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','66175843038','278385067','2021-02-16 15:21:34',NULL,NULL,NULL,NULL,NULL,NULL),(6,'Prescott Roberts','vel.mauris.Integer@massalobortis.co.uk','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','17650017154','529148413','2021-02-16 15:21:34',NULL,NULL,NULL,NULL,NULL,NULL),(7,'Wang Cleveland','aliquet.Phasellus.fermentum@gravidasitamet.com','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','43052892915','532716172','2021-02-16 15:21:34',NULL,NULL,NULL,NULL,NULL,NULL),(8,'Alden Walls','Aliquam.nisl.Nulla@dictum.org','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','67367950270','378942239','2021-02-16 15:21:34',NULL,NULL,NULL,NULL,NULL,NULL),(9,'Kenneth Hester','at.augue.id@vehiculaaliquet.com','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','49139632277','262515299','2021-02-16 15:21:34',NULL,NULL,NULL,NULL,NULL,NULL),(10,'Janna Clay','sed.est@luctusvulputate.com','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','62181431177','550259402','2021-02-16 15:21:34',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produto` (
  `produto_id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preco` float NOT NULL DEFAULT 0,
  `quantidade` int(11) NOT NULL DEFAULT 0,
  `codigo_de_barras` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_alteracao` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`produto_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'Mouse','Padrão',20,25,NULL,'2021-02-18 12:59:59'),(2,'Teclado','Padrão',30,20,NULL,'2021-02-18 12:59:59'),(3,'Pen Drive','32 GB',35,50,NULL,'2021-02-18 12:59:59'),(4,'Roteador',NULL,150,10,NULL,'2021-02-18 12:32:07'),(5,'Webcam',NULL,80,15,NULL,'2021-02-18 12:32:07');
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-10 20:05:33
