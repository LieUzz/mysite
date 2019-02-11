-- MySQL dump 10.13  Distrib 8.0.15, for macos10.14 (x86_64)
--
-- Host: localhost    Database: mysite_db
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add blog type',7,'add_blogtype'),(26,'Can change blog type',7,'change_blogtype'),(27,'Can delete blog type',7,'delete_blogtype'),(28,'Can view blog type',7,'view_blogtype'),(29,'Can add blog',8,'add_blog'),(30,'Can change blog',8,'change_blog'),(31,'Can delete blog',8,'delete_blog'),(32,'Can view blog',8,'view_blog'),(33,'Can add read num',9,'add_readnum'),(34,'Can change read num',9,'change_readnum'),(35,'Can delete read num',9,'delete_readnum'),(36,'Can view read num',9,'view_readnum'),(37,'Can add read detail',10,'add_readdetail'),(38,'Can change read detail',10,'change_readdetail'),(39,'Can delete read detail',10,'delete_readdetail'),(40,'Can view read detail',10,'view_readdetail'),(41,'Can add comment',11,'add_comment'),(42,'Can change comment',11,'change_comment'),(43,'Can delete comment',11,'delete_comment'),(44,'Can view comment',11,'view_comment');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$120000$CyAAGjblgXey$qh9gXT+tZnCE0+yHp4w5vhftRs9Aqafu7hTqVHakh8o=','2019-02-10 07:15:59.163173',1,'shawn','','','',1,1,'2019-01-29 16:15:58.217000'),(2,'pbkdf2_sha256$120000$UmQEWwo0MH9i$Vjag/YlxrITqvq1N/cdJOw5gI5iAOZ4BGaPrtJphn1s=','2019-02-04 06:59:48.173000',0,'bob','','','1@qq.com',0,1,'2019-02-04 06:59:47.939000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_blog`
--

DROP TABLE IF EXISTS `blog_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `blog_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `content` longtext NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `last_updated_time` datetime(6) NOT NULL,
  `author_id` int(11) NOT NULL,
  `blog_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_blog_author_id_8791af69_fk_auth_user_id` (`author_id`),
  KEY `blog_blog_blog_type_id_de11bd65_fk_blog_blogtype_id` (`blog_type_id`),
  CONSTRAINT `blog_blog_author_id_8791af69_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `blog_blog_blog_type_id_de11bd65_fk_blog_blogtype_id` FOREIGN KEY (`blog_type_id`) REFERENCES `blog_blogtype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_blog`
--

LOCK TABLES `blog_blog` WRITE;
/*!40000 ALTER TABLE `blog_blog` DISABLE KEYS */;
INSERT INTO `blog_blog` VALUES (1,'第一篇博客','123','2019-01-29 16:30:43.704000','2019-01-29 16:30:43.704000',1,1),(2,'第二篇博客','天黑了','2019-01-29 17:23:43.609000','2019-01-29 17:23:43.609000',1,2),(3,'长内容的博客','asdfgdshdgfgdgndfsgfdhgfsasfdhgfadsfdgfsasfdgfdsfdgfasfdasd','2019-01-29 17:29:10.366000','2019-01-29 17:29:10.366000',1,3),(4,'再来一篇随笔','<p>月黑<strong>风高</strong>夜</p>','2019-01-29 18:15:28.314000','2019-01-31 19:54:05.995000',1,2),(5,'shell下的第1篇','xxxxxxxxxx','2019-01-31 07:00:52.872000','2019-01-31 07:00:52.872000',1,1),(6,'for 1','xxx:1','2019-01-31 07:29:41.811000','2019-01-31 07:29:41.811000',1,1),(7,'for 2','xxx:2','2019-01-31 07:29:41.815000','2019-01-31 07:29:41.815000',1,1),(8,'for 3','xxx:3','2019-01-31 07:29:41.817000','2019-01-31 07:29:41.817000',1,1),(9,'for 4','xxx:4','2019-01-31 07:29:41.819000','2019-01-31 07:29:41.819000',1,1),(10,'for 5','xxx:5','2019-01-31 07:29:41.820000','2019-01-31 07:29:41.820000',1,1),(11,'for 6','xxx:6','2019-01-31 07:29:41.822000','2019-01-31 07:29:41.822000',1,1),(12,'for 7','xxx:7','2019-01-31 07:29:41.824000','2019-01-31 07:29:41.824000',1,1),(13,'for 8','xxx:8','2019-01-31 07:29:41.826000','2019-01-31 07:29:41.826000',1,1),(14,'for 9','xxx:9','2019-01-31 07:29:41.828000','2019-01-31 07:29:41.828000',1,1),(15,'for 10','xxx:10','2019-01-31 07:29:41.829000','2019-01-31 07:29:41.829000',1,1),(16,'for 11','xxx:11','2019-01-31 07:29:41.831000','2019-01-31 07:29:41.831000',1,1),(17,'for 12','xxx:12','2019-01-31 07:29:41.833000','2019-01-31 07:29:41.833000',1,1),(18,'for 13','xxx:13','2019-01-31 07:29:41.834000','2019-01-31 07:29:41.834000',1,1),(19,'for 14','xxx:14','2019-01-31 07:29:41.835000','2019-01-31 07:29:41.835000',1,1),(20,'for 15','xxx:15','2019-01-31 07:29:41.836000','2019-01-31 07:29:41.837000',1,1),(21,'for 16','xxx:16','2019-01-31 07:29:41.838000','2019-01-31 07:29:41.838000',1,1),(22,'for 17','xxx:17','2019-01-31 07:29:41.839000','2019-01-31 07:29:41.839000',1,1),(23,'for 18','xxx:18','2019-01-31 07:29:41.840000','2019-01-31 07:29:41.840000',1,1),(24,'for 19','xxx:19','2019-01-31 07:29:41.841000','2019-01-31 07:29:41.841000',1,1),(25,'for 20','xxx:20','2019-01-31 07:29:41.842000','2019-01-31 07:29:41.842000',1,1),(26,'for 21','xxx:21','2019-01-31 07:29:41.843000','2019-01-31 07:29:41.843000',1,1),(27,'for 22','xxx:22','2019-01-31 07:29:41.845000','2019-01-31 07:29:41.845000',1,1),(28,'for 23','xxx:23','2019-01-31 07:29:41.846000','2019-01-31 07:29:41.846000',1,1),(29,'for 24','xxx:24','2019-01-31 07:29:41.847000','2019-01-31 07:29:41.847000',1,1),(30,'for 25','xxx:25','2019-01-31 07:29:41.848000','2019-01-31 07:29:41.848000',1,1),(31,'for 26','xxx:26','2019-01-31 07:29:41.849000','2019-01-31 07:29:41.849000',1,1),(32,'for 27','xxx:27','2019-01-31 07:29:41.850000','2019-01-31 07:29:41.850000',1,1),(33,'for 28','xxx:28','2019-01-31 07:29:41.851000','2019-01-31 07:29:41.851000',1,1),(34,'for 29','xxx:29','2019-01-31 07:29:41.852000','2019-01-31 07:29:41.852000',1,1),(35,'for 30','xxx:30','2019-01-31 07:29:41.853000','2019-01-31 20:29:13.018000',1,1),(36,'2月新篇','<p>快过年了</p>\r\n\r\n<h1><strong>你想要压岁钱吗？</strong></h1>\r\n\r\n<h1><img alt=\"\" src=\"/media/upload/2019/02/01/41548663486_pic_hd.jpg\" style=\"height:200px; width:200px\" /></h1>','2019-01-31 16:44:23.809000','2019-02-01 14:37:45.677000',1,3),(37,'新春佳节','<p>爆竹声中一岁除</p>','2019-02-02 18:41:50.811000','2019-02-02 18:41:50.811000',1,3);
/*!40000 ALTER TABLE `blog_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_blogtype`
--

DROP TABLE IF EXISTS `blog_blogtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `blog_blogtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_blogtype`
--

LOCK TABLES `blog_blogtype` WRITE;
/*!40000 ALTER TABLE `blog_blogtype` DISABLE KEYS */;
INSERT INTO `blog_blogtype` VALUES (1,'DJango'),(2,'随笔'),(3,'感悟');
/*!40000 ALTER TABLE `blog_blogtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_comment`
--

DROP TABLE IF EXISTS `comment_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `comment_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(10) unsigned NOT NULL,
  `text` longtext NOT NULL,
  `comment_time` datetime(6) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `reply_to_id` int(11) DEFAULT NULL,
  `root_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comment_comment_content_type_id_fbfb9793_fk_django_co` (`content_type_id`),
  KEY `comment_comment_user_id_6078e57b_fk_auth_user_id` (`user_id`),
  KEY `comment_comment_reply_to_id_e0adcef8_fk_auth_user_id` (`reply_to_id`),
  KEY `comment_comment_parent_id_b612524c_fk_comment_comment_id` (`parent_id`),
  KEY `comment_comment_root_id_28721811_fk_comment_comment_id` (`root_id`),
  CONSTRAINT `comment_comment_content_type_id_fbfb9793_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `comment_comment_parent_id_b612524c_fk_comment_comment_id` FOREIGN KEY (`parent_id`) REFERENCES `comment_comment` (`id`),
  CONSTRAINT `comment_comment_reply_to_id_e0adcef8_fk_auth_user_id` FOREIGN KEY (`reply_to_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `comment_comment_root_id_28721811_fk_comment_comment_id` FOREIGN KEY (`root_id`) REFERENCES `comment_comment` (`id`),
  CONSTRAINT `comment_comment_user_id_6078e57b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_comment`
--

LOCK TABLES `comment_comment` WRITE;
/*!40000 ALTER TABLE `comment_comment` DISABLE KEYS */;
INSERT INTO `comment_comment` VALUES (1,37,'123','2019-02-03 17:34:04.004000',8,1,NULL,NULL,NULL),(2,37,'234','2019-02-03 17:44:15.982000',8,1,NULL,NULL,NULL),(3,37,'qwe','2019-02-04 08:06:17.352000',8,2,NULL,NULL,NULL),(4,37,'asd','2019-02-04 10:03:37.913000',8,2,NULL,NULL,NULL),(5,37,'<p>555</p>','2019-02-04 13:33:41.077000',8,1,NULL,NULL,NULL),(6,37,'<p>555</p>','2019-02-04 13:34:16.840000',8,1,NULL,NULL,NULL),(7,37,'<p>555</p>','2019-02-04 13:34:30.072000',8,1,NULL,NULL,NULL),(8,37,'<p>23333</p>','2019-02-04 13:43:38.549000',8,1,NULL,NULL,NULL),(9,37,'<p>123</p>','2019-02-04 16:11:02.366000',8,1,NULL,NULL,NULL),(10,37,'<p>拜年</p>','2019-02-04 16:11:59.837000',8,1,NULL,NULL,NULL),(11,37,'<p>hi</p>','2019-02-04 16:16:32.986000',8,1,NULL,NULL,NULL),(12,37,'<p>111<img alt=\"devil\" height=\"23\" src=\"http://localhost:8000/static/ckeditor/ckeditor/plugins/smiley/images/devil_smile.png\" title=\"devil\" width=\"23\" /></p>','2019-02-04 16:37:25.510000',8,1,NULL,NULL,NULL),(13,37,'<p><strong>wol</strong></p>','2019-02-04 16:39:00.768000',8,1,NULL,NULL,NULL),(14,36,'<p>321</p>','2019-02-04 16:42:08.572000',8,1,NULL,NULL,NULL),(15,37,'yyy','2019-02-05 15:41:12.102000',8,1,NULL,NULL,NULL),(16,37,'123123','2019-02-05 15:45:26.402000',8,2,1,1,1),(17,36,'<p>qwe</p>','2019-02-05 17:39:09.953000',8,1,NULL,NULL,NULL),(18,36,'<p>qwe</p>','2019-02-05 17:39:14.904000',8,1,NULL,NULL,NULL),(19,37,'<p>qwe</p>','2019-02-05 17:39:39.640000',8,1,NULL,NULL,NULL),(20,37,'<p>123</p>','2019-02-05 17:44:52.748000',8,1,19,1,19),(21,37,'<p>234</p>','2019-02-05 18:01:56.198000',8,1,20,1,19),(22,37,'<p>234</p>','2019-02-05 18:01:57.548000',8,1,20,1,19),(23,37,'<p>234</p>','2019-02-05 18:03:25.344000',8,1,20,1,19),(24,37,'<p>555</p>','2019-02-05 18:04:06.519000',8,1,15,1,15),(25,36,'<p>123</p>','2019-02-05 18:06:47.405000',8,1,18,1,18),(26,36,'<p>888</p>','2019-02-05 18:07:40.770000',8,1,25,1,18),(27,36,'<p>yyy</p>','2019-02-05 18:11:55.296000',8,1,18,1,18);
/*!40000 ALTER TABLE `comment_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-01-29 16:27:02.316000','1','BlogType object (1)',1,'[{\"added\": {}}]',7,1),(2,'2019-01-29 16:27:08.407000','2','BlogType object (2)',1,'[{\"added\": {}}]',7,1),(3,'2019-01-29 16:27:16.789000','3','BlogType object (3)',1,'[{\"added\": {}}]',7,1),(4,'2019-01-29 16:30:43.705000','1','<Blog: 第一篇博客>',1,'[{\"added\": {}}]',8,1),(5,'2019-01-29 17:23:43.610000','2','<Blog: 第二篇博客>',1,'[{\"added\": {}}]',8,1),(6,'2019-01-29 17:29:10.367000','3','<Blog: 长内容的博客>',1,'[{\"added\": {}}]',8,1),(7,'2019-01-29 18:15:28.316000','4','<Blog: 再来一篇随笔>',1,'[{\"added\": {}}]',8,1),(8,'2019-01-31 16:44:23.813000','36','<Blog: 2月新篇>',1,'[{\"added\": {}}]',8,1),(9,'2019-01-31 18:25:56.580000','4','<Blog: 再来一篇随笔>',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',8,1),(10,'2019-01-31 18:52:47.845000','36','<Blog: 2月新篇>',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',8,1),(11,'2019-01-31 18:55:27.953000','4','<Blog: 再来一篇随笔>',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',8,1),(12,'2019-01-31 19:54:05.999000','4','<Blog: 再来一篇随笔>',2,'[]',8,1),(13,'2019-01-31 19:54:19.635000','36','<Blog: 2月新篇>',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',8,1),(14,'2019-02-01 12:24:54.473000','1','ReadNum object (1)',1,'[{\"added\": {}}]',9,1),(15,'2019-02-01 14:37:15.844000','36','<Blog: 2月新篇>',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',8,1),(16,'2019-02-01 14:37:45.678000','36','<Blog: 2月新篇>',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',8,1),(17,'2019-02-01 16:04:09.772000','3','ReadDetail object (3)',1,'[{\"added\": {}}]',10,1),(18,'2019-02-01 16:19:15.574000','7','ReadDetail object (7)',1,'[{\"added\": {}}]',10,1),(19,'2019-02-02 18:41:50.812000','37','<Blog: 新春佳节>',1,'[{\"added\": {}}]',8,1),(20,'2019-02-05 15:41:12.104000','15','Comment object (15)',1,'[{\"added\": {}}]',11,1),(21,'2019-02-05 15:45:26.403000','16','123123',1,'[{\"added\": {}}]',11,1),(22,'2019-02-05 16:13:22.415000','16','123123',2,'[{\"changed\": {\"fields\": [\"user\", \"root\", \"reply_to\"]}}]',11,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(8,'blog','blog'),(7,'blog','blogtype'),(11,'comment','comment'),(5,'contenttypes','contenttype'),(10,'read_statistics','readdetail'),(9,'read_statistics','readnum'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-02-10 06:57:41.563684'),(2,'auth','0001_initial','2019-02-10 06:57:41.790604'),(3,'admin','0001_initial','2019-02-10 06:57:41.850605'),(4,'admin','0002_logentry_remove_auto_add','2019-02-10 06:57:41.858077'),(5,'admin','0003_logentry_add_action_flag_choices','2019-02-10 06:57:41.866688'),(6,'contenttypes','0002_remove_content_type_name','2019-02-10 06:57:41.916686'),(7,'auth','0002_alter_permission_name_max_length','2019-02-10 06:57:41.957489'),(8,'auth','0003_alter_user_email_max_length','2019-02-10 06:57:41.992050'),(9,'auth','0004_alter_user_username_opts','2019-02-10 06:57:42.001302'),(10,'auth','0005_alter_user_last_login_null','2019-02-10 06:57:42.040366'),(11,'auth','0006_require_contenttypes_0002','2019-02-10 06:57:42.042908'),(12,'auth','0007_alter_validators_add_error_messages','2019-02-10 06:57:42.050335'),(13,'auth','0008_alter_user_username_max_length','2019-02-10 06:57:42.080411'),(14,'auth','0009_alter_user_last_name_max_length','2019-02-10 06:57:42.108867'),(15,'blog','0001_initial','2019-02-10 06:57:42.183095'),(16,'blog','0002_auto_20190131_0745','2019-02-10 06:57:42.192331'),(17,'blog','0003_auto_20190131_1844','2019-02-10 06:57:42.200839'),(18,'blog','0004_blog_read_num','2019-02-10 06:57:42.223207'),(19,'blog','0005_remove_blog_read_num','2019-02-10 06:57:42.243282'),(20,'blog','0006_auto_20190201_1338','2019-02-10 06:57:42.251178'),(21,'comment','0001_initial','2019-02-10 06:57:42.307047'),(22,'comment','0002_auto_20190205_2337','2019-02-10 06:57:42.337643'),(23,'comment','0003_auto_20190205_2343','2019-02-10 06:57:42.394902'),(24,'comment','0004_auto_20190205_2351','2019-02-10 06:57:42.491229'),(25,'comment','0005_auto_20190205_2354','2019-02-10 06:57:42.581208'),(26,'comment','0006_auto_20190210_1455','2019-02-10 06:57:42.590233'),(27,'read_statistics','0001_initial','2019-02-10 06:57:42.630132'),(28,'read_statistics','0002_readdetail','2019-02-10 06:57:42.666236'),(29,'read_statistics','0003_readdetail_date','2019-02-10 06:57:42.723476'),(30,'sessions','0001_initial','2019-02-10 06:57:42.738071');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('3jehw2z0nueiobrw3ed8fqbf6mhvq5ed','MDRmNWJiM2ZmZWI2MjYxZGE4MjkzNzdiMzMwZjBiZDE2MWM4NWYwMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzA1M2JkMWU3YjFjMmEzN2U4MGE1MjVkMGFiZTE5N2VmN2E3OTAzIn0=','2019-02-24 07:15:59.165947'),('9n8p2mam0smqup06noo6p6fqkzq1d2ae','MDRmNWJiM2ZmZWI2MjYxZGE4MjkzNzdiMzMwZjBiZDE2MWM4NWYwMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzA1M2JkMWU3YjFjMmEzN2U4MGE1MjVkMGFiZTE5N2VmN2E3OTAzIn0=','2019-02-19 17:02:59.072000'),('a992g967dvhk5e111tkixvgt83cw4qfv','MDRmNWJiM2ZmZWI2MjYxZGE4MjkzNzdiMzMwZjBiZDE2MWM4NWYwMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzA1M2JkMWU3YjFjMmEzN2U4MGE1MjVkMGFiZTE5N2VmN2E3OTAzIn0=','2019-02-18 16:58:16.221000'),('c2qv4ch0901vhddvjq17wymq5ec102ce','MDRmNWJiM2ZmZWI2MjYxZGE4MjkzNzdiMzMwZjBiZDE2MWM4NWYwMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzA1M2JkMWU3YjFjMmEzN2U4MGE1MjVkMGFiZTE5N2VmN2E3OTAzIn0=','2019-02-19 15:38:08.282000'),('gjqmpgkscce7d8jnscrnx2kqw05nppfq','MDRmNWJiM2ZmZWI2MjYxZGE4MjkzNzdiMzMwZjBiZDE2MWM4NWYwMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzA1M2JkMWU3YjFjMmEzN2U4MGE1MjVkMGFiZTE5N2VmN2E3OTAzIn0=','2019-02-19 17:24:20.618000'),('h6j7h53p6n0pba749mua4136ky1flszm','MDRmNWJiM2ZmZWI2MjYxZGE4MjkzNzdiMzMwZjBiZDE2MWM4NWYwMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzA1M2JkMWU3YjFjMmEzN2U4MGE1MjVkMGFiZTE5N2VmN2E3OTAzIn0=','2019-02-19 17:19:12.747000'),('is7zwnu1qktcm5iuwqik3yzmcjxaytjn','MDRmNWJiM2ZmZWI2MjYxZGE4MjkzNzdiMzMwZjBiZDE2MWM4NWYwMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzA1M2JkMWU3YjFjMmEzN2U4MGE1MjVkMGFiZTE5N2VmN2E3OTAzIn0=','2019-02-18 07:58:59.711000'),('jey4m3uazr2vr290ftdixnbaabctw8uk','MDRmNWJiM2ZmZWI2MjYxZGE4MjkzNzdiMzMwZjBiZDE2MWM4NWYwMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzA1M2JkMWU3YjFjMmEzN2U4MGE1MjVkMGFiZTE5N2VmN2E3OTAzIn0=','2019-02-19 17:24:47.379000'),('lkh7jz5cmp19wqt8v9cn4smk2hsvwy2u','MDRmNWJiM2ZmZWI2MjYxZGE4MjkzNzdiMzMwZjBiZDE2MWM4NWYwMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzA1M2JkMWU3YjFjMmEzN2U4MGE1MjVkMGFiZTE5N2VmN2E3OTAzIn0=','2019-02-18 12:44:41.035000'),('m627x5ixjbm2iw2xk0535s1vk0pd9ulk','MDRmNWJiM2ZmZWI2MjYxZGE4MjkzNzdiMzMwZjBiZDE2MWM4NWYwMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzA1M2JkMWU3YjFjMmEzN2U4MGE1MjVkMGFiZTE5N2VmN2E3OTAzIn0=','2019-02-17 07:56:49.820000'),('pcg6fmur2tq8kvb5rlmflyk4uzx4b1bq','MDRmNWJiM2ZmZWI2MjYxZGE4MjkzNzdiMzMwZjBiZDE2MWM4NWYwMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzA1M2JkMWU3YjFjMmEzN2U4MGE1MjVkMGFiZTE5N2VmN2E3OTAzIn0=','2019-02-18 16:16:27.050000'),('vm9k01vollf36w8z11s833qgakcwr3ld','MDRmNWJiM2ZmZWI2MjYxZGE4MjkzNzdiMzMwZjBiZDE2MWM4NWYwMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzA1M2JkMWU3YjFjMmEzN2U4MGE1MjVkMGFiZTE5N2VmN2E3OTAzIn0=','2019-02-19 17:25:20.411000'),('ytm0oox0gh1csm08m5elvzswk2ureezx','MDRmNWJiM2ZmZWI2MjYxZGE4MjkzNzdiMzMwZjBiZDE2MWM4NWYwMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzA1M2JkMWU3YjFjMmEzN2U4MGE1MjVkMGFiZTE5N2VmN2E3OTAzIn0=','2019-02-19 17:18:33.469000');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_cache_table`
--

DROP TABLE IF EXISTS `my_cache_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `my_cache_table` (
  `cache_key` varchar(255) NOT NULL,
  `value` longtext NOT NULL,
  `expires` datetime(6) NOT NULL,
  PRIMARY KEY (`cache_key`),
  KEY `my_cache_table_expires` (`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_cache_table`
--

LOCK TABLES `my_cache_table` WRITE;
/*!40000 ALTER TABLE `my_cache_table` DISABLE KEYS */;
INSERT INTO `my_cache_table` VALUES (':1:hot_blogs_for_7_days','gASVKQsAAAAAAACMFmRqYW5nby5kYi5tb2RlbHMucXVlcnmUjAhRdWVyeVNldJSTlCmBlH2UKIwFbW9kZWyUjAtibG9nLm1vZGVsc5SMBEJsb2eUk5SMA19kYpROjAZfaGludHOUfZSMBXF1ZXJ5lIwaZGphbmdvLmRiLm1vZGVscy5zcWwucXVlcnmUjAVRdWVyeZSTlCmBlH2UKGgFaAiMDmFsaWFzX3JlZmNvdW50lH2UKIwJYmxvZ19ibG9nlEsEjBpyZWFkX3N0YXRpc3RpY3NfcmVhZGRldGFpbJRLA3WMCWFsaWFzX21hcJSMC2NvbGxlY3Rpb25zlIwLT3JkZXJlZERpY3SUk5QpUpQoaBSMI2RqYW5nby5kYi5tb2RlbHMuc3FsLmRhdGFzdHJ1Y3R1cmVzlIwJQmFzZVRhYmxllJOUKYGUfZQojAp0YWJsZV9uYW1llGgUjAt0YWJsZV9hbGlhc5RoFHViaBVoG4wESm9pbpSTlCmBlH2UKGggaBWMDHBhcmVudF9hbGlhc5RoFGghaBWMCWpvaW5fdHlwZZSMCklOTkVSIEpPSU6UjAlqb2luX2NvbHOUjAJpZJSMCW9iamVjdF9pZJSGlIWUjApqb2luX2ZpZWxklIwiZGphbmdvLmNvbnRyaWIuY29udGVudHR5cGVzLmZpZWxkc5SMCkdlbmVyaWNSZWyUk5QpgZR9lCiMBWZpZWxklIwXZGphbmdvLmRiLm1vZGVscy5maWVsZHOUjAtfbG9hZF9maWVsZJSTlIwEYmxvZ5RoB4wMcmVhZF9kZXRhaWxzlIeUUpRoBYwWcmVhZF9zdGF0aXN0aWNzLm1vZGVsc5SMClJlYWREZXRhaWyUk5SMDHJlbGF0ZWRfbmFtZZSMASuUjBJyZWxhdGVkX3F1ZXJ5X25hbWWUTowQbGltaXRfY2hvaWNlc190b5R9lIwLcGFyZW50X2xpbmuUiYwJb25fZGVsZXRllIwZZGphbmdvLmRiLm1vZGVscy5kZWxldGlvbpSMCkRPX05PVEhJTkeUk5SMC3N5bW1ldHJpY2FslImMCG11bHRpcGxllIh1YowIbnVsbGFibGWUiIwRZmlsdGVyZWRfcmVsYXRpb26UTnVidYwQZXh0ZXJuYWxfYWxpYXNlc5SPlIwJdGFibGVfbWFwlH2UKGgUXZRoFGFoFV2UaBVhdYwMZGVmYXVsdF9jb2xzlImMEGRlZmF1bHRfb3JkZXJpbmeUiIwRc3RhbmRhcmRfb3JkZXJpbmeUiIwMdXNlZF9hbGlhc2VzlI+UjBBmaWx0ZXJfaXNfc3RpY2t5lImMCHN1YnF1ZXJ5lImMBnNlbGVjdJSMHGRqYW5nby5kYi5tb2RlbHMuZXhwcmVzc2lvbnOUjANDb2yUk5QpgZR9lCiMEV9jb25zdHJ1Y3Rvcl9hcmdzlGgUaDdoOGgHaCqHlFKUhpR9lIaUjAxvdXRwdXRfZmllbGSUaGKMBWFsaWFzlGgUjAZ0YXJnZXSUaGKMEmNvbnRhaW5zX2FnZ3JlZ2F0ZZSJdWJoXSmBlH2UKGhgaBRoN2g4aAeMBXRpdGxllIeUUpSGlH2UhpRoZmhuaGdoFGhoaG51YoaUjAV3aGVyZZSMGmRqYW5nby5kYi5tb2RlbHMuc3FsLndoZXJllIwJV2hlcmVOb2RllJOUKYGUfZQojAhjaGlsZHJlbpRdlCiMGGRqYW5nby5kYi5tb2RlbHMubG9va3Vwc5SMEkdyZWF0ZXJUaGFuT3JFcXVhbJSTlCmBlH2UKIwDbGhzlGhdKYGUfZQoaGBoFWg3jA9yZWFkX3N0YXRpc3RpY3OUaD2MBGRhdGWUh5RSlIaUfZSGlGhmaIZoZ2gVaGhohmhpiXVijANyaHOUjAhkYXRldGltZZSMBGRhdGWUk5RDBAfjAQuUhZRSlIwUYmlsYXRlcmFsX3RyYW5zZm9ybXOUXZRoaYl1Ymh7jAhMZXNzVGhhbpSTlCmBlH2UKGiAaIFoimiNQwQH4wIKlIWUUpRokV2UaGmJdWJljAljb25uZWN0b3KUjANBTkSUjAduZWdhdGVklIloaYl1YowLd2hlcmVfY2xhc3OUaHaMCGdyb3VwX2J5lGheaGqGlIwIb3JkZXJfYnmUjA0tcmVhZF9udW1fc3VtlIWUjAhsb3dfbWFya5RLAIwJaGlnaF9tYXJrlEsHjAhkaXN0aW5jdJSJjA9kaXN0aW5jdF9maWVsZHOUKYwRc2VsZWN0X2Zvcl91cGRhdGWUiYwYc2VsZWN0X2Zvcl91cGRhdGVfbm93YWl0lImMHXNlbGVjdF9mb3JfdXBkYXRlX3NraXBfbG9ja2VklImMFHNlbGVjdF9mb3JfdXBkYXRlX29mlCmMDnNlbGVjdF9yZWxhdGVklImMCW1heF9kZXB0aJRLBYwNdmFsdWVzX3NlbGVjdJRoKmhshpSMDF9hbm5vdGF0aW9uc5RoGSlSlIwMcmVhZF9udW1fc3VtlIwbZGphbmdvLmRiLm1vZGVscy5hZ2dyZWdhdGVzlIwDU3VtlJOUKYGUfZQoaGCMFnJlYWRfZGV0YWlsc19fcmVhZF9udW2UhZR9lIaUjAZmaWx0ZXKUTowSc291cmNlX2V4cHJlc3Npb25zlF2UaF0pgZR9lChoYGgVaDdog2g9jAhyZWFkX251bZSHlFKUhpR9lIaUaGZow2hnaBVoaGjDjBVfb3V0cHV0X2ZpZWxkX29yX25vbmWUaMNoaYl1YmGMBWV4dHJhlH2UjAppc19zdW1tYXJ5lIloZmjDdWJzjBZhbm5vdGF0aW9uX3NlbGVjdF9tYXNrlI+UKGiykIwYX2Fubm90YXRpb25fc2VsZWN0X2NhY2hllGgZKVKUaLJotnOMCmNvbWJpbmF0b3KUTowOY29tYmluYXRvcl9hbGyUiYwQY29tYmluZWRfcXVlcmllc5QpjAZfZXh0cmGUTowRZXh0cmFfc2VsZWN0X21hc2uUj5SME19leHRyYV9zZWxlY3RfY2FjaGWUTowMZXh0cmFfdGFibGVzlCmMDmV4dHJhX29yZGVyX2J5lCmMEGRlZmVycmVkX2xvYWRpbmeUKJGUiIaUjBNfZmlsdGVyZWRfcmVsYXRpb25zlH2UjA1leHBsYWluX3F1ZXJ5lImMDmV4cGxhaW5fZm9ybWF0lE6MD2V4cGxhaW5fb3B0aW9uc5R9lIwNX2xvb2t1cF9qb2luc5RdlChoFGgVZYwKYmFzZV90YWJsZZRoFHVijA1fcmVzdWx0X2NhY2hllF2UKH2UKGgqSyVobIwM5paw5pil5L2z6IqClGiySyh1fZQoaCpLJGhsjAoy5pyI5paw56+HlGiySw11fZQoaCpLI2hsjAZmb3IgMzCUaLJLDHV9lChoKksUaGyMBmZvciAxNZRosksEdX2UKGgqSwFobIwP56ys5LiA56+H5Y2a5a6ilGiySwN1fZQoaCpLA2hsjBLplb/lhoXlrrnnmoTljZrlrqKUaLJLAnV9lChoKksgaGyMBmZvciAyN5RosksCdWWMDl9zdGlja3lfZmlsdGVylImMCl9mb3Jfd3JpdGWUiYwZX3ByZWZldGNoX3JlbGF0ZWRfbG9va3Vwc5QpjA5fcHJlZmV0Y2hfZG9uZZSJjBZfa25vd25fcmVsYXRlZF9vYmplY3RzlH2UjA9faXRlcmFibGVfY2xhc3OUaACMDlZhbHVlc0l0ZXJhYmxllJOUjAdfZmllbGRzlGgqaGyGlIwPX2RqYW5nb192ZXJzaW9ulIwFMi4xLjWUdWIu','2019-02-10 14:03:13.000000');
/*!40000 ALTER TABLE `my_cache_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `read_statistics_readdetail`
--

DROP TABLE IF EXISTS `read_statistics_readdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `read_statistics_readdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `read_num` int(11) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `read_statistics_read_content_type_id_589c7d92_fk_django_co` (`content_type_id`),
  CONSTRAINT `read_statistics_read_content_type_id_589c7d92_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `read_statistics_readdetail`
--

LOCK TABLES `read_statistics_readdetail` WRITE;
/*!40000 ALTER TABLE `read_statistics_readdetail` DISABLE KEYS */;
INSERT INTO `read_statistics_readdetail` VALUES (1,1,36,8,'2019-02-01'),(2,1,3,8,'2019-02-01'),(3,3,35,8,'2019-02-01'),(4,1,4,8,'2019-02-01'),(5,1,2,8,'2019-02-01'),(6,1,1,8,'2019-02-01'),(7,3,20,8,'2019-01-31'),(8,1,36,8,'2019-02-02'),(9,2,35,8,'2019-02-02'),(10,2,37,8,'2019-02-02'),(11,9,37,8,'2019-02-03'),(12,2,36,8,'2019-02-03'),(13,14,37,8,'2019-02-04'),(14,1,3,8,'2019-02-04'),(15,1,33,8,'2019-02-04'),(16,3,36,8,'2019-02-04'),(17,2,35,8,'2019-02-04'),(18,1,32,8,'2019-02-04'),(19,14,37,8,'2019-02-05'),(20,5,36,8,'2019-02-05'),(21,3,35,8,'2019-02-05'),(22,1,34,8,'2019-02-05'),(23,1,32,8,'2019-02-05'),(24,1,20,8,'2019-02-05'),(25,1,36,8,'2019-02-06'),(26,2,35,8,'2019-02-06'),(27,2,1,8,'2019-02-06'),(28,1,37,8,'2019-02-06'),(29,1,22,8,'2019-02-08'),(30,1,35,8,'2019-02-10'),(31,2,37,8,'2019-02-10'),(32,1,34,8,'2019-02-10'),(33,1,36,8,'2019-02-10');
/*!40000 ALTER TABLE `read_statistics_readdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `read_statistics_readnum`
--

DROP TABLE IF EXISTS `read_statistics_readnum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `read_statistics_readnum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `read_num` int(11) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `content_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `read_statistics_read_content_type_id_560f0f39_fk_django_co` (`content_type_id`),
  CONSTRAINT `read_statistics_read_content_type_id_560f0f39_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `read_statistics_readnum`
--

LOCK TABLES `read_statistics_readnum` WRITE;
/*!40000 ALTER TABLE `read_statistics_readnum` DISABLE KEYS */;
INSERT INTO `read_statistics_readnum` VALUES (1,16,36,8),(2,11,35,8),(3,3,34,8),(4,2,33,8),(5,3,32,8),(6,1,31,8),(7,3,3,8),(8,1,27,8),(9,1,26,8),(10,1,25,8),(11,1,19,8),(12,1,18,8),(13,1,4,8),(14,1,2,8),(15,3,1,8),(16,42,37,8),(17,1,20,8),(18,1,22,8);
/*!40000 ALTER TABLE `read_statistics_readnum` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-10 21:41:58
