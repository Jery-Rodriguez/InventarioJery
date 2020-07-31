/*
SQLyog Community v8.71 
MySQL - 5.5.5-10.4.13-MariaDB : Database - producto
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`producto` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci */;

/*Table structure for table `inventario` */

DROP TABLE IF EXISTS `inventario`;

CREATE TABLE `inventario` (
  `idInventario` int(11) NOT NULL AUTO_INCREMENT,
  `nombreProducto` varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fechaIngreso` date DEFAULT NULL,
  `cantidad` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idInventario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `inventario` */

insert  into `inventario`(`idInventario`,`nombreProducto`,`fechaIngreso`,`cantidad`) values (1,'ggggg','2020-07-30','2'),(2,'mesa','2020-07-08','1'),(3,'mesa','2020-07-08','1');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
