-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versi server:                 10.4.20-MariaDB - mariadb.org binary distribution
-- OS Server:                    Win64
-- HeidiSQL Versi:               11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Membuang struktur basisdata untuk ffa
CREATE DATABASE IF NOT EXISTS `ffa` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `ffa`;

-- membuang struktur untuk table ffa.addon_account
CREATE TABLE IF NOT EXISTS `addon_account` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel ffa.addon_account: ~21 rows (lebih kurang)
/*!40000 ALTER TABLE `addon_account` DISABLE KEYS */;
REPLACE INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('bag_black_money', 'Bag Black Money ', 0);
REPLACE INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('bag_money', 'Bag Money ', 0);
REPLACE INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('caution', 'caution', 0);
REPLACE INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('property_black_money', 'property_black_money', 0);
REPLACE INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_ambulance', 'EMS', 1);
REPLACE INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_biker', 'biker', 1);
REPLACE INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_broker', 'broker', 1);
REPLACE INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_cardealer', 'Concessionnaire', 1);
REPLACE INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_cartel', 'cartel', 1);
REPLACE INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_gangsofmadellin', 'gangsofmadellin', 1);
REPLACE INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_mafia', 'mafia', 1);
REPLACE INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_mecano', 'Mechanic', 1);
REPLACE INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_mechanic', 'Mechanic', 1);
REPLACE INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_nightclub', 'Nightclub', 1);
REPLACE INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_pedagang', 'pedagang', 1);
REPLACE INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_police', 'Police', 1);
REPLACE INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_police_black_money', 'Police Black Money', 1);
REPLACE INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_realestateagent', 'Agent immobilier', 1);
REPLACE INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_samsat', 'samsat', 1);
REPLACE INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_yakuza', 'yakuza', 1);
REPLACE INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('vault_black_money', 'Money Vault', 0);
/*!40000 ALTER TABLE `addon_account` ENABLE KEYS */;

-- membuang struktur untuk table ffa.addon_account_data
CREATE TABLE IF NOT EXISTS `addon_account_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(100) DEFAULT NULL,
  `money` varchar(50) NOT NULL DEFAULT '',
  `owner` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `index_addon_account_data_account_name_owner` (`account_name`,`owner`) USING BTREE,
  KEY `index_addon_account_data_account_name` (`account_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1568 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel ffa.addon_account_data: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `addon_account_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `addon_account_data` ENABLE KEYS */;

-- membuang struktur untuk table ffa.addon_inventory
CREATE TABLE IF NOT EXISTS `addon_inventory` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel ffa.addon_inventory: ~20 rows (lebih kurang)
/*!40000 ALTER TABLE `addon_inventory` DISABLE KEYS */;
REPLACE INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('bag', 'Bag Inventory', 0);
REPLACE INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('housing', 'Housing', 0);
REPLACE INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('property', 'Propriété', 0);
REPLACE INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_ambulance', 'EMS', 1);
REPLACE INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_biker', 'biker', 1);
REPLACE INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_broker', 'broker', 1);
REPLACE INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_cardealer', 'Concesionnaire', 1);
REPLACE INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_cartel', 'cartel', 1);
REPLACE INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_gangsofmadellin', 'gangsofmadellin', 1);
REPLACE INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_mafia', 'mafia', 1);
REPLACE INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_mecano', 'Mechanic', 1);
REPLACE INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_mechanic', 'Mechanic', 1);
REPLACE INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_nightclub', 'Nightclub', 1);
REPLACE INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_nightclub_fridge', 'Nightclub (fridge)', 1);
REPLACE INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_pedagang', 'pedagang', 1);
REPLACE INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_police', 'Police', 1);
REPLACE INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_realestateagent', 'Agent immobilier', 1);
REPLACE INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_samsat', 'samsat', 1);
REPLACE INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_yakuza', 'yakuza', 1);
REPLACE INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('vault', 'Vault', 0);
/*!40000 ALTER TABLE `addon_inventory` ENABLE KEYS */;

-- membuang struktur untuk table ffa.addon_inventory_items
CREATE TABLE IF NOT EXISTS `addon_inventory_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_name` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_addon_inventory_items_inventory_name_name` (`inventory_name`,`name`),
  KEY `index_addon_inventory_items_inventory_name_name_owner` (`inventory_name`,`name`,`owner`),
  KEY `index_addon_inventory_inventory_name` (`inventory_name`)
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel ffa.addon_inventory_items: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `addon_inventory_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `addon_inventory_items` ENABLE KEYS */;

-- membuang struktur untuk table ffa.advanced_report
CREATE TABLE IF NOT EXISTS `advanced_report` (
  `name` varchar(50) DEFAULT NULL,
  `args` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel ffa.advanced_report: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `advanced_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `advanced_report` ENABLE KEYS */;

-- membuang struktur untuk table ffa.ammunition
CREATE TABLE IF NOT EXISTS `ammunition` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `owner` text NOT NULL,
  `hash` text NOT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  `attach` text NOT NULL DEFAULT '[]',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel ffa.ammunition: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `ammunition` DISABLE KEYS */;
/*!40000 ALTER TABLE `ammunition` ENABLE KEYS */;

-- membuang struktur untuk table ffa.arrests_list
CREATE TABLE IF NOT EXISTS `arrests_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `json_data` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel ffa.arrests_list: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `arrests_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `arrests_list` ENABLE KEYS */;

-- membuang struktur untuk table ffa.bank_transfer
CREATE TABLE IF NOT EXISTS `bank_transfer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `identifier` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8mb4;

-- Membuang data untuk tabel ffa.bank_transfer: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `bank_transfer` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank_transfer` ENABLE KEYS */;

-- membuang struktur untuk table ffa.billing
CREATE TABLE IF NOT EXISTS `billing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(40) NOT NULL,
  `sender` varchar(40) NOT NULL,
  `target_type` varchar(50) NOT NULL,
  `target` varchar(40) NOT NULL,
  `label` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=646 DEFAULT CHARSET=utf8mb4;

-- Membuang data untuk tabel ffa.billing: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `billing` DISABLE KEYS */;
/*!40000 ALTER TABLE `billing` ENABLE KEYS */;

-- membuang struktur untuk table ffa.bolos_list
CREATE TABLE IF NOT EXISTS `bolos_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `json_data` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel ffa.bolos_list: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `bolos_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `bolos_list` ENABLE KEYS */;

-- membuang struktur untuk table ffa.bought_houses
CREATE TABLE IF NOT EXISTS `bought_houses` (
  `houseid` int(50) NOT NULL,
  PRIMARY KEY (`houseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel ffa.bought_houses: ~1 rows (lebih kurang)
/*!40000 ALTER TABLE `bought_houses` DISABLE KEYS */;
REPLACE INTO `bought_houses` (`houseid`) VALUES
	(391);
/*!40000 ALTER TABLE `bought_houses` ENABLE KEYS */;

-- membuang struktur untuk table ffa.bwh_bans
CREATE TABLE IF NOT EXISTS `bwh_bans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `receiver` text NOT NULL,
  `sender` varchar(60) NOT NULL,
  `length` datetime DEFAULT NULL,
  `reason` text NOT NULL,
  `unbanned` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel ffa.bwh_bans: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `bwh_bans` DISABLE KEYS */;
/*!40000 ALTER TABLE `bwh_bans` ENABLE KEYS */;

-- membuang struktur untuk table ffa.bwh_identifiers
CREATE TABLE IF NOT EXISTS `bwh_identifiers` (
  `steam` varchar(60) NOT NULL,
  `license` varchar(60) NOT NULL,
  `ip` varchar(60) NOT NULL,
  `name` varchar(128) NOT NULL,
  `xbl` varchar(60) DEFAULT NULL,
  `live` varchar(60) DEFAULT NULL,
  `discord` varchar(60) DEFAULT NULL,
  `fivem` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`steam`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel ffa.bwh_identifiers: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `bwh_identifiers` DISABLE KEYS */;
/*!40000 ALTER TABLE `bwh_identifiers` ENABLE KEYS */;

-- membuang struktur untuk table ffa.bwh_warnings
CREATE TABLE IF NOT EXISTS `bwh_warnings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `receiver` text NOT NULL,
  `sender` varchar(60) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel ffa.bwh_warnings: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `bwh_warnings` DISABLE KEYS */;
/*!40000 ALTER TABLE `bwh_warnings` ENABLE KEYS */;

-- membuang struktur untuk table ffa.cardealer_vehicles
CREATE TABLE IF NOT EXISTS `cardealer_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=237 DEFAULT CHARSET=utf8mb4;

-- Membuang data untuk tabel ffa.cardealer_vehicles: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `cardealer_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `cardealer_vehicles` ENABLE KEYS */;

-- membuang struktur untuk table ffa.characters
CREATE TABLE IF NOT EXISTS `characters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `dateofbirth` varchar(255) NOT NULL,
  `sex` varchar(1) NOT NULL DEFAULT 'M',
  `height` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `identifier` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel ffa.characters: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `characters` DISABLE KEYS */;
/*!40000 ALTER TABLE `characters` ENABLE KEYS */;

-- membuang struktur untuk table ffa.communityservice
CREATE TABLE IF NOT EXISTS `communityservice` (
  `identifier` varchar(100) NOT NULL,
  `actions_remaining` int(10) NOT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Membuang data untuk tabel ffa.communityservice: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `communityservice` DISABLE KEYS */;
/*!40000 ALTER TABLE `communityservice` ENABLE KEYS */;

-- membuang struktur untuk table ffa.crew
CREATE TABLE IF NOT EXISTS `crew` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `identifier` varchar(100) DEFAULT NULL,
  `grade` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

-- Membuang data untuk tabel ffa.crew: ~10 rows (lebih kurang)
/*!40000 ALTER TABLE `crew` DISABLE KEYS */;
REPLACE INTO `crew` (`id`, `name`, `identifier`, `grade`) VALUES
	(3, 'ttyy', 'steam:11000010f35ae78', 'owner');
REPLACE INTO `crew` (`id`, `name`, `identifier`, `grade`) VALUES
	(4, 'ttyy', 'steam:110000143a18d08', 'user');
REPLACE INTO `crew` (`id`, `name`, `identifier`, `grade`) VALUES
	(5, 'ONTA', 'steam:1100001445bb3ec', 'owner');
REPLACE INTO `crew` (`id`, `name`, `identifier`, `grade`) VALUES
	(6, 'ONTA', 'steam:11000014639824a', 'user');
REPLACE INTO `crew` (`id`, `name`, `identifier`, `grade`) VALUES
	(7, 'MCG', 'steam:11000013c0dce06', 'owner');
REPLACE INTO `crew` (`id`, `name`, `identifier`, `grade`) VALUES
	(8, 'MCG', 'steam:11000013cc9404f', 'user');
REPLACE INTO `crew` (`id`, `name`, `identifier`, `grade`) VALUES
	(9, 'GamingxRoom', 'steam:11000013347abb5', 'owner');
REPLACE INTO `crew` (`id`, `name`, `identifier`, `grade`) VALUES
	(10, 'GamingxRoom', 'steam:110000143f9b178', 'user');
REPLACE INTO `crew` (`id`, `name`, `identifier`, `grade`) VALUES
	(11, 'GamingxRoom', 'steam:110000136df4de2', 'user');
REPLACE INTO `crew` (`id`, `name`, `identifier`, `grade`) VALUES
	(12, 'GamingxRoom', 'steam:110000139aba729', 'user');
/*!40000 ALTER TABLE `crew` ENABLE KEYS */;

-- membuang struktur untuk table ffa.crew_phone_bank
CREATE TABLE IF NOT EXISTS `crew_phone_bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT 1,
  `identifier` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Membuang data untuk tabel ffa.crew_phone_bank: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `crew_phone_bank` DISABLE KEYS */;
/*!40000 ALTER TABLE `crew_phone_bank` ENABLE KEYS */;

-- membuang struktur untuk table ffa.crew_phone_news
CREATE TABLE IF NOT EXISTS `crew_phone_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel ffa.crew_phone_news: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `crew_phone_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `crew_phone_news` ENABLE KEYS */;

-- membuang struktur untuk table ffa.daily_free
CREATE TABLE IF NOT EXISTS `daily_free` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) NOT NULL,
  `next_collect` int(15) NOT NULL,
  `times_collected` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

-- Membuang data untuk tabel ffa.daily_free: ~3 rows (lebih kurang)
/*!40000 ALTER TABLE `daily_free` DISABLE KEYS */;
REPLACE INTO `daily_free` (`id`, `identifier`, `next_collect`, `times_collected`) VALUES
	(7, 'steam:11000010f35ae78', 1628590258, 5);
REPLACE INTO `daily_free` (`id`, `identifier`, `next_collect`, `times_collected`) VALUES
	(8, 'steam:1100001362fe7e9', 1628317760, 1);
REPLACE INTO `daily_free` (`id`, `identifier`, `next_collect`, `times_collected`) VALUES
	(9, 'steam:1100001345f100a', 1628516144, 1);
/*!40000 ALTER TABLE `daily_free` ENABLE KEYS */;

-- membuang struktur untuk table ffa.darkshops
CREATE TABLE IF NOT EXISTS `darkshops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel ffa.darkshops: ~10 rows (lebih kurang)
/*!40000 ALTER TABLE `darkshops` DISABLE KEYS */;
REPLACE INTO `darkshops` (`id`, `name`, `item`, `price`) VALUES
	(31, 'ToolsShop', 'camera', 3000);
REPLACE INTO `darkshops` (`id`, `name`, `item`, `price`) VALUES
	(32, 'ToolsShop', 'fixtool', 6000);
REPLACE INTO `darkshops` (`id`, `name`, `item`, `price`) VALUES
	(33, 'ToolsShop', 'laptop', 4000);
REPLACE INTO `darkshops` (`id`, `name`, `item`, `price`) VALUES
	(34, 'ToolsShop', 'key', 3000);
REPLACE INTO `darkshops` (`id`, `name`, `item`, `price`) VALUES
	(35, 'ToolsShop', 'iron', 3000);
REPLACE INTO `darkshops` (`id`, `name`, `item`, `price`) VALUES
	(36, 'ToolsShop', 'gold_o', 5000);
REPLACE INTO `darkshops` (`id`, `name`, `item`, `price`) VALUES
	(37, 'ToolsShop', 'copper', 3000);
REPLACE INTO `darkshops` (`id`, `name`, `item`, `price`) VALUES
	(38, 'ToolsShop', 'carokit', 3000);
REPLACE INTO `darkshops` (`id`, `name`, `item`, `price`) VALUES
	(39, 'ToolsShop', 'advancedlockpick', 3000);
REPLACE INTO `darkshops` (`id`, `name`, `item`, `price`) VALUES
	(40, 'ToolsShop', 'gunpowder', 3000);
/*!40000 ALTER TABLE `darkshops` ENABLE KEYS */;

-- membuang struktur untuk table ffa.datastore
CREATE TABLE IF NOT EXISTS `datastore` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel ffa.datastore: ~23 rows (lebih kurang)
/*!40000 ALTER TABLE `datastore` DISABLE KEYS */;
REPLACE INTO `datastore` (`name`, `label`, `shared`) VALUES
	('bag', 'Bag Datastore', 0);
REPLACE INTO `datastore` (`name`, `label`, `shared`) VALUES
	('housing', 'Housing', 0);
REPLACE INTO `datastore` (`name`, `label`, `shared`) VALUES
	('property', 'Outfits', 0);
REPLACE INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_ambulance', 'EMS', 1);
REPLACE INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_ballas', 'Ballas', 1);
REPLACE INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_biker', 'biker', 1);
REPLACE INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_broker', 'broker', 1);
REPLACE INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_cartel', 'cartel', 1);
REPLACE INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_gangsofmadellin', 'gangsofmadellin', 1);
REPLACE INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_mafia', 'Mafia', 1);
REPLACE INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_mechanic', 'Mechanic', 1);
REPLACE INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_muckyguns', 'Mucky Guns', 1);
REPLACE INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_nightclub', 'Nightclub', 1);
REPLACE INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_pedagang', 'pedagang', 1);
REPLACE INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_police', 'Police', 1);
REPLACE INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_realestateagent', 'Agent immobilier', 1);
REPLACE INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_samsat', 'Samsat', 1);
REPLACE INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_yakuza', 'yakuza', 1);
REPLACE INTO `datastore` (`name`, `label`, `shared`) VALUES
	('user_ears', 'Ears', 0);
REPLACE INTO `datastore` (`name`, `label`, `shared`) VALUES
	('user_glasses', 'Glasses', 0);
REPLACE INTO `datastore` (`name`, `label`, `shared`) VALUES
	('user_helmet', 'Helmet', 0);
REPLACE INTO `datastore` (`name`, `label`, `shared`) VALUES
	('user_mask', 'Mask', 0);
REPLACE INTO `datastore` (`name`, `label`, `shared`) VALUES
	('vault', 'Vault', 0);
/*!40000 ALTER TABLE `datastore` ENABLE KEYS */;

-- membuang struktur untuk table ffa.datastore_data
CREATE TABLE IF NOT EXISTS `datastore_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_datastore_data_name_owner` (`name`,`owner`),
  KEY `index_datastore_data_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2662 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel ffa.datastore_data: ~374 rows (lebih kurang)
/*!40000 ALTER TABLE `datastore_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `datastore_data` ENABLE KEYS */;

