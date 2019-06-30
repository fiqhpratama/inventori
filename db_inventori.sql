/*
SQLyog Ultimate v12.09 (32 bit)
MySQL - 10.1.30-MariaDB : Database - db_inventori
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_inventori` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `db_inventori`;

/*Table structure for table `attribute_value` */

DROP TABLE IF EXISTS `attribute_value`;

CREATE TABLE `attribute_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) NOT NULL,
  `attribute_parent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

/*Data for the table `attribute_value` */

insert  into `attribute_value`(`id`,`value`,`attribute_parent_id`) values (36,'mg',14),(37,'gram',14),(38,'kg',14),(39,'tons',14),(40,'mm',13),(41,'cm',13),(42,'meters',13),(43,'inch',13),(44,'mm',12),(45,'cm',12),(46,'inch',12),(47,'meters',12),(48,'liters',15),(49,'ml',15),(50,'gallons',15),(51,'cubic meter',15),(52,'GENERAL EQUIPMENT',16),(53,'TECHNICAL EQUIPMENT',16),(54,'LAND EQUIPMENT',16),(55,'ETC',16);

/*Table structure for table `attributes` */

DROP TABLE IF EXISTS `attributes`;

CREATE TABLE `attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Data for the table `attributes` */

insert  into `attributes`(`id`,`name`,`active`) values (16,'TYPE EQUIPMENT',1);

/*Table structure for table `brands` */

DROP TABLE IF EXISTS `brands`;

CREATE TABLE `brands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

/*Data for the table `brands` */

insert  into `brands`(`id`,`name`,`active`) values (15,'SCREW',1),(16,'GLUE',1),(17,'BATTERY',1),(18,'CLEANER',1),(19,'RUBBER',1),(20,'SPARK PLUG',1),(21,'COIL',1),(22,'FILTER',1),(23,'MEMBRANE',1),(24,'SAFERY EQUIPMENT',1),(25,'LUBRICANT',1);

/*Table structure for table `categories` */

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `categories` */

insert  into `categories`(`id`,`name`,`active`) values (9,'Screw',1),(10,'Tools',1),(11,'Equipment',1);

/*Table structure for table `groups` */

DROP TABLE IF EXISTS `groups`;

CREATE TABLE `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `groups` */

insert  into `groups`(`id`,`group_name`,`permission`) values (1,'Administrator','a:36:{i:0;s:10:\"createUser\";i:1;s:10:\"updateUser\";i:2;s:8:\"viewUser\";i:3;s:10:\"deleteUser\";i:4;s:11:\"createGroup\";i:5;s:11:\"updateGroup\";i:6;s:9:\"viewGroup\";i:7;s:11:\"deleteGroup\";i:8;s:11:\"createBrand\";i:9;s:11:\"updateBrand\";i:10;s:9:\"viewBrand\";i:11;s:11:\"deleteBrand\";i:12;s:14:\"createCategory\";i:13;s:14:\"updateCategory\";i:14;s:12:\"viewCategory\";i:15;s:14:\"deleteCategory\";i:16;s:11:\"createStore\";i:17;s:11:\"updateStore\";i:18;s:9:\"viewStore\";i:19;s:11:\"deleteStore\";i:20;s:15:\"createAttribute\";i:21;s:15:\"updateAttribute\";i:22;s:13:\"viewAttribute\";i:23;s:15:\"deleteAttribute\";i:24;s:13:\"createProduct\";i:25;s:13:\"updateProduct\";i:26;s:11:\"viewProduct\";i:27;s:13:\"deleteProduct\";i:28;s:11:\"createOrder\";i:29;s:11:\"updateOrder\";i:30;s:9:\"viewOrder\";i:31;s:11:\"deleteOrder\";i:32;s:11:\"viewReports\";i:33;s:13:\"updateCompany\";i:34;s:11:\"viewProfile\";i:35;s:13:\"updateSetting\";}'),(11,'KEPALA_DIVISI','a:12:{i:0;s:14:\"createCategory\";i:1;s:14:\"updateCategory\";i:2;s:12:\"viewCategory\";i:3;s:14:\"deleteCategory\";i:4;s:13:\"createProduct\";i:5;s:13:\"updateProduct\";i:6;s:11:\"viewProduct\";i:7;s:13:\"deleteProduct\";i:8;s:11:\"createOrder\";i:9;s:11:\"updateOrder\";i:10;s:9:\"viewOrder\";i:11;s:11:\"deleteOrder\";}'),(12,'SUPERVISOR_WH','a:24:{i:0;s:11:\"createBrand\";i:1;s:11:\"updateBrand\";i:2;s:9:\"viewBrand\";i:3;s:11:\"deleteBrand\";i:4;s:14:\"createCategory\";i:5;s:14:\"updateCategory\";i:6;s:12:\"viewCategory\";i:7;s:14:\"deleteCategory\";i:8;s:15:\"createSuppliers\";i:9;s:15:\"updateSuppliers\";i:10;s:13:\"viewSuppliers\";i:11;s:15:\"deleteSuppliers\";i:12;s:15:\"createAttribute\";i:13;s:15:\"updateAttribute\";i:14;s:13:\"viewAttribute\";i:15;s:15:\"deleteAttribute\";i:16;s:13:\"createProduct\";i:17;s:13:\"updateProduct\";i:18;s:11:\"viewProduct\";i:19;s:13:\"deleteProduct\";i:20;s:11:\"createOrder\";i:21;s:11:\"updateOrder\";i:22;s:9:\"viewOrder\";i:23;s:11:\"deleteOrder\";}');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bill_no` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `date_time` varchar(255) NOT NULL,
  `gross_amount` varchar(255) NOT NULL,
  `service_charge_rate` varchar(255) NOT NULL,
  `service_charge` varchar(255) NOT NULL,
  `vat_charge_rate` varchar(255) NOT NULL,
  `vat_charge` varchar(255) NOT NULL,
  `net_amount` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `paid_status` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `orders` */

