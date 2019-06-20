-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.1.38-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             9.5.0.5332
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for db_inventori
CREATE DATABASE IF NOT EXISTS `db_inventori` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `db_inventori`;

-- Dumping structure for table db_inventori.attributes
CREATE TABLE IF NOT EXISTS `attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Dumping data for table db_inventori.attributes: ~3 rows (approximately)
/*!40000 ALTER TABLE `attributes` DISABLE KEYS */;
INSERT INTO `attributes` (`id`, `name`, `active`) VALUES
	(4, 'color', 1),
	(6, 'Size', 1),
	(7, 'Satuan', 1);
/*!40000 ALTER TABLE `attributes` ENABLE KEYS */;

-- Dumping structure for table db_inventori.attribute_value
CREATE TABLE IF NOT EXISTS `attribute_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) NOT NULL,
  `attribute_parent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- Dumping data for table db_inventori.attribute_value: ~18 rows (approximately)
/*!40000 ALTER TABLE `attribute_value` DISABLE KEYS */;
INSERT INTO `attribute_value` (`id`, `value`, `attribute_parent_id`) VALUES
	(5, 'Blue', 2),
	(6, 'White', 2),
	(7, 'M', 3),
	(8, 'L', 3),
	(9, 'Green', 2),
	(10, 'Black', 2),
	(12, 'Grey', 2),
	(13, 'S', 3),
	(17, 'yellow', 4),
	(20, 'small', 6),
	(21, 'medium', 6),
	(22, 'large', 6),
	(23, 'pcs', 7),
	(24, 'gram', 7),
	(25, 'kilogram', 7),
	(26, 'liter', 7),
	(27, 'gross', 7),
	(28, 'lusin', 7);
/*!40000 ALTER TABLE `attribute_value` ENABLE KEYS */;

-- Dumping structure for table db_inventori.brands
CREATE TABLE IF NOT EXISTS `brands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- Dumping data for table db_inventori.brands: ~3 rows (approximately)
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` (`id`, `name`, `active`) VALUES
	(15, 'Computer', 1),
	(16, 'Clothes', 1),
	(17, 'Mobile', 1);
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;

-- Dumping structure for table db_inventori.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Dumping data for table db_inventori.categories: ~2 rows (approximately)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `name`, `active`) VALUES
	(7, 'Electronic', 1),
	(8, 'Dress', 1);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Dumping structure for table db_inventori.groups
CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- Dumping data for table db_inventori.groups: ~4 rows (approximately)
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` (`id`, `group_name`, `permission`) VALUES
	(1, 'Administrator', 'a:36:{i:0;s:10:"createUser";i:1;s:10:"updateUser";i:2;s:8:"viewUser";i:3;s:10:"deleteUser";i:4;s:11:"createGroup";i:5;s:11:"updateGroup";i:6;s:9:"viewGroup";i:7;s:11:"deleteGroup";i:8;s:11:"createBrand";i:9;s:11:"updateBrand";i:10;s:9:"viewBrand";i:11;s:11:"deleteBrand";i:12;s:14:"createCategory";i:13;s:14:"updateCategory";i:14;s:12:"viewCategory";i:15;s:14:"deleteCategory";i:16;s:11:"createStore";i:17;s:11:"updateStore";i:18;s:9:"viewStore";i:19;s:11:"deleteStore";i:20;s:15:"createAttribute";i:21;s:15:"updateAttribute";i:22;s:13:"viewAttribute";i:23;s:15:"deleteAttribute";i:24;s:13:"createProduct";i:25;s:13:"updateProduct";i:26;s:11:"viewProduct";i:27;s:13:"deleteProduct";i:28;s:11:"createOrder";i:29;s:11:"updateOrder";i:30;s:9:"viewOrder";i:31;s:11:"deleteOrder";i:32;s:11:"viewReports";i:33;s:13:"updateCompany";i:34;s:11:"viewProfile";i:35;s:13:"updateSetting";}'),
	(10, 'MANAGER_STORE', 'a:8:{i:0;s:13:"createProduct";i:1;s:13:"updateProduct";i:2;s:11:"viewProduct";i:3;s:13:"deleteProduct";i:4;s:11:"createOrder";i:5;s:11:"updateOrder";i:6;s:9:"viewOrder";i:7;s:11:"deleteOrder";}'),
	(11, 'KEPALA_DIVISI', 'a:12:{i:0;s:14:"createCategory";i:1;s:14:"updateCategory";i:2;s:12:"viewCategory";i:3;s:14:"deleteCategory";i:4;s:13:"createProduct";i:5;s:13:"updateProduct";i:6;s:11:"viewProduct";i:7;s:13:"deleteProduct";i:8;s:11:"createOrder";i:9;s:11:"updateOrder";i:10;s:9:"viewOrder";i:11;s:11:"deleteOrder";}'),
	(12, 'KEPALA_GUDANG', 'a:4:{i:0;s:13:"createProduct";i:1;s:13:"updateProduct";i:2;s:11:"viewProduct";i:3;s:13:"deleteProduct";}');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;

-- Dumping structure for table db_inventori.orders
CREATE TABLE IF NOT EXISTS `orders` (
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table db_inventori.orders: ~1 rows (approximately)
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`id`, `bill_no`, `customer_name`, `customer_address`, `customer_phone`, `date_time`, `gross_amount`, `service_charge_rate`, `service_charge`, `vat_charge_rate`, `vat_charge`, `net_amount`, `discount`, `paid_status`, `user_id`) VALUES
	(4, 'BILPR-239D', 'Shafraz', 'belakang polsek', '0778650336', '1526279725', '1980000.00', '13', '257400.00', '10', '198000.00', '2435400.00', '', 1, 1);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

