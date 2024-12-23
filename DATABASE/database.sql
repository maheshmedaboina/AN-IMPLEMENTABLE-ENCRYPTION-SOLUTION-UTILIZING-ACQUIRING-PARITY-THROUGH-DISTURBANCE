/*
SQLyog Enterprise - MySQL GUI v6.56
MySQL - 5.0.67-community-nt : Database - practical_public
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`practical_public` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `practical_public`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `username` varchar(1000) default NULL,
  `password` varchar(1000) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`username`,`password`) values ('admin','admin');

/*Table structure for table `block` */

DROP TABLE IF EXISTS `block`;

CREATE TABLE `block` (
  `id` int(11) NOT NULL auto_increment,
  `blockedby` varchar(1000) default NULL,
  `blockeduser` varchar(1000) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `block` */

/*Table structure for table `message` */

DROP TABLE IF EXISTS `message`;

CREATE TABLE `message` (
  `id` int(11) NOT NULL auto_increment,
  `uname` varchar(1000) default NULL,
  `toaddress` varchar(1000) default NULL,
  `msg` varchar(1000) default NULL,
  `cipher` longtext,
  `skey` varchar(1000) default NULL,
  `status` varchar(1000) default NULL,
  `status1` varchar(1000) default NULL,
  `fname` varchar(1000) default NULL,
  `data` longtext,
  `encryption` varchar(1000) default NULL,
  `decryption` varchar(1000) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `message` */

insert  into `message`(`id`,`uname`,`toaddress`,`msg`,`cipher`,`skey`,`status`,`status1`,`fname`,`data`,`encryption`,`decryption`) values (4,'a','b','message about titles','Xdrh+y+4U6ABOdoeAL2qIvDaQLLFjr3wdS/yc9V6gk5vzkMC9fBZVKdqKpUCYGg1cYE57pxl898x\r\nt2vyIdZ+b2BSUeeawqgimUfgZ1zV+c2sqN9eure6rx3icDDszi+H+QYTFWH8oN98MseB1cpTyf+g\r\n+PXxwzZQe72ver4fjaGHxVJHD1W/P/e9YpctIf2tUyJOQ8DGsIAbZ11lAdu3jN+Cka3eqpQ05CS5\r\nTyMt45b1wmfr+JqwiavuwsYh26jOUBqsy74Wo7mcdW9LHuQBKCEbP6ZjMEcFyx1oH7zegxQVgCBM\r\nolYkDFfv5ZVuwnDySWPQX/A1LNch27eLLHGrmAVSxnwkGmecEWNbnLlYyy3mHapxRaGhv9zkPwMO\r\nFh3oi+cjZPRPVo8LbQRxPI6oY/WwlU2wFs5a2yCjAIu0xC10FJ64KsD1juyCNK6Df1QU0tJBDfnu\r\nzN4Ct/lo2r02ExWFCUzKljh6//hJOhmneDQCKN8Yjz7Ly1UfKVoMaaoV/iByk96DZjDVhIn26Tpu\r\n/27FE3rgJJHhzAG8YgahptiiGskQRbGOy6x/FQih6ue2z9HCOPyGePCvio2blcLirihK4PW/gMm1\r\ngr6J7Vw1TSI=','VVWD8ddkw/Incy1NvMIBmg==','KeyGenerated','20590','needprojecttitle.txt','2.efficient privacy aware authontication scheme for mobile cloud computing services.3.fraudvis understanding unsupervised fraud detetction algorith.4.supervised and unsupervised aspect category detecton for setiment analisiz with cooccurance data5.detecting hate speech and affencive on twitter.6.seggregation and spammers and unsolicited bloggers from genuinse experts on twitter.7.A Developer centered bug prediction model.this is the horrible file','6','1'),(5,'a','b','JAVA SOFWARE Links','fNKVXbHBctqOc9O+yY+j2O4Ahd1y3XQzlBww72h9E4Xkj/b8JWHmCFuYLUUjx8XwkKjNiwHJ+Jsq\r\nC2jgKdihH1DQ9xnV0USsIiUUaWyFntBTjZXXfqPokuaB+fKntn09GskwkMGTEUldiHWiaI+JjUW0\r\nmW93TLGIuWQBlSAdvL71Ns3FXXGhotuTRPZ/rRMF8/eCtfO9boaPGhyyg1fmikB2PCcGOZVZaxQp\r\ne/AobgT2TLabmzaTC8Zrze08TVif7gCF3XLddDOUHDDvaH0TheHO+w9yU1N01gZ3SdTVOb0F/jlv\r\nFNMlen0xs/inzM5GcZvwMXm4D+zYIz/0EttWfAhlPaoepnTivVgxX6VdGkF9uRXDW1kh7TuCAJrA\r\njf3uIEHrJHgbxxGP5LIUO/3tdeWHNCCRY0snyi6GmQqKZpNws5R1U1Z9DgFGP4d6yBkRX+67YNlj\r\n7uPoWkwFmdw+7gxRmvQqTwHoz1vE1yI7EEf1Ns3FXXGhotuTRPZ/rRMFyfqx9CdHiWVWAYpMeqSR\r\n3u+nsogDaTtm3oMBU/AN3+d2YhYTVMuScbqwrds/i3xmcIHb+XDMS3kpLhly015zA2BAwNFa0nuy\r\nfzeuM8gKgAHpkOAphOr7VJzXPXaKsbPPvttEJGOotenOLTAvZ9Mp+5bE1fySJa4ju3ekoskw1YP1\r\nVvFERXtpP1EdKRq9KizM82Kbx3IL9+4GWrCkzU4VWu4Ahd1y3XQzlBww72h9E4XtvQ0n0cGhC04l\r\nN1eVzSJKZEC4A86Mhs2+WNqwvtv+UQ==','ApeGb+/NRMsAjpu9ug3B7Q==','KeyGenerated','622673','JAVA SOFWARE Links.txt','Eclipse:---- https://www.mediafire.com/?rbutil0qqjzuv84Java 64-bit:-----https://www.mediafire.com/?yfs8p02aj8mlyp4Java 32-bit:---https://www.mediafire.com/?pcqnlz4yumbvlvtMysql 32&64bit:---https://www.mediafire.com/?egocsssx6y5kbs2Mysql GUI:---https://www.mediafire.com/?n4bbe3unwudcxsjApache Tomact7.0:---https://www.mediafire.com/?gujcfj28qd59b16Rational Rose UML:---https://www.mediafire.com/?ssknhwgw98285ckNetbeans 8.1:------https://www.mediafire.com/?kh0rp5pp0c0fmv8OracleXE :---https://www.mediafire.com/?krqv5k9ninksbecEditPlus3 :---https://www.mediafire.com/?xce37vsxaa09qk4','9','3');

/*Table structure for table `register` */

DROP TABLE IF EXISTS `register`;

CREATE TABLE `register` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(1000) default NULL,
  `email` varchar(1000) default NULL,
  `mobile` varchar(1000) default NULL,
  `address` varchar(1000) default NULL,
  `username` varchar(1000) default NULL,
  `password` varchar(1000) default NULL,
  `status` varchar(1000) default NULL,
  `status1` varchar(1000) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `register` */

insert  into `register`(`id`,`name`,`email`,`mobile`,`address`,`username`,`password`,`status`,`status1`) values (1,'a','a@gmail.com','1234567890','hyd','a','a','activated','waiting'),(2,'b','b@gmail.com','123456890','hyd','b','b','activated','waiting');

/*Table structure for table `word` */

DROP TABLE IF EXISTS `word`;

CREATE TABLE `word` (
  `id` int(11) NOT NULL auto_increment,
  `word` varchar(1000) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `word` */

insert  into `word`(`id`,`word`) values (1,'hai'),(2,'discord'),(3,'dissonance'),(4,'commotion'),(5,'jangle'),(6,'bang'),(7,'blast'),(8,'boom'),(9,'clap'),(10,'crash'),(11,'kill'),(12,'horrible ');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