/*Table structure for table `orders_item` */

DROP TABLE IF EXISTS `orders_item`;

CREATE TABLE `orders_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Data for the table `orders_item` */

insert  into `orders_item`(`id`,`order_id`,`product_id`,`qty`,`rate`,`amount`) values (16,5,12,'1','5000','5000.00');

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `description` text NOT NULL,
  `attribute_value_id` text,
  `brand_id` text NOT NULL,
  `category_id` text NOT NULL,
  `suppliers_id` int(11) NOT NULL,
  `availability` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

/*Data for the table `products` */

insert  into `products`(`id`,`name`,`sku`,`price`,`qty`,`image`,`description`,`attribute_value_id`,`brand_id`,`category_id`,`suppliers_id`,`availability`) values (14,'NGK SPARKPLUG CR8E','','80000','122','<p>You did not select a file to upload.</p>','<p>NGK SPARKPLUG CR8E<br></p>','[\"53\"]','[\"20\"]','[\"11\"]',6,1),(15,'NGK Iridium Sparkplug IX CPR9EAIX-9','','125000','54','<p>You did not select a file to upload.</p>','<p>NGK Iridium Sparkplug IX CPR9EAIX-9 REGULER<br></p>','[\"53\"]','[\"20\"]','[\"11\"]',6,1),(16,'Perkins Oil Filter CH10929','','350000','12','<p>You did not select a file to upload.</p>','<p>Perkins Oil Filter CH10929<br></p>','[\"53\"]','[\"22\"]','[\"11\"]',5,1),(17,'PERTAMINA NG LUBE SAE-40','','65805000','4','<p>You did not select a file to upload.</p>','<p>PERTAMINA NG LUBE SAE-40 DRUM 200LITER<br></p>','[\"52\"]','[\"25\"]','[\"11\"]',2,1),(18,'MASKER RANGKAP 3','','35000','12','<p>You did not select a file to upload.</p>','<p>MASKER MUKA RANGKAP 3</p>','[\"52\"]','[\"24\"]','[\"11\"]',5,1),(19,'LEM AIBON 2.5KG - 601','','160000','12','<p>You did not select a file to upload.</p>','<p>LEM AIBON 2.5KG - 601<br></p>','[\"52\"]','[\"16\"]','[\"11\"]',3,1);

/*Table structure for table `salesman` */

DROP TABLE IF EXISTS `salesman`;

CREATE TABLE `salesman` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sales_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sales_deskripsi` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_charge_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vat_charge_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `salesman` */

insert  into `salesman`(`id`,`sales_name`,`sales_deskripsi`,`active`,`service_charge_value`,`vat_charge_value`,`currency`) values (1,'Om Joe','Salesman utama','1','13','10','USD');

/*Table structure for table `suppliers` */

DROP TABLE IF EXISTS `suppliers`;

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alamat` longtext COLLATE utf8_unicode_ci,
  `active` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `suppliers` */

insert  into `suppliers`(`id`,`supplier_name`,`alamat`,`active`) values (2,'PT.NSM','Jl. Halim Perdana Kusuma No.53, Jurumudi Baru, Benda, Kota Tangerang, Banten 15124','1'),(3,'PT. AICA INDONESIA','Jl. Ir. H. Juanda No.318, Margahayu, Kec. Bekasi Tim., Kota Bks, Jawa Barat 17113','1'),(4,'PT.HILLMAN','Jl.Tengah No.35 RT.01 RW.06 CIMUNING 17165, Cimuning, Mustika Jaya, Bekasi City, West Java 17155','1'),(5,'Aneka Tehnik','Jl. Jatimulya Raya No.21, Jatimulya, Kec. Tambun Sel., Bekasi, Jawa Barat 17115','1'),(6,'PT. NGK INDONESIA','Jl. Raya Bogor KM 26.6/Jl.Kiwi RT.10/RW.4, RT.10/RW.4, Ciracas, RT.10/RW.4, Ciracas, Kec. Ciracas, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13740','1');

/*Table structure for table `user_group` */

DROP TABLE IF EXISTS `user_group`;

CREATE TABLE `user_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Data for the table `user_group` */

insert  into `user_group`(`id`,`user_id`,`group_id`) values (1,1,1),(7,6,4),(8,7,4),(9,8,4),(10,9,5),(11,10,5),(12,11,5),(13,12,7),(14,13,11),(15,14,10),(16,15,12);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `gender` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`email`,`firstname`,`lastname`,`phone`,`gender`) values (1,'Super Administrator','$2y$10$5SOfNqdanFSxjihC0iS/Pe8aESHHCuBEWT55bldK/pd4IbcuaHdJu','admin@admin.com','admin','sa','65646546',1),(15,'Aditya','$2y$10$5SOfNqdanFSxjihC0iS/Pe8aESHHCuBEWT55bldK/pd4IbcuaHdJu','kepalagudang@gmail.com','Aditya','Pratama','087643753573',2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
