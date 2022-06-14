-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.24-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para tienda_deportiva_el_podio
DROP DATABASE IF EXISTS `tienda_deportiva_el_podio`;
CREATE DATABASE IF NOT EXISTS `tienda_deportiva_el_podio` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `tienda_deportiva_el_podio`;

-- Volcando estructura para tabla tienda_deportiva_el_podio.cumtomers
DROP TABLE IF EXISTS `cumtomers`;
CREATE TABLE IF NOT EXISTS `cumtomers` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name_customers` varchar(50) NOT NULL DEFAULT '0',
  `customers_premium` bit(1) NOT NULL DEFAULT b'1',
  `phone_customers` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla tienda_deportiva_el_podio.cumtomers: ~0 rows (aproximadamente)
DELETE FROM `cumtomers`;

-- Volcando estructura para tabla tienda_deportiva_el_podio.paymet_method
DROP TABLE IF EXISTS `paymet_method`;
CREATE TABLE IF NOT EXISTS `paymet_method` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cash` float NOT NULL DEFAULT 0,
  `check` float NOT NULL DEFAULT 0,
  `tdc_amex` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla tienda_deportiva_el_podio.paymet_method: ~0 rows (aproximadamente)
DELETE FROM `paymet_method`;

-- Volcando estructura para tabla tienda_deportiva_el_podio.products
DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name_product` varchar(50) NOT NULL DEFAULT '0',
  `measure_product` varchar(50) NOT NULL DEFAULT '0',
  `product_import` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla tienda_deportiva_el_podio.products: ~0 rows (aproximadamente)
DELETE FROM `products`;

-- Volcando estructura para tabla tienda_deportiva_el_podio.selling
DROP TABLE IF EXISTS `selling`;
CREATE TABLE IF NOT EXISTS `selling` (
  ` id` smallint(6) NOT NULL AUTO_INCREMENT,
  `sale_value` float NOT NULL DEFAULT 0,
  `nro_sale` float NOT NULL DEFAULT 0,
  `date` date NOT NULL,
  `id_customers` smallint(6) NOT NULL DEFAULT 0,
  `id_product` smallint(6) NOT NULL DEFAULT 0,
  `id_paymet_method` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (` id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla tienda_deportiva_el_podio.selling: ~0 rows (aproximadamente)
DELETE FROM `selling`;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
