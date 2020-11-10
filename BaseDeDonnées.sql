CREATE DATABASE  IF NOT EXISTS `projetjee_domanski` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `projetjee_domanski`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: localhost    Database: projetjee_domanski
-- ------------------------------------------------------
-- Server version	5.6.20

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
-- Table structure for table `chef`
--

DROP TABLE IF EXISTS `chef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chef` (
  `id` bigint(20) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chef`
--

LOCK TABLES `chef` WRITE;
/*!40000 ALTER TABLE `chef` DISABLE KEYS */;
INSERT INTO `chef` VALUES (58,'Gauthier','Domanski'),(59,'Sofiane','Achouche'),(60,'Idriss','Akil'),(61,'Asma','Amchikak'),(62,'Florian','Amette'),(63,'Hugues','Barry'),(64,'Camille','Behague'),(65,'Alexandre','Berquet'),(66,'Titouan','Chevalier'),(67,'Maxence','Delesalle'),(68,'Antoine','Devulder'),(69,'Simon','Pol'),(70,'Thibault','Gillet'),(71,'Chloé','Lecutier'),(72,'Elise','Borges Goncalves'),(73,'Juliette','Favoulet'),(74,'Clément','Sauvage'),(75,'Nathan','Declerck'),(76,'Corentin','Dessin'),(77,'Pierre','Durlin'),(78,'Florian','Fiala'),(79,'Helena','Dumontet'),(80,'Fiona','Wild'),(81,'Alice','Racine'),(82,'Jennifer','Dames'),(83,'Allena','Neydo'),(84,'Nick','Battandra'),(85,'Alexandra','Duppot'),(86,'Benjamin','Hatat'),(87,'Nathaniel','Celebrimbor'),(88,'Anakin','Skywalker'),(89,'Philippe','Etchebest'),(90,'Gautier','Omont');
/*!40000 ALTER TABLE `chef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recette`
--

DROP TABLE IF EXISTS `recette`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recette` (
  `id` bigint(20) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` TEXT DEFAULT NULL,
  `ingredient` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recette`
--

LOCK TABLES `recette` WRITE;
/*!40000 ALTER TABLE `recette` DISABLE KEYS */;
INSERT INTO `recette` VALUES
(165,'https://www.hervecuisine.com/wp-content/uploads/2010/11/recette-crepes.jpg','FR','De bonnes crêpes maison','Mettre la farine dans une terrine et former un puit. Y déposer les oeufs entiers, le sucre, l`huile et le beurre. Mélanger délicatement avec un fouet en ajoutant au fur et à mesure le lait. La pâte ainsi obtenue doit avoir une consistance d`un liquide légèrement épais. Parfumer de rhum.Faire chauffer une poêle antiadhésive et la huiler très légèrement. Y verser une louche de pâte, la répartir dans la poêle puis attendre quelle soit cuite d`un côté avant de la retourner. Cuire ainsi toutes les crêpes à feu doux.','300 g de farine, 3 oeufs entiers,
3 cuillères à soupe de sucre, 2 cuillères à soupe d`huile, 50 g de beurre fondu, 60 cl de lait, 5 cl de rhum'),
(166,'https://assets.afcdn.com/recipe/20161123/34832_w1024h1024c1cx2644cy1872.webp','FR','Gratin de pâtes',NULL,NULL),
(167,'https://assets.tmecosys.com/image/upload/t_web767x639/img/recipe/ras/Assets/C31E5540-45D4-4913-B967-AC64E7FD7CF4/Derivates/fba045ac-c208-4dea-a6ba-3b4a3203d7b4.jpg','FR','El famoso chili cone carne',NULL,NULL),
(168,'https://img.cuisine-etudiant.fr/image/recette/800500/10b0e7ddb5aafb6ee194a80b1e97fa2d5283fdfe-burger-maison.jpg','FR','Burger maison sans complexe',NULL,NULL),
(169,'https://apprendre-cuisine.com/wp-content/uploads/2017/11/flammenkuche.jpg','FR','Flammekuche',NULL,NULL),
(170,'https://www.galbani.fr/wp-content/uploads/2017/07/le_veritable_tiramisu_par_il_gusto_italiano_0.png','FR','Tiramisu',NULL,NULL),
(171,'https://i1.wp.com/www.cookme-shop.com/blog/wp-content/uploads/2017/11/Poulet-tandoori.png?fit=1018%2C549&ssl=1','FR','Poulet tandoori façon indienne',NULL,NULL),
(172,'https://www.kitchensanctuary.com/wp-content/uploads/2019/09/Chicken-Tikka-Masala-square-FS-51.jpg','FR','Chicken Tikka Masala',NULL,NULL),
(173,'https://assets.afcdn.com/recipe/20180628/80089_w1024h1024c1cx1944cy2592.jpg','FR','Pâtes carbonara revisitée',NULL,NULL),
(174,'https://www.papillesetpupilles.fr/wp-content/uploads/2013/08/Spaghetti-Bolognese.jpg','FR','Spaghetti bolognaise',NULL,NULL),
(175,'https://cac.img.pmdstatic.net/fit/http.3A.2F.2Fprd2-bone-image.2Es3-website-eu-west-1.2Eamazonaws.2Ecom.2Fcac.2F2018.2F09.2F25.2Fbd6f9d41-c9e5-4bcc-9332-9ea612aefadb.2Ejpeg/748x372/quality/80/crop-from/center/riz-cantonais-a-la-sauce-soja.jpeg','FR','Riz cantonais à la sauce soja',NULL,NULL),
(176,'https://www.hervecuisine.com/wp-content/uploads/2020/05/recette-clafoutis-facile.jpg','FR','Clafoutis aux cerises',NULL,NULL),
(177,'https://www.marciatack.fr/wp-content/uploads/2015/10/soupe-potiron.jpg','FR','Soupe de potiron',NULL,NULL),
(178,'https://cac.img.pmdstatic.net/fit/http.3A.2F.2Fprd2-bone-image.2Es3-website-eu-west-1.2Eamazonaws.2Ecom.2Fcac.2F2018.2F09.2F25.2F7e2922bd-1a61-4acc-99f0-90dab19414d7.2Ejpeg/410x230/quality/80/crop-from/center/cookies-facile.jpeg','FR','Cookies',NULL,NULL),
(179,'https://fac.img.pmdstatic.net/fit/http.3A.2F.2Fprd2-bone-image.2Es3-website-eu-west-1.2Eamazonaws.2Ecom.2Ffac.2F2018.2F07.2F30.2Fad2c4427-b13d-43c8-ad89-ba636ccc5d26.2Ejpeg/850x478/quality/90/crop-from/center/cake-jambon-olives.jpeg','FR','Cake aux olives',NULL,NULL),
(180,'https://www.atelierdeschefs.com/media/recette-e10043-nouilles-a-l-asiatique-boeuf-et-legumes.jpg','FR','Nouilles au boeuf et aux légumes',NULL,NULL);
/*!40000 ALTER TABLE `recette` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recette_chef`
--

DROP TABLE IF EXISTS `recette_chef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recette_chef` (
  `recette_id` bigint(20) NOT NULL,
  `chef_id` bigint(20) NOT NULL,
  KEY `FKi58evljxutyg4crade5qq9chg` (`chef_id`),
  KEY `FKp9yng9x0cua3n2j4gfvlwpsc0` (`recette_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recette_chef`
--

LOCK TABLES `recette_chef` WRITE;
/*!40000 ALTER TABLE `recette_chef` DISABLE KEYS */;
INSERT INTO `recette_chef` VALUES (165,58),(166,59),(167,60),(168,61),(169,62),(170,63),(171,64),(172,65),(173,66),(174,67),(175,68),(176,69),(177,70),(178,71),(179,72),(180,73);
/*!40000 ALTER TABLE `recette_chef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recette_tag`
--

DROP TABLE IF EXISTS `recette_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recette_tag` (
  `recette_id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL,
  KEY `FKdmnl86p8lilamh8ooyjhvsx24` (`tag_id`),
  KEY `FKc5mec8ogc8jas7cf022nrsh11` (`recette_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recette_tag`
--

LOCK TABLES `recette_tag` WRITE;
/*!40000 ALTER TABLE `recette_tag` DISABLE KEYS */;
INSERT INTO `recette_tag` VALUES (165,1),(165,4),(165,6),(166,2),(166,6),(167,7),(168,1),(168,6),(169,2),(169,6),(170,3),(170,6),(171,2),(171,5),(171,7),(172,2),(172,5),(172,7),(173,1),(174,1),(175,1),(175,5),(176,1),(176,4),(176,6),(177,1),(178,1),(178,4),(178,6),(179,1),(179,6),(180,2),(180,5),(180,6);
/*!40000 ALTER TABLE `recette_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (358),(358),(358);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review` (
  `id` bigint(20) NOT NULL,
  `dateOfReview` datetime DEFAULT NULL,
  `score` int(11) NOT NULL,
  `recette_id` bigint(20) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8d76td2o7d2d8foei85l93b9w` (`recette_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (245,'2019-10-06 18:38:48',4,169,'Bon'),
(256,'2019-10-06 18:57:26',4,NULL,'Bon'),
(257,'2019-10-06 19:00:20',4,169,'Bon'),
(258,'2019-10-06 19:00:24',5,169,'Très Bon'),
(259,'2019-10-06 19:00:25',2,169,'Mangeable'),
(260,'2019-10-06 19:00:26',3,169,'Moyen'),
(261,'2019-10-06 19:00:27',1,169,'Est-ce que ça se mange ?'),
(262,'2019-10-06 19:00:28',2,169,'Mangeable'),
(263,'2019-10-06 19:00:29',1,169,'Est-ce que ça se mange ?'),
(264,'2019-10-06 19:00:32',1,169,'Est-ce que ça se mange ?'),
(265,'2019-10-06 19:00:33',1,169,'Est-ce que ça se mange ?'),
(266,'2019-10-06 19:00:33',1,169,'Est-ce que ça se mange ?'),
(267,'2019-10-06 19:00:33',1,169,'Est-ce que ça se mange ?'),
(268,'2019-10-06 19:00:33',1,169,'Est-ce que ça se mange ?'),
(269,'2019-10-06 19:00:34',1,169,'Est-ce que ça se mange ?'),
(270,'2019-10-06 19:00:34',1,169,'Est-ce que ça se mange ?'),
(271,'2019-10-06 19:01:46',1,169,'Est-ce que ça se mange ?'),
(272,'2019-10-06 19:02:00',1,169,'Est-ce que ça se mange ?'),
(273,'2019-10-06 19:02:02',2,169,'Mangeable'),
(274,'2019-10-06 19:02:58',1,169,'Est-ce que ça se mange ?'),
(275,'2019-10-06 19:02:59',2,169,'Mangeable'),
(276,'2019-10-06 19:03:00',3,169,'Moyen'),
(277,'2019-10-06 19:03:01',4,169,'Bon'),
(278,'2019-10-06 19:03:02',5,169,'Très Bon'),
(279,'2019-10-06 19:03:15',4,167,'Bon'),
(280,'2019-10-06 19:03:16',5,167,'Très Bon'),
(281,'2019-10-06 19:03:17',3,167,'Moyen'),
(282,'2019-10-06 19:03:17',2,167,'Mangeable');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (1,'facile'),(2,'moyen'),(3,'difficile'),(4,'sucré'),(5,'salé'),(6,'a partager'),(7,'épicé');
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'projetjee_domanski'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-06 21:30:56