-- MariaDB dump 10.19  Distrib 10.5.13-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: API_Laravel
-- ------------------------------------------------------
-- Server version	10.5.13-MariaDB-0ubuntu0.21.04.1

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Informática','2021-12-17 21:43:00','2021-12-20 21:30:53'),(2,'Automotivo','2021-12-17 21:44:32','2021-12-20 21:31:24'),(3,'Móveis','2021-12-17 21:48:21','2021-12-20 21:31:34'),(4,'est','2021-12-17 21:48:21','2021-12-17 21:48:21'),(6,'saepe','2021-12-17 21:48:21','2021-12-17 21:48:21'),(7,'ipsam','2021-12-17 21:48:21','2021-12-17 21:48:21'),(8,'Mudança de nome put','2021-12-17 21:48:21','2021-12-19 18:05:58'),(9,'earum','2021-12-17 21:48:21','2021-12-17 21:48:21'),(10,'et','2021-12-17 21:48:21','2021-12-17 21:48:21'),(11,'ipsam','2021-12-17 21:48:21','2021-12-17 21:48:21'),(12,'quo','2021-12-17 21:48:21','2021-12-17 21:48:21'),(13,'Teste de Categoria Criada','2021-12-18 20:15:47','2021-12-18 20:15:47'),(14,'nome','2021-12-20 01:29:19','2021-12-20 01:29:19'),(16,'Nome da categoria','2021-12-20 18:02:59','2021-12-20 18:02:59'),(17,'Nome da categoria','2021-12-20 18:04:55','2021-12-20 18:04:55'),(18,'Nome da nova categoria','2021-12-20 19:09:17','2021-12-20 19:09:17');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2019_12_14_000001_create_personal_access_tokens_table',1),(2,'2021_12_17_174518_create_categories_table',1),(3,'2021_12_17_174524_create_products_table',1),(4,'2021_12_17_183115_rename_categories_id_column',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_categories_id_foreign` (`category_id`),
  CONSTRAINT `products_categories_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'nome','descrição',350.00,1,'2021-12-17 21:43:00','2021-12-20 21:33:09'),(2,'nome','descrição',350.00,2,'2021-12-17 21:43:00','2021-12-20 21:33:16'),(3,'nome','descrição',350.00,3,'2021-12-17 21:43:00','2021-12-20 21:33:22'),(4,'perferendis','Maxime earum numquam accusantium ut reiciendis delectus libero qui.',337.61,1,'2021-12-17 21:43:00','2021-12-17 21:43:00'),(5,'Novo nome do produto','Nova descrição',30.00,9,'2021-12-17 21:44:32','2021-12-20 20:26:27'),(6,'est','In nostrum quidem et odio dolorem accusamus hic.',27716.16,2,'2021-12-17 21:44:32','2021-12-17 21:44:32'),(7,'minima','Suscipit deserunt dolor magni unde voluptate odit.',346.54,2,'2021-12-17 21:44:32','2021-12-17 21:44:32'),(9,'harum','Veniam eum quod dolores et aliquam iure ex.',193.79,3,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(11,'voluptatem','Repellendus architecto aliquid voluptate dolor.',134.74,3,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(12,'ipsum','Sunt delectus ipsam aut suscipit recusandae harum tempora exercitationem.',282.70,3,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(13,'laudantium','Est odio et voluptatem eius.',295.36,3,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(14,'molestiae','Numquam et ut numquam et.',148.57,3,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(15,'nulla','Pariatur architecto maxime iste quis rerum maiores ipsum.',98.45,3,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(16,'dicta','Quaerat minus harum earum dolores commodi rerum facere.',63.04,3,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(17,'ea','Atque quas asperiores iste consequatur quidem laudantium.',264.97,3,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(18,'rerum','Sequi similique assumenda quia enim deleniti quod.',103.70,3,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(19,'officia','Quam culpa quo voluptatem ab et eum.',16.37,3,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(20,'delectus','Laborum dolor quam porro.',40.18,3,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(21,'ullam','Sunt doloremque et nisi necessitatibus possimus molestiae culpa quis.',224.69,3,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(22,'aut','Nostrum autem dolorem eligendi et reiciendis temporibus.',222.77,3,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(23,'et','Reiciendis officiis ut eos.',141.75,3,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(24,'cum','Ex et quibusdam sint animi aspernatur cupiditate ex.',146.91,3,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(25,'et','Soluta doloremque reiciendis aut hic.',195.97,3,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(26,'et','Molestiae voluptas aperiam eos aliquid assumenda aut distinctio cumque.',261.74,3,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(27,'voluptatibus','Et expedita repellendus totam.',13.09,3,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(28,'eos','Dolores voluptate molestiae nemo qui earum.',82.20,3,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(29,'perspiciatis','Harum sed iste dicta qui aut.',138.28,4,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(30,'et','Reiciendis vitae officiis numquam aut et.',273.71,4,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(31,'consectetur','Temporibus vero omnis voluptatem sequi.',16.31,4,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(32,'dolorem','Porro laborum quae odio aut.',6.71,4,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(33,'perspiciatis','Est veniam labore neque quia.',118.76,4,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(34,'sit','Occaecati eveniet aut atque.',213.39,4,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(35,'velit','Qui est est adipisci unde.',289.36,4,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(36,'et','Amet est autem molestiae odit.',193.25,4,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(37,'ipsum','Distinctio perspiciatis debitis similique praesentium iste ut.',105.18,4,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(38,'iusto','Molestiae incidunt quam quaerat aut dolore numquam repellendus.',259.66,4,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(39,'blanditiis','Aut ipsa error voluptatum quae.',110.93,4,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(40,'et','Blanditiis non dolor voluptatem ratione.',37.72,4,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(41,'minima','Quasi fugit eligendi nesciunt corrupti rerum in non quis.',247.72,4,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(42,'est','Ut est eum magnam reprehenderit et qui.',239.26,4,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(43,'numquam','Occaecati enim veritatis impedit eos libero qui.',166.26,4,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(44,'qui','Est nihil perferendis cupiditate exercitationem ut incidunt.',163.83,4,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(45,'natus','Unde quia laudantium ut dolorum numquam esse id.',188.65,4,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(46,'consequuntur','Quibusdam perspiciatis laboriosam ab qui porro.',207.50,4,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(47,'porro','Eaque ea et rerum id consequatur enim laborum.',129.66,4,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(48,'autem','Recusandae asperiores autem illo id necessitatibus.',232.27,4,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(69,'ullam','Qui aut et accusantium consectetur sit.',211.67,6,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(70,'quia','Non in eius aspernatur consequatur et aspernatur consectetur aliquid.',205.92,6,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(71,'sit','Corrupti consequatur laborum nihil.',48.26,6,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(72,'dolorum','Enim accusantium voluptas et illo officiis qui vel.',70.82,6,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(73,'quis','Voluptate nesciunt sed ut voluptatem.',131.72,6,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(74,'quo','Praesentium ratione culpa numquam.',68.35,6,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(75,'quos','Fugiat ab magni ut deserunt maiores.',288.83,6,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(76,'facere','Facilis magni error et optio dolores repellendus.',207.16,6,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(77,'dolorem','Impedit sequi modi provident sunt qui.',39.10,6,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(78,'nisi','Maiores minus iusto molestiae iure.',229.91,6,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(79,'sed','Aliquam esse nam consectetur et.',276.04,6,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(80,'quia','Quia qui voluptatem voluptate nihil omnis hic aspernatur.',53.56,6,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(81,'harum','Ab vel tempora minus odio saepe libero ut.',80.35,6,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(82,'qui','Aperiam repellat assumenda fugiat sequi consequatur.',279.10,6,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(83,'occaecati','Totam velit aut quasi quia et distinctio ut minus.',203.53,6,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(84,'velit','Optio dolorem incidunt tempora quibusdam corporis perferendis est.',159.33,6,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(85,'est','Amet laudantium labore velit.',46.14,6,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(86,'ratione','Voluptatibus nemo dolorem necessitatibus nobis.',213.36,6,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(87,'fugiat','Cum enim facilis dicta nemo.',203.25,6,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(88,'id','Quam ipsam eum pariatur est.',42.25,6,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(89,'nihil','Iusto reprehenderit sed praesentium voluptas in culpa.',245.62,7,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(90,'accusantium','Facere velit cumque qui dolor nulla est minus.',270.88,7,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(91,'porro','At reiciendis consequatur vel ab modi quisquam ab.',154.64,7,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(92,'voluptatem','Ducimus vel vel sed corrupti.',246.22,7,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(93,'facilis','Quisquam ducimus porro totam similique voluptas.',88.94,7,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(94,'quo','Soluta sed voluptas qui quos fugiat.',20.09,7,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(95,'deserunt','Quidem totam tempore modi dicta ipsam error.',74.08,7,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(96,'vel','Architecto quasi qui autem placeat odio.',175.64,7,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(97,'sunt','A voluptatum illo quasi tempore sunt fuga voluptas.',24.84,7,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(98,'dicta','Perferendis error harum ad.',92.10,7,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(99,'reiciendis','Enim explicabo ratione quibusdam animi.',250.12,7,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(100,'recusandae','Temporibus assumenda sint delectus aut recusandae molestiae.',69.52,7,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(101,'at','Cum vel et occaecati itaque.',181.40,7,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(102,'dolorum','Voluptas ut culpa voluptatibus molestiae doloremque doloribus ipsa aut.',204.13,7,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(103,'ipsum','Quibusdam et nobis et non quo minima placeat porro.',90.11,7,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(104,'eaque','Ut dolores veritatis voluptatum dolores sequi.',159.65,7,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(105,'dolore','Dolores omnis at et eveniet.',36.99,7,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(106,'quaerat','Quasi est quas accusantium doloremque iste enim.',184.54,7,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(107,'libero','Corporis explicabo ut nostrum voluptatibus ad.',175.97,7,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(108,'esse','Non possimus in non.',176.06,7,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(109,'vero','Laudantium nemo maiores officia veritatis non.',226.09,8,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(110,'enim','Unde non culpa et cumque optio similique.',181.77,8,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(111,'optio','Corrupti soluta nihil maxime omnis doloribus assumenda.',121.32,8,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(112,'magni','Ea et ab asperiores rem eos recusandae sunt.',196.54,8,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(113,'corrupti','Numquam nulla dolor culpa inventore eligendi.',179.61,8,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(114,'qui','Similique doloribus est velit voluptate magni.',74.64,8,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(115,'aperiam','Quia consequatur non facilis totam qui qui harum.',109.16,8,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(116,'quos','Necessitatibus placeat cumque vitae non sapiente id eos.',180.38,8,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(117,'qui','Labore commodi dolor id qui.',210.41,8,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(118,'aliquam','Nulla quam doloremque repellendus velit sunt sed eos.',94.82,8,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(119,'odio','Sit sit ipsam ab.',149.06,8,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(120,'natus','Eum sit et eos aut enim.',8.16,8,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(121,'consequatur','Provident animi provident quo autem tempore.',258.93,8,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(122,'quae','Autem ex cum minus tenetur beatae temporibus dolore.',19.17,8,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(123,'culpa','Quidem quidem sit esse aut architecto tempore.',68.98,8,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(124,'ratione','Pariatur dolore atque iure temporibus nobis corrupti.',106.23,8,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(125,'laudantium','Id quae incidunt fugit adipisci eum ab consequuntur labore.',142.07,8,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(126,'consequuntur','Aperiam architecto qui et.',236.21,8,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(127,'quas','Amet deserunt sed voluptatibus ut.',240.35,8,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(128,'rerum','Quo repudiandae officia quasi ratione.',296.94,8,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(129,'similique','Maxime id qui voluptatibus velit.',172.28,9,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(130,'rerum','Qui unde enim laudantium et labore veniam illo.',118.49,9,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(131,'aliquam','Harum unde numquam quisquam tempora.',7.97,9,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(132,'dolore','Similique doloremque eligendi sunt autem quia dolores et.',137.40,9,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(133,'cupiditate','Nemo aut deleniti nisi veritatis ea qui quae.',278.60,9,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(134,'debitis','Qui rerum aliquid quam provident.',267.60,9,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(135,'cupiditate','Quae eius et porro sequi reiciendis et.',129.68,9,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(136,'quo','Sint aliquam assumenda non nisi.',215.47,9,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(137,'repellendus','Quos rerum iure quam necessitatibus.',221.67,9,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(138,'consequuntur','Nesciunt sed et eos minima harum quibusdam similique.',250.61,9,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(139,'ut','Libero aliquid molestias quibusdam modi odit in amet.',52.17,9,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(140,'optio','Natus consequuntur quidem voluptas sit pariatur quasi.',86.85,9,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(141,'eum','Sit mollitia nesciunt accusamus et cum doloribus iusto.',250.07,9,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(142,'fugiat','Tempora ut et et aliquam velit.',244.93,9,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(143,'sit','Voluptatem qui sapiente sit delectus.',192.66,9,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(144,'maiores','Quia culpa quis odio modi esse et et mollitia.',268.88,9,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(145,'qui','Ab error iure eligendi vitae omnis totam ab.',48.54,9,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(146,'ut','Nam debitis et voluptatem sequi doloremque tempore.',38.17,9,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(147,'sit','Quaerat magnam atque aspernatur aliquam est id sed.',66.59,9,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(148,'officia','Enim ratione cumque et fuga est aut.',163.76,9,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(149,'enim','Voluptas qui animi sequi sed ex cumque.',212.24,10,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(150,'omnis','Corrupti similique excepturi natus eaque quaerat.',129.75,10,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(151,'eos','Quia soluta magni iusto aliquid.',72.36,10,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(152,'laborum','Enim ipsum laboriosam veritatis et ipsa qui dolorum.',30.99,10,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(153,'esse','Voluptatem non voluptas quis dolor voluptas.',253.53,10,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(154,'molestiae','Eligendi ad consequatur quia nihil quia et rem.',177.06,10,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(155,'sequi','Est aliquid autem totam.',136.48,10,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(156,'alias','Mollitia voluptas dignissimos deleniti debitis.',73.28,10,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(157,'accusamus','Ad laudantium omnis architecto id et minus id.',35.82,10,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(158,'sit','Aliquid autem dignissimos optio.',186.08,10,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(159,'architecto','Consectetur sapiente ad nesciunt.',222.13,10,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(160,'libero','Id officiis ipsa pariatur mollitia sequi.',245.53,10,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(161,'soluta','Quisquam incidunt est dolores dolores beatae asperiores nulla.',132.88,10,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(162,'ratione','Veritatis fugit provident praesentium ex aspernatur laborum.',232.89,10,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(163,'quidem','Voluptatum asperiores aut dolorem ab voluptatibus sunt.',243.28,10,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(164,'nostrum','At assumenda necessitatibus deserunt ut atque totam enim.',258.18,10,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(165,'et','Fuga sed dolorum sed iste sunt beatae.',269.66,10,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(166,'aut','Sed recusandae et impedit reiciendis corporis.',257.09,10,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(167,'facilis','Doloremque fuga accusantium doloribus.',272.08,10,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(168,'illum','Quam quibusdam dolor fugiat odio.',46.86,10,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(169,'omnis','A eligendi sunt alias corporis id ab.',293.98,11,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(170,'tempora','Est aut enim rerum.',14.12,11,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(171,'veniam','Et tenetur et exercitationem.',15.50,11,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(172,'facilis','In saepe debitis reprehenderit et nisi voluptatem.',47.51,11,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(173,'nobis','Perspiciatis consequatur nihil non nihil adipisci.',19.79,11,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(174,'voluptas','Quibusdam maiores occaecati autem molestiae repellendus.',155.69,11,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(175,'laboriosam','Et sapiente cupiditate qui.',140.41,11,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(176,'illum','Earum alias esse quia.',121.28,11,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(177,'et','Assumenda et et sequi illo.',65.46,11,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(178,'quaerat','Eum repellat velit recusandae velit id.',37.59,11,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(179,'voluptatem','Sint fugit sit repudiandae voluptas perspiciatis incidunt.',36.46,11,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(180,'delectus','Officia et ut quia dolorum et est rerum.',93.32,11,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(181,'et','Et aut qui vitae blanditiis iste dignissimos sint.',262.48,11,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(182,'neque','Corporis ducimus porro qui sunt quam est maiores.',74.34,11,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(183,'harum','Nulla blanditiis qui sit ducimus repudiandae omnis quod.',299.46,11,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(184,'possimus','Accusamus voluptatem recusandae magni repellat tempore est sint.',83.63,11,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(185,'delectus','Odio omnis laboriosam accusamus.',82.32,11,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(186,'alias','Dolorem doloribus optio iusto ea ea.',233.28,11,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(187,'vel','Nisi nostrum exercitationem est ut aut eligendi ipsum.',155.86,11,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(188,'officiis','Molestiae sunt maxime alias ut qui.',276.97,11,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(189,'voluptatibus','Nesciunt itaque ut et neque adipisci.',218.15,12,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(190,'sint','Quia eos in reprehenderit quia non velit temporibus.',187.97,12,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(191,'necessitatibus','Vero nemo quia voluptatem reiciendis itaque repellendus mollitia qui.',120.93,12,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(192,'voluptatem','Ea eius hic doloremque aut est non dolor magni.',41.53,12,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(193,'rem','Tempora est optio corrupti veniam.',208.13,12,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(194,'voluptatibus','Possimus aspernatur nesciunt itaque nulla odit.',264.17,12,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(195,'expedita','Iusto delectus voluptatibus corporis aliquam ratione fuga occaecati et.',138.31,12,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(196,'perspiciatis','Ex quibusdam omnis dolore sint quod id quia.',270.77,12,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(197,'cupiditate','Officiis architecto consequatur quisquam deleniti aut magnam est eaque.',40.51,12,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(198,'distinctio','Voluptas nisi fugiat sit omnis.',160.44,12,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(199,'repudiandae','Eum fugiat rerum eveniet voluptas velit repellat.',152.63,12,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(200,'et','Sed ratione veritatis quis consequatur et totam beatae.',293.33,12,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(201,'ullam','Sed exercitationem reprehenderit debitis ipsam ut dolorem error qui.',105.17,12,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(202,'adipisci','Voluptas aut aut temporibus esse.',262.16,12,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(203,'omnis','Quia dignissimos nesciunt quo velit.',225.04,12,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(204,'adipisci','Totam velit accusantium qui voluptatem nulla ut.',24.72,12,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(205,'enim','Odio delectus qui esse ut beatae.',279.45,12,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(206,'eius','Voluptas optio in placeat aut laudantium sed.',152.12,12,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(207,'repudiandae','Laudantium et occaecati quo itaque.',274.07,12,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(208,'id','Dolorum dolor aliquid placeat beatae.',271.80,12,'2021-12-17 21:48:21','2021-12-17 21:48:21'),(210,'asdf','Teste de descrição do produto alterado',10.00,7,'2021-12-20 01:08:49','2021-12-20 01:08:49'),(211,'Nome do produto','Descrição do produto',150.00,6,'2021-12-20 20:23:52','2021-12-20 20:23:52'),(212,'Nome do produto','Descrição do produto',150.00,6,'2021-12-20 20:24:11','2021-12-20 20:24:11');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-20 17:00:48
