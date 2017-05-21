-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: forum
-- ------------------------------------------------------
-- Server version	5.7.17-0ubuntu0.16.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
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
  `user_id` int(10) unsigned NOT NULL,
  `subject_id` int(10) unsigned NOT NULL,
  `subject_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activities_user_id_index` (`user_id`),
  KEY `activities_subject_id_index` (`subject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activities`
--

LOCK TABLES `activities` WRITE;
/*!40000 ALTER TABLE `activities` DISABLE KEYS */;
INSERT INTO `activities` VALUES (9,7,25,'App\\Thread','created_thread','2017-04-29 13:37:52','2017-04-29 13:37:52'),(14,7,3,'App\\Favorite','created_favorite','2017-04-29 16:48:08','2017-04-29 16:48:08'),(19,7,4,'App\\Favorite','created_favorite','2017-05-04 20:28:51','2017-05-04 20:28:51'),(21,7,35,'App\\Reply','created_reply','2017-05-05 10:49:05','2017-05-05 10:49:05');
/*!40000 ALTER TABLE `activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channels`
--

DROP TABLE IF EXISTS `channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channels`
--

LOCK TABLES `channels` WRITE;
/*!40000 ALTER TABLE `channels` DISABLE KEYS */;
INSERT INTO `channels` VALUES (1,'provident','provident','2017-04-26 20:10:43','2017-04-26 20:10:43'),(2,'vero','vero','2017-04-26 20:16:59','2017-04-26 20:16:59'),(3,'consequatur','consequatur','2017-04-26 20:16:59','2017-04-26 20:16:59'),(4,'asperiores','asperiores','2017-04-26 20:16:59','2017-04-26 20:16:59'),(5,'tempora','tempora','2017-04-26 20:16:59','2017-04-26 20:16:59'),(6,'id','id','2017-04-26 20:16:59','2017-04-26 20:16:59'),(7,'sunt','sunt','2017-04-27 20:47:40','2017-04-27 20:47:40'),(8,'dolores','dolores','2017-04-27 20:47:40','2017-04-27 20:47:40'),(9,'quas','quas','2017-04-27 20:47:40','2017-04-27 20:47:40'),(10,'nihil','nihil','2017-04-27 20:47:40','2017-04-27 20:47:40'),(11,'deleniti','deleniti','2017-04-27 20:47:40','2017-04-27 20:47:40'),(12,'numquam','numquam','2017-04-27 20:47:40','2017-04-27 20:47:40'),(13,'quidem','quidem','2017-04-27 20:47:40','2017-04-27 20:47:40'),(14,'minus','minus','2017-04-27 20:47:40','2017-04-27 20:47:40'),(15,'in','in','2017-04-27 20:47:40','2017-04-27 20:47:40'),(16,'excepturi','excepturi','2017-04-27 20:47:40','2017-04-27 20:47:40'),(17,'assumenda','assumenda','2017-04-27 20:47:40','2017-04-27 20:47:40'),(18,'ea','ea','2017-04-27 20:47:40','2017-04-27 20:47:40'),(19,'labore','labore','2017-04-27 20:47:40','2017-04-27 20:47:40'),(20,'quo','quo','2017-04-27 20:47:40','2017-04-27 20:47:40'),(21,'ut','ut','2017-04-27 20:47:40','2017-04-27 20:47:40'),(22,'consequatur','consequatur','2017-04-27 20:47:40','2017-04-27 20:47:40'),(23,'omnis','omnis','2017-04-27 20:47:40','2017-04-27 20:47:40'),(24,'odit','odit','2017-04-27 20:47:40','2017-04-27 20:47:40'),(25,'distinctio','distinctio','2017-04-27 20:47:40','2017-04-27 20:47:40'),(26,'numquam','numquam','2017-04-27 20:47:40','2017-04-27 20:47:40');
/*!40000 ALTER TABLE `channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favorites` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `favorited_id` int(10) unsigned NOT NULL,
  `favorited_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `favorites_user_id_favorited_id_favorited_type_unique` (`user_id`,`favorited_id`,`favorited_type`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
INSERT INTO `favorites` VALUES (1,7,10,'App\\Reply','2017-04-29 12:43:24','2017-04-29 12:43:24'),(2,7,5,'App\\Reply','2017-04-29 12:44:05','2017-04-29 12:44:05'),(3,7,29,'App\\Reply','2017-04-29 16:48:08','2017-04-29 16:48:08'),(4,7,32,'App\\Reply','2017-05-04 20:28:51','2017-05-04 20:28:51');
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (20,'2014_10_12_000000_create_users_table',1),(21,'2014_10_12_100000_create_password_resets_table',1),(22,'2017_03_28_181911_create_threads_table',1),(23,'2017_03_28_182443_create_replies_table',1),(24,'2017_04_01_091046_create_channels_table',1),(25,'2017_04_15_143055_create_favorites_table',1),(26,'2017_04_26_195507_create_activities_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
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
-- Table structure for table `replies`
--

DROP TABLE IF EXISTS `replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `replies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `thread_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replies`
--

LOCK TABLES `replies` WRITE;
/*!40000 ALTER TABLE `replies` DISABLE KEYS */;
INSERT INTO `replies` VALUES (2,4,9,'Nostrum dolorum aperiam aut provident recusandae quis ipsa. Odit cupiditate deleniti impedit laudantium illum eum dolorum. Eius qui id laboriosam molestias inventore provident placeat. Eaque quam praesentium corporis itaque. Ut molestiae animi dolore et numquam repellendus non.','2017-04-27 20:47:40','2017-04-27 20:47:40'),(3,5,11,'Possimus ipsam totam quos error. Iusto occaecati similique aspernatur dicta amet. Doloribus enim similique ea totam repellendus error.','2017-04-27 20:47:40','2017-04-27 20:47:40'),(4,6,13,'Nisi exercitationem ex voluptatem accusamus quos itaque voluptas. Est necessitatibus quas qui cupiditate in. Sunt ad est totam repudiandae ipsa mollitia ab.','2017-04-27 20:47:40','2017-04-27 20:47:40'),(5,7,15,'Minus non et labore. Rem sit officiis distinctio omnis. Tempora facere ut omnis accusantium. Inventore eveniet qui aspernatur consequatur voluptatum aut.','2017-04-27 20:47:40','2017-04-27 20:47:40'),(6,8,17,'Nisi porro ipsam ad et. Laborum possimus qui rem minus. Consequatur sed ab quidem iusto pariatur eos. Alias fugiat autem est dolores quas dolor.','2017-04-27 20:47:40','2017-04-27 20:47:40'),(7,9,19,'Tenetur molestias vel numquam enim. Voluptatem itaque similique laboriosam quaerat quo sit. Necessitatibus ut qui error. Eos sint aut nemo culpa sequi est cupiditate.','2017-04-27 20:47:40','2017-04-27 20:47:40'),(8,10,21,'Dicta repudiandae quia sed quisquam deleniti iste. Perspiciatis minima vel alias voluptatibus repellendus. Quae et veritatis sed enim voluptas. Et velit quia qui iusto.','2017-04-27 20:47:40','2017-04-27 20:47:40'),(9,11,23,'In assumenda non atque vel. Ratione voluptatum necessitatibus eius a. Animi quibusdam qui beatae ea. Et sed ipsa dolores praesentium et magni possimus.','2017-04-27 20:47:40','2017-04-27 20:47:40'),(10,12,25,'Voluptatum in commodi voluptatibus autem voluptas. Error consequuntur qui et ex vero. Est sit magnam ut reiciendis recusandae. Omnis quisquam qui beatae officiis fugit quidem.','2017-04-27 20:47:40','2017-04-27 20:47:40'),(11,13,27,'Placeat repellat ad pariatur. Quisquam rem quaerat consequatur aliquid fuga.','2017-04-27 20:47:40','2017-04-27 20:47:40'),(12,14,29,'Doloribus ex beatae unde nostrum. Quis omnis rerum sit aut ipsum id. Quos delectus optio commodi enim est corrupti. Voluptatem dolores est necessitatibus enim.','2017-04-27 20:47:40','2017-04-27 20:47:40'),(13,15,31,'Est dolores dignissimos reiciendis a eos repellendus assumenda. Corporis in maiores rem consectetur voluptate. Doloremque deleniti omnis non voluptates ducimus nesciunt libero aut.','2017-04-27 20:47:40','2017-04-27 20:47:40'),(14,16,33,'Velit temporibus earum fugiat debitis aut. Exercitationem sequi sit illum cupiditate expedita tenetur. Tempore beatae autem distinctio esse. Impedit cumque perspiciatis ut id nesciunt aliquid.','2017-04-27 20:47:40','2017-04-27 20:47:40'),(15,17,35,'Voluptatum deserunt dolorum qui. Repellendus voluptas magnam et et. Aut cupiditate accusantium facere.','2017-04-27 20:47:40','2017-04-27 20:47:40'),(16,18,37,'Praesentium veritatis et numquam quibusdam cum sapiente dicta. Et architecto molestias quidem quod. Unde neque occaecati possimus laboriosam dolorum. Sed ab voluptatem voluptas nihil sapiente.','2017-04-27 20:47:40','2017-04-27 20:47:40'),(17,19,39,'Eum dolores dolor reiciendis facere. Porro totam sed est velit. Quia consectetur consequuntur aut dolores voluptatum voluptas eligendi quisquam. Blanditiis similique voluptatem consequuntur consequatur.','2017-04-27 20:47:40','2017-04-27 20:47:40'),(18,20,41,'Eum aut minima dolorem. Ullam quo accusantium vitae. Repellat quaerat corporis veniam debitis.','2017-04-27 20:47:40','2017-04-27 20:47:40'),(19,21,43,'Sed praesentium pariatur omnis numquam nobis est provident. Tempore non adipisci laboriosam. Ut iure quia id et et. Impedit veniam nesciunt velit hic est. Aut voluptatem fugit in cupiditate dolor animi asperiores.','2017-04-27 20:47:40','2017-04-27 20:47:40'),(20,22,45,'Recusandae rerum ut quibusdam voluptas nostrum ea. Voluptatum enim molestiae inventore eum mollitia. Sit voluptatibus animi occaecati aperiam eius quae quo. Quos saepe et dolorem molestiae nam deserunt rerum voluptate.','2017-04-27 20:47:40','2017-04-27 20:47:40'),(21,23,47,'Consequatur aliquid non rerum et rerum porro doloribus. Non consequatur tenetur corrupti facilis. Ea dolorum ullam quod iure corporis perferendis earum. Ducimus modi explicabo tempore. Quo inventore est saepe veniam.','2017-04-27 20:47:40','2017-04-27 20:47:40'),(22,9,7,'i have something to say','2017-04-28 22:49:51','2017-04-28 22:49:51'),(23,12,7,'super','2017-04-29 12:43:34','2017-04-29 12:43:34'),(24,7,7,'WOW','2017-04-29 12:44:12','2017-04-29 12:44:12'),(35,4,7,'tu utu','2017-05-05 10:49:05','2017-05-05 10:49:05');
/*!40000 ALTER TABLE `replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `threads`
--

DROP TABLE IF EXISTS `threads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `threads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `channel_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `threads`
--

LOCK TABLES `threads` WRITE;
/*!40000 ALTER TABLE `threads` DISABLE KEYS */;
INSERT INTO `threads` VALUES (1,1,1,'Odio quaerat rerum earum in et eius qui.','Qui dolor cum repellendus in rerum. Nulla quo et libero rerum.','2017-04-26 20:10:43','2017-04-26 20:10:43'),(2,2,2,'Quia at voluptatibus iste sequi voluptatem suscipit molestias.','Ex sequi minima rem temporibus voluptates et. Non quas explicabo voluptatibus quis. Enim id suscipit quidem non veniam sapiente magni.','2017-04-26 20:16:59','2017-04-26 20:16:59'),(4,8,7,'Voluptates cum iste quo dolores et quae.','Sit autem eaque rem. Qui quis fugiat dignissimos quas. Tenetur est earum dolores ducimus impedit.','2017-04-27 20:47:40','2017-04-27 20:47:40'),(5,10,8,'Cum maiores omnis aut commodi maxime earum recusandae.','Officiis et ullam et ut omnis placeat ipsa. Repudiandae a molestiae et ex voluptas eligendi debitis et. Sit sunt et cumque ad voluptas aut. Sed sint delectus aut recusandae autem ut aliquam. Adipisci ipsum id sint aperiam.','2017-04-27 20:47:40','2017-04-27 20:47:40'),(6,12,9,'Quas quis ut nihil nostrum consequatur.','Atque quam ducimus quo fugit magni esse amet. Minima minima delectus consectetur ut. Sit minima perferendis praesentium dolores est consequatur omnis nobis. Perferendis voluptas dolor iusto quae.','2017-04-27 20:47:40','2017-04-27 20:47:40'),(7,14,10,'Voluptatum aspernatur harum fuga vero odio aliquam.','Quo quibusdam possimus enim vel. Cupiditate doloribus provident non vel ut consequatur quo. Ut sequi nesciunt suscipit dolore.','2017-04-27 20:47:40','2017-04-27 20:47:40'),(8,16,11,'Dicta modi rerum et.','Dolores beatae eligendi qui et vero a. Ut molestiae vero autem quis sequi odio ducimus. Quo amet aspernatur sint aut in alias et facilis. Nam cupiditate et aut et quidem pariatur ea quae.','2017-04-27 20:47:40','2017-04-27 20:47:40'),(9,18,12,'Autem alias itaque rerum architecto nobis.','Ipsum culpa quo consequuntur. Illo aliquam sit explicabo officiis consequatur voluptatem. Consectetur ea est soluta iure. Laborum neque odio qui ducimus dolor vel ipsum. Aut distinctio unde laborum labore.','2017-04-27 20:47:40','2017-04-27 20:47:40'),(10,20,13,'Aut magnam aut eius occaecati dolores dolorem explicabo.','Molestias deleniti repellat aspernatur sed tempora eum. Provident voluptate perferendis eligendi quibusdam rem esse minus. Magnam non itaque labore.','2017-04-27 20:47:40','2017-04-27 20:47:40'),(11,22,14,'Dolorem ut nihil est explicabo sapiente veritatis sit.','Earum consequuntur nesciunt molestiae et enim. Veniam illum dolores qui quibusdam dolor. Magnam nesciunt odit omnis facere at pariatur quisquam accusantium.','2017-04-27 20:47:40','2017-04-27 20:47:40'),(12,24,15,'Sed nisi quod odio aliquid velit consequatur.','Consequatur qui ratione laudantium aliquid blanditiis. Quas eaque ab facilis. Molestiae amet nisi et pariatur fugit. Magni dicta et consectetur officia eveniet. Rerum neque ullam aut eum iste.','2017-04-27 20:47:40','2017-04-27 20:47:40'),(13,26,16,'Quia animi et quos voluptatem dicta eos.','Deserunt libero et velit similique vel eos qui in. Qui a ea autem aut. Sapiente quo quod neque hic veniam et qui. Magnam non similique voluptatum quaerat.','2017-04-27 20:47:40','2017-04-27 20:47:40'),(14,28,17,'Sed expedita ea necessitatibus ullam.','Voluptatibus voluptatibus optio voluptas id quas asperiores alias. Molestiae recusandae esse consequatur in magnam dolor optio. Praesentium esse et rem ut dolores omnis. Rerum rerum porro velit.','2017-04-27 20:47:40','2017-04-27 20:47:40'),(15,30,18,'Atque asperiores adipisci voluptate non omnis enim.','Voluptatum odit doloremque fuga dolorum possimus molestiae impedit. Voluptatem quos culpa et ut numquam mollitia vel.','2017-04-27 20:47:40','2017-04-27 20:47:40'),(16,32,19,'Molestias laudantium delectus est quam.','Iure laboriosam sit autem ratione. Aliquam facere porro blanditiis. Quo sit quibusdam quia assumenda est illo repellat. Maxime quo omnis sed veritatis sint illo.','2017-04-27 20:47:40','2017-04-27 20:47:40'),(17,34,20,'Inventore velit soluta quidem vel.','Quia repudiandae aut dicta qui voluptatem. Commodi quam odio deleniti at id. Consequatur aut assumenda animi voluptas qui qui.','2017-04-27 20:47:40','2017-04-27 20:47:40'),(18,36,21,'Libero et reprehenderit explicabo optio aspernatur porro.','Ducimus ea voluptatum velit aut et rem cum earum. Eos voluptas ut accusantium voluptas. Eaque id illum eum. Repudiandae aut perferendis fuga ab ut impedit illo.','2017-04-27 20:47:40','2017-04-27 20:47:40'),(19,38,22,'Dolores iure facere temporibus odit.','Voluptate minima sed cumque quo maxime sed modi. Aut illo quisquam veniam. Numquam minus eum architecto nobis dolor aut et voluptatem.','2017-04-27 20:47:40','2017-04-27 20:47:40'),(20,40,23,'Deleniti vero qui rerum itaque necessitatibus ab voluptate.','Distinctio rerum qui qui et in ullam. Cumque dolorem eaque impedit aut reiciendis non. Amet qui sunt quo corrupti illum.','2017-04-27 20:47:40','2017-04-27 20:47:40'),(21,42,24,'Id rerum voluptatem quisquam est hic numquam amet voluptate.','Totam sint quasi veniam iste occaecati. Magni deserunt amet voluptatibus expedita architecto exercitationem. Eos et unde mollitia voluptates molestiae. Architecto et quos voluptas.','2017-04-27 20:47:40','2017-04-27 20:47:40'),(22,44,25,'Porro earum sed aut.','Non repellat ullam sapiente qui et. Error exercitationem excepturi iure ut qui nisi id. Aut qui quia sapiente libero. Accusantium omnis a eius hic deserunt.','2017-04-27 20:47:40','2017-04-27 20:47:40'),(23,46,26,'Cumque quia odit at sunt ut dignissimos.','Facilis ut necessitatibus quia odio perspiciatis magni qui. Praesentium dolores ipsum rem beatae.','2017-04-27 20:47:40','2017-04-27 20:47:40'),(25,7,8,'lorem','lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem','2017-04-29 13:37:52','2017-04-29 13:37:52');
/*!40000 ALTER TABLE `threads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Mariela Cruickshank','turner.funk@example.com','$2y$10$s7zwlLcQMON5CIQMqrHOeujRQO9KZQ1qdlGixJ20.uFVIngsJ/EHC','ARpQVEyr0V','2017-04-26 20:10:43','2017-04-26 20:10:43'),(2,'Josiane Mills','alberto81@example.com','$2y$10$s7zwlLcQMON5CIQMqrHOeujRQO9KZQ1qdlGixJ20.uFVIngsJ/EHC','DTNgiCMUCB','2017-04-26 20:16:59','2017-04-26 20:16:59'),(3,'Alta Mann','watson67@example.org','$2y$10$s7zwlLcQMON5CIQMqrHOeujRQO9KZQ1qdlGixJ20.uFVIngsJ/EHC','ChzavvQOKr','2017-04-26 20:16:59','2017-04-26 20:16:59'),(4,'Dr. Doyle Kunze','mabel.kutch@example.org','$2y$10$s7zwlLcQMON5CIQMqrHOeujRQO9KZQ1qdlGixJ20.uFVIngsJ/EHC','KxQPHrMgU4','2017-04-26 20:16:59','2017-04-26 20:16:59'),(5,'Hassie Skiles IV','zboncak.herman@example.com','$2y$10$s7zwlLcQMON5CIQMqrHOeujRQO9KZQ1qdlGixJ20.uFVIngsJ/EHC','n7asDIo1Nx','2017-04-26 20:16:59','2017-04-26 20:16:59'),(6,'Mrs. Margarete Reichel','greenholt.eula@example.org','$2y$10$s7zwlLcQMON5CIQMqrHOeujRQO9KZQ1qdlGixJ20.uFVIngsJ/EHC','v9diDZd4kL','2017-04-26 20:16:59','2017-04-26 20:16:59'),(7,'oscar','oscar.kosela@gmail.com','$2y$10$BHx/I1FIumpm5NqdMXcd2OWV9CLtS8Ddm0z0MD/h3HdwNCQFBquiO',NULL,'2017-04-27 20:34:50','2017-04-27 20:34:50'),(8,'Mr. Hubert Wiza DVM','krunolfsson@example.net','$2y$10$THYDf1/kLogmmP2L3IWIS.2lwewALoeGP7QNTI.W5S51Q7euyyoqq','FhnTFiDnNj','2017-04-27 20:47:40','2017-04-27 20:47:40'),(9,'Loy Schimmel','pasquale04@example.net','$2y$10$THYDf1/kLogmmP2L3IWIS.2lwewALoeGP7QNTI.W5S51Q7euyyoqq','ClgVbOLkyA','2017-04-27 20:47:40','2017-04-27 20:47:40'),(10,'Miss Stacy Rath Sr.','tdonnelly@example.com','$2y$10$THYDf1/kLogmmP2L3IWIS.2lwewALoeGP7QNTI.W5S51Q7euyyoqq','7sIuw5feWF','2017-04-27 20:47:40','2017-04-27 20:47:40'),(11,'Prof. Rachel Gaylord Sr.','ivory25@example.com','$2y$10$THYDf1/kLogmmP2L3IWIS.2lwewALoeGP7QNTI.W5S51Q7euyyoqq','dMmzlG8ygW','2017-04-27 20:47:40','2017-04-27 20:47:40'),(12,'Janessa Marks II','keagan.herzog@example.net','$2y$10$THYDf1/kLogmmP2L3IWIS.2lwewALoeGP7QNTI.W5S51Q7euyyoqq','aPpPHuRXlP','2017-04-27 20:47:40','2017-04-27 20:47:40'),(13,'Yadira Zboncak','renner.carmela@example.com','$2y$10$THYDf1/kLogmmP2L3IWIS.2lwewALoeGP7QNTI.W5S51Q7euyyoqq','yBmbjPfOGc','2017-04-27 20:47:40','2017-04-27 20:47:40'),(14,'Etha Nienow','hollie.lang@example.org','$2y$10$THYDf1/kLogmmP2L3IWIS.2lwewALoeGP7QNTI.W5S51Q7euyyoqq','oGIvdewyHk','2017-04-27 20:47:40','2017-04-27 20:47:40'),(15,'Schuyler Okuneva DDS','noelia.beatty@example.com','$2y$10$THYDf1/kLogmmP2L3IWIS.2lwewALoeGP7QNTI.W5S51Q7euyyoqq','VPRvZXFlHL','2017-04-27 20:47:40','2017-04-27 20:47:40'),(16,'Emory Smitham DVM','larissa.hartmann@example.net','$2y$10$THYDf1/kLogmmP2L3IWIS.2lwewALoeGP7QNTI.W5S51Q7euyyoqq','9KmDVY0o9Q','2017-04-27 20:47:40','2017-04-27 20:47:40'),(17,'Mr. Morris Dickinson','knikolaus@example.org','$2y$10$THYDf1/kLogmmP2L3IWIS.2lwewALoeGP7QNTI.W5S51Q7euyyoqq','ClBHaFGqLi','2017-04-27 20:47:40','2017-04-27 20:47:40'),(18,'Grayce Emmerich DDS','edgar.ward@example.com','$2y$10$THYDf1/kLogmmP2L3IWIS.2lwewALoeGP7QNTI.W5S51Q7euyyoqq','U7log0ectE','2017-04-27 20:47:40','2017-04-27 20:47:40'),(19,'Kelli Stamm MD','jorge.lynch@example.net','$2y$10$THYDf1/kLogmmP2L3IWIS.2lwewALoeGP7QNTI.W5S51Q7euyyoqq','oFVShYD16Y','2017-04-27 20:47:40','2017-04-27 20:47:40'),(20,'Sherman Haley','kieran38@example.com','$2y$10$THYDf1/kLogmmP2L3IWIS.2lwewALoeGP7QNTI.W5S51Q7euyyoqq','r7KOmoLmgC','2017-04-27 20:47:40','2017-04-27 20:47:40'),(21,'Jarrod Beahan','huel.anissa@example.com','$2y$10$THYDf1/kLogmmP2L3IWIS.2lwewALoeGP7QNTI.W5S51Q7euyyoqq','T1wyGwNKbt','2017-04-27 20:47:40','2017-04-27 20:47:40'),(22,'Lesley Hagenes DDS','onie47@example.org','$2y$10$THYDf1/kLogmmP2L3IWIS.2lwewALoeGP7QNTI.W5S51Q7euyyoqq','Bx0QX3RZXd','2017-04-27 20:47:40','2017-04-27 20:47:40'),(23,'Novella Moen','dschinner@example.com','$2y$10$THYDf1/kLogmmP2L3IWIS.2lwewALoeGP7QNTI.W5S51Q7euyyoqq','rW5kW7S6AO','2017-04-27 20:47:40','2017-04-27 20:47:40'),(24,'Bradley Pagac','becker.evelyn@example.org','$2y$10$THYDf1/kLogmmP2L3IWIS.2lwewALoeGP7QNTI.W5S51Q7euyyoqq','1N7dUBdklI','2017-04-27 20:47:40','2017-04-27 20:47:40'),(25,'Cloyd Cummerata','christine.schulist@example.net','$2y$10$THYDf1/kLogmmP2L3IWIS.2lwewALoeGP7QNTI.W5S51Q7euyyoqq','5pKOhtOHXs','2017-04-27 20:47:40','2017-04-27 20:47:40'),(26,'Prof. Laisha Dickinson','thad95@example.com','$2y$10$THYDf1/kLogmmP2L3IWIS.2lwewALoeGP7QNTI.W5S51Q7euyyoqq','lysj0UWjUB','2017-04-27 20:47:40','2017-04-27 20:47:40'),(27,'Ms. Alize Daugherty','predovic.matteo@example.org','$2y$10$THYDf1/kLogmmP2L3IWIS.2lwewALoeGP7QNTI.W5S51Q7euyyoqq','1ySFcnvIGm','2017-04-27 20:47:40','2017-04-27 20:47:40'),(28,'Frank Johnston PhD','franecki.dane@example.org','$2y$10$THYDf1/kLogmmP2L3IWIS.2lwewALoeGP7QNTI.W5S51Q7euyyoqq','FNSfZsbQdw','2017-04-27 20:47:40','2017-04-27 20:47:40'),(29,'Quinn Pollich','shanna.daniel@example.com','$2y$10$THYDf1/kLogmmP2L3IWIS.2lwewALoeGP7QNTI.W5S51Q7euyyoqq','85kWOEOByT','2017-04-27 20:47:40','2017-04-27 20:47:40'),(30,'Dr. Rosamond Schultz PhD','kolson@example.com','$2y$10$THYDf1/kLogmmP2L3IWIS.2lwewALoeGP7QNTI.W5S51Q7euyyoqq','yKJJ4bSKtO','2017-04-27 20:47:40','2017-04-27 20:47:40'),(31,'Ms. Roxanne Kertzmann','kihn.margaretta@example.org','$2y$10$THYDf1/kLogmmP2L3IWIS.2lwewALoeGP7QNTI.W5S51Q7euyyoqq','a18qAgiun0','2017-04-27 20:47:40','2017-04-27 20:47:40'),(32,'Mr. Nicklaus O\'Kon','qyost@example.net','$2y$10$THYDf1/kLogmmP2L3IWIS.2lwewALoeGP7QNTI.W5S51Q7euyyoqq','ZaohDY9vL1','2017-04-27 20:47:40','2017-04-27 20:47:40'),(33,'Anjali Hickle II','lucienne.torp@example.net','$2y$10$THYDf1/kLogmmP2L3IWIS.2lwewALoeGP7QNTI.W5S51Q7euyyoqq','MrL8JYTlP1','2017-04-27 20:47:40','2017-04-27 20:47:40'),(34,'Ms. Millie Hodkiewicz','hamill.everett@example.com','$2y$10$THYDf1/kLogmmP2L3IWIS.2lwewALoeGP7QNTI.W5S51Q7euyyoqq','W6mARwFxmc','2017-04-27 20:47:40','2017-04-27 20:47:40'),(35,'Prof. Bria Nitzsche','lenora57@example.net','$2y$10$THYDf1/kLogmmP2L3IWIS.2lwewALoeGP7QNTI.W5S51Q7euyyoqq','g8pulu9OXx','2017-04-27 20:47:40','2017-04-27 20:47:40'),(36,'Garry Stoltenberg','maggio.caesar@example.com','$2y$10$THYDf1/kLogmmP2L3IWIS.2lwewALoeGP7QNTI.W5S51Q7euyyoqq','UsRB0tic1O','2017-04-27 20:47:40','2017-04-27 20:47:40'),(37,'Dr. Clemens Lemke II','ckulas@example.org','$2y$10$THYDf1/kLogmmP2L3IWIS.2lwewALoeGP7QNTI.W5S51Q7euyyoqq','g3RJ5BSie4','2017-04-27 20:47:40','2017-04-27 20:47:40'),(38,'Dr. Ed Deckow DDS','ireinger@example.com','$2y$10$THYDf1/kLogmmP2L3IWIS.2lwewALoeGP7QNTI.W5S51Q7euyyoqq','kYnXcNHUs8','2017-04-27 20:47:40','2017-04-27 20:47:40'),(39,'Blaise Wunsch PhD','troy75@example.net','$2y$10$THYDf1/kLogmmP2L3IWIS.2lwewALoeGP7QNTI.W5S51Q7euyyoqq','ScoYvD1DiE','2017-04-27 20:47:40','2017-04-27 20:47:40'),(40,'Prof. Geoffrey Walker IV','wwhite@example.org','$2y$10$THYDf1/kLogmmP2L3IWIS.2lwewALoeGP7QNTI.W5S51Q7euyyoqq','qidaPtblmH','2017-04-27 20:47:40','2017-04-27 20:47:40'),(41,'Shanel Leannon','angela93@example.net','$2y$10$THYDf1/kLogmmP2L3IWIS.2lwewALoeGP7QNTI.W5S51Q7euyyoqq','eey1KqaXS1','2017-04-27 20:47:40','2017-04-27 20:47:40'),(42,'Abe Grimes Sr.','jaquelin66@example.org','$2y$10$THYDf1/kLogmmP2L3IWIS.2lwewALoeGP7QNTI.W5S51Q7euyyoqq','OilbIZVRqe','2017-04-27 20:47:40','2017-04-27 20:47:40'),(43,'Mr. Benny Homenick','lurline.braun@example.org','$2y$10$THYDf1/kLogmmP2L3IWIS.2lwewALoeGP7QNTI.W5S51Q7euyyoqq','41sLGEhCty','2017-04-27 20:47:40','2017-04-27 20:47:40'),(44,'Francesca Gleichner','eunice.senger@example.net','$2y$10$THYDf1/kLogmmP2L3IWIS.2lwewALoeGP7QNTI.W5S51Q7euyyoqq','N1rGl0WmhP','2017-04-27 20:47:40','2017-04-27 20:47:40'),(45,'Jeanette Rippin DDS','xmuller@example.org','$2y$10$THYDf1/kLogmmP2L3IWIS.2lwewALoeGP7QNTI.W5S51Q7euyyoqq','dX9WYcxBTa','2017-04-27 20:47:40','2017-04-27 20:47:40'),(46,'Santina Mueller','alan.moen@example.org','$2y$10$THYDf1/kLogmmP2L3IWIS.2lwewALoeGP7QNTI.W5S51Q7euyyoqq','h3XfOpUhim','2017-04-27 20:47:40','2017-04-27 20:47:40'),(47,'Pablo Lemke','susie.mertz@example.net','$2y$10$THYDf1/kLogmmP2L3IWIS.2lwewALoeGP7QNTI.W5S51Q7euyyoqq','fOlO7yS16c','2017-04-27 20:47:40','2017-04-27 20:47:40');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-06 22:20:12