-- membuang struktur untuk table ffa.es_stockmarket
CREATE TABLE IF NOT EXISTS `es_stockmarket` (
  `stock` tinytext DEFAULT NULL,
  `owner` text DEFAULT NULL,
  `amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel ffa.es_stockmarket: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `es_stockmarket` DISABLE KEYS */;
/*!40000 ALTER TABLE `es_stockmarket` ENABLE KEYS */;

-- membuang struktur untuk table ffa.fine_types
CREATE TABLE IF NOT EXISTS `fine_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4;

-- Membuang data untuk tabel ffa.fine_types: ~45 rows (lebih kurang)
/*!40000 ALTER TABLE `fine_types` DISABLE KEYS */;
REPLACE INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(1, 'Penyalahgunaan klakson', 3000, 0);
REPLACE INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(2, 'Menyeberangi Garis kontinu secara ilegal', 4000, 0);
REPLACE INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(3, 'Mengemudi di sisi jalan yang salah', 2500, 0);
REPLACE INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(4, 'Putar Balik Ilegal', 2500, 0);
REPLACE INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(5, 'Mengemudi Secara Ilegal Off-road', 1700, 0);
REPLACE INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(6, 'Mengemudi Secara Ilegal Off-road', 3000, 0);
REPLACE INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(7, 'Menghentikan Kendaraan Secara Ilegal', 1500, 0);
REPLACE INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(8, 'Parkir Ilegal', 1000, 0);
REPLACE INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(9, 'Gagal Mengalah ke kanan', 1000, 0);
REPLACE INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(10, 'Kegagalan untuk mematuhi Informasi Kendaraan', 9000, 0);
REPLACE INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(11, 'Gagal berhenti di Tanda Berhenti', 1500, 0);
REPLACE INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(12, 'Gagal berhenti di Lampu Merah', 3000, 0);
REPLACE INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(13, 'Passing Ilegal', 5000, 0);
REPLACE INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(14, 'Mengendarai Kendaraan ilegal', 60000, 0);
REPLACE INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(15, 'Mengemudi tanpa Lisensi', 10000, 0);
REPLACE INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(16, 'Tabrak lari', 20000, 0);
REPLACE INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(17, 'Melebihi Kecepatan Lebih dari <5 mph', 2000, 0);
REPLACE INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(18, 'Melebihi Kecepatan Lebih Dari 5-15 mph', 2500, 0);
REPLACE INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(19, 'Melebihi Kecepatan Lebih Dari 15-30 mph', 3000, 0);
REPLACE INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(20, 'Melebihi Kecepatan Lebih dari> 30 mph', 3500, 0);
REPLACE INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(21, 'Menghambat arus lalu lintas', 1400, 1);
REPLACE INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(22, 'Toxic Di jalan umum', 6000, 1);
REPLACE INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(23, 'Melakukan pelanggaran', 4000, 1);
REPLACE INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(24, 'Obstruksi Keadilan', 6000, 1);
REPLACE INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(25, 'Penghinaan terhadap Warga Sipil', 6000, 1);
REPLACE INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(26, 'Tidak menghormati Petugas', 6000, 1);
REPLACE INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(27, 'Ancaman Verbal terhadap Warga Sipil', 6000, 1);
REPLACE INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(28, 'Ancaman Verbal terhadap Petugas', 6000, 1);
REPLACE INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(29, 'Memberikan Informasi Palsu', 5000, 1);
REPLACE INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(30, 'Percobaan Korupsi', 6000, 1);
REPLACE INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(31, 'Mengacungkan senjata di Batas kota', 6000, 2);
REPLACE INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(32, 'Mengacungkan Senjata Mematikan di Batas kota', 8000, 2);
REPLACE INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(33, 'Tidak Mempunyai Licensi Senajata', 40000, 2);
REPLACE INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(34, 'Memiliki Senjata Ilegal', 20000, 2);
REPLACE INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(35, 'Memiliki Alat Pencuri', 3000, 2);
REPLACE INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(36, 'Melakukan Pembegalan', 15000, 2);
REPLACE INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(37, 'Jual Beli Barang Ilegal', 5000, 2);
REPLACE INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(38, 'penyandraan warga sipil', 10000, 2);
REPLACE INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(39, 'memiliki barang ilegal', 5000, 2);
REPLACE INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(40, 'Penculikan Terhadap Petugas', 30000, 2);
REPLACE INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(41, 'penyandraan kepala PNS', 50000, 2);
REPLACE INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(43, 'Perampokan Toko', 30000, 2);
REPLACE INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(44, 'Perampokan Bank', 70000, 2);
REPLACE INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(45, 'Perampokan Jawel', 45000, 3);
REPLACE INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(52, 'Memberikan Informasi Palsu', 6000, 2);
/*!40000 ALTER TABLE `fine_types` ENABLE KEYS */;

-- membuang struktur untuk table ffa.fine_types_biker
CREATE TABLE IF NOT EXISTS `fine_types_biker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel ffa.fine_types_biker: ~7 rows (lebih kurang)
/*!40000 ALTER TABLE `fine_types_biker` DISABLE KEYS */;
REPLACE INTO `fine_types_biker` (`id`, `label`, `amount`, `category`) VALUES
	(1, 'Raket', 3000, 0);
REPLACE INTO `fine_types_biker` (`id`, `label`, `amount`, `category`) VALUES
	(2, 'Raket', 5000, 0);
REPLACE INTO `fine_types_biker` (`id`, `label`, `amount`, `category`) VALUES
	(3, 'Raket', 10000, 1);
REPLACE INTO `fine_types_biker` (`id`, `label`, `amount`, `category`) VALUES
	(4, 'Raket', 20000, 1);
REPLACE INTO `fine_types_biker` (`id`, `label`, `amount`, `category`) VALUES
	(5, 'Raket', 50000, 2);
REPLACE INTO `fine_types_biker` (`id`, `label`, `amount`, `category`) VALUES
	(6, 'Raket', 150000, 3);
REPLACE INTO `fine_types_biker` (`id`, `label`, `amount`, `category`) VALUES
	(7, 'Raket', 350000, 3);
/*!40000 ALTER TABLE `fine_types_biker` ENABLE KEYS */;

-- membuang struktur untuk table ffa.fine_types_cartel
CREATE TABLE IF NOT EXISTS `fine_types_cartel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel ffa.fine_types_cartel: ~7 rows (lebih kurang)
/*!40000 ALTER TABLE `fine_types_cartel` DISABLE KEYS */;
REPLACE INTO `fine_types_cartel` (`id`, `label`, `amount`, `category`) VALUES
	(1, 'Raket', 3000, 0);
REPLACE INTO `fine_types_cartel` (`id`, `label`, `amount`, `category`) VALUES
	(2, 'Raket', 5000, 0);
REPLACE INTO `fine_types_cartel` (`id`, `label`, `amount`, `category`) VALUES
	(3, 'Raket', 10000, 1);
REPLACE INTO `fine_types_cartel` (`id`, `label`, `amount`, `category`) VALUES
	(4, 'Raket', 20000, 1);
REPLACE INTO `fine_types_cartel` (`id`, `label`, `amount`, `category`) VALUES
	(5, 'Raket', 50000, 2);
REPLACE INTO `fine_types_cartel` (`id`, `label`, `amount`, `category`) VALUES
	(6, 'Raket', 150000, 3);
REPLACE INTO `fine_types_cartel` (`id`, `label`, `amount`, `category`) VALUES
	(7, 'Raket', 350000, 3);
/*!40000 ALTER TABLE `fine_types_cartel` ENABLE KEYS */;

-- membuang struktur untuk table ffa.fine_types_gangsofmadellin
CREATE TABLE IF NOT EXISTS `fine_types_gangsofmadellin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel ffa.fine_types_gangsofmadellin: ~7 rows (lebih kurang)
/*!40000 ALTER TABLE `fine_types_gangsofmadellin` DISABLE KEYS */;
REPLACE INTO `fine_types_gangsofmadellin` (`id`, `label`, `amount`, `category`) VALUES
	(1, 'Raket', 3000, 0);
REPLACE INTO `fine_types_gangsofmadellin` (`id`, `label`, `amount`, `category`) VALUES
	(2, 'Raket', 5000, 0);
REPLACE INTO `fine_types_gangsofmadellin` (`id`, `label`, `amount`, `category`) VALUES
	(3, 'Raket', 10000, 1);
REPLACE INTO `fine_types_gangsofmadellin` (`id`, `label`, `amount`, `category`) VALUES
	(4, 'Raket', 20000, 1);
REPLACE INTO `fine_types_gangsofmadellin` (`id`, `label`, `amount`, `category`) VALUES
	(5, 'Raket', 50000, 2);
REPLACE INTO `fine_types_gangsofmadellin` (`id`, `label`, `amount`, `category`) VALUES
	(6, 'Raket', 150000, 3);
REPLACE INTO `fine_types_gangsofmadellin` (`id`, `label`, `amount`, `category`) VALUES
	(7, 'Raket', 350000, 3);
/*!40000 ALTER TABLE `fine_types_gangsofmadellin` ENABLE KEYS */;

-- membuang struktur untuk table ffa.fine_types_mafia
CREATE TABLE IF NOT EXISTS `fine_types_mafia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel ffa.fine_types_mafia: ~7 rows (lebih kurang)
/*!40000 ALTER TABLE `fine_types_mafia` DISABLE KEYS */;
REPLACE INTO `fine_types_mafia` (`id`, `label`, `amount`, `category`) VALUES
	(1, 'Raket', 3000, 0);
REPLACE INTO `fine_types_mafia` (`id`, `label`, `amount`, `category`) VALUES
	(2, 'Raket', 5000, 0);
REPLACE INTO `fine_types_mafia` (`id`, `label`, `amount`, `category`) VALUES
	(3, 'Raket', 10000, 1);
REPLACE INTO `fine_types_mafia` (`id`, `label`, `amount`, `category`) VALUES
	(4, 'Raket', 20000, 1);
REPLACE INTO `fine_types_mafia` (`id`, `label`, `amount`, `category`) VALUES
	(5, 'Raket', 50000, 2);
REPLACE INTO `fine_types_mafia` (`id`, `label`, `amount`, `category`) VALUES
	(6, 'Raket', 150000, 3);
REPLACE INTO `fine_types_mafia` (`id`, `label`, `amount`, `category`) VALUES
	(7, 'Raket', 350000, 3);
/*!40000 ALTER TABLE `fine_types_mafia` ENABLE KEYS */;

-- membuang struktur untuk table ffa.glovebox_inventory
CREATE TABLE IF NOT EXISTS `glovebox_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(8) NOT NULL,
  `data` text NOT NULL,
  `owned` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `plate` (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Membuang data untuk tabel ffa.glovebox_inventory: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `glovebox_inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `glovebox_inventory` ENABLE KEYS */;

-- membuang struktur untuk table ffa.hungerthirst
CREATE TABLE IF NOT EXISTS `hungerthirst` (
  `idSteam` varchar(255) NOT NULL,
  `hunger` int(11) NOT NULL DEFAULT 100,
  `thirst` int(11) NOT NULL DEFAULT 100
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel ffa.hungerthirst: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `hungerthirst` DISABLE KEYS */;
/*!40000 ALTER TABLE `hungerthirst` ENABLE KEYS */;

-- membuang struktur untuk table ffa.h_impounded_vehicles
CREATE TABLE IF NOT EXISTS `h_impounded_vehicles` (
  `plate` varchar(12) NOT NULL,
  `officer` varchar(255) DEFAULT NULL,
  `mechanic` varchar(255) DEFAULT NULL,
  `releasedate` varchar(25) DEFAULT NULL,
  `fee` double NOT NULL,
  `reason` text NOT NULL,
  `notes` text DEFAULT NULL,
  `vehicle` text NOT NULL,
  `identifier` varchar(30) NOT NULL,
  `hold_o` tinyint(1) DEFAULT 0,
  `hold_m` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel ffa.h_impounded_vehicles: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `h_impounded_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `h_impounded_vehicles` ENABLE KEYS */;

-- membuang struktur untuk table ffa.impounded_vehicles
CREATE TABLE IF NOT EXISTS `impounded_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(12) DEFAULT NULL,
  `vehicle` text DEFAULT NULL,
  `owner` varchar(250) DEFAULT NULL,
  `impounded_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `owner` (`owner`),
  KEY `plate` (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel ffa.impounded_vehicles: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `impounded_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `impounded_vehicles` ENABLE KEYS */;

-- membuang struktur untuk table ffa.insto_accounts
CREATE TABLE IF NOT EXISTS `insto_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `forename` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `surname` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `username` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `password` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `avatar_url` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Membuang data untuk tabel ffa.insto_accounts: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `insto_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `insto_accounts` ENABLE KEYS */;

-- membuang struktur untuk table ffa.insto_instas
CREATE TABLE IF NOT EXISTS `insto_instas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filters` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `FK_insto_instas_insto_accounts` (`authorId`),
  CONSTRAINT `FK_insto_instas_insto_accounts` FOREIGN KEY (`authorId`) REFERENCES `insto_accounts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel ffa.insto_instas: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `insto_instas` DISABLE KEYS */;
/*!40000 ALTER TABLE `insto_instas` ENABLE KEYS */;

-- membuang struktur untuk table ffa.insto_likes
CREATE TABLE IF NOT EXISTS `insto_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) DEFAULT NULL,
  `inapId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_insto_likes_insto_accounts` (`authorId`),
  KEY `FK_insto_likes_insto_instas` (`inapId`),
  CONSTRAINT `FK_insto_likes_insto_accounts` FOREIGN KEY (`authorId`) REFERENCES `insto_accounts` (`id`),
  CONSTRAINT `FK_insto_likes_insto_instas` FOREIGN KEY (`inapId`) REFERENCES `insto_instas` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Membuang data untuk tabel ffa.insto_likes: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `insto_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `insto_likes` ENABLE KEYS */;

-- membuang struktur untuk table ffa.inventory_trunk
CREATE TABLE IF NOT EXISTS `inventory_trunk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(8) NOT NULL,
  `data` text NOT NULL,
  `owned` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `plate` (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel ffa.inventory_trunk: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `inventory_trunk` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventory_trunk` ENABLE KEYS */;

-- membuang struktur untuk table ffa.items
CREATE TABLE IF NOT EXISTS `items` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `weight` int(11) NOT NULL DEFAULT 1,
  `limit` int(11) NOT NULL DEFAULT -1,
  `rare` int(11) NOT NULL DEFAULT 0,
  `can_remove` int(11) NOT NULL DEFAULT 1,
  `price` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Membuang data untuk tabel ffa.items: ~276 rows (lebih kurang)
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('advancedlockpick', 'Multi-pick', 1, 5, 0, 0, 5000);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('advrepairkit', 'Adv Repair Kit', 1, 8, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('airbag', 'Airbag', 1, 6, 0, 0, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('alive_chicken', 'Living chicken', 1, 20, 0, 0, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('aluminium', 'Aluminium', 1, 50, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('ammunition_fireextinguisher', 'Fire Extinguisher Fuel', 10, -1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('ammunition_pistol', 'Pistol Ammo', 10, -1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('ammunition_pistol_large', 'Pistol Ammo Large', 10, -1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('ammunition_rifle', 'Rifle Ammo', 10, -1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('ammunition_rifle_large', 'Rifle Ammo Large', 10, -1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('ammunition_shotgun', 'Shotgun Shells', 10, -1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('ammunition_shotgun_large', 'Shotgun Shells Large', 10, -1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('ammunition_smg', 'SMG Ammo', 10, -1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('ammunition_smg_large', 'SMG Ammo Large', 10, -1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('ammunition_snp', 'Sniper Ammo', 10, -1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('ammunition_snp_large', 'Sniper Ammo Large', 10, -1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('arAmmo', 'Assault Rifle Ammo Box', 1, 5, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('bag', 'Bag', 1, -1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('banana', 'Banana', 1, 1, 0, 0, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('bandage', 'bandage', 1, 15, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('battery', 'Car Battery', 1, 5, 0, 0, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('beer', 'Beer', 1, 7, 0, 1, 12000);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('binoculars', 'Binoculars', 1, 1, 0, 0, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('black_money', 'Black Money', 99999999, 1, 0, 0, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('blindfold', 'Penutup Mata', 1, 1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('blowpipe', 'Blowtorch', 1, 10, 0, 0, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('blowtorch', 'Blowtorch', 1, 1, 0, 0, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('bolcacahuetes', 'Bowl of peanuts', 1, 5, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('bolchips', 'Bowl of crisps', 1, 5, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('bolnoixcajou', 'Bowl of cashew nuts', 1, 5, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('bolpistache', 'Bowl of pistachios', 1, 5, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('bones', 'tulangharam', 1, -1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('boxflare', 'Ammo Box Flare', 1, -1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('boxmg', 'Ammo Box MG', 1, -1, 0, 1, 400);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('boxpistol', 'Ammo Box Pistol', 1, -1, 0, 1, 200);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('boxrifle', 'Ammo Box Rifle', 1, -1, 0, 1, 700);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('boxshot', 'Ammo Box Shotgun', 1, -1, 0, 1, 250);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('boxsmg', 'Ammo Box SMG', 1, -1, 0, 1, 300);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('boxsniper', 'Ammo Box Sniper', 1, -1, 0, 1, 3500);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('bread', 'Roti', 1, 20, 0, 1, 1300);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('bulletproof', 'Armor', 1, 1, 0, 1, 5000);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('c4_bank', 'C4', 1, 1, 0, 0, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('cabe', 'Cabe', 1, 20, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('camera', 'Gopro 8', 1, 5, 0, 1, 1000);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('cannabinoid', 'Chemicals', 1, 15, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('cannabis', 'Cannabis', 1, 40, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('carjack', 'Car Jack', 1, 3, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('carokit', 'Body Kit', 1, 10, 0, 1, 4000);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('carotool', 'Tools', 1, 10, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('carteidentite', 'Identity Card', 1, -1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('car_door', 'Car Door', 1, 3, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('car_hood', 'Car Hood', 1, 3, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('car_trunk', 'Car Trunk', 1, 3, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('car_wheel', 'Car Wheel', 1, 3, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('cburger', 'Cheese Burger', 1, 3, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('chemicals', 'Chemicals', 1, 40, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('chemicalslisence', 'Chemicals license', 1, 1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('cigarette', 'Cigarette', 1, 1, 0, 1, 3000);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('clip', 'Weapon Clip', 1, 5, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('clothe', 'Clothes', 1, 40, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('cocaine_cut', 'Cut Cocaine', 1, -1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('cocaine_packaged', 'Packaged Cocaine', 1, -1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('cocaine_uncut', 'Uncut Cocaine', 1, -1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('coca_leaf', 'Coca Leaf', 1, 40, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('coffees', 'Hot Coffee', 1, 4, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('coke', 'Coke', 1, 40, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('coke10g', 'Cocaine (10G)', 1, 50, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('coke1g', 'Cocaine (1G)', 1, 50, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('cokebag', 'Cokebag (2G)', 100, -1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('cokebrick', 'Cocaine Brick (100G)', 1, 20, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('cokekey', 'Key B', 1, -1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('coklat', 'Biji Coklat', 1, 20, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('cola', 'Can of Cola', 1, 4, 0, 1, 4000);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('contract', 'Jual Beli Kendaraan', 1, 5, 0, 1, 12000);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('copper', 'Copper', 1, 55, 0, 1, 1000);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('crack', 'Crack', 1, 15, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('cutted_wood', 'Cut wood', 1, 30, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('cut_money', 'Counterfeit Cash - Cut', 1, -1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('darknet', 'Dark Net', 1, -1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('dcburger', 'Double Cheese Burger', 1, 2, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('defib', 'Defib', 1, -1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('diamond', 'Diamond', 1, 35, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('dia_box', 'Diamond Box', 2, -1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('donut', 'Donat', 1, 10, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('donut2', 'Glazed Donut', 1, 20, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('drill', 'Drill', 1, -1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('drpepper', 'Dr. Pepper', 1, 5, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('drugbags', 'Bags', 1, 80, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('drugItem', 'Black USB-C', 1, 2, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('electric_scrap', 'Electric Scrap', 1, 50, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('electronics', 'Chip Elektronik', 1, 20, 0, 1, 5000);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('energy', 'Energy Drink', 1, 5, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('essence', 'Gas', 1, 50, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('estebu', 'ES Tebu', 1, 10, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('fabric', 'Fabric', 1, 80, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('firework', 'Firework', 1, -1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('firstaidkit', 'First Aid Kit', 1, -1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('fish', 'Fish', 1, 100, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('fishbait', 'Fish Bait', 1, 8, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('fishingrod', 'Fishing rod', 1, 3, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('fixkit', 'Repair Kit', 1, 10, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('fixtool', 'Repair Tools', 1, 10, 0, 1, 6000);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('flashlight', 'Lampe', 1, -1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('fountain', 'Fountain Firework', 1, 5, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('fries', 'Small Fries', 1, 4, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('fries2', 'Large Fries', 1, 5, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('garam', 'Garam', 1, 40, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('gazbottle', 'Gas Bottle', 1, 10, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('glass', 'Glass', 1, 50, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('goldNecklace', 'GoldNecklace', 1, 5, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('gold_bar', 'Gold Bar', 2, -1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('gold_o', 'Scrap gold', 1, 25, 0, 1, 3000);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('gold_t', 'Emas', 1, 5, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('golem', 'Golem', 1, 5, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('grapperaisin', 'Bunch of grapes', 1, 5, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('grip', 'Poignée', 1, -1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('gunpowder', 'Gun Powder', 1, 20, 0, 1, 5000);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('hackerDevice', 'Hacker Device', 1, 25, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('handcuffkey', 'Handcuff Keys', 1, -1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('handcuffs', 'handcuffs', 1, 1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('HeavyArmor', 'Heavy Body Armor', 1, 3, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('heroin', 'Heroin', 1, 40, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('highradio', 'Aftermarket Radio', 1, 6, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('highrim', 'Nice Rim', 1, 2, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('hotdog', 'Hotdog', 1, 5, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('hqscale', 'High Quality Scale', 1, 1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('hydrochloric_acid', 'HydroChloric Acid', 1, 15, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('ice', 'Ice', 1, 5, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('icetea', 'Ice Tea', 1, 5, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('id_card', 'ID Card', 1, -1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('iphone', 'iPhone X', 1, 5, 0, 1, 15000);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('iron', 'Iron', 1, 55, 0, 1, 2000);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('jager', 'Jägermeister', 1, 5, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('jagerbomb', 'Jägerbomb', 1, 5, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('jagercerbere', 'Jäger Cerberus', 1, 3, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('jewels', 'Jewels', 1, 150, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('joint', 'Joint', 1, 1, 0, 1, 3000);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('joint2g', 'Joint (2G)', 1, 50, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('jusfruit', 'Fruit juice', 1, 5, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('key', 'key', 1, 1, 0, 1, 3000);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('keycard', 'Keycard', 1, 1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('kopi', 'Biji Kopi', 1, 40, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('kopihitam', 'Kopi Hitam', 1, -1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('laptop', 'Laptop', 1, 5, 0, 1, 4000);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('laptop_h', 'Hacker Laptop', 1, -1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('leather', 'Leather', 1, 1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('licenseplate', 'License plate', 1, 1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('limonade', 'Lemonade', 1, 5, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('lockpick', 'Lockpick', 1, -1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('lowradio', 'Stock Radio', 1, 8, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('lsa', 'LSA', 1, 100, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('lsd', 'LSD', 1, 100, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('makananVIP', 'FoodVIP', 1, 3, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('marijuana', 'Marijuana', 1, 40, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('martini', 'White Martini', 1, 5, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('MedArmor', 'Medium Body Armor', 1, 3, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('medikit', 'Medkit', 1, 15, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('menthe', 'Mint leaf', 1, 10, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('meth', 'Meth', 1, 30, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('meth10g', 'Meth (10G)', 1, 50, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('meth1g', 'Meth (1G)', 1, 50, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('methbag', 'Methbag (2G)', 100, -1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('methbrick', 'Meth Brick (100G)', 1, 20, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('methkey', 'Key A', 1, -1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('meth_packaged', 'Packaged Meth', 1, -1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('meth_raw', 'Raw Meth', 1, -1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('metreshooter', 'Shooter meter', 1, 3, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('mgAmmo', 'Maching Gun Ammo Box', 1, 5, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('mixapero', 'Aperitif Mix', 1, 3, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('mleko', 'Milk', 1, 50, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('mojito', 'Mojito', 1, 5, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('money', 'Money', 9999999, 1, 0, 0, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('moneywash', 'MoneyWash License', 1, 1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('monster', 'Monster', 1, 15, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('Motelkey1', 'Motelkey1', 1, 1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('Motelkey10', 'Motelkey10', 1, 1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('Motelkey11', 'Motelkey11', 1, 1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('Motelkey12', 'Motelkey12', 1, 1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('Motelkey13', 'Motelkey13', 1, 1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('Motelkey14', 'Motelkey14', 1, 1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('Motelkey2', 'Motelkey2', 1, 1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('Motelkey3', 'Motelkey3', 1, 1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('Motelkey4', 'Motelkey4', 1, 1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('Motelkey5', 'Motelkey5', 1, 1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('Motelkey6', 'Motelkey6', 1, 1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('Motelkey7', 'Motelkey7', 1, 1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('Motelkey8', 'Motelkey8', 1, 1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('Motelkey9', 'Motelkey9', 1, 1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('nasibungkus', 'Nasi Bungkus', 1, 20, 0, 1, 1000);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('nasigoreng', 'Nasi Goreng', 1, 20, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('net_cracker', 'Net Cracker', 1, 2, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('nitro', 'nitro', 1, -1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('odading', 'Odading Mang Oleh', 1, 20, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('oxygenmask', 'Oxygen Mask', 1, -1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('oxygen_mask', 'Oxygen Mask', 1, 2, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('packaged_chicken', 'Chicken fillet', 1, 100, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('packaged_plank', 'Packaged wood', 1, 100, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('padi', 'Padi', 1, 20, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('pAmmo', 'Pistol Ammo Box', 1, 5, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('petrol', 'Oil', 1, 24, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('petrol_raffin', 'Processed oil', 1, 24, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('phone', 'Handphone', 1, 1, 0, 1, 15000);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('picnic', 'Picknick kit', 1, 1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('plastic', 'Plastic', 1, 50, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('platinum', 'Platinum', 1, 45, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('poppyresin', 'Poppy Resin', 1, 40, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('radio', 'Radio', 1, 2, 0, 1, 10000);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('raspberry', 'Raspberry', 1, 1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('redgull', 'Redgull', 1, 4, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('repairkit', 'Repair Kit', 1, -1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('rhum', 'Rhum', 1, 5, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('rhumcoca', 'Rhum-coke', 1, 5, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('rhumfruit', 'Rhum-fruit juice', 1, 5, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('ring', 'Ring', 1, 5, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('rolex', 'Daytona rolex', 1, 5, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('rolpaper', 'Rolling Paper', 1, 80, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('rose', 'Bunga ros', 1, 1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('rubber', 'Rubber', 1, 50, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('samsungS10', 'Samsung S10', 1, 5, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('sandwich', 'Macka', 1, 5, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('saucisson', 'Sausage', 1, 5, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('scrap_metal', 'Scrap Metal', 1, 50, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('sgAmmo', 'Shotgun Ammo Box', 1, 5, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('shark', 'Shark', 1, -1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('shotburst', 'Shotburst Firework', 1, 5, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('silencieux', 'Silencieux', 1, -1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('SimA', 'SimMobil', 1, 1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('SimB', 'SimTruk', 1, 1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('SimC', 'SimMotor', 1, 1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('slaughtered_chicken', 'Slaughtered chicken', 1, 20, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('SmallArmor', 'Light Body Armor', 1, 3, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('soda', 'Soda', 1, 5, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('sodium_hydroxide', 'Sodium Hydroxide', 1, 15, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('sorted_money', 'Counterfeit Cash - Sorted', 1, -1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('spice', 'Spice', 1, 30, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('sprite', 'Bottle of 7UP', 1, 4, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('starburst', 'Starburst Firework', 1, 5, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('steel', 'Steel', 1, 50, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('stockrim', 'Stock Rim', 1, 3, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('stone', 'Stone', 1, 10, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('sulfuric_acid', 'Sulfuric Acid', 1, 15, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('supressor', 'Suppressor', 2, -1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('susucoklat', 'Susu Coklat', 1, 20, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('taco', 'Taco', 1, 5, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('taco2', 'Deluxe Taco', 1, 5, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('taco3', 'Steves Special Taco', 1, 5, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('taco4', 'Steves Spicy Taco', 1, 5, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('tebu', 'Tebu', 1, 20, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('teh', 'Biji teh', 1, 20, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('tehkotak', 'Teh Kotak', 1, 20, 0, 1, 1000);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('tehsari', 'Teh Sariwangi', 1, 20, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('teqpaf', 'Teq\'paf', 1, 5, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('tequila', 'Tequila', 1, 5, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('testeori', 'Code de la route', 1, 1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('thermal_charge', 'Thermal Charge', 1, -1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('thermite', 'Thermite Bomb', 1, 5, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('thionyl_chloride', 'Thionyl Chloride', 1, 100, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('tirekit', 'Tire Kit', 1, -1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('trailburst', 'Trailburst Firework', 1, 5, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('tuning_laptop', 'Tuner Laptop', 1, 2, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('turbo', 'Turbo', 1, 5, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('turtle', 'Sea Turtle', 1, 3, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('turtlebait', 'Turtle Bait', 1, 8, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('umbrella', 'Payung', 1, 2, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('vehgps', 'Vehicle GPS', 1, -1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('vodka', 'Vodka', 1, 7, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('vodkaenergy', 'Vodka-energy', 1, 5, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('vodkafruit', 'Vodka-fruit juice', 1, 5, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('washed_stone', 'Washed stone', 1, 10, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('water', 'Minuman', 1, 20, 0, 1, 1300);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('weakit', 'Weapon Kit', 1, -1, 0, 1, 0);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('whisky', 'Whisky', 1, 5, 0, 1, 5000);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('whiskycoca', 'Whisky-coke', 1, 5, 0, 1, 5000);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('wood', 'Wood', 1, 25, 0, 1, 5000);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('wool', 'Wool', 1, 40, 0, 1, 5000);
REPLACE INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`, `price`) VALUES
	('yusuf', 'Skin de luxe', 1, -1, 0, 1, 0);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;

-- membuang struktur untuk table ffa.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Membuang data untuk tabel ffa.jobs: ~4 rows (lebih kurang)
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
REPLACE INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('bronze', 'Bronze', 0);
REPLACE INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('gold', 'Gold', 0);
REPLACE INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('silver', 'Silver', 0);
REPLACE INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('unemployed', 'Warga', 0);
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;

-- membuang struktur untuk table ffa.job_grades
CREATE TABLE IF NOT EXISTS `job_grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(50) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5638 DEFAULT CHARSET=utf8mb4;

-- Membuang data untuk tabel ffa.job_grades: ~4 rows (lebih kurang)
/*!40000 ALTER TABLE `job_grades` DISABLE KEYS */;
REPLACE INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(1, 'unemployed', 0, 'unemployed', 'Warga', 10, '{}', '{}');
REPLACE INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(2, 'silver', 0, 'silver', 'Silver', 100, '{}', '{}');
REPLACE INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(3, 'bronze', 0, 'bronze', 'bronze', 50, '{}', '{}');
REPLACE INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(4, 'gold', 0, 'gold', 'Gold', 200, '{}', '{}');
/*!40000 ALTER TABLE `job_grades` ENABLE KEYS */;

-- membuang struktur untuk table ffa.licenses
CREATE TABLE IF NOT EXISTS `licenses` (
  `type` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Membuang data untuk tabel ffa.licenses: ~9 rows (lebih kurang)
/*!40000 ALTER TABLE `licenses` DISABLE KEYS */;
REPLACE INTO `licenses` (`type`, `label`) VALUES
	('coke_processing', 'Coke Processing License');
REPLACE INTO `licenses` (`type`, `label`) VALUES
	('dmv', 'TES Tulis');
REPLACE INTO `licenses` (`type`, `label`) VALUES
	('drive', 'Surat Izin Mengemudi');
REPLACE INTO `licenses` (`type`, `label`) VALUES
	('drive_bike', 'SIM Motor');
REPLACE INTO `licenses` (`type`, `label`) VALUES
	('drive_truck', 'SIM Truck');
REPLACE INTO `licenses` (`type`, `label`) VALUES
	('gold_processing', 'Gold Processing License');
REPLACE INTO `licenses` (`type`, `label`) VALUES
	('spice_processing', 'Spice Processing License');
REPLACE INTO `licenses` (`type`, `label`) VALUES
	('weapon', 'Lisensi Senjata');
REPLACE INTO `licenses` (`type`, `label`) VALUES
	('weed_processing', 'Weed Processing License');
/*!40000 ALTER TABLE `licenses` ENABLE KEYS */;

-- membuang struktur untuk table ffa.owned_bags
CREATE TABLE IF NOT EXISTS `owned_bags` (
  `identifier` varchar(50) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `x` double DEFAULT NULL,
  `y` double DEFAULT NULL,
  `z` double DEFAULT NULL,
  `itemcount` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel ffa.owned_bags: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `owned_bags` DISABLE KEYS */;
/*!40000 ALTER TABLE `owned_bags` ENABLE KEYS */;

-- membuang struktur untuk table ffa.owned_bag_inventory
CREATE TABLE IF NOT EXISTS `owned_bag_inventory` (
  `id` int(11) DEFAULT NULL,
  `item` varchar(50) DEFAULT NULL,
  `label` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel ffa.owned_bag_inventory: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `owned_bag_inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `owned_bag_inventory` ENABLE KEYS */;

-- membuang struktur untuk table ffa.owned_properties
CREATE TABLE IF NOT EXISTS `owned_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `rented` int(11) NOT NULL,
  `owner` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4;

-- Membuang data untuk tabel ffa.owned_properties: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `owned_properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `owned_properties` ENABLE KEYS */;

-- membuang struktur untuk table ffa.owned_vehicles
CREATE TABLE IF NOT EXISTS `owned_vehicles` (
  `owner` varchar(40) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'car',
  `job` varchar(20) NOT NULL DEFAULT 'civ',
  `stored` tinyint(1) NOT NULL DEFAULT 0,
  `state` tinyint(1) NOT NULL DEFAULT 0,
  `modelname` varchar(250) DEFAULT NULL,
  `lasthouse` int(11) DEFAULT 0,
  `health` longtext NOT NULL DEFAULT '[{"value":100,"part":"electronics"},{"value":100,"part":"fuelinjector"},{"value":100,"part":"brakes"},{"value":100,"part":"radiator"},{"value":100,"part":"driveshaft"},{"value":100,"part":"transmission"},{"value":100,"part":"clutch"}]'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Membuang data untuk tabel ffa.owned_vehicles: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `owned_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `owned_vehicles` ENABLE KEYS */;

-- membuang struktur untuk table ffa.phone_app_chat
CREATE TABLE IF NOT EXISTS `phone_app_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel ffa.phone_app_chat: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `phone_app_chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_app_chat` ENABLE KEYS */;

-- membuang struktur untuk table ffa.phone_calls
CREATE TABLE IF NOT EXISTS `phone_calls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(10) NOT NULL,
  `num` varchar(10) NOT NULL,
  `incoming` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `accepts` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=276 DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel ffa.phone_calls: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `phone_calls` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_calls` ENABLE KEYS */;

-- membuang struktur untuk table ffa.phone_ch_reddit
CREATE TABLE IF NOT EXISTS `phone_ch_reddit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `redgkit` varchar(20) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel ffa.phone_ch_reddit: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `phone_ch_reddit` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_ch_reddit` ENABLE KEYS */;

-- membuang struktur untuk table ffa.phone_messages
CREATE TABLE IF NOT EXISTS `phone_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transmitter` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `isRead` int(11) NOT NULL DEFAULT 0,
  `owner` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=48246 DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel ffa.phone_messages: 1.630 rows
/*!40000 ALTER TABLE `phone_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_messages` ENABLE KEYS */;

-- membuang struktur untuk table ffa.phone_reddit
CREATE TABLE IF NOT EXISTS `phone_reddit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `redgkit` varchar(20) DEFAULT NULL,
  `reditsage` varchar(255) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel ffa.phone_reddit: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `phone_reddit` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_reddit` ENABLE KEYS */;

-- membuang struktur untuk table ffa.phone_shops
CREATE TABLE IF NOT EXISTS `phone_shops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store` varchar(255) NOT NULL,
  `item` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `label` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel ffa.phone_shops: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `phone_shops` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_shops` ENABLE KEYS */;

-- membuang struktur untuk table ffa.phone_users_contacts
CREATE TABLE IF NOT EXISTS `phone_users_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel ffa.phone_users_contacts: 0 rows
/*!40000 ALTER TABLE `phone_users_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_users_contacts` ENABLE KEYS */;

-- membuang struktur untuk table ffa.playerhousing
CREATE TABLE IF NOT EXISTS `playerhousing` (
  `id` int(32) NOT NULL,
  `owner` varchar(50) DEFAULT NULL,
  `rented` tinyint(1) DEFAULT NULL,
  `price` int(32) DEFAULT NULL,
  `wardrobe` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel ffa.playerhousing: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `playerhousing` DISABLE KEYS */;
/*!40000 ALTER TABLE `playerhousing` ENABLE KEYS */;

-- membuang struktur untuk table ffa.properties
CREATE TABLE IF NOT EXISTS `properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `entering` varchar(255) DEFAULT NULL,
  `exit` varchar(255) DEFAULT NULL,
  `inside` varchar(255) DEFAULT NULL,
  `outside` varchar(255) DEFAULT NULL,
  `ipls` varchar(255) DEFAULT '[]',
  `gateway` varchar(255) DEFAULT NULL,
  `is_single` int(11) DEFAULT NULL,
  `is_room` int(11) DEFAULT NULL,
  `is_gateway` int(11) DEFAULT NULL,
  `room_menu` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL DEFAULT 9999999,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4;

-- Membuang data untuk tabel ffa.properties: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `properties` ENABLE KEYS */;

-- membuang struktur untuk table ffa.qalle_brottsregister
CREATE TABLE IF NOT EXISTS `qalle_brottsregister` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `dateofcrime` varchar(255) NOT NULL,
  `crime` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel ffa.qalle_brottsregister: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `qalle_brottsregister` DISABLE KEYS */;
/*!40000 ALTER TABLE `qalle_brottsregister` ENABLE KEYS */;

-- membuang struktur untuk table ffa.ranking
CREATE TABLE IF NOT EXISTS `ranking` (
  `firstname` varchar(50) DEFAULT NULL,
  `rkds` float DEFAULT NULL,
  `rank` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Membuang data untuk tabel ffa.ranking: ~10 rows (lebih kurang)
/*!40000 ALTER TABLE `ranking` DISABLE KEYS */;
REPLACE INTO `ranking` (`firstname`, `rkds`, `rank`) VALUES
	('Pakcuyong Widjaja', 29.5, 1);
REPLACE INTO `ranking` (`firstname`, `rkds`, `rank`) VALUES
	('IyaIya TidakTidak', 16, 2);
REPLACE INTO `ranking` (`firstname`, `rkds`, `rank`) VALUES
	('Razel', 11.5, 3);
REPLACE INTO `ranking` (`firstname`, `rkds`, `rank`) VALUES
	('Evankhel', 11, 4);
REPLACE INTO `ranking` (`firstname`, `rkds`, `rank`) VALUES
	('doru', 10, 5);
REPLACE INTO `ranking` (`firstname`, `rkds`, `rank`) VALUES
	('Ray', 10, 6);
REPLACE INTO `ranking` (`firstname`, `rkds`, `rank`) VALUES
	('Joose', 9.5, 7);
REPLACE INTO `ranking` (`firstname`, `rkds`, `rank`) VALUES
	('mrs nuni', 9, 8);
REPLACE INTO `ranking` (`firstname`, `rkds`, `rank`) VALUES
	('putrii', 8, 9);
REPLACE INTO `ranking` (`firstname`, `rkds`, `rank`) VALUES
	('DExter', 7.5, 10);
/*!40000 ALTER TABLE `ranking` ENABLE KEYS */;

-- membuang struktur untuk table ffa.ranking_crew
CREATE TABLE IF NOT EXISTS `ranking_crew` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `members` int(11) DEFAULT 1,
  `kills` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- Membuang data untuk tabel ffa.ranking_crew: ~4 rows (lebih kurang)
/*!40000 ALTER TABLE `ranking_crew` DISABLE KEYS */;
REPLACE INTO `ranking_crew` (`id`, `name`, `created`, `members`, `kills`) VALUES
	(3, 'ttyy', '2021-08-09 18:34:09', 2, 51);
REPLACE INTO `ranking_crew` (`id`, `name`, `created`, `members`, `kills`) VALUES
	(4, 'ONTA', '2021-08-09 19:29:15', 2, 24);
REPLACE INTO `ranking_crew` (`id`, `name`, `created`, `members`, `kills`) VALUES
	(5, 'MCG', '2021-08-10 00:19:17', 2, 23);
REPLACE INTO `ranking_crew` (`id`, `name`, `created`, `members`, `kills`) VALUES
	(6, 'GamingxRoom', '2021-08-10 00:48:19', 4, 100);
/*!40000 ALTER TABLE `ranking_crew` ENABLE KEYS */;

-- membuang struktur untuk table ffa.rented_vehicles
CREATE TABLE IF NOT EXISTS `rented_vehicles` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(22) NOT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Membuang data untuk tabel ffa.rented_vehicles: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `rented_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `rented_vehicles` ENABLE KEYS */;

-- membuang struktur untuk table ffa.shops
CREATE TABLE IF NOT EXISTS `shops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `imglink` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=123128 DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel ffa.shops: ~6 rows (lebih kurang)
/*!40000 ALTER TABLE `shops` DISABLE KEYS */;
REPLACE INTO `shops` (`id`, `store`, `item`, `price`, `imglink`) VALUES
	(3, 'LTDgasoline', 'boxsmg', 2, '');
REPLACE INTO `shops` (`id`, `store`, `item`, `price`, `imglink`) VALUES
	(6, 'LTDgasoline', 'boxshoot', 2, '');
REPLACE INTO `shops` (`id`, `store`, `item`, `price`, `imglink`) VALUES
	(9, 'LTDgasoline', 'boxsniper', 4, '');
REPLACE INTO `shops` (`id`, `store`, `item`, `price`, `imglink`) VALUES
	(12, 'LTDgasoline', 'boxpistol', 12, '');
REPLACE INTO `shops` (`id`, `store`, `item`, `price`, `imglink`) VALUES
	(14, 'LTDgasoline', 'boxmg', 5, '');
REPLACE INTO `shops` (`id`, `store`, `item`, `price`, `imglink`) VALUES
	(18, 'LTDgasoline', 'bulletproof', 4, '');
/*!40000 ALTER TABLE `shops` ENABLE KEYS */;

-- membuang struktur untuk table ffa.society_moneywash
CREATE TABLE IF NOT EXISTS `society_moneywash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) NOT NULL,
  `society` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Membuang data untuk tabel ffa.society_moneywash: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `society_moneywash` DISABLE KEYS */;
/*!40000 ALTER TABLE `society_moneywash` ENABLE KEYS */;

-- membuang struktur untuk table ffa.t1ger_mechanic
CREATE TABLE IF NOT EXISTS `t1ger_mechanic` (
  `identifier` varchar(100) NOT NULL,
  `shopID` int(11) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT 'Mechanic Shop',
  `money` int(11) NOT NULL DEFAULT 0,
  `employees` longtext NOT NULL DEFAULT '[]',
  `storage` longtext NOT NULL DEFAULT '[]',
  PRIMARY KEY (`shopID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel ffa.t1ger_mechanic: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `t1ger_mechanic` DISABLE KEYS */;
/*!40000 ALTER TABLE `t1ger_mechanic` ENABLE KEYS */;

-- membuang struktur untuk table ffa.territories
CREATE TABLE IF NOT EXISTS `territories` (
  `zone` varchar(50) NOT NULL,
  `control` varchar(50) NOT NULL,
  `influence` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Membuang data untuk tabel ffa.territories: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `territories` DISABLE KEYS */;
/*!40000 ALTER TABLE `territories` ENABLE KEYS */;

-- membuang struktur untuk table ffa.trunk_inventory
CREATE TABLE IF NOT EXISTS `trunk_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(8) NOT NULL,
  `data` text NOT NULL,
  `owned` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `plate` (`plate`)
) ENGINE=InnoDB AUTO_INCREMENT=770 DEFAULT CHARSET=utf8mb4;

-- Membuang data untuk tabel ffa.trunk_inventory: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `trunk_inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `trunk_inventory` ENABLE KEYS */;

-- membuang struktur untuk table ffa.twitter_accounts
CREATE TABLE IF NOT EXISTS `twitter_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `password` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `avatar_url` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Membuang data untuk tabel ffa.twitter_accounts: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `twitter_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `twitter_accounts` ENABLE KEYS */;

-- membuang struktur untuk table ffa.twitter_likes
CREATE TABLE IF NOT EXISTS `twitter_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) DEFAULT NULL,
  `tweetId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_twitter_likes_twitter_accounts` (`authorId`),
  KEY `FK_twitter_likes_twitter_tweets` (`tweetId`),
  CONSTRAINT `FK_twitter_likes_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`),
  CONSTRAINT `FK_twitter_likes_twitter_tweets` FOREIGN KEY (`tweetId`) REFERENCES `twitter_tweets` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Membuang data untuk tabel ffa.twitter_likes: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `twitter_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `twitter_likes` ENABLE KEYS */;

-- membuang struktur untuk table ffa.twitter_tweets
CREATE TABLE IF NOT EXISTS `twitter_tweets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `FK_twitter_tweets_twitter_accounts` (`authorId`),
  CONSTRAINT `FK_twitter_tweets_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11327 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel ffa.twitter_tweets: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `twitter_tweets` DISABLE KEYS */;
/*!40000 ALTER TABLE `twitter_tweets` ENABLE KEYS */;

-- membuang struktur untuk table ffa.users
CREATE TABLE IF NOT EXISTS `users` (
  `identifier` varchar(60) NOT NULL,
  `license` varchar(60) NOT NULL,
  `money` int(11) DEFAULT 0,
  `name` varchar(50) DEFAULT NULL,
  `skin` longtext DEFAULT NULL,
  `job` varchar(20) DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `loadout` longtext DEFAULT NULL,
  `position` varchar(255) DEFAULT '',
  `bank` int(11) DEFAULT NULL,
  `permission_level` int(11) DEFAULT NULL,
  `group` varchar(50) DEFAULT 'user',
  `firstname` varchar(50) DEFAULT '',
  `lastname` varchar(50) DEFAULT '',
  `dateofbirth` varchar(25) DEFAULT '',
  `sex` varchar(10) DEFAULT '',
  `height` varchar(5) DEFAULT '',
  `is_dead` tinyint(1) DEFAULT 0,
  `isDead` tinyint(1) DEFAULT 0,
  `jail` int(11) DEFAULT NULL,
  `accounts` longtext DEFAULT NULL,
  `inventory` longtext DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `bunuh` int(11) DEFAULT 0,
  `mati` int(11) DEFAULT 0,
  `rp_xp` int(11) NOT NULL DEFAULT 0,
  `rp_rank` int(11) NOT NULL DEFAULT 1,
  `rkd` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Membuang data untuk tabel ffa.users: ~108 rows (lebih kurang)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('3222234', '234234', 0, NULL, NULL, 'unemployed', 0, NULL, NULL, NULL, NULL, 'user', 'mrs nuni', '', '', '', '', 0, 0, NULL, NULL, NULL, '0', 1, 2, 0, 1, 9);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('33344', '12', 0, NULL, NULL, 'unemployed', 0, NULL, NULL, NULL, NULL, 'user', 'putrii', '', '', '', '', 0, 0, NULL, NULL, NULL, '0', 1, 3, 0, 1, 8);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('334', '354', 0, NULL, NULL, 'unemployed', 0, NULL, NULL, NULL, NULL, 'user', 'ngelss', '', '', '', '', 0, 0, NULL, NULL, NULL, '0', 1, 4, 0, 1, 7);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('3342', '4567', 0, NULL, NULL, 'unemployed', 0, NULL, NULL, NULL, NULL, 'user', 'neils', '', '', '', '', 0, 0, NULL, NULL, NULL, '0', 1, 5, 0, 1, 6);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('3354', '789', 0, NULL, NULL, 'unemployed', 0, NULL, NULL, NULL, NULL, 'user', 'harun', '', '', '', '', 0, 0, NULL, NULL, NULL, '0', 1, 6, 0, 1, 5);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('33684', '9007', 0, NULL, NULL, 'unemployed', 0, NULL, NULL, NULL, NULL, 'user', 'yurika', '', '', '', '', 0, 0, NULL, NULL, NULL, '0', 1, 7, 0, 1, 4);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('3394', '678', 0, NULL, NULL, 'unemployed', 0, NULL, NULL, NULL, NULL, 'user', 'oding', '', '', '', '', 0, 0, NULL, NULL, NULL, '0', 1, 5, 0, 1, 3);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('343', '678', 0, NULL, '{"tshirt_1":0,"sun_2":0,"hair_1":0,"watches_2":0,"lipstick_1":0,"arms":0,"makeup_2":0,"bodyb_4":0,"eyebrows_5":0,"sun_1":0,"pants_1":0,"lipstick_4":0,"shoes_2":0,"glasses_1":0,"beard_1":0,"tshirt_2":0,"sex":0,"beard_2":0,"bproof_1":0,"ears_1":-1,"jaw_1":0,"face_md_weight":50,"hair_color_2":0,"shoes_1":0,"bracelets_2":0,"nose_2":0,"chin_4":0,"blush_2":0,"complexion_2":0,"chest_3":0,"chest_1":0,"lipstick_3":0,"lipstick_2":0,"cheeks_1":0,"bags_2":0,"blemishes_2":0,"bags_1":0,"nose_6":0,"eyebrows_1":0,"chin_2":0,"pants_2":0,"moles_2":0,"bracelets_1":-1,"beard_4":0,"hair_color_1":0,"eyebrows_6":0,"complexion_1":0,"blush_3":0,"nose_5":0,"decals_1":0,"eye_squint":0,"moles_1":0,"makeup_3":0,"mom":21,"mask_1":0,"age_2":0,"mask_2":0,"skin_md_weight":50,"eye_color":0,"blush_1":0,"chain_2":0,"cheeks_3":0,"cheeks_2":0,"helmet_1":-1,"jaw_2":0,"decals_2":0,"chin_1":0,"torso_2":0,"helmet_2":0,"bodyb_1":-1,"dad":0,"beard_3":0,"nose_1":0,"nose_4":0,"bproof_2":0,"chain_1":0,"nose_3":0,"glasses_2":0,"makeup_4":0,"blemishes_1":0,"age_1":0,"makeup_1":0,"chest_2":0,"torso_1":0,"bodyb_2":0,"bodyb_3":-1,"arms_2":0,"lip_thickness":0,"chin_3":0,"eyebrows_3":0,"hair_2":0,"watches_1":-1,"ears_2":0,"eyebrows_2":0,"eyebrows_4":0,"neck_thickness":0}', 'unemployed', 0, '{"WEAPON_ASSAULTRIFLE":{"ammo":200},"weapon_bat":{"ammo":1},"WEAPON_GUSENBERG":{"ammo":200},"weapon_knife":{"ammo":1},"weapon_pumpshotgun":{"ammo":200},"weapon_revolver":{"ammo":200},"WEAPON_HEAVYSNIPER":{"ammo":7},"weapon_smg":{"ammo":200},"weapon_microsmg":{"ammo":200},"weapon_combatpistol":{"ammo":200},"weapon_pistol50":{"ammo":200},"WEAPON_CARBINERIFLE":{"ammo":200}}', '{"y":-1083.7,"z":23.6,"heading":309.1,"x":-500.3}', NULL, NULL, 'user', 'drom', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":50000,"black_money":0,"money":10232}', '[]', '0', 1, 1, 197, 1, 2);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('34343', '4564', 0, NULL, '{"tshirt_1":0,"sun_2":0,"hair_1":0,"watches_2":0,"lipstick_1":0,"arms":0,"makeup_2":0,"bodyb_4":0,"eyebrows_5":0,"sun_1":0,"pants_1":0,"lipstick_4":0,"shoes_2":0,"glasses_1":0,"beard_1":0,"tshirt_2":0,"sex":0,"beard_2":0,"bproof_1":0,"ears_1":-1,"jaw_1":0,"face_md_weight":50,"hair_color_2":0,"shoes_1":0,"bracelets_2":0,"nose_2":0,"chin_4":0,"blush_2":0,"complexion_2":0,"chest_3":0,"chest_1":0,"lipstick_3":0,"lipstick_2":0,"cheeks_1":0,"bags_2":0,"blemishes_2":0,"bags_1":0,"nose_6":0,"eyebrows_1":0,"chin_2":0,"pants_2":0,"moles_2":0,"bracelets_1":-1,"beard_4":0,"hair_color_1":0,"eyebrows_6":0,"complexion_1":0,"blush_3":0,"nose_5":0,"decals_1":0,"eye_squint":0,"moles_1":0,"makeup_3":0,"mom":21,"mask_1":0,"age_2":0,"mask_2":0,"skin_md_weight":50,"eye_color":0,"blush_1":0,"chain_2":0,"cheeks_3":0,"cheeks_2":0,"helmet_1":-1,"jaw_2":0,"decals_2":0,"chin_1":0,"torso_2":0,"helmet_2":0,"bodyb_1":-1,"dad":0,"beard_3":0,"nose_1":0,"nose_4":0,"bproof_2":0,"chain_1":0,"nose_3":0,"glasses_2":0,"makeup_4":0,"blemishes_1":0,"age_1":0,"makeup_1":0,"chest_2":0,"torso_1":0,"bodyb_2":0,"bodyb_3":-1,"arms_2":0,"lip_thickness":0,"chin_3":0,"eyebrows_3":0,"hair_2":0,"watches_1":-1,"ears_2":0,"eyebrows_2":0,"eyebrows_4":0,"neck_thickness":0}', 'unemployed', 0, '{"WEAPON_ASSAULTRIFLE":{"ammo":200},"weapon_bat":{"ammo":1},"WEAPON_GUSENBERG":{"ammo":200},"weapon_knife":{"ammo":1},"weapon_pumpshotgun":{"ammo":200},"weapon_revolver":{"ammo":200},"WEAPON_HEAVYSNIPER":{"ammo":7},"weapon_smg":{"ammo":200},"weapon_microsmg":{"ammo":200},"weapon_combatpistol":{"ammo":200},"weapon_pistol50":{"ammo":200},"WEAPON_CARBINERIFLE":{"ammo":200}}', '{"y":-1083.7,"z":23.6,"heading":309.1,"x":-500.3}', NULL, NULL, 'user', 'drig', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":50000,"black_money":0,"money":10232}', '[]', '0', 1, 1, 197, 1, 1);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('4123', '678', 0, NULL, NULL, 'unemployed', 0, NULL, NULL, NULL, NULL, 'user', 'doru', '', '', '', '', 0, 0, NULL, NULL, NULL, '0', 1, 5, 0, 1, 10);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('8', '7897', 0, NULL, NULL, 'unemployed', 0, NULL, NULL, NULL, NULL, 'user', '', '', '', '', '', 0, 0, NULL, NULL, NULL, '0', 1, 4, 0, 1, 0);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('ddddd', '8908567', 0, NULL, NULL, 'unemployed', 0, NULL, NULL, NULL, NULL, 'user', '', '', '', '', '', 0, 0, NULL, NULL, NULL, '0', 1, 3, 0, 1, 0);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('dddddd', '56756', 0, NULL, '{"cheeks_3":0,"face_md_weight":50,"helmet_2":0,"moles_2":0,"hair_1":0,"glasses_2":0,"pants_2":0,"makeup_3":0,"complexion_2":0,"chin_2":0,"blush_2":0,"eyebrows_3":0,"blush_3":0,"beard_4":0,"lipstick_4":0,"sun_2":0,"eye_color":0,"jaw_2":0,"eye_squint":0,"makeup_2":0,"arms_2":0,"chest_2":0,"mom":21,"blush_1":0,"watches_2":0,"ears_1":-1,"lipstick_1":0,"bproof_2":0,"lipstick_3":0,"blemishes_2":0,"tshirt_2":0,"decals_2":0,"chin_4":0,"bags_2":0,"chin_1":0,"nose_4":0,"nose_6":0,"chest_1":0,"nose_1":0,"pants_1":0,"jaw_1":0,"bodyb_4":0,"shoes_1":0,"bodyb_1":-1,"bags_1":0,"chain_1":0,"shoes_2":0,"chain_2":0,"age_2":0,"beard_1":0,"glasses_1":0,"complexion_1":0,"bodyb_3":-1,"beard_3":0,"nose_3":0,"helmet_1":-1,"hair_2":0,"skin_md_weight":50,"ears_2":0,"arms":0,"chin_3":0,"torso_1":0,"bracelets_1":-1,"cheeks_1":0,"makeup_4":0,"nose_5":0,"eyebrows_6":0,"bracelets_2":0,"dad":0,"decals_1":0,"sun_1":0,"chest_3":0,"lipstick_2":0,"makeup_1":0,"beard_2":0,"bproof_1":0,"cheeks_2":0,"bodyb_2":0,"mask_2":0,"eyebrows_4":0,"hair_color_1":0,"nose_2":0,"eyebrows_1":0,"torso_2":0,"watches_1":-1,"neck_thickness":0,"eyebrows_2":0,"blemishes_1":0,"lip_thickness":0,"moles_1":0,"tshirt_1":0,"hair_color_2":0,"sex":0,"age_1":0,"eyebrows_5":0,"mask_1":0}', 'unemployed', 0, NULL, NULL, 0, 0, 'user', '', NULL, NULL, 'm', NULL, 0, 0, NULL, NULL, NULL, '0', 1, 9, 0, 1, 0);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('dsdsd', '456456', 0, NULL, '{"tshirt_1":0,"sun_2":0,"hair_1":0,"watches_2":0,"lipstick_1":0,"arms":0,"makeup_2":0,"bodyb_4":0,"eyebrows_5":0,"sun_1":0,"pants_1":0,"lipstick_4":0,"shoes_2":0,"glasses_1":0,"beard_1":0,"tshirt_2":0,"sex":0,"beard_2":0,"bproof_1":0,"ears_1":-1,"jaw_1":0,"face_md_weight":50,"hair_color_2":0,"shoes_1":0,"bracelets_2":0,"nose_2":0,"chin_4":0,"blush_2":0,"complexion_2":0,"chest_3":0,"chest_1":0,"lipstick_3":0,"lipstick_2":0,"cheeks_1":0,"bags_2":0,"blemishes_2":0,"bags_1":0,"nose_6":0,"eyebrows_1":0,"chin_2":0,"pants_2":0,"moles_2":0,"bracelets_1":-1,"beard_4":0,"hair_color_1":0,"eyebrows_6":0,"complexion_1":0,"blush_3":0,"nose_5":0,"decals_1":0,"eye_squint":0,"moles_1":0,"makeup_3":0,"mom":21,"mask_1":0,"age_2":0,"mask_2":0,"skin_md_weight":50,"eye_color":0,"blush_1":0,"chain_2":0,"cheeks_3":0,"cheeks_2":0,"helmet_1":-1,"jaw_2":0,"decals_2":0,"chin_1":0,"torso_2":0,"helmet_2":0,"bodyb_1":-1,"dad":0,"beard_3":0,"nose_1":0,"nose_4":0,"bproof_2":0,"chain_1":0,"nose_3":0,"glasses_2":0,"makeup_4":0,"blemishes_1":0,"age_1":0,"makeup_1":0,"chest_2":0,"torso_1":0,"bodyb_2":0,"bodyb_3":-1,"arms_2":0,"lip_thickness":0,"chin_3":0,"eyebrows_3":0,"hair_2":0,"watches_1":-1,"ears_2":0,"eyebrows_2":0,"eyebrows_4":0,"neck_thickness":0}', 'unemployed', 0, '{"WEAPON_ASSAULTRIFLE":{"ammo":200},"weapon_bat":{"ammo":1},"WEAPON_GUSENBERG":{"ammo":200},"weapon_knife":{"ammo":1},"weapon_pumpshotgun":{"ammo":200},"weapon_revolver":{"ammo":200},"WEAPON_HEAVYSNIPER":{"ammo":7},"weapon_smg":{"ammo":200},"weapon_microsmg":{"ammo":200},"weapon_combatpistol":{"ammo":200},"weapon_pistol50":{"ammo":200},"WEAPON_CARBINERIFLE":{"ammo":200}}', '{"y":-1083.7,"z":23.6,"heading":309.1,"x":-500.3}', NULL, NULL, 'user', '', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":50000,"black_money":0,"money":10232}', '[]', '0', 1, 1, 197, 1, 1);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('dsdsd33', '456456', 0, NULL, '{"tshirt_1":0,"sun_2":0,"hair_1":0,"watches_2":0,"lipstick_1":0,"arms":0,"makeup_2":0,"bodyb_4":0,"eyebrows_5":0,"sun_1":0,"pants_1":0,"lipstick_4":0,"shoes_2":0,"glasses_1":0,"beard_1":0,"tshirt_2":0,"sex":0,"beard_2":0,"bproof_1":0,"ears_1":-1,"jaw_1":0,"face_md_weight":50,"hair_color_2":0,"shoes_1":0,"bracelets_2":0,"nose_2":0,"chin_4":0,"blush_2":0,"complexion_2":0,"chest_3":0,"chest_1":0,"lipstick_3":0,"lipstick_2":0,"cheeks_1":0,"bags_2":0,"blemishes_2":0,"bags_1":0,"nose_6":0,"eyebrows_1":0,"chin_2":0,"pants_2":0,"moles_2":0,"bracelets_1":-1,"beard_4":0,"hair_color_1":0,"eyebrows_6":0,"complexion_1":0,"blush_3":0,"nose_5":0,"decals_1":0,"eye_squint":0,"moles_1":0,"makeup_3":0,"mom":21,"mask_1":0,"age_2":0,"mask_2":0,"skin_md_weight":50,"eye_color":0,"blush_1":0,"chain_2":0,"cheeks_3":0,"cheeks_2":0,"helmet_1":-1,"jaw_2":0,"decals_2":0,"chin_1":0,"torso_2":0,"helmet_2":0,"bodyb_1":-1,"dad":0,"beard_3":0,"nose_1":0,"nose_4":0,"bproof_2":0,"chain_1":0,"nose_3":0,"glasses_2":0,"makeup_4":0,"blemishes_1":0,"age_1":0,"makeup_1":0,"chest_2":0,"torso_1":0,"bodyb_2":0,"bodyb_3":-1,"arms_2":0,"lip_thickness":0,"chin_3":0,"eyebrows_3":0,"hair_2":0,"watches_1":-1,"ears_2":0,"eyebrows_2":0,"eyebrows_4":0,"neck_thickness":0}', 'unemployed', 0, '{"WEAPON_ASSAULTRIFLE":{"ammo":200},"weapon_bat":{"ammo":1},"WEAPON_GUSENBERG":{"ammo":200},"weapon_knife":{"ammo":1},"weapon_pumpshotgun":{"ammo":200},"weapon_revolver":{"ammo":200},"WEAPON_HEAVYSNIPER":{"ammo":7},"weapon_smg":{"ammo":200},"weapon_microsmg":{"ammo":200},"weapon_combatpistol":{"ammo":200},"weapon_pistol50":{"ammo":200},"WEAPON_CARBINERIFLE":{"ammo":200}}', '{"y":-1083.7,"z":23.6,"heading":309.1,"x":-500.3}', NULL, NULL, 'user', '', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":50000,"black_money":0,"money":10232}', '[]', '0', 1, 1, 197, 1, 1);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('dsdsd334444', '456456', 0, NULL, '{"tshirt_1":0,"sun_2":0,"hair_1":0,"watches_2":0,"lipstick_1":0,"arms":0,"makeup_2":0,"bodyb_4":0,"eyebrows_5":0,"sun_1":0,"pants_1":0,"lipstick_4":0,"shoes_2":0,"glasses_1":0,"beard_1":0,"tshirt_2":0,"sex":0,"beard_2":0,"bproof_1":0,"ears_1":-1,"jaw_1":0,"face_md_weight":50,"hair_color_2":0,"shoes_1":0,"bracelets_2":0,"nose_2":0,"chin_4":0,"blush_2":0,"complexion_2":0,"chest_3":0,"chest_1":0,"lipstick_3":0,"lipstick_2":0,"cheeks_1":0,"bags_2":0,"blemishes_2":0,"bags_1":0,"nose_6":0,"eyebrows_1":0,"chin_2":0,"pants_2":0,"moles_2":0,"bracelets_1":-1,"beard_4":0,"hair_color_1":0,"eyebrows_6":0,"complexion_1":0,"blush_3":0,"nose_5":0,"decals_1":0,"eye_squint":0,"moles_1":0,"makeup_3":0,"mom":21,"mask_1":0,"age_2":0,"mask_2":0,"skin_md_weight":50,"eye_color":0,"blush_1":0,"chain_2":0,"cheeks_3":0,"cheeks_2":0,"helmet_1":-1,"jaw_2":0,"decals_2":0,"chin_1":0,"torso_2":0,"helmet_2":0,"bodyb_1":-1,"dad":0,"beard_3":0,"nose_1":0,"nose_4":0,"bproof_2":0,"chain_1":0,"nose_3":0,"glasses_2":0,"makeup_4":0,"blemishes_1":0,"age_1":0,"makeup_1":0,"chest_2":0,"torso_1":0,"bodyb_2":0,"bodyb_3":-1,"arms_2":0,"lip_thickness":0,"chin_3":0,"eyebrows_3":0,"hair_2":0,"watches_1":-1,"ears_2":0,"eyebrows_2":0,"eyebrows_4":0,"neck_thickness":0}', 'unemployed', 0, '{"WEAPON_ASSAULTRIFLE":{"ammo":200},"weapon_bat":{"ammo":1},"WEAPON_GUSENBERG":{"ammo":200},"weapon_knife":{"ammo":1},"weapon_pumpshotgun":{"ammo":200},"weapon_revolver":{"ammo":200},"WEAPON_HEAVYSNIPER":{"ammo":7},"weapon_smg":{"ammo":200},"weapon_microsmg":{"ammo":200},"weapon_combatpistol":{"ammo":200},"weapon_pistol50":{"ammo":200},"WEAPON_CARBINERIFLE":{"ammo":200}}', '{"y":-1083.7,"z":23.6,"heading":309.1,"x":-500.3}', NULL, NULL, 'user', '', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":50000,"black_money":0,"money":10232}', '[]', '0', 1, 1, 197, 1, 1);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('dsdsd33444433', '234234', 0, NULL, '{"tshirt_1":0,"sun_2":0,"hair_1":0,"watches_2":0,"lipstick_1":0,"arms":0,"makeup_2":0,"bodyb_4":0,"eyebrows_5":0,"sun_1":0,"pants_1":0,"lipstick_4":0,"shoes_2":0,"glasses_1":0,"beard_1":0,"tshirt_2":0,"sex":0,"beard_2":0,"bproof_1":0,"ears_1":-1,"jaw_1":0,"face_md_weight":50,"hair_color_2":0,"shoes_1":0,"bracelets_2":0,"nose_2":0,"chin_4":0,"blush_2":0,"complexion_2":0,"chest_3":0,"chest_1":0,"lipstick_3":0,"lipstick_2":0,"cheeks_1":0,"bags_2":0,"blemishes_2":0,"bags_1":0,"nose_6":0,"eyebrows_1":0,"chin_2":0,"pants_2":0,"moles_2":0,"bracelets_1":-1,"beard_4":0,"hair_color_1":0,"eyebrows_6":0,"complexion_1":0,"blush_3":0,"nose_5":0,"decals_1":0,"eye_squint":0,"moles_1":0,"makeup_3":0,"mom":21,"mask_1":0,"age_2":0,"mask_2":0,"skin_md_weight":50,"eye_color":0,"blush_1":0,"chain_2":0,"cheeks_3":0,"cheeks_2":0,"helmet_1":-1,"jaw_2":0,"decals_2":0,"chin_1":0,"torso_2":0,"helmet_2":0,"bodyb_1":-1,"dad":0,"beard_3":0,"nose_1":0,"nose_4":0,"bproof_2":0,"chain_1":0,"nose_3":0,"glasses_2":0,"makeup_4":0,"blemishes_1":0,"age_1":0,"makeup_1":0,"chest_2":0,"torso_1":0,"bodyb_2":0,"bodyb_3":-1,"arms_2":0,"lip_thickness":0,"chin_3":0,"eyebrows_3":0,"hair_2":0,"watches_1":-1,"ears_2":0,"eyebrows_2":0,"eyebrows_4":0,"neck_thickness":0}', 'unemployed', 0, '{"WEAPON_ASSAULTRIFLE":{"ammo":200},"weapon_bat":{"ammo":1},"WEAPON_GUSENBERG":{"ammo":200},"weapon_knife":{"ammo":1},"weapon_pumpshotgun":{"ammo":200},"weapon_revolver":{"ammo":200},"WEAPON_HEAVYSNIPER":{"ammo":7},"weapon_smg":{"ammo":200},"weapon_microsmg":{"ammo":200},"weapon_combatpistol":{"ammo":200},"weapon_pistol50":{"ammo":200},"WEAPON_CARBINERIFLE":{"ammo":200}}', '{"y":-1083.7,"z":23.6,"heading":309.1,"x":-500.3}', NULL, NULL, 'user', '', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":50000,"black_money":0,"money":10232}', '[]', '0', 1, 1, 197, 1, 1);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('dsdsd334444333', '456456', 0, NULL, '{"tshirt_1":0,"sun_2":0,"hair_1":0,"watches_2":0,"lipstick_1":0,"arms":0,"makeup_2":0,"bodyb_4":0,"eyebrows_5":0,"sun_1":0,"pants_1":0,"lipstick_4":0,"shoes_2":0,"glasses_1":0,"beard_1":0,"tshirt_2":0,"sex":0,"beard_2":0,"bproof_1":0,"ears_1":-1,"jaw_1":0,"face_md_weight":50,"hair_color_2":0,"shoes_1":0,"bracelets_2":0,"nose_2":0,"chin_4":0,"blush_2":0,"complexion_2":0,"chest_3":0,"chest_1":0,"lipstick_3":0,"lipstick_2":0,"cheeks_1":0,"bags_2":0,"blemishes_2":0,"bags_1":0,"nose_6":0,"eyebrows_1":0,"chin_2":0,"pants_2":0,"moles_2":0,"bracelets_1":-1,"beard_4":0,"hair_color_1":0,"eyebrows_6":0,"complexion_1":0,"blush_3":0,"nose_5":0,"decals_1":0,"eye_squint":0,"moles_1":0,"makeup_3":0,"mom":21,"mask_1":0,"age_2":0,"mask_2":0,"skin_md_weight":50,"eye_color":0,"blush_1":0,"chain_2":0,"cheeks_3":0,"cheeks_2":0,"helmet_1":-1,"jaw_2":0,"decals_2":0,"chin_1":0,"torso_2":0,"helmet_2":0,"bodyb_1":-1,"dad":0,"beard_3":0,"nose_1":0,"nose_4":0,"bproof_2":0,"chain_1":0,"nose_3":0,"glasses_2":0,"makeup_4":0,"blemishes_1":0,"age_1":0,"makeup_1":0,"chest_2":0,"torso_1":0,"bodyb_2":0,"bodyb_3":-1,"arms_2":0,"lip_thickness":0,"chin_3":0,"eyebrows_3":0,"hair_2":0,"watches_1":-1,"ears_2":0,"eyebrows_2":0,"eyebrows_4":0,"neck_thickness":0}', 'unemployed', 0, '{"WEAPON_ASSAULTRIFLE":{"ammo":200},"weapon_bat":{"ammo":1},"WEAPON_GUSENBERG":{"ammo":200},"weapon_knife":{"ammo":1},"weapon_pumpshotgun":{"ammo":200},"weapon_revolver":{"ammo":200},"WEAPON_HEAVYSNIPER":{"ammo":7},"weapon_smg":{"ammo":200},"weapon_microsmg":{"ammo":200},"weapon_combatpistol":{"ammo":200},"weapon_pistol50":{"ammo":200},"WEAPON_CARBINERIFLE":{"ammo":200}}', '{"y":-1083.7,"z":23.6,"heading":309.1,"x":-500.3}', NULL, NULL, 'user', '', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":50000,"black_money":0,"money":10232}', '[]', '0', 1, 1, 197, 1, 1);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('ff', '678678', 0, NULL, '{"tshirt_1":0,"sun_2":0,"hair_1":0,"watches_2":0,"lipstick_1":0,"arms":0,"makeup_2":0,"bodyb_4":0,"eyebrows_5":0,"sun_1":0,"pants_1":0,"lipstick_4":0,"shoes_2":0,"glasses_1":0,"beard_1":0,"tshirt_2":0,"sex":0,"beard_2":0,"bproof_1":0,"ears_1":-1,"jaw_1":0,"face_md_weight":50,"hair_color_2":0,"shoes_1":0,"bracelets_2":0,"nose_2":0,"chin_4":0,"blush_2":0,"complexion_2":0,"chest_3":0,"chest_1":0,"lipstick_3":0,"lipstick_2":0,"cheeks_1":0,"bags_2":0,"blemishes_2":0,"bags_1":0,"nose_6":0,"eyebrows_1":0,"chin_2":0,"pants_2":0,"moles_2":0,"bracelets_1":-1,"beard_4":0,"hair_color_1":0,"eyebrows_6":0,"complexion_1":0,"blush_3":0,"nose_5":0,"decals_1":0,"eye_squint":0,"moles_1":0,"makeup_3":0,"mom":21,"mask_1":0,"age_2":0,"mask_2":0,"skin_md_weight":50,"eye_color":0,"blush_1":0,"chain_2":0,"cheeks_3":0,"cheeks_2":0,"helmet_1":-1,"jaw_2":0,"decals_2":0,"chin_1":0,"torso_2":0,"helmet_2":0,"bodyb_1":-1,"dad":0,"beard_3":0,"nose_1":0,"nose_4":0,"bproof_2":0,"chain_1":0,"nose_3":0,"glasses_2":0,"makeup_4":0,"blemishes_1":0,"age_1":0,"makeup_1":0,"chest_2":0,"torso_1":0,"bodyb_2":0,"bodyb_3":-1,"arms_2":0,"lip_thickness":0,"chin_3":0,"eyebrows_3":0,"hair_2":0,"watches_1":-1,"ears_2":0,"eyebrows_2":0,"eyebrows_4":0,"neck_thickness":0}', 'unemployed', 0, '{"WEAPON_ASSAULTRIFLE":{"ammo":200},"weapon_bat":{"ammo":1},"WEAPON_GUSENBERG":{"ammo":200},"weapon_knife":{"ammo":1},"weapon_pumpshotgun":{"ammo":200},"weapon_revolver":{"ammo":200},"WEAPON_HEAVYSNIPER":{"ammo":7},"weapon_smg":{"ammo":200},"weapon_microsmg":{"ammo":200},"weapon_combatpistol":{"ammo":200},"weapon_pistol50":{"ammo":200},"WEAPON_CARBINERIFLE":{"ammo":200}}', '{"y":-1083.7,"z":23.6,"heading":309.1,"x":-500.3}', NULL, NULL, 'user', '', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":50000,"black_money":0,"money":10232}', '[]', '0', 1, 1, 197, 1, 1);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('sdsdsd', '234234', 0, NULL, '{"cheeks_3":0,"face_md_weight":50,"helmet_2":0,"moles_2":0,"hair_1":0,"glasses_2":0,"pants_2":0,"makeup_3":0,"complexion_2":0,"chin_2":0,"blush_2":0,"eyebrows_3":0,"blush_3":0,"beard_4":0,"lipstick_4":0,"sun_2":0,"eye_color":0,"jaw_2":0,"eye_squint":0,"makeup_2":0,"arms_2":0,"chest_2":0,"mom":21,"blush_1":0,"watches_2":0,"ears_1":-1,"lipstick_1":0,"bproof_2":0,"lipstick_3":0,"blemishes_2":0,"tshirt_2":0,"decals_2":0,"chin_4":0,"bags_2":0,"chin_1":0,"nose_4":0,"nose_6":0,"chest_1":0,"nose_1":0,"pants_1":0,"jaw_1":0,"bodyb_4":0,"shoes_1":0,"bodyb_1":-1,"bags_1":0,"chain_1":0,"shoes_2":0,"chain_2":0,"age_2":0,"beard_1":0,"glasses_1":0,"complexion_1":0,"bodyb_3":-1,"beard_3":0,"nose_3":0,"helmet_1":-1,"hair_2":0,"skin_md_weight":50,"ears_2":0,"arms":0,"chin_3":0,"torso_1":0,"bracelets_1":-1,"cheeks_1":0,"makeup_4":0,"nose_5":0,"eyebrows_6":0,"bracelets_2":0,"dad":0,"decals_1":0,"sun_1":0,"chest_3":0,"lipstick_2":0,"makeup_1":0,"beard_2":0,"bproof_1":0,"cheeks_2":0,"bodyb_2":0,"mask_2":0,"eyebrows_4":0,"hair_color_1":0,"nose_2":0,"eyebrows_1":0,"torso_2":0,"watches_1":-1,"neck_thickness":0,"eyebrows_2":0,"blemishes_1":0,"lip_thickness":0,"moles_1":0,"tshirt_1":0,"hair_color_2":0,"sex":0,"age_1":0,"eyebrows_5":0,"mask_1":0}', 'unemployed', 0, NULL, NULL, 0, 0, 'user', '', NULL, NULL, 'm', NULL, 0, 0, NULL, NULL, NULL, '0', 1, 10, 0, 1, 0);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('ssss', '345345', 0, NULL, '{"tshirt_1":0,"sun_2":0,"hair_1":0,"watches_2":0,"lipstick_1":0,"arms":0,"makeup_2":0,"bodyb_4":0,"eyebrows_5":0,"sun_1":0,"pants_1":0,"lipstick_4":0,"shoes_2":0,"glasses_1":0,"beard_1":0,"tshirt_2":0,"sex":0,"beard_2":0,"bproof_1":0,"ears_1":-1,"jaw_1":0,"face_md_weight":50,"hair_color_2":0,"shoes_1":0,"bracelets_2":0,"nose_2":0,"chin_4":0,"blush_2":0,"complexion_2":0,"chest_3":0,"chest_1":0,"lipstick_3":0,"lipstick_2":0,"cheeks_1":0,"bags_2":0,"blemishes_2":0,"bags_1":0,"nose_6":0,"eyebrows_1":0,"chin_2":0,"pants_2":0,"moles_2":0,"bracelets_1":-1,"beard_4":0,"hair_color_1":0,"eyebrows_6":0,"complexion_1":0,"blush_3":0,"nose_5":0,"decals_1":0,"eye_squint":0,"moles_1":0,"makeup_3":0,"mom":21,"mask_1":0,"age_2":0,"mask_2":0,"skin_md_weight":50,"eye_color":0,"blush_1":0,"chain_2":0,"cheeks_3":0,"cheeks_2":0,"helmet_1":-1,"jaw_2":0,"decals_2":0,"chin_1":0,"torso_2":0,"helmet_2":0,"bodyb_1":-1,"dad":0,"beard_3":0,"nose_1":0,"nose_4":0,"bproof_2":0,"chain_1":0,"nose_3":0,"glasses_2":0,"makeup_4":0,"blemishes_1":0,"age_1":0,"makeup_1":0,"chest_2":0,"torso_1":0,"bodyb_2":0,"bodyb_3":-1,"arms_2":0,"lip_thickness":0,"chin_3":0,"eyebrows_3":0,"hair_2":0,"watches_1":-1,"ears_2":0,"eyebrows_2":0,"eyebrows_4":0,"neck_thickness":0}', 'unemployed', 0, '{"WEAPON_ASSAULTRIFLE":{"ammo":200},"weapon_bat":{"ammo":1},"WEAPON_GUSENBERG":{"ammo":200},"weapon_knife":{"ammo":1},"weapon_pumpshotgun":{"ammo":200},"weapon_revolver":{"ammo":200},"WEAPON_HEAVYSNIPER":{"ammo":7},"weapon_smg":{"ammo":200},"weapon_microsmg":{"ammo":200},"weapon_combatpistol":{"ammo":200},"weapon_pistol50":{"ammo":200},"WEAPON_CARBINERIFLE":{"ammo":200}}', '{"y":-1083.7,"z":23.6,"heading":309.1,"x":-500.3}', NULL, NULL, 'user', '', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":50000,"black_money":0,"money":10232}', '[]', '0', 1, 1, 197, 1, 1);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:1100001072ab319', 'license:c98bd18ca57fa22da89b65e8ca0709425ce7901a', 0, NULL, '{"chest_2":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":0,"makeup_3":0,"torso_2":9,"makeup_4":0,"shoes_2":0,"torso_1":127,"eyebrows_2":0,"pants_2":0,"bags_2":0,"mask_2":0,"eye_color":0,"skin":0,"watches_2":0,"watches_1":-1,"helmet_1":112,"helmet_2":0,"arms":15,"age_1":0,"sex":0,"lipstick_3":0,"face":0,"bracelets_1":-1,"tshirt_1":15,"complexion_1":0,"chain_1":0,"shoes_1":0,"chest_1":0,"glasses_1":0,"makeup_2":0,"hair_2":0,"blemishes_1":0,"tshirt_2":0,"decals_1":0,"blush_1":0,"beard_3":0,"eyebrows_1":0,"bodyb_2":0,"age_2":0,"eyebrows_4":0,"beard_4":0,"lipstick_1":0,"pants_1":0,"moles_1":0,"hair_color_1":0,"eyebrows_3":0,"bracelets_2":0,"mask_1":0,"moles_2":0,"ears_2":0,"bodyb_1":0,"blush_3":0,"ears_1":-1,"hair_color_2":0,"complexion_2":0,"bproof_1":0,"sun_2":0,"arms_2":0,"decals_2":0,"bags_1":0,"blush_2":0,"blemishes_2":0,"chain_2":0,"bproof_2":0,"beard_1":0,"hair_1":0,"makeup_1":0,"glasses_2":0}', 'unemployed', 0, '{"weapon_combatpistol":{"ammo":200},"weapon_microsmg":{"ammo":200},"weapon_pumpshotgun":{"ammo":200},"WEAPON_CARBINERIFLE":{"ammo":200},"weapon_revolver":{"ammo":200},"weapon_bat":{"ammo":1},"weapon_smg":{"ammo":200},"WEAPON_ASSAULTRIFLE":{"ammo":200},"weapon_pistol50":{"ammo":200},"weapon_knife":{"ammo":1},"WEAPON_HEAVYSNIPER":{"ammo":7},"WEAPON_GUSENBERG":{"ammo":200}}', '{"y":-1286.9,"x":-143.1,"heading":83.8,"z":48.1}', NULL, NULL, 'user', 'YANDIOLEGUN', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":5060,"black_money":0,"money":16915}', '[]', NULL, 59, 57, 750, 1, 1);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:11000010b4a1acf', 'license:95a63cf921d831972a169f16424df6dfa45a7e04', 0, NULL, '{"helmet_1":115,"eye_color":0,"glasses_2":0,"hair_color_2":0,"skin":0,"eyebrows_4":0,"eyebrows_2":0,"bodyb_1":0,"complexion_1":0,"beard_4":0,"torso_2":8,"lipstick_3":0,"moles_2":0,"hair_1":12,"torso_1":88,"sex":0,"chest_2":0,"tshirt_2":0,"chest_3":0,"age_1":0,"shoes_1":1,"lipstick_1":0,"shoes_2":0,"makeup_4":0,"arms":0,"sun_2":0,"glasses_1":0,"watches_1":-1,"beard_3":0,"complexion_2":0,"sun_1":0,"blemishes_2":0,"blush_3":0,"lipstick_2":0,"tshirt_1":16,"blemishes_1":0,"pants_2":1,"bags_1":0,"ears_1":-1,"hair_color_1":0,"face":0,"watches_2":0,"beard_2":0,"hair_2":4,"chain_1":0,"pants_1":28,"decals_1":0,"chest_1":0,"lipstick_4":0,"makeup_3":0,"ears_2":0,"chain_2":0,"bproof_1":0,"decals_2":0,"eyebrows_1":0,"bracelets_2":0,"eyebrows_3":0,"moles_1":0,"mask_1":0,"helmet_2":3,"mask_2":0,"makeup_1":0,"blush_2":0,"makeup_2":0,"bproof_2":0,"bags_2":0,"age_2":0,"blush_1":0,"beard_1":0,"arms_2":0,"bodyb_2":0,"bracelets_1":-1}', 'unemployed', 0, '{"weapon_bat":{"ammo":1},"weapon_pumpshotgun":{"ammo":200},"WEAPON_ASSAULTRIFLE":{"ammo":200},"weapon_microsmg":{"ammo":200},"WEAPON_HEAVYSNIPER":{"ammo":7},"WEAPON_GUSENBERG":{"ammo":200},"WEAPON_CARBINERIFLE":{"ammo":200},"weapon_pistol50":{"ammo":200},"weapon_knife":{"ammo":1},"weapon_combatpistol":{"ammo":200},"weapon_revolver":{"ammo":200},"weapon_smg":{"ammo":200}}', '{"y":3201.4,"z":55.1,"heading":262.1,"x":2588.5}', NULL, NULL, 'user', 'YOUNG', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"black_money":0,"bank":20,"money":15549}', '[]', NULL, 26, 32, 779, 1, -3);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:11000010e06f71b', 'license:108cf2a4efd54b01f59379a1f68224b471cd2cd9', 0, NULL, '{"lipstick_1":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":0,"makeup_3":0,"torso_2":2,"makeup_4":0,"shoes_2":0,"bproof_2":0,"eyebrows_2":0,"pants_2":1,"bags_2":0,"mask_2":0,"eye_color":0,"skin":0,"watches_2":0,"watches_1":-1,"glasses_2":0,"helmet_2":0,"arms":33,"age_1":0,"sex":0,"lipstick_3":0,"face":26,"mask_1":0,"tshirt_1":15,"complexion_1":0,"chain_1":0,"shoes_1":5,"chest_1":0,"glasses_1":0,"decals_2":0,"hair_2":2,"blemishes_1":0,"tshirt_2":0,"decals_1":0,"blush_1":0,"beard_3":0,"bracelets_1":-1,"arms_2":0,"hair_1":21,"chest_2":0,"makeup_1":0,"moles_1":0,"pants_1":6,"ears_2":0,"hair_color_1":0,"eyebrows_3":0,"eyebrows_4":0,"complexion_2":0,"moles_2":0,"beard_1":0,"sun_2":0,"blush_3":0,"ears_1":-1,"hair_color_2":0,"bodyb_2":0,"bproof_1":0,"bodyb_1":0,"blemishes_2":0,"makeup_2":0,"bracelets_2":0,"blush_2":0,"beard_4":0,"chain_2":0,"bags_1":0,"torso_1":75,"age_2":0,"eyebrows_1":0,"helmet_1":115}', 'unemployed', 0, '[]', '{"y":-786.5,"x":219.7,"heading":169.9,"z":30.8}', NULL, NULL, 'user', 'Kaka Res', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":5020,"black_money":0,"money":3221}', '[]', NULL, 17, 20, 698, 1, -1.5);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:11000010e7dff50', 'license:a60a31862294285a31a8f13621aca3caf853e1c8', 0, NULL, '{"chest_2":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":0,"makeup_3":0,"torso_2":0,"bodyb_2":0,"shoes_2":0,"bproof_2":0,"eyebrows_2":0,"pants_2":0,"bags_2":0,"mask_2":0,"eye_color":0,"skin":0,"watches_2":0,"watches_1":-1,"helmet_1":-1,"helmet_2":0,"arms":0,"age_1":0,"sex":0,"lipstick_3":0,"face":0,"mask_1":0,"tshirt_1":0,"complexion_1":0,"chain_1":0,"shoes_1":0,"chest_1":0,"glasses_1":0,"decals_2":0,"moles_1":0,"blemishes_1":0,"tshirt_2":0,"decals_1":0,"complexion_2":0,"bags_1":0,"bodyb_1":0,"eyebrows_1":0,"torso_1":0,"arms_2":0,"lipstick_1":0,"bracelets_1":-1,"pants_1":0,"ears_2":0,"hair_color_1":0,"eyebrows_3":0,"bracelets_2":0,"hair_2":0,"moles_2":0,"beard_1":0,"sun_2":0,"blush_3":0,"ears_1":-1,"hair_color_2":0,"eyebrows_4":0,"bproof_1":0,"glasses_2":0,"blemishes_2":0,"makeup_1":0,"makeup_2":0,"blush_2":0,"beard_4":0,"chain_2":0,"age_2":0,"beard_3":0,"hair_1":0,"blush_1":0,"makeup_4":0}', 'unemployed', 0, '{"weapon_combatpistol":{"ammo":200},"weapon_microsmg":{"ammo":200},"weapon_pumpshotgun":{"ammo":200},"WEAPON_CARBINERIFLE":{"ammo":200},"weapon_revolver":{"ammo":200},"weapon_bat":{"ammo":1},"weapon_smg":{"ammo":200},"WEAPON_ASSAULTRIFLE":{"ammo":200},"weapon_pistol50":{"ammo":200},"weapon_knife":{"ammo":1},"WEAPON_HEAVYSNIPER":{"ammo":7},"WEAPON_GUSENBERG":{"ammo":200}}', '{"y":-762.8,"x":244.2,"heading":341.1,"z":31.6}', NULL, NULL, 'user', 'GOOBA', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":5000,"black_money":0,"money":5000}', '[]', NULL, 0, 0, 0, 1, 0);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:11000010f35ae78', 'license:550ea64102d5a341d6ecfef1b4079ac75901a4dd', 0, NULL, '{"hair_color_2":0,"glasses_2":0,"makeup_3":0,"arms":1,"lipstick_2":0,"shoes_1":3,"mask_1":0,"blush_1":0,"eyebrows_1":0,"chest_3":0,"glasses_1":0,"bracelets_1":-1,"makeup_1":0,"eyebrows_4":0,"hair_1":11,"eyebrows_3":0,"helmet_1":-1,"chest_1":0,"bracelets_2":0,"chain_2":0,"lipstick_1":0,"age_2":0,"skin":10,"hair_2":0,"pants_1":20,"decals_1":0,"blush_2":0,"beard_3":0,"ears_2":0,"eye_color":0,"beard_2":0,"shoes_2":0,"watches_2":0,"tshirt_2":2,"beard_1":0,"arms_2":0,"moles_2":0,"lipstick_3":0,"lipstick_4":0,"bags_2":0,"blush_3":0,"helmet_2":0,"pants_2":0,"tshirt_1":22,"sex":0,"sun_2":0,"torso_2":1,"bodyb_1":0,"face":33,"complexion_2":0,"beard_4":0,"blemishes_1":0,"mask_2":0,"blemishes_2":0,"chest_2":0,"decals_2":0,"moles_1":0,"bags_1":0,"hair_color_1":7,"age_1":0,"makeup_2":0,"eyebrows_2":0,"complexion_1":0,"bodyb_2":0,"chain_1":0,"watches_1":-1,"makeup_4":0,"torso_1":11,"sun_1":0,"ears_1":-1}', 'unemployed', 0, '{"WEAPON_KNIFE":{"ammo":1},"WEAPON_MICROSMG":{"ammo":300},"WEAPON_PUMPSHOTGUN":{"ammo":300},"WEAPON_COMBATPISTOL":{"ammo":300},"WEAPON_PISTOL50":{"ammo":300},"WEAPON_SMG":{"ammo":300},"WEAPON_HEAVYSNIPER":{"ammo":10},"WEAPON_GUSENBERG":{"ammo":300},"WEAPON_ASSAULTRIFLE":{"ammo":300},"WEAPON_CARBINERIFLE":{"ammo":300},"WEAPON_BAT":{"ammo":1},"WEAPON_REVOLVER":{"ammo":300}}', '{"z":30.9,"heading":176.5,"x":204.8,"y":-825.4}', NULL, NULL, 'bronze', 'Mr Yaba', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"black_money":0,"bank":5130,"money":609}', '[]', NULL, 0, 7, 4244, 4, -3.5);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:110000111f9ab9c', 'license:db150ee5cbf1a28a5ac9b455c0589252a4509e0b', 0, NULL, '{"lipstick_1":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":0,"makeup_3":0,"torso_2":0,"bodyb_2":0,"shoes_2":0,"torso_1":127,"eyebrows_2":0,"pants_2":0,"bags_2":0,"mask_2":0,"eye_color":0,"eyebrows_1":0,"watches_2":0,"watches_1":-1,"helmet_1":116,"helmet_2":0,"arms":19,"age_1":0,"sex":0,"lipstick_3":0,"face":21,"mask_1":51,"tshirt_1":1,"complexion_1":0,"chain_1":0,"shoes_1":5,"chest_1":0,"glasses_1":0,"decals_2":0,"hair_2":0,"blemishes_1":0,"tshirt_2":0,"decals_1":0,"complexion_2":0,"bags_1":45,"bracelets_1":-1,"moles_1":0,"bproof_2":0,"chest_2":0,"sun_2":0,"age_2":0,"pants_1":42,"blemishes_2":0,"hair_color_1":10,"eyebrows_3":0,"arms_2":0,"bodyb_1":0,"moles_2":0,"ears_2":0,"makeup_1":0,"blush_3":0,"ears_1":-1,"hair_color_2":0,"blush_1":0,"bproof_1":0,"makeup_2":0,"skin":11,"eyebrows_4":0,"bracelets_2":0,"blush_2":0,"beard_4":0,"chain_2":0,"beard_1":0,"beard_3":0,"hair_1":12,"makeup_4":0,"glasses_2":0}', 'unemployed', 0, '{"weapon_combatpistol":{"ammo":200},"weapon_microsmg":{"ammo":200},"weapon_pumpshotgun":{"ammo":200},"WEAPON_CARBINERIFLE":{"ammo":200},"weapon_revolver":{"ammo":200},"weapon_bat":{"ammo":1},"weapon_smg":{"ammo":200},"WEAPON_ASSAULTRIFLE":{"ammo":200},"weapon_pistol50":{"ammo":200},"weapon_knife":{"ammo":1},"WEAPON_HEAVYSNIPER":{"ammo":7},"WEAPON_GUSENBERG":{"ammo":200}}', '{"y":-878.5,"x":178.9,"heading":10.6,"z":31.1}', NULL, NULL, 'user', 'Evankhel', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":5020,"black_money":0,"money":15492}', '[]', NULL, 60, 38, 787, 1, 11);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:1100001151123ad', 'license:b10c2fcf8411172bb80e38121fc2609c0f844df0', 0, NULL, '{"arms":0,"moles_1":0,"makeup_2":0,"complexion_2":0,"eye_color":0,"skin":0,"bracelets_1":-1,"hair_2":0,"bodyb_2":0,"watches_1":-1,"complexion_1":0,"helmet_2":0,"glasses_2":0,"lipstick_1":0,"makeup_3":0,"bags_1":0,"tshirt_2":0,"chest_3":0,"eyebrows_1":0,"eyebrows_2":0,"blush_2":0,"hair_color_1":0,"sex":0,"tshirt_1":0,"beard_2":0,"moles_2":0,"eyebrows_4":0,"bags_2":0,"pants_2":0,"blush_3":0,"torso_2":0,"chest_1":0,"helmet_1":-1,"mask_1":0,"shoes_2":0,"mask_2":0,"bracelets_2":0,"age_1":0,"decals_1":0,"chest_2":0,"shoes_1":0,"bodyb_1":0,"decals_2":0,"hair_color_2":0,"makeup_1":0,"beard_1":0,"ears_2":0,"beard_4":0,"lipstick_2":0,"sun_1":0,"blush_1":0,"chain_2":0,"hair_1":0,"arms_2":0,"pants_1":0,"eyebrows_3":0,"sun_2":0,"age_2":0,"chain_1":0,"face":0,"torso_1":0,"blemishes_2":0,"glasses_1":0,"lipstick_4":0,"ears_1":-1,"beard_3":0,"makeup_4":0,"blemishes_1":0,"lipstick_3":0,"watches_2":0}', 'unemployed', 0, '{"WEAPON_KNIFE":{"ammo":1},"WEAPON_MICROSMG":{"ammo":200},"WEAPON_PUMPSHOTGUN":{"ammo":200},"WEAPON_COMBATPISTOL":{"ammo":200},"WEAPON_PISTOL50":{"ammo":200},"WEAPON_SMG":{"ammo":200},"WEAPON_HEAVYSNIPER":{"ammo":7},"WEAPON_GUSENBERG":{"ammo":200},"WEAPON_ASSAULTRIFLE":{"ammo":200},"WEAPON_CARBINERIFLE":{"ammo":200},"WEAPON_BAT":{"ammo":1},"WEAPON_REVOLVER":{"ammo":200}}', '{"z":30.5,"heading":170.2,"x":256.9,"y":-783.8}', NULL, NULL, 'user', 'T4pe ', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"black_money":0,"bank":5010,"money":5065}', '[]', NULL, 0, 1, 35, 1, -0.5);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:110000115e2693a', 'license:0c81d05f563a35aaf6ab7cddf31fde3efacc3d91', 0, NULL, '{"lipstick_1":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":0,"makeup_3":0,"torso_2":6,"makeup_4":0,"shoes_2":10,"torso_1":261,"eyebrows_2":0,"pants_2":1,"bags_2":0,"mask_2":0,"eye_color":0,"skin":26,"watches_2":0,"watches_1":-1,"helmet_1":115,"helmet_2":5,"arms":19,"age_1":0,"sex":0,"lipstick_3":0,"face":31,"bracelets_1":-1,"tshirt_1":38,"complexion_1":0,"chain_1":0,"shoes_1":0,"chest_1":0,"glasses_1":0,"decals_2":0,"moles_1":0,"blemishes_1":0,"tshirt_2":0,"decals_1":0,"complexion_2":0,"beard_3":0,"glasses_2":0,"hair_2":0,"mask_1":0,"bproof_2":0,"blush_1":0,"chest_2":0,"pants_1":4,"beard_4":0,"hair_color_1":2,"eyebrows_3":0,"eyebrows_4":0,"arms_2":0,"moles_2":0,"beard_1":0,"bodyb_1":0,"blush_3":0,"ears_1":-1,"hair_color_2":0,"bags_1":0,"bproof_1":0,"ears_2":0,"makeup_2":0,"bodyb_2":0,"eyebrows_1":0,"blush_2":0,"blemishes_2":0,"chain_2":0,"makeup_1":0,"bracelets_2":0,"age_2":0,"sun_2":0,"hair_1":12}', 'unemployed', 0, '{"weapon_combatpistol":{"ammo":200},"weapon_microsmg":{"ammo":200},"weapon_pumpshotgun":{"ammo":200},"WEAPON_CARBINERIFLE":{"ammo":200},"weapon_revolver":{"ammo":200},"weapon_bat":{"ammo":1},"weapon_smg":{"ammo":200},"WEAPON_ASSAULTRIFLE":{"ammo":200},"weapon_pistol50":{"ammo":200},"weapon_knife":{"ammo":1},"WEAPON_HEAVYSNIPER":{"ammo":7},"WEAPON_GUSENBERG":{"ammo":200}}', '{"y":39.1,"x":153.4,"heading":337.7,"z":73.4}', NULL, NULL, 'user', 'RataTaTaTa', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":10,"black_money":0,"money":10493}', '[]', NULL, 4, 3, 613, 1, 0.5);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:11000011742713d', 'license:604778e9f608cfe3eea36e7b17316c2732894566', 0, NULL, '{"helmet_1":116,"moles_1":0,"glasses_2":0,"hair_color_2":3,"makeup_1":0,"eyebrows_4":0,"eyebrows_2":0,"mask_2":0,"complexion_1":0,"bproof_2":0,"torso_2":0,"lipstick_3":0,"moles_2":0,"hair_1":48,"makeup_3":0,"sex":0,"chest_2":0,"tshirt_2":0,"chest_3":0,"age_1":0,"shoes_1":26,"lipstick_1":0,"shoes_2":1,"makeup_4":0,"arms":27,"sun_2":0,"glasses_1":0,"watches_1":-1,"beard_3":0,"complexion_2":0,"sun_1":0,"blemishes_2":0,"blush_3":0,"lipstick_2":0,"tshirt_1":15,"blemishes_1":0,"pants_2":0,"bags_1":0,"ears_1":-1,"hair_color_1":27,"face":31,"watches_2":0,"bags_2":0,"hair_2":0,"chain_1":112,"pants_1":71,"decals_1":0,"chest_1":0,"lipstick_4":0,"bodyb_2":0,"ears_2":0,"skin":4,"bproof_1":0,"decals_2":0,"beard_4":0,"eye_color":0,"blush_2":0,"bodyb_1":0,"mask_1":28,"helmet_2":0,"arms_2":0,"bracelets_2":0,"makeup_2":0,"blush_1":0,"eyebrows_3":0,"beard_2":0,"age_2":0,"chain_2":2,"beard_1":0,"torso_1":41,"eyebrows_1":0,"bracelets_1":-1}', 'unemployed', 0, '[]', '{"y":-779.6,"x":220.9,"heading":179.2,"z":30.8}', NULL, NULL, 'user', 'Pakcuyong Widjaja', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":60,"black_money":0,"money":26910}', '[]', NULL, 136, 77, 719, 1, 29.5);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:11000011798ea48', 'license:20ff231d69f7f8ad78c096f748d321eb99dfeb6f', 0, NULL, '{"helmet_1":117,"moles_1":0,"glasses_2":0,"hair_color_2":0,"skin":0,"eyebrows_4":0,"eyebrows_2":0,"mask_2":0,"complexion_1":0,"beard_4":0,"torso_2":6,"lipstick_3":0,"moles_2":0,"hair_1":2,"eyebrows_3":0,"sex":0,"chest_2":0,"tshirt_2":1,"chest_3":0,"age_1":0,"shoes_1":1,"lipstick_1":0,"shoes_2":1,"makeup_4":0,"arms":20,"sun_2":0,"glasses_1":0,"watches_1":-1,"beard_3":0,"bodyb_2":0,"sun_1":0,"blemishes_2":0,"blush_3":0,"lipstick_2":0,"tshirt_1":23,"blemishes_1":0,"pants_2":5,"bags_1":0,"ears_1":-1,"hair_color_1":29,"face":31,"watches_2":0,"beard_2":0,"hair_2":0,"chain_1":0,"pants_1":24,"decals_1":0,"chest_1":0,"lipstick_4":0,"bproof_2":0,"ears_2":0,"complexion_2":0,"bproof_1":0,"decals_2":0,"bags_2":0,"makeup_1":0,"eye_color":0,"torso_1":88,"mask_1":51,"helmet_2":0,"chain_2":0,"bodyb_1":0,"arms_2":0,"bracelets_2":0,"makeup_2":0,"makeup_3":0,"age_2":0,"blush_1":0,"beard_1":0,"blush_2":0,"eyebrows_1":0,"bracelets_1":-1}', 'unemployed', 0, '[]', '{"y":-779.6,"z":30.8,"heading":179.2,"x":220.9}', NULL, NULL, 'user', 'Bapakmu', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"black_money":0,"bank":5030,"money":13812}', '[]', NULL, 33, 64, 799, 1, -15.5);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:110000117debf9d', 'license:25cc2e7ca1f3520076e3ae2bffcc0131f0f67dd3', 0, NULL, '{"chest_2":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":0,"makeup_3":0,"torso_2":0,"bodyb_2":0,"shoes_2":0,"bproof_2":0,"eyebrows_2":0,"pants_2":0,"bags_2":0,"mask_2":0,"eye_color":0,"skin":0,"watches_2":0,"watches_1":-1,"helmet_1":-1,"helmet_2":0,"arms":0,"age_1":0,"sex":0,"lipstick_3":0,"face":0,"bracelets_1":-1,"tshirt_1":0,"complexion_1":0,"chain_1":0,"shoes_1":0,"chest_1":0,"glasses_1":0,"decals_2":0,"moles_1":0,"blemishes_1":0,"tshirt_2":0,"decals_1":0,"complexion_2":0,"bags_1":0,"blush_1":0,"bodyb_1":0,"makeup_4":0,"beard_3":0,"eyebrows_1":0,"lipstick_1":0,"pants_1":0,"sun_2":0,"hair_color_1":0,"eyebrows_3":0,"bracelets_2":0,"mask_1":0,"moles_2":0,"ears_2":0,"makeup_1":0,"blush_3":0,"ears_1":-1,"hair_color_2":0,"beard_1":0,"bproof_1":0,"torso_1":0,"makeup_2":0,"hair_2":0,"hair_1":0,"blush_2":0,"beard_4":0,"chain_2":0,"arms_2":0,"eyebrows_4":0,"age_2":0,"glasses_2":0,"blemishes_2":0}', 'unemployed', 0, '[]', '{"y":-779.5,"x":220.9,"heading":179.2,"z":30.8}', NULL, NULL, 'user', 'DExter', NULL, NULL, 'f', NULL, 0, 0, NULL, '{"bank":10,"black_money":0,"money":10188}', '[]', NULL, 32, 18, 796, 1, 7.5);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:110000118244d5f', 'license:4aee7d077d078d2b51569e3b7ec1cc82cc95868e', 0, NULL, '{"lipstick_1":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":0,"makeup_3":0,"torso_2":11,"bodyb_2":0,"shoes_2":9,"bproof_2":0,"eyebrows_2":0,"pants_2":7,"bags_2":0,"mask_2":7,"eye_color":0,"skin":14,"watches_2":0,"watches_1":-1,"helmet_1":109,"helmet_2":8,"arms":19,"age_1":0,"sex":0,"lipstick_3":0,"face":31,"mask_1":51,"tshirt_1":5,"complexion_1":0,"chain_1":0,"shoes_1":1,"chest_1":0,"glasses_1":0,"makeup_2":0,"hair_2":0,"blemishes_1":0,"tshirt_2":0,"decals_1":0,"complexion_2":0,"bags_1":45,"beard_4":0,"makeup_4":0,"torso_1":87,"ears_2":0,"hair_1":73,"chest_2":0,"pants_1":9,"glasses_2":0,"hair_color_1":0,"eyebrows_3":0,"bracelets_2":0,"arms_2":0,"moles_2":0,"beard_1":0,"bodyb_1":0,"blush_3":0,"ears_1":-1,"hair_color_2":0,"bracelets_1":-1,"bproof_1":0,"decals_2":0,"eyebrows_4":0,"moles_1":0,"blush_1":0,"blush_2":0,"blemishes_2":0,"chain_2":0,"beard_3":0,"makeup_1":0,"age_2":0,"eyebrows_1":0,"sun_2":0}', 'unemployed', 0, '{"weapon_combatpistol":{"ammo":200},"weapon_microsmg":{"ammo":200},"weapon_pumpshotgun":{"ammo":200},"WEAPON_CARBINERIFLE":{"ammo":200},"weapon_revolver":{"ammo":200},"weapon_bat":{"ammo":1},"weapon_smg":{"ammo":200},"WEAPON_ASSAULTRIFLE":{"ammo":200},"weapon_pistol50":{"ammo":200},"weapon_knife":{"ammo":1},"WEAPON_HEAVYSNIPER":{"ammo":7},"WEAPON_GUSENBERG":{"ammo":200}}', '{"y":219.1,"x":236.8,"heading":35.9,"z":110.3}', NULL, NULL, 'user', 'Sunip', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":50,"black_money":0,"money":13595}', '[]', NULL, 10, 31, 780, 1, -10.5);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:11000011948767e', 'license:068559881b0fd7017dfbbe26441c33464ec7d8c9', 0, NULL, '{"chest_2":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":0,"makeup_3":0,"torso_2":0,"bodyb_2":0,"shoes_2":0,"torso_1":0,"eyebrows_2":0,"pants_2":0,"bags_2":0,"mask_2":0,"eye_color":0,"skin":0,"watches_2":0,"watches_1":-1,"glasses_2":0,"helmet_2":0,"arms":0,"age_1":0,"sex":0,"lipstick_3":0,"face":0,"bracelets_1":-1,"tshirt_1":0,"complexion_1":0,"chain_1":0,"shoes_1":0,"chest_1":0,"glasses_1":0,"makeup_2":0,"hair_2":0,"blemishes_1":0,"tshirt_2":0,"decals_1":0,"blush_1":0,"bags_1":0,"mask_1":0,"bodyb_1":0,"eyebrows_1":0,"lipstick_1":0,"beard_3":0,"makeup_1":0,"pants_1":0,"ears_2":0,"hair_color_1":0,"eyebrows_3":0,"arms_2":0,"age_2":0,"moles_2":0,"beard_1":0,"sun_2":0,"blush_3":0,"ears_1":-1,"hair_color_2":0,"moles_1":0,"bproof_1":0,"helmet_1":-1,"decals_2":0,"makeup_4":0,"bproof_2":0,"blush_2":0,"beard_4":0,"chain_2":0,"complexion_2":0,"eyebrows_4":0,"hair_1":0,"bracelets_2":0,"blemishes_2":0}', 'unemployed', 0, '[]', '{"y":-784.9,"x":228.7,"heading":244.2,"z":30.7}', NULL, NULL, 'user', 'ASEP GOBLOK', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":4010,"black_money":0,"money":6232}', '[]', NULL, 20, 36, 775, 1, -7.5);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:110000119ba17be', 'license:96b3b6d869ff71e9def2de3689ad2f4646459d6b', 0, NULL, '{"chest_2":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":10,"lipstick_2":0,"makeup_3":0,"torso_2":0,"makeup_4":0,"shoes_2":0,"bproof_2":0,"eyebrows_2":6,"pants_2":0,"bags_2":0,"mask_2":0,"eye_color":0,"skin":0,"watches_2":0,"watches_1":-1,"glasses_2":0,"helmet_2":0,"arms":22,"age_1":0,"sex":0,"lipstick_3":0,"face":0,"mask_1":0,"tshirt_1":31,"complexion_1":0,"chain_1":12,"shoes_1":82,"chest_1":0,"glasses_1":0,"makeup_2":0,"hair_2":0,"blemishes_1":0,"tshirt_2":0,"decals_1":0,"blush_1":0,"bags_1":0,"helmet_1":115,"makeup_1":0,"bodyb_1":0,"eyebrows_4":0,"bodyb_2":0,"lipstick_1":0,"pants_1":24,"bracelets_1":-1,"hair_color_1":4,"eyebrows_3":0,"bracelets_2":0,"hair_1":55,"moles_2":0,"ears_2":0,"sun_2":0,"blush_3":0,"ears_1":-1,"hair_color_2":0,"decals_2":0,"bproof_1":0,"beard_1":11,"moles_1":0,"complexion_2":0,"torso_1":31,"blush_2":0,"blemishes_2":0,"chain_2":2,"arms_2":0,"eyebrows_1":5,"age_2":0,"beard_3":0,"beard_4":0}', 'unemployed', 0, '[]', '{"y":-783.3,"x":208.4,"heading":119.8,"z":31.0}', NULL, NULL, 'user', 'Rommy Raffael', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":5010,"black_money":0,"money":9524}', '[]', NULL, 23, 33, 778, 1, -5);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:11000011a8e518b', 'license:5045975e6487d2c96355e204ac8a0731b8b1b304', 0, NULL, '{"lipstick_1":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":0,"makeup_3":0,"torso_2":0,"bodyb_2":0,"shoes_2":0,"torso_1":157,"eyebrows_2":10,"pants_2":5,"bags_2":0,"mask_2":0,"eye_color":27,"eyebrows_1":30,"watches_2":0,"watches_1":-1,"helmet_1":117,"helmet_2":0,"arms":74,"age_1":0,"sex":0,"lipstick_3":0,"face":21,"bracelets_1":-1,"tshirt_1":81,"complexion_1":0,"chain_1":0,"shoes_1":8,"chest_1":0,"glasses_1":0,"decals_2":0,"hair_2":5,"blemishes_1":0,"tshirt_2":0,"decals_1":0,"complexion_2":0,"bags_1":0,"moles_1":0,"beard_4":0,"mask_1":0,"chest_2":0,"sun_2":0,"bracelets_2":0,"pants_1":24,"glasses_2":0,"hair_color_1":36,"eyebrows_3":0,"eyebrows_4":0,"beard_3":0,"moles_2":0,"ears_2":0,"makeup_1":0,"blush_3":37,"ears_1":-1,"hair_color_2":37,"bproof_2":0,"bproof_1":0,"blush_1":7,"makeup_4":0,"makeup_2":0,"skin":0,"blush_2":10,"blemishes_2":0,"chain_2":0,"arms_2":0,"hair_1":13,"age_2":0,"beard_1":0,"bodyb_1":0}', 'unemployed', 0, '[]', '{"y":3468.6,"x":2757.2,"heading":0.0,"z":56.7}', NULL, NULL, 'user', 'EL Lister', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":4000,"black_money":0,"money":1000}', '[]', NULL, 0, 0, 0, 1, 0);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:11000011b28ae50', 'license:e4040370c5ce129192b0cec1fad92d3299f06486', 0, NULL, '{"helmet_1":115,"eye_color":0,"glasses_2":0,"hair_color_2":0,"skin":0,"eyebrows_4":0,"eyebrows_2":0,"mask_2":0,"complexion_1":0,"bproof_2":0,"eyebrows_1":0,"lipstick_3":0,"moles_2":0,"hair_1":0,"torso_1":0,"sex":0,"chest_2":0,"tshirt_2":0,"chest_3":0,"age_1":0,"shoes_1":0,"lipstick_1":0,"shoes_2":0,"makeup_4":0,"arms":0,"sun_2":0,"glasses_1":0,"watches_1":-1,"beard_3":0,"bodyb_2":0,"sun_1":0,"blemishes_2":0,"blush_3":0,"lipstick_2":0,"tshirt_1":0,"arms_2":0,"pants_2":0,"bags_1":0,"ears_1":-1,"hair_color_1":0,"face":0,"watches_2":0,"bags_2":0,"hair_2":0,"chain_1":0,"pants_1":0,"decals_1":0,"chest_1":0,"lipstick_4":0,"bodyb_1":0,"ears_2":0,"torso_2":0,"bproof_1":0,"decals_2":0,"blush_2":0,"moles_1":0,"blemishes_1":0,"makeup_1":0,"mask_1":0,"helmet_2":0,"bracelets_2":0,"makeup_2":0,"complexion_2":0,"beard_2":0,"makeup_3":0,"chain_2":0,"age_2":0,"blush_1":0,"beard_1":0,"beard_4":0,"eyebrows_3":0,"bracelets_1":-1}', 'unemployed', 0, '{"weapon_bat":{"ammo":1},"weapon_pumpshotgun":{"ammo":200},"WEAPON_ASSAULTRIFLE":{"ammo":200},"weapon_microsmg":{"ammo":200},"WEAPON_HEAVYSNIPER":{"ammo":7},"WEAPON_GUSENBERG":{"ammo":200},"WEAPON_CARBINERIFLE":{"ammo":200},"weapon_pistol50":{"ammo":200},"weapon_knife":{"ammo":1},"weapon_combatpistol":{"ammo":200},"weapon_revolver":{"ammo":200},"weapon_smg":{"ammo":200}}', '{"y":-887.7,"z":30.4,"heading":24.6,"x":160.1}', NULL, NULL, 'user', 'Ujang', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"black_money":0,"bank":5010,"money":12814}', '[]', NULL, 45, 30, 796, 1, 7.5);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:11000011b881ff5', 'license:4a4e17dc2a2b640d71514b415070d36b180cefff', 0, NULL, '{"chest_2":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":10,"lipstick_2":0,"makeup_3":0,"torso_2":9,"makeup_4":0,"shoes_2":0,"bproof_2":0,"eyebrows_2":10,"pants_2":3,"bags_2":0,"mask_2":0,"eye_color":0,"skin":5,"watches_2":0,"watches_1":-1,"glasses_2":2,"helmet_2":0,"arms":1,"age_1":0,"sex":0,"lipstick_3":0,"face":10,"mask_1":0,"tshirt_1":13,"complexion_1":0,"chain_1":11,"shoes_1":0,"chest_1":0,"glasses_1":2,"makeup_2":0,"hair_2":0,"blemishes_1":0,"tshirt_2":2,"decals_1":0,"complexion_2":0,"beard_3":0,"age_2":0,"decals_2":0,"blush_1":0,"bags_1":0,"sun_2":0,"lipstick_1":0,"pants_1":15,"eyebrows_4":0,"hair_color_1":14,"eyebrows_3":0,"arms_2":0,"bracelets_1":-1,"moles_2":0,"beard_1":2,"makeup_1":0,"blush_3":0,"ears_1":-1,"hair_color_2":0,"bodyb_2":0,"bproof_1":0,"eyebrows_1":7,"torso_1":88,"bracelets_2":0,"bodyb_1":0,"blush_2":0,"beard_4":0,"chain_2":7,"moles_1":0,"ears_2":0,"hair_1":73,"helmet_1":4,"blemishes_2":0}', 'unemployed', 0, '[]', '{"y":-786.6,"x":224.2,"heading":215.3,"z":30.7}', NULL, NULL, 'user', 'BANGFFA', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":5010,"black_money":0,"money":6483}', '[]', NULL, 4, 17, 784, 1, -6);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:110000131e9f768', 'license:ddd90844516355de0295a7eeabf4c3121ae817e8', 0, NULL, '{"lipstick_1":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":0,"makeup_3":0,"torso_2":6,"bodyb_2":0,"shoes_2":8,"torso_1":261,"eyebrows_2":0,"pants_2":0,"bags_2":0,"mask_2":0,"eye_color":0,"eyebrows_1":0,"watches_2":0,"watches_1":-1,"glasses_2":0,"helmet_2":5,"arms":17,"age_1":0,"sex":0,"lipstick_3":0,"face":37,"bracelets_1":-1,"tshirt_1":23,"complexion_1":0,"chain_1":0,"shoes_1":9,"chest_1":0,"glasses_1":0,"makeup_2":0,"moles_1":0,"blemishes_1":0,"tshirt_2":1,"decals_1":0,"complexion_2":0,"beard_3":0,"mask_1":0,"bracelets_2":0,"bproof_2":0,"decals_2":0,"hair_2":0,"chest_2":0,"pants_1":24,"skin":21,"hair_color_1":0,"eyebrows_3":0,"arms_2":0,"makeup_4":0,"moles_2":0,"beard_1":0,"bodyb_1":0,"blush_3":0,"ears_1":-1,"hair_color_2":0,"sun_2":0,"bproof_1":0,"eyebrows_4":0,"blush_1":0,"age_2":0,"helmet_1":115,"blush_2":0,"blemishes_2":0,"chain_2":0,"bags_1":0,"beard_4":0,"hair_1":58,"ears_2":0,"makeup_1":0}', 'unemployed', 0, '[]', '{"y":-784.1,"x":222.0,"heading":214.4,"z":30.8}', NULL, NULL, 'user', 'AIM', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":5010,"black_money":0,"money":5458}', '[]', NULL, 1, 5, 317, 1, -2);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:110000132a16b4a', 'license:224445e8c8be44c2c98ac750b5857c2a73f4f013', 0, NULL, '{"helmet_1":-1,"moles_1":0,"glasses_2":0,"hair_color_2":0,"makeup_1":0,"eyebrows_4":0,"eyebrows_2":0,"mask_2":0,"complexion_1":0,"bproof_2":0,"bracelets_2":0,"lipstick_3":0,"moles_2":0,"hair_1":0,"makeup_3":0,"sex":0,"chest_2":0,"tshirt_2":0,"chest_3":0,"age_1":0,"shoes_1":0,"lipstick_1":0,"shoes_2":0,"makeup_4":0,"arms":0,"sun_2":0,"glasses_1":0,"watches_1":-1,"beard_3":0,"bodyb_2":0,"sun_1":0,"blemishes_2":0,"blush_3":0,"lipstick_2":0,"tshirt_1":0,"blemishes_1":0,"pants_2":0,"bags_1":0,"ears_1":-1,"hair_color_1":0,"face":0,"watches_2":0,"beard_2":0,"hair_2":0,"chain_1":0,"pants_1":0,"decals_1":0,"chest_1":0,"lipstick_4":0,"blush_2":0,"ears_2":0,"bags_2":0,"bproof_1":0,"decals_2":0,"makeup_2":0,"eye_color":0,"bodyb_1":0,"skin":0,"mask_1":0,"helmet_2":0,"torso_1":0,"arms_2":0,"beard_4":0,"torso_2":0,"complexion_2":0,"eyebrows_3":0,"age_2":0,"chain_2":0,"beard_1":0,"eyebrows_1":0,"blush_1":0,"bracelets_1":-1}', 'unemployed', 0, '{"weapon_bat":{"ammo":1},"weapon_pumpshotgun":{"ammo":200},"WEAPON_ASSAULTRIFLE":{"ammo":200},"weapon_microsmg":{"ammo":200},"WEAPON_HEAVYSNIPER":{"ammo":7},"WEAPON_GUSENBERG":{"ammo":200},"WEAPON_CARBINERIFLE":{"ammo":200},"weapon_pistol50":{"ammo":200},"weapon_knife":{"ammo":1},"weapon_combatpistol":{"ammo":200},"weapon_revolver":{"ammo":200},"weapon_smg":{"ammo":200}}', '{"y":-846.7,"z":31.2,"heading":309.7,"x":175.7}', NULL, NULL, 'user', 'Rizky Cikadap', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"black_money":0,"bank":5010,"money":7647}', '[]', NULL, 11, 16, 777, 1, -2.5);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:110000132da7fdf', 'license:4741382a810c055ca8a3f3f0a18abc6777a099a3', 0, NULL, '{"chest_2":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":0,"makeup_3":0,"torso_2":0,"bodyb_2":0,"shoes_2":0,"torso_1":0,"eyebrows_2":0,"pants_2":0,"bags_2":0,"mask_2":0,"eye_color":0,"eyebrows_1":0,"watches_2":0,"watches_1":-1,"glasses_2":0,"helmet_2":3,"arms":0,"age_1":0,"sex":0,"lipstick_3":0,"face":0,"mask_1":0,"tshirt_1":0,"complexion_1":0,"chain_1":0,"shoes_1":6,"chest_1":0,"glasses_1":0,"decals_2":0,"moles_1":0,"blemishes_1":0,"tshirt_2":0,"decals_1":0,"complexion_2":0,"bags_1":44,"helmet_1":115,"sun_2":0,"bracelets_1":-1,"blemishes_2":0,"lipstick_1":0,"makeup_4":0,"pants_1":28,"eyebrows_4":0,"hair_color_1":29,"eyebrows_3":0,"bracelets_2":0,"age_2":0,"moles_2":0,"ears_2":0,"bodyb_1":0,"blush_3":0,"ears_1":-1,"hair_color_2":0,"makeup_2":0,"bproof_1":0,"arms_2":0,"blush_1":0,"hair_2":0,"beard_3":0,"blush_2":0,"beard_4":0,"chain_2":0,"bproof_2":0,"makeup_1":0,"hair_1":2,"skin":6,"beard_1":0}', 'unemployed', 0, '[]', '{"y":-900.6,"x":175.5,"heading":323.6,"z":29.9}', NULL, NULL, 'user', 'Maurenno', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":3030,"black_money":0,"money":13805}', '[]', NULL, 54, 66, 785, 1, -5.5);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:11000013347abb5', 'license:552944a5ae5c26e5ed88151ca646272dc8ef8c56', 0, NULL, '{"lipstick_1":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":0,"makeup_3":0,"torso_2":8,"bodyb_2":0,"shoes_2":2,"bproof_2":0,"eyebrows_2":0,"pants_2":0,"bags_2":0,"mask_2":0,"eye_color":0,"eyebrows_1":0,"watches_2":0,"watches_1":-1,"glasses_2":0,"helmet_2":0,"arms":0,"age_1":0,"sex":0,"lipstick_3":0,"face":33,"mask_1":0,"tshirt_1":130,"complexion_1":0,"chain_1":0,"shoes_1":5,"chest_1":0,"glasses_1":0,"makeup_2":0,"moles_1":0,"blemishes_1":0,"tshirt_2":0,"decals_1":0,"complexion_2":0,"beard_3":0,"bodyb_1":0,"torso_1":87,"blush_1":0,"bags_1":0,"hair_1":3,"decals_2":0,"pants_1":6,"chest_2":0,"hair_color_1":11,"eyebrows_3":0,"arms_2":0,"hair_2":0,"moles_2":0,"beard_1":0,"sun_2":0,"blush_3":0,"ears_1":-1,"hair_color_2":0,"bracelets_1":0,"bproof_1":0,"makeup_1":0,"makeup_4":0,"helmet_1":115,"ears_2":0,"blush_2":0,"blemishes_2":0,"chain_2":0,"skin":45,"eyebrows_4":0,"age_2":0,"bracelets_2":0,"beard_4":0}', 'unemployed', 0, '[]', '{"y":3467.1,"x":2760.7,"heading":194.9,"z":55.2}', NULL, NULL, 'user', 'Dadang Spakbor', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":5050,"black_money":0,"money":6904}', '[]', NULL, 29, 44, 728, 1, -7.5);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:11000013455ee53', 'license:2f8f7d683cf7f49fa03d4f5a5980726d12bb7c7d', 0, NULL, NULL, 'unemployed', 0, '[]', '{"y":-761.7,"x":231.7,"heading":0.0,"z":30.8}', NULL, NULL, 'user', '', '', '', '', '', 0, 0, NULL, '{"bank":5010,"black_money":0,"money":5000}', '[]', NULL, 0, 0, 0, 1, 0);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:1100001345f100a', 'license:2b7214178cf51a2cc71064f98bee7d0cb459203d', 0, NULL, '{"helmet_1":-1,"eye_color":0,"glasses_2":0,"hair_color_2":1,"makeup_1":0,"eyebrows_4":0,"eyebrows_2":0,"mask_2":0,"complexion_1":0,"beard_4":0,"eyebrows_1":0,"lipstick_3":0,"moles_2":0,"hair_1":18,"makeup_3":0,"sex":0,"chest_2":0,"tshirt_2":0,"chest_3":0,"age_1":0,"shoes_1":1,"lipstick_1":0,"shoes_2":0,"makeup_4":0,"arms":0,"sun_2":0,"glasses_1":0,"watches_1":-1,"beard_3":0,"complexion_2":0,"sun_1":0,"blemishes_2":0,"blush_3":0,"lipstick_2":0,"tshirt_1":14,"arms_2":0,"pants_2":1,"bags_1":0,"ears_1":-1,"hair_color_1":1,"face":40,"watches_2":0,"beard_2":0,"hair_2":1,"chain_1":0,"pants_1":4,"decals_1":0,"chest_1":0,"lipstick_4":0,"eyebrows_3":0,"ears_2":0,"blemishes_1":0,"bproof_1":0,"decals_2":0,"makeup_2":0,"moles_1":0,"blush_1":0,"skin":33,"mask_1":0,"helmet_2":0,"bodyb_1":0,"bproof_2":0,"torso_2":1,"bags_2":0,"bracelets_2":0,"torso_1":37,"age_2":0,"chain_2":0,"beard_1":0,"blush_2":0,"bodyb_2":0,"bracelets_1":-1}', 'unemployed', 0, '[]', '{"y":-779.6,"x":220.9,"heading":179.2,"z":30.8}', NULL, NULL, 'user', 'GANGSTER SOLO', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":10,"black_money":0,"money":10326}', '[]', NULL, 51, 45, 782, 1, 3);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:110000135cc326e', 'license:f85e9598124dbb624c34325ed6d5b9aec10241a1', 0, NULL, '{"lipstick_1":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":0,"makeup_3":0,"torso_2":0,"bodyb_2":0,"shoes_2":0,"torso_1":0,"eyebrows_2":0,"pants_2":0,"bags_2":0,"mask_2":0,"eye_color":0,"skin":0,"watches_2":0,"watches_1":-1,"helmet_1":-1,"helmet_2":0,"arms":0,"age_1":0,"sex":0,"lipstick_3":0,"face":0,"mask_1":0,"tshirt_1":0,"complexion_1":0,"chain_1":0,"shoes_1":0,"chest_1":0,"glasses_1":0,"decals_2":0,"moles_1":0,"blemishes_1":0,"tshirt_2":0,"decals_1":0,"blush_1":0,"bags_1":0,"complexion_2":0,"bproof_2":0,"beard_4":0,"sun_2":0,"hair_2":0,"bracelets_1":-1,"pants_1":0,"age_2":0,"hair_color_1":0,"eyebrows_3":0,"bracelets_2":0,"chest_2":0,"moles_2":0,"beard_1":0,"bodyb_1":0,"blush_3":0,"ears_1":-1,"hair_color_2":0,"ears_2":0,"bproof_1":0,"makeup_4":0,"eyebrows_1":0,"makeup_2":0,"beard_3":0,"blush_2":0,"blemishes_2":0,"chain_2":0,"makeup_1":0,"glasses_2":0,"hair_1":0,"arms_2":0,"eyebrows_4":0}', 'unemployed', 0, '{"weapon_combatpistol":{"ammo":200},"weapon_microsmg":{"ammo":200},"weapon_pumpshotgun":{"ammo":200},"WEAPON_CARBINERIFLE":{"ammo":200},"weapon_revolver":{"ammo":200},"weapon_bat":{"ammo":1},"weapon_smg":{"ammo":200},"WEAPON_ASSAULTRIFLE":{"ammo":200},"weapon_pistol50":{"ammo":200},"weapon_knife":{"ammo":1},"WEAPON_HEAVYSNIPER":{"ammo":7},"WEAPON_GUSENBERG":{"ammo":200}}', '{"y":-800.9,"x":211.4,"heading":82.8,"z":30.9}', NULL, NULL, 'user', 'Jang Goh', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":5000,"black_money":0,"money":5084}', '[]', NULL, 1, 2, 142, 1, -0.5);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:110000136df4de2', 'license:ac8e4fa75579ad013639123d03758b6706582ec9', 0, NULL, '{"lipstick_1":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":0,"makeup_3":0,"torso_2":8,"makeup_4":0,"shoes_2":0,"bproof_2":0,"eyebrows_2":0,"pants_2":0,"bags_2":0,"mask_2":0,"eye_color":0,"eyebrows_1":0,"watches_2":0,"watches_1":-1,"helmet_1":-1,"helmet_2":0,"arms":14,"age_1":0,"sex":1,"lipstick_3":0,"face":26,"bracelets_1":-1,"tshirt_1":15,"complexion_1":0,"chain_1":1,"shoes_1":0,"chest_1":0,"glasses_1":1,"makeup_2":0,"hair_2":4,"blemishes_1":0,"tshirt_2":0,"decals_1":0,"complexion_2":0,"beard_3":0,"bracelets_2":0,"moles_1":0,"bodyb_2":0,"chest_2":0,"bodyb_1":0,"mask_1":0,"pants_1":4,"arms_2":0,"hair_color_1":6,"eyebrows_3":0,"eyebrows_4":0,"hair_1":22,"moles_2":0,"ears_2":0,"sun_2":0,"blush_3":0,"ears_1":-1,"hair_color_2":0,"beard_1":0,"bproof_1":0,"skin":8,"beard_4":0,"decals_2":0,"glasses_2":7,"blush_2":0,"blemishes_2":0,"chain_2":0,"blush_1":0,"bags_1":0,"age_2":0,"torso_1":81,"makeup_1":0}', 'unemployed', 0, '{"weapon_combatpistol":{"ammo":200},"weapon_microsmg":{"ammo":200},"weapon_pumpshotgun":{"ammo":200},"WEAPON_CARBINERIFLE":{"ammo":200},"weapon_revolver":{"ammo":200},"weapon_bat":{"ammo":1},"weapon_smg":{"ammo":200},"WEAPON_ASSAULTRIFLE":{"ammo":200},"weapon_pistol50":{"ammo":200},"weapon_knife":{"ammo":1},"WEAPON_HEAVYSNIPER":{"ammo":7},"WEAPON_GUSENBERG":{"ammo":200}}', '{"y":-782.9,"x":225.9,"heading":246.3,"z":30.8}', NULL, NULL, 'user', 'Srintil Gimang', NULL, NULL, 'f', NULL, 0, 0, NULL, '{"bank":5040,"black_money":0,"money":14616}', '[]', NULL, 52, 47, 695, 1, 2.5);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:110000139aba729', 'license:4c661f26160885fe8d2de8257d444b205bc59039', 0, NULL, '{"chest_2":10,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":0,"makeup_3":0,"torso_2":8,"bodyb_2":0,"shoes_2":2,"torso_1":88,"eyebrows_2":10,"pants_2":5,"bags_2":0,"mask_2":0,"eye_color":0,"skin":21,"watches_2":0,"watches_1":-1,"helmet_1":112,"helmet_2":5,"arms":39,"age_1":0,"sex":0,"lipstick_3":0,"face":31,"mask_1":58,"tshirt_1":15,"complexion_1":0,"chain_1":43,"shoes_1":26,"chest_1":9,"glasses_1":0,"makeup_2":0,"moles_1":0,"blemishes_1":0,"tshirt_2":0,"decals_1":0,"blush_1":0,"bags_1":0,"sun_2":0,"bracelets_1":-1,"beard_1":0,"beard_3":0,"blemishes_2":0,"lipstick_1":0,"pants_1":24,"makeup_4":0,"hair_color_1":2,"eyebrows_3":0,"arms_2":0,"eyebrows_1":10,"moles_2":0,"ears_2":0,"bodyb_1":0,"blush_3":0,"ears_1":8,"hair_color_2":10,"age_2":0,"bproof_1":0,"eyebrows_4":0,"decals_2":0,"glasses_2":0,"bracelets_2":0,"blush_2":0,"beard_4":0,"chain_2":0,"hair_2":0,"complexion_2":0,"hair_1":48,"bproof_2":0,"makeup_1":0}', 'unemployed', 0, '[]', '{"y":-783.5,"x":230.7,"heading":161.1,"z":30.7}', NULL, NULL, 'user', 'BOREN', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":5040,"black_money":0,"money":10519}', '[]', NULL, 28, 29, 761, 1, -0.5);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:11000013b290a0e', 'license:878758021a8a5570ceab801d89f1fcaa398c6860', 0, NULL, '{"chest_2":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":0,"makeup_3":0,"torso_2":0,"bodyb_2":0,"shoes_2":0,"torso_1":0,"eyebrows_2":0,"pants_2":0,"bags_2":0,"mask_2":0,"eye_color":0,"skin":0,"watches_2":0,"watches_1":-1,"glasses_2":0,"helmet_2":0,"arms":0,"age_1":0,"sex":0,"lipstick_3":0,"face":0,"bracelets_1":-1,"tshirt_1":0,"complexion_1":0,"chain_1":0,"shoes_1":0,"chest_1":0,"glasses_1":0,"decals_2":0,"moles_1":0,"blemishes_1":0,"tshirt_2":0,"decals_1":0,"complexion_2":0,"beard_3":0,"makeup_1":0,"eyebrows_1":0,"makeup_2":0,"lipstick_1":0,"bags_1":0,"hair_2":0,"pants_1":0,"makeup_4":0,"hair_color_1":0,"eyebrows_3":0,"eyebrows_4":0,"mask_1":0,"moles_2":0,"ears_2":0,"bodyb_1":0,"blush_3":0,"ears_1":-1,"hair_color_2":0,"blush_1":0,"bproof_1":0,"beard_1":0,"arms_2":0,"bracelets_2":0,"beard_4":0,"blush_2":0,"blemishes_2":0,"chain_2":0,"age_2":0,"bproof_2":0,"hair_1":0,"helmet_1":-1,"sun_2":0}', 'unemployed', 0, '[]', '{"y":-788.8,"x":218.0,"heading":147.0,"z":30.3}', NULL, NULL, 'user', 'Cepay', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":5010,"black_money":0,"money":8721}', '[]', NULL, 24, 10, 754, 1, 7);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:11000013c0dce06', 'license:65425d71e18c2235cb0fcc94932661aff92e3553', 0, NULL, '{"lipstick_1":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":0,"makeup_3":0,"torso_2":0,"makeup_4":0,"shoes_2":2,"bproof_2":0,"eyebrows_2":9,"pants_2":5,"bags_2":0,"mask_2":13,"eye_color":2,"eyebrows_1":12,"watches_2":0,"watches_1":-1,"glasses_2":0,"helmet_2":7,"arms":52,"age_1":0,"sex":0,"lipstick_3":0,"face":33,"bracelets_1":-1,"tshirt_1":131,"complexion_1":0,"chain_1":0,"shoes_1":31,"chest_1":0,"glasses_1":0,"makeup_2":0,"hair_2":0,"blemishes_1":0,"tshirt_2":3,"decals_1":0,"complexion_2":0,"beard_3":0,"bags_1":0,"makeup_1":0,"age_2":0,"torso_1":22,"chest_2":0,"helmet_1":103,"pants_1":24,"mask_1":116,"hair_color_1":29,"eyebrows_3":29,"bracelets_2":0,"arms_2":6,"moles_2":0,"ears_2":0,"bodyb_1":0,"blush_3":0,"ears_1":-1,"hair_color_2":2,"moles_1":0,"bproof_1":0,"decals_2":0,"blush_1":0,"beard_1":0,"bodyb_2":0,"blush_2":0,"blemishes_2":0,"chain_2":0,"eyebrows_4":0,"skin":7,"hair_1":66,"sun_2":0,"beard_4":0}', 'unemployed', 0, '[]', '{"y":-841.5,"x":206.4,"heading":166.8,"z":30.7}', NULL, NULL, 'user', 'Ray', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":5030,"black_money":0,"money":19834}', '[]', NULL, 83, 63, 789, 1, 10);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:11000013c35a890', 'license:8b1bdd03f202b82f9769168ca8c917183d65204c', 0, NULL, '{"lipstick_1":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":10,"makeup_3":0,"torso_2":2,"makeup_4":0,"shoes_2":1,"bproof_2":1,"eyebrows_2":0,"pants_2":1,"bags_2":0,"mask_2":0,"eye_color":0,"eyebrows_1":0,"watches_2":0,"watches_1":-1,"helmet_1":25,"helmet_2":0,"arms":1,"age_1":0,"sex":1,"lipstick_3":20,"face":25,"bracelets_1":-1,"tshirt_1":0,"complexion_1":0,"chain_1":9,"shoes_1":5,"chest_1":0,"glasses_1":0,"makeup_2":10,"hair_2":0,"blemishes_1":0,"tshirt_2":0,"decals_1":0,"complexion_2":0,"beard_3":0,"blush_1":0,"moles_1":0,"age_2":0,"bodyb_1":0,"bags_1":0,"chest_2":0,"pants_1":0,"torso_1":1,"hair_color_1":15,"eyebrows_3":0,"arms_2":0,"mask_1":0,"moles_2":0,"beard_1":0,"makeup_1":0,"blush_3":0,"ears_1":-1,"hair_color_2":15,"blemishes_2":0,"bproof_1":6,"ears_2":0,"sun_2":0,"glasses_2":0,"bracelets_2":0,"blush_2":0,"beard_4":0,"chain_2":0,"decals_2":0,"bodyb_2":0,"hair_1":49,"eyebrows_4":0,"skin":5}', 'unemployed', 0, '[]', '{"y":-781.5,"x":251.1,"heading":119.1,"z":30.6}', NULL, NULL, 'user', 'SINTIATAI', NULL, NULL, 'f', NULL, 0, 0, NULL, '{"bank":5000,"black_money":0,"money":5608}', '[]', NULL, 3, 3, 363, 1, 0);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:11000013cb2b348', 'license:341aba86325d6642529dbd5488b55c9ff44559ec', 0, NULL, '{"chest_2":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":0,"makeup_3":0,"torso_2":2,"makeup_4":0,"shoes_2":0,"torso_1":82,"eyebrows_2":0,"pants_2":0,"bags_2":0,"mask_2":0,"eye_color":0,"skin":10,"watches_2":0,"watches_1":-1,"glasses_2":0,"helmet_2":0,"arms":0,"age_1":0,"sex":0,"lipstick_3":0,"face":31,"bracelets_1":-1,"tshirt_1":15,"complexion_1":0,"chain_1":0,"shoes_1":1,"chest_1":0,"glasses_1":0,"makeup_2":0,"moles_1":0,"blemishes_1":0,"tshirt_2":0,"decals_1":0,"complexion_2":0,"bags_1":0,"makeup_1":0,"helmet_1":-1,"bodyb_2":0,"ears_2":0,"lipstick_1":0,"mask_1":0,"pants_1":24,"decals_2":0,"hair_color_1":14,"eyebrows_3":0,"bracelets_2":0,"sun_2":0,"moles_2":0,"beard_1":0,"bodyb_1":0,"blush_3":0,"ears_1":-1,"hair_color_2":0,"beard_3":0,"bproof_1":0,"eyebrows_1":0,"blush_1":0,"arms_2":0,"beard_4":0,"blush_2":0,"blemishes_2":0,"chain_2":0,"hair_2":0,"bproof_2":0,"hair_1":47,"eyebrows_4":0,"age_2":0}', 'unemployed', 0, '[]', '{"y":-784.6,"x":229.6,"heading":168.1,"z":30.7}', NULL, NULL, 'user', 'Jamal Supri', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":5000,"black_money":0,"money":0}', '{"bulletproof":1}', NULL, 0, 0, 0, 1, 0);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:11000013cc5a9d1', 'license:37658ccd0232a4c68d9a19b10dc229c325dd113f', 0, NULL, '{"chest_2":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":0,"makeup_3":0,"torso_2":0,"makeup_4":0,"shoes_2":1,"torso_1":0,"eyebrows_2":0,"pants_2":4,"bags_2":0,"mask_2":0,"eye_color":0,"skin":0,"watches_2":0,"watches_1":-1,"helmet_1":0,"helmet_2":0,"arms":0,"age_1":0,"sex":0,"lipstick_3":0,"face":0,"mask_1":0,"tshirt_1":2,"complexion_1":0,"chain_1":2,"shoes_1":0,"chest_1":0,"glasses_1":0,"decals_2":0,"moles_1":0,"blemishes_1":0,"tshirt_2":0,"decals_1":0,"complexion_2":0,"beard_3":0,"makeup_2":0,"bags_1":10,"bproof_2":0,"ears_2":0,"lipstick_1":0,"glasses_2":0,"pants_1":42,"bracelets_1":1,"hair_color_1":20,"eyebrows_3":0,"bracelets_2":0,"arms_2":0,"moles_2":0,"beard_1":0,"sun_2":0,"blush_3":0,"ears_1":-1,"hair_color_2":0,"hair_1":3,"bproof_1":0,"bodyb_2":0,"hair_2":0,"bodyb_1":0,"blush_1":0,"blush_2":0,"beard_4":0,"chain_2":0,"blemishes_2":0,"eyebrows_4":0,"age_2":0,"eyebrows_1":0,"makeup_1":0}', 'unemployed', 0, '{"weapon_combatpistol":{"ammo":200},"weapon_microsmg":{"ammo":200},"weapon_pumpshotgun":{"ammo":200},"WEAPON_CARBINERIFLE":{"ammo":200},"weapon_revolver":{"ammo":200},"weapon_bat":{"ammo":1},"weapon_smg":{"ammo":200},"WEAPON_ASSAULTRIFLE":{"ammo":200},"weapon_pistol50":{"ammo":200},"weapon_knife":{"ammo":1},"WEAPON_HEAVYSNIPER":{"ammo":7},"WEAPON_GUSENBERG":{"ammo":200}}', '{"y":-852.9,"x":211.0,"heading":346.5,"z":30.5}', NULL, NULL, 'user', 'Antonio', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":5000,"black_money":0,"money":5572}', '[]', NULL, 3, 3, 460, 1, 0);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:11000013cc9404f', 'license:29ba45fbdf6de2e732ab04cb99fe9a1a0eafd421', 0, NULL, '{"lipstick_1":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":0,"makeup_3":0,"torso_2":3,"bodyb_2":0,"shoes_2":0,"torso_1":60,"eyebrows_2":0,"pants_2":0,"bags_2":0,"mask_2":0,"eye_color":0,"skin":0,"watches_2":0,"watches_1":-1,"helmet_1":-1,"helmet_2":0,"arms":0,"age_1":0,"sex":0,"lipstick_3":0,"face":4,"mask_1":0,"tshirt_1":72,"complexion_1":0,"chain_1":0,"shoes_1":3,"chest_1":0,"glasses_1":0,"decals_2":0,"moles_1":0,"blemishes_1":0,"tshirt_2":3,"decals_1":0,"blush_1":0,"beard_3":0,"bracelets_1":-1,"chest_2":0,"eyebrows_4":0,"age_2":0,"hair_2":0,"blemishes_2":0,"pants_1":24,"makeup_1":0,"hair_color_1":11,"eyebrows_3":0,"bracelets_2":0,"bags_1":0,"moles_2":0,"beard_1":0,"sun_2":0,"blush_3":0,"ears_1":-1,"hair_color_2":0,"makeup_4":0,"bproof_1":0,"bodyb_1":0,"arms_2":0,"makeup_2":0,"eyebrows_1":0,"blush_2":0,"beard_4":0,"chain_2":0,"complexion_2":0,"bproof_2":0,"hair_1":57,"glasses_2":0,"ears_2":0}', 'unemployed', 0, '[]', '{"y":-779.6,"x":220.9,"heading":179.2,"z":30.8}', NULL, NULL, 'user', 'Rafli Saputra', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":5010,"black_money":0,"money":331}', '[]', NULL, 12, 13, 792, 1, 0);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:11000013e55ba0d', 'license:c8d9690dd54c8c7385a27351d71ce74e4ab2b95e', 0, NULL, '{"chest_2":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":0,"makeup_3":0,"torso_2":2,"bodyb_2":0,"shoes_2":15,"bproof_2":0,"eyebrows_2":0,"pants_2":8,"bags_2":0,"mask_2":0,"eye_color":0,"eyebrows_1":0,"watches_2":0,"watches_1":-1,"glasses_2":0,"helmet_2":19,"arms":4,"age_1":0,"sex":1,"lipstick_3":0,"face":31,"bracelets_1":-1,"tshirt_1":0,"complexion_1":0,"chain_1":0,"shoes_1":1,"chest_1":0,"glasses_1":5,"makeup_2":0,"hair_2":0,"blemishes_1":0,"tshirt_2":0,"decals_1":0,"blush_1":0,"beard_3":0,"beard_4":0,"complexion_2":0,"decals_2":0,"mask_1":51,"arms_2":0,"lipstick_1":0,"pants_1":14,"beard_1":0,"hair_color_1":0,"eyebrows_3":0,"eyebrows_4":0,"bags_1":0,"moles_2":0,"ears_2":0,"makeup_1":0,"blush_3":0,"ears_1":-1,"hair_color_2":0,"makeup_4":0,"bproof_1":0,"helmet_1":76,"age_2":0,"moles_1":0,"bodyb_1":0,"blush_2":0,"blemishes_2":0,"chain_2":0,"torso_1":167,"skin":0,"hair_1":48,"bracelets_2":0,"sun_2":0}', 'unemployed', 0, '{"weapon_combatpistol":{"ammo":200},"weapon_microsmg":{"ammo":200},"weapon_pumpshotgun":{"ammo":200},"WEAPON_CARBINERIFLE":{"ammo":200},"weapon_revolver":{"ammo":200},"weapon_bat":{"ammo":1},"weapon_smg":{"ammo":200},"WEAPON_ASSAULTRIFLE":{"ammo":200},"weapon_pistol50":{"ammo":200},"weapon_knife":{"ammo":1},"WEAPON_HEAVYSNIPER":{"ammo":7},"WEAPON_GUSENBERG":{"ammo":200}}', '{"y":168.6,"x":244.1,"heading":197.9,"z":104.9}', NULL, NULL, 'user', 'Aullll', NULL, NULL, 'f', NULL, 0, 0, NULL, '{"bank":5010,"black_money":0,"money":5839}', '[]', NULL, 2, 7, 377, 1, -2.5);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:11000013e773346', 'license:4b84685e25f56e0313533d792b61e001a7347d92', 0, NULL, '{"chest_2":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":0,"makeup_3":0,"torso_2":2,"bodyb_2":0,"shoes_2":0,"bproof_2":0,"eyebrows_2":0,"pants_2":0,"bags_2":0,"mask_2":0,"eye_color":0,"eyebrows_1":0,"watches_2":0,"watches_1":-1,"helmet_1":115,"helmet_2":19,"arms":0,"age_1":0,"sex":0,"lipstick_3":0,"face":31,"mask_1":0,"tshirt_1":23,"complexion_1":0,"chain_1":0,"shoes_1":1,"chest_1":0,"glasses_1":0,"decals_2":0,"hair_2":0,"blemishes_1":0,"tshirt_2":1,"decals_1":0,"blush_1":0,"beard_3":0,"makeup_1":0,"lipstick_1":0,"complexion_2":0,"bracelets_1":-1,"age_2":0,"glasses_2":0,"pants_1":24,"makeup_2":0,"hair_color_1":0,"eyebrows_3":0,"arms_2":0,"makeup_4":0,"moles_2":0,"beard_1":0,"bodyb_1":0,"blush_3":0,"ears_1":-1,"hair_color_2":0,"sun_2":0,"bproof_1":0,"skin":0,"bags_1":0,"moles_1":0,"torso_1":7,"blush_2":0,"beard_4":0,"chain_2":0,"bracelets_2":0,"ears_2":0,"hair_1":0,"eyebrows_4":0,"blemishes_2":0}', 'unemployed', 0, '{"weapon_combatpistol":{"ammo":200},"weapon_microsmg":{"ammo":200},"weapon_pumpshotgun":{"ammo":200},"WEAPON_CARBINERIFLE":{"ammo":200},"weapon_revolver":{"ammo":200},"weapon_bat":{"ammo":1},"weapon_smg":{"ammo":200},"WEAPON_ASSAULTRIFLE":{"ammo":200},"weapon_pistol50":{"ammo":200},"weapon_knife":{"ammo":1},"WEAPON_HEAVYSNIPER":{"ammo":7},"WEAPON_GUSENBERG":{"ammo":200}}', '{"y":3420.7,"x":2732.4,"heading":333.2,"z":56.6}', NULL, NULL, 'user', 'IyaIya TidakTidak', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":4010,"black_money":0,"money":8072}', '[]', NULL, 52, 20, 780, 1, 16);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:11000013ec0db86', 'license:c5436bdb930727d47837af9d0178ca584fe437f2', 0, NULL, '{"lipstick_1":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":0,"makeup_3":0,"torso_2":7,"bodyb_2":0,"shoes_2":0,"torso_1":13,"eyebrows_2":0,"pants_2":1,"bags_2":0,"mask_2":0,"eye_color":0,"eyebrows_1":0,"watches_2":0,"watches_1":-1,"glasses_2":0,"helmet_2":0,"arms":4,"age_1":0,"sex":1,"lipstick_3":0,"face":21,"bracelets_1":-1,"tshirt_1":15,"complexion_1":0,"chain_1":0,"shoes_1":0,"chest_1":0,"glasses_1":21,"makeup_2":0,"hair_2":0,"blemishes_1":0,"tshirt_2":0,"decals_1":0,"blush_1":0,"beard_3":0,"helmet_1":-1,"age_2":0,"decals_2":0,"complexion_2":0,"chest_2":0,"skin":12,"pants_1":12,"mask_1":0,"hair_color_1":19,"eyebrows_3":0,"bracelets_2":0,"arms_2":0,"moles_2":0,"ears_2":0,"bodyb_1":0,"blush_3":0,"ears_1":-1,"hair_color_2":18,"bproof_2":0,"bproof_1":0,"makeup_4":0,"moles_1":0,"bags_1":0,"sun_2":0,"blush_2":0,"beard_4":0,"chain_2":0,"beard_1":0,"blemishes_2":0,"hair_1":15,"makeup_1":0,"eyebrows_4":0}', 'unemployed', 0, '[]', '{"y":-1076.3,"x":98.4,"heading":342.7,"z":28.4}', NULL, NULL, 'user', 'Datzemamot', NULL, NULL, 'f', NULL, 0, 0, NULL, '{"bank":5010,"black_money":0,"money":6878}', '[]', NULL, 10, 9, 789, 1, 1);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:11000013fd9ec49', 'license:7539adc93739749c696ea5a2208bdfe71c97fb50', 0, NULL, '{"lipstick_1":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":6,"lipstick_2":3,"makeup_3":0,"torso_2":2,"makeup_4":0,"shoes_2":0,"torso_1":172,"eyebrows_2":10,"pants_2":0,"bags_2":0,"mask_2":0,"eye_color":8,"eyebrows_1":30,"watches_2":0,"watches_1":-1,"glasses_2":0,"helmet_2":0,"arms":55,"age_1":0,"sex":0,"lipstick_3":34,"face":37,"mask_1":0,"tshirt_1":76,"complexion_1":0,"chain_1":113,"shoes_1":48,"chest_1":0,"glasses_1":5,"decals_2":0,"hair_2":1,"blemishes_1":0,"tshirt_2":0,"decals_1":0,"blush_1":3,"bags_1":0,"moles_1":0,"helmet_1":109,"bracelets_1":-1,"beard_3":0,"complexion_2":0,"beard_1":10,"pants_1":24,"blemishes_2":0,"hair_color_1":29,"eyebrows_3":0,"eyebrows_4":0,"chest_2":0,"moles_2":0,"ears_2":0,"sun_2":0,"blush_3":0,"ears_1":-1,"hair_color_2":29,"bodyb_2":0,"bproof_1":0,"bodyb_1":0,"bracelets_2":0,"skin":0,"makeup_2":0,"blush_2":4,"beard_4":0,"chain_2":0,"age_2":0,"arms_2":0,"hair_1":20,"bproof_2":0,"makeup_1":21}', 'unemployed', 0, '[]', '{"y":-778.5,"x":222.9,"heading":179.3,"z":30.3}', NULL, NULL, 'user', 'Damien Clausius', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":30,"black_money":0,"money":18137}', '[]', NULL, 45, 33, 698, 1, 6);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:1100001403c0f83', 'license:b8d2933b8ef061f689bc98fa7c56213a962e44f4', 0, NULL, NULL, 'unemployed', 0, '[]', '{"y":-779.5,"x":220.9,"heading":179.2,"z":30.8}', NULL, NULL, 'user', 'Udin Petot', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":2040,"black_money":0,"money":8991}', '[]', NULL, 47, 90, 745, 1, -21);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:1100001405ac03b', 'license:3428d980175b051e43ac8c65c2ab3fc8edfcbf67', 0, NULL, '{"lipstick_1":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":0,"makeup_3":0,"torso_2":0,"bodyb_2":0,"shoes_2":0,"torso_1":17,"eyebrows_2":0,"pants_2":0,"bags_2":0,"mask_2":0,"eye_color":0,"skin":4,"watches_2":0,"watches_1":-1,"helmet_1":-1,"helmet_2":0,"arms":20,"age_1":0,"sex":1,"lipstick_3":0,"face":21,"mask_1":0,"tshirt_1":0,"complexion_1":0,"chain_1":0,"shoes_1":3,"chest_1":0,"glasses_1":0,"makeup_2":0,"hair_2":0,"blemishes_1":0,"tshirt_2":0,"decals_1":0,"complexion_2":0,"beard_3":0,"beard_1":0,"bracelets_1":-1,"bags_1":0,"eyebrows_1":0,"decals_2":0,"chest_2":0,"pants_1":12,"age_2":0,"hair_color_1":4,"eyebrows_3":0,"eyebrows_4":0,"glasses_2":0,"moles_2":0,"ears_2":0,"makeup_1":0,"blush_3":0,"ears_1":-1,"hair_color_2":0,"bodyb_1":0,"bproof_1":0,"makeup_4":0,"moles_1":0,"bproof_2":0,"blush_1":0,"blush_2":0,"beard_4":0,"chain_2":0,"sun_2":0,"bracelets_2":0,"hair_1":11,"arms_2":0,"blemishes_2":0}', 'unemployed', 0, '[]', '{"y":-779.6,"x":220.9,"heading":179.2,"z":30.8}', NULL, NULL, 'user', 'Melon', NULL, NULL, 'f', NULL, 0, 0, NULL, '{"bank":5010,"black_money":0,"money":7772}', '[]', NULL, 15, 17, 745, 1, -1);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:110000140875ece', 'license:efcba5ee1b18962f11bd7cfbd83e13e2b6fc0ded', 0, NULL, '{"helmet_1":115,"eye_color":0,"glasses_2":0,"hair_color_2":0,"skin":0,"eyebrows_4":0,"eyebrows_2":0,"bodyb_1":0,"complexion_1":0,"bproof_2":0,"bracelets_2":0,"lipstick_3":0,"moles_2":0,"hair_1":0,"makeup_3":0,"sex":0,"chest_2":0,"tshirt_2":0,"chest_3":0,"age_1":0,"shoes_1":1,"lipstick_1":0,"shoes_2":0,"makeup_4":0,"arms":12,"sun_2":0,"glasses_1":0,"watches_1":-1,"beard_3":0,"bodyb_2":0,"sun_1":0,"blemishes_2":0,"blush_3":0,"lipstick_2":0,"tshirt_1":76,"blemishes_1":0,"pants_2":0,"bags_1":0,"ears_1":-1,"hair_color_1":0,"face":0,"watches_2":0,"bags_2":0,"hair_2":0,"chain_1":1,"pants_1":6,"decals_1":0,"chest_1":0,"lipstick_4":0,"makeup_1":0,"ears_2":0,"beard_4":0,"bproof_1":0,"decals_2":0,"eyebrows_3":0,"moles_1":0,"blush_2":0,"torso_2":3,"mask_1":0,"helmet_2":4,"mask_2":0,"arms_2":0,"chain_2":0,"eyebrows_1":0,"makeup_2":0,"beard_2":0,"age_2":0,"blush_1":0,"beard_1":0,"torso_1":88,"complexion_2":0,"bracelets_1":-1}', 'unemployed', 0, '{"weapon_bat":{"ammo":1},"weapon_pumpshotgun":{"ammo":200},"WEAPON_ASSAULTRIFLE":{"ammo":200},"weapon_microsmg":{"ammo":200},"WEAPON_HEAVYSNIPER":{"ammo":7},"WEAPON_GUSENBERG":{"ammo":200},"WEAPON_CARBINERIFLE":{"ammo":200},"weapon_pistol50":{"ammo":200},"weapon_knife":{"ammo":1},"weapon_combatpistol":{"ammo":200},"weapon_revolver":{"ammo":200},"weapon_smg":{"ammo":200}}', '{"y":3590.7,"z":90.7,"heading":58.3,"x":2507.4}', NULL, NULL, 'user', 'Senggol Dongggg', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"black_money":0,"bank":5000,"money":6665}', '[]', NULL, 12, 3, 670, 1, 4.5);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:110000141442762', 'license:4e3c8fdf18813fe009927b29e5f4fa495e41a190', 0, NULL, '{"helmet_1":117,"eye_color":0,"glasses_2":4,"hair_color_2":15,"makeup_1":0,"eyebrows_4":0,"eyebrows_2":0,"mask_2":7,"complexion_1":0,"bproof_2":0,"torso_2":2,"lipstick_3":0,"moles_2":0,"hair_1":12,"makeup_3":0,"sex":0,"chest_2":0,"tshirt_2":0,"chest_3":0,"age_1":0,"shoes_1":16,"lipstick_1":0,"shoes_2":0,"makeup_4":0,"arms":52,"sun_2":0,"glasses_1":25,"watches_1":-1,"beard_3":0,"complexion_2":0,"sun_1":0,"blemishes_2":0,"blush_3":0,"lipstick_2":0,"tshirt_1":15,"blemishes_1":0,"pants_2":4,"bags_1":0,"ears_1":-1,"hair_color_1":56,"makeup_2":0,"watches_2":0,"bags_2":0,"hair_2":0,"chain_1":0,"pants_1":15,"blush_2":0,"chest_1":0,"lipstick_4":0,"arms_2":0,"ears_2":0,"decals_1":0,"bproof_1":0,"decals_2":0,"eyebrows_3":0,"chain_2":0,"eyebrows_1":0,"moles_1":0,"mask_1":51,"helmet_2":2,"beard_4":0,"bodyb_1":0,"bodyb_2":0,"beard_2":0,"bracelets_2":0,"face":31,"age_2":0,"blush_1":0,"beard_1":0,"torso_1":0,"skin":7,"bracelets_1":-1}', 'unemployed', 0, '[]', '{"y":-779.5,"x":220.9,"heading":179.2,"z":30.8}', NULL, NULL, 'user', 'L CemeN', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":5030,"black_money":0,"money":14747}', '[]', NULL, 48, 55, 767, 1, -3.5);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:110000141983446', 'license:474871637df0efc3064bb0b77cd3b741918ecc7d', 0, NULL, '{"hair_color_2":0,"glasses_2":0,"makeup_3":0,"arms":0,"lipstick_2":0,"shoes_1":0,"mask_1":0,"blush_1":0,"bags_1":0,"hair_color_1":0,"glasses_1":0,"bracelets_1":-1,"makeup_1":0,"eyebrows_4":0,"hair_1":4,"eyebrows_3":0,"helmet_1":-1,"chest_1":0,"torso_1":0,"chain_2":0,"lipstick_1":0,"age_2":0,"skin":0,"hair_2":0,"sun_1":0,"decals_1":0,"blush_2":0,"beard_3":0,"ears_2":0,"chain_1":0,"beard_2":0,"mask_2":0,"watches_2":0,"tshirt_2":0,"chest_2":0,"arms_2":0,"moles_2":0,"lipstick_3":0,"lipstick_4":0,"bags_2":0,"blush_3":0,"helmet_2":0,"blemishes_2":0,"tshirt_1":0,"sex":0,"sun_2":0,"torso_2":0,"bodyb_1":0,"beard_1":0,"complexion_2":0,"beard_4":0,"chest_3":0,"face":31,"eyebrows_2":0,"complexion_1":0,"decals_2":0,"eyebrows_1":0,"blemishes_1":0,"shoes_2":0,"age_1":0,"makeup_2":0,"eye_color":0,"watches_1":-1,"bodyb_2":0,"pants_2":0,"pants_1":0,"makeup_4":0,"bracelets_2":0,"moles_1":0,"ears_1":-1}', 'unemployed', 0, '{"weapon_bat":{"ammo":1},"weapon_smg":{"ammo":200},"weapon_pistol50":{"ammo":200},"weapon_revolver":{"ammo":200},"weapon_combatpistol":{"ammo":200},"weapon_knife":{"ammo":1},"WEAPON_GUSENBERG":{"ammo":200},"weapon_microsmg":{"ammo":200},"weapon_pumpshotgun":{"ammo":200},"WEAPON_HEAVYSNIPER":{"ammo":4},"WEAPON_CARBINERIFLE":{"ammo":200},"WEAPON_ASSAULTRIFLE":{"ammo":200}}', '{"heading":275.0,"x":184.1,"y":-850.6,"z":31.2}', NULL, NULL, 'user', 'Gak Tau', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"black_money":0,"bank":5000,"money":5000}', '[]', NULL, 0, 0, 0, 1, 0);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:11000014216a5a1', 'license:2cfe875c25cb8bfbc7a08098c4367e5bee040a00', 0, NULL, '{"chest_2":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":0,"makeup_3":0,"torso_2":3,"makeup_4":0,"shoes_2":0,"bproof_2":0,"eyebrows_2":0,"pants_2":0,"bags_2":0,"mask_2":0,"eye_color":0,"skin":10,"watches_2":0,"watches_1":-1,"helmet_1":-1,"helmet_2":0,"arms":19,"age_1":0,"sex":0,"lipstick_3":0,"face":31,"mask_1":0,"tshirt_1":15,"complexion_1":0,"chain_1":53,"shoes_1":6,"chest_1":0,"glasses_1":0,"makeup_2":0,"hair_2":0,"blemishes_1":0,"tshirt_2":0,"decals_1":0,"blush_1":0,"beard_3":0,"sun_2":0,"beard_4":0,"complexion_2":0,"glasses_2":0,"lipstick_1":0,"ears_2":0,"pants_1":42,"bags_1":0,"hair_color_1":29,"eyebrows_3":0,"bracelets_2":0,"bracelets_1":-1,"moles_2":0,"beard_1":0,"makeup_1":0,"blush_3":0,"ears_1":-1,"hair_color_2":0,"moles_1":0,"bproof_1":0,"bodyb_2":0,"eyebrows_4":0,"decals_2":0,"eyebrows_1":0,"blush_2":0,"blemishes_2":0,"chain_2":0,"torso_1":83,"age_2":0,"hair_1":52,"arms_2":0,"bodyb_1":0}', 'unemployed', 0, '[]', '{"y":-782.1,"x":220.2,"heading":179.2,"z":30.8}', NULL, NULL, 'user', 'Artos Cakep', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":5040,"black_money":0,"money":12862}', '[]', NULL, 59, 74, 753, 1, -7.5);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:11000014229f125', 'license:67d51d4d66a1ddf3b89a7983cf8ba3a6db84a449', 0, NULL, '{"helmet_1":117,"eye_color":0,"glasses_2":0,"hair_color_2":0,"makeup_1":0,"eyebrows_4":0,"eyebrows_2":0,"mask_2":25,"complexion_1":0,"beard_4":0,"torso_2":11,"lipstick_3":0,"moles_2":0,"hair_1":12,"makeup_3":0,"sex":0,"chest_2":0,"tshirt_2":13,"chest_3":0,"age_1":0,"shoes_1":25,"lipstick_1":0,"shoes_2":0,"makeup_4":0,"arms":31,"sun_2":0,"glasses_1":0,"watches_1":-1,"beard_3":0,"bodyb_2":0,"sun_1":0,"blemishes_2":0,"blush_3":0,"lipstick_2":0,"tshirt_1":131,"blemishes_1":0,"pants_2":11,"bags_1":0,"ears_1":-1,"hair_color_1":29,"makeup_2":0,"watches_2":0,"beard_2":0,"hair_2":0,"chain_1":0,"pants_1":97,"decals_1":0,"chest_1":0,"lipstick_4":0,"complexion_2":0,"ears_2":0,"eyebrows_3":0,"bproof_1":0,"decals_2":0,"blush_2":0,"moles_1":0,"torso_1":251,"skin":0,"mask_1":104,"helmet_2":0,"arms_2":0,"bodyb_1":0,"bracelets_2":0,"face":31,"eyebrows_1":0,"bags_2":0,"age_2":0,"blush_1":0,"beard_1":0,"bproof_2":0,"chain_2":0,"bracelets_1":-1}', 'unemployed', 0, '[]', '{"y":-781.2,"z":30.6,"heading":80.4,"x":254.3}', NULL, NULL, 'user', 'Jordi', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"black_money":0,"bank":5010,"money":5753}', '[]', NULL, 3, 6, 106, 1, -1.5);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:1100001422f746e', 'license:c45e22e4e5278304958319e403f47cbc25712c9b', 0, NULL, '{"chest_2":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":0,"makeup_3":0,"torso_2":0,"makeup_4":0,"shoes_2":0,"torso_1":0,"eyebrows_2":0,"pants_2":0,"bags_2":0,"mask_2":0,"eye_color":0,"eyebrows_1":0,"watches_2":0,"watches_1":-1,"helmet_1":-1,"helmet_2":0,"arms":0,"age_1":0,"sex":0,"lipstick_3":0,"face":0,"mask_1":0,"tshirt_1":0,"complexion_1":0,"chain_1":0,"shoes_1":0,"chest_1":0,"glasses_1":0,"decals_2":0,"moles_1":0,"blemishes_1":0,"tshirt_2":0,"decals_1":0,"blush_1":0,"bags_1":0,"eyebrows_4":0,"complexion_2":0,"blemishes_2":0,"age_2":0,"sun_2":0,"lipstick_1":0,"pants_1":0,"beard_1":0,"hair_color_1":0,"eyebrows_3":0,"bracelets_2":0,"hair_2":0,"moles_2":0,"ears_2":0,"bodyb_1":0,"blush_3":0,"ears_1":-1,"hair_color_2":0,"bracelets_1":-1,"bproof_1":0,"makeup_1":0,"glasses_2":0,"bodyb_2":0,"skin":0,"blush_2":0,"beard_4":0,"chain_2":0,"makeup_2":0,"beard_3":0,"hair_1":0,"bproof_2":0,"arms_2":0}', 'unemployed', 0, '{"weapon_combatpistol":{"ammo":200},"weapon_microsmg":{"ammo":200},"weapon_pumpshotgun":{"ammo":200},"WEAPON_CARBINERIFLE":{"ammo":200},"weapon_revolver":{"ammo":200},"weapon_bat":{"ammo":1},"weapon_smg":{"ammo":200},"WEAPON_ASSAULTRIFLE":{"ammo":200},"weapon_pistol50":{"ammo":200},"weapon_knife":{"ammo":1},"WEAPON_HEAVYSNIPER":{"ammo":7},"WEAPON_GUSENBERG":{"ammo":200}}', '{"y":-983.7,"x":297.3,"heading":231.6,"z":45.0}', NULL, NULL, 'user', 'Joose', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":5020,"black_money":0,"money":12428}', '[]', NULL, 44, 25, 794, 1, 9.5);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:1100001424f6e43', 'license:5e7589a8731978f92467a91b5903171614013d8f', 0, NULL, '{"chest_2":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":0,"makeup_3":0,"torso_2":0,"makeup_4":0,"shoes_2":0,"torso_1":0,"eyebrows_2":0,"pants_2":0,"bags_2":0,"mask_2":0,"eye_color":0,"eyebrows_1":0,"watches_2":0,"watches_1":-1,"glasses_2":0,"helmet_2":0,"arms":0,"age_1":0,"sex":0,"lipstick_3":0,"face":0,"mask_1":0,"tshirt_1":0,"complexion_1":0,"chain_1":0,"shoes_1":0,"chest_1":0,"glasses_1":0,"makeup_2":0,"moles_1":0,"blemishes_1":0,"tshirt_2":0,"decals_1":0,"complexion_2":0,"bags_1":0,"hair_2":0,"blush_1":0,"bracelets_2":0,"bodyb_2":0,"hair_1":6,"lipstick_1":0,"pants_1":6,"arms_2":0,"hair_color_1":9,"eyebrows_3":0,"eyebrows_4":0,"beard_3":0,"moles_2":0,"beard_1":0,"sun_2":0,"blush_3":0,"ears_1":-1,"hair_color_2":0,"bracelets_1":-1,"bproof_1":0,"bproof_2":0,"decals_2":0,"bodyb_1":0,"ears_2":0,"blush_2":0,"blemishes_2":0,"chain_2":0,"helmet_1":-1,"beard_4":0,"age_2":0,"skin":0,"makeup_1":0}', 'unemployed', 0, '[]', '{"y":-957.6,"x":384.9,"heading":63.4,"z":29.4}', NULL, NULL, 'user', 'FudhailRafid', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":0,"black_money":0,"money":1596}', '[]', NULL, 0, 1, 27, 1, -0.5);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:110000142a2ebb7', 'license:acccfdbd5489eb19b387314bf40ff4bd60b79f15', 0, NULL, '{"chest_2":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":0,"makeup_3":0,"torso_2":0,"makeup_4":0,"shoes_2":0,"bproof_2":0,"eyebrows_2":0,"pants_2":0,"bags_2":0,"mask_2":0,"eye_color":0,"eyebrows_1":0,"watches_2":0,"watches_1":-1,"helmet_1":117,"helmet_2":0,"arms":0,"age_1":0,"sex":0,"lipstick_3":0,"face":6,"mask_1":0,"tshirt_1":15,"complexion_1":0,"chain_1":0,"shoes_1":0,"chest_1":0,"glasses_1":0,"decals_2":0,"hair_2":3,"blemishes_1":0,"tshirt_2":0,"decals_1":0,"complexion_2":0,"beard_3":0,"eyebrows_4":0,"moles_1":0,"beard_4":0,"lipstick_1":0,"skin":0,"bracelets_1":-1,"pants_1":20,"torso_1":6,"hair_color_1":4,"eyebrows_3":0,"bracelets_2":0,"bodyb_2":0,"moles_2":0,"beard_1":0,"makeup_1":0,"blush_3":0,"ears_1":-1,"hair_color_2":0,"makeup_2":0,"bproof_1":0,"ears_2":0,"blush_1":0,"bags_1":0,"arms_2":0,"blush_2":0,"blemishes_2":0,"chain_2":0,"bodyb_1":0,"sun_2":0,"hair_1":3,"glasses_2":0,"age_2":0}', 'unemployed', 0, '[]', '{"y":-815.2,"x":240.9,"heading":352.0,"z":30.2}', NULL, NULL, 'user', 'Yul', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":5010,"black_money":0,"money":0}', '[]', NULL, 0, 0, 0, 1, 0);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:110000142c4100b', 'license:32e0640b6a79b22fbeacf174ffb61fcd8db0e6d2', 0, NULL, NULL, 'unemployed', 0, '[]', '{"y":-765.44,"x":244.58,"heading":169.52,"z":30.8}', NULL, NULL, 'user', '', '', '', '', '', 0, 0, NULL, '{"bank":5000,"black_money":0,"money":5000}', '[]', NULL, 0, 0, 0, 1, 0);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:110000142e33349', 'license:87b4e2b25912b8d37f20ce3959331979a77479d0', 0, NULL, '{"chest_2":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":0,"makeup_3":0,"torso_2":0,"bodyb_2":0,"shoes_2":0,"bproof_2":0,"eyebrows_2":0,"pants_2":0,"bags_2":0,"mask_2":0,"eye_color":0,"skin":0,"watches_2":0,"watches_1":-1,"helmet_1":46,"helmet_2":0,"arms":0,"age_1":0,"sex":0,"lipstick_3":0,"face":0,"bracelets_1":-1,"tshirt_1":15,"complexion_1":0,"chain_1":0,"shoes_1":21,"chest_1":0,"glasses_1":4,"decals_2":0,"hair_2":0,"blemishes_1":0,"tshirt_2":0,"decals_1":0,"complexion_2":0,"bags_1":0,"moles_1":0,"torso_1":55,"beard_4":0,"lipstick_1":0,"ears_2":0,"mask_1":0,"pants_1":13,"eyebrows_1":0,"hair_color_1":0,"eyebrows_3":0,"bracelets_2":0,"makeup_4":0,"moles_2":0,"beard_1":0,"bodyb_1":0,"blush_3":0,"ears_1":-1,"hair_color_2":0,"makeup_2":0,"bproof_1":0,"arms_2":0,"eyebrows_4":0,"blush_1":0,"beard_3":0,"blush_2":0,"blemishes_2":0,"chain_2":0,"sun_2":0,"makeup_1":0,"age_2":0,"glasses_2":0,"hair_1":12}', 'unemployed', 0, '[]', '{"y":-779.4,"x":220.8,"heading":179.2,"z":30.8}', NULL, NULL, 'user', 'Aing Macan', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":5000,"black_money":0,"money":7938}', '[]', NULL, 14, 14, 769, 1, 0.5);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:110000142e74ed2', 'license:e44d494d00d1155b766b491439ef0a2e97797b04', 0, NULL, NULL, 'unemployed', 0, '[]', '{"y":-779.6,"x":220.9,"heading":179.2,"z":30.8}', NULL, NULL, 'user', 'Mamat', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":10,"black_money":0,"money":12653}', '[]', NULL, 10, 16, 761, 1, -2.5);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:1100001430f39f7', 'license:fff8a479716b587a2403c00c8e09f411a132f07d', 0, NULL, '{"chest_2":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":0,"makeup_3":0,"torso_2":0,"makeup_4":0,"shoes_2":0,"bproof_2":0,"eyebrows_2":0,"pants_2":0,"bags_2":0,"mask_2":0,"eye_color":0,"skin":0,"watches_2":0,"watches_1":-1,"helmet_1":-1,"helmet_2":0,"arms":0,"age_1":0,"sex":0,"lipstick_3":0,"face":0,"mask_1":0,"tshirt_1":0,"complexion_1":0,"chain_1":0,"shoes_1":0,"chest_1":0,"glasses_1":0,"decals_2":0,"hair_2":0,"blemishes_1":0,"tshirt_2":0,"decals_1":0,"complexion_2":0,"beard_3":0,"blemishes_2":0,"blush_1":0,"lipstick_1":0,"bodyb_1":0,"glasses_2":0,"bracelets_1":-1,"pants_1":0,"sun_2":0,"hair_color_1":0,"eyebrows_3":0,"eyebrows_4":0,"moles_1":0,"moles_2":0,"beard_1":0,"makeup_1":0,"blush_3":0,"ears_1":-1,"hair_color_2":0,"ears_2":0,"bproof_1":0,"hair_1":0,"torso_1":0,"bracelets_2":0,"bags_1":0,"blush_2":0,"beard_4":0,"chain_2":0,"makeup_2":0,"eyebrows_1":0,"age_2":0,"arms_2":0,"bodyb_2":0}', 'unemployed', 0, '[]', '{"y":-779.6,"x":220.9,"heading":179.2,"z":30.8}', NULL, NULL, 'user', 'Logical Montana', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":0,"black_money":0,"money":8301}', '[]', NULL, 19, 13, 733, 1, 3.5);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:1100001431eec4c', 'license:b5c0f5bc942668c463eac511f8d5256de62d7d54', 0, NULL, NULL, 'unemployed', 0, '[]', '{"y":-775.3,"x":224.0,"heading":103.2,"z":30.4}', NULL, NULL, 'user', 'Folklore', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":5010,"black_money":0,"money":7358}', '[]', NULL, 11, 13, 778, 1, -0.5);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:11000014330aa33', 'license:b72615c6f2e554770f5ed88b5338d3aaa31de6d7', 0, NULL, '{"lipstick_1":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":0,"makeup_3":0,"torso_2":0,"bodyb_2":0,"shoes_2":0,"bproof_2":0,"eyebrows_2":0,"pants_2":3,"bags_2":0,"mask_2":5,"eye_color":0,"skin":18,"watches_2":0,"watches_1":-1,"glasses_2":1,"helmet_2":0,"arms":22,"age_1":0,"sex":0,"lipstick_3":0,"face":33,"bracelets_1":-1,"tshirt_1":74,"complexion_1":0,"chain_1":0,"shoes_1":7,"chest_1":0,"glasses_1":8,"decals_2":0,"moles_1":0,"blemishes_1":0,"tshirt_2":7,"decals_1":0,"complexion_2":0,"bags_1":0,"mask_1":51,"beard_3":0,"hair_1":66,"blush_1":0,"hair_2":0,"chest_2":0,"pants_1":24,"torso_1":124,"hair_color_1":62,"eyebrows_3":0,"arms_2":0,"blemishes_2":0,"moles_2":0,"beard_1":0,"makeup_1":0,"blush_3":0,"ears_1":-1,"hair_color_2":0,"eyebrows_1":0,"bproof_1":0,"bracelets_2":0,"sun_2":0,"ears_2":0,"makeup_2":0,"blush_2":0,"beard_4":0,"chain_2":0,"makeup_4":0,"helmet_1":54,"age_2":0,"bodyb_1":0,"eyebrows_4":0}', 'unemployed', 0, '[]', '{"y":-773.2,"x":259.9,"heading":327.5,"z":30.7}', NULL, NULL, 'user', 'LEBOY', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":0,"black_money":0,"money":5600}', '{"boxpistol":1,"boxmg":1,"boxsmg":1,"boxsniper":1}', NULL, 0, 0, 0, 1, 0);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:11000014366a172', 'license:30333b06204547e7248126c418b97cfc6b2f07de', 0, NULL, '{"chest_2":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":0,"makeup_3":0,"torso_2":0,"makeup_4":0,"shoes_2":0,"bproof_2":0,"eyebrows_2":0,"pants_2":0,"bags_2":0,"mask_2":0,"eye_color":0,"eyebrows_1":0,"watches_2":0,"watches_1":-1,"glasses_2":0,"helmet_2":0,"arms":0,"age_1":0,"sex":0,"lipstick_3":0,"face":0,"mask_1":0,"tshirt_1":0,"complexion_1":0,"chain_1":0,"shoes_1":0,"chest_1":0,"glasses_1":0,"makeup_2":0,"hair_2":0,"blemishes_1":0,"tshirt_2":0,"decals_1":0,"complexion_2":0,"beard_3":0,"sun_2":0,"blush_1":0,"lipstick_1":0,"bodyb_2":0,"blemishes_2":0,"bracelets_1":-1,"pants_1":0,"age_2":0,"hair_color_1":0,"eyebrows_3":0,"arms_2":0,"bodyb_1":0,"moles_2":0,"beard_1":0,"makeup_1":0,"blush_3":0,"ears_1":-1,"hair_color_2":0,"skin":0,"bproof_1":0,"torso_1":0,"decals_2":0,"moles_1":0,"bags_1":0,"blush_2":0,"beard_4":0,"chain_2":0,"helmet_1":-1,"bracelets_2":0,"hair_1":0,"ears_2":0,"eyebrows_4":0}', 'unemployed', 0, '[]', '{"y":-780.5,"x":255.3,"heading":112.1,"z":30.6}', NULL, NULL, 'user', 'TAKA', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":5000,"black_money":0,"money":5000}', '[]', NULL, 0, 0, 0, 1, 0);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:110000143a18d08', 'license:5b638ffe97feafa5d1cc3ca86e437d9a919b930e', 0, NULL, '{"lipstick_1":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":0,"makeup_3":0,"torso_2":0,"bodyb_2":0,"shoes_2":0,"bproof_2":0,"eyebrows_2":0,"pants_2":0,"bags_2":0,"mask_2":0,"eye_color":0,"eyebrows_1":0,"watches_2":0,"watches_1":-1,"glasses_2":0,"helmet_2":0,"arms":0,"age_1":0,"sex":0,"lipstick_3":0,"face":0,"bracelets_1":-1,"tshirt_1":0,"complexion_1":0,"chain_1":0,"shoes_1":5,"chest_1":0,"glasses_1":0,"decals_2":0,"hair_2":0,"blemishes_1":0,"tshirt_2":0,"decals_1":0,"complexion_2":0,"bags_1":0,"blush_1":0,"makeup_2":0,"beard_3":0,"chest_2":0,"helmet_1":-1,"bodyb_1":0,"pants_1":0,"mask_1":0,"hair_color_1":0,"eyebrows_3":0,"arms_2":0,"blemishes_2":0,"moles_2":0,"beard_1":0,"makeup_1":0,"blush_3":0,"ears_1":-1,"hair_color_2":0,"torso_1":7,"bproof_1":0,"age_2":0,"makeup_4":0,"bracelets_2":0,"moles_1":0,"blush_2":0,"beard_4":0,"chain_2":0,"eyebrows_4":0,"sun_2":0,"hair_1":16,"skin":0,"ears_2":0}', 'unemployed', 0, '{"weapon_combatpistol":{"ammo":200},"weapon_microsmg":{"ammo":200},"weapon_pumpshotgun":{"ammo":200},"WEAPON_CARBINERIFLE":{"ammo":200},"weapon_revolver":{"ammo":200},"weapon_bat":{"ammo":1},"weapon_smg":{"ammo":200},"WEAPON_ASSAULTRIFLE":{"ammo":200},"weapon_pistol50":{"ammo":200},"weapon_knife":{"ammo":1},"WEAPON_HEAVYSNIPER":{"ammo":7},"WEAPON_GUSENBERG":{"ammo":200}}', '{"y":-804.9,"x":216.5,"heading":160.5,"z":30.8}', NULL, NULL, 'user', 'Suhem', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":5050,"black_money":0,"money":11839}', '[]', NULL, 24, 54, 779, 1, -15);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:110000143ae7e89', 'license:07c0e9f16591f9d9d6364ff7ac793ed0524534a4', 0, NULL, '{"chest_2":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":0,"makeup_3":0,"torso_2":0,"bodyb_2":0,"shoes_2":0,"bproof_2":0,"eyebrows_2":0,"pants_2":0,"bags_2":0,"mask_2":0,"eye_color":0,"skin":0,"watches_2":0,"watches_1":-1,"helmet_1":-1,"helmet_2":0,"arms":0,"age_1":0,"sex":0,"lipstick_3":0,"face":0,"mask_1":0,"tshirt_1":0,"complexion_1":0,"chain_1":0,"shoes_1":0,"chest_1":0,"glasses_1":0,"makeup_2":0,"moles_1":0,"blemishes_1":0,"tshirt_2":0,"decals_1":0,"blush_1":0,"bags_1":0,"lipstick_1":0,"age_2":0,"makeup_4":0,"blemishes_2":0,"torso_1":3,"beard_3":0,"pants_1":0,"decals_2":0,"hair_color_1":0,"eyebrows_3":0,"eyebrows_4":0,"bracelets_1":-1,"moles_2":0,"ears_2":0,"sun_2":0,"blush_3":0,"ears_1":-1,"hair_color_2":0,"arms_2":0,"bproof_1":0,"complexion_2":0,"bodyb_1":0,"hair_2":0,"bracelets_2":0,"blush_2":0,"beard_4":0,"chain_2":0,"eyebrows_1":0,"beard_1":0,"hair_1":2,"makeup_1":0,"glasses_2":0}', 'unemployed', 0, '[]', '{"y":-795.2,"x":164.2,"heading":350.3,"z":31.0}', NULL, NULL, 'user', 'Tommy', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":5000,"black_money":0,"money":7718}', '[]', NULL, 9, 20, 748, 1, -5);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:110000143c70d52', 'license:1849f4c6b1f00cc5265aebef8c03a39ee1160a1d', 0, NULL, '{"lipstick_1":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":0,"makeup_3":0,"torso_2":0,"bodyb_2":0,"shoes_2":0,"bproof_2":0,"eyebrows_2":0,"pants_2":0,"bags_2":0,"mask_2":0,"eye_color":0,"eyebrows_1":0,"watches_2":0,"watches_1":-1,"helmet_1":-1,"helmet_2":0,"arms":0,"age_1":0,"sex":0,"lipstick_3":0,"face":0,"bracelets_1":-1,"tshirt_1":0,"complexion_1":0,"chain_1":0,"shoes_1":0,"chest_1":0,"glasses_1":0,"makeup_2":0,"hair_2":0,"blemishes_1":0,"tshirt_2":0,"decals_1":0,"complexion_2":0,"beard_3":0,"bodyb_1":0,"age_2":0,"blush_1":0,"decals_2":0,"makeup_4":0,"torso_1":70,"pants_1":0,"chest_2":0,"hair_color_1":0,"eyebrows_3":0,"bracelets_2":0,"skin":0,"moles_2":0,"ears_2":0,"makeup_1":0,"blush_3":0,"ears_1":-1,"hair_color_2":0,"mask_1":0,"bproof_1":0,"beard_1":0,"moles_1":0,"sun_2":0,"glasses_2":0,"blush_2":0,"beard_4":0,"chain_2":0,"bags_1":0,"arms_2":0,"hair_1":0,"eyebrows_4":0,"blemishes_2":0}', 'unemployed', 0, '[]', '{"y":-779.6,"x":220.9,"heading":179.6,"z":30.8}', NULL, NULL, 'user', 'Razel', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":10,"black_money":0,"money":11167}', '[]', NULL, 44, 22, 766, 1, 11.5);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:110000143d29091', 'license:b3266731767028014f1a7ed40198309b11f6d8b8', 0, NULL, NULL, 'unemployed', 0, '[]', '{"y":-779.6,"x":220.9,"heading":179.4,"z":30.8}', NULL, NULL, 'user', 'Bil', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":5000,"black_money":0,"money":5394}', '[]', NULL, 1, 4, 242, 1, -1.5);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:110000143d7c556', 'license:cb0f347c040a2e207632185ba7a2f47b091cd576', 0, NULL, '{"lipstick_1":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":0,"makeup_3":0,"torso_2":20,"bodyb_2":0,"shoes_2":0,"torso_1":220,"eyebrows_2":0,"pants_2":0,"bags_2":0,"mask_2":25,"eye_color":0,"skin":0,"watches_2":0,"watches_1":-1,"helmet_1":119,"helmet_2":0,"arms":0,"age_1":0,"sex":0,"lipstick_3":0,"face":0,"bracelets_1":-1,"tshirt_1":15,"complexion_1":0,"chain_1":0,"shoes_1":25,"chest_1":0,"glasses_1":0,"decals_2":0,"moles_1":0,"blemishes_1":0,"tshirt_2":0,"decals_1":0,"complexion_2":0,"bags_1":0,"bracelets_2":0,"sun_2":0,"bproof_2":2,"eyebrows_1":0,"chest_2":0,"age_2":0,"pants_1":33,"ears_2":0,"hair_color_1":0,"eyebrows_3":0,"eyebrows_4":0,"mask_1":104,"moles_2":0,"beard_1":0,"makeup_1":0,"blush_3":0,"ears_1":-1,"hair_color_2":0,"bodyb_1":0,"bproof_1":16,"blemishes_2":0,"makeup_4":0,"makeup_2":0,"hair_2":0,"blush_2":0,"beard_4":0,"chain_2":0,"blush_1":0,"beard_3":0,"hair_1":0,"arms_2":0,"glasses_2":0}', 'unemployed', 0, '[]', '{"y":-779.6,"x":220.9,"heading":179.2,"z":30.8}', NULL, NULL, 'user', 'Uhuk Pecah', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":5010,"black_money":0,"money":12353}', '[]', NULL, 41, 28, 756, 1, 7);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:110000143f9b178', 'license:785cd6fbaea40bd6c4b53686bc63a2e863b87487', 0, NULL, '{"chest_2":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":0,"makeup_3":0,"torso_2":8,"bodyb_2":0,"shoes_2":0,"torso_1":87,"eyebrows_2":0,"pants_2":0,"bags_2":0,"mask_2":0,"eye_color":0,"skin":0,"watches_2":0,"watches_1":-1,"glasses_2":0,"helmet_2":0,"arms":14,"age_1":0,"sex":0,"lipstick_3":0,"face":31,"bracelets_1":-1,"tshirt_1":15,"complexion_1":0,"chain_1":0,"shoes_1":9,"chest_1":0,"glasses_1":0,"makeup_2":0,"hair_2":0,"blemishes_1":0,"tshirt_2":0,"decals_1":0,"blush_1":0,"bags_1":0,"sun_2":0,"makeup_1":0,"bracelets_2":0,"lipstick_1":0,"beard_3":0,"eyebrows_1":0,"pants_1":26,"mask_1":0,"hair_color_1":8,"eyebrows_3":0,"arms_2":0,"helmet_1":115,"moles_2":0,"beard_1":0,"bodyb_1":0,"blush_3":0,"ears_1":-1,"hair_color_2":5,"bproof_2":0,"bproof_1":0,"eyebrows_4":0,"ears_2":0,"decals_2":0,"moles_1":0,"blush_2":0,"beard_4":0,"chain_2":0,"makeup_4":0,"complexion_2":0,"hair_1":12,"age_2":0,"blemishes_2":0}', 'unemployed', 0, '[]', '{"y":2959.0,"x":2380.2,"heading":70.9,"z":49.2}', NULL, NULL, 'user', 'Alex Sukontok', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":5040,"black_money":0,"money":10881}', '[]', NULL, 52, 59, 737, 1, -3.5);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:1100001441cc8eb', 'license:4e6d48a259de78b496caf6db6557bd90ca2c4cc0', 0, NULL, '{"chest_2":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":0,"makeup_3":0,"torso_2":0,"bodyb_2":0,"shoes_2":0,"bproof_2":2,"eyebrows_2":0,"pants_2":0,"bags_2":0,"mask_2":0,"eye_color":0,"eyebrows_1":0,"watches_2":0,"watches_1":-1,"glasses_2":0,"helmet_2":0,"arms":17,"age_1":0,"sex":0,"lipstick_3":0,"face":21,"mask_1":52,"tshirt_1":15,"complexion_1":0,"chain_1":0,"shoes_1":61,"chest_1":0,"glasses_1":0,"decals_2":0,"hair_2":0,"blemishes_1":0,"tshirt_2":0,"decals_1":0,"complexion_2":0,"bags_1":45,"lipstick_1":0,"makeup_1":0,"moles_1":0,"makeup_2":0,"beard_3":0,"eyebrows_4":0,"pants_1":41,"ears_2":0,"hair_color_1":0,"eyebrows_3":0,"arms_2":0,"bracelets_1":-1,"moles_2":0,"beard_1":0,"bodyb_1":0,"blush_3":0,"ears_1":-1,"hair_color_2":0,"skin":0,"bproof_1":16,"blush_1":0,"bracelets_2":0,"torso_1":53,"hair_1":10,"blush_2":0,"beard_4":0,"chain_2":0,"makeup_4":0,"blemishes_2":0,"age_2":0,"sun_2":0,"helmet_1":115}', 'unemployed', 0, '{"weapon_combatpistol":{"ammo":200},"weapon_microsmg":{"ammo":200},"weapon_pumpshotgun":{"ammo":200},"WEAPON_CARBINERIFLE":{"ammo":200},"weapon_revolver":{"ammo":200},"weapon_bat":{"ammo":1},"weapon_smg":{"ammo":200},"WEAPON_ASSAULTRIFLE":{"ammo":200},"weapon_pistol50":{"ammo":200},"weapon_knife":{"ammo":1},"WEAPON_HEAVYSNIPER":{"ammo":7},"WEAPON_GUSENBERG":{"ammo":200}}', '{"y":-934.5,"x":166.2,"heading":291.5,"z":30.1}', NULL, NULL, 'user', 'Minjugatoo', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":5020,"black_money":0,"money":6899}', '[]', NULL, 10, 10, 797, 1, 0);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:11000014435b626', 'license:6ee4b4a17445b6216789cbdae4e82623a82323c1', 0, NULL, '{"lipstick_1":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":0,"makeup_3":0,"torso_2":10,"bodyb_2":0,"shoes_2":0,"torso_1":75,"eyebrows_2":10,"pants_2":0,"bags_2":0,"mask_2":0,"eye_color":2,"skin":4,"watches_2":0,"watches_1":-1,"helmet_1":-1,"helmet_2":0,"arms":0,"age_1":0,"sex":0,"lipstick_3":0,"face":31,"mask_1":0,"tshirt_1":15,"complexion_1":0,"chain_1":0,"shoes_1":3,"chest_1":0,"glasses_1":5,"decals_2":0,"hair_2":4,"blemishes_1":0,"tshirt_2":0,"decals_1":0,"complexion_2":0,"beard_3":0,"makeup_2":0,"blush_1":0,"eyebrows_4":4,"makeup_4":0,"bracelets_2":0,"chest_2":0,"pants_1":4,"bags_1":0,"hair_color_1":14,"eyebrows_3":0,"arms_2":0,"bracelets_1":-1,"moles_2":0,"beard_1":0,"makeup_1":0,"blush_3":0,"ears_1":-1,"hair_color_2":28,"age_2":0,"bproof_1":0,"bproof_2":0,"eyebrows_1":2,"moles_1":0,"glasses_2":1,"blush_2":0,"beard_4":0,"chain_2":0,"ears_2":0,"bodyb_1":0,"hair_1":19,"blemishes_2":0,"sun_2":0}', 'unemployed', 0, '[]', '{"y":-779.8,"x":220.9,"heading":179.2,"z":30.8}', NULL, NULL, 'user', 'Arya', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":5010,"black_money":0,"money":6021}', '[]', NULL, 3, 8, 601, 1, -2);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:110000144487ce7', 'license:f28d88bb44dfa72b13c7fa40c648b2655d1fcf12', 0, NULL, '{"helmet_1":3,"moles_1":0,"glasses_2":0,"hair_color_2":0,"skin":3,"eyebrows_4":0,"eyebrows_2":0,"bodyb_1":0,"complexion_1":0,"beard_4":0,"bracelets_2":0,"lipstick_3":0,"moles_2":0,"hair_1":5,"makeup_3":0,"sex":0,"chest_2":0,"tshirt_2":0,"chest_3":0,"age_1":0,"shoes_1":5,"lipstick_1":0,"shoes_2":3,"makeup_4":0,"arms":0,"sun_2":0,"glasses_1":0,"watches_1":-1,"beard_3":0,"bodyb_2":0,"sun_1":0,"blemishes_2":0,"blush_3":0,"lipstick_2":0,"tshirt_1":15,"blemishes_1":0,"pants_2":3,"bags_1":0,"ears_1":-1,"hair_color_1":0,"makeup_2":0,"watches_2":0,"beard_2":0,"hair_2":0,"chain_1":0,"pants_1":15,"decals_1":0,"chest_1":0,"lipstick_4":0,"complexion_2":0,"ears_2":0,"blush_2":0,"bproof_1":0,"decals_2":0,"torso_2":6,"eye_color":0,"makeup_1":0,"torso_1":87,"mask_1":0,"helmet_2":0,"arms_2":0,"chain_2":0,"mask_2":0,"eyebrows_1":0,"face":11,"bags_2":0,"age_2":0,"blush_1":0,"beard_1":0,"bproof_2":0,"eyebrows_3":0,"bracelets_1":-1}', 'unemployed', 0, '[]', '{"y":-784.0,"z":30.7,"heading":255.0,"x":229.9}', NULL, NULL, 'user', 'Bobaa', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"black_money":0,"bank":5020,"money":12438}', '[]', NULL, 25, 57, 788, 1, -15.5);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:1100001445bb3ec', 'license:728707b59a0357c28ea6f172fd9e46054ed7e47d', 0, NULL, '{"chest_2":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":0,"makeup_3":0,"torso_2":0,"bodyb_2":0,"shoes_2":0,"bproof_2":0,"eyebrows_2":0,"pants_2":0,"bags_2":0,"mask_2":0,"eye_color":0,"skin":0,"watches_2":0,"watches_1":-1,"helmet_1":-1,"helmet_2":0,"arms":0,"age_1":0,"sex":0,"lipstick_3":0,"face":31,"mask_1":0,"tshirt_1":0,"complexion_1":0,"chain_1":0,"shoes_1":0,"chest_1":0,"glasses_1":0,"makeup_2":0,"hair_2":0,"blemishes_1":0,"tshirt_2":0,"decals_1":0,"complexion_2":0,"bags_1":0,"hair_1":0,"beard_4":0,"torso_1":0,"lipstick_1":0,"arms_2":0,"bracelets_1":-1,"pants_1":0,"glasses_2":0,"hair_color_1":0,"eyebrows_3":0,"eyebrows_4":0,"makeup_4":0,"moles_2":0,"beard_1":0,"bodyb_1":0,"blush_3":0,"ears_1":-1,"hair_color_2":0,"blush_1":0,"bproof_1":0,"decals_2":0,"moles_1":0,"ears_2":0,"beard_3":0,"blush_2":0,"blemishes_2":0,"chain_2":0,"eyebrows_1":0,"sun_2":0,"age_2":0,"bracelets_2":0,"makeup_1":0}', 'unemployed', 0, '[]', '{"y":-793.3,"x":220.8,"heading":268.0,"z":30.7}', NULL, NULL, 'user', 'Alfath Wh', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":5000,"black_money":0,"money":7901}', '[]', NULL, 16, 12, 736, 1, 2);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:110000144af5d7b', 'license:f8cfcf4e2177d5753fd06809fba6680a1416642b', 0, NULL, NULL, 'unemployed', 0, '[]', '{"y":-765.3,"x":243.1,"heading":283.4,"z":30.8}', NULL, NULL, 'user', '', '', '', '', '', 0, 0, NULL, '{"bank":5000,"black_money":0,"money":5000}', '[]', NULL, 0, 0, 0, 1, 0);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:110000144f1b608', 'license:f0549ee21840169f8975311a87f05929dca304e3', 0, NULL, '{"chest_2":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":0,"makeup_3":0,"torso_2":0,"bodyb_2":0,"shoes_2":0,"torso_1":0,"eyebrows_2":0,"pants_2":4,"bags_2":0,"mask_2":9,"eye_color":2,"eyebrows_1":0,"watches_2":0,"watches_1":-1,"helmet_1":-1,"helmet_2":0,"arms":0,"age_1":0,"sex":0,"lipstick_3":0,"face":0,"mask_1":118,"tshirt_1":0,"complexion_1":0,"chain_1":0,"shoes_1":5,"chest_1":0,"glasses_1":0,"decals_2":0,"hair_2":0,"blemishes_1":0,"tshirt_2":0,"decals_1":0,"complexion_2":0,"bags_1":10,"bproof_2":0,"blemishes_2":0,"beard_1":0,"moles_1":0,"age_2":0,"bodyb_1":0,"pants_1":42,"lipstick_1":0,"hair_color_1":0,"eyebrows_3":0,"bracelets_2":0,"makeup_2":0,"moles_2":0,"ears_2":0,"makeup_1":0,"blush_3":0,"ears_1":-1,"hair_color_2":0,"bracelets_1":-1,"bproof_1":0,"beard_3":0,"eyebrows_4":0,"arms_2":0,"glasses_2":0,"blush_2":0,"beard_4":0,"chain_2":0,"blush_1":0,"makeup_4":0,"hair_1":0,"skin":0,"sun_2":0}', 'unemployed', 0, '[]', '{"y":-861.3,"x":230.1,"heading":173.9,"z":29.2}', NULL, NULL, 'user', 'Rei Delas', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":5000,"black_money":0,"money":5710}', '[]', NULL, 5, 1, 665, 1, 2.5);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:110000145418046', 'license:37192a16585c5ec1fb934d24d15662c6fc5ef007', 0, NULL, '{"chest_2":0,"sun_1":0,"chest_3":0,"lipstick_4":10,"beard_2":10,"lipstick_2":9,"makeup_3":8,"torso_2":1,"makeup_4":6,"shoes_2":0,"bproof_2":0,"eyebrows_2":10,"pants_2":5,"bags_2":0,"mask_2":0,"eye_color":5,"eyebrows_1":18,"watches_2":2,"watches_1":19,"helmet_1":-1,"helmet_2":0,"arms":18,"age_1":0,"sex":0,"lipstick_3":34,"face":31,"bracelets_1":4,"tshirt_1":75,"complexion_1":0,"chain_1":0,"shoes_1":19,"chest_1":0,"glasses_1":5,"makeup_2":5,"moles_1":0,"blemishes_1":0,"tshirt_2":0,"decals_1":0,"blush_1":0,"beard_3":1,"mask_1":0,"makeup_1":22,"glasses_2":11,"torso_1":168,"bodyb_2":0,"lipstick_1":4,"pants_1":24,"bodyb_1":0,"hair_color_1":29,"eyebrows_3":10,"bracelets_2":0,"bags_1":0,"moles_2":0,"beard_1":10,"sun_2":0,"blush_3":0,"ears_1":-1,"hair_color_2":0,"skin":0,"bproof_1":0,"decals_2":0,"hair_2":0,"beard_4":1,"complexion_2":0,"blush_2":0,"blemishes_2":0,"chain_2":0,"arms_2":3,"eyebrows_4":0,"hair_1":15,"ears_2":0,"age_2":0}', 'unemployed', 0, '[]', '{"y":-825.5,"x":185.1,"heading":359.9,"z":30.7}', NULL, NULL, 'user', 'SHINA', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":5010,"black_money":0,"money":5000}', '[]', NULL, 0, 0, 0, 1, 0);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:1100001455170b3', 'license:a039c7afd96761be1763ae1248721cd8def34288', 0, NULL, '{"lipstick_1":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":0,"makeup_3":0,"torso_2":0,"makeup_4":0,"shoes_2":0,"bproof_2":0,"eyebrows_2":0,"pants_2":0,"bags_2":0,"mask_2":0,"eye_color":0,"eyebrows_1":0,"watches_2":0,"watches_1":-1,"glasses_2":0,"helmet_2":0,"arms":0,"age_1":0,"sex":0,"lipstick_3":0,"face":11,"bracelets_1":-1,"tshirt_1":0,"complexion_1":0,"chain_1":0,"shoes_1":0,"chest_1":0,"glasses_1":0,"decals_2":0,"moles_1":0,"blemishes_1":0,"tshirt_2":0,"decals_1":0,"complexion_2":0,"beard_3":0,"bodyb_2":0,"age_2":0,"hair_2":0,"makeup_2":0,"chest_2":0,"bags_1":0,"pants_1":0,"makeup_1":0,"hair_color_1":0,"eyebrows_3":0,"eyebrows_4":0,"mask_1":0,"moles_2":0,"ears_2":0,"sun_2":0,"blush_3":0,"ears_1":-1,"hair_color_2":0,"bracelets_2":0,"bproof_1":0,"bodyb_1":0,"helmet_1":-1,"arms_2":0,"blush_1":0,"blush_2":0,"beard_4":0,"chain_2":0,"skin":3,"torso_1":0,"hair_1":3,"blemishes_2":0,"beard_1":0}', 'unemployed', 0, '[]', '{"y":-1105.6,"x":13.7,"heading":101.1,"z":29.8}', NULL, NULL, 'user', 'Omar', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":5000,"black_money":0,"money":4800}', '{"boxpistol":1}', NULL, 0, 0, 0, 1, 0);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:110000145578869', 'license:b43f3b85f4790209ae4055badf8d42283a7ca293', 0, NULL, '{"helmet_1":7,"eye_color":0,"glasses_2":0,"hair_color_2":0,"makeup_1":0,"eyebrows_4":0,"eyebrows_2":0,"bodyb_1":0,"complexion_1":0,"beard_4":0,"eyebrows_1":0,"lipstick_3":0,"moles_2":0,"hair_1":3,"torso_1":142,"sex":0,"chest_2":0,"tshirt_2":1,"chest_3":0,"age_1":0,"shoes_1":10,"lipstick_1":0,"shoes_2":0,"makeup_4":0,"arms":17,"sun_2":0,"glasses_1":0,"watches_1":-1,"beard_3":0,"bodyb_2":0,"sun_1":0,"blemishes_2":0,"blush_3":0,"lipstick_2":0,"tshirt_1":33,"arms_2":0,"pants_2":1,"bags_1":0,"ears_1":-1,"hair_color_1":3,"makeup_2":0,"watches_2":0,"bags_2":0,"hair_2":0,"chain_1":27,"pants_1":24,"blush_2":0,"chest_1":0,"lipstick_4":0,"complexion_2":0,"ears_2":0,"bracelets_2":0,"bproof_1":0,"decals_2":0,"blemishes_1":0,"beard_2":0,"moles_1":0,"makeup_3":0,"mask_1":0,"helmet_2":2,"bproof_2":0,"mask_2":0,"skin":4,"torso_2":0,"face":0,"decals_1":0,"age_2":0,"chain_2":13,"beard_1":0,"eyebrows_3":0,"blush_1":0,"bracelets_1":-1}', 'unemployed', 0, '{"weapon_bat":{"ammo":1},"weapon_pumpshotgun":{"ammo":200},"WEAPON_ASSAULTRIFLE":{"ammo":200},"weapon_microsmg":{"ammo":200},"WEAPON_HEAVYSNIPER":{"ammo":7},"WEAPON_GUSENBERG":{"ammo":200},"WEAPON_CARBINERIFLE":{"ammo":200},"weapon_pistol50":{"ammo":200},"weapon_knife":{"ammo":1},"weapon_combatpistol":{"ammo":200},"weapon_revolver":{"ammo":200},"weapon_smg":{"ammo":200}}', '{"y":-822.8,"z":29.8,"heading":281.7,"x":226.3}', NULL, NULL, 'user', 'Kontol', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"black_money":0,"bank":5010,"money":2609}', '[]', NULL, 6, 7, 707, 1, -0.5);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:110000145601b45', 'license:85abf5b16532cee656ba88b59faed2c61c327e2f', 0, NULL, '{"chest_2":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":0,"makeup_3":0,"torso_2":9,"bodyb_2":0,"shoes_2":0,"torso_1":128,"eyebrows_2":0,"pants_2":1,"bags_2":0,"mask_2":12,"eye_color":0,"skin":0,"watches_2":0,"watches_1":-1,"helmet_1":112,"helmet_2":17,"arms":59,"age_1":0,"sex":0,"lipstick_3":0,"face":40,"bracelets_1":-1,"tshirt_1":15,"complexion_1":0,"chain_1":50,"shoes_1":1,"chest_1":0,"glasses_1":25,"makeup_2":0,"moles_1":0,"blemishes_1":0,"tshirt_2":0,"decals_1":0,"complexion_2":0,"beard_3":0,"hair_2":0,"decals_2":0,"arms_2":0,"beard_4":0,"lipstick_1":0,"glasses_2":3,"pants_1":28,"mask_1":57,"hair_color_1":0,"eyebrows_3":0,"eyebrows_4":0,"makeup_4":0,"moles_2":0,"beard_1":0,"makeup_1":0,"blush_3":0,"ears_1":-1,"hair_color_2":0,"bodyb_1":0,"bproof_1":0,"ears_2":0,"eyebrows_1":0,"sun_2":0,"blush_1":0,"blush_2":0,"blemishes_2":0,"chain_2":0,"bproof_2":0,"bracelets_2":0,"hair_1":12,"bags_1":0,"age_2":0}', 'unemployed', 0, '[]', '{"y":-779.6,"x":220.9,"heading":179.2,"z":30.8}', NULL, NULL, 'user', 'Ryzen', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":5000,"black_money":0,"money":7501}', '[]', NULL, 12, 13, 696, 1, -0.5);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:11000014589d788', 'license:512ae7315f1cdf4d0a1ca9ec903d65437e8f121a', 0, NULL, '{"chest_2":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":0,"makeup_3":0,"torso_2":0,"makeup_4":0,"shoes_2":0,"bproof_2":0,"eyebrows_2":0,"pants_2":5,"bags_2":0,"mask_2":0,"eye_color":0,"skin":5,"watches_2":0,"watches_1":-1,"helmet_1":40,"helmet_2":0,"arms":0,"age_1":0,"sex":0,"lipstick_3":0,"face":31,"mask_1":0,"tshirt_1":15,"complexion_1":0,"chain_1":125,"shoes_1":8,"chest_1":0,"glasses_1":0,"makeup_2":0,"moles_1":0,"blemishes_1":0,"tshirt_2":0,"decals_1":0,"complexion_2":0,"bags_1":0,"lipstick_1":0,"bracelets_1":-1,"arms_2":0,"age_2":0,"beard_3":0,"sun_2":0,"pants_1":24,"bodyb_2":0,"hair_color_1":27,"eyebrows_3":0,"eyebrows_4":0,"blush_1":0,"moles_2":0,"ears_2":0,"makeup_1":0,"blush_3":0,"ears_1":-1,"hair_color_2":0,"beard_4":0,"bproof_1":0,"glasses_2":0,"torso_1":22,"hair_2":0,"decals_2":0,"blush_2":0,"blemishes_2":0,"chain_2":0,"bracelets_2":0,"beard_1":0,"hair_1":49,"bodyb_1":0,"eyebrows_1":0}', 'unemployed', 0, '[]', '{"y":-779.6,"x":220.9,"heading":179.2,"z":30.8}', NULL, NULL, 'user', 'EL OCONNOR', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":5010,"black_money":0,"money":9990}', '[]', NULL, 22, 30, 784, 1, -3.5);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:110000145929dd1', 'license:76ce5f6ae2941d9c373e2f5529c8785b26c1c498', 0, NULL, '{"chest_2":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":0,"makeup_3":0,"torso_2":0,"makeup_4":0,"shoes_2":0,"bproof_2":0,"eyebrows_2":0,"pants_2":0,"bags_2":0,"mask_2":0,"eye_color":0,"skin":0,"watches_2":0,"watches_1":-1,"glasses_2":0,"helmet_2":0,"arms":0,"age_1":0,"sex":0,"lipstick_3":0,"face":0,"bracelets_1":-1,"tshirt_1":0,"complexion_1":0,"chain_1":0,"shoes_1":0,"chest_1":0,"glasses_1":0,"decals_2":0,"hair_2":0,"blemishes_1":0,"tshirt_2":0,"decals_1":0,"complexion_2":0,"beard_3":0,"blush_1":0,"arms_2":0,"lipstick_1":0,"eyebrows_1":0,"torso_1":0,"beard_4":0,"pants_1":0,"moles_1":0,"hair_color_1":0,"eyebrows_3":0,"eyebrows_4":0,"mask_1":0,"moles_2":0,"ears_2":0,"bodyb_1":0,"blush_3":0,"ears_1":-1,"hair_color_2":0,"sun_2":0,"bproof_1":0,"makeup_1":0,"bracelets_2":0,"beard_1":0,"makeup_2":0,"blush_2":0,"blemishes_2":0,"chain_2":0,"age_2":0,"bags_1":0,"hair_1":0,"bodyb_2":0,"helmet_1":-1}', 'unemployed', 0, '[]', '{"y":-782.0,"x":218.1,"heading":131.2,"z":30.8}', NULL, NULL, 'user', 'Lontolodon', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":5010,"black_money":0,"money":8284}', '[]', NULL, 18, 14, 691, 1, 2.5);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:110000145b44b91', 'license:95915bc934fd1c9d385233476076e1027c374d6c', 0, NULL, '{"lipstick_1":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":0,"makeup_3":0,"torso_2":0,"makeup_4":0,"shoes_2":0,"bproof_2":0,"eyebrows_2":0,"pants_2":0,"bags_2":0,"mask_2":0,"eye_color":0,"eyebrows_1":0,"watches_2":0,"watches_1":-1,"helmet_1":-1,"helmet_2":0,"arms":0,"age_1":0,"sex":0,"lipstick_3":0,"face":0,"bracelets_1":-1,"tshirt_1":0,"complexion_1":0,"chain_1":0,"shoes_1":0,"chest_1":0,"glasses_1":0,"makeup_2":0,"hair_2":0,"blemishes_1":0,"tshirt_2":0,"decals_1":0,"complexion_2":0,"bags_1":0,"eyebrows_4":0,"ears_2":0,"bodyb_1":0,"bodyb_2":0,"chest_2":0,"mask_1":0,"pants_1":0,"glasses_2":0,"hair_color_1":0,"eyebrows_3":0,"bracelets_2":0,"hair_1":0,"moles_2":0,"beard_1":0,"makeup_1":0,"blush_3":0,"ears_1":-1,"hair_color_2":0,"decals_2":0,"bproof_1":0,"beard_3":0,"arms_2":0,"moles_1":0,"sun_2":0,"blush_2":0,"beard_4":0,"chain_2":0,"blush_1":0,"torso_1":0,"age_2":0,"skin":0,"blemishes_2":0}', 'unemployed', 0, '[]', '{"y":-862.7,"x":223.6,"heading":318.4,"z":29.4}', NULL, NULL, 'user', 'Joao Esqueiro', NULL, NULL, 'f', NULL, 0, 0, NULL, '{"bank":5000,"black_money":0,"money":4663}', '[]', NULL, 0, 3, 117, 1, -1);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:110000145e293a9', 'license:932bb10b7ec46d1bfe8f256880cccdd11607c922', 0, NULL, NULL, 'unemployed', 0, '[]', '{"y":-786.5,"x":239.4,"heading":89.9,"z":30.6}', NULL, NULL, 'user', 'Nusa', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":5000,"black_money":0,"money":5073}', '[]', NULL, 0, 1, 35, 1, -0.5);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:110000145f891fb', 'license:2e98544790a5a8279af3b42f8fcf38ef635a0dbe', 0, NULL, '{"lipstick_1":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":0,"makeup_3":0,"torso_2":0,"makeup_4":0,"shoes_2":4,"bproof_2":0,"eyebrows_2":0,"pants_2":8,"bags_2":0,"mask_2":0,"eye_color":0,"eyebrows_1":0,"watches_2":0,"watches_1":-1,"glasses_2":0,"helmet_2":3,"arms":26,"age_1":0,"sex":0,"lipstick_3":0,"face":0,"bracelets_1":-1,"tshirt_1":131,"complexion_1":0,"chain_1":0,"shoes_1":16,"chest_1":0,"glasses_1":0,"decals_2":0,"hair_2":0,"blemishes_1":0,"tshirt_2":13,"decals_1":0,"complexion_2":0,"beard_3":0,"makeup_1":0,"bodyb_2":0,"helmet_1":115,"bodyb_1":0,"chest_2":0,"arms_2":0,"pants_1":28,"mask_1":0,"hair_color_1":0,"eyebrows_3":0,"bracelets_2":0,"skin":0,"moles_2":0,"beard_1":0,"sun_2":0,"blush_3":0,"ears_1":-1,"hair_color_2":0,"hair_1":0,"bproof_1":0,"makeup_2":0,"blemishes_2":0,"torso_1":123,"moles_1":0,"blush_2":0,"beard_4":0,"chain_2":0,"ears_2":0,"blush_1":0,"age_2":0,"bags_1":0,"eyebrows_4":0}', 'unemployed', 0, '{"weapon_combatpistol":{"ammo":200},"weapon_microsmg":{"ammo":200},"weapon_pumpshotgun":{"ammo":200},"WEAPON_CARBINERIFLE":{"ammo":200},"weapon_revolver":{"ammo":200},"weapon_bat":{"ammo":1},"weapon_smg":{"ammo":200},"WEAPON_ASSAULTRIFLE":{"ammo":200},"weapon_pistol50":{"ammo":200},"weapon_knife":{"ammo":1},"WEAPON_HEAVYSNIPER":{"ammo":7},"WEAPON_GUSENBERG":{"ammo":200}}', '{"y":-795.6,"x":214.6,"heading":155.6,"z":30.8}', NULL, NULL, 'user', 'Bimbim', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":5010,"black_money":0,"money":5378}', '[]', NULL, 1, 3, 208, 1, -0.5);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:110000146080c82', 'license:8cae2c6c8c596a0209a4f0148b8c78d0e856cd9f', 0, NULL, '{"lipstick_1":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":0,"makeup_3":0,"torso_2":0,"bodyb_2":0,"shoes_2":0,"torso_1":20,"eyebrows_2":0,"pants_2":5,"bags_2":0,"mask_2":2,"eye_color":0,"eyebrows_1":0,"watches_2":0,"watches_1":-1,"helmet_1":115,"helmet_2":3,"arms":0,"age_1":0,"sex":0,"lipstick_3":0,"face":0,"mask_1":51,"tshirt_1":0,"complexion_1":0,"chain_1":0,"shoes_1":7,"chest_1":0,"glasses_1":0,"decals_2":0,"hair_2":0,"blemishes_1":0,"tshirt_2":5,"decals_1":0,"complexion_2":0,"bags_1":0,"makeup_4":0,"sun_2":0,"glasses_2":0,"ears_2":0,"bproof_2":0,"chest_2":0,"pants_1":24,"beard_3":0,"hair_color_1":29,"eyebrows_3":0,"arms_2":0,"bodyb_1":0,"moles_2":0,"beard_1":0,"makeup_1":0,"blush_3":0,"ears_1":-1,"hair_color_2":0,"bracelets_1":-1,"bproof_1":0,"eyebrows_4":0,"beard_4":0,"makeup_2":0,"moles_1":0,"blush_2":0,"blemishes_2":0,"chain_2":0,"blush_1":0,"bracelets_2":0,"age_2":0,"skin":5,"hair_1":50}', 'unemployed', 0, '[]', '{"y":-837.8,"x":217.3,"heading":22.0,"z":29.7}', NULL, NULL, 'user', 'CONA ABERTA', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":5000,"black_money":0,"money":4893}', '[]', NULL, 0, 1, 33, 1, -0.5);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:11000014639824a', 'license:d67e21e09729f23390d893900ab2bdf4fef7072e', 0, NULL, '{"chest_2":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":0,"makeup_3":0,"torso_2":0,"bodyb_2":0,"shoes_2":0,"torso_1":0,"eyebrows_2":0,"pants_2":0,"bags_2":0,"mask_2":0,"eye_color":0,"eyebrows_1":0,"watches_2":0,"watches_1":-1,"glasses_2":0,"helmet_2":0,"arms":0,"age_1":0,"sex":0,"lipstick_3":0,"face":0,"bracelets_1":-1,"tshirt_1":0,"complexion_1":0,"chain_1":0,"shoes_1":0,"chest_1":0,"glasses_1":0,"decals_2":0,"hair_2":0,"blemishes_1":0,"tshirt_2":0,"decals_1":0,"blush_1":0,"bags_1":0,"complexion_2":0,"bproof_2":0,"moles_1":0,"lipstick_1":0,"beard_1":0,"mask_1":0,"pants_1":0,"helmet_1":-1,"hair_color_1":0,"eyebrows_3":0,"arms_2":0,"blemishes_2":0,"moles_2":0,"ears_2":0,"sun_2":0,"blush_3":0,"ears_1":-1,"hair_color_2":0,"eyebrows_4":0,"bproof_1":0,"makeup_2":0,"makeup_1":0,"bracelets_2":0,"beard_3":0,"blush_2":0,"beard_4":0,"chain_2":0,"bodyb_1":0,"makeup_4":0,"hair_1":0,"age_2":0,"skin":0}', 'unemployed', 0, '{"weapon_combatpistol":{"ammo":200},"weapon_microsmg":{"ammo":200},"weapon_pumpshotgun":{"ammo":200},"WEAPON_CARBINERIFLE":{"ammo":200},"weapon_revolver":{"ammo":200},"weapon_bat":{"ammo":1},"weapon_smg":{"ammo":200},"WEAPON_ASSAULTRIFLE":{"ammo":200},"weapon_pistol50":{"ammo":200},"weapon_knife":{"ammo":1},"WEAPON_HEAVYSNIPER":{"ammo":7},"WEAPON_GUSENBERG":{"ammo":200}}', '{"y":-895.9,"x":193.6,"heading":221.1,"z":30.7}', NULL, NULL, 'user', 'ASEP BATU', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":5020,"black_money":0,"money":8975}', '[]', NULL, 11, 34, 785, 1, -11.5);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:11000014701d571', 'license:7de2d8fe27cf4a3f66009021791b61633e3a4e96', 0, NULL, '{"lipstick_1":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":0,"makeup_3":0,"torso_2":2,"makeup_4":0,"shoes_2":10,"bproof_2":0,"eyebrows_2":0,"pants_2":0,"bags_2":0,"mask_2":25,"eye_color":0,"eyebrows_1":0,"watches_2":0,"watches_1":-1,"glasses_2":2,"helmet_2":1,"arms":18,"age_1":0,"sex":0,"lipstick_3":0,"face":0,"mask_1":104,"tshirt_1":0,"complexion_1":0,"chain_1":0,"shoes_1":26,"chest_1":0,"glasses_1":24,"decals_2":0,"hair_2":0,"blemishes_1":0,"tshirt_2":2,"decals_1":0,"blush_1":0,"beard_3":0,"beard_1":0,"complexion_2":0,"bodyb_2":0,"hair_1":42,"torso_1":172,"bags_1":0,"pants_1":4,"skin":0,"hair_color_1":0,"eyebrows_3":0,"bracelets_2":0,"chest_2":0,"moles_2":0,"ears_2":0,"sun_2":0,"blush_3":0,"ears_1":-1,"hair_color_2":0,"bracelets_1":-1,"bproof_1":0,"eyebrows_4":0,"bodyb_1":0,"makeup_2":0,"makeup_1":0,"blush_2":0,"blemishes_2":0,"chain_2":0,"moles_1":0,"arms_2":0,"age_2":0,"helmet_1":45,"beard_4":0}', 'unemployed', 0, '[]', '{"y":-779.8,"x":220.9,"heading":179.2,"z":30.8}', NULL, NULL, 'user', 'Abdul', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":5010,"black_money":0,"money":6059}', '[]', NULL, 5, 6, 674, 1, -0.5);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:1100001476b174b', 'license:f4c1239ae90181095186e9bb3263be2e9a6779d3', 0, NULL, '{"beard_4":0,"sex":0,"skin":0,"blush_1":0,"beard_1":0,"watches_1":-1,"hair_1":0,"eyebrows_1":0,"chest_3":0,"beard_2":0,"chain_2":0,"watches_2":0,"moles_2":0,"makeup_1":0,"lipstick_1":0,"sun_2":0,"complexion_1":0,"makeup_2":0,"pants_1":0,"torso_1":0,"blush_2":0,"shoes_1":0,"shoes_2":0,"age_2":0,"hair_2":0,"makeup_4":0,"mask_2":0,"chest_1":0,"lipstick_2":0,"eyebrows_2":0,"complexion_2":0,"mask_1":0,"bracelets_1":-1,"decals_2":0,"bags_1":0,"helmet_1":-1,"beard_3":0,"hair_color_1":0,"ears_2":0,"sun_1":0,"torso_2":0,"blemishes_1":0,"ears_1":-1,"bodyb_2":0,"age_1":0,"blush_3":0,"chain_1":0,"lipstick_3":0,"eyebrows_3":0,"bracelets_2":0,"moles_1":0,"helmet_2":0,"glasses_1":0,"eyebrows_4":0,"makeup_3":0,"blemishes_2":0,"chest_2":0,"lipstick_4":0,"pants_2":0,"hair_color_2":0,"arms":0,"bodyb_1":0,"tshirt_1":0,"face":0,"glasses_2":0,"eye_color":0,"arms_2":0,"decals_1":0,"bags_2":0,"tshirt_2":0}', 'unemployed', 0, '{"weapon_bat":{"ammo":1},"WEAPON_ASSAULTRIFLE":{"ammo":200},"weapon_microsmg":{"ammo":200},"weapon_knife":{"ammo":1},"WEAPON_GUSENBERG":{"ammo":200},"weapon_combatpistol":{"ammo":200},"WEAPON_HEAVYSNIPER":{"ammo":7},"WEAPON_CARBINERIFLE":{"ammo":200},"weapon_revolver":{"ammo":200},"weapon_pumpshotgun":{"ammo":200},"weapon_pistol50":{"ammo":200},"weapon_smg":{"ammo":200}}', '{"x":-98.2,"y":-1131.9,"z":25.8,"heading":291.6}', NULL, NULL, 'user', 'Medi Irawan', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":5000,"black_money":0,"money":800}', '[]', NULL, 0, 0, 0, 1, 0);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:11000014849aa32', 'license:63034752665a80c4f7694e1cd40d70279a087938', 0, NULL, '{"torso_1":0,"chest_1":0,"beard_1":0,"eyebrows_2":0,"complexion_2":0,"chest_2":0,"lipstick_3":0,"lipstick_1":0,"sun_1":0,"face":31,"bproof_1":0,"blush_2":0,"chain_1":0,"glasses_2":0,"eyebrows_4":0,"eyebrows_3":0,"bproof_2":0,"arms_2":0,"sex":0,"bodyb_2":0,"bodyb_1":0,"helmet_2":0,"torso_2":0,"watches_1":-1,"bags_2":0,"mask_2":0,"hair_1":11,"hair_color_2":14,"ears_2":0,"helmet_1":-1,"moles_1":0,"blemishes_1":0,"beard_4":0,"shoes_1":0,"lipstick_2":0,"bracelets_2":0,"pants_1":0,"tshirt_1":0,"blush_1":0,"mask_1":0,"decals_1":0,"tshirt_2":0,"chest_3":0,"glasses_1":0,"age_2":0,"sun_2":0,"bracelets_1":-1,"makeup_4":0,"beard_2":0,"makeup_1":0,"ears_1":-1,"age_1":0,"arms":0,"blush_3":0,"hair_2":5,"beard_3":0,"moles_2":0,"hair_color_1":9,"eye_color":0,"lipstick_4":0,"blemishes_2":0,"shoes_2":0,"makeup_2":0,"watches_2":0,"complexion_1":0,"pants_2":0,"makeup_3":0,"skin":12,"chain_2":0,"eyebrows_1":0,"decals_2":0,"bags_1":0}', 'unemployed', 0, '{"weapon_pistol50":{"ammo":200},"weapon_microsmg":{"ammo":200},"weapon_revolver":{"ammo":200},"WEAPON_ASSAULTRIFLE":{"ammo":200},"weapon_pumpshotgun":{"ammo":200},"weapon_bat":{"ammo":1},"weapon_combatpistol":{"ammo":200},"WEAPON_GUSENBERG":{"ammo":200},"weapon_knife":{"ammo":1},"weapon_smg":{"ammo":200},"WEAPON_CARBINERIFLE":{"ammo":200},"WEAPON_HEAVYSNIPER":{"ammo":7}}', '{"x":193.5,"heading":316.0,"z":31.2,"y":-855.0}', NULL, NULL, 'user', 'Tor Pascal', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":5010,"black_money":0,"money":5382}', '[]', NULL, 2, 9, 501, 1, -3.5);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:110000148581d57', 'license:cb58b6f042686aea8c7519a3a7ba78acbba2d444', 0, NULL, '{"lipstick_1":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":0,"makeup_3":0,"torso_2":6,"makeup_4":0,"shoes_2":0,"torso_1":261,"eyebrows_2":0,"pants_2":2,"bags_2":0,"mask_2":0,"eye_color":0,"eyebrows_1":0,"watches_2":0,"watches_1":-1,"helmet_1":115,"helmet_2":5,"arms":0,"age_1":0,"sex":0,"lipstick_3":0,"face":27,"bracelets_1":-1,"tshirt_1":0,"complexion_1":0,"chain_1":0,"shoes_1":1,"chest_1":0,"glasses_1":0,"makeup_2":0,"hair_2":0,"blemishes_1":0,"tshirt_2":0,"decals_1":0,"complexion_2":0,"bags_1":0,"beard_4":0,"beard_3":0,"bodyb_2":0,"decals_2":0,"chest_2":0,"blush_1":0,"pants_1":6,"mask_1":0,"hair_color_1":4,"eyebrows_3":0,"bracelets_2":0,"bodyb_1":0,"moles_2":0,"beard_1":0,"sun_2":0,"blush_3":0,"ears_1":-1,"hair_color_2":0,"age_2":0,"bproof_1":0,"ears_2":0,"moles_1":0,"glasses_2":0,"eyebrows_4":0,"blush_2":0,"blemishes_2":0,"chain_2":0,"skin":0,"bproof_2":0,"hair_1":67,"makeup_1":0,"arms_2":0}', 'unemployed', 0, '{"weapon_combatpistol":{"ammo":200},"weapon_microsmg":{"ammo":200},"weapon_pumpshotgun":{"ammo":200},"WEAPON_CARBINERIFLE":{"ammo":200},"weapon_revolver":{"ammo":200},"weapon_bat":{"ammo":1},"weapon_smg":{"ammo":200},"WEAPON_ASSAULTRIFLE":{"ammo":200},"weapon_pistol50":{"ammo":200},"weapon_knife":{"ammo":1},"WEAPON_HEAVYSNIPER":{"ammo":7},"WEAPON_GUSENBERG":{"ammo":200}}', '{"y":162.5,"x":235.7,"heading":223.2,"z":105.1}', NULL, NULL, 'user', 'Rana', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":5010,"black_money":0,"money":5355}', '[]', NULL, 2, 2, 279, 1, 0);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:1100001485c709d', 'license:f4119b7848252733ddb1e98f3d7ca0354e947e8b', 0, NULL, NULL, 'unemployed', 0, '[]', '{"y":-765.44,"x":244.58,"heading":169.52,"z":30.8}', NULL, NULL, 'user', '', '', '', '', '', 0, 0, NULL, '{"bank":5000,"black_money":0,"money":5000}', '[]', NULL, 0, 0, 0, 1, 0);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:11000014874f7ab', 'license:9259a40e7704b5c37c3a32114e98bb09dd99d643', 0, NULL, '{"chest_2":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":0,"makeup_3":0,"torso_2":3,"bodyb_2":0,"shoes_2":0,"torso_1":88,"eyebrows_2":0,"pants_2":0,"bags_2":0,"mask_2":0,"eye_color":0,"eyebrows_1":0,"watches_2":0,"watches_1":-1,"helmet_1":-1,"helmet_2":0,"arms":19,"age_1":0,"sex":0,"lipstick_3":0,"face":31,"bracelets_1":-1,"tshirt_1":23,"complexion_1":0,"chain_1":0,"shoes_1":31,"chest_1":0,"glasses_1":0,"makeup_2":0,"moles_1":0,"blemishes_1":0,"tshirt_2":0,"decals_1":0,"complexion_2":0,"beard_3":0,"glasses_2":0,"skin":0,"makeup_4":0,"age_2":0,"beard_1":0,"lipstick_1":0,"pants_1":28,"bodyb_1":0,"hair_color_1":0,"eyebrows_3":0,"arms_2":0,"mask_1":51,"moles_2":0,"ears_2":0,"sun_2":0,"blush_3":0,"ears_1":-1,"hair_color_2":0,"blemishes_2":0,"bproof_1":0,"bproof_2":0,"bags_1":0,"eyebrows_4":0,"blush_1":0,"blush_2":0,"beard_4":0,"chain_2":0,"decals_2":0,"hair_2":0,"hair_1":48,"bracelets_2":0,"makeup_1":0}', 'unemployed', 0, '[]', '{"y":-779.8,"x":220.9,"heading":179.2,"z":30.8}', NULL, NULL, 'user', 'MIKIE CLAUSIUS', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":5000,"black_money":0,"money":7072}', '[]', NULL, 11, 10, 749, 1, 0.5);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:110000148b50b19', 'license:41822eafc8a3e8d209307109c7fc033d7eb86d8a', 0, NULL, '{"chest_2":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":0,"makeup_3":0,"torso_2":2,"bodyb_2":0,"shoes_2":1,"bproof_2":0,"eyebrows_2":0,"pants_2":2,"bags_2":0,"mask_2":0,"eye_color":0,"eyebrows_1":0,"watches_2":0,"watches_1":-1,"helmet_1":-1,"helmet_2":0,"arms":0,"age_1":0,"sex":0,"lipstick_3":0,"face":31,"mask_1":0,"tshirt_1":15,"complexion_1":0,"chain_1":0,"shoes_1":4,"chest_1":0,"glasses_1":0,"decals_2":0,"moles_1":0,"blemishes_1":0,"tshirt_2":0,"decals_1":0,"complexion_2":0,"beard_3":0,"bags_1":0,"torso_1":0,"hair_2":0,"bracelets_1":-1,"ears_2":0,"beard_4":0,"pants_1":4,"lipstick_1":0,"hair_color_1":0,"eyebrows_3":0,"arms_2":0,"skin":0,"moles_2":0,"beard_1":0,"bodyb_1":0,"blush_3":0,"ears_1":-1,"hair_color_2":0,"makeup_4":0,"bproof_1":0,"glasses_2":0,"makeup_1":0,"makeup_2":0,"blush_1":0,"blush_2":0,"blemishes_2":0,"chain_2":0,"bracelets_2":0,"age_2":0,"hair_1":11,"eyebrows_4":0,"sun_2":0}', 'unemployed', 0, '{"weapon_combatpistol":{"ammo":200},"weapon_microsmg":{"ammo":200},"weapon_pumpshotgun":{"ammo":200},"WEAPON_CARBINERIFLE":{"ammo":200},"weapon_revolver":{"ammo":200},"weapon_bat":{"ammo":1},"weapon_smg":{"ammo":200},"WEAPON_ASSAULTRIFLE":{"ammo":200},"weapon_pistol50":{"ammo":200},"weapon_knife":{"ammo":1},"WEAPON_HEAVYSNIPER":{"ammo":7},"WEAPON_GUSENBERG":{"ammo":200}}', '{"y":-781.1,"x":227.7,"heading":274.8,"z":30.9}', NULL, NULL, 'user', 'FAREL', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":5040,"black_money":0,"money":24203}', '[]', NULL, 87, 115, 778, 1, -14);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:110000148f7dcb7', 'license:482d6355a2f7fc5556d535fea34762adddadb688', 0, NULL, '{"chest_2":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":0,"makeup_3":10,"torso_2":2,"makeup_4":11,"shoes_2":2,"torso_1":0,"eyebrows_2":10,"pants_2":1,"bags_2":0,"mask_2":0,"eye_color":5,"skin":22,"watches_2":0,"watches_1":-1,"helmet_1":115,"helmet_2":0,"arms":0,"age_1":0,"sex":0,"lipstick_3":0,"face":31,"mask_1":0,"tshirt_1":0,"complexion_1":0,"chain_1":112,"shoes_1":7,"chest_1":0,"glasses_1":0,"makeup_2":0,"hair_2":0,"blemishes_1":0,"tshirt_2":0,"decals_1":0,"complexion_2":0,"beard_3":0,"beard_1":0,"hair_1":3,"bags_1":0,"bproof_2":1,"lipstick_1":0,"bodyb_1":0,"pants_1":6,"bracelets_1":-1,"hair_color_1":0,"eyebrows_3":18,"bracelets_2":0,"moles_1":0,"moles_2":0,"ears_2":0,"sun_2":0,"blush_3":0,"ears_1":-1,"hair_color_2":0,"blush_1":0,"bproof_1":6,"eyebrows_4":7,"arms_2":0,"decals_2":0,"makeup_1":13,"blush_2":0,"beard_4":0,"chain_2":2,"bodyb_2":0,"eyebrows_1":29,"age_2":0,"blemishes_2":0,"glasses_2":0}', 'unemployed', 0, '[]', '{"y":-779.6,"x":220.9,"heading":179.2,"z":30.8}', NULL, NULL, 'user', 'Han Zo', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":5010,"black_money":0,"money":5865}', '[]', NULL, 3, 7, 518, 1, -1.5);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:110000148fe063d', 'license:1c0e2fcce9df9d9ef92cb52e519e8ed9424cebce', 0, NULL, '{"helmet_1":-1,"eye_color":0,"glasses_2":0,"hair_color_2":0,"skin":0,"eyebrows_4":0,"eyebrows_2":0,"bodyb_1":0,"complexion_1":0,"bproof_2":0,"bracelets_2":0,"lipstick_3":0,"moles_2":0,"hair_1":20,"eyebrows_3":0,"sex":0,"chest_2":0,"tshirt_2":0,"chest_3":0,"age_1":0,"shoes_1":4,"lipstick_1":0,"shoes_2":0,"makeup_4":0,"arms":0,"sun_2":0,"glasses_1":0,"watches_1":-1,"beard_3":0,"complexion_2":0,"sun_1":0,"blemishes_2":0,"blush_3":0,"lipstick_2":0,"tshirt_1":0,"arms_2":0,"pants_2":3,"bags_1":41,"ears_1":-1,"hair_color_1":9,"makeup_2":0,"watches_2":0,"beard_2":0,"hair_2":0,"chain_1":0,"pants_1":5,"decals_1":0,"chest_1":0,"lipstick_4":0,"blemishes_1":0,"ears_2":0,"bodyb_2":0,"bproof_1":0,"decals_2":0,"face":6,"blush_2":0,"moles_1":0,"mask_2":9,"mask_1":51,"helmet_2":0,"makeup_1":0,"bags_2":0,"beard_4":0,"makeup_3":0,"eyebrows_1":0,"blush_1":0,"age_2":0,"chain_2":0,"beard_1":0,"torso_1":3,"torso_2":3,"bracelets_1":-1}', 'unemployed', 0, '[]', '{"y":-807.8,"z":30.5,"heading":161.9,"x":230.9}', NULL, NULL, 'user', 'Tom Holland', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"black_money":0,"bank":5000,"money":5825}', '[]', NULL, 3, 11, 659, 1, -4);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:110000149508543', 'license:daafbb998751a481e9d0c65d0b50520ff2fc5808', 0, NULL, NULL, 'unemployed', 0, '[]', '{"y":-765.7,"z":30.8,"heading":0.0,"x":242.8}', NULL, NULL, 'user', '', '', '', '', '', 0, 0, NULL, '{"black_money":0,"bank":5000,"money":5000}', '[]', NULL, 0, 0, 0, 1, 0);
REPLACE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `isDead`, `jail`, `accounts`, `inventory`, `user`, `bunuh`, `mati`, `rp_xp`, `rp_rank`, `rkd`) VALUES
	('steam:11000014989f52e', 'license:ba9647614b681ae5eaf94dca04c1f694d4c23adc', 0, NULL, '{"lipstick_1":0,"sun_1":0,"chest_3":0,"lipstick_4":0,"beard_2":0,"lipstick_2":0,"makeup_3":0,"torso_2":7,"bodyb_2":0,"shoes_2":8,"bproof_2":0,"eyebrows_2":0,"pants_2":2,"bags_2":0,"mask_2":7,"eye_color":2,"skin":12,"watches_2":0,"watches_1":-1,"helmet_1":-1,"helmet_2":0,"arms":4,"age_1":0,"sex":0,"lipstick_3":0,"face":31,"mask_1":53,"tshirt_1":15,"complexion_1":0,"chain_1":17,"shoes_1":8,"chest_1":0,"glasses_1":0,"makeup_2":0,"hair_2":0,"blemishes_1":0,"tshirt_2":0,"decals_1":0,"complexion_2":0,"beard_3":0,"blush_1":0,"age_2":0,"beard_1":0,"moles_1":0,"chest_2":0,"makeup_4":0,"pants_1":24,"bracelets_1":0,"hair_color_1":3,"eyebrows_3":2,"arms_2":0,"bags_1":0,"moles_2":0,"ears_2":0,"sun_2":0,"blush_3":0,"ears_1":1,"hair_color_2":10,"eyebrows_1":0,"bproof_1":0,"glasses_2":0,"beard_4":0,"makeup_1":0,"decals_2":0,"blush_2":0,"blemishes_2":0,"chain_2":0,"torso_1":14,"eyebrows_4":0,"hair_1":43,"bracelets_2":0,"bodyb_1":0}', 'unemployed', 0, '{"weapon_combatpistol":{"ammo":200},"weapon_microsmg":{"ammo":200},"weapon_pumpshotgun":{"ammo":200},"WEAPON_CARBINERIFLE":{"ammo":200},"weapon_revolver":{"ammo":200},"weapon_bat":{"ammo":1},"weapon_smg":{"ammo":200},"WEAPON_ASSAULTRIFLE":{"ammo":200},"weapon_pistol50":{"ammo":200},"weapon_knife":{"ammo":1},"WEAPON_HEAVYSNIPER":{"ammo":7},"WEAPON_GUSENBERG":{"ammo":200}}', '{"y":-779.6,"x":220.9,"heading":179.2,"z":30.8}', NULL, NULL, 'user', 'Vasetya', NULL, NULL, 'm', NULL, 0, 0, NULL, '{"bank":5020,"black_money":0,"money":8428}', '[]', NULL, 16, 18, 733, 1, -1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- membuang struktur untuk table ffa.user_accounts
CREATE TABLE IF NOT EXISTS `user_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(22) NOT NULL,
  `name` varchar(50) NOT NULL,
  `money` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Membuang data untuk tabel ffa.user_accounts: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `user_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_accounts` ENABLE KEYS */;

-- membuang struktur untuk table ffa.user_documents
CREATE TABLE IF NOT EXISTS `user_documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(45) NOT NULL,
  `data` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel ffa.user_documents: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `user_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_documents` ENABLE KEYS */;

-- membuang struktur untuk table ffa.user_inventory
CREATE TABLE IF NOT EXISTS `user_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(22) NOT NULL,
  `item` varchar(50) NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=277 DEFAULT CHARSET=utf8mb4;

-- Membuang data untuk tabel ffa.user_inventory: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `user_inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_inventory` ENABLE KEYS */;

-- membuang struktur untuk table ffa.user_lastcharacter
CREATE TABLE IF NOT EXISTS `user_lastcharacter` (
  `steamid` varchar(255) NOT NULL,
  `charid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel ffa.user_lastcharacter: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `user_lastcharacter` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_lastcharacter` ENABLE KEYS */;

-- membuang struktur untuk table ffa.user_levels
CREATE TABLE IF NOT EXISTS `user_levels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `crafting` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel ffa.user_levels: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `user_levels` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_levels` ENABLE KEYS */;

-- membuang struktur untuk table ffa.user_licenses
CREATE TABLE IF NOT EXISTS `user_licenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(60) NOT NULL,
  `owner` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4;

-- Membuang data untuk tabel ffa.user_licenses: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `user_licenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_licenses` ENABLE KEYS */;

-- membuang struktur untuk table ffa.user_parkings
CREATE TABLE IF NOT EXISTS `user_parkings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) DEFAULT NULL,
  `garage` varchar(60) DEFAULT NULL,
  `zone` int(11) NOT NULL,
  `vehicle` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel ffa.user_parkings: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `user_parkings` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_parkings` ENABLE KEYS */;

-- membuang struktur untuk table ffa.vehicles
CREATE TABLE IF NOT EXISTS `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Membuang data untuk tabel ffa.vehicles: ~240 rows (lebih kurang)
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Adder', 'adder', 900000, 'super');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Akuma', 'AKUMA', 7500, 'motorcycles');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Alpha', 'alpha', 60000, 'sports');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Ardent', 'ardent', 1150000, 'sportsclassics');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Asea', 'asea', 5500, 'sedans');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Autarch', 'autarch', 1955000, 'super');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Avarus', 'avarus', 18000, 'motorcycles');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Bagger', 'bagger', 13500, 'motorcycles');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Baller', 'baller2', 40000, 'suvs');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Baller Sport', 'baller3', 60000, 'suvs');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Banshee', 'banshee', 70000, 'sports');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Banshee 900R', 'banshee2', 255000, 'super');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Bati 801', 'bati', 12000, 'motorcycles');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Bati 801RR', 'bati2', 19000, 'motorcycles');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Bestia GTS', 'bestiagts', 55000, 'sports');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('BF400', 'bf400', 6500, 'motorcycles');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Bf Injection', 'bfinjection', 16000, 'offroad');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Bifta', 'bifta', 12000, 'offroad');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Bison', 'bison', 45000, 'vans');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Blade', 'blade', 15000, 'muscle');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Blazer', 'blazer', 6500, 'offroad');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Blazer Sport', 'blazer4', 8500, 'offroad');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('blazer5', 'blazer5', 1755600, 'offroad');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Blista', 'blista', 8000, 'compacts');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('BMX (velo)', 'bmx', 160, 'motorcycles');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Bobcat XL', 'bobcatxl', 32000, 'vans');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Brawler', 'brawler', 45000, 'offroad');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Brioso R/A', 'brioso', 18000, 'compacts');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Btype', 'btype', 62000, 'sportsclassics');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Btype Hotroad', 'btype2', 155000, 'sportsclassics');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Btype Luxe', 'btype3', 85000, 'sportsclassics');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Buccaneer', 'buccaneer', 18000, 'muscle');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Buccaneer Rider', 'buccaneer2', 24000, 'muscle');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Buffalo', 'buffalo', 12000, 'sports');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Buffalo S', 'buffalo2', 20000, 'sports');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Bullet', 'bullet', 90000, 'super');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Burrito', 'burrito3', 19000, 'vans');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Camper', 'camper', 42000, 'vans');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Carbonizzare', 'carbonizzare', 75000, 'sports');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Carbon RS', 'carbonrs', 18000, 'motorcycles');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Casco', 'casco', 30000, 'sportsclassics');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Cavalcade', 'cavalcade2', 55000, 'suvs');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Cheetah', 'cheetah', 375000, 'super');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Chimera', 'chimera', 38000, 'motorcycles');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Chino', 'chino', 15000, 'muscle');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Chino Luxe', 'chino2', 19000, 'muscle');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Cliffhanger', 'cliffhanger', 9500, 'motorcycles');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Cognoscenti Cabrio', 'cogcabrio', 55000, 'coupes');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Cognoscenti', 'cognoscenti', 55000, 'sedans');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Comet', 'comet2', 65000, 'sports');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Comet 5', 'comet5', 1145000, 'sports');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Contender', 'contender', 70000, 'suvs');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Coquette', 'coquette', 65000, 'sports');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Coquette Classic', 'coquette2', 40000, 'sportsclassics');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Coquette BlackFin', 'coquette3', 55000, 'muscle');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Cruiser (velo)', 'cruiser', 510, 'motorcycles');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Cyclone', 'cyclone', 1890000, 'super');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Daemon', 'daemon', 11500, 'motorcycles');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Daemon High', 'daemon2', 13500, 'motorcycles');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Defiler', 'defiler', 9800, 'motorcycles');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Deluxo', 'deluxo', 4721500, 'sportsclassics');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Dominator', 'dominator', 35000, 'muscle');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Double T', 'double', 28000, 'motorcycles');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Dubsta', 'dubsta', 45000, 'suvs');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Dubsta Luxuary', 'dubsta2', 60000, 'suvs');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Bubsta 6x6', 'dubsta3', 120000, 'offroad');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Dukes', 'dukes', 28000, 'muscle');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Dune Buggy', 'dune', 8000, 'offroad');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Elegy', 'elegy2', 38500, 'sports');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Emperor', 'emperor', 8500, 'sedans');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Enduro', 'enduro', 5500, 'motorcycles');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Entity XF', 'entityxf', 425000, 'super');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Esskey', 'esskey', 4200, 'motorcycles');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Exemplar', 'exemplar', 32000, 'coupes');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('F620', 'f620', 40000, 'coupes');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Faction', 'faction', 20000, 'muscle');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Faction Rider', 'faction2', 30000, 'muscle');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Faction XL', 'faction3', 40000, 'muscle');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Faggio', 'faggio', 1900, 'motorcycles');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Vespa', 'faggio2', 2800, 'motorcycles');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Felon', 'felon', 42000, 'coupes');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Felon GT', 'felon2', 55000, 'coupes');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Feltzer', 'feltzer2', 55000, 'sports');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Stirling GT', 'feltzer3', 65000, 'sportsclassics');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Fixter (velo)', 'fixter', 225, 'motorcycles');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('FMJ', 'fmj', 185000, 'super');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Fhantom', 'fq2', 17000, 'suvs');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Fugitive', 'fugitive', 12000, 'sedans');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Furore GT', 'furoregt', 45000, 'sports');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Fusilade', 'fusilade', 40000, 'sports');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Gargoyle', 'gargoyle', 16500, 'motorcycles');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Gauntlet', 'gauntlet', 30000, 'muscle');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Gang Burrito', 'gburrito', 45000, 'vans');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Burrito', 'gburrito2', 29000, 'vans');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Glendale', 'glendale', 6500, 'sedans');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Grabger', 'granger', 50000, 'suvs');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Gresley', 'gresley', 47500, 'suvs');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('GT 500', 'gt500', 785000, 'sportsclassics');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Guardian', 'guardian', 45000, 'offroad');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Hakuchou', 'hakuchou', 31000, 'motorcycles');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Hakuchou Sport', 'hakuchou2', 55000, 'motorcycles');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Hermes', 'hermes', 535000, 'muscle');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Hexer', 'hexer', 12000, 'motorcycles');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Hotknife', 'hotknife', 125000, 'muscle');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Huntley S', 'huntley', 40000, 'suvs');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Hustler', 'hustler', 625000, 'muscle');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Infernus', 'infernus', 180000, 'super');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Innovation', 'innovation', 23500, 'motorcycles');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Intruder', 'intruder', 7500, 'sedans');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Issi', 'issi2', 10000, 'compacts');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Jackal', 'jackal', 38000, 'coupes');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Jester', 'jester', 65000, 'sports');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Jester(Racecar)', 'jester2', 135000, 'sports');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Journey', 'journey', 6500, 'vans');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Kamacho', 'kamacho', 345000, 'offroad');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Khamelion', 'khamelion', 38000, 'sports');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Kuruma', 'kuruma', 30000, 'sports');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Landstalker', 'landstalker', 35000, 'suvs');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('RE-7B', 'le7b', 325000, 'super');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Lynx', 'lynx', 40000, 'sports');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Mamba', 'mamba', 70000, 'sports');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Manana', 'manana', 12800, 'sportsclassics');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Manchez', 'manchez', 5300, 'motorcycles');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Massacro', 'massacro', 65000, 'sports');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Massacro(Racecar)', 'massacro2', 130000, 'sports');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Mesa', 'mesa', 16000, 'suvs');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Mesa Trail', 'mesa3', 40000, 'suvs');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Minivan', 'minivan', 13000, 'vans');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Monroe', 'monroe', 55000, 'sportsclassics');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('The Liberator', 'monster', 210000, 'offroad');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Moonbeam', 'moonbeam', 18000, 'vans');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Moonbeam Rider', 'moonbeam2', 35000, 'vans');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Nemesis', 'nemesis', 5800, 'motorcycles');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Neon', 'neon', 1500000, 'sports');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Nightblade', 'nightblade', 35000, 'motorcycles');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Nightshade', 'nightshade', 65000, 'muscle');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('9F', 'ninef', 65000, 'sports');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('9F Cabrio', 'ninef2', 80000, 'sports');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Omnis', 'omnis', 35000, 'sports');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Oppressor', 'oppressor', 3524500, 'super');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Oracle XS', 'oracle2', 35000, 'coupes');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Osiris', 'osiris', 160000, 'super');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Panto', 'panto', 10000, 'compacts');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Paradise', 'paradise', 19000, 'vans');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Pariah', 'pariah', 1420000, 'sports');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Patriot', 'patriot', 55000, 'suvs');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('PCJ-600', 'pcj', 6200, 'motorcycles');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Penumbra', 'penumbra', 28000, 'sports');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Pfister', 'pfister811', 85000, 'super');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Phoenix', 'phoenix', 12500, 'muscle');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Picador', 'picador', 18000, 'muscle');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Pigalle', 'pigalle', 20000, 'sportsclassics');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Prairie', 'prairie', 12000, 'compacts');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Premier', 'premier', 8000, 'sedans');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Primo Custom', 'primo2', 14000, 'sedans');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('X80 Proto', 'prototipo', 2500000, 'super');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Radius', 'radi', 29000, 'suvs');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('raiden', 'raiden', 1375000, 'sports');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Rapid GT', 'rapidgt', 35000, 'sports');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Rapid GT Convertible', 'rapidgt2', 45000, 'sports');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Rapid GT3', 'rapidgt3', 885000, 'sportsclassics');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Reaper', 'reaper', 150000, 'super');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Rebel', 'rebel2', 35000, 'offroad');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Regina', 'regina', 5000, 'sedans');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Retinue', 'retinue', 615000, 'sportsclassics');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Revolter', 'revolter', 1610000, 'sports');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('riata', 'riata', 380000, 'offroad');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Rocoto', 'rocoto', 45000, 'suvs');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Ruffian', 'ruffian', 6800, 'motorcycles');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Ruiner 2', 'ruiner2', 5745600, 'muscle');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Rumpo', 'rumpo', 15000, 'vans');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Rumpo Trail', 'rumpo3', 19500, 'vans');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Sabre Turbo', 'sabregt', 20000, 'muscle');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Sabre GT', 'sabregt2', 25000, 'muscle');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Sanchez', 'sanchez', 5300, 'motorcycles');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Sanchez Sport', 'sanchez2', 5300, 'motorcycles');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Sanctus', 'sanctus', 25000, 'motorcycles');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Sandking', 'sandking', 55000, 'offroad');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Savestra', 'savestra', 990000, 'sportsclassics');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('SC 1', 'sc1', 1603000, 'super');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Schafter', 'schafter2', 25000, 'sedans');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Schafter V12', 'schafter3', 50000, 'sports');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Scorcher (velo)', 'scorcher', 280, 'motorcycles');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Seminole', 'seminole', 25000, 'suvs');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Sentinel', 'sentinel', 32000, 'coupes');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Sentinel XS', 'sentinel2', 40000, 'coupes');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Sentinel3', 'sentinel3', 650000, 'sports');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Seven 70', 'seven70', 39500, 'sports');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('ETR1', 'sheava', 220000, 'super');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Shotaro Concept', 'shotaro', 320000, 'motorcycles');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Slam Van', 'slamvan3', 11500, 'muscle');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Sovereign', 'sovereign', 22000, 'motorcycles');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Stinger', 'stinger', 80000, 'sportsclassics');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Stinger GT', 'stingergt', 75000, 'sportsclassics');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Streiter', 'streiter', 500000, 'sports');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Stretch', 'stretch', 90000, 'sedans');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Stromberg', 'stromberg', 3185350, 'sports');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Sultan', 'sultan', 15000, 'sports');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Sultan RS', 'sultanrs', 65000, 'super');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Super Diamond', 'superd', 130000, 'sedans');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Surano', 'surano', 50000, 'sports');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Surfer', 'surfer', 12000, 'vans');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('T20', 't20', 300000, 'super');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Tailgater', 'tailgater', 30000, 'sedans');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Tampa', 'tampa', 16000, 'muscle');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Drift Tampa', 'tampa2', 80000, 'sports');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Thrust', 'thrust', 24000, 'motorcycles');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Tri bike (velo)', 'tribike3', 520, 'motorcycles');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Trophy Truck', 'trophytruck', 60000, 'offroad');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Trophy Truck Limited', 'trophytruck2', 80000, 'offroad');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Tropos', 'tropos', 40000, 'sports');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Turismo R', 'turismor', 350000, 'super');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Tyrus', 'tyrus', 600000, 'super');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Vacca', 'vacca', 120000, 'super');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Vader', 'vader', 7200, 'motorcycles');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Verlierer', 'verlierer2', 70000, 'sports');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Vigero', 'vigero', 12500, 'muscle');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Virgo', 'virgo', 14000, 'muscle');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Viseris', 'viseris', 875000, 'sportsclassics');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Visione', 'visione', 2250000, 'super');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Voltic', 'voltic', 90000, 'super');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Voltic 2', 'voltic2', 3830400, 'super');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Voodoo', 'voodoo', 7200, 'muscle');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Vortex', 'vortex', 9800, 'motorcycles');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Warrener', 'warrener', 4000, 'sedans');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Washington', 'washington', 9000, 'sedans');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Windsor', 'windsor', 95000, 'coupes');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Windsor Drop', 'windsor2', 125000, 'coupes');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Woflsbane', 'wolfsbane', 9000, 'motorcycles');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('XLS', 'xls', 32000, 'suvs');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Yosemite', 'yosemite', 485000, 'muscle');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Youga', 'youga', 10800, 'vans');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Youga Luxuary', 'youga2', 14500, 'vans');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Z190', 'z190', 900000, 'sportsclassics');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Zentorno', 'zentorno', 1500000, 'super');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Zion', 'zion', 36000, 'coupes');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Zion Cabrio', 'zion2', 45000, 'coupes');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Zombie', 'zombiea', 9500, 'motorcycles');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Zombie Luxuary', 'zombieb', 12000, 'motorcycles');
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Z-Type', 'ztype', 220000, 'sportsclassics');
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;

