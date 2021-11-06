CREATE TABLE IF NOT EXISTS `apartments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `citizenid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `license` varchar(255) NOT NULL,
  `permission` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `license` (`license`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `bans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `license` varchar(50) DEFAULT NULL,
  `discord` varchar(50) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `expire` int(11) DEFAULT NULL,
  `bannedby` varchar(255) NOT NULL DEFAULT 'LeBanhammer',
  PRIMARY KEY (`id`),
  KEY `license` (`license`),
  KEY `discord` (`discord`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `crypto` (
  `crypto` varchar(50) NOT NULL DEFAULT 'qbit',
  `worth` int(11) NOT NULL DEFAULT 0,
  `history` text DEFAULT NULL,
  PRIMARY KEY (`crypto`)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `crypto_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `message` varchar(50) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `dealers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `coords` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `time` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `createdby` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `houselocations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `coords` text DEFAULT NULL,
  `owned` tinyint(1) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `tier` tinyint(4) DEFAULT NULL,
  `garage` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `player_houses` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `house` varchar(50) NOT NULL,
  `identifier` varchar(50) DEFAULT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `keyholders` text DEFAULT NULL,
  `decorations` text DEFAULT NULL,
  `stash` text DEFAULT NULL,
  `outfit` text DEFAULT NULL,
  `logout` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `house` (`house`),
  KEY `citizenid` (`citizenid`),
  KEY `identifier` (`identifier`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `house_plants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `building` varchar(50) DEFAULT NULL,
  `stage` varchar(50) DEFAULT 'stage-a',
  `sort` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `food` int(11) DEFAULT 100,
  `health` int(11) DEFAULT 100,
  `progress` int(11) DEFAULT 0,
  `coords` text DEFAULT NULL,
  `plantid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `building` (`building`),
  KEY `plantid` (`plantid`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `lapraces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `checkpoints` text DEFAULT NULL,
  `records` text DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `distance` int(11) DEFAULT NULL,
  `raceid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `raceid` (`raceid`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `occasion_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seller` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `plate` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `mods` text DEFAULT NULL,
  `occasionid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `occasionId` (`occasionid`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `phone_invoices` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `society` tinytext DEFAULT NULL,
  `sender` varchar(50) DEFAULT NULL,
  `sendercitizenid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `player_mails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `sender` varchar(50) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `read` tinyint(4) DEFAULT 0,
  `mailid` int(11) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  `button` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `phone_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `messages` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`),
  KEY `number` (`number`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `phone_tweets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `sender` varchar(50) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `player_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `iban` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `players` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) NOT NULL,
  `cid` int(11) DEFAULT NULL,
  `license` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `money` text NOT NULL,
  `charinfo` text DEFAULT NULL,
  `job` text NOT NULL,
  `gang` text DEFAULT NULL,
  `position` text NOT NULL,
  `metadata` text NOT NULL,
  `inventory` longtext DEFAULT NULL,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`citizenid`),
  KEY `id` (`id`),
  KEY `last_updated` (`last_updated`),
  KEY `license` (`license`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `playerskins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `skin` text NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`),
  KEY `active` (`active`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `player_boats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `plate` varchar(50) DEFAULT NULL,
  `boathouse` varchar(50) DEFAULT NULL,
  `fuel` int(11) NOT NULL DEFAULT 100,
  `state` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `player_outfits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `outfitname` varchar(50) NOT NULL,
  `model` varchar(50) DEFAULT NULL,
  `skin` text DEFAULT NULL,
  `outfitId` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`),
  KEY `outfitId` (`outfitId`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `player_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `license` varchar(50) DEFAULT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `vehicle` varchar(50) DEFAULT NULL,
  `hash` varchar(50) DEFAULT NULL,
  `mods` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `plate` varchar(50) NOT NULL,
  `fakeplate` varchar(50) DEFAULT NULL,
  `garage` varchar(50) DEFAULT NULL,
  `fuel` int(11) DEFAULT 100,
  `engine` float DEFAULT 1000,
  `body` float DEFAULT 1000,
  `state` int(11) DEFAULT 1,
  `depotprice` int(11) NOT NULL DEFAULT 0,
  `drivingdistance` int(50) DEFAULT NULL,
  `status` text DEFAULT NULL,
  `balance` int(11) NOT NULL DEFAULT 0,
  `paymentamount` int(11) NOT NULL DEFAULT 0,
  `paymentsleft` int(11) NOT NULL DEFAULT 0,
  `financetime` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `plate` (`plate`),
  KEY `citizenid` (`citizenid`),
  KEY `license` (`license`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `player_warns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `senderIdentifier` varchar(50) DEFAULT NULL,
  `targetIdentifier` varchar(50) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `warnId` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `bank_accounts` (
  `record_id` bigint(255) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(250) DEFAULT NULL,
  `buisness` varchar(50) DEFAULT NULL,
  `buisnessid` int(11) DEFAULT NULL,
  `gangid` varchar(50) DEFAULT NULL,
  `amount` bigint(255) NOT NULL DEFAULT 0,
  `account_type` enum('Current','Savings','Buisness','Gang') NOT NULL DEFAULT 'Current',
  PRIMARY KEY (`record_id`),
  UNIQUE KEY `citizenid` (`citizenid`),
  KEY `buisness` (`buisness`),
  KEY `buisnessid` (`buisnessid`),
  KEY `gangid` (`gangid`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `bank_statements` (
  `record_id` bigint(255) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `account` varchar(50) DEFAULT NULL,
  `business` varchar(50) DEFAULT NULL,
  `businessid` int(11) DEFAULT NULL,
  `gangid` varchar(50) DEFAULT NULL,
  `deposited` int(11) DEFAULT NULL,
  `withdraw` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`record_id`),
  KEY `business` (`business`),
  KEY `businessid` (`businessid`),
  KEY `gangid` (`gangid`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `gloveboxitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(255) NOT NULL DEFAULT '[]',
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`plate`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `stashitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stash` varchar(255) NOT NULL DEFAULT '[]',
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`stash`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `trunkitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(255) NOT NULL DEFAULT '[]',
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`plate`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1;


-- ##############################################
-- ########   LGRPS CUSTOMISED FILES   ##########
-- ##############################################

CREATE TABLE IF NOT EXISTS `known_recipes` (
  `identifier` varchar(50) DEFAULT NULL,
  `data` longtext
);

CREATE TABLE IF NOT EXISTS `craftingtables` (
  `location` longtext
);

CREATE TABLE IF NOT EXISTS `skills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `stamina` varchar(255) NOT NULL,
  `strength` varchar(255) NOT NULL,
  `driving` varchar(255) DEFAULT NULL,
  `shooting` varchar(255) DEFAULT NULL,
  `fishing` varchar(255) DEFAULT NULL,
  `drugs` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `store_balance` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `market_id` varchar(50) NOT NULL,
  `income` bit(1) NOT NULL,
  `title` varchar(50) NOT NULL,
  `amount` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `store_business` (
  `market_id` varchar(50) NOT NULL DEFAULT '',
  `citizenid` varchar(50) NOT NULL,
  `stock` varchar(50) NOT NULL DEFAULT '[]',
  `stock_upgrade` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `truck_upgrade` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `relationship_upgrade` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `money` int(10) unsigned NOT NULL DEFAULT 0,
  `total_money_earned` int(10) unsigned NOT NULL DEFAULT 0,
  `total_money_spent` int(10) unsigned NOT NULL DEFAULT 0,
  `goods_bought` int(10) unsigned NOT NULL DEFAULT 0,
  `distance_traveled` double unsigned NOT NULL DEFAULT 0,
  `total_visits` int(10) unsigned NOT NULL DEFAULT 0,
  `customers` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`market_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `store_jobs` (
	`id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`market_id` VARCHAR(50) NOT NULL DEFAULT '' COLLATE 'utf8mb4_general_ci',
	`name` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_general_ci',
	`reward` INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`product` VARCHAR(50) NOT NULL DEFAULT '0' COLLATE 'utf8mb4_general_ci',
	`amount` INT(11) NOT NULL DEFAULT '0',
	`progress` BIT(1) NOT NULL DEFAULT b'0',
	PRIMARY KEY (`id`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;

-- ##############################################
-- ########   MyDefaultPlayer   ##########
-- ##############################################

-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.21-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping data for table lgrp.apartments: ~1 rows (approximately)
/*!40000 ALTER TABLE `apartments` DISABLE KEYS */;
INSERT INTO `apartments` (`id`, `name`, `type`, `label`, `citizenid`) VALUES
	(1, 'apartment35633', 'apartment3', 'Integrity Way 5633', 'DAY66829');
/*!40000 ALTER TABLE `apartments` ENABLE KEYS */;

-- Dumping data for table lgrp.bank_accounts: ~0 rows (approximately)
/*!40000 ALTER TABLE `bank_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank_accounts` ENABLE KEYS */;

-- Dumping data for table lgrp.bank_statements: ~0 rows (approximately)
/*!40000 ALTER TABLE `bank_statements` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank_statements` ENABLE KEYS */;

-- Dumping data for table lgrp.bans: ~0 rows (approximately)
/*!40000 ALTER TABLE `bans` DISABLE KEYS */;
/*!40000 ALTER TABLE `bans` ENABLE KEYS */;

-- Dumping data for table lgrp.craftingtables: ~0 rows (approximately)
/*!40000 ALTER TABLE `craftingtables` DISABLE KEYS */;
/*!40000 ALTER TABLE `craftingtables` ENABLE KEYS */;

-- Dumping data for table lgrp.crypto: ~0 rows (approximately)
/*!40000 ALTER TABLE `crypto` DISABLE KEYS */;
INSERT INTO `crypto` (`crypto`, `worth`, `history`) VALUES
	('qbit', 1, '[{"NewWorth":1,"PreviousWorth":0}]');
/*!40000 ALTER TABLE `crypto` ENABLE KEYS */;

-- Dumping data for table lgrp.crypto_transactions: ~0 rows (approximately)
/*!40000 ALTER TABLE `crypto_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `crypto_transactions` ENABLE KEYS */;

-- Dumping data for table lgrp.dealers: ~0 rows (approximately)
/*!40000 ALTER TABLE `dealers` DISABLE KEYS */;
/*!40000 ALTER TABLE `dealers` ENABLE KEYS */;

-- Dumping data for table lgrp.gloveboxitems: ~0 rows (approximately)
/*!40000 ALTER TABLE `gloveboxitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `gloveboxitems` ENABLE KEYS */;

-- Dumping data for table lgrp.houselocations: ~0 rows (approximately)
/*!40000 ALTER TABLE `houselocations` DISABLE KEYS */;
/*!40000 ALTER TABLE `houselocations` ENABLE KEYS */;

-- Dumping data for table lgrp.house_plants: ~0 rows (approximately)
/*!40000 ALTER TABLE `house_plants` DISABLE KEYS */;
/*!40000 ALTER TABLE `house_plants` ENABLE KEYS */;

-- Dumping data for table lgrp.known_recipes: ~0 rows (approximately)
/*!40000 ALTER TABLE `known_recipes` DISABLE KEYS */;
/*!40000 ALTER TABLE `known_recipes` ENABLE KEYS */;

-- Dumping data for table lgrp.lapraces: ~0 rows (approximately)
/*!40000 ALTER TABLE `lapraces` DISABLE KEYS */;
/*!40000 ALTER TABLE `lapraces` ENABLE KEYS */;

-- Dumping data for table lgrp.occasion_vehicles: ~0 rows (approximately)
/*!40000 ALTER TABLE `occasion_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `occasion_vehicles` ENABLE KEYS */;

-- Dumping data for table lgrp.permissions: ~0 rows (approximately)
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;

-- Dumping data for table lgrp.phone_invoices: ~0 rows (approximately)
/*!40000 ALTER TABLE `phone_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_invoices` ENABLE KEYS */;

-- Dumping data for table lgrp.phone_messages: ~0 rows (approximately)
/*!40000 ALTER TABLE `phone_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_messages` ENABLE KEYS */;

-- Dumping data for table lgrp.phone_tweets: ~0 rows (approximately)
/*!40000 ALTER TABLE `phone_tweets` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_tweets` ENABLE KEYS */;

-- Dumping data for table lgrp.players: ~1 rows (approximately)
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` (`id`, `citizenid`, `cid`, `license`, `name`, `money`, `charinfo`, `job`, `gang`, `position`, `metadata`, `inventory`, `last_updated`) VALUES
	(1, 'DAY66829', 1, 'license:be8522acbdb08c140c164ab6b0021bd0dd8e0551', 'Wrighty', '{"bank":50000000,"cash":50000000,"crypto":0}', '{"birthdate":"1987-07-07","gender":0,"phone":"1677598432","lastname":"Jennings","cid":"1","account":"US06QBCore5864226759","firstname":"Logan","nationality":"British","backstory":"placeholder backstory"}', '{"name":"unemployed","label":"Civilian","onduty":true,"isboss":false,"grade":{"name":"Freelancer","level":0},"payment":10}', '{"name":"none","grade":{"name":"none","level":0},"label":"No Gang Affiliaton","isboss":false}', '{"x":257.5648498535156,"y":-641.037353515625,"z":40.2996826171875}', '{"isdead":false,"jailitems":[],"jobrep":{"tow":0,"hotdog":0,"taxi":0,"trucker":0},"licences":{"business":false,"driver":true,"weapon":false},"currentapartment":"apartment35633","status":[],"phone":[],"ishandcuffed":false,"thirst":92.4,"dealerrep":0,"craftingrep":0,"armor":0,"stress":0,"walletid":"QB-71787173","phonedata":{"SerialNumber":64422382,"InstalledApps":[]},"hunger":91.6,"inside":{"apartment":[]},"criminalrecord":{"hasRecord":false},"fingerprint":"Oe402p84vnh2693","callsign":"NO CALLSIGN","commandbinds":[],"bloodtype":"A+","attachmentcraftingrep":0,"fitbit":[],"tracker":false,"injail":0,"inlaststand":false}', '[{"name":"phone","type":"item","slot":1,"info":[],"amount":1},{"name":"driver_license","type":"item","slot":2,"info":{"type":"Class C Driver License","lastname":"Jennings","birthdate":"1987-07-07","firstname":"Logan"},"amount":1},{"name":"id_card","type":"item","slot":3,"info":{"gender":0,"lastname":"Jennings","citizenid":"DAY66829","birthdate":"1987-07-07","nationality":"British","firstname":"Logan"},"amount":1}]', '2021-11-05 10:11:27');
/*!40000 ALTER TABLE `players` ENABLE KEYS */;

-- Dumping data for table lgrp.playerskins: ~1 rows (approximately)
/*!40000 ALTER TABLE `playerskins` DISABLE KEYS */;
INSERT INTO `playerskins` (`id`, `citizenid`, `model`, `skin`, `active`) VALUES
	(1, 'DAY66829', '1885233650', '{"jaw_bone_width":{"item":0,"texture":0,"defaultTexture":0,"defaultItem":0},"chimp_hole":{"item":0,"texture":0,"defaultTexture":0,"defaultItem":0},"beard":{"item":5,"texture":3,"defaultTexture":1,"defaultItem":-1},"eyebrows":{"item":0,"texture":1,"defaultTexture":1,"defaultItem":-1},"pants":{"item":98,"texture":30,"defaultTexture":0,"defaultItem":0},"moles":{"item":-1,"texture":0,"defaultTexture":0,"defaultItem":-1},"nose_0":{"item":0,"texture":0,"defaultTexture":0,"defaultItem":0},"nose_5":{"item":0,"texture":0,"defaultTexture":0,"defaultItem":0},"chimp_bone_width":{"item":0,"texture":0,"defaultTexture":0,"defaultItem":0},"blush":{"item":-1,"texture":1,"defaultTexture":1,"defaultItem":-1},"eyebrown_high":{"item":0,"texture":0,"defaultTexture":0,"defaultItem":0},"shoes":{"item":7,"texture":0,"defaultTexture":0,"defaultItem":1},"face":{"item":0,"texture":0,"defaultTexture":0,"defaultItem":0},"cheek_1":{"item":0,"texture":0,"defaultTexture":0,"defaultItem":0},"vest":{"item":0,"texture":0,"defaultTexture":0,"defaultItem":0},"eye_opening":{"item":0,"texture":0,"defaultTexture":0,"defaultItem":0},"chimp_bone_lenght":{"item":0,"texture":0,"defaultTexture":0,"defaultItem":0},"lipstick":{"item":-1,"texture":1,"defaultTexture":1,"defaultItem":-1},"jaw_bone_back_lenght":{"item":0,"texture":0,"defaultTexture":0,"defaultItem":0},"watch":{"item":-1,"texture":0,"defaultTexture":0,"defaultItem":-1},"chimp_bone_lowering":{"item":0,"texture":0,"defaultTexture":0,"defaultItem":0},"nose_2":{"item":0,"texture":0,"defaultTexture":0,"defaultItem":0},"torso2":{"item":167,"texture":7,"defaultTexture":0,"defaultItem":0},"mask":{"item":0,"texture":0,"defaultTexture":0,"defaultItem":0},"neck_thikness":{"item":0,"texture":0,"defaultTexture":0,"defaultItem":0},"cheek_3":{"item":0,"texture":0,"defaultTexture":0,"defaultItem":0},"cheek_2":{"item":0,"texture":0,"defaultTexture":0,"defaultItem":0},"nose_4":{"item":0,"texture":0,"defaultTexture":0,"defaultItem":0},"bag":{"item":0,"texture":0,"defaultTexture":0,"defaultItem":0},"ear":{"item":-1,"texture":0,"defaultTexture":0,"defaultItem":-1},"eyebrown_forward":{"item":0,"texture":0,"defaultTexture":0,"defaultItem":0},"nose_1":{"item":0,"texture":0,"defaultTexture":0,"defaultItem":0},"t-shirt":{"item":47,"texture":3,"defaultTexture":0,"defaultItem":1},"eye_color":{"item":-1,"texture":0,"defaultTexture":0,"defaultItem":-1},"decals":{"item":0,"texture":0,"defaultTexture":0,"defaultItem":0},"accessory":{"item":0,"texture":0,"defaultTexture":0,"defaultItem":0},"bracelet":{"item":-1,"texture":0,"defaultTexture":0,"defaultItem":-1},"ageing":{"item":-1,"texture":0,"defaultTexture":0,"defaultItem":-1},"makeup":{"item":-1,"texture":1,"defaultTexture":1,"defaultItem":-1},"nose_3":{"item":0,"texture":0,"defaultTexture":0,"defaultItem":0},"glass":{"item":0,"texture":0,"defaultTexture":0,"defaultItem":0},"arms":{"item":19,"texture":0,"defaultTexture":0,"defaultItem":0},"lips_thickness":{"item":0,"texture":0,"defaultTexture":0,"defaultItem":0},"hat":{"item":-1,"texture":0,"defaultTexture":0,"defaultItem":-1},"hair":{"item":2,"texture":2,"defaultTexture":0,"defaultItem":0}}', 1);
/*!40000 ALTER TABLE `playerskins` ENABLE KEYS */;

-- Dumping data for table lgrp.player_boats: ~0 rows (approximately)
/*!40000 ALTER TABLE `player_boats` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_boats` ENABLE KEYS */;

-- Dumping data for table lgrp.player_contacts: ~0 rows (approximately)
/*!40000 ALTER TABLE `player_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_contacts` ENABLE KEYS */;

-- Dumping data for table lgrp.player_houses: ~0 rows (approximately)
/*!40000 ALTER TABLE `player_houses` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_houses` ENABLE KEYS */;

-- Dumping data for table lgrp.player_mails: ~0 rows (approximately)
/*!40000 ALTER TABLE `player_mails` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_mails` ENABLE KEYS */;

-- Dumping data for table lgrp.player_outfits: ~1 rows (approximately)
/*!40000 ALTER TABLE `player_outfits` DISABLE KEYS */;
INSERT INTO `player_outfits` (`id`, `citizenid`, `outfitname`, `model`, `skin`, `outfitId`) VALUES
	(1, 'DAY66829', 'Default', '1885233650', '{"nose_1":{"texture":0,"defaultItem":0,"defaultTexture":0,"item":0},"jaw_bone_back_lenght":{"texture":0,"defaultItem":0,"defaultTexture":0,"item":0},"mask":{"texture":0,"defaultItem":0,"defaultTexture":0,"item":0},"cheek_2":{"texture":0,"defaultItem":0,"defaultTexture":0,"item":0},"vest":{"texture":0,"defaultItem":0,"defaultTexture":0,"item":0},"nose_3":{"texture":0,"defaultItem":0,"defaultTexture":0,"item":0},"watch":{"texture":0,"defaultItem":-1,"defaultTexture":0,"item":-1},"jaw_bone_width":{"texture":0,"defaultItem":0,"defaultTexture":0,"item":0},"eye_opening":{"texture":0,"defaultItem":0,"defaultTexture":0,"item":0},"nose_5":{"texture":0,"defaultItem":0,"defaultTexture":0,"item":0},"ear":{"texture":0,"defaultItem":-1,"defaultTexture":0,"item":-1},"lipstick":{"texture":1,"defaultItem":-1,"defaultTexture":1,"item":-1},"t-shirt":{"texture":3,"defaultItem":1,"defaultTexture":0,"item":47},"bracelet":{"texture":0,"defaultItem":-1,"defaultTexture":0,"item":-1},"chimp_bone_lenght":{"texture":0,"defaultItem":0,"defaultTexture":0,"item":0},"neck_thikness":{"texture":0,"defaultItem":0,"defaultTexture":0,"item":0},"chimp_hole":{"texture":0,"defaultItem":0,"defaultTexture":0,"item":0},"cheek_1":{"texture":0,"defaultItem":0,"defaultTexture":0,"item":0},"hair":{"texture":2,"defaultItem":0,"defaultTexture":0,"item":2},"hat":{"texture":0,"defaultItem":-1,"defaultTexture":0,"item":-1},"face":{"texture":0,"defaultItem":0,"defaultTexture":0,"item":0},"nose_0":{"texture":0,"defaultItem":0,"defaultTexture":0,"item":0},"nose_4":{"texture":0,"defaultItem":0,"defaultTexture":0,"item":0},"chimp_bone_width":{"texture":0,"defaultItem":0,"defaultTexture":0,"item":0},"glass":{"texture":0,"defaultItem":0,"defaultTexture":0,"item":0},"eye_color":{"texture":0,"defaultItem":-1,"defaultTexture":0,"item":-1},"makeup":{"texture":1,"defaultItem":-1,"defaultTexture":1,"item":-1},"blush":{"texture":1,"defaultItem":-1,"defaultTexture":1,"item":-1},"pants":{"texture":30,"defaultItem":0,"defaultTexture":0,"item":98},"ageing":{"texture":0,"defaultItem":-1,"defaultTexture":0,"item":-1},"accessory":{"texture":0,"defaultItem":0,"defaultTexture":0,"item":0},"bag":{"texture":0,"defaultItem":0,"defaultTexture":0,"item":0},"beard":{"texture":3,"defaultItem":-1,"defaultTexture":1,"item":5},"shoes":{"texture":0,"defaultItem":1,"defaultTexture":0,"item":7},"eyebrows":{"texture":1,"defaultItem":-1,"defaultTexture":1,"item":0},"decals":{"texture":0,"defaultItem":0,"defaultTexture":0,"item":0},"moles":{"texture":0,"defaultItem":-1,"defaultTexture":0,"item":-1},"arms":{"texture":0,"defaultItem":0,"defaultTexture":0,"item":19},"cheek_3":{"texture":0,"defaultItem":0,"defaultTexture":0,"item":0},"torso2":{"texture":7,"defaultItem":0,"defaultTexture":0,"item":167},"nose_2":{"texture":0,"defaultItem":0,"defaultTexture":0,"item":0},"chimp_bone_lowering":{"texture":0,"defaultItem":0,"defaultTexture":0,"item":0},"eyebrown_high":{"texture":0,"defaultItem":0,"defaultTexture":0,"item":0},"eyebrown_forward":{"texture":0,"defaultItem":0,"defaultTexture":0,"item":0},"lips_thickness":{"texture":0,"defaultItem":0,"defaultTexture":0,"item":0}}', 'outfit-9-1437');
/*!40000 ALTER TABLE `player_outfits` ENABLE KEYS */;

-- Dumping data for table lgrp.player_vehicles: ~0 rows (approximately)
/*!40000 ALTER TABLE `player_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_vehicles` ENABLE KEYS */;

-- Dumping data for table lgrp.player_warns: ~0 rows (approximately)
/*!40000 ALTER TABLE `player_warns` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_warns` ENABLE KEYS */;

-- Dumping data for table lgrp.skills: ~1 rows (approximately)
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` (`id`, `identifier`, `stamina`, `strength`, `driving`, `shooting`, `fishing`, `drugs`) VALUES
	(1, 'DAY66829', '0', '0', '0', '0', '0', '0');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;

-- Dumping data for table lgrp.stashitems: ~0 rows (approximately)
/*!40000 ALTER TABLE `stashitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `stashitems` ENABLE KEYS */;

-- Dumping data for table lgrp.trunkitems: ~0 rows (approximately)
/*!40000 ALTER TABLE `trunkitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `trunkitems` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
