/*
SQLyog Community v11.31 (64 bit)
MySQL - 5.6.20 : Database - wadev
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`wadev` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `wadev`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `AdminId` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `Firstname` varchar(200) DEFAULT NULL,
  `Lastname` varchar(200) DEFAULT NULL,
  `StatusId` int(11) DEFAULT NULL,
  PRIMARY KEY (`AdminId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `CategoryId` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`CategoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `category` */

insert  into `category`(`CategoryId`,`Name`) values (1,'Web Programming'),(2,'Desktop Programming'),(3,'Mobile Programming');

/*Table structure for table `portofolio` */

DROP TABLE IF EXISTS `portofolio`;

CREATE TABLE `portofolio` (
  `PortofolioId` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryId` int(11) DEFAULT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `Descriptions` text,
  `StatusId` int(11) DEFAULT NULL,
  `TeamId` int(11) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`PortofolioId`),
  KEY `CategoryId` (`CategoryId`),
  KEY `TeamId` (`TeamId`),
  CONSTRAINT `portofolio_ibfk_1` FOREIGN KEY (`CategoryId`) REFERENCES `category` (`CategoryId`),
  CONSTRAINT `portofolio_ibfk_2` FOREIGN KEY (`TeamId`) REFERENCES `team` (`TeamId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `portofolio` */

insert  into `portofolio`(`PortofolioId`,`CategoryId`,`Name`,`Descriptions`,`StatusId`,`TeamId`,`CreatedDate`) values (2,1,'Project 1','Project 1',1,1,'2017-06-03 16:22:06'),(3,3,'Project 3','Project 1',1,1,'2017-06-03 16:22:06'),(4,2,'Project 2','Project 1',1,2,'2017-06-03 16:22:06');

/*Table structure for table `setting` */

DROP TABLE IF EXISTS `setting`;

CREATE TABLE `setting` (
  `SettingId` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) DEFAULT NULL,
  `Address` text,
  `AddressArea` text,
  `Phone` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `FB` text,
  `Twitter` text,
  `Pin` text,
  `Gmail` text,
  PRIMARY KEY (`SettingId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `setting` */

insert  into `setting`(`SettingId`,`Name`,`Address`,`AddressArea`,`Phone`,`Email`,`FB`,`Twitter`,`Pin`,`Gmail`) values (1,'Wadev Studios','Jl. PHH Mustofa No.99','Bandung, Indonesia, 40192.','089658682111','Dani@wadevstudios.com',NULL,NULL,NULL,NULL);

/*Table structure for table `suggestion` */

DROP TABLE IF EXISTS `suggestion`;

CREATE TABLE `suggestion` (
  `SuggestionId` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Subject` varchar(200) DEFAULT NULL,
  `Message` text,
  `CreatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`SuggestionId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `suggestion` */

insert  into `suggestion`(`SuggestionId`,`Name`,`Email`,`Subject`,`Message`,`CreatedDate`) values (1,'Dani','danisetiawan30@ymail.com','test','Wadev is comming','2017-06-03 16:43:12'),(2,'Hurul aini','setiawandani20@gmail.com','Mampir','Ini bagus gan boleh juga','2017-06-03 16:54:05');

/*Table structure for table `team` */

DROP TABLE IF EXISTS `team`;

CREATE TABLE `team` (
  `TeamId` int(11) NOT NULL AUTO_INCREMENT,
  `Firstname` varchar(200) DEFAULT NULL,
  `Lastname` varchar(200) DEFAULT NULL,
  `Title` varchar(200) DEFAULT NULL,
  `Motto` text,
  `FB` text,
  `Twitter` text,
  `Path` text,
  `Gmail` text,
  `StatusId` int(11) DEFAULT NULL,
  `ImgUrl` text,
  PRIMARY KEY (`TeamId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `team` */

insert  into `team`(`TeamId`,`Firstname`,`Lastname`,`Title`,`Motto`,`FB`,`Twitter`,`Path`,`Gmail`,`StatusId`,`ImgUrl`) values (1,'Dani','Stwn','Desktop Programmer','Be happy',NULL,NULL,NULL,NULL,1,NULL),(2,'Hanan','Abdul Anwari','Web Programmer','Be Family',NULL,NULL,NULL,NULL,1,NULL),(3,'Vicensah','Ratu Ayu','Design Graphic','We Are Wadev Studio',NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `visitor` */

DROP TABLE IF EXISTS `visitor`;

CREATE TABLE `visitor` (
  `VisitorId` int(11) NOT NULL AUTO_INCREMENT,
  `IpAddress` text,
  PRIMARY KEY (`VisitorId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `visitor` */

insert  into `visitor`(`VisitorId`,`IpAddress`) values (1,'127.0.0.1'),(2,'192.168.43.1');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