-- membuang struktur untuk table ffa.vehicles_for_sale
CREATE TABLE IF NOT EXISTS `vehicles_for_sale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seller` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `vehicleProps` longtext NOT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel ffa.vehicles_for_sale: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `vehicles_for_sale` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicles_for_sale` ENABLE KEYS */;

-- membuang struktur untuk table ffa.vehicle_categories
CREATE TABLE IF NOT EXISTS `vehicle_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Membuang data untuk tabel ffa.vehicle_categories: ~11 rows (lebih kurang)
/*!40000 ALTER TABLE `vehicle_categories` DISABLE KEYS */;
REPLACE INTO `vehicle_categories` (`name`, `label`) VALUES
	('compacts', 'Compacts');
REPLACE INTO `vehicle_categories` (`name`, `label`) VALUES
	('coupes', 'Coupas');
REPLACE INTO `vehicle_categories` (`name`, `label`) VALUES
	('motorcycles', 'Motos');
REPLACE INTO `vehicle_categories` (`name`, `label`) VALUES
	('muscle', 'Muscle');
REPLACE INTO `vehicle_categories` (`name`, `label`) VALUES
	('offroad', 'Off Road');
REPLACE INTO `vehicle_categories` (`name`, `label`) VALUES
	('sedans', 'Sedans');