-- Dumping structure for table db_inventori.orders_item
CREATE TABLE IF NOT EXISTS `orders_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- Dumping data for table db_inventori.orders_item: ~4 rows (approximately)
/*!40000 ALTER TABLE `orders_item` DISABLE KEYS */;
INSERT INTO `orders_item` (`id`, `order_id`, `product_id`, `qty`, `rate`, `amount`) VALUES
	(13, 4, 8, '3', '150000', '450000.00'),
	(14, 4, 12, '6', '5000', '30000.00'),
	(15, 4, 10, '10', '150000', '1500000.00'),
	(16, 5, 12, '1', '5000', '5000.00');
/*!40000 ALTER TABLE `orders_item` ENABLE KEYS */;

-- Dumping structure for table db_inventori.products
CREATE TABLE IF NOT EXISTS `products` (
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- Dumping data for table db_inventori.products: ~4 rows (approximately)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `name`, `sku`, `price`, `qty`, `image`, `description`, `attribute_value_id`, `brand_id`, `category_id`, `suppliers_id`, `availability`) VALUES
	(8, 'computer', '', '150000', '44', 'assets/images/product_image/5af844384c067.jpg', '<p>dsadsad<br></p>', 'null', 'null', '["5"]', 5, 1),
	(10, 'Mac', '', '150000', '23', 'assets/images/product_image/5afa5fe395f9d.jpg', '<p>sample <br></p>', '["17","20"]', '["15"]', '["7"]', 5, 1),
	(11, 'Rubuke', '', '900', '35', 'assets/images/product_image/5afa6026d808e.jpg', '<p>sample<br></p>', '["17","21"]', '["15"]', '["7"]', 5, 1),
	(12, 'Kopi Luwak White Cofee', '', '5000', '-6', 'assets/images/product_image/5b3e66187edf3.jpg', '<p>kopi luwak white cofee sasetan</p>', '["17","20"]', '["17"]', '["7"]', 2, 1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Dumping structure for table db_inventori.salesman
CREATE TABLE IF NOT EXISTS `salesman` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sales_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sales_deskripsi` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_charge_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vat_charge_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table db_inventori.salesman: ~1 rows (approximately)
/*!40000 ALTER TABLE `salesman` DISABLE KEYS */;
INSERT INTO `salesman` (`id`, `sales_name`, `sales_deskripsi`, `active`, `service_charge_value`, `vat_charge_value`, `currency`) VALUES
	(1, 'Om Joe', 'Salesman utama', '1', '13', '10', 'USD');
/*!40000 ALTER TABLE `salesman` ENABLE KEYS */;

-- Dumping structure for table db_inventori.suppliers
CREATE TABLE IF NOT EXISTS `suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alamat` longtext COLLATE utf8_unicode_ci,
  `active` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table db_inventori.suppliers: ~2 rows (approximately)
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` (`id`, `supplier_name`, `alamat`, `active`) VALUES
	(1, 'Bang Aleks', 'Jl. Kaliabang No.8, Perwira, Bekasi Utara, Kota Bks, Jawa Barat 17122', '1'),
	(2, 'PT.NSM', 'Jl. Halim Perdana Kusuma No.53, Jurumudi Baru, Benda, Kota Tangerang, Banten 15124', '1');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;

-- Dumping structure for table db_inventori.users
CREATE TABLE IF NOT EXISTS `users` (
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

-- Dumping data for table db_inventori.users: ~4 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `username`, `password`, `email`, `firstname`, `lastname`, `phone`, `gender`) VALUES
	(1, 'Super Administrator', '$2y$10$5SOfNqdanFSxjihC0iS/Pe8aESHHCuBEWT55bldK/pd4IbcuaHdJu', 'admin@admin.com', 'admin', 'sa', '65646546', 1),
	(13, 'M_Jailan', '$2y$10$5SOfNqdanFSxjihC0iS/Pe8aESHHCuBEWT55bldK/pd4IbcuaHdJu', 'muhammadjailani@gmail.com', 'Muhammad', 'Jailani', '089945628464', 1),
	(14, 'Vivi.R', '$2y$10$5SOfNqdanFSxjihC0iS/Pe8aESHHCuBEWT55bldK/pd4IbcuaHdJu', 'vivirosalina@gmail.com', 'vivi', 'Rosalina', '081272845274', 2),
	(15, 'Aditya', '$2y$10$5SOfNqdanFSxjihC0iS/Pe8aESHHCuBEWT55bldK/pd4IbcuaHdJu', 'adityapratama@gmail.com', 'Aditya', 'Pratama', '087643753573', 2);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table db_inventori.user_group
CREATE TABLE IF NOT EXISTS `user_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- Dumping data for table db_inventori.user_group: ~11 rows (approximately)
/*!40000 ALTER TABLE `user_group` DISABLE KEYS */;
INSERT INTO `user_group` (`id`, `user_id`, `group_id`) VALUES
	(1, 1, 1),
	(7, 6, 4),
	(8, 7, 4),
	(9, 8, 4),
	(10, 9, 5),
	(11, 10, 5),
	(12, 11, 5),
	(13, 12, 7),
	(14, 13, 11),
	(15, 14, 10),
	(16, 15, 12);
/*!40000 ALTER TABLE `user_group` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
