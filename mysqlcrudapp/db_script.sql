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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (1,'Article First','<p>Overview of OOP Terminology</p><ul><li><p><strong>Class</strong>&nbsp;&minus; A user-defined prototype for an object that defines a set of attributes that characterize any object of the class. The attributes are data members (class variables and instance variables) and methods, accessed via dot notation.</p></li><li><p><strong>Class variable</strong>&nbsp;&minus; A variable that is shared by all instances of a class. Class variables are defined within a class but outside any of the class&#39;s methods. Class variables are not used as frequently as instance variables are.</p></li><li><p><strong>Data member</strong>&nbsp;&minus; A class variable or instance variable that holds data associated with a class and its objects.</p></li><li><p><strong>Function overloading</strong>&nbsp;&minus; The assignment of more than one behavior to a particular function. The operation performed varies by the types of objects or arguments involved.</p></li><li><p><strong>Instance variable</strong>&nbsp;&minus; A variable that is defined inside a method and belongs only to the current instance of a class.</p></li><li><p><strong>Inheritance</strong>&nbsp;&minus; The transfer of the characteristics of a class to other classes that are derived from it.</p></li><li><p><strong>Instance</strong>&nbsp;&minus; An individual object of a certain class. An object obj that belongs to a class Circle, for example, is an instance of the class Circle.</p></li><li><p><strong>Instantiation</strong>&nbsp;&minus; The creation of an instance of a class.</p></li><li><p><strong>Method&nbsp;</strong>&minus; A special kind of function that is defined in a class definition.</p></li><li><p><strong>Object</strong>&nbsp;&minus; A unique instance of a data structure that is defined by its class. An object comprises both data members (class variables and instance variables) and methods.</p></li><li><p><strong>Operator overloading</strong>&nbsp;&minus; The assignment of more than one function to a particular operator.</p></li></ul>','shahaji.nangare',NULL),(2,'Article Two','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>','shahaji.nangare',NULL),(4,'Article Three','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>','shahaji.nangare',NULL),(7,'Article Four','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>','shahaji.nangare',NULL),(8,'Article Five ','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>','shahaji.nangare',NULL),(9,'Article Six','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>','shahaji.nangare',NULL),(10,'Article Eight','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>','shahaji.nangare',NULL),(11,'Article Nine','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>','shahaji.nangare',NULL),(20,'	Article Ten','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>','aruna.nangare',NULL);
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `databaseerror`
--

DROP TABLE IF EXISTS `databaseerror`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `databaseerror` (
  `errorid` bigint(20) NOT NULL AUTO_INCREMENT,
  `errormsg` varchar(1000) DEFAULT NULL,
  `spname` varchar(100) DEFAULT NULL,
  `createddate` datetime DEFAULT NULL,
  `errorline` int(11) DEFAULT NULL,
  PRIMARY KEY (`errorid`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `databaseerror`
--

LOCK TABLES `databaseerror` WRITE;
/*!40000 ALTER TABLE `databaseerror` DISABLE KEYS */;
/*!40000 ALTER TABLE `databaseerror` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Shahaji Nangare','shahaji.nangare@gmail.com','shahaji.nangare','$5$rounds=535000$mBC.JQCBDwG2TTum$Yi7A0pYSd29G7A3osIlFPxxZMUSqYINmvPBVIv8Q5S6'),(2,'Aruna Nangare','nangare.aruna@gmail.com','aruna.nangare','$5$rounds=535000$77Lb.4tR.NURaxvU$Y6YwSBANJADJ5Eqgbk/yhZb0foETNlFAmk3lQ6ysv.A');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'myflaskapp'
--

--
-- Dumping routines for database 'myflaskapp'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_del_articles` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_del_articles`(
	IN p_id integer)
BEGIN
	DECLARE v_errormsg    VARCHAR(550);
	DECLARE v_sqlstate    VARCHAR(550);

	DECLARE EXIT handler FOR SQLEXCEPTION
	begin

	  get diagnostics CONDITION 1 v_sqlstate = returned_sqlstate,
	  v_errormsg= message_text;

	  ROLLBACK;
	  INSERT INTO databaseerror
				  (

							  errormsg,
							  errorline,
							  spname,
							  createddate
				  )
				  VALUES
				  (

							  v_errormsg,
							  1 ,
							  'sp_ins_articles',
							  now()
				  );


	     /*SET o_code='-1';
		 SET o_message='Error in database';*/
	end;

	START TRANSACTION;

	delete from articles where id = p_id;

	select 'articles delete successfully !!';

    commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_articles` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_articles`(IN p_id int)
BEGIN
	if p_id=0 then
		SELECT * FROM articles ;
    else
		SELECT * FROM articles where id = p_id ;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_users` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_users`(IN p_username VARCHAR(50))
BEGIN
	SELECT * FROM users WHERE username =p_username;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_ins_articles` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ins_articles`(
	IN p_id integer ,
	IN p_title VARCHAR(100),
    IN p_body VARCHAR(5000),
    IN p_author VARCHAR(50),
    OUT `o_code` VARCHAR(50),
	OUT `o_message` VARCHAR(1000))
BEGIN
	DECLARE v_errormsg    VARCHAR(550);
	DECLARE v_sqlstate    VARCHAR(550);

	DECLARE EXIT handler FOR SQLEXCEPTION
	begin

	  get diagnostics CONDITION 1 v_sqlstate = returned_sqlstate,
	  v_errormsg= message_text;

	  ROLLBACK;
	  INSERT INTO databaseerror
				  (

							  errormsg,
							  errorline,
							  spname,
							  createddate
				  )
				  VALUES
				  (

							  v_errormsg,
							  1 ,
							  'sp_ins_articles',
							  now()
				  );


	     SET o_code='-1';
		 SET o_message='Error in database';

	end;

	START TRANSACTION;

    if p_id=0 THEN

		if ( select exists (select 1 from articles where title = p_title) ) THEN

				select 'Title already Exists !!';

		ELSE

			insert into articles
			(
				title,
				body,
				author
			)
			values
			(
				p_title,
				p_body,
				p_author
			);

			select 'articles insert successfully !!';
		END IF;
    else
		update articles
        set title=p_title,
			body=p_body
        where id=p_id;

        select 'articles update successfully !!';
    end if;
    commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_ins_users` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ins_users`(IN p_name VARCHAR(50),
    IN p_email VARCHAR(100),
    IN p_username VARCHAR(50),
    IN p_password VARCHAR(500))
BEGIN
	DECLARE v_errormsg    VARCHAR(550);
	DECLARE v_sqlstate    VARCHAR(550);

	DECLARE EXIT handler FOR SQLEXCEPTION
	begin

	  get diagnostics CONDITION 1 v_sqlstate = returned_sqlstate,
	  v_errormsg= message_text;

	  ROLLBACK;
	  INSERT INTO databaseerror
				  (

							  errormsg,
							  errorline,
							  spname,
							  createddate
				  )
				  VALUES
				  (

							  v_errormsg,
							  1 ,
							  'sp_ins_users',
							  now()
				  );


	     /*SET o_code='-1';
		 SET o_message='Error in database';*/

	end;

	START TRANSACTION;

    if ( select exists (select 1 from users where username = p_username) ) THEN

        select 'Username already Exists !!';

    ELSE

        insert into users
        (
            name,
            email,
            username,
            password
        )
        values
        (
            p_name,
            p_email,
            p_username,
            p_password
        );
		select 'You are now registered and can log in !!';
    END IF;

    Commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-03  0:05:07
