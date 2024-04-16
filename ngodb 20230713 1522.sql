-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	4.1.13-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema ngo
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ ngo;
USE ngo;

--
-- Table structure for table `ngo`.`activities`
--

DROP TABLE IF EXISTS `activities`;
CREATE TABLE `activities` (
  `name` varchar(50) default NULL,
  `description` text,
  `ngo` varchar(50) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ngo`.`activities`
--

/*!40000 ALTER TABLE `activities` DISABLE KEYS */;
INSERT INTO `activities` (`name`,`description`,`ngo`) VALUES 
 ('food distrubtion','near main road for age old people','cvs');
/*!40000 ALTER TABLE `activities` ENABLE KEYS */;


--
-- Table structure for table `ngo`.`donation`
--

DROP TABLE IF EXISTS `donation`;
CREATE TABLE `donation` (
  `ngoname` varchar(50) default NULL,
  `amount` varchar(50) default NULL,
  `sponsername` varchar(50) default NULL,
  `accountno` varchar(50) default NULL,
  `cvv` varchar(50) default NULL,
  `status` varchar(50) default 'pending',
  `date` timestamp NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `id` int(11) NOT NULL auto_increment,
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ngo`.`donation`
--

/*!40000 ALTER TABLE `donation` DISABLE KEYS */;
INSERT INTO `donation` (`ngoname`,`amount`,`sponsername`,`accountno`,`cvv`,`status`,`date`,`id`) VALUES 
 ('aws','500000','mohan','1234567895654','122','Reject','2021-08-16 23:30:18',1),
 ('RSS','4000','mohan','12245678766543','123','Accept','2021-08-17 12:29:14',2);
/*!40000 ALTER TABLE `donation` ENABLE KEYS */;


--
-- Table structure for table `ngo`.`login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `username` varchar(50) default NULL,
  `password` varchar(50) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ngo`.`login`
--

/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` (`username`,`password`) VALUES 
 ('admin','password'),
 ('ram','ram123');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;


--
-- Table structure for table `ngo`.`ngo`
--

DROP TABLE IF EXISTS `ngo`;
CREATE TABLE `ngo` (
  `name` varchar(50) default NULL,
  `address` text,
  `ngoid` text,
  `contactpersonname` text,
  `phone` varchar(50) default NULL,
  `username` varchar(50) default NULL,
  `password` varchar(50) default NULL,
  `status` varchar(50) default 'pending',
  `id` int(11) NOT NULL auto_increment,
  `image` varchar(50) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `phone` (`phone`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ngo`.`ngo`
--

/*!40000 ALTER TABLE `ngo` DISABLE KEYS */;
INSERT INTO `ngo` (`name`,`address`,`ngoid`,`contactpersonname`,`phone`,`username`,`password`,`status`,`id`,`image`) VALUES 
 ('aws','shimoga','345','raju','33543531535355','aws','aws123','Reject',5,'1.jpg'),
 ('RSS','shimoga','678','sham','9965236525','rss','rss123','pending',6,'8.jpg'),
 ('CVS','sagara','123','naresh','9965236256','naresh@gmail.com','naresh123','pending',7,'2.jpg'),
 ('abc','shimoga','ngo112','ravi','9965238888','abc@gmail.com','abcd','pending',9,'8.jpg'),
 ('manasa','soraba','ngo126','manasa','9965265826','manasa@gmail.com','Manasa123','pending',10,'8.jpg');
/*!40000 ALTER TABLE `ngo` ENABLE KEYS */;


--
-- Table structure for table `ngo`.`ngolist`
--

DROP TABLE IF EXISTS `ngolist`;
CREATE TABLE `ngolist` (
  `ngono` varchar(50) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ngo`.`ngolist`
--

/*!40000 ALTER TABLE `ngolist` DISABLE KEYS */;
INSERT INTO `ngolist` (`ngono`) VALUES 
 ('ngo126'),
 ('ngo114'),
 ('ngo123'),
 ('ngo115'),
 ('ngo112');
/*!40000 ALTER TABLE `ngolist` ENABLE KEYS */;


--
-- Table structure for table `ngo`.`sponser`
--

DROP TABLE IF EXISTS `sponser`;
CREATE TABLE `sponser` (
  `firstname` varchar(50) default NULL,
  `lastname` varchar(50) default NULL,
  `age` varchar(50) default NULL,
  `address` varchar(50) default NULL,
  `phone` varchar(50) default NULL,
  `username` varchar(50) default NULL,
  `password` varchar(50) default NULL,
  `gender` varchar(50) default NULL,
  `status` varchar(50) default 'pending',
  `id` int(11) NOT NULL auto_increment,
  `rdate` timestamp NULL default CURRENT_TIMESTAMP,
  UNIQUE KEY `username` (`username`),
  KEY `id` (`id`),
  KEY `phone` (`phone`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ngo`.`sponser`
--

/*!40000 ALTER TABLE `sponser` DISABLE KEYS */;
INSERT INTO `sponser` (`firstname`,`lastname`,`age`,`address`,`phone`,`username`,`password`,`gender`,`status`,`id`,`rdate`) VALUES 
 ('ram','kumar','44','shimoga','96764543545','mohan','mohan123','male','pending',7,'2021-07-31 23:56:19');
/*!40000 ALTER TABLE `sponser` ENABLE KEYS */;


--
-- Table structure for table `ngo`.`valenters`
--

DROP TABLE IF EXISTS `valenters`;
CREATE TABLE `valenters` (
  `firstname` varchar(50) default NULL,
  `lastname` varchar(50) default NULL,
  `age` varchar(50) default NULL,
  `address` varchar(50) default NULL,
  `phone` varchar(50) default NULL,
  `username` varchar(50) default NULL,
  `password` varchar(50) default NULL,
  `gender` varchar(50) default NULL,
  `status` varchar(50) default 'pending',
  `id` int(11) NOT NULL auto_increment,
  `rdate` timestamp NULL default CURRENT_TIMESTAMP,
  `photo` varchar(50) default NULL,
  `ngo` varchar(50) default NULL,
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `username` (`username`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ngo`.`valenters`
--

/*!40000 ALTER TABLE `valenters` DISABLE KEYS */;
INSERT INTO `valenters` (`firstname`,`lastname`,`age`,`address`,`phone`,`username`,`password`,`gender`,`status`,`id`,`rdate`,`photo`,`ngo`) VALUES 
 ('ram','kumar','34','shimoga','8844888448','ram','ram123','male','pending',6,'2021-07-31 23:44:27',NULL,NULL),
 ('somu','kumar','32','sagara','9965263256','somu','somu123','male','pending',7,'2021-08-27 00:31:37',NULL,NULL),
 ('sdfgdfjg','sfsd','43','sagara','1234567890','sagar','sagar123','male','pending',8,'2021-09-06 02:05:08',NULL,NULL),
 ('sdfgdfjg','sdskjkgn','43','sagara','8859652632','soma','soma123','male','pending',10,'2021-09-06 02:12:52','7.jp.jpg','manasa'),
 ('sdfgdfjg','sdskjkgn','43','sagara','8833883228','bhima','bhima123','male','pending',11,'2021-09-06 02:18:08','7.jp.jpg','CVS');
/*!40000 ALTER TABLE `valenters` ENABLE KEYS */;


--
-- Table structure for table `ngo`.`visiter`
--

DROP TABLE IF EXISTS `visiter`;
CREATE TABLE `visiter` (
  `name` varchar(50) default NULL,
  `email` varchar(50) NOT NULL default '',
  `password` varchar(50) default NULL,
  PRIMARY KEY  (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ngo`.`visiter`
--

/*!40000 ALTER TABLE `visiter` DISABLE KEYS */;
INSERT INTO `visiter` (`name`,`email`,`password`) VALUES 
 ('ravish','ravish@gmail.com','ravi123');
/*!40000 ALTER TABLE `visiter` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
