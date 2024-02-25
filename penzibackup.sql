-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: penzi
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `api_messagefrom`
--

DROP TABLE IF EXISTS `api_messagefrom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_messagefrom` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `msisdn` varchar(15) NOT NULL,
  `message_content` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_messagefrom`
--

LOCK TABLES `api_messagefrom` WRITE;
/*!40000 ALTER TABLE `api_messagefrom` DISABLE KEYS */;
INSERT INTO `api_messagefrom` VALUES (1,'0722000001','penzi','2024-02-21 09:42:58.351611'),(2,'0722000001','start#Maggy#30#female#Kajiado#Kitengela','2024-02-21 09:45:23.609496'),(3,'0722000001','details#Diploma#teacher#married#christian#kikuyu','2024-02-21 09:45:40.422446'),(4,'0722000001','MYSELF chocolate, tall, beautiful','2024-02-21 09:45:53.615096'),(5,'0722000002','penzi','2024-02-21 09:46:13.256198'),(6,'0722000002','start#Raqy#30#female#Kajiado#Kitengela','2024-02-21 09:47:01.952353'),(7,'0722000002','details#Diploma#shopkeeper#married#christian#kikuyu','2024-02-21 09:47:33.986286'),(8,'0722000002','MYSELF chocolate tall and beautiful','2024-02-21 09:47:51.762851'),(9,'0722000003','penzi','2024-02-21 09:48:04.099477'),(10,'0722000003','start#Juliet#40#female#Kajiado#Kitengela','2024-02-21 09:48:54.370687'),(11,'0722000003','details#Diploma#teacher#married#christian#kikuyu','2024-02-21 09:49:15.519749'),(12,'0722000003','MYSELF chocolate tall and beautiful','2024-02-21 09:49:36.853991'),(13,'0722000004','penzi','2024-02-21 09:49:51.767183'),(14,'0722000004','start#Natasha#28#female#Kajiado#Kitengela','2024-02-21 09:50:39.994083'),(15,'0722000004','details#Diploma#teacher#married#christian#kikuyu','2024-02-21 09:50:54.395955'),(16,'0722000004','MYSELF chocolate tall and beautiful','2024-02-21 09:51:10.224162'),(17,'0722000005','penzi','2024-02-21 09:51:19.195956'),(18,'0722000005','start#juma#22#male#kiambu#kabete','2024-02-21 09:51:31.828508'),(19,'0722000005','details#Diploma#teacher#married#christian#kikuyu','2024-02-21 09:51:42.878887'),(20,'0722000005','MYSELF chocolate, tall, handsome','2024-02-21 09:52:03.887253'),(21,'0722000005','Match#22-40#Kitengela#female','2024-02-21 09:52:44.047346'),(22,'0722000005','match#20-40#Kitengela#female','2024-02-21 09:54:05.204325'),(23,'0722000005','match#22-40#Kitengela#female','2024-02-21 09:54:46.872491'),(24,'0722000005','match#22-40#Kitengela#female','2024-02-21 09:56:11.386073'),(25,'0722000005','match#25-40#female#Kitengela','2024-02-21 09:58:36.294308'),(26,'0722000022','match#30-40#Kasarani#female','2024-02-21 11:46:27.781778'),(27,'0722000023','match#30-40#female#Kasarani','2024-02-21 11:46:52.914466'),(28,'0722000025','match#30-40#Kitengela#female','2024-02-21 11:47:41.667154'),(29,'072200006','match#30-40#Kitengela#female','2024-02-21 11:49:51.090272'),(30,'0722000006','NEXT','2024-02-21 11:50:07.378088'),(31,'0722000006','match#30-40#Kitengela#female','2024-02-21 11:51:17.230738'),(32,'0722000006','NEXT','2024-02-21 11:52:02.295932'),(33,'0722000006','match#25-40#Kitengela#female','2024-02-21 11:53:27.677489'),(34,'0722000006','NEXT','2024-02-21 11:54:15.018675');
/*!40000 ALTER TABLE `api_messagefrom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_messageto`
--

DROP TABLE IF EXISTS `api_messageto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_messageto` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `short_code` varchar(6) NOT NULL,
  `response_content` longtext NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_messageto`
--

