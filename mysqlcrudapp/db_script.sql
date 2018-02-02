CREATE DATABASE  IF NOT EXISTS `myflaskapp` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `myflaskapp`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: myflaskapp
-- ------------------------------------------------------
-- Server version	5.7.14-log

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
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `body` varchar(5000) DEFAULT NULL,
  `author` varchar(45) DEFAULT NULL,
  `create_date` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (1,'Article First','<p>Overview of OOP Terminology</p><ul><li><p><strong>Class</strong>&nbsp;&minus; A user-defined prototype for an object that defines a set of attributes that characterize any object of the class. The attributes are data members (class variables and instance variables) and methods, accessed via dot notation.</p></li><li><p><strong>Class variable</strong>&nbsp;&minus; A variable that is shared by all instances of a class. Class variables are defined within a class but outside any of the class&#39;s methods. Class variables are not used as frequently as instance variables are.</p></li><li><p><strong>Data member</strong>&nbsp;&minus; A class variable or instance variable that holds data associated with a class and its objects.</p></li><li><p><strong>Function overloading</strong>&nbsp;&minus; The assignment of more than one behavior to a particular function. The operation performed varies by the types of objects or arguments involved.</p></li><li><p><strong>Instance variable</strong>&nbsp;&minus; A variable that is defined inside a method and belongs only to the current instance of a class.</p></li><li><p><strong>Inheritance</strong>&nbsp;&minus; The transfer of the characteristics of a class to other classes that are derived from it.</p></li><li><p><strong>Instance</strong>&nbsp;&minus; An individual object of a certain class. An object obj that belongs to a class Circle, for example, is an instance of the class Circle.</p></li><li><p><strong>Instantiation</strong>&nbsp;&minus; The creation of an instance of a class.</p></li><li><p><strong>Method&nbsp;</strong>&minus; A special kind of function that is defined in a class definition.</p></li><li><p><strong>Object</strong>&nbsp;&minus; A unique instance of a data structure that is defined by its class. An object comprises both data members (class variables and instance variables) and methods.</p></li><li><p><strong>Operator overloading</strong>&nbsp;&minus; The assignment of more than one function to a particular operator.</p></li></ul>','shahaji.nangare',NULL),(2,'Article Two','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>','shahaji.nangare',NULL),(3,'Article Three','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>','shahaji.nangare',NULL);
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Shahaji Nangare','shahaji.nangare@gmail.com','shahaji.nangare','$5$rounds=535000$mBC.JQCBDwG2TTum$Yi7A0pYSd29G7A3osIlFPxxZMUSqYINmvPBVIv8Q5S6');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'myflaskapp'
--

--
-- Dumping routines for database 'myflaskapp'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-02 20:17:28
















---------------------------------------


CREATE DATABASE bucketlist;

CREATE TABLE tbl_user (
  user_id BIGINT  AUTO_INCREMENT,
  user_name VARCHAR(45) NULL,
  user_username VARCHAR(45) NULL,
  user_password VARCHAR(45) NULL,
  PRIMARY KEY (user_id));


CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_createUser`(IN p_name VARCHAR(20),
    IN p_username VARCHAR(20),
    IN p_password VARCHAR(20))
BEGIN
    if ( select exists (select 1 from tbl_user where user_username = p_username) ) THEN
     
        select 'Username Exists !!';
     
    ELSE
     
        insert into tbl_user
        (
            user_name,
            user_username,
            user_password
        )
        values
        (
            p_name,
            p_username,
            p_password
        );
     
    END IF;
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_login`(
    IN p_username VARCHAR(50),
    IN p_password VARCHAR(2000))
BEGIN
    if ( select exists (select 1 from tbl_user where user_username = p_username and  user_password=p_password) ) THEN
     
        select 'Successfully Login !!!';
     
    END IF;
END