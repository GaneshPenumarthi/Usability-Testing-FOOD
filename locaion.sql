/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.1.44-community : Database - location
*********************************************************************
Server version : 5.1.44-community
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `location`;

USE `location`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `booking` */

DROP TABLE IF EXISTS `booking`;

CREATE TABLE `booking` (
  `hotelid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hotelname` varchar(45) NOT NULL,
  `uname` varchar(45) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `room` varchar(45) NOT NULL,
  PRIMARY KEY (`hotelid`)
) ENGINE=InnoDB AUTO_INCREMENT=812481 DEFAULT CHARSET=latin1;

/*Data for the table `booking` */

insert  into `booking`(`hotelid`,`hotelname`,`uname`,`mobile`,`address`,`room`) values (562384,'Hilton','prabhu','8124808814','chennai','null'),(775194,'mekala','mekala','7373968778','chennai','null'),(812480,'ITC Grand Chola','mekala','8124808841','korattur chennai','null');

/*Table structure for table `food` */

DROP TABLE IF EXISTS `food`;

CREATE TABLE `food` (
  `hotelid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hotelname` varchar(150) NOT NULL,
  `breakfast` varchar(150) NOT NULL,
  `refresh` varchar(150) NOT NULL,
  `lunch` varchar(150) NOT NULL,
  `snacks` varchar(150) NOT NULL,
  `dinner` varchar(150) NOT NULL,
  PRIMARY KEY (`hotelid`)
) ENGINE=InnoDB AUTO_INCREMENT=976524 DEFAULT CHARSET=latin1;

/*Data for the table `food` */

insert  into `food`(`hotelid`,`hotelname`,`breakfast`,`refresh`,`lunch`,`snacks`,`dinner`) values (141,'Star Hotel','Idlee','Coffee','Chicken Dinneer','Bred and Butter','Sweet Potato');

/*Table structure for table `hoteldetails` */

DROP TABLE IF EXISTS `hoteldetails`;

CREATE TABLE `hoteldetails` (
  `hotelid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hotelname` varchar(45) NOT NULL,
  `location` varchar(45) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `address` varchar(150) NOT NULL,
  `stayingroom` varchar(45) NOT NULL,
  `rent` varchar(45) NOT NULL,
  `des` varchar(500) NOT NULL,
  `rate` varchar(45) NOT NULL,
  `image` longblob NOT NULL,
  PRIMARY KEY (`hotelid`)
) ENGINE=InnoDB AUTO_INCREMENT=976524 DEFAULT CHARSET=latin1;

/*Data for the table `hoteldetails` */

insert  into `hoteldetails`(`hotelid`,`hotelname`,`location`,`mobile`,`address`,`stayingroom`,`rent`,`des`,`rate`,`image`) values (142,'taj','bagalure','9087654321','Hyderabad','1','1000','good','10','main_top.png'),(3456,'tajbhanjara','Hyderabad','8087654321','bhanjarahills','10','10000','good','6','f.png'),(562384,'Hilton','chennai','044 2225 5555','124/1, J.N.Salai, Guindy','23','2500','Love the banquet hall ','6','hilton.jpg'),(562389,'Rajpark','chennai','044 2231 0101',' No. 180, T.T.K Road, ','4','2500','Very Good Rooms, Very Good Food','10','radisson.jpg'),(775194,'Taj','chennai','044 6600 2827',' Mahatma Gandhi Road ','15','2500','This hotel is first rate','10','taj.jpg'),(812480,'ITC Grand Chola','chennai','044-26870128','No:63, Anna Salai, Guindy','50','25000','No 1 hotel in chennai','10','ITC cholo hotel.jpg'),(850231,'Leela Palace ','chennai','044 3366 1234','M.R.C Nagar','10','1200','this hotel is really like a palace ','9','leela.jpg'),(976523,'ITC Grand Chola','chennai','911800 102 6482','No. 63, Mount Road ','10','3000','! It is one of the largest hotels in which I have stayed','8','grand.jpg');

/*Table structure for table `r_request` */

DROP TABLE IF EXISTS `r_request`;

CREATE TABLE `r_request` (
  `hotelid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hotelname` varchar(150) NOT NULL,
  `breakfast` varchar(150) NOT NULL,
  `lunch` varchar(150) NOT NULL,
  `snacks` varchar(150) NOT NULL,
  `dinner` varchar(150) NOT NULL,
  PRIMARY KEY (`hotelid`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=latin1;

/*Data for the table `r_request` */

insert  into `r_request`(`hotelid`,`hotelname`,`breakfast`,`lunch`,`snacks`,`dinner`) values (141,'Star Hotel','Idlee','Chicken Dinneer','Bred and Butter','Sweet Potato');

/*Table structure for table `r_user` */

DROP TABLE IF EXISTS `r_user`;

CREATE TABLE `r_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` text,
  `password` text,
  `email` text,
  `mobile` text,
  `dob` text,
  `gender` text,
  `address` text,
  `Location` text,
  `pincode` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `r_user` */

insert  into `r_user`(`id`,`username`,`password`,`email`,`mobile`,`dob`,`gender`,`address`,`Location`,`pincode`) values (1,'sri','sri','sri@gmail.com','8','10-jun-1947','MALE','hyd','hyd','78789');

/*Table structure for table `reg` */

DROP TABLE IF EXISTS `reg`;

CREATE TABLE `reg` (
  `name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `mailid` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `location` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `reg` */

insert  into `reg`(`name`,`password`,`mailid`,`gender`,`location`) values ('mekala','123','mekala.jpinfotech@gmail.com','Female','jayankondam'),('abishka','123','mekala.jpinfotech@gmail.com','Female','chennai'),('maya','123','mekala.jpinfotech@gmail.com','Female','chennai'),('mekalaa','123','mekala.jpinfotech@gmail.com','Female','chennai'),('sri','sri','sri.sktech@gmail.com','Male','hyd'),('john','john','john@gmail.com','Male','Hyderabad'),('pravalika','pravalika','pravalika@gmail.com','Female','Hyderabad');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` text,
  `password` text,
  `email` text,
  `mobile` text,
  `dob` text,
  `gender` text,
  `address` text,
  `Location` text,
  `pincode` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`password`,`email`,`mobile`,`dob`,`gender`,`address`,`Location`,`pincode`) values (1,'nivas','nivas','nivas@gmail.com','9087654321','10-jun-1947','MALE','hyd','hyd','9808');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
