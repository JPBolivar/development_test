CREATE DATABASE  IF NOT EXISTS `development_test_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `development_test_db`;
-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: development_test_db
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add aerolinea',7,'add_aerolinea'),(26,'Can change aerolinea',7,'change_aerolinea'),(27,'Can delete aerolinea',7,'delete_aerolinea'),(28,'Can view aerolinea',7,'view_aerolinea'),(29,'Can add aeropuerto',8,'add_aeropuerto'),(30,'Can change aeropuerto',8,'change_aeropuerto'),(31,'Can delete aeropuerto',8,'delete_aeropuerto'),(32,'Can view aeropuerto',8,'view_aeropuerto'),(33,'Can add avion',9,'add_avion'),(34,'Can change avion',9,'change_avion'),(35,'Can delete avion',9,'delete_avion'),(36,'Can view avion',9,'view_avion'),(37,'Can add vuelo',10,'add_vuelo'),(38,'Can change vuelo',10,'change_vuelo'),(39,'Can delete vuelo',10,'delete_vuelo'),(40,'Can view vuelo',10,'view_vuelo'),(41,'Can add vuelo avion',11,'add_vueloavion'),(42,'Can change vuelo avion',11,'change_vueloavion'),(43,'Can delete vuelo avion',11,'delete_vueloavion'),(44,'Can view vuelo avion',11,'view_vueloavion'),(45,'Can add tarifa',12,'add_tarifa'),(46,'Can change tarifa',12,'change_tarifa'),(47,'Can delete tarifa',12,'delete_tarifa'),(48,'Can view tarifa',12,'view_tarifa'),(49,'Can add asiento',13,'add_asiento'),(50,'Can change asiento',13,'change_asiento'),(51,'Can delete asiento',13,'delete_asiento'),(52,'Can view asiento',13,'view_asiento'),(53,'Can add itinerario',14,'add_itinerario'),(54,'Can change itinerario',14,'change_itinerario'),(55,'Can delete itinerario',14,'delete_itinerario'),(56,'Can view itinerario',14,'view_itinerario'),(57,'Can add reserva',15,'add_reserva'),(58,'Can change reserva',15,'change_reserva'),(59,'Can delete reserva',15,'delete_reserva'),(60,'Can view reserva',15,'view_reserva'),(61,'Can add pasajero',16,'add_pasajero'),(62,'Can change pasajero',16,'change_pasajero'),(63,'Can delete pasajero',16,'delete_pasajero'),(64,'Can view pasajero',16,'view_pasajero'),(65,'Can add reserva pasajero',17,'add_reservapasajero'),(66,'Can change reserva pasajero',17,'change_reservapasajero'),(67,'Can delete reserva pasajero',17,'delete_reservapasajero'),(68,'Can view reserva pasajero',17,'view_reservapasajero'),(69,'Can add pago',18,'add_pago'),(70,'Can change pago',18,'change_pago'),(71,'Can delete pago',18,'delete_pago'),(72,'Can view pago',18,'view_pago'),(73,'Can add pago tarjeta',19,'add_pagotarjeta'),(74,'Can change pago tarjeta',19,'change_pagotarjeta'),(75,'Can delete pago tarjeta',19,'delete_pagotarjeta'),(76,'Can view pago tarjeta',19,'view_pagotarjeta'),(77,'Can add tarjeta',20,'add_tarjeta'),(78,'Can change tarjeta',20,'change_tarjeta'),(79,'Can delete tarjeta',20,'delete_tarjeta'),(80,'Can view tarjeta',20,'view_tarjeta');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$150000$ORoggjeVPpez$Ild1wEzYJKi+HccyVbM4o/Z8usLdOhx2WTPDEX2PQUo=','2019-09-18 19:07:17.750726',1,'root','','','',1,1,'2019-09-18 19:07:05.822552');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-09-18 19:13:49.377687','1','Terminal Gonzalo Mejia - Medellin',1,'[{\"added\": {}}]',8,1),(2,'2019-09-18 19:14:29.496251','2','Aeropueto Internacional Olaya Herrera - Medellin',1,'[{\"added\": {}}]',8,1),(3,'2019-09-18 19:15:34.454385','3','Aeropuerto Internacional El Dorado - Bogotá',1,'[{\"added\": {}}]',8,1),(4,'2019-09-18 19:16:13.416490','Avianca','Avianca',1,'[{\"added\": {}}]',7,1),(5,'2019-09-18 19:16:27.755076','1','Modelo: A318 - Capacidad: 107 personas',1,'[{\"added\": {}}]',9,1),(6,'2019-09-18 19:16:38.185751','2','Modelo: B717 - Capacidad: 154 personas',1,'[{\"added\": {}}]',9,1),(7,'2019-09-18 19:18:09.229000','1','Avianca: Terminal Gonzalo Mejia - Medellin - Aeropuerto Internacional El Dorado - Bogotá :: 584',1,'[{\"added\": {}}]',10,1),(8,'2019-09-18 19:18:23.712212','2','Avianca: Aeropueto Internacional Olaya Herrera - Medellin - Aeropuerto Internacional El Dorado - Bogotá :: 245',1,'[{\"added\": {}}]',10,1),(9,'2019-09-18 19:18:30.778806','3','Avianca: Aeropuerto Internacional El Dorado - Bogotá - Terminal Gonzalo Mejia - Medellin :: 333',1,'[{\"added\": {}}]',10,1),(10,'2019-09-18 19:18:48.606937','4','Avianca: Aeropuerto Internacional El Dorado - Bogotá - Aeropueto Internacional Olaya Herrera - Medellin :: 451',1,'[{\"added\": {}}]',10,1),(11,'2019-09-18 19:19:50.474757','1','Avianca: Terminal Gonzalo Mejia - Medellin - Aeropuerto Internacional El Dorado - Bogotá :: 584 - Modelo: A318 - Capacidad: 107 personas',1,'[{\"added\": {}}]',11,1),(12,'2019-09-18 19:19:57.488969','2','Avianca: Aeropuerto Internacional El Dorado - Bogotá - Terminal Gonzalo Mejia - Medellin :: 333 - Modelo: A318 - Capacidad: 107 personas',1,'[{\"added\": {}}]',11,1),(13,'2019-09-18 19:20:02.649296','3','Avianca: Aeropueto Internacional Olaya Herrera - Medellin - Aeropuerto Internacional El Dorado - Bogotá :: 245 - Modelo: B717 - Capacidad: 154 personas',1,'[{\"added\": {}}]',11,1),(14,'2019-09-18 19:20:12.758014','4','Avianca: Aeropuerto Internacional El Dorado - Bogotá - Aeropueto Internacional Olaya Herrera - Medellin :: 451 - Modelo: B717 - Capacidad: 154 personas',1,'[{\"added\": {}}]',11,1),(15,'2019-09-18 19:21:09.483579','1','Avianca: Terminal Gonzalo Mejia - Medellin - Aeropuerto Internacional El Dorado - Bogotá :: 584 - EJ: 58000',1,'[{\"added\": {}}]',12,1),(16,'2019-09-18 19:21:57.469532','2','Avianca: Terminal Gonzalo Mejia - Medellin - Aeropuerto Internacional El Dorado - Bogotá :: 584 - EC: 42000',1,'[{\"added\": {}}]',12,1),(17,'2019-09-18 19:22:21.038705','3','Avianca: Aeropueto Internacional Olaya Herrera - Medellin - Aeropuerto Internacional El Dorado - Bogotá :: 245 - EJ: 58000',1,'[{\"added\": {}}]',12,1),(18,'2019-09-18 19:22:39.513556','4','Avianca: Aeropueto Internacional Olaya Herrera - Medellin - Aeropuerto Internacional El Dorado - Bogotá :: 245 - EC: 42000',1,'[{\"added\": {}}]',12,1),(19,'2019-09-18 19:23:00.481335','5','Avianca: Aeropuerto Internacional El Dorado - Bogotá - Terminal Gonzalo Mejia - Medellin :: 333 - EJ: 61000',1,'[{\"added\": {}}]',12,1),(20,'2019-09-18 19:23:19.196969','6','Avianca: Aeropuerto Internacional El Dorado - Bogotá - Terminal Gonzalo Mejia - Medellin :: 333 - EC: 47000',1,'[{\"added\": {}}]',12,1),(21,'2019-09-18 19:24:44.780650','7','Avianca: Aeropuerto Internacional El Dorado - Bogotá - Aeropueto Internacional Olaya Herrera - Medellin :: 451 - EJ: 61000',1,'[{\"added\": {}}]',12,1),(22,'2019-09-18 19:25:21.652157','8','Avianca: Aeropuerto Internacional El Dorado - Bogotá - Aeropueto Internacional Olaya Herrera - Medellin :: 451 - EC: 47000',1,'[{\"added\": {}}]',12,1),(23,'2019-09-18 19:25:53.182030','1','Avianca: Terminal Gonzalo Mejia - Medellin - Aeropuerto Internacional El Dorado - Bogotá :: 584 - A1',1,'[{\"added\": {}}]',13,1),(24,'2019-09-18 19:26:00.151240','2','Avianca: Terminal Gonzalo Mejia - Medellin - Aeropuerto Internacional El Dorado - Bogotá :: 584 - A2',1,'[{\"added\": {}}]',13,1),(25,'2019-09-18 19:26:09.267124','3','Avianca: Terminal Gonzalo Mejia - Medellin - Aeropuerto Internacional El Dorado - Bogotá :: 584 - A3',1,'[{\"added\": {}}]',13,1),(26,'2019-09-18 19:26:15.729821','4','Avianca: Terminal Gonzalo Mejia - Medellin - Aeropuerto Internacional El Dorado - Bogotá :: 584 - B1',1,'[{\"added\": {}}]',13,1),(27,'2019-09-18 19:26:22.256036','5','Avianca: Terminal Gonzalo Mejia - Medellin - Aeropuerto Internacional El Dorado - Bogotá :: 584 - B2',1,'[{\"added\": {}}]',13,1),(28,'2019-09-18 19:26:40.297870','6','Avianca: Terminal Gonzalo Mejia - Medellin - Aeropuerto Internacional El Dorado - Bogotá :: 584 - B3',1,'[{\"added\": {}}]',13,1),(29,'2019-09-18 19:27:25.383747','7','Avianca: Aeropueto Internacional Olaya Herrera - Medellin - Aeropuerto Internacional El Dorado - Bogotá :: 245 - A1',1,'[{\"added\": {}}]',13,1),(30,'2019-09-18 19:27:29.470206','8','Avianca: Aeropueto Internacional Olaya Herrera - Medellin - Aeropuerto Internacional El Dorado - Bogotá :: 245 - A2',1,'[{\"added\": {}}]',13,1),(31,'2019-09-18 19:27:33.484721','9','Avianca: Aeropueto Internacional Olaya Herrera - Medellin - Aeropuerto Internacional El Dorado - Bogotá :: 245 - A3',1,'[{\"added\": {}}]',13,1),(32,'2019-09-18 19:27:39.310006','10','Avianca: Aeropueto Internacional Olaya Herrera - Medellin - Aeropuerto Internacional El Dorado - Bogotá :: 245 - B1',1,'[{\"added\": {}}]',13,1),(33,'2019-09-18 19:27:45.521261','11','Avianca: Aeropueto Internacional Olaya Herrera - Medellin - Aeropuerto Internacional El Dorado - Bogotá :: 245 - B2',1,'[{\"added\": {}}]',13,1),(34,'2019-09-18 19:27:51.833503','12','Avianca: Aeropueto Internacional Olaya Herrera - Medellin - Aeropuerto Internacional El Dorado - Bogotá :: 245 - b3',1,'[{\"added\": {}}]',13,1),(35,'2019-09-18 19:28:14.772728','13','Avianca: Aeropuerto Internacional El Dorado - Bogotá - Terminal Gonzalo Mejia - Medellin :: 333 - A1',1,'[{\"added\": {}}]',13,1),(36,'2019-09-18 19:28:19.447129','14','Avianca: Aeropuerto Internacional El Dorado - Bogotá - Terminal Gonzalo Mejia - Medellin :: 333 - A2',1,'[{\"added\": {}}]',13,1),(37,'2019-09-18 19:28:24.148564','15','Avianca: Aeropuerto Internacional El Dorado - Bogotá - Terminal Gonzalo Mejia - Medellin :: 333 - A3',1,'[{\"added\": {}}]',13,1),(38,'2019-09-18 19:28:33.299467','16','Avianca: Aeropuerto Internacional El Dorado - Bogotá - Terminal Gonzalo Mejia - Medellin :: 333 - B1',1,'[{\"added\": {}}]',13,1),(39,'2019-09-18 19:28:41.199517','17','Avianca: Aeropuerto Internacional El Dorado - Bogotá - Terminal Gonzalo Mejia - Medellin :: 333 - B2',1,'[{\"added\": {}}]',13,1),(40,'2019-09-18 19:28:46.646864','18','Avianca: Aeropuerto Internacional El Dorado - Bogotá - Terminal Gonzalo Mejia - Medellin :: 333 - B3',1,'[{\"added\": {}}]',13,1),(41,'2019-09-18 19:28:52.949063','19','Avianca: Aeropuerto Internacional El Dorado - Bogotá - Aeropueto Internacional Olaya Herrera - Medellin :: 451 - A1',1,'[{\"added\": {}}]',13,1),(42,'2019-09-18 19:28:57.388531','20','Avianca: Aeropuerto Internacional El Dorado - Bogotá - Aeropueto Internacional Olaya Herrera - Medellin :: 451 - A2',1,'[{\"added\": {}}]',13,1),(43,'2019-09-18 19:29:01.898989','21','Avianca: Aeropuerto Internacional El Dorado - Bogotá - Aeropueto Internacional Olaya Herrera - Medellin :: 451 - A3',1,'[{\"added\": {}}]',13,1),(44,'2019-09-18 19:29:06.438445','22','Avianca: Aeropuerto Internacional El Dorado - Bogotá - Aeropueto Internacional Olaya Herrera - Medellin :: 451 - B1',1,'[{\"added\": {}}]',13,1),(45,'2019-09-18 19:29:10.786921','23','Avianca: Aeropuerto Internacional El Dorado - Bogotá - Aeropueto Internacional Olaya Herrera - Medellin :: 451 - B2',1,'[{\"added\": {}}]',13,1),(46,'2019-09-18 19:29:15.495358','24','Avianca: Aeropuerto Internacional El Dorado - Bogotá - Aeropueto Internacional Olaya Herrera - Medellin :: 451 - B3',1,'[{\"added\": {}}]',13,1),(47,'2019-09-18 19:30:05.408663','1','Avianca: Terminal Gonzalo Mejia - Medellin - Aeropuerto Internacional El Dorado - Bogotá :: 584 - L - 08:00:00',1,'[{\"added\": {}}]',14,1),(48,'2019-09-18 19:30:17.102696','2','Avianca: Terminal Gonzalo Mejia - Medellin - Aeropuerto Internacional El Dorado - Bogotá :: 584 - L - 10:00:00',1,'[{\"added\": {}}]',14,1),(49,'2019-09-18 19:30:26.232601','3','Avianca: Terminal Gonzalo Mejia - Medellin - Aeropuerto Internacional El Dorado - Bogotá :: 584 - L - 12:00:00',1,'[{\"added\": {}}]',14,1),(50,'2019-09-18 19:30:40.901853','4','Avianca: Terminal Gonzalo Mejia - Medellin - Aeropuerto Internacional El Dorado - Bogotá :: 584 - L - 16:00:00',1,'[{\"added\": {}}]',14,1),(51,'2019-09-18 19:30:52.970321','2','Avianca: Terminal Gonzalo Mejia - Medellin - Aeropuerto Internacional El Dorado - Bogotá :: 584 - L - 10:00:00',3,'',14,1),(52,'2019-09-18 19:32:16.909048','5','Avianca: Aeropuerto Internacional El Dorado - Bogotá - Terminal Gonzalo Mejia - Medellin :: 333 - L - 10:00:00',1,'[{\"added\": {}}]',14,1),(53,'2019-09-18 19:32:36.268687','6','Avianca: Aeropuerto Internacional El Dorado - Bogotá - Terminal Gonzalo Mejia - Medellin :: 333 - L - 14:00:00',1,'[{\"added\": {}}]',14,1),(54,'2019-09-18 19:32:47.676748','7','Avianca: Aeropueto Internacional Olaya Herrera - Medellin - Aeropuerto Internacional El Dorado - Bogotá :: 245 - L - 07:00:00',1,'[{\"added\": {}}]',14,1),(55,'2019-09-18 19:32:57.833495','8','Avianca: Aeropueto Internacional Olaya Herrera - Medellin - Aeropuerto Internacional El Dorado - Bogotá :: 245 - L - 09:00:00',1,'[{\"added\": {}}]',14,1),(56,'2019-09-18 19:33:34.318803','9','Avianca: Aeropueto Internacional Olaya Herrera - Medellin - Aeropuerto Internacional El Dorado - Bogotá :: 245 - L - 11:00:00',1,'[{\"added\": {}}]',14,1),(57,'2019-09-18 19:33:44.779510','8','Avianca: Aeropueto Internacional Olaya Herrera - Medellin - Aeropuerto Internacional El Dorado - Bogotá :: 245 - L - 09:00:00',3,'',14,1),(58,'2019-09-18 19:34:04.835437','10','Avianca: Aeropueto Internacional Olaya Herrera - Medellin - Aeropuerto Internacional El Dorado - Bogotá :: 245 - L - 15:00:00',1,'[{\"added\": {}}]',14,1),(59,'2019-09-18 19:34:13.657422','11','Avianca: Aeropuerto Internacional El Dorado - Bogotá - Aeropueto Internacional Olaya Herrera - Medellin :: 451 - L - 09:00:00',1,'[{\"added\": {}}]',14,1),(60,'2019-09-18 19:34:24.653550','12','Avianca: Aeropuerto Internacional El Dorado - Bogotá - Aeropueto Internacional Olaya Herrera - Medellin :: 451 - L - 13:00:00',1,'[{\"added\": {}}]',14,1),(61,'2019-09-18 19:34:35.549947','13','Avianca: Aeropuerto Internacional El Dorado - Bogotá - Aeropueto Internacional Olaya Herrera - Medellin :: 451 - L - 17:00:00',1,'[{\"added\": {}}]',14,1),(62,'2019-09-18 22:39:41.864026','13','Avianca: Aeropuerto Internacional El Dorado - Bogotá - Aeropueto Internacional Olaya Herrera - Medellin :: 451 - Mon - 17:00:00',2,'[{\"changed\": {\"fields\": [\"dia\"]}}]',14,1),(63,'2019-09-18 22:39:45.898582','12','Avianca: Aeropuerto Internacional El Dorado - Bogotá - Aeropueto Internacional Olaya Herrera - Medellin :: 451 - Mon - 13:00:00',2,'[{\"changed\": {\"fields\": [\"dia\"]}}]',14,1),(64,'2019-09-18 22:39:50.208036','11','Avianca: Aeropuerto Internacional El Dorado - Bogotá - Aeropueto Internacional Olaya Herrera - Medellin :: 451 - Mon - 09:00:00',2,'[{\"changed\": {\"fields\": [\"dia\"]}}]',14,1),(65,'2019-09-18 22:39:54.419535','11','Avianca: Aeropuerto Internacional El Dorado - Bogotá - Aeropueto Internacional Olaya Herrera - Medellin :: 451 - Mon - 09:00:00',2,'[]',14,1),(66,'2019-09-18 22:40:00.242845','10','Avianca: Aeropueto Internacional Olaya Herrera - Medellin - Aeropuerto Internacional El Dorado - Bogotá :: 245 - Mon - 15:00:00',2,'[{\"changed\": {\"fields\": [\"dia\"]}}]',14,1),(67,'2019-09-18 22:40:06.040157','9','Avianca: Aeropueto Internacional Olaya Herrera - Medellin - Aeropuerto Internacional El Dorado - Bogotá :: 245 - Mon - 11:00:00',2,'[{\"changed\": {\"fields\": [\"dia\"]}}]',14,1),(68,'2019-09-18 22:40:10.771596','7','Avianca: Aeropueto Internacional Olaya Herrera - Medellin - Aeropuerto Internacional El Dorado - Bogotá :: 245 - Mon - 07:00:00',2,'[{\"changed\": {\"fields\": [\"dia\"]}}]',14,1),(69,'2019-09-18 22:40:15.084081','6','Avianca: Aeropuerto Internacional El Dorado - Bogotá - Terminal Gonzalo Mejia - Medellin :: 333 - Mon - 14:00:00',2,'[{\"changed\": {\"fields\": [\"dia\"]}}]',14,1),(70,'2019-09-18 22:40:22.019258','6','Avianca: Aeropuerto Internacional El Dorado - Bogotá - Terminal Gonzalo Mejia - Medellin :: 333 - Mon - 14:00:00',2,'[]',14,1),(71,'2019-09-18 22:40:25.986789','5','Avianca: Aeropuerto Internacional El Dorado - Bogotá - Terminal Gonzalo Mejia - Medellin :: 333 - Mon - 10:00:00',2,'[{\"changed\": {\"fields\": [\"dia\"]}}]',14,1),(72,'2019-09-18 22:40:31.405143','4','Avianca: Terminal Gonzalo Mejia - Medellin - Aeropuerto Internacional El Dorado - Bogotá :: 584 - Mon - 16:00:00',2,'[{\"changed\": {\"fields\": [\"dia\"]}}]',14,1),(73,'2019-09-18 22:40:36.273567','3','Avianca: Terminal Gonzalo Mejia - Medellin - Aeropuerto Internacional El Dorado - Bogotá :: 584 - Mon - 12:00:00',2,'[{\"changed\": {\"fields\": [\"dia\"]}}]',14,1),(74,'2019-09-18 22:40:40.223096','1','Avianca: Terminal Gonzalo Mejia - Medellin - Aeropuerto Internacional El Dorado - Bogotá :: 584 - Mon - 08:00:00',2,'[{\"changed\": {\"fields\": [\"dia\"]}}]',14,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'flight_search','aerolinea'),(8,'flight_search','aeropuerto'),(13,'flight_search','asiento'),(9,'flight_search','avion'),(14,'flight_search','itinerario'),(18,'flight_search','pago'),(19,'flight_search','pagotarjeta'),(16,'flight_search','pasajero'),(15,'flight_search','reserva'),(17,'flight_search','reservapasajero'),(12,'flight_search','tarifa'),(20,'flight_search','tarjeta'),(10,'flight_search','vuelo'),(11,'flight_search','vueloavion'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-09-18 18:00:59.506500'),(2,'auth','0001_initial','2019-09-18 18:01:03.205005'),(3,'admin','0001_initial','2019-09-18 18:01:30.140981'),(4,'admin','0002_logentry_remove_auto_add','2019-09-18 18:01:35.011200'),(5,'admin','0003_logentry_add_action_flag_choices','2019-09-18 18:01:35.174176'),(6,'contenttypes','0002_remove_content_type_name','2019-09-18 18:01:40.394395'),(7,'auth','0002_alter_permission_name_max_length','2019-09-18 18:01:43.022003'),(8,'auth','0003_alter_user_email_max_length','2019-09-18 18:01:43.682958'),(9,'auth','0004_alter_user_username_opts','2019-09-18 18:01:43.794920'),(10,'auth','0005_alter_user_last_login_null','2019-09-18 18:01:45.171737'),(11,'auth','0006_require_contenttypes_0002','2019-09-18 18:01:45.245671'),(12,'auth','0007_alter_validators_add_error_messages','2019-09-18 18:01:45.379651'),(13,'auth','0008_alter_user_username_max_length','2019-09-18 18:01:47.384350'),(14,'auth','0009_alter_user_last_name_max_length','2019-09-18 18:01:49.161087'),(15,'auth','0010_alter_group_name_max_length','2019-09-18 18:01:51.527833'),(16,'auth','0011_update_proxy_permissions','2019-09-18 18:01:51.666817'),(17,'flight_search','0001_initial','2019-09-18 18:01:57.866769'),(18,'sessions','0001_initial','2019-09-18 18:02:18.932607'),(19,'flight_search','0002_itinerario','2019-09-18 18:11:16.761923'),(20,'flight_search','0003_pasajero_reserva_reservapasajero','2019-09-18 18:29:16.084836'),(21,'flight_search','0004_pago','2019-09-18 18:39:54.205569'),(22,'flight_search','0005_pagotarjeta_tarjeta','2019-09-18 18:52:15.461041'),(23,'flight_search','0006_auto_20190918_1736','2019-09-18 22:37:01.894232');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('lvxs71pix9zcakob7rynlwziaxrxktea','YjMzNjM2NWVkMDhjNmUzYTdkMmVmZjdlYWU4NzFlZWQ4YzdlMzMxZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyYzk2ZWVhMzU1NmExMWFiNjI1NTc4MzY5MzI3OTc5ODhjYjEzZDM5In0=','2019-10-02 19:07:17.901764');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flight_search_aerolinea`
--