LOCK TABLES `api_messageto` WRITE;
/*!40000 ALTER TABLE `api_messageto` DISABLE KEYS */;
INSERT INTO `api_messageto` VALUES (1,'22141','Welcome to our dating service with 6000 potential dating partners! To register SMS start#name#age#gender#county#town to 22141. E.g., start#John Doe#26#Male#Nakuru#Naivasha','2024-02-21 09:42:59.979577'),(2,'22141','response message is empty','2024-02-21 09:43:00.180668'),(3,'22141','Your profile has been created successfully Maggy. SMS details#levelOfEducation#profession#maritalStatus#religion#ethnicity to 22141.','2024-02-21 09:45:24.735143'),(4,'22141','response message is empty','2024-02-21 09:45:25.148690'),(5,'22141','This is the last stage of registration. SMS a brief description of yourself to 22141 starting with the word MYSELF. E.g., MYSELF chocolate, lovely, sexy etc.','2024-02-21 09:45:41.470443'),(6,'22141','response message is empty','2024-02-21 09:45:42.000983'),(7,'22141','You are now registered for dating. To search for a MPENZI, SMS match#age#town#gender to 22141 and meet the person of your dreams.E.g., match#23-25#Kisumu#female','2024-02-21 09:45:53.746119'),(8,'22141','response message is empty','2024-02-21 09:45:53.867706'),(9,'22141','Welcome to our dating service with 6000 potential dating partners! To register SMS start#name#age#gender#county#town to 22141. E.g., start#John Doe#26#Male#Nakuru#Naivasha','2024-02-21 09:46:13.739152'),(10,'22141','response message is empty','2024-02-21 09:46:13.871471'),(11,'22141','Your profile has been created successfully Raqy. SMS details#levelOfEducation#profession#maritalStatus#religion#ethnicity to 22141.','2024-02-21 09:47:04.044185'),(12,'22141','response message is empty','2024-02-21 09:47:04.200053'),(13,'22141','This is the last stage of registration. SMS a brief description of yourself to 22141 starting with the word MYSELF. E.g., MYSELF chocolate, lovely, sexy etc.','2024-02-21 09:47:35.394176'),(14,'22141','response message is empty','2024-02-21 09:47:35.657871'),(15,'22141','You are now registered for dating. To search for a MPENZI, SMS match#age#town#gender to 22141 and meet the person of your dreams.E.g., match#23-25#Kisumu#female','2024-02-21 09:47:51.882435'),(16,'22141','response message is empty','2024-02-21 09:47:52.008483'),(17,'22141','Welcome to our dating service with 6000 potential dating partners! To register SMS start#name#age#gender#county#town to 22141. E.g., start#John Doe#26#Male#Nakuru#Naivasha','2024-02-21 09:48:04.656165'),(18,'22141','response message is empty','2024-02-21 09:48:04.787943'),(19,'22141','Your profile has been created successfully Juliet. SMS details#levelOfEducation#profession#maritalStatus#religion#ethnicity to 22141.','2024-02-21 09:48:54.689360'),(20,'22141','response message is empty','2024-02-21 09:48:54.776702'),(21,'22141','This is the last stage of registration. SMS a brief description of yourself to 22141 starting with the word MYSELF. E.g., MYSELF chocolate, lovely, sexy etc.','2024-02-21 09:49:15.825777'),(22,'22141','response message is empty','2024-02-21 09:49:15.979541'),(23,'22141','You are now registered for dating. To search for a MPENZI, SMS match#age#town#gender to 22141 and meet the person of your dreams.E.g., match#23-25#Kisumu#female','2024-02-21 09:49:36.941417'),(24,'22141','response message is empty','2024-02-21 09:49:37.426871'),(25,'22141','Welcome to our dating service with 6000 potential dating partners! To register SMS start#name#age#gender#county#town to 22141. E.g., start#John Doe#26#Male#Nakuru#Naivasha','2024-02-21 09:49:52.932917'),(26,'22141','response message is empty','2024-02-21 09:49:53.054844'),(27,'22141','Your profile has been created successfully Natasha. SMS details#levelOfEducation#profession#maritalStatus#religion#ethnicity to 22141.','2024-02-21 09:50:40.581283'),(28,'22141','response message is empty','2024-02-21 09:50:40.684800'),(29,'22141','This is the last stage of registration. SMS a brief description of yourself to 22141 starting with the word MYSELF. E.g., MYSELF chocolate, lovely, sexy etc.','2024-02-21 09:50:55.996320'),(30,'22141','response message is empty','2024-02-21 09:50:56.117885'),(31,'22141','You are now registered for dating. To search for a MPENZI, SMS match#age#town#gender to 22141 and meet the person of your dreams.E.g., match#23-25#Kisumu#female','2024-02-21 09:51:10.293483'),(32,'22141','response message is empty','2024-02-21 09:51:10.362662'),(33,'22141','Welcome to our dating service with 6000 potential dating partners! To register SMS start#name#age#gender#county#town to 22141. E.g., start#John Doe#26#Male#Nakuru#Naivasha','2024-02-21 09:51:20.271971'),(34,'22141','response message is empty','2024-02-21 09:51:20.393067'),(35,'22141','Your profile has been created successfully juma. SMS details#levelOfEducation#profession#maritalStatus#religion#ethnicity to 22141.','2024-02-21 09:51:31.974785'),(36,'22141','response message is empty','2024-02-21 09:51:32.142357'),(37,'22141','This is the last stage of registration. SMS a brief description of yourself to 22141 starting with the word MYSELF. E.g., MYSELF chocolate, lovely, sexy etc.','2024-02-21 09:51:43.009802'),(38,'22141','response message is empty','2024-02-21 09:51:43.148645'),(39,'22141','You are now registered for dating. To search for a MPENZI, SMS match#age#town#gender to 22141 and meet the person of your dreams.E.g., match#23-25#Kisumu#female','2024-02-21 09:52:04.009789'),(40,'22141','response message is empty','2024-02-21 09:52:04.147264'),(41,'22141','No potential matches found.','2024-02-21 09:54:05.273539'),(42,'22141','response message is empty','2024-02-21 09:54:05.377476'),(43,'22141','An error occurred while processing the message.','2024-02-21 09:54:47.000409'),(44,'22141','response message is empty','2024-02-21 09:54:47.087399'),(45,'22141','No potential matches found.','2024-02-21 09:56:11.490713'),(46,'22141','response message is empty','2024-02-21 09:56:11.560144'),(47,'22141','No potential matches found.','2024-02-21 09:58:36.381129'),(48,'22141','response message is empty','2024-02-21 09:58:36.715928'),(49,'22141','No potential matches found.','2024-02-21 11:46:27.884798'),(50,'22141','response message is empty','2024-02-21 11:46:29.138007'),(51,'22141','No potential matches found.','2024-02-21 11:46:53.036056'),(52,'22141','response message is empty','2024-02-21 11:46:53.403373'),(53,'22141','Maggy, Aged: 30, MSISDN: 0722000001,   Raqy, Aged: 30, MSISDN: 0722000002,   Juliet, Aged: 40, MSISDN: 0722000003, Send NEXT to 22141 to receive details of the remaining matches','2024-02-21 11:47:41.804928'),(54,'22141','response message is empty','2024-02-21 11:47:41.892932'),(55,'22141','Maggy, Aged: 30, MSISDN: 0722000001,   Raqy, Aged: 30, MSISDN: 0722000002,   Juliet, Aged: 40, MSISDN: 0722000003, Send NEXT to 22141 to receive details of the remaining matches','2024-02-21 11:49:51.193499'),(56,'22141','response message is empty','2024-02-21 11:49:51.280467'),(57,'22141','An error occurred while fetching potential matches.','2024-02-21 11:50:07.468331'),(58,'22141','response message is empty','2024-02-21 11:50:07.548516'),(59,'22141','Maggy, Aged: 30, MSISDN: 0722000001,   Raqy, Aged: 30, MSISDN: 0722000002,   Juliet, Aged: 40, MSISDN: 0722000003, Send NEXT to 22141 to receive details of the remaining matches','2024-02-21 11:51:17.528725'),(60,'22141','response message is empty','2024-02-21 11:51:17.598132'),(61,'22141','No more potential matches found.','2024-02-21 11:52:02.571527'),(62,'22141','response message is empty','2024-02-21 11:52:02.658656'),(63,'22141','Maggy, Aged: 30, MSISDN: 0722000001,   Raqy, Aged: 30, MSISDN: 0722000002,   Juliet, Aged: 40, MSISDN: 0722000003, Send NEXT to 22141 to receive details of the remaining matches','2024-02-21 11:53:28.916196'),(64,'22141','response message is empty','2024-02-21 11:53:29.141075'),(65,'22141','Juliet, Aged: 40, MSISDN: 0722000003,','2024-02-21 11:54:15.122470'),(66,'22141','response message is empty','2024-02-21 11:54:15.227184');
/*!40000 ALTER TABLE `api_messageto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_updatenext`
--

DROP TABLE IF EXISTS `api_updatenext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_updatenext` (
  `msisdn` varchar(20) NOT NULL,
  `lower_age` int NOT NULL,
  `upper_age` int NOT NULL,
  `town` varchar(100) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `last_queried_id` int NOT NULL,
  PRIMARY KEY (`msisdn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_updatenext`
--

LOCK TABLES `api_updatenext` WRITE;
/*!40000 ALTER TABLE `api_updatenext` DISABLE KEYS */;
INSERT INTO `api_updatenext` VALUES ('0722000006',25,40,'Kitengela','female',3);
/*!40000 ALTER TABLE `api_updatenext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_users`
--

DROP TABLE IF EXISTS `api_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `age` int NOT NULL,
  `gender` varchar(10) NOT NULL,
  `county` varchar(255) NOT NULL,
  `town` varchar(255) NOT NULL,
  `msisdn` varchar(15) NOT NULL,
  `level_of_education` varchar(255) DEFAULT NULL,
  `profession` varchar(255) DEFAULT NULL,
  `marital_status` varchar(50) DEFAULT NULL,
  `religion` varchar(50) DEFAULT NULL,
  `ethnicity` varchar(50) DEFAULT NULL,
  `description` longtext NOT NULL,
  `registration_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_users`
--

LOCK TABLES `api_users` WRITE;
/*!40000 ALTER TABLE `api_users` DISABLE KEYS */;
INSERT INTO `api_users` VALUES (1,'Maggy',30,'female','Kajiado','Kitengela','0722000001','Diploma','teacher','married','christian','kikuyu','chocolate, tall, beautiful','2024-02-21 09:45:25.273268'),(2,'Raqy',30,'female','Kajiado','Kitengela','0722000002','Diploma','shopkeeper','married','christian','kikuyu','chocolate tall and beautiful','2024-02-21 09:47:04.271587'),(3,'Juliet',40,'female','Kajiado','Kitengela','0722000003','Diploma','teacher','married','christian','kikuyu','chocolate tall and beautiful','2024-02-21 09:48:54.881565'),(4,'Natasha',28,'female','Kajiado','Kitengela','0722000004','Diploma','teacher','married','christian','kikuyu','chocolate tall and beautiful','2024-02-21 09:50:40.818504'),(5,'juma',22,'male','kiambu','kabete','0722000005','Diploma','teacher','married','christian','kikuyu','chocolate, tall, handsome','2024-02-21 09:51:32.276460');
/*!40000 ALTER TABLE `api_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
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
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
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
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add message from',7,'add_messagefrom'),(26,'Can change message from',7,'change_messagefrom'),(27,'Can delete message from',7,'delete_messagefrom'),(28,'Can view message from',7,'view_messagefrom'),(29,'Can add message to',8,'add_messageto'),(30,'Can change message to',8,'change_messageto'),(31,'Can delete message to',8,'delete_messageto'),(32,'Can view message to',8,'view_messageto'),(33,'Can add update next',9,'add_updatenext'),(34,'Can change update next',9,'change_updatenext'),(35,'Can delete update next',9,'delete_updatenext'),(36,'Can view update next',9,'view_updatenext'),(37,'Can add users',10,'add_users'),(38,'Can change users',10,'change_users'),(39,'Can delete users',10,'delete_users'),(40,'Can view users',10,'view_users');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
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
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
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
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(7,'api','messagefrom'),(8,'api','messageto'),(9,'api','updatenext'),(10,'api','users'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-02-21 09:30:28.418695'),(2,'auth','0001_initial','2024-02-21 09:31:36.709089'),(3,'admin','0001_initial','2024-02-21 09:31:57.791559'),(4,'admin','0002_logentry_remove_auto_add','2024-02-21 09:31:58.014355'),(5,'admin','0003_logentry_add_action_flag_choices','2024-02-21 09:31:58.319098'),(6,'api','0001_initial','2024-02-21 09:32:06.565975'),(7,'contenttypes','0002_remove_content_type_name','2024-02-21 09:32:11.604203'),(8,'auth','0002_alter_permission_name_max_length','2024-02-21 09:32:21.876702'),(9,'auth','0003_alter_user_email_max_length','2024-02-21 09:32:24.874118'),(10,'auth','0004_alter_user_username_opts','2024-02-21 09:32:25.040549'),(11,'auth','0005_alter_user_last_login_null','2024-02-21 09:32:31.337718'),(12,'auth','0006_require_contenttypes_0002','2024-02-21 09:32:31.579317'),(13,'auth','0007_alter_validators_add_error_messages','2024-02-21 09:32:31.744564'),(14,'auth','0008_alter_user_username_max_length','2024-02-21 09:32:39.708134'),(15,'auth','0009_alter_user_last_name_max_length','2024-02-21 09:32:46.619245'),(16,'auth','0010_alter_group_name_max_length','2024-02-21 09:32:49.732950'),(17,'auth','0011_update_proxy_permissions','2024-02-21 09:32:50.756285'),(18,'auth','0012_alter_user_first_name_max_length','2024-02-21 09:33:00.179277'),(19,'sessions','0001_initial','2024-02-21 09:33:03.557348');
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
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-21 15:12:12