REPLACE INTO `vehicle_categories` (`name`, `label`) VALUES
	('sports', 'Sports');
REPLACE INTO `vehicle_categories` (`name`, `label`) VALUES
	('sportsclassics', 'Sports Classics');
REPLACE INTO `vehicle_categories` (`name`, `label`) VALUES
	('super', 'Super');
REPLACE INTO `vehicle_categories` (`name`, `label`) VALUES
	('suvs', 'SUVs');
REPLACE INTO `vehicle_categories` (`name`, `label`) VALUES
	('vans', 'Vans');
/*!40000 ALTER TABLE `vehicle_categories` ENABLE KEYS */;

-- membuang struktur untuk table ffa.vehicle_sold
CREATE TABLE IF NOT EXISTS `vehicle_sold` (
  `client` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `soldby` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Membuang data untuk tabel ffa.vehicle_sold: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `vehicle_sold` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicle_sold` ENABLE KEYS */;

-- membuang struktur untuk table ffa.veh_km
CREATE TABLE IF NOT EXISTS `veh_km` (
  `carplate` varchar(10) NOT NULL,
  `km` varchar(255) NOT NULL DEFAULT '0',
  `state` int(1) NOT NULL DEFAULT 0,
  `reset` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`carplate`),
  UNIQUE KEY `carplate` (`carplate`),
  KEY `carplate_2` (`carplate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel ffa.veh_km: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `veh_km` DISABLE KEYS */;
/*!40000 ALTER TABLE `veh_km` ENABLE KEYS */;

-- membuang struktur untuk table ffa.warrants_list
CREATE TABLE IF NOT EXISTS `warrants_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `json_data` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel ffa.warrants_list: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `warrants_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `warrants_list` ENABLE KEYS */;

-- membuang struktur untuk table ffa.weashops
CREATE TABLE IF NOT EXISTS `weashops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zone` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `imglink` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel ffa.weashops: ~14 rows (lebih kurang)
/*!40000 ALTER TABLE `weashops` DISABLE KEYS */;
REPLACE INTO `weashops` (`id`, `zone`, `item`, `price`, `imglink`) VALUES
	(1, 'GunShop', 'WEAPON_PISTOL', 500000, '');
REPLACE INTO `weashops` (`id`, `zone`, `item`, `price`, `imglink`) VALUES
	(2, 'GunShop', 'WEAPON_KNUCKLE', 100000, '');
REPLACE INTO `weashops` (`id`, `zone`, `item`, `price`, `imglink`) VALUES
	(3, 'GunShop', 'WEAPON_KNIFE', 300000, '');
REPLACE INTO `weashops` (`id`, `zone`, `item`, `price`, `imglink`) VALUES
	(4, 'GunShop', 'WEAPON_MACHETE', 300000, '');
REPLACE INTO `weashops` (`id`, `zone`, `item`, `price`, `imglink`) VALUES
	(5, 'BlackWeashop', 'WEAPON_PISTOL50', 1000000, '');
REPLACE INTO `weashops` (`id`, `zone`, `item`, `price`, `imglink`) VALUES
	(6, 'BlackWeashop', 'WEAPON_MACHINEPISTOL', 2000000, NULL);
REPLACE INTO `weashops` (`id`, `zone`, `item`, `price`, `imglink`) VALUES
	(7, 'BlackWeashop', 'WEAPON_REVOLVER', 10000000, NULL);
REPLACE INTO `weashops` (`id`, `zone`, `item`, `price`, `imglink`) VALUES
	(8, 'BlackWeashop', 'WEAPON_SMG', 5000000, NULL);
REPLACE INTO `weashops` (`id`, `zone`, `item`, `price`, `imglink`) VALUES
	(9, 'BlackWeashop', 'WEAPON_MINISMG', 4500000, NULL);
REPLACE INTO `weashops` (`id`, `zone`, `item`, `price`, `imglink`) VALUES
	(10, 'BlackWeashop', 'WEAPON_ASSAULTRIFLE', 6000000, NULL);
REPLACE INTO `weashops` (`id`, `zone`, `item`, `price`, `imglink`) VALUES
	(11, 'BlackWeashop', 'WEAPON_SAWNOFFSHOTGUN', 55000000, NULL);
REPLACE INTO `weashops` (`id`, `zone`, `item`, `price`, `imglink`) VALUES
	(12, 'BlackWeashop', 'WEAPON_SNIPERRIFLE', 50000000, NULL);
REPLACE INTO `weashops` (`id`, `zone`, `item`, `price`, `imglink`) VALUES
	(13, 'BlackWeashop', 'WEAPON_ASSAULTRIFLE_MK2', 7500000, NULL);
REPLACE INTO `weashops` (`id`, `zone`, `item`, `price`, `imglink`) VALUES
	(14, 'BlackWeashop', 'WEAPON_PISTOL_MK2', 700000, NULL);
/*!40000 ALTER TABLE `weashops` ENABLE KEYS */;

-- membuang struktur untuk table ffa.world_furnishings
CREATE TABLE IF NOT EXISTS `world_furnishings` (
  `motelId` bigint(20) NOT NULL DEFAULT 0,
  `furnishingData` longtext DEFAULT NULL,
  `ownedFurnishingData` longtext DEFAULT NULL,
  PRIMARY KEY (`motelId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel ffa.world_furnishings: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `world_furnishings` DISABLE KEYS */;
/*!40000 ALTER TABLE `world_furnishings` ENABLE KEYS */;

-- membuang struktur untuk table ffa.world_keys
CREATE TABLE IF NOT EXISTS `world_keys` (
  `uuid` bigint(20) NOT NULL DEFAULT 0,
  `owner` varchar(50) NOT NULL,
  `keyData` longtext NOT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel ffa.world_keys: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `world_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `world_keys` ENABLE KEYS */;

-- membuang struktur untuk table ffa.world_motels
CREATE TABLE IF NOT EXISTS `world_motels` (
  `userIdentifier` varchar(50) NOT NULL,
  `motelData` longtext NOT NULL,
  `motelCreated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel ffa.world_motels: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `world_motels` DISABLE KEYS */;
/*!40000 ALTER TABLE `world_motels` ENABLE KEYS */;

-- membuang struktur untuk table ffa.world_storages
CREATE TABLE IF NOT EXISTS `world_storages` (
  `storageId` varchar(255) NOT NULL,
  `storageData` longtext NOT NULL,
  PRIMARY KEY (`storageId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel ffa.world_storages: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `world_storages` DISABLE KEYS */;
/*!40000 ALTER TABLE `world_storages` ENABLE KEYS */;

-- membuang struktur untuk table ffa.yellow_tweets
CREATE TABLE IF NOT EXISTS `yellow_tweets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstname` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `image` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=858 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel ffa.yellow_tweets: ~22 rows (lebih kurang)
/*!40000 ALTER TABLE `yellow_tweets` DISABLE KEYS */;
REPLACE INTO `yellow_tweets` (`id`, `phone_number`, `firstname`, `lastname`, `message`, `time`, `image`) VALUES
	(836, '0823078', 'Ajay', 'Trevor', 'tes', '2021-01-01 20:42:09', '');
REPLACE INTO `yellow_tweets` (`id`, `phone_number`, `firstname`, `lastname`, `message`, `time`, `image`) VALUES
	(837, '08225991', 'Regi', 'Prasetya', 'Ajay ganteng', '2021-01-01 20:43:15', '');
REPLACE INTO `yellow_tweets` (`id`, `phone_number`, `firstname`, `lastname`, `message`, `time`, `image`) VALUES
	(838, '0823918', 'Chika', 'Kiku', 'hm', '2021-01-01 20:43:31', '');
REPLACE INTO `yellow_tweets` (`id`, `phone_number`, `firstname`, `lastname`, `message`, `time`, `image`) VALUES
	(839, '08223337', 'Ahmad ', 'Fauzan ', 'heyo', '2021-01-01 20:43:52', '');
REPLACE INTO `yellow_tweets` (`id`, `phone_number`, `firstname`, `lastname`, `message`, `time`, `image`) VALUES
	(840, '08223231', 'Sultan', 'MorningStar', 'hayo apa tu', '2021-01-01 20:44:00', '');
REPLACE INTO `yellow_tweets` (`id`, `phone_number`, `firstname`, `lastname`, `message`, `time`, `image`) VALUES
	(841, '0823078', 'Ajay', 'Trevor', 'ngetes', '2021-01-01 20:45:16', '');
REPLACE INTO `yellow_tweets` (`id`, `phone_number`, `firstname`, `lastname`, `message`, `time`, `image`) VALUES
	(842, '06', 'Ken', 'Christian', 'AGUNG SINI KE GARKOT AD MOBIL MERAH NGAJAK BALAP', '2021-01-01 20:49:12', '');
REPLACE INTO `yellow_tweets` (`id`, `phone_number`, `firstname`, `lastname`, `message`, `time`, `image`) VALUES
	(843, '0823078', 'Ajay', 'Trevor', 'mobil merah apa tuh coba foto', '2021-01-01 20:49:35', '');
REPLACE INTO `yellow_tweets` (`id`, `phone_number`, `firstname`, `lastname`, `message`, `time`, `image`) VALUES
	(844, '06', 'Ken', 'Christian', 'udh jan banyak tanya sini aja', '2021-01-01 20:49:56', '');
REPLACE INTO `yellow_tweets` (`id`, `phone_number`, `firstname`, `lastname`, `message`, `time`, `image`) VALUES
	(845, '0823078', 'Ajay', 'Trevor', 'sabar paok', '2021-01-01 20:50:07', '');
REPLACE INTO `yellow_tweets` (`id`, `phone_number`, `firstname`, `lastname`, `message`, `time`, `image`) VALUES
	(846, '0823918', 'Chika', 'Kiku', 'Pake Twitter aja pakk', '2021-01-01 20:50:31', '');
REPLACE INTO `yellow_tweets` (`id`, `phone_number`, `firstname`, `lastname`, `message`, `time`, `image`) VALUES
	(847, '08223231', 'Sultan', 'MorningStar', 'yang berhasil menemukan ataas nama faris perkoso akan mendaptkan hadiah', '2021-01-01 20:58:25', '');
REPLACE INTO `yellow_tweets` (`id`, `phone_number`, `firstname`, `lastname`, `message`, `time`, `image`) VALUES
	(848, '08223231', 'Sultan', 'MorningStar', 'itu menabgkap dia kalian harus  memiliki kelebihan khusus karena dia  bisa teleport kayak dewa', '2021-01-01 20:59:03', '');
REPLACE INTO `yellow_tweets` (`id`, `phone_number`, `firstname`, `lastname`, `message`, `time`, `image`) VALUES
	(849, '08225761', 'Zalfi', 'Onir', 'HELLO', '2021-01-03 21:49:42', '');
REPLACE INTO `yellow_tweets` (`id`, `phone_number`, `firstname`, `lastname`, `message`, `time`, `image`) VALUES
	(850, '08223337', 'Ahmad', 'Kiyomizu', ' asw :V', '2021-01-03 21:50:11', '');
REPLACE INTO `yellow_tweets` (`id`, `phone_number`, `firstname`, `lastname`, `message`, `time`, `image`) VALUES
	(851, '08223067', 'Exsel', 'Susanto', 'wow', '2021-01-03 21:50:27', NULL);
REPLACE INTO `yellow_tweets` (`id`, `phone_number`, `firstname`, `lastname`, `message`, `time`, `image`) VALUES
	(852, '08225991', 'EL', 'Chapo', 'wah', '2021-01-03 21:50:41', '');
REPLACE INTO `yellow_tweets` (`id`, `phone_number`, `firstname`, `lastname`, `message`, `time`, `image`) VALUES
	(853, '08225991', 'EL', 'Chapo', 'Hatiku Terpantau Sepi', '2021-01-03 23:24:59', '');
REPLACE INTO `yellow_tweets` (`id`, `phone_number`, `firstname`, `lastname`, `message`, `time`, `image`) VALUES
	(854, '08225991', 'EL', 'Chapo', 'Ajay jelek', '2021-01-04 00:48:27', '');
REPLACE INTO `yellow_tweets` (`id`, `phone_number`, `firstname`, `lastname`, `message`, `time`, `image`) VALUES
	(855, '08220189', 'Raja', 'Sniper', 'jelek kenapa om', '2021-01-04 00:49:13', NULL);
REPLACE INTO `yellow_tweets` (`id`, `phone_number`, `firstname`, `lastname`, `message`, `time`, `image`) VALUES
	(856, '08227026', 'ALDY ', 'GDN', 'ppada dimna nih', '2021-01-04 05:06:19', '');
REPLACE INTO `yellow_tweets` (`id`, `phone_number`, `firstname`, `lastname`, `message`, `time`, `image`) VALUES
	(857, '08224796', 'Nono', 'Sumanto', 'WTS R34 FAST AND FURIOUS + TURBO 65JT NEGO', '2021-01-05 16:51:13', 'https://media.discordapp.net/attachments/787513730865823754/795952309301149716/screenshot.jpg');
/*!40000 ALTER TABLE `yellow_tweets` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