DROP TABLE IF EXISTS `flight_search_aerolinea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flight_search_aerolinea` (
  `nombre` varchar(40) NOT NULL,
  `codigolata` varchar(30) NOT NULL,
  PRIMARY KEY (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight_search_aerolinea`
--

LOCK TABLES `flight_search_aerolinea` WRITE;
/*!40000 ALTER TABLE `flight_search_aerolinea` DISABLE KEYS */;
INSERT INTO `flight_search_aerolinea` VALUES ('Avianca','333333333333333333333333333333');
/*!40000 ALTER TABLE `flight_search_aerolinea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flight_search_aeropuerto`
--

DROP TABLE IF EXISTS `flight_search_aeropuerto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flight_search_aeropuerto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(40) NOT NULL,
  `codigolata` varchar(30) NOT NULL,
  `ciudad` varchar(25) NOT NULL,
  `pais` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight_search_aeropuerto`
--

LOCK TABLES `flight_search_aeropuerto` WRITE;
/*!40000 ALTER TABLE `flight_search_aeropuerto` DISABLE KEYS */;
INSERT INTO `flight_search_aeropuerto` VALUES (1,'Terminal Gonzalo Mejia','111111111111111111111111111111','Medellin','Colombia'),(2,'Aeropueto Internacional Olaya Herrera','111111111111111222222222222222','Medellin','Colombia'),(3,'Aeropuerto Internacional El Dorado','222222222222222222222222222222','Bogotá','Colombia');
/*!40000 ALTER TABLE `flight_search_aeropuerto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flight_search_asiento`
--

DROP TABLE IF EXISTS `flight_search_asiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flight_search_asiento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fila` int(11) NOT NULL,
  `letra` varchar(2) NOT NULL,
  `vueloId_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `flight_search_asient_vueloId_id_8e567777_fk_flight_se` (`vueloId_id`),
  CONSTRAINT `flight_search_asient_vueloId_id_8e567777_fk_flight_se` FOREIGN KEY (`vueloId_id`) REFERENCES `flight_search_vuelo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight_search_asiento`
--

LOCK TABLES `flight_search_asiento` WRITE;
/*!40000 ALTER TABLE `flight_search_asiento` DISABLE KEYS */;
INSERT INTO `flight_search_asiento` VALUES (1,1,'A',1),(2,2,'A',1),(3,3,'A',1),(4,1,'B',1),(5,2,'B',1),(6,3,'B',1),(7,1,'A',2),(8,2,'A',2),(9,3,'A',2),(10,1,'B',2),(11,2,'B',2),(12,3,'b',2),(13,1,'A',3),(14,2,'A',3),(15,3,'A',3),(16,1,'B',3),(17,2,'B',3),(18,3,'B',3),(19,1,'A',4),(20,2,'A',4),(21,3,'A',4),(22,1,'B',4),(23,2,'B',4),(24,3,'B',4);
/*!40000 ALTER TABLE `flight_search_asiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flight_search_avion`
--

DROP TABLE IF EXISTS `flight_search_avion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flight_search_avion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modeloAvion` varchar(40) NOT NULL,
  `nroPasajeros` int(11) NOT NULL,
  `aerolineaId` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `flight_search_avion_aerolineaId_75e28c48_fk_flight_se` (`aerolineaId`),
  CONSTRAINT `flight_search_avion_aerolineaId_75e28c48_fk_flight_se` FOREIGN KEY (`aerolineaId`) REFERENCES `flight_search_aerolinea` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight_search_avion`
--

LOCK TABLES `flight_search_avion` WRITE;
/*!40000 ALTER TABLE `flight_search_avion` DISABLE KEYS */;
INSERT INTO `flight_search_avion` VALUES (1,'A318',107,'Avianca'),(2,'B717',154,'Avianca');
/*!40000 ALTER TABLE `flight_search_avion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flight_search_itinerario`
--

DROP TABLE IF EXISTS `flight_search_itinerario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flight_search_itinerario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dia` varchar(40) NOT NULL,
  `hora` time(6) NOT NULL,
  `vueloId_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `flight_search_itiner_vueloId_id_a4747699_fk_flight_se` (`vueloId_id`),
  CONSTRAINT `flight_search_itiner_vueloId_id_a4747699_fk_flight_se` FOREIGN KEY (`vueloId_id`) REFERENCES `flight_search_vuelo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight_search_itinerario`
--

LOCK TABLES `flight_search_itinerario` WRITE;
/*!40000 ALTER TABLE `flight_search_itinerario` DISABLE KEYS */;
INSERT INTO `flight_search_itinerario` VALUES (1,'Mon','08:00:00.000000',1),(3,'Mon','12:00:00.000000',1),(4,'Mon','16:00:00.000000',1),(5,'Mon','10:00:00.000000',3),(6,'Mon','14:00:00.000000',3),(7,'Mon','07:00:00.000000',2),(9,'Mon','11:00:00.000000',2),(10,'Mon','15:00:00.000000',2),(11,'Mon','09:00:00.000000',4),(12,'Mon','13:00:00.000000',4),(13,'Mon','17:00:00.000000',4);
/*!40000 ALTER TABLE `flight_search_itinerario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flight_search_pago`
--

DROP TABLE IF EXISTS `flight_search_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flight_search_pago` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime(6) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `reservaId_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `flight_search_pago_reservaId_id_9494660f_fk_flight_se` (`reservaId_id`),
  CONSTRAINT `flight_search_pago_reservaId_id_9494660f_fk_flight_se` FOREIGN KEY (`reservaId_id`) REFERENCES `flight_search_reserva` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight_search_pago`
--

LOCK TABLES `flight_search_pago` WRITE;
/*!40000 ALTER TABLE `flight_search_pago` DISABLE KEYS */;
/*!40000 ALTER TABLE `flight_search_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flight_search_pagotarjeta`
--

DROP TABLE IF EXISTS `flight_search_pagotarjeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flight_search_pagotarjeta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pagoId_id` int(11) NOT NULL,
  `tarjetaId_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `flight_search_pagota_pagoId_id_707e8943_fk_flight_se` (`pagoId_id`),
  KEY `flight_search_pagota_tarjetaId_id_cf50f398_fk_flight_se` (`tarjetaId_id`),
  CONSTRAINT `flight_search_pagota_pagoId_id_707e8943_fk_flight_se` FOREIGN KEY (`pagoId_id`) REFERENCES `flight_search_pago` (`id`),
  CONSTRAINT `flight_search_pagota_tarjetaId_id_cf50f398_fk_flight_se` FOREIGN KEY (`tarjetaId_id`) REFERENCES `flight_search_tarjeta` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight_search_pagotarjeta`
--

LOCK TABLES `flight_search_pagotarjeta` WRITE;
/*!40000 ALTER TABLE `flight_search_pagotarjeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `flight_search_pagotarjeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flight_search_pasajero`
--

DROP TABLE IF EXISTS `flight_search_pasajero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flight_search_pasajero` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `direccion` varchar(20) NOT NULL,
  `ciudad` varchar(30) NOT NULL,
  `pais` varchar(30) NOT NULL,
  `telCasa` varchar(30) NOT NULL,
  `telMobile` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight_search_pasajero`
--

LOCK TABLES `flight_search_pasajero` WRITE;
/*!40000 ALTER TABLE `flight_search_pasajero` DISABLE KEYS */;
/*!40000 ALTER TABLE `flight_search_pasajero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flight_search_reserva`
--

DROP TABLE IF EXISTS `flight_search_reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flight_search_reserva` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clave` varchar(20) NOT NULL,
  `costoTotal` int(11) NOT NULL,
  `vueloId_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `flight_search_reserv_vueloId_id_2e777d21_fk_flight_se` (`vueloId_id`),
  CONSTRAINT `flight_search_reserv_vueloId_id_2e777d21_fk_flight_se` FOREIGN KEY (`vueloId_id`) REFERENCES `flight_search_vuelo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight_search_reserva`
--

LOCK TABLES `flight_search_reserva` WRITE;
/*!40000 ALTER TABLE `flight_search_reserva` DISABLE KEYS */;
/*!40000 ALTER TABLE `flight_search_reserva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flight_search_reservapasajero`
--

DROP TABLE IF EXISTS `flight_search_reservapasajero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flight_search_reservapasajero` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pasajeroId_id` int(11) NOT NULL,
  `reservaId_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `flight_search_reserv_pasajeroId_id_9dd062b8_fk_flight_se` (`pasajeroId_id`),
  KEY `flight_search_reserv_reservaId_id_d2675fd3_fk_flight_se` (`reservaId_id`),
  CONSTRAINT `flight_search_reserv_pasajeroId_id_9dd062b8_fk_flight_se` FOREIGN KEY (`pasajeroId_id`) REFERENCES `flight_search_pasajero` (`id`),
  CONSTRAINT `flight_search_reserv_reservaId_id_d2675fd3_fk_flight_se` FOREIGN KEY (`reservaId_id`) REFERENCES `flight_search_reserva` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight_search_reservapasajero`
--

LOCK TABLES `flight_search_reservapasajero` WRITE;
/*!40000 ALTER TABLE `flight_search_reservapasajero` DISABLE KEYS */;
/*!40000 ALTER TABLE `flight_search_reservapasajero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flight_search_tarifa`
--

DROP TABLE IF EXISTS `flight_search_tarifa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flight_search_tarifa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clase` varchar(40) NOT NULL,
  `precio` bigint(20) NOT NULL,
  `impuestos` bigint(20) NOT NULL,
  `vueloId_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `flight_search_tarifa_vueloId_id_efbb10a0_fk_flight_se` (`vueloId_id`),
  CONSTRAINT `flight_search_tarifa_vueloId_id_efbb10a0_fk_flight_se` FOREIGN KEY (`vueloId_id`) REFERENCES `flight_search_vuelo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight_search_tarifa`
--

LOCK TABLES `flight_search_tarifa` WRITE;
/*!40000 ALTER TABLE `flight_search_tarifa` DISABLE KEYS */;
INSERT INTO `flight_search_tarifa` VALUES (1,'EJ',58000,4500,1),(2,'EC',42000,3100,1),(3,'EJ',58000,4500,2),(4,'EC',42000,3100,2),(5,'EJ',61000,5000,3),(6,'EC',47000,3500,3),(7,'EJ',61000,5200,4),(8,'EC',47000,3600,4);
/*!40000 ALTER TABLE `flight_search_tarifa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flight_search_tarjeta`
--

DROP TABLE IF EXISTS `flight_search_tarjeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flight_search_tarjeta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `numero` varchar(30) NOT NULL,
  `tipo` varchar(40) NOT NULL,
  `fecha` date NOT NULL,
  `vencimiento` date NOT NULL,
  `propietarioId_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `flight_search_tarjet_propietarioId_id_8398d3d9_fk_flight_se` (`propietarioId_id`),
  CONSTRAINT `flight_search_tarjet_propietarioId_id_8398d3d9_fk_flight_se` FOREIGN KEY (`propietarioId_id`) REFERENCES `flight_search_pasajero` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight_search_tarjeta`
--

LOCK TABLES `flight_search_tarjeta` WRITE;
/*!40000 ALTER TABLE `flight_search_tarjeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `flight_search_tarjeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flight_search_vuelo`
--

DROP TABLE IF EXISTS `flight_search_vuelo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flight_search_vuelo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nroVuelo` varchar(30) NOT NULL,
  `aerolineaId` varchar(40) NOT NULL,
  `destinoId_id` int(11) NOT NULL,
  `origenId_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `flight_search_vuelo_aerolineaId_70274d57_fk_flight_se` (`aerolineaId`),
  KEY `flight_search_vuelo_destinoId_id_55ee789d_fk_flight_se` (`destinoId_id`),
  KEY `flight_search_vuelo_origenId_id_dd86367e_fk_flight_se` (`origenId_id`),
  CONSTRAINT `flight_search_vuelo_aerolineaId_70274d57_fk_flight_se` FOREIGN KEY (`aerolineaId`) REFERENCES `flight_search_aerolinea` (`nombre`),
  CONSTRAINT `flight_search_vuelo_destinoId_id_55ee789d_fk_flight_se` FOREIGN KEY (`destinoId_id`) REFERENCES `flight_search_aeropuerto` (`id`),
  CONSTRAINT `flight_search_vuelo_origenId_id_dd86367e_fk_flight_se` FOREIGN KEY (`origenId_id`) REFERENCES `flight_search_aeropuerto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight_search_vuelo`
--

LOCK TABLES `flight_search_vuelo` WRITE;
/*!40000 ALTER TABLE `flight_search_vuelo` DISABLE KEYS */;
INSERT INTO `flight_search_vuelo` VALUES (1,'584','Avianca',3,1),(2,'245','Avianca',3,2),(3,'333','Avianca',1,3),(4,'451','Avianca',2,3);
/*!40000 ALTER TABLE `flight_search_vuelo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flight_search_vueloavion`
--

DROP TABLE IF EXISTS `flight_search_vueloavion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flight_search_vueloavion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `avionId` int(11) NOT NULL,
  `vueloId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `flight_search_vueloa_avionId_ceac8ed4_fk_flight_se` (`avionId`),
  KEY `flight_search_vueloa_vueloId_bfc181ff_fk_flight_se` (`vueloId`),
  CONSTRAINT `flight_search_vueloa_avionId_ceac8ed4_fk_flight_se` FOREIGN KEY (`avionId`) REFERENCES `flight_search_avion` (`id`),
  CONSTRAINT `flight_search_vueloa_vueloId_bfc181ff_fk_flight_se` FOREIGN KEY (`vueloId`) REFERENCES `flight_search_vuelo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight_search_vueloavion`
--

LOCK TABLES `flight_search_vueloavion` WRITE;
/*!40000 ALTER TABLE `flight_search_vueloavion` DISABLE KEYS */;
INSERT INTO `flight_search_vueloavion` VALUES (1,1,1),(2,1,3),(3,2,2),(4,2,4);
/*!40000 ALTER TABLE `flight_search_vueloavion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-18 18:16:12
