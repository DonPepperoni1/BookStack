-- MariaDB dump 10.19  Distrib 10.5.15-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: bookstack
-- ------------------------------------------------------
-- Server version	10.5.15-MariaDB-0+deb11u1

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
-- Table structure for table `activities`
--

DROP TABLE IF EXISTS `activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_id` int(11) DEFAULT NULL,
  `entity_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activities_user_id_index` (`user_id`),
  KEY `activities_entity_id_index` (`entity_id`),
  KEY `activities_key_index` (`type`),
  KEY `activities_created_at_index` (`created_at`),
  KEY `activities_ip_index` (`ip`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activities`
--

LOCK TABLES `activities` WRITE;
/*!40000 ALTER TABLE `activities` DISABLE KEYS */;
INSERT INTO `activities` VALUES (1,'auth_login','standard; (1) Admin',1,'192.168.1.52',NULL,NULL,'2022-01-15 14:40:29','2022-01-15 14:40:29'),(2,'user_update','(3) nimda',1,'192.168.1.52',NULL,NULL,'2022-01-15 14:44:37','2022-01-15 14:44:37'),(3,'user_create','(4) matteo',1,'192.168.1.52',NULL,NULL,'2022-01-15 14:45:10','2022-01-15 14:45:10'),(4,'user_update','(4) matteo',1,'192.168.1.52',NULL,NULL,'2022-01-15 14:47:23','2022-01-15 14:47:23'),(5,'user_update','(4) matteo',1,'192.168.1.52',NULL,NULL,'2022-01-15 14:47:41','2022-01-15 14:47:41'),(6,'user_create','(5) joe',1,'192.168.1.52',NULL,NULL,'2022-01-15 14:48:22','2022-01-15 14:48:22'),(7,'user_update','(5) joe',1,'192.168.1.52',NULL,NULL,'2022-01-15 14:48:54','2022-01-15 14:48:54'),(8,'user_update','(5) joe',1,'192.168.1.52',NULL,NULL,'2022-01-15 14:49:00','2022-01-15 14:49:00'),(9,'auth_login','standard; (1) Admin',1,'192.168.1.52',NULL,NULL,'2022-01-15 17:00:14','2022-01-15 17:00:14'),(10,'auth_login','standard; (1) Admin',1,'192.168.1.52',NULL,NULL,'2022-01-19 20:58:04','2022-01-19 20:58:04'),(11,'bookshelf_create','(1) tp cheatsheet',1,'192.168.1.52',1,'BookStack\\Bookshelf','2022-01-19 20:58:43','2022-01-19 20:58:43'),(12,'auth_login','standard; (1) Admin',1,'10.33.0.199',NULL,NULL,'2022-03-29 06:06:58','2022-03-29 06:06:58'),(13,'auth_login','standard; (1) Admin',1,'10.33.0.199',NULL,NULL,'2022-03-30 08:09:39','2022-03-30 08:09:39'),(14,'auth_login','standard; (1) Admin',1,'10.33.0.199',NULL,NULL,'2022-03-30 10:59:33','2022-03-30 10:59:33'),(15,'user_create','(7) davy',1,'10.33.0.199',NULL,NULL,'2022-03-30 11:01:24','2022-03-30 11:01:24'),(16,'user_create','(8) esgi',1,'10.33.0.199',NULL,NULL,'2022-03-30 11:01:57','2022-03-30 11:01:57'),(17,'book_create','(1) Script Cheat',1,'10.33.0.199',1,'BookStack\\Book','2022-03-30 11:03:33','2022-03-30 11:03:33'),(18,'bookshelf_update','(1) tp cheatsheet',1,'10.33.0.199',1,'BookStack\\Bookshelf','2022-03-30 11:03:33','2022-03-30 11:03:33'),(19,'chapter_create','(1) Script Cheat Complet',1,'10.33.0.199',1,'BookStack\\Chapter','2022-03-30 11:05:44','2022-03-30 11:05:44'),(20,'book_update','(1) Script Cheat',1,'10.33.0.199',1,'BookStack\\Book','2022-03-30 11:07:22','2022-03-30 11:07:22'),(21,'auth_login','standard; (1) Admin',1,'10.33.0.199',NULL,NULL,'2022-03-30 13:29:43','2022-03-30 13:29:43'),(22,'bookshelf_update','(1) 3ième Année',1,'10.33.0.199',1,'BookStack\\Bookshelf','2022-03-30 11:43:33','2022-03-30 11:43:33'),(23,'book_create','(2) WireGuard',1,'10.33.0.199',2,'BookStack\\Book','2022-03-30 11:43:47','2022-03-30 11:43:47'),(24,'bookshelf_update','(1) 3ième Année',1,'10.33.0.199',1,'BookStack\\Bookshelf','2022-03-30 11:43:47','2022-03-30 11:43:47'),(25,'book_create','(3) BookStack',1,'10.33.0.199',3,'BookStack\\Book','2022-03-30 11:44:11','2022-03-30 11:44:11'),(26,'bookshelf_update','(1) 3ième Année',1,'10.33.0.199',1,'BookStack\\Bookshelf','2022-03-30 11:44:11','2022-03-30 11:44:11'),(27,'book_create','(4) Guacamole',1,'10.33.0.199',4,'BookStack\\Book','2022-03-30 11:44:25','2022-03-30 11:44:25'),(28,'bookshelf_update','(1) 3ième Année',1,'10.33.0.199',1,'BookStack\\Bookshelf','2022-03-30 11:44:25','2022-03-30 11:44:25'),(29,'book_create','(5) Hardening',1,'10.33.0.199',5,'BookStack\\Book','2022-03-30 11:44:56','2022-03-30 11:44:56'),(30,'bookshelf_update','(1) 3ième Année',1,'10.33.0.199',1,'BookStack\\Bookshelf','2022-03-30 11:44:56','2022-03-30 11:44:56'),(31,'page_create','(3) Travail Préparatoire',1,'10.33.0.199',3,'BookStack\\Page','2022-03-30 11:50:38','2022-03-30 11:50:38'),(32,'book_update','(4) Guacamole',1,'10.33.0.199',4,'BookStack\\Book','2022-03-30 11:51:07','2022-03-30 11:51:07'),(33,'page_create','(1) Travail Préparatoire',1,'10.33.0.199',1,'BookStack\\Page','2022-03-30 11:51:27','2022-03-30 11:51:27'),(34,'page_create','(4) Travail Préparatoire',1,'10.33.0.199',4,'BookStack\\Page','2022-03-30 11:51:43','2022-03-30 11:51:43'),(35,'user_delete','(7) davy',1,'10.33.0.199',NULL,NULL,'2022-03-30 11:57:02','2022-03-30 11:57:02'),(36,'page_create','(5) Présentation',1,'10.33.0.199',5,'BookStack\\Page','2022-03-30 12:02:47','2022-03-30 12:02:47'),(37,'page_create','(6) Installation',1,'10.33.0.199',6,'BookStack\\Page','2022-03-30 12:02:55','2022-03-30 12:02:55'),(38,'page_create','(7) Configuration',1,'10.33.0.199',7,'BookStack\\Page','2022-03-30 12:03:04','2022-03-30 12:03:04'),(39,'page_create','(8) Optimisation',1,'10.33.0.199',8,'BookStack\\Page','2022-03-30 12:03:16','2022-03-30 12:03:16'),(40,'page_create','(9) Sécurisation',1,'10.33.0.199',9,'BookStack\\Page','2022-03-30 12:03:25','2022-03-30 12:03:25'),(41,'page_create','(10) Tests',1,'10.33.0.199',10,'BookStack\\Page','2022-03-30 12:03:32','2022-03-30 12:03:32'),(42,'page_create','(11) Accès à une machine Linux (ssh)',1,'10.33.0.199',11,'BookStack\\Page','2022-03-30 12:04:10','2022-03-30 12:04:10'),(43,'page_create','(12) Accès à une machine Windows (rdp)',1,'10.33.0.199',12,'BookStack\\Page','2022-03-30 12:04:28','2022-03-30 12:04:28'),(44,'page_create','(13) Accès à une machine MacOSX (vnc)',1,'10.33.0.199',13,'BookStack\\Page','2022-03-30 12:04:51','2022-03-30 12:04:51'),(45,'auth_login','standard; (1) Admin',1,'10.33.0.199',NULL,NULL,'2022-03-31 08:55:01','2022-03-31 08:55:01'),(46,'auth_login','standard; (1) Admin',1,'10.33.5.155',NULL,NULL,'2022-04-27 12:16:36','2022-04-27 12:16:36');
/*!40000 ALTER TABLE `activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_tokens`
--

DROP TABLE IF EXISTS `api_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_tokens` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `expires_at` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `api_tokens_token_id_unique` (`token_id`),
  KEY `api_tokens_user_id_index` (`user_id`),
  KEY `api_tokens_expires_at_index` (`expires_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_tokens`
--

LOCK TABLES `api_tokens` WRITE;
/*!40000 ALTER TABLE `api_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attachments`
--

DROP TABLE IF EXISTS `attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attachments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uploaded_to` int(11) NOT NULL,
  `external` tinyint(1) NOT NULL,
  `order` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attachments_uploaded_to_index` (`uploaded_to`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attachments`
--

LOCK TABLES `attachments` WRITE;
/*!40000 ALTER TABLE `attachments` DISABLE KEYS */;
INSERT INTO `attachments` VALUES (1,'Write-up_install.docx','uploads/files/2022-03-Mar/GCVnhJYNG3vwl8RR-docx','docx',2,0,1,1,1,'2022-03-30 11:49:40','2022-03-30 11:49:40');
/*!40000 ALTER TABLE `attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `restricted` tinyint(1) NOT NULL DEFAULT 0,
  `image_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `owned_by` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `books_slug_index` (`slug`),
  KEY `books_created_by_index` (`created_by`),
  KEY `books_updated_by_index` (`updated_by`),
  KEY `books_restricted_index` (`restricted`),
  KEY `books_owned_by_index` (`owned_by`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'Script Cheat','script-cheat','Script complet du cheatsheet dans le chapitre suivant.','2022-03-30 11:03:33','2022-03-30 11:07:22',1,1,0,NULL,NULL,1),(2,'WireGuard','wireguard','','2022-03-30 11:43:47','2022-03-30 11:43:47',1,1,0,NULL,NULL,1),(3,'BookStack','bookstack','','2022-03-30 11:44:11','2022-03-30 11:44:11',1,1,0,NULL,NULL,1),(4,'Guacamole','guacamole','','2022-03-30 11:44:25','2022-03-30 11:44:25',1,1,0,NULL,NULL,1),(5,'Hardening','hardening','','2022-03-30 11:44:56','2022-03-30 11:44:56',1,1,0,NULL,NULL,1);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookshelves`
--

DROP TABLE IF EXISTS `bookshelves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookshelves` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `restricted` tinyint(1) NOT NULL DEFAULT 0,
  `image_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `owned_by` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bookshelves_slug_index` (`slug`),
  KEY `bookshelves_created_by_index` (`created_by`),
  KEY `bookshelves_updated_by_index` (`updated_by`),
  KEY `bookshelves_restricted_index` (`restricted`),
  KEY `bookshelves_owned_by_index` (`owned_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookshelves`
--

LOCK TABLES `bookshelves` WRITE;
/*!40000 ALTER TABLE `bookshelves` DISABLE KEYS */;
INSERT INTO `bookshelves` VALUES (1,'3ième Année','3ieme-annee','Mémentos de 3ième année',1,1,0,NULL,'2022-01-19 20:58:43','2022-03-30 11:43:33',NULL,1);
/*!40000 ALTER TABLE `bookshelves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookshelves_books`
--

DROP TABLE IF EXISTS `bookshelves_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookshelves_books` (
  `bookshelf_id` int(10) unsigned NOT NULL,
  `book_id` int(10) unsigned NOT NULL,
  `order` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bookshelf_id`,`book_id`),
  KEY `bookshelves_books_book_id_foreign` (`book_id`),
  CONSTRAINT `bookshelves_books_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `bookshelves_books_bookshelf_id_foreign` FOREIGN KEY (`bookshelf_id`) REFERENCES `bookshelves` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookshelves_books`
--

LOCK TABLES `bookshelves_books` WRITE;
/*!40000 ALTER TABLE `bookshelves_books` DISABLE KEYS */;
INSERT INTO `bookshelves_books` VALUES (1,1,0),(1,2,1),(1,3,2),(1,4,3),(1,5,4);
/*!40000 ALTER TABLE `bookshelves_books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  UNIQUE KEY `cache_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chapters`
--

DROP TABLE IF EXISTS `chapters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chapters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `book_id` int(11) NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `restricted` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `owned_by` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `chapters_slug_index` (`slug`),
  KEY `chapters_book_id_index` (`book_id`),
  KEY `chapters_priority_index` (`priority`),
  KEY `chapters_created_by_index` (`created_by`),
  KEY `chapters_updated_by_index` (`updated_by`),
  KEY `chapters_restricted_index` (`restricted`),
  KEY `chapters_owned_by_index` (`owned_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chapters`
--

LOCK TABLES `chapters` WRITE;
/*!40000 ALTER TABLE `chapters` DISABLE KEYS */;
INSERT INTO `chapters` VALUES (1,1,'script-cheat-complet','Script Cheat Complet','!/bin/bash\r\n\r\nclear\r\n\r\nfunction install_exe_cheat{\r\n    wget https://github.com/cheat/cheat/releases/download/4.2.3/cheat-linux-amd64.gz\r\n    gunzip cheat-linux-amd64.gz\r\n    chmod a+x cheat-linux-amd64\r\n    mv -v cheat-linux-amd64 /usr/local/bin/cheat\r\n}\r\n\r\nfunction uninstall_exe_cheat(){\r\n    rm -f /usr/local/bin/cheat\r\n}\r\n\r\nfunction download_cheatsheets(){\r\n    apt install git -y\r\n    mkdir -pv /opt/COMMUN/cheat/cheatsheets/community\r\n    mkdir -v /opt/COMMUN/cheat/cheatsheets/personal\r\n    cheat --init > /opt/COMMUN/cheat/conf.yml\r\n    sed -i \'s;/root/.config/; /opt/COMMUN/;\' /opt/COMMUN/cheat/conf.yml\r\n    git clone https://github.com/cheat/cheatsheets.git\r\n    \\mv -v cheatsheets/[a-z]* /opt/COMMUN/cheat/cheatsheets/community\r\n}\r\n\r\nfunction install_COMMNUN(){\r\n    groupadd -g 10000 commun \r\n    chgrp -Rv commun /opt/COMMUN/\r\n    chmod 2770 /opt/COMMUN/cheat/cheatsheets/personal\r\n    #find /opt/COMMUN/cheat/cheatsheets/personal -type d -exec chmod 2770 {} \\;\r\n    #find /opt/COMMUN/ -type f -exec chmod 660 {} \\;\r\n}\r\n\r\nfunction modif_user_matteo(){\r\n    usermod -aG sudo mateo \r\n    usermod -aG commun matteo  \r\n    echo \"umask 007 \" >> /home/matteo/.bashrc\r\n    mkdir -v /home/matteo/.config \r\n    ln -s /opt/COMMUN/cheat /home/matteo/.config/cheat \r\n    chown -R matteo /home/matteo/.config\r\n}\r\n\r\nfunction install_cheat_ROOT(){\r\n    mkdir -v /root/.config\r\n    ln -s /opt/COMMUN/cheat /root/.config/cheat\r\n    echo \"umask 007\" >> /etc/skel/.bashrc\r\n    cat >> /root/.bashrc << EOF\r\n    alias ll=\"ls -rtl\"\r\n    alias grep=\"grep --color\"\r\n    alias rm=\"rm -vi --preserve-root\"\r\n    alias chown=\"chown -v --preserve-root\"\r\n    alias chmod=\"chmod -v --preserve-root\"\r\n    alias chgrp=\"chgrp -v --preserve-root\"\r\nEOF\r\numask 007\r\n}\r\n\r\nfunction install_cheat_all_new_users(){\r\n    mkdir /etc/skel/.config/\r\n    ln -s /opt/COMMUN/cheat /etc/skel/.config/cheat\r\n    echo \"umask 007\" >> /etc/skel/.bashrc\r\n    cat >> /root/.bashrc << EOF\r\n    alias ll=\"ls -rtl\"\r\n    alias grep=\"grep --color\"\r\n    alias rm=\"rm -vi --preserve-root\"\r\n    alias chown=\"chown -v --preserve-root\"\r\n    alias chmod=\"chmod -v --preserve-root\"\r\n    alias chgrp=\"chgrp -v --preserve-root\"\r\nEOF\r\n}\r\n\r\nfunction create_user_esgi(){\r\n    sudo useradd -m -G 10000 -s /bin/bash esgi\r\n    echo -e \'Pa55w.rd\\nPa55w.rd\' | sudo passwd esgi\r\n    usermod -aG sudo esgi\r\n}\r\n\r\necho \"---------------------------------------------------\"\r\necho \"Installation de plusieurs paquets qui seront utiles: \"\r\necho \"---------------------------------------------------\"\r\ninstall_packages\r\necho \"---------------------------------------------------\"\r\necho \"Installation de l\'outil cheat: \"\r\necho \"---------------------------------------------------\"\r\ninstall_exe_cheat\r\necho \"---------------------------------------------------\"\r\necho \"Configuration de l\'outil cheatsheets : \"\r\necho \"---------------------------------------------------\"\r\ndownload_cheatsheets\r\necho \"-----------------------------------------------------------\"\r\necho \"CrÃ©ation du dossier COMMUN Ã  tous les autres utilisateurs: \"\r\necho \"-----------------------------------------------------------\"\r\ninstall_COMMNUN\r\necho \"---------------------------------------------------\"\r\necho \"Modification de l\'utilisateur thisma: \"\r\necho \"---------------------------------------------------\"\r\nmodif_user_thisma\r\necho \"---------------------------------------------------\"\r\necho \"Modification du user Root: \"\r\necho \"---------------------------------------------------\"\r\ninstall_cheat_ROOT\r\necho \"-------------------------------------------------------------\"\r\necho \"Configuration pour tous les prochains nouveaux utilisateurs: \"\r\necho \"-------------------------------------------------------------\"\r\ninstall_cheat_all_new_users\r\necho \"---------------------------------------------------\"\r\necho \"CrÃ©ation du nouvel utilisateur esgi: \"\r\necho \"---------------------------------------------------\"\r\ncreate_user_esgi',2,'2022-03-30 11:05:44','2022-03-30 11:05:44',1,1,0,NULL,1);
/*!40000 ALTER TABLE `chapters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int(10) unsigned NOT NULL,
  `entity_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `html` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `local_id` int(10) unsigned DEFAULT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_entity_id_entity_type_index` (`entity_id`,`entity_type`),
  KEY `comments_local_id_index` (`local_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deletions`
--

DROP TABLE IF EXISTS `deletions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deletions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `deleted_by` int(11) NOT NULL,
  `deletable_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deletable_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `deletions_deleted_by_index` (`deleted_by`),
  KEY `deletions_deletable_type_index` (`deletable_type`),
  KEY `deletions_deletable_id_index` (`deletable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deletions`
--

LOCK TABLES `deletions` WRITE;
/*!40000 ALTER TABLE `deletions` DISABLE KEYS */;
/*!40000 ALTER TABLE `deletions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_confirmations`
--

DROP TABLE IF EXISTS `email_confirmations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_confirmations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `email_confirmations_user_id_index` (`user_id`),
  KEY `email_confirmations_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_confirmations`
--

LOCK TABLES `email_confirmations` WRITE;
/*!40000 ALTER TABLE `email_confirmations` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_confirmations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity_permissions`
--

DROP TABLE IF EXISTS `entity_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `restrictable_id` int(11) NOT NULL,
  `restrictable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `restrictions_role_id_index` (`role_id`),
  KEY `restrictions_action_index` (`action`),
  KEY `restrictions_restrictable_id_restrictable_type_index` (`restrictable_id`,`restrictable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_permissions`
--

LOCK TABLES `entity_permissions` WRITE;
/*!40000 ALTER TABLE `entity_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `entity_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favourites`
--

DROP TABLE IF EXISTS `favourites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favourites` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `favouritable_id` int(11) NOT NULL,
  `favouritable_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `favouritable_index` (`favouritable_id`,`favouritable_type`),
  KEY `favourites_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favourites`
--

LOCK TABLES `favourites` WRITE;
/*!40000 ALTER TABLE `favourites` DISABLE KEYS */;
/*!40000 ALTER TABLE `favourites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uploaded_to` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `images_type_index` (`type`),
  KEY `images_uploaded_to_index` (`uploaded_to`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (1,'michael.jpg','http://192.168.1.94/uploads/images/user/2022-01/michael.jpg','2022-01-15 14:44:37','2022-01-15 14:44:37',1,1,'/uploads/images/user/2022-01/michael.jpg','user',3),(3,'dwight.jpg','http://192.168.1.94/uploads/images/user/2022-01/dwight.jpg','2022-01-15 14:47:23','2022-01-15 14:47:23',1,1,'/uploads/images/user/2022-01/dwight.jpg','user',4),(4,'5-avatar.png','http://192.168.1.94/uploads/images/user/2022-01/5-avatar.png','2022-01-15 14:48:22','2022-01-15 14:48:22',5,5,'/uploads/images/user/2022-01/5-avatar.png','user',5),(7,'8-avatar.png','http://10.33.2.210/uploads/images/user/2022-03/8-avatar.png','2022-03-30 11:01:57','2022-03-30 11:01:57',8,8,'/uploads/images/user/2022-03/8-avatar.png','user',8);
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `joint_permissions`
--

DROP TABLE IF EXISTS `joint_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joint_permissions` (
  `role_id` int(11) NOT NULL,
  `entity_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_id` int(11) NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `has_permission` tinyint(1) NOT NULL DEFAULT 0,
  `has_permission_own` tinyint(1) NOT NULL DEFAULT 0,
  `owned_by` int(11) NOT NULL,
  PRIMARY KEY (`role_id`,`entity_type`,`entity_id`,`action`),
  KEY `joint_permissions_entity_id_entity_type_index` (`entity_id`,`entity_type`),
  KEY `joint_permissions_has_permission_index` (`has_permission`),
  KEY `joint_permissions_has_permission_own_index` (`has_permission_own`),
  KEY `joint_permissions_role_id_index` (`role_id`),
  KEY `joint_permissions_action_index` (`action`),
  KEY `joint_permissions_created_by_index` (`owned_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `joint_permissions`
--

LOCK TABLES `joint_permissions` WRITE;
/*!40000 ALTER TABLE `joint_permissions` DISABLE KEYS */;
INSERT INTO `joint_permissions` VALUES (1,'BookStack\\Book',1,'chapter-create',1,1,1),(1,'BookStack\\Book',1,'delete',1,1,1),(1,'BookStack\\Book',1,'page-create',1,1,1),(1,'BookStack\\Book',1,'update',1,1,1),(1,'BookStack\\Book',1,'view',1,1,1),(1,'BookStack\\Book',2,'chapter-create',1,1,1),(1,'BookStack\\Book',2,'delete',1,1,1),(1,'BookStack\\Book',2,'page-create',1,1,1),(1,'BookStack\\Book',2,'update',1,1,1),(1,'BookStack\\Book',2,'view',1,1,1),(1,'BookStack\\Book',3,'chapter-create',1,1,1),(1,'BookStack\\Book',3,'delete',1,1,1),(1,'BookStack\\Book',3,'page-create',1,1,1),(1,'BookStack\\Book',3,'update',1,1,1),(1,'BookStack\\Book',3,'view',1,1,1),(1,'BookStack\\Book',4,'chapter-create',1,1,1),(1,'BookStack\\Book',4,'delete',1,1,1),(1,'BookStack\\Book',4,'page-create',1,1,1),(1,'BookStack\\Book',4,'update',1,1,1),(1,'BookStack\\Book',4,'view',1,1,1),(1,'BookStack\\Book',5,'chapter-create',1,1,1),(1,'BookStack\\Book',5,'delete',1,1,1),(1,'BookStack\\Book',5,'page-create',1,1,1),(1,'BookStack\\Book',5,'update',1,1,1),(1,'BookStack\\Book',5,'view',1,1,1),(1,'BookStack\\Bookshelf',1,'delete',1,1,1),(1,'BookStack\\Bookshelf',1,'update',1,1,1),(1,'BookStack\\Bookshelf',1,'view',1,1,1),(1,'BookStack\\Chapter',1,'delete',1,1,1),(1,'BookStack\\Chapter',1,'page-create',1,1,1),(1,'BookStack\\Chapter',1,'update',1,1,1),(1,'BookStack\\Chapter',1,'view',1,1,1),(1,'BookStack\\Page',1,'delete',1,1,1),(1,'BookStack\\Page',1,'update',1,1,1),(1,'BookStack\\Page',1,'view',1,1,1),(1,'BookStack\\Page',2,'delete',1,1,1),(1,'BookStack\\Page',2,'update',1,1,1),(1,'BookStack\\Page',2,'view',1,1,1),(1,'BookStack\\Page',3,'delete',1,1,1),(1,'BookStack\\Page',3,'update',1,1,1),(1,'BookStack\\Page',3,'view',1,1,1),(1,'BookStack\\Page',4,'delete',1,1,1),(1,'BookStack\\Page',4,'update',1,1,1),(1,'BookStack\\Page',4,'view',1,1,1),(1,'BookStack\\Page',5,'delete',1,1,1),(1,'BookStack\\Page',5,'update',1,1,1),(1,'BookStack\\Page',5,'view',1,1,1),(1,'BookStack\\Page',6,'delete',1,1,1),(1,'BookStack\\Page',6,'update',1,1,1),(1,'BookStack\\Page',6,'view',1,1,1),(1,'BookStack\\Page',7,'delete',1,1,1),(1,'BookStack\\Page',7,'update',1,1,1),(1,'BookStack\\Page',7,'view',1,1,1),(1,'BookStack\\Page',8,'delete',1,1,1),(1,'BookStack\\Page',8,'update',1,1,1),(1,'BookStack\\Page',8,'view',1,1,1),(1,'BookStack\\Page',9,'delete',1,1,1),(1,'BookStack\\Page',9,'update',1,1,1),(1,'BookStack\\Page',9,'view',1,1,1),(1,'BookStack\\Page',10,'delete',1,1,1),(1,'BookStack\\Page',10,'update',1,1,1),(1,'BookStack\\Page',10,'view',1,1,1),(1,'BookStack\\Page',11,'delete',1,1,1),(1,'BookStack\\Page',11,'update',1,1,1),(1,'BookStack\\Page',11,'view',1,1,1),(1,'BookStack\\Page',12,'delete',1,1,1),(1,'BookStack\\Page',12,'update',1,1,1),(1,'BookStack\\Page',12,'view',1,1,1),(1,'BookStack\\Page',13,'delete',1,1,1),(1,'BookStack\\Page',13,'update',1,1,1),(1,'BookStack\\Page',13,'view',1,1,1),(2,'BookStack\\Book',1,'chapter-create',1,1,1),(2,'BookStack\\Book',1,'delete',1,1,1),(2,'BookStack\\Book',1,'page-create',1,1,1),(2,'BookStack\\Book',1,'update',1,1,1),(2,'BookStack\\Book',1,'view',1,1,1),(2,'BookStack\\Book',2,'chapter-create',1,1,1),(2,'BookStack\\Book',2,'delete',1,1,1),(2,'BookStack\\Book',2,'page-create',1,1,1),(2,'BookStack\\Book',2,'update',1,1,1),(2,'BookStack\\Book',2,'view',1,1,1),(2,'BookStack\\Book',3,'chapter-create',1,1,1),(2,'BookStack\\Book',3,'delete',1,1,1),(2,'BookStack\\Book',3,'page-create',1,1,1),(2,'BookStack\\Book',3,'update',1,1,1),(2,'BookStack\\Book',3,'view',1,1,1),(2,'BookStack\\Book',4,'chapter-create',1,1,1),(2,'BookStack\\Book',4,'delete',1,1,1),(2,'BookStack\\Book',4,'page-create',1,1,1),(2,'BookStack\\Book',4,'update',1,1,1),(2,'BookStack\\Book',4,'view',1,1,1),(2,'BookStack\\Book',5,'chapter-create',1,1,1),(2,'BookStack\\Book',5,'delete',1,1,1),(2,'BookStack\\Book',5,'page-create',1,1,1),(2,'BookStack\\Book',5,'update',1,1,1),(2,'BookStack\\Book',5,'view',1,1,1),(2,'BookStack\\Bookshelf',1,'delete',1,1,1),(2,'BookStack\\Bookshelf',1,'update',1,1,1),(2,'BookStack\\Bookshelf',1,'view',1,1,1),(2,'BookStack\\Chapter',1,'delete',1,1,1),(2,'BookStack\\Chapter',1,'page-create',1,1,1),(2,'BookStack\\Chapter',1,'update',1,1,1),(2,'BookStack\\Chapter',1,'view',1,1,1),(2,'BookStack\\Page',1,'delete',1,1,1),(2,'BookStack\\Page',1,'update',1,1,1),(2,'BookStack\\Page',1,'view',1,1,1),(2,'BookStack\\Page',2,'delete',1,1,1),(2,'BookStack\\Page',2,'update',1,1,1),(2,'BookStack\\Page',2,'view',1,1,1),(2,'BookStack\\Page',3,'delete',1,1,1),(2,'BookStack\\Page',3,'update',1,1,1),(2,'BookStack\\Page',3,'view',1,1,1),(2,'BookStack\\Page',4,'delete',1,1,1),(2,'BookStack\\Page',4,'update',1,1,1),(2,'BookStack\\Page',4,'view',1,1,1),(2,'BookStack\\Page',5,'delete',1,1,1),(2,'BookStack\\Page',5,'update',1,1,1),(2,'BookStack\\Page',5,'view',1,1,1),(2,'BookStack\\Page',6,'delete',1,1,1),(2,'BookStack\\Page',6,'update',1,1,1),(2,'BookStack\\Page',6,'view',1,1,1),(2,'BookStack\\Page',7,'delete',1,1,1),(2,'BookStack\\Page',7,'update',1,1,1),(2,'BookStack\\Page',7,'view',1,1,1),(2,'BookStack\\Page',8,'delete',1,1,1),(2,'BookStack\\Page',8,'update',1,1,1),(2,'BookStack\\Page',8,'view',1,1,1),(2,'BookStack\\Page',9,'delete',1,1,1),(2,'BookStack\\Page',9,'update',1,1,1),(2,'BookStack\\Page',9,'view',1,1,1),(2,'BookStack\\Page',10,'delete',1,1,1),(2,'BookStack\\Page',10,'update',1,1,1),(2,'BookStack\\Page',10,'view',1,1,1),(2,'BookStack\\Page',11,'delete',1,1,1),(2,'BookStack\\Page',11,'update',1,1,1),(2,'BookStack\\Page',11,'view',1,1,1),(2,'BookStack\\Page',12,'delete',1,1,1),(2,'BookStack\\Page',12,'update',1,1,1),(2,'BookStack\\Page',12,'view',1,1,1),(2,'BookStack\\Page',13,'delete',1,1,1),(2,'BookStack\\Page',13,'update',1,1,1),(2,'BookStack\\Page',13,'view',1,1,1),(3,'BookStack\\Book',1,'chapter-create',0,0,1),(3,'BookStack\\Book',1,'delete',0,0,1),(3,'BookStack\\Book',1,'page-create',0,0,1),(3,'BookStack\\Book',1,'update',0,0,1),(3,'BookStack\\Book',1,'view',1,1,1),(3,'BookStack\\Book',2,'chapter-create',0,0,1),(3,'BookStack\\Book',2,'delete',0,0,1),(3,'BookStack\\Book',2,'page-create',0,0,1),(3,'BookStack\\Book',2,'update',0,0,1),(3,'BookStack\\Book',2,'view',1,1,1),(3,'BookStack\\Book',3,'chapter-create',0,0,1),(3,'BookStack\\Book',3,'delete',0,0,1),(3,'BookStack\\Book',3,'page-create',0,0,1),(3,'BookStack\\Book',3,'update',0,0,1),(3,'BookStack\\Book',3,'view',1,1,1),(3,'BookStack\\Book',4,'chapter-create',0,0,1),(3,'BookStack\\Book',4,'delete',0,0,1),(3,'BookStack\\Book',4,'page-create',0,0,1),(3,'BookStack\\Book',4,'update',0,0,1),(3,'BookStack\\Book',4,'view',1,1,1),(3,'BookStack\\Book',5,'chapter-create',0,0,1),(3,'BookStack\\Book',5,'delete',0,0,1),(3,'BookStack\\Book',5,'page-create',0,0,1),(3,'BookStack\\Book',5,'update',0,0,1),(3,'BookStack\\Book',5,'view',1,1,1),(3,'BookStack\\Bookshelf',1,'delete',0,0,1),(3,'BookStack\\Bookshelf',1,'update',0,0,1),(3,'BookStack\\Bookshelf',1,'view',1,1,1),(3,'BookStack\\Chapter',1,'delete',0,0,1),(3,'BookStack\\Chapter',1,'page-create',0,0,1),(3,'BookStack\\Chapter',1,'update',0,0,1),(3,'BookStack\\Chapter',1,'view',1,1,1),(3,'BookStack\\Page',1,'delete',0,0,1),(3,'BookStack\\Page',1,'update',0,0,1),(3,'BookStack\\Page',1,'view',1,1,1),(3,'BookStack\\Page',2,'delete',0,0,1),(3,'BookStack\\Page',2,'update',0,0,1),(3,'BookStack\\Page',2,'view',1,1,1),(3,'BookStack\\Page',3,'delete',0,0,1),(3,'BookStack\\Page',3,'update',0,0,1),(3,'BookStack\\Page',3,'view',1,1,1),(3,'BookStack\\Page',4,'delete',0,0,1),(3,'BookStack\\Page',4,'update',0,0,1),(3,'BookStack\\Page',4,'view',1,1,1),(3,'BookStack\\Page',5,'delete',0,0,1),(3,'BookStack\\Page',5,'update',0,0,1),(3,'BookStack\\Page',5,'view',1,1,1),(3,'BookStack\\Page',6,'delete',0,0,1),(3,'BookStack\\Page',6,'update',0,0,1),(3,'BookStack\\Page',6,'view',1,1,1),(3,'BookStack\\Page',7,'delete',0,0,1),(3,'BookStack\\Page',7,'update',0,0,1),(3,'BookStack\\Page',7,'view',1,1,1),(3,'BookStack\\Page',8,'delete',0,0,1),(3,'BookStack\\Page',8,'update',0,0,1),(3,'BookStack\\Page',8,'view',1,1,1),(3,'BookStack\\Page',9,'delete',0,0,1),(3,'BookStack\\Page',9,'update',0,0,1),(3,'BookStack\\Page',9,'view',1,1,1),(3,'BookStack\\Page',10,'delete',0,0,1),(3,'BookStack\\Page',10,'update',0,0,1),(3,'BookStack\\Page',10,'view',1,1,1),(3,'BookStack\\Page',11,'delete',0,0,1),(3,'BookStack\\Page',11,'update',0,0,1),(3,'BookStack\\Page',11,'view',1,1,1),(3,'BookStack\\Page',12,'delete',0,0,1),(3,'BookStack\\Page',12,'update',0,0,1),(3,'BookStack\\Page',12,'view',1,1,1),(3,'BookStack\\Page',13,'delete',0,0,1),(3,'BookStack\\Page',13,'update',0,0,1),(3,'BookStack\\Page',13,'view',1,1,1),(4,'BookStack\\Book',1,'chapter-create',0,0,1),(4,'BookStack\\Book',1,'delete',0,0,1),(4,'BookStack\\Book',1,'page-create',0,0,1),(4,'BookStack\\Book',1,'update',0,0,1),(4,'BookStack\\Book',1,'view',1,1,1),(4,'BookStack\\Book',2,'chapter-create',0,0,1),(4,'BookStack\\Book',2,'delete',0,0,1),(4,'BookStack\\Book',2,'page-create',0,0,1),(4,'BookStack\\Book',2,'update',0,0,1),(4,'BookStack\\Book',2,'view',1,1,1),(4,'BookStack\\Book',3,'chapter-create',0,0,1),(4,'BookStack\\Book',3,'delete',0,0,1),(4,'BookStack\\Book',3,'page-create',0,0,1),(4,'BookStack\\Book',3,'update',0,0,1),(4,'BookStack\\Book',3,'view',1,1,1),(4,'BookStack\\Book',4,'chapter-create',0,0,1),(4,'BookStack\\Book',4,'delete',0,0,1),(4,'BookStack\\Book',4,'page-create',0,0,1),(4,'BookStack\\Book',4,'update',0,0,1),(4,'BookStack\\Book',4,'view',1,1,1),(4,'BookStack\\Book',5,'chapter-create',0,0,1),(4,'BookStack\\Book',5,'delete',0,0,1),(4,'BookStack\\Book',5,'page-create',0,0,1),(4,'BookStack\\Book',5,'update',0,0,1),(4,'BookStack\\Book',5,'view',1,1,1),(4,'BookStack\\Bookshelf',1,'delete',0,0,1),(4,'BookStack\\Bookshelf',1,'update',0,0,1),(4,'BookStack\\Bookshelf',1,'view',1,1,1),(4,'BookStack\\Chapter',1,'delete',0,0,1),(4,'BookStack\\Chapter',1,'page-create',0,0,1),(4,'BookStack\\Chapter',1,'update',0,0,1),(4,'BookStack\\Chapter',1,'view',1,1,1),(4,'BookStack\\Page',1,'delete',0,0,1),(4,'BookStack\\Page',1,'update',0,0,1),(4,'BookStack\\Page',1,'view',1,1,1),(4,'BookStack\\Page',2,'delete',0,0,1),(4,'BookStack\\Page',2,'update',0,0,1),(4,'BookStack\\Page',2,'view',1,1,1),(4,'BookStack\\Page',3,'delete',0,0,1),(4,'BookStack\\Page',3,'update',0,0,1),(4,'BookStack\\Page',3,'view',1,1,1),(4,'BookStack\\Page',4,'delete',0,0,1),(4,'BookStack\\Page',4,'update',0,0,1),(4,'BookStack\\Page',4,'view',1,1,1),(4,'BookStack\\Page',5,'delete',0,0,1),(4,'BookStack\\Page',5,'update',0,0,1),(4,'BookStack\\Page',5,'view',1,1,1),(4,'BookStack\\Page',6,'delete',0,0,1),(4,'BookStack\\Page',6,'update',0,0,1),(4,'BookStack\\Page',6,'view',1,1,1),(4,'BookStack\\Page',7,'delete',0,0,1),(4,'BookStack\\Page',7,'update',0,0,1),(4,'BookStack\\Page',7,'view',1,1,1),(4,'BookStack\\Page',8,'delete',0,0,1),(4,'BookStack\\Page',8,'update',0,0,1),(4,'BookStack\\Page',8,'view',1,1,1),(4,'BookStack\\Page',9,'delete',0,0,1),(4,'BookStack\\Page',9,'update',0,0,1),(4,'BookStack\\Page',9,'view',1,1,1),(4,'BookStack\\Page',10,'delete',0,0,1),(4,'BookStack\\Page',10,'update',0,0,1),(4,'BookStack\\Page',10,'view',1,1,1),(4,'BookStack\\Page',11,'delete',0,0,1),(4,'BookStack\\Page',11,'update',0,0,1),(4,'BookStack\\Page',11,'view',1,1,1),(4,'BookStack\\Page',12,'delete',0,0,1),(4,'BookStack\\Page',12,'update',0,0,1),(4,'BookStack\\Page',12,'view',1,1,1),(4,'BookStack\\Page',13,'delete',0,0,1),(4,'BookStack\\Page',13,'update',0,0,1),(4,'BookStack\\Page',13,'view',1,1,1);
/*!40000 ALTER TABLE `joint_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mfa_values`
--

DROP TABLE IF EXISTS `mfa_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mfa_values` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `method` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mfa_values_user_id_index` (`user_id`),
  KEY `mfa_values_method_index` (`method`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mfa_values`
--

LOCK TABLES `mfa_values` WRITE;
/*!40000 ALTER TABLE `mfa_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `mfa_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2015_07_12_114933_create_books_table',1),(4,'2015_07_12_190027_create_pages_table',1),(5,'2015_07_13_172121_create_images_table',1),(6,'2015_07_27_172342_create_chapters_table',1),(7,'2015_08_08_200447_add_users_to_entities',1),(8,'2015_08_09_093534_create_page_revisions_table',1),(9,'2015_08_16_142133_create_activities_table',1),(10,'2015_08_29_105422_add_roles_and_permissions',1),(11,'2015_08_30_125859_create_settings_table',1),(12,'2015_08_31_175240_add_search_indexes',1),(13,'2015_09_04_165821_create_social_accounts_table',1),(14,'2015_09_05_164707_add_email_confirmation_table',1),(15,'2015_11_21_145609_create_views_table',1),(16,'2015_11_26_221857_add_entity_indexes',1),(17,'2015_12_05_145049_fulltext_weighting',1),(18,'2015_12_07_195238_add_image_upload_types',1),(19,'2015_12_09_195748_add_user_avatars',1),(20,'2016_01_11_210908_add_external_auth_to_users',1),(21,'2016_02_25_184030_add_slug_to_revisions',1),(22,'2016_02_27_120329_update_permissions_and_roles',1),(23,'2016_02_28_084200_add_entity_access_controls',1),(24,'2016_03_09_203143_add_page_revision_types',1),(25,'2016_03_13_082138_add_page_drafts',1),(26,'2016_03_25_123157_add_markdown_support',1),(27,'2016_04_09_100730_add_view_permissions_to_roles',1),(28,'2016_04_20_192649_create_joint_permissions_table',1),(29,'2016_05_06_185215_create_tags_table',1),(30,'2016_07_07_181521_add_summary_to_page_revisions',1),(31,'2016_09_29_101449_remove_hidden_roles',1),(32,'2016_10_09_142037_create_attachments_table',1),(33,'2017_01_21_163556_create_cache_table',1),(34,'2017_01_21_163602_create_sessions_table',1),(35,'2017_03_19_091553_create_search_index_table',1),(36,'2017_04_20_185112_add_revision_counts',1),(37,'2017_07_02_152834_update_db_encoding_to_ut8mb4',1),(38,'2017_08_01_130541_create_comments_table',1),(39,'2017_08_29_102650_add_cover_image_display',1),(40,'2018_07_15_173514_add_role_external_auth_id',1),(41,'2018_08_04_115700_create_bookshelves_table',1),(42,'2019_07_07_112515_add_template_support',1),(43,'2019_08_17_140214_add_user_invites_table',1),(44,'2019_12_29_120917_add_api_auth',1),(45,'2020_08_04_111754_drop_joint_permissions_id',1),(46,'2020_08_04_131052_remove_role_name_field',1),(47,'2020_09_19_094251_add_activity_indexes',1),(48,'2020_09_27_210059_add_entity_soft_deletes',1),(49,'2020_09_27_210528_create_deletions_table',1),(50,'2020_11_07_232321_simplify_activities_table',1),(51,'2020_12_30_173528_add_owned_by_field_to_entities',1),(52,'2021_01_30_225441_add_settings_type_column',1),(53,'2021_03_08_215138_add_user_slug',1),(54,'2021_05_15_173110_create_favourites_table',1),(55,'2021_06_30_173111_create_mfa_values_table',1),(56,'2021_07_03_085038_add_mfa_enforced_to_roles_table',1),(57,'2021_08_28_161743_add_export_role_permission',1),(58,'2021_09_26_044614_add_activities_ip_column',1),(59,'2021_11_26_070438_add_index_for_user_ip',1),(60,'2021_12_07_111343_create_webhooks_table',1),(61,'2021_12_13_152024_create_jobs_table',1),(62,'2021_12_13_152120_create_failed_jobs_table',1),(63,'2022_01_03_154041_add_webhooks_timeout_error_columns',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_revisions`
--

DROP TABLE IF EXISTS `page_revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page_revisions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `html` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'version',
  `markdown` longtext COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `summary` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revision_number` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `page_revisions_page_id_index` (`page_id`),
  KEY `page_revisions_slug_index` (`slug`),
  KEY `page_revisions_book_slug_index` (`book_slug`),
  KEY `page_revisions_type_index` (`type`),
  KEY `page_revisions_revision_number_index` (`revision_number`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_revisions`
--

LOCK TABLES `page_revisions` WRITE;
/*!40000 ALTER TABLE `page_revisions` DISABLE KEYS */;
INSERT INTO `page_revisions` VALUES (1,3,'Travail Préparatoire','','',1,'2022-03-30 11:50:38','2022-03-30 11:50:38','travail-preparatoire','guacamole','version','','Initial publish',1),(2,1,'Travail Préparatoire','','',1,'2022-03-30 11:51:27','2022-03-30 11:51:27','travail-preparatoire','wireguard','version','','Initial publish',1),(3,4,'Travail Préparatoire','','',1,'2022-03-30 11:51:43','2022-03-30 11:51:43','travail-preparatoire','hardening','version','','Initial publish',1),(4,5,'Présentation','','',1,'2022-03-30 12:02:47','2022-03-30 12:02:47','presentation','wireguard','version','','Initial publish',1),(5,6,'Installation','','',1,'2022-03-30 12:02:55','2022-03-30 12:02:55','installation','wireguard','version','','Initial publish',1),(6,7,'Configuration','','',1,'2022-03-30 12:03:04','2022-03-30 12:03:04','configuration','wireguard','version','','Initial publish',1),(7,8,'Optimisation','','',1,'2022-03-30 12:03:16','2022-03-30 12:03:16','optimisation','wireguard','version','','Initial publish',1),(8,9,'Sécurisation','','',1,'2022-03-30 12:03:25','2022-03-30 12:03:25','securisation','wireguard','version','','Initial publish',1),(9,10,'Tests','','',1,'2022-03-30 12:03:32','2022-03-30 12:03:32','tests','wireguard','version','','Initial publish',1),(10,11,'Accès à une machine Linux (ssh)','','',1,'2022-03-30 12:04:10','2022-03-30 12:04:10','acces-a-une-machine-linux-ssh','guacamole','version','','Initial publish',1),(11,12,'Accès à une machine Windows (rdp)','','',1,'2022-03-30 12:04:28','2022-03-30 12:04:28','acces-a-une-machine-windows-rdp','guacamole','version','','Initial publish',1),(12,13,'Accès à une machine MacOSX (vnc)','','',1,'2022-03-30 12:04:51','2022-03-30 12:04:51','acces-a-une-machine-macosx-vnc','guacamole','version','','Initial publish',1);
/*!40000 ALTER TABLE `page_revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `book_id` int(11) NOT NULL,
  `chapter_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `html` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `restricted` tinyint(1) NOT NULL DEFAULT 0,
  `draft` tinyint(1) NOT NULL DEFAULT 0,
  `markdown` longtext COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `revision_count` int(11) NOT NULL,
  `template` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `owned_by` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_slug_index` (`slug`),
  KEY `pages_book_id_index` (`book_id`),
  KEY `pages_chapter_id_index` (`chapter_id`),
  KEY `pages_priority_index` (`priority`),
  KEY `pages_created_by_index` (`created_by`),
  KEY `pages_updated_by_index` (`updated_by`),
  KEY `pages_restricted_index` (`restricted`),
  KEY `pages_draft_index` (`draft`),
  KEY `pages_template_index` (`template`),
  KEY `pages_owned_by_index` (`owned_by`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,2,0,'Travail Préparatoire','travail-preparatoire','','',2,'2022-03-30 11:43:49','2022-03-30 11:51:27',1,1,0,0,'',1,0,NULL,1),(2,3,0,'Write-up BookStack','','','',0,'2022-03-30 11:46:36','2022-03-30 11:49:38',1,1,0,1,'',0,0,NULL,1),(3,4,0,'Travail Préparatoire','travail-preparatoire','','',2,'2022-03-30 11:50:13','2022-03-30 11:50:38',1,1,0,0,'',1,0,NULL,1),(4,5,0,'Travail Préparatoire','travail-preparatoire','','',2,'2022-03-30 11:51:36','2022-03-30 11:51:43',1,1,0,0,'',1,0,NULL,1),(5,2,0,'Présentation','presentation','','',3,'2022-03-30 12:02:37','2022-03-30 12:02:47',1,1,0,0,'',1,0,NULL,1),(6,2,0,'Installation','installation','','',4,'2022-03-30 12:02:51','2022-03-30 12:02:55',1,1,0,0,'',1,0,NULL,1),(7,2,0,'Configuration','configuration','','',5,'2022-03-30 12:02:59','2022-03-30 12:03:04',1,1,0,0,'',1,0,NULL,1),(8,2,0,'Optimisation','optimisation','','',6,'2022-03-30 12:03:07','2022-03-30 12:03:16',1,1,0,0,'',1,0,NULL,1),(9,2,0,'Sécurisation','securisation','','',7,'2022-03-30 12:03:19','2022-03-30 12:03:25',1,1,0,0,'',1,0,NULL,1),(10,2,0,'Tests','tests','','',8,'2022-03-30 12:03:28','2022-03-30 12:03:32',1,1,0,0,'',1,0,NULL,1),(11,4,0,'Accès à une machine Linux (ssh)','acces-a-une-machine-linux-ssh','','',3,'2022-03-30 12:03:56','2022-03-30 12:04:10',1,1,0,0,'',1,0,NULL,1),(12,4,0,'Accès à une machine Windows (rdp)','acces-a-une-machine-windows-rdp','','',4,'2022-03-30 12:04:13','2022-03-30 12:04:28',1,1,0,0,'',1,0,NULL,1),(13,4,0,'Accès à une machine MacOSX (vnc)','acces-a-une-machine-macosx-vnc','','',5,'2022-03-30 12:04:32','2022-03-30 12:04:51',1,1,0,0,'',1,0,NULL,1);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_role_id_foreign` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `role_permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(24,2),(25,1),(25,2),(26,1),(26,2),(27,1),(27,2),(28,1),(28,2),(29,1),(29,2),(30,1),(30,2),(31,1),(31,2),(32,1),(32,2),(33,1),(33,2),(34,1),(34,2),(35,1),(35,2),(36,1),(36,2),(37,1),(37,2),(38,1),(38,2),(39,1),(39,2),(40,1),(40,2),(41,1),(41,2),(42,1),(42,2),(43,1),(43,2),(44,1),(44,2),(45,1),(45,2),(46,1),(46,2),(47,1),(47,2),(48,1),(48,2),(48,3),(48,4),(49,1),(49,2),(49,3),(49,4),(50,1),(50,2),(50,3),(50,4),(51,1),(51,2),(51,3),(51,4),(52,1),(52,2),(52,3),(52,4),(53,1),(53,2),(53,3),(53,4),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(66,2),(66,3),(66,4),(67,1),(67,2),(67,3),(67,4),(68,1),(68,2),(69,1),(69,2),(70,1),(70,2),(71,1),(71,2),(72,1),(72,2),(73,1),(73,2),(74,1),(75,1),(76,1),(76,2),(76,3),(76,4);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_permissions`
--

DROP TABLE IF EXISTS `role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_permissions`
--

LOCK TABLES `role_permissions` WRITE;
/*!40000 ALTER TABLE `role_permissions` DISABLE KEYS */;
INSERT INTO `role_permissions` VALUES (19,'settings-manage','Manage Settings',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(20,'users-manage','Manage Users',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(21,'user-roles-manage','Manage Roles & Permissions',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(22,'restrictions-manage-all','Manage All Entity Permissions',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(23,'restrictions-manage-own','Manage Entity Permissions On Own Content',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(24,'book-create-all','Create All Books',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(25,'book-create-own','Create Own Books',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(26,'book-update-all','Update All Books',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(27,'book-update-own','Update Own Books',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(28,'book-delete-all','Delete All Books',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(29,'book-delete-own','Delete Own Books',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(30,'page-create-all','Create All Pages',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(31,'page-create-own','Create Own Pages',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(32,'page-update-all','Update All Pages',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(33,'page-update-own','Update Own Pages',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(34,'page-delete-all','Delete All Pages',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(35,'page-delete-own','Delete Own Pages',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(36,'chapter-create-all','Create All Chapters',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(37,'chapter-create-own','Create Own Chapters',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(38,'chapter-update-all','Update All Chapters',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(39,'chapter-update-own','Update Own Chapters',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(40,'chapter-delete-all','Delete All Chapters',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(41,'chapter-delete-own','Delete Own Chapters',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(42,'image-create-all','Create All Images',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(43,'image-create-own','Create Own Images',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(44,'image-update-all','Update All Images',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(45,'image-update-own','Update Own Images',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(46,'image-delete-all','Delete All Images',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(47,'image-delete-own','Delete Own Images',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(48,'book-view-all','View All Books',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(49,'book-view-own','View Own Books',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(50,'page-view-all','View All Pages',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(51,'page-view-own','View Own Pages',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(52,'chapter-view-all','View All Chapters',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(53,'chapter-view-own','View Own Chapters',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(54,'attachment-create-all','Create All Attachments',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(55,'attachment-create-own','Create Own Attachments',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(56,'attachment-update-all','Update All Attachments',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(57,'attachment-update-own','Update Own Attachments',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(58,'attachment-delete-all','Delete All Attachments',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(59,'attachment-delete-own','Delete Own Attachments',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(60,'comment-create-all','Create All Comments',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(61,'comment-create-own','Create Own Comments',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(62,'comment-update-all','Update All Comments',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(63,'comment-update-own','Update Own Comments',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(64,'comment-delete-all','Delete All Comments',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(65,'comment-delete-own','Delete Own Comments',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(66,'bookshelf-view-all','View All BookShelves',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(67,'bookshelf-view-own','View Own BookShelves',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(68,'bookshelf-create-all','Create All BookShelves',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(69,'bookshelf-create-own','Create Own BookShelves',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(70,'bookshelf-update-all','Update All BookShelves',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(71,'bookshelf-update-own','Update Own BookShelves',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(72,'bookshelf-delete-all','Delete All BookShelves',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(73,'bookshelf-delete-own','Delete Own BookShelves',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(74,'templates-manage','Manage Page Templates',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(75,'access-api','Access system API',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15'),(76,'content-export','Export Content',NULL,'2022-01-15 14:09:16','2022-01-15 14:09:16');
/*!40000 ALTER TABLE `role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_user` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_user_role_id_foreign` (`role_id`),
  CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_user`
--

LOCK TABLES `role_user` WRITE;
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
INSERT INTO `role_user` VALUES (1,1),(2,4),(3,1),(4,2),(5,3),(8,2);
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `system_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `external_auth_id` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mfa_enforced` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `roles_system_name_index` (`system_name`),
  KEY `roles_external_auth_id_index` (`external_auth_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Admin','Administrator of the whole application','2022-01-15 14:09:15','2022-01-15 14:09:15','admin','',0),(2,'Editor','User can edit Books, Chapters & Pages','2022-01-15 14:09:15','2022-01-15 14:09:15','','',0),(3,'Viewer','User can view books & their content behind authentication','2022-01-15 14:09:15','2022-01-15 14:09:15','','',0),(4,'Public','The role given to public visitors if allowed','2022-01-15 14:09:15','2022-01-15 14:09:15','public','',0);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_terms`
--

DROP TABLE IF EXISTS `search_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_terms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_id` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `search_terms_term_index` (`term`),
  KEY `search_terms_entity_type_index` (`entity_type`),
  KEY `search_terms_entity_type_entity_id_index` (`entity_type`,`entity_id`),
  KEY `search_terms_score_index` (`score`)
) ENGINE=InnoDB AUTO_INCREMENT=291 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_terms`
--

LOCK TABLES `search_terms` WRITE;
/*!40000 ALTER TABLE `search_terms` DISABLE KEYS */;
INSERT INTO `search_terms` VALUES (40,'Script','BookStack\\Chapter',1,48),(41,'Cheat','BookStack\\Chapter',1,48),(42,'Complet','BookStack\\Chapter',1,48),(43,'/bin/bash\r','BookStack\\Chapter',1,1),(44,'\r','BookStack\\Chapter',1,69),(45,'clear\r','BookStack\\Chapter',1,1),(46,'function','BookStack\\Chapter',1,8),(47,'install_exe_cheat','BookStack\\Chapter',1,1),(48,'wget','BookStack\\Chapter',1,1),(49,'https','BookStack\\Chapter',1,2),(50,'//github','BookStack\\Chapter',1,2),(51,'com/cheat/cheat/releases/download/4','BookStack\\Chapter',1,1),(52,'2','BookStack\\Chapter',1,1),(53,'3/cheat-linux-amd64','BookStack\\Chapter',1,1),(54,'gz\r','BookStack\\Chapter',1,2),(55,'gunzip','BookStack\\Chapter',1,1),(56,'cheat-linux-amd64','BookStack\\Chapter',1,2),(57,'chmod','BookStack\\Chapter',1,6),(58,'a+x','BookStack\\Chapter',1,1),(59,'cheat-linux-amd64\r','BookStack\\Chapter',1,1),(60,'mv','BookStack\\Chapter',1,1),(61,'-v','BookStack\\Chapter',1,11),(62,'/usr/local/bin/cheat\r','BookStack\\Chapter',1,2),(63,'uninstall_exe_cheat','BookStack\\Chapter',1,1),(64,'rm','BookStack\\Chapter',1,3),(65,'-f','BookStack\\Chapter',1,1),(66,'download_cheatsheets','BookStack\\Chapter',1,1),(67,'apt','BookStack\\Chapter',1,1),(68,'install','BookStack\\Chapter',1,1),(69,'git','BookStack\\Chapter',1,2),(70,'-y\r','BookStack\\Chapter',1,1),(71,'mkdir','BookStack\\Chapter',1,5),(72,'-pv','BookStack\\Chapter',1,1),(73,'/opt/COMMUN/cheat/cheatsheets/community\r','BookStack\\Chapter',1,2),(74,'/opt/COMMUN/cheat/cheatsheets/personal\r','BookStack\\Chapter',1,2),(75,'cheat','BookStack\\Chapter',1,2),(76,'--init','BookStack\\Chapter',1,1),(77,'/opt/COMMUN/cheat/conf','BookStack\\Chapter',1,2),(78,'yml\r','BookStack\\Chapter',1,2),(79,'sed','BookStack\\Chapter',1,1),(80,'-i','BookStack\\Chapter',1,1),(81,'s','BookStack\\Chapter',1,1),(82,'/root/','BookStack\\Chapter',1,5),(83,'config/','BookStack\\Chapter',1,1),(84,'/opt/COMMUN/','BookStack\\Chapter',1,2),(85,'clone','BookStack\\Chapter',1,1),(86,'com/cheat/cheatsheets','BookStack\\Chapter',1,1),(87,'git\r','BookStack\\Chapter',1,1),(88,'\\mv','BookStack\\Chapter',1,1),(89,'cheatsheets/','BookStack\\Chapter',1,1),(90,'a-z','BookStack\\Chapter',1,1),(91,'*','BookStack\\Chapter',1,1),(92,'install_COMMNUN','BookStack\\Chapter',1,1),(93,'groupadd','BookStack\\Chapter',1,1),(94,'-g','BookStack\\Chapter',1,1),(95,'10000','BookStack\\Chapter',1,2),(96,'commun','BookStack\\Chapter',1,3),(97,'chgrp','BookStack\\Chapter',1,3),(98,'-Rv','BookStack\\Chapter',1,1),(99,'/opt/COMMUN/\r','BookStack\\Chapter',1,1),(100,'2770','BookStack\\Chapter',1,2),(101,'#find','BookStack\\Chapter',1,2),(102,'/opt/COMMUN/cheat/cheatsheets/personal','BookStack\\Chapter',1,1),(103,'-type','BookStack\\Chapter',1,2),(104,'d','BookStack\\Chapter',1,1),(105,'-exec','BookStack\\Chapter',1,2),(106,'\\','BookStack\\Chapter',1,2),(107,'f','BookStack\\Chapter',1,1),(108,'660','BookStack\\Chapter',1,1),(109,'modif_user_matteo','BookStack\\Chapter',1,1),(110,'usermod','BookStack\\Chapter',1,3),(111,'-aG','BookStack\\Chapter',1,3),(112,'sudo','BookStack\\Chapter',1,4),(113,'mateo','BookStack\\Chapter',1,1),(114,'matteo','BookStack\\Chapter',1,2),(115,'echo','BookStack\\Chapter',1,28),(116,'umask','BookStack\\Chapter',1,4),(117,'007','BookStack\\Chapter',1,3),(118,'/home/matteo/','BookStack\\Chapter',1,4),(119,'bashrc\r','BookStack\\Chapter',1,3),(120,'config','BookStack\\Chapter',1,1),(121,'ln','BookStack\\Chapter',1,3),(122,'-s','BookStack\\Chapter',1,4),(123,'/opt/COMMUN/cheat','BookStack\\Chapter',1,3),(124,'config/cheat','BookStack\\Chapter',1,1),(125,'chown','BookStack\\Chapter',1,3),(126,'-R','BookStack\\Chapter',1,1),(127,'config\r','BookStack\\Chapter',1,2),(128,'install_cheat_ROOT','BookStack\\Chapter',1,1),(129,'config/cheat\r','BookStack\\Chapter',1,2),(130,'/etc/skel/','BookStack\\Chapter',1,4),(131,'cat','BookStack\\Chapter',1,2),(132,'bashrc','BookStack\\Chapter',1,2),(133,'EOF\r','BookStack\\Chapter',1,4),(134,'alias','BookStack\\Chapter',1,12),(135,'ll=','BookStack\\Chapter',1,2),(136,'ls','BookStack\\Chapter',1,2),(137,'-rtl','BookStack\\Chapter',1,2),(138,'grep=','BookStack\\Chapter',1,2),(139,'grep','BookStack\\Chapter',1,2),(140,'--color','BookStack\\Chapter',1,2),(141,'rm=','BookStack\\Chapter',1,2),(142,'-vi','BookStack\\Chapter',1,2),(143,'--preserve-root','BookStack\\Chapter',1,8),(144,'chown=','BookStack\\Chapter',1,2),(145,'chmod=','BookStack\\Chapter',1,2),(146,'chgrp=','BookStack\\Chapter',1,2),(147,'007\r','BookStack\\Chapter',1,1),(148,'install_cheat_all_new_users','BookStack\\Chapter',1,1),(149,'config/\r','BookStack\\Chapter',1,1),(150,'create_user_esgi','BookStack\\Chapter',1,2),(151,'useradd','BookStack\\Chapter',1,1),(152,'-m','BookStack\\Chapter',1,1),(153,'-G','BookStack\\Chapter',1,1),(154,'/bin/bash','BookStack\\Chapter',1,1),(155,'esgi\r','BookStack\\Chapter',1,3),(156,'-e','BookStack\\Chapter',1,1),(157,'Pa55w','BookStack\\Chapter',1,1),(158,'rd\\nPa55w','BookStack\\Chapter',1,1),(159,'rd','BookStack\\Chapter',1,1),(160,'|','BookStack\\Chapter',1,1),(161,'passwd','BookStack\\Chapter',1,1),(162,'---------------------------------------------------','BookStack\\Chapter',1,12),(163,'Installation','BookStack\\Chapter',1,2),(164,'de','BookStack\\Chapter',1,4),(165,'plusieurs','BookStack\\Chapter',1,1),(166,'paquets','BookStack\\Chapter',1,1),(167,'qui','BookStack\\Chapter',1,1),(168,'seront','BookStack\\Chapter',1,1),(169,'utiles','BookStack\\Chapter',1,1),(170,'install_packages\r','BookStack\\Chapter',1,1),(171,'l','BookStack\\Chapter',1,3),(172,'outil','BookStack\\Chapter',1,2),(173,'install_exe_cheat\r','BookStack\\Chapter',1,1),(174,'Configuration','BookStack\\Chapter',1,2),(175,'cheatsheets','BookStack\\Chapter',1,1),(176,'download_cheatsheets\r','BookStack\\Chapter',1,1),(177,'-----------------------------------------------------------','BookStack\\Chapter',1,2),(178,'CrÃ©ation','BookStack\\Chapter',1,2),(179,'du','BookStack\\Chapter',1,3),(180,'dossier','BookStack\\Chapter',1,1),(181,'COMMUN','BookStack\\Chapter',1,1),(182,'Ã','BookStack\\Chapter',1,1),(183,'tous','BookStack\\Chapter',1,2),(184,'les','BookStack\\Chapter',1,2),(185,'autres','BookStack\\Chapter',1,1),(186,'utilisateurs','BookStack\\Chapter',1,2),(187,'install_COMMNUN\r','BookStack\\Chapter',1,1),(188,'Modification','BookStack\\Chapter',1,2),(189,'utilisateur','BookStack\\Chapter',1,2),(190,'thisma','BookStack\\Chapter',1,1),(191,'modif_user_thisma\r','BookStack\\Chapter',1,1),(192,'user','BookStack\\Chapter',1,1),(193,'Root','BookStack\\Chapter',1,1),(194,'install_cheat_ROOT\r','BookStack\\Chapter',1,1),(195,'-------------------------------------------------------------','BookStack\\Chapter',1,2),(196,'pour','BookStack\\Chapter',1,1),(197,'prochains','BookStack\\Chapter',1,1),(198,'nouveaux','BookStack\\Chapter',1,1),(199,'install_cheat_all_new_users\r','BookStack\\Chapter',1,1),(200,'nouvel','BookStack\\Chapter',1,1),(201,'esgi','BookStack\\Chapter',1,1),(202,'script','BookStack\\Chapter',1,3),(203,'Linux_Administration','BookStack\\Chapter',1,3),(204,'cheatsheet','BookStack\\Chapter',1,3),(205,'Script','BookStack\\Book',1,49),(206,'Cheat','BookStack\\Book',1,48),(207,'complet','BookStack\\Book',1,1),(208,'du','BookStack\\Book',1,1),(209,'cheatsheet','BookStack\\Book',1,1),(210,'dans','BookStack\\Book',1,1),(211,'le','BookStack\\Book',1,1),(212,'chapitre','BookStack\\Book',1,1),(213,'suivant','BookStack\\Book',1,1),(214,'script','BookStack\\Book',1,3),(215,'linux','BookStack\\Book',1,3),(216,'3ième','BookStack\\Bookshelf',1,49),(217,'Année','BookStack\\Bookshelf',1,48),(218,'Mémentos','BookStack\\Bookshelf',1,1),(219,'de','BookStack\\Bookshelf',1,1),(220,'année','BookStack\\Bookshelf',1,1),(221,'WireGuard','BookStack\\Book',2,48),(222,'BookStack','BookStack\\Book',3,48),(224,'Hardening','BookStack\\Book',5,48),(225,'hardening','BookStack\\Book',5,3),(226,'debian','BookStack\\Book',5,3),(229,'Travail','BookStack\\Page',3,40),(230,'Préparatoire','BookStack\\Page',3,40),(231,'Guacamole','BookStack\\Book',4,51),(232,'linux','BookStack\\Book',4,3),(233,'Windows','BookStack\\Book',4,3),(234,'MacOs','BookStack\\Book',4,3),(237,'Travail','BookStack\\Page',1,40),(238,'Préparatoire','BookStack\\Page',1,40),(241,'Travail','BookStack\\Page',4,40),(242,'Préparatoire','BookStack\\Page',4,40),(244,'Présentation','BookStack\\Page',5,40),(246,'Installation','BookStack\\Page',6,40),(248,'Configuration','BookStack\\Page',7,40),(250,'Optimisation','BookStack\\Page',8,40),(252,'Sécurisation','BookStack\\Page',9,40),(254,'Tests','BookStack\\Page',10,40),(261,'Accès','BookStack\\Page',11,40),(262,'à','BookStack\\Page',11,40),(263,'une','BookStack\\Page',11,40),(264,'machine','BookStack\\Page',11,40),(265,'Linux','BookStack\\Page',11,40),(266,'ssh','BookStack\\Page',11,40),(273,'Accès','BookStack\\Page',12,40),(274,'à','BookStack\\Page',12,40),(275,'une','BookStack\\Page',12,40),(276,'machine','BookStack\\Page',12,40),(277,'Windows','BookStack\\Page',12,40),(278,'rdp','BookStack\\Page',12,40),(285,'Accès','BookStack\\Page',13,40),(286,'à','BookStack\\Page',13,40),(287,'une','BookStack\\Page',13,40),(288,'machine','BookStack\\Page',13,40),(289,'MacOSX','BookStack\\Page',13,40),(290,'vnc','BookStack\\Page',13,40);
/*!40000 ALTER TABLE `search_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  UNIQUE KEY `sessions_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `setting_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'string',
  PRIMARY KEY (`setting_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES ('user:1:dark-mode-enabled','true','2022-01-15 14:41:32','2022-01-15 14:41:32','string'),('user:3:language','fr','2022-01-15 14:44:37','2022-01-15 14:44:37','string'),('user:4:language','fr','2022-01-15 14:47:23','2022-01-15 14:47:41','string'),('user:5:language','fr','2022-01-15 14:48:54','2022-01-15 14:49:00','string'),('user:7:language','fr','2022-03-30 11:01:24','2022-03-30 11:01:24','string'),('user:8:language','fr','2022-03-30 11:01:57','2022-03-30 11:01:57','string');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_accounts`
--

DROP TABLE IF EXISTS `social_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_accounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `driver` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `driver_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `social_accounts_user_id_index` (`user_id`),
  KEY `social_accounts_driver_index` (`driver`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_accounts`
--

LOCK TABLES `social_accounts` WRITE;
/*!40000 ALTER TABLE `social_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int(11) NOT NULL,
  `entity_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tags_name_index` (`name`),
  KEY `tags_value_index` (`value`),
  KEY `tags_order_index` (`order`),
  KEY `tags_entity_id_entity_type_index` (`entity_id`,`entity_type`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (3,1,'BookStack\\Chapter','script','',0,'2022-03-30 11:05:44','2022-03-30 11:05:44'),(4,1,'BookStack\\Chapter','Linux_Administration','',0,'2022-03-30 11:05:44','2022-03-30 11:05:44'),(5,1,'BookStack\\Chapter','cheatsheet','',0,'2022-03-30 11:05:44','2022-03-30 11:05:44'),(6,1,'BookStack\\Book','script','',0,'2022-03-30 11:07:22','2022-03-30 11:07:22'),(7,1,'BookStack\\Book','linux','',0,'2022-03-30 11:07:22','2022-03-30 11:07:22'),(8,5,'BookStack\\Book','hardening','',0,'2022-03-30 11:44:56','2022-03-30 11:44:56'),(9,5,'BookStack\\Book','debian','',0,'2022-03-30 11:44:56','2022-03-30 11:44:56'),(10,4,'BookStack\\Book','Guacamole','',0,'2022-03-30 11:51:07','2022-03-30 11:51:07'),(11,4,'BookStack\\Book','linux','',0,'2022-03-30 11:51:07','2022-03-30 11:51:07'),(12,4,'BookStack\\Book','Windows','',0,'2022-03-30 11:51:07','2022-03-30 11:51:07'),(13,4,'BookStack\\Book','MacOs','',0,'2022-03-30 11:51:07','2022-03-30 11:51:07');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_invites`
--

DROP TABLE IF EXISTS `user_invites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_invites` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_invites_user_id_index` (`user_id`),
  KEY `user_invites_token_index` (`token`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_invites`
--

LOCK TABLES `user_invites` WRITE;
/*!40000 ALTER TABLE `user_invites` DISABLE KEYS */;
INSERT INTO `user_invites` VALUES (1,3,'5I0FZAEmMlUHOuKelytNLxnN','2022-01-15 14:42:42','2022-01-15 14:42:42');
/*!40000 ALTER TABLE `user_invites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email_confirmed` tinyint(1) NOT NULL DEFAULT 1,
  `image_id` int(11) NOT NULL DEFAULT 0,
  `external_auth_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_slug_unique` (`slug`),
  KEY `users_external_auth_id_index` (`external_auth_id`),
  KEY `users_system_name_index` (`system_name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin','admin@admin.com','$2y$10$tggo0a4te8VDnG7oDh0DhO8GBMs8CCl14uIcn5a4MiEqtS8G4g4wS',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15',1,0,'',NULL,'admin'),(2,'Guest','guest@example.com','',NULL,'2022-01-15 14:09:15','2022-01-15 14:09:15',1,0,'','public','guest'),(3,'nimda','nimda@nimda.com','$2y$10$Xl3c5yMb/T5TmU5osbpNYOCYOYizGp5jG6eBQW6HukbIqz42ajCR6',NULL,'2022-01-15 14:42:42','2022-01-15 14:44:37',1,1,'',NULL,'nimda'),(4,'matteo','matteo.martini@protonmail.com','$2y$10$F9Woni.jdC6hHJe86f8aRen4JoyFpM1Q1hULSIauKqhPDyWtJHliC',NULL,'2022-01-15 14:45:10','2022-01-15 14:47:41',1,3,'',NULL,'matteo'),(5,'joe','joe@joe.com','$2y$10$KKtyfkUzvJkda3jVqKgFeugcCxA2UwQCii5IkyRhTFeoBFSbg1tpK',NULL,'2022-01-15 14:48:22','2022-01-15 14:48:22',1,4,'',NULL,'joe'),(8,'esgi','esgi@esgi.fr','$2y$10$YkgbdQoN4ByHCfEUXUw8S.kOCDvD8CPB.WGG9UX9mNlzdjiMNC2/u',NULL,'2022-03-30 11:01:57','2022-03-30 11:01:57',1,7,'',NULL,'esgi');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `views`
--

DROP TABLE IF EXISTS `views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `views` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `viewable_id` int(11) NOT NULL,
  `viewable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `views_user_id_index` (`user_id`),
  KEY `views_viewable_id_index` (`viewable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `views`
--

LOCK TABLES `views` WRITE;
/*!40000 ALTER TABLE `views` DISABLE KEYS */;
INSERT INTO `views` VALUES (1,1,1,'BookStack\\Bookshelf',19,'2022-01-19 20:58:43','2022-03-30 11:51:49'),(2,1,1,'BookStack\\Book',7,'2022-03-30 11:03:33','2022-03-30 11:43:36'),(3,1,1,'BookStack\\Chapter',4,'2022-03-30 11:05:45','2022-03-30 11:35:17'),(4,1,2,'BookStack\\Book',11,'2022-03-30 11:43:47','2022-03-30 12:03:34'),(5,1,3,'BookStack\\Book',4,'2022-03-30 11:44:11','2022-03-30 11:51:11'),(6,1,4,'BookStack\\Book',9,'2022-03-30 11:44:25','2022-03-30 12:04:53'),(7,1,5,'BookStack\\Book',2,'2022-03-30 11:44:56','2022-03-30 11:51:34'),(8,1,3,'BookStack\\Page',1,'2022-03-30 11:50:38','2022-03-30 11:50:38'),(9,1,1,'BookStack\\Page',1,'2022-03-30 11:51:27','2022-03-30 11:51:27'),(10,1,4,'BookStack\\Page',1,'2022-03-30 11:51:44','2022-03-30 11:51:44'),(11,1,5,'BookStack\\Page',1,'2022-03-30 12:02:47','2022-03-30 12:02:47'),(12,1,6,'BookStack\\Page',1,'2022-03-30 12:02:55','2022-03-30 12:02:55'),(13,1,7,'BookStack\\Page',1,'2022-03-30 12:03:04','2022-03-30 12:03:04'),(14,1,8,'BookStack\\Page',1,'2022-03-30 12:03:16','2022-03-30 12:03:16'),(15,1,9,'BookStack\\Page',1,'2022-03-30 12:03:25','2022-03-30 12:03:25'),(16,1,10,'BookStack\\Page',1,'2022-03-30 12:03:33','2022-03-30 12:03:33'),(17,1,11,'BookStack\\Page',1,'2022-03-30 12:04:10','2022-03-30 12:04:10'),(18,1,12,'BookStack\\Page',1,'2022-03-30 12:04:28','2022-03-30 12:04:28'),(19,1,13,'BookStack\\Page',1,'2022-03-30 12:04:51','2022-03-30 12:04:51');
/*!40000 ALTER TABLE `views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webhook_tracked_events`
--

DROP TABLE IF EXISTS `webhook_tracked_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webhook_tracked_events` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `webhook_id` int(11) NOT NULL,
  `event` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `webhook_tracked_events_event_index` (`event`),
  KEY `webhook_tracked_events_webhook_id_index` (`webhook_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webhook_tracked_events`
--

LOCK TABLES `webhook_tracked_events` WRITE;
/*!40000 ALTER TABLE `webhook_tracked_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `webhook_tracked_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webhooks`
--

DROP TABLE IF EXISTS `webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webhooks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `endpoint` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `timeout` int(10) unsigned NOT NULL DEFAULT 3,
  `last_error` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_called_at` timestamp NULL DEFAULT NULL,
  `last_errored_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `webhooks_name_index` (`name`),
  KEY `webhooks_active_index` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webhooks`
--

LOCK TABLES `webhooks` WRITE;
/*!40000 ALTER TABLE `webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `webhooks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-30 22:22:31
