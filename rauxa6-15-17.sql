# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.6.35)
# Database: rauxa
# Generation Time: 2017-06-16 03:11:03 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table rxa_actions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `rxa_actions`;

CREATE TABLE `rxa_actions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `rxa_actions` WRITE;
/*!40000 ALTER TABLE `rxa_actions` DISABLE KEYS */;

INSERT INTO `rxa_actions` (`id`, `name`)
VALUES
	(1,'Append'),
	(2,'Replace');

/*!40000 ALTER TABLE `rxa_actions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table rxa_files
# ------------------------------------------------------------

DROP TABLE IF EXISTS `rxa_files`;

CREATE TABLE `rxa_files` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(150) DEFAULT NULL,
  `idlist` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `rxa_files` WRITE;
/*!40000 ALTER TABLE `rxa_files` DISABLE KEYS */;

INSERT INTO `rxa_files` (`id`, `filename`, `idlist`)
VALUES
	(1,'Rauxa_20170615_1626.UNL',65),
	(2,'Rauxa_20170615_1627.UNL',66),
	(15,'Rauxa_20170615_1628.UNL',69),
	(16,'Rauxa_20170615_1628.txt',69),
	(17,'BASE0117_99999999_1000_Rauxa_20170615_1628.txt',69),
	(18,'BASE0117_99999999_1000_Rauxa_20170615_1628.csv',69),
	(19,'BASE0117_99999999_0484_0272_1000_Rauxa_20170615_1628.txt',69),
	(20,'BASE0117_99999999_0272_0246_1000_Rauxa_20170615_1628.txt',69),
	(21,'Rauxa_20170615_1643.UNL',1),
	(22,'Rauxa_20170615_1643.txt',1),
	(23,'BASE0117_99999999_1000_Rauxa_20170615_1643.txt',1),
	(24,'BASE0117_99999999_1000_Rauxa_20170615_1643.csv',1),
	(25,'BASE0117_99999999_0655_0999_1000_Rauxa_20170615_1643.txt',1),
	(26,'BASE0117_99999999_0999_0551_1000_Rauxa_20170615_1643.txt',1),
	(27,'Rauxa_20170615_1648.UNL',2),
	(28,'Rauxa_20170615_1648.txt',2),
	(29,'BASE0117_99999999_1000_Rauxa_20170615_1648.txt',2),
	(30,'BASE0117_99999999_1000_Rauxa_20170615_1648.csv',2),
	(31,'BASE0117_99999999_0441_0839_1000_Rauxa_20170615_1648.txt',2),
	(32,'BASE0117_99999999_0839_0481_1000_Rauxa_20170615_1648.txt',2),
	(33,'Rauxa_20170615_1650.UNL',3),
	(34,'Rauxa_20170615_1650.txt',3),
	(35,'BASE0117_99999999_1000_Rauxa_20170615_1650.txt',3),
	(36,'BASE0117_99999999_1000_Rauxa_20170615_1650.csv',3),
	(37,'BASE0117_99999999_0138_0061_1000_Rauxa_20170615_1650.txt',3),
	(38,'BASE0117_99999999_0061_0714_1000_Rauxa_20170615_1650.txt',3),
	(39,'Rauxa_20170615_1658.UNL',4),
	(40,'Rauxa_20170615_1658.txt',4),
	(41,'BASE0117_99999999_1000_Rauxa_20170615_1658.txt',4),
	(42,'BASE0117_99999999_1000_Rauxa_20170615_1658.csv',4),
	(43,'BASE0117_99999999_0579_0312_1000_Rauxa_20170615_1658.txt',4),
	(44,'BASE0117_99999999_0312_0402_1000_Rauxa_20170615_1658.txt',4),
	(45,'Rauxa_20170615_1710.UNL',5),
	(46,'Rauxa_20170615_1710.txt',5),
	(47,'BASE0117_99999999_1000_Rauxa_20170615_1710.txt',5),
	(48,'BASE0117_99999999_1000_Rauxa_20170615_1710.csv',5),
	(49,'BASE0117_99999999_1988_1619_1000_Rauxa_20170615_1710.txt',5),
	(50,'BASE0117_99999999_1619_1993_1000_Rauxa_20170615_1710.txt',5),
	(51,'Rauxa_20170615_1711.UNL',6),
	(52,'Rauxa_20170615_1711.txt',6),
	(53,'BASE0117_99999999_1000_Rauxa_20170615_1711.txt',6),
	(54,'BASE0117_99999999_1000_Rauxa_20170615_1711.csv',6),
	(55,'BASE0117_99999999_2717_2976_1000_Rauxa_20170615_1711.txt',6),
	(56,'BASE0117_99999999_2976_2327_1000_Rauxa_20170615_1711.txt',6),
	(57,'Rauxa_20170615_1711.UNL',7),
	(58,'Rauxa_20170615_1711.txt',7),
	(59,'BASE0117_99999999_1000_Rauxa_20170615_1711.txt',7),
	(60,'BASE0117_99999999_1000_Rauxa_20170615_1711.csv',7),
	(61,'BASE0117_99999999_3604_3050_1000_Rauxa_20170615_1711.txt',7),
	(62,'BASE0117_99999999_3050_3771_1000_Rauxa_20170615_1711.txt',7),
	(63,'Rauxa_20170615_1721.UNL',8),
	(64,'Rauxa_20170615_1721.txt',8),
	(65,'BASE0117_99999999_1000_Rauxa_20170615_1721.txt',8),
	(66,'BASE0117_99999999_1000_Rauxa_20170615_1721.csv',8),
	(67,'BASE0117_99999999_4811_4292_1000_Rauxa_20170615_1721.txt',8),
	(68,'BASE0117_99999999_4292_4950_1000_Rauxa_20170615_1721.txt',8),
	(69,'Rauxa_20170615_1722.UNL',9),
	(70,'Rauxa_20170615_1722.txt',9),
	(71,'BASE0117_99999999_1000_Rauxa_20170615_1722.txt',9),
	(72,'BASE0117_99999999_1000_Rauxa_20170615_1722.csv',9),
	(73,'BASE0117_99999999_5757_5156_1000_Rauxa_20170615_1722.txt',9),
	(74,'BASE0117_99999999_5156_5528_1000_Rauxa_20170615_1722.txt',9),
	(75,'Rauxa_20170615_1728.UNL',10),
	(76,'Rauxa_20170615_1728.txt',10),
	(77,'BASE0117_99999999_1000_Rauxa_20170615_1728.txt',10),
	(78,'BASE0117_99999999_1000_Rauxa_20170615_1728.csv',10),
	(79,'BASE0117_99999999_6959_6488_1000_Rauxa_20170615_1728.txt',10),
	(80,'BASE0117_99999999_6488_6632_1000_Rauxa_20170615_1728.txt',10),
	(81,'Rauxa_20170615_1729.UNL',11),
	(82,'Rauxa_20170615_1729.txt',11),
	(83,'BASE0117_99999999_1000_Rauxa_20170615_1729.txt',11),
	(84,'BASE0117_99999999_1000_Rauxa_20170615_1729.csv',11),
	(85,'BASE0117_99999999_7625_7937_1000_Rauxa_20170615_1729.txt',11),
	(86,'BASE0117_99999999_7937_7979_1000_Rauxa_20170615_1729.txt',11),
	(87,'Rauxa_20170615_1731.UNL',12),
	(88,'Rauxa_20170615_1731.txt',12),
	(89,'Bash123_123123123_1000_Rauxa_20170615_1731.txt',12),
	(90,'Bash123_123123123_1000_Rauxa_20170615_1731.csv',12),
	(91,'Bash123_123123123_0287_0433_1000_Rauxa_20170615_1731.txt',12),
	(92,'Bash123_123123123_0433_0058_1000_Rauxa_20170615_1731.txt',12),
	(93,'Rauxa_20170615_1732.UNL',13),
	(94,'Rauxa_20170615_1732.txt',13),
	(95,'Bash123_123123123_1000_Rauxa_20170615_1732.txt',13),
	(96,'Bash123_123123123_1000_Rauxa_20170615_1732.csv',13),
	(97,'Bash123_123123123_1062_1535_1000_Rauxa_20170615_1732.txt',13),
	(98,'Bash123_123123123_1535_1912_1000_Rauxa_20170615_1732.txt',13),
	(99,'Rauxa_20170615_1733.UNL',14),
	(100,'Rauxa_20170615_1733.txt',14),
	(101,'Bash123_123123123_1000_Rauxa_20170615_1733.txt',14),
	(102,'Bash123_123123123_1000_Rauxa_20170615_1733.csv',14),
	(103,'Bash123_123123123_2857_2575_1000_Rauxa_20170615_1733.txt',14),
	(104,'Bash123_123123123_2575_2866_1000_Rauxa_20170615_1733.txt',14),
	(105,'Rauxa_20170615_1733.UNL',15),
	(106,'Rauxa_20170615_1733.txt',15),
	(107,'Bash123_123123123_1000_Rauxa_20170615_1733.txt',15),
	(108,'Bash123_123123123_1000_Rauxa_20170615_1733.csv',15),
	(109,'Bash123_123123123_3442_3822_1000_Rauxa_20170615_1733.txt',15),
	(110,'Bash123_123123123_3822_3294_1000_Rauxa_20170615_1733.txt',15),
	(111,'Rauxa_20170615_1734.UNL',16),
	(112,'Rauxa_20170615_1734.txt',16),
	(113,'Bash123_123123123_1000_Rauxa_20170615_1734.txt',16),
	(114,'Bash123_123123123_1000_Rauxa_20170615_1734.csv',16),
	(115,'Bash123_123123123_4185_4919_1000_Rauxa_20170615_1734.txt',16),
	(116,'Bash123_123123123_4919_4392_1000_Rauxa_20170615_1734.txt',16),
	(117,'Rauxa_20170615_1734.UNL',17),
	(118,'Rauxa_20170615_1734.txt',17),
	(119,'Bash123_123123123_1000_Rauxa_20170615_1734.txt',17),
	(120,'Bash123_123123123_1000_Rauxa_20170615_1734.csv',17),
	(121,'Bash123_123123123_5515_5567_1000_Rauxa_20170615_1734.txt',17),
	(122,'Bash123_123123123_5567_5037_1000_Rauxa_20170615_1734.txt',17),
	(123,'Rauxa_20170615_1734.UNL',18),
	(124,'Rauxa_20170615_1734.txt',18),
	(125,'Bash123_123123123_1000_Rauxa_20170615_1734.txt',18),
	(126,'Bash123_123123123_1000_Rauxa_20170615_1734.csv',18),
	(127,'Bash123_123123123_6109_6161_1000_Rauxa_20170615_1734.txt',18),
	(128,'Bash123_123123123_6161_6661_1000_Rauxa_20170615_1734.txt',18),
	(129,'Rauxa_20170615_1735.UNL',19),
	(130,'Rauxa_20170615_1735.txt',19),
	(131,'Bash123_123123123_1000_Rauxa_20170615_1735.txt',19),
	(132,'Bash123_123123123_1000_Rauxa_20170615_1735.csv',19),
	(133,'Bash123_123123123_7007_7543_1000_Rauxa_20170615_1735.txt',19),
	(134,'Bash123_123123123_7543_7530_1000_Rauxa_20170615_1735.txt',19),
	(135,'Rauxa_20170615_1736.UNL',20),
	(136,'Rauxa_20170615_1736.txt',20),
	(137,'123asd_123_1000_Rauxa_20170615_1736.txt',20),
	(138,'123asd_123_1000_Rauxa_20170615_1736.csv',20),
	(139,'123asd_123_0139_0993_1000_Rauxa_20170615_1736.txt',20),
	(140,'123asd_123_0993_0241_1000_Rauxa_20170615_1736.txt',20),
	(141,'Rauxa_20170615_1737.UNL',21),
	(142,'Rauxa_20170615_1737.txt',21),
	(143,'SADFQ3E4_124_1000_Rauxa_20170615_1737.txt',21),
	(144,'SADFQ3E4_124_1000_Rauxa_20170615_1737.csv',21),
	(145,'SADFQ3E4_124_0757_0573_1000_Rauxa_20170615_1737.txt',21),
	(146,'SADFQ3E4_124_0573_0602_1000_Rauxa_20170615_1737.txt',21),
	(147,'Rauxa_20170615_1737.UNL',22),
	(148,'Rauxa_20170615_1737.txt',22),
	(149,'SADFQ3E4_124_1000_Rauxa_20170615_1737.txt',22),
	(150,'SADFQ3E4_124_1000_Rauxa_20170615_1737.csv',22),
	(151,'SADFQ3E4_124_1690_1972_1000_Rauxa_20170615_1737.txt',22),
	(152,'SADFQ3E4_124_1972_1496_1000_Rauxa_20170615_1737.txt',22),
	(153,'Rauxa_20170615_1741.UNL',23),
	(154,'Rauxa_20170615_1741.txt',23),
	(155,'sadf134_1231123_100_Rauxa_20170615_1741.txt',23),
	(156,'sadf134_1231123_100_Rauxa_20170615_1741.csv',23),
	(157,'sadf134_1231123_088_050_100_Rauxa_20170615_1741.txt',23),
	(158,'sadf134_1231123_050_058_100_Rauxa_20170615_1741.txt',23),
	(159,'Rauxa_20170615_1742.UNL',24),
	(160,'Rauxa_20170615_1742.txt',24),
	(161,'1234safd_1234_100_Rauxa_20170615_1742.txt',24),
	(162,'1234safd_1234_100_Rauxa_20170615_1742.csv',24),
	(163,'1234safd_1234_019_095_100_Rauxa_20170615_1742.txt',24),
	(164,'1234safd_1234_095_077_100_Rauxa_20170615_1742.txt',24),
	(165,'Rauxa_20170615_1745.UNL',25),
	(166,'Rauxa_20170615_1745.txt',25),
	(167,'sadf23_234134_1000_Rauxa_20170615_1745.txt',25),
	(168,'sadf23_234134_1000_Rauxa_20170615_1745.csv',25),
	(169,'sadf23_234134_0630_0719_1000_Rauxa_20170615_1745.txt',25),
	(170,'sadf23_234134_0719_0019_1000_Rauxa_20170615_1745.txt',25),
	(171,'Rauxa_20170615_1746.UNL',26),
	(172,'Rauxa_20170615_1746.txt',26),
	(173,'asdf234_21311_1000_Rauxa_20170615_1746.txt',26),
	(174,'asdf234_21311_1000_Rauxa_20170615_1746.csv',26),
	(175,'asdf234_21311_0316_0774_1000_Rauxa_20170615_1746.txt',26),
	(176,'asdf234_21311_0774_0224_1000_Rauxa_20170615_1746.txt',26),
	(177,'Rauxa_20170615_1746.UNL',27),
	(178,'Rauxa_20170615_1746.txt',27),
	(179,'asdff23_123123_1000_Rauxa_20170615_1746.txt',27),
	(180,'asdff23_123123_1000_Rauxa_20170615_1746.csv',27),
	(181,'asdff23_123123_0569_0608_1000_Rauxa_20170615_1746.txt',27),
	(182,'asdff23_123123_0608_0976_1000_Rauxa_20170615_1746.txt',27),
	(183,'Rauxa_20170615_1749.UNL',28),
	(184,'Rauxa_20170615_1749.txt',28),
	(185,'sadfs33_2342_100_Rauxa_20170615_1749.txt',28),
	(186,'sadfs33_2342_100_Rauxa_20170615_1749.csv',28),
	(187,'sadfs33_2342_071_057_100_Rauxa_20170615_1749.txt',28),
	(188,'sadfs33_2342_057_093_100_Rauxa_20170615_1749.txt',28),
	(189,'Rauxa_20170615_1754.UNL',29),
	(190,'Rauxa_20170615_1754.txt',29),
	(191,'safdas4_1231234_100_Rauxa_20170615_1754.txt',29),
	(192,'safdas4_1231234_100_Rauxa_20170615_1754.csv',29),
	(193,'safdas4_1231234_084_099_100_Rauxa_20170615_1754.txt',29),
	(194,'safdas4_1231234_099_025_100_Rauxa_20170615_1754.txt',29),
	(195,'Rauxa_20170615_1754.UNL',30),
	(196,'Rauxa_20170615_1754.txt',30),
	(197,'sadfasf_1234sdf_100_Rauxa_20170615_1754.txt',30),
	(198,'sadfasf_1234sdf_100_Rauxa_20170615_1754.csv',30),
	(199,'sadfasf_1234sdf_059_065_100_Rauxa_20170615_1754.txt',30),
	(200,'sadfasf_1234sdf_065_036_100_Rauxa_20170615_1754.txt',30),
	(201,'Rauxa_20170615_1808.UNL',31),
	(202,'Rauxa_20170615_1808.txt',31),
	(203,'asdfs_134_1000_Rauxa_20170615_1808.txt',31),
	(204,'asdfs_134_1000_Rauxa_20170615_1808.csv',31),
	(205,'asdfs_134_0359_0468_1000_Rauxa_20170615_1808.txt',31),
	(206,'asdfs_134_0468_0757_1000_Rauxa_20170615_1808.txt',31),
	(207,'Rauxa_20170615_1903.UNL',32),
	(208,'Rauxa_20170615_1903.txt',32),
	(209,'BASE0117_99999_10000_Rauxa_20170615_1903.txt',32),
	(210,'BASE0117_99999_10000_Rauxa_20170615_1903.csv',32),
	(211,'BASE0117_99999_02698_01680_10000_Rauxa_20170615_1903.txt',32),
	(212,'BASE0117_99999_01680_02465_10000_Rauxa_20170615_1903.txt',32),
	(213,'Rauxa_20170615_1906.UNL',33),
	(214,'Rauxa_20170615_1906.txt',33),
	(215,'BASE0117_99999_10000_Rauxa_20170615_1906.txt',33),
	(216,'BASE0117_99999_10000_Rauxa_20170615_1906.csv',33),
	(217,'BASE0117_99999_12441_18305_10000_Rauxa_20170615_1906.txt',33),
	(218,'BASE0117_99999_18305_17408_10000_Rauxa_20170615_1906.txt',33),
	(219,'Rauxa_20170615_1906.UNL',34),
	(220,'Rauxa_20170615_1906.txt',34),
	(221,'1234234_123123_1132_Rauxa_20170615_1906.txt',34),
	(222,'1234234_123123_1132_Rauxa_20170615_1906.csv',34),
	(223,'1234234_123123_0781_0778_1132_Rauxa_20170615_1906.txt',34),
	(224,'1234234_123123_0778_0251_1132_Rauxa_20170615_1906.txt',34),
	(225,'Rauxa_20170615_1907.UNL',35),
	(226,'Rauxa_20170615_1907.txt',35),
	(227,'asdf_sadf_1234_Rauxa_20170615_1907.txt',35),
	(228,'asdf_sadf_1234_Rauxa_20170615_1907.csv',35),
	(229,'asdf_sadf_0035_0065_1234_Rauxa_20170615_1907.txt',35),
	(230,'asdf_sadf_0065_0269_1234_Rauxa_20170615_1907.txt',35),
	(231,'Rauxa_20170615_1908.UNL',36),
	(232,'Rauxa_20170615_1908.txt',36),
	(233,'asdf_asfd_1234_Rauxa_20170615_1908.txt',36),
	(234,'asdf_asfd_1234_Rauxa_20170615_1908.csv',36),
	(235,'asdf_asfd_0794_0834_1234_Rauxa_20170615_1908.txt',36),
	(236,'asdf_asfd_0834_0584_1234_Rauxa_20170615_1908.txt',36),
	(237,'Rauxa_20170615_1909.UNL',37),
	(238,'Rauxa_20170615_1909.txt',37),
	(239,'asdf_asdf_1234_Rauxa_20170615_1909.txt',37),
	(240,'asdf_asdf_1234_Rauxa_20170615_1909.csv',37),
	(241,'asdf_asdf_0712_0328_1234_Rauxa_20170615_1909.txt',37),
	(242,'asdf_asdf_0328_0675_1234_Rauxa_20170615_1909.txt',37),
	(243,'Rauxa_20170615_1909.UNL',38),
	(244,'Rauxa_20170615_1909.txt',38),
	(245,'asdf_asdf_1234_Rauxa_20170615_1909.txt',38),
	(246,'asdf_asdf_1234_Rauxa_20170615_1909.csv',38),
	(247,'asdf_asdf_1510_2346_1234_Rauxa_20170615_1909.txt',38),
	(248,'asdf_asdf_2346_1952_1234_Rauxa_20170615_1909.txt',38),
	(249,'Rauxa_20170615_1910.UNL',39),
	(250,'Rauxa_20170615_1910.txt',39),
	(251,'asdf_asdf_1234_Rauxa_20170615_1910.txt',39),
	(252,'asdf_asdf_1234_Rauxa_20170615_1910.csv',39),
	(253,'asdf_asdf_3299_2811_1234_Rauxa_20170615_1910.txt',39),
	(254,'asdf_asdf_2811_3533_1234_Rauxa_20170615_1910.txt',39),
	(255,'Rauxa_20170615_1912.UNL',40),
	(256,'Rauxa_20170615_1912.txt',40),
	(257,'asdf_asdf_1234_Rauxa_20170615_1912.txt',40),
	(258,'asdf_asdf_1234_Rauxa_20170615_1912.csv',40),
	(259,'asdf_asdf_3801_4848_1234_Rauxa_20170615_1912.txt',40),
	(260,'asdf_asdf_4848_4861_1234_Rauxa_20170615_1912.txt',40);

/*!40000 ALTER TABLE `rxa_files` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table rxa_lists
# ------------------------------------------------------------

DROP TABLE IF EXISTS `rxa_lists`;

CREATE TABLE `rxa_lists` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `client_name` varchar(50) DEFAULT NULL,
  `vendor` varchar(50) DEFAULT NULL,
  `market` varchar(50) DEFAULT NULL,
  `action` varchar(25) DEFAULT NULL,
  `group_id` varchar(20) DEFAULT NULL,
  `barcode_id` varchar(20) DEFAULT NULL,
  `split_num` varchar(12) DEFAULT NULL,
  `total` varchar(12) DEFAULT NULL,
  `gid` varchar(20) DEFAULT NULL,
  `bid` varchar(20) DEFAULT NULL,
  `last_num` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `rxa_lists` WRITE;
/*!40000 ALTER TABLE `rxa_lists` DISABLE KEYS */;

INSERT INTO `rxa_lists` (`id`, `datetime`, `client_name`, `vendor`, `market`, `action`, `group_id`, `barcode_id`, `split_num`, `total`, `gid`, `bid`, `last_num`)
VALUES
	(1,'2017-06-15 16:43:59','Levi Fuson','Rauxa','North Central: NC','Append','BASE0117','99999999',NULL,'1000',NULL,NULL,NULL),
	(2,'2017-06-15 16:48:51','Levi Fuson','Rauxa','North Central: NC','Append','BASE0117','99999999',NULL,'1000','8','8',4),
	(3,'2017-06-15 16:50:46','Levi Fuson','Rauxa','North Central: NC','Append','BASE0117','99999999',NULL,'1000','8','8',NULL),
	(4,'2017-06-15 16:58:51','Levi Fuson','Rauxa','North Central: NC','Append','BASE0117','99999999',NULL,'1000','8','8',1000),
	(5,'2017-06-15 17:10:48','Levi Fuson','Rauxa','North Central: NC','Append','BASE0117','99999999',NULL,'1000','8','8',2000),
	(6,'2017-06-15 17:11:16','Levi Fuson','Rauxa','North Central: NC','Append','BASE0117','99999999',NULL,'1000','8','8',3000),
	(7,'2017-06-15 17:11:24','Levi Fuson','Rauxa','North Central: NC','Append','BASE0117','99999999',NULL,'1000','8','8',4000),
	(8,'2017-06-15 17:21:45','Levi Fuson','Rauxa','North Central: NC','Append','BASE0117','99999999',NULL,'1000','8','8',5000),
	(9,'2017-06-15 17:22:14','Levi Fuson','Rauxa','North Central: NC','Append','BASE0117','99999999',NULL,'1000','8','8',6000),
	(10,'2017-06-15 17:28:43','Levi Fuson','Rauxa','North Central: NC','Append','BASE0117','99999999',NULL,'1000','8','8',7000),
	(11,'2017-06-15 17:29:29','Levi Fuson','Rauxa','North Central: NC','Append','BASE0117','99999999',NULL,'1000','8','8',9861),
	(12,'2017-06-15 17:31:25','Levi','Rauxa','South Central: SC','Append','Bash123','123123123',NULL,'1000','7','9',1000),
	(13,'2017-06-15 17:32:34','Levi','Rauxa','South Central: SC','Append','Bash123','123123123',NULL,'1000','7','9',2000),
	(14,'2017-06-15 17:33:06','Levi','Rauxa','South Central: SC','Append','Bash123','123123123',NULL,'1000','7','9',3000),
	(15,'2017-06-15 17:33:37','Levi','Rauxa','South Central: SC','Append','Bash123','123123123',NULL,'1000','7','9',4000),
	(16,'2017-06-15 17:34:06','Levi','Rauxa','South Central: SC','Append','Bash123','123123123',NULL,'1000','7','9',5000),
	(17,'2017-06-15 17:34:18','Levi','Rauxa','South Central: SC','Append','Bash123','123123123',NULL,'1000','7','9',6000),
	(18,'2017-06-15 17:34:41','Levi','Rauxa','South Central: SC','Append','Bash123','123123123',NULL,'1000','7','9',7000),
	(19,'2017-06-15 17:35:48','Levi','Rauxa','South Central: SC','Append','Bash123','123123123',NULL,'1000','7','9',8000),
	(20,'2017-06-15 17:36:25','asd','Rauxa','North Central: NC','Replace','123asd','123',NULL,'1000','6','3',1000),
	(21,'2017-06-15 17:37:31','sdfsaF','Rauxa','Great Lakes: GL','Append','SADFQ3E4','124',NULL,'1000','8','3',1000),
	(22,'2017-06-15 17:37:42','sdfsaF','Rauxa','Great Lakes: GL','Append','SADFQ3E4','124',NULL,'1000','8','3',2000),
	(23,'2017-06-15 17:41:52','adfadf','Rauxa','Great Lakes: GL','Append','sadf134','1231123',NULL,'100','7','7',100),
	(24,'2017-06-15 17:42:56','asdf','Rauxa','Great Lakes: GL','Append','1234safd','1234',NULL,'100','8','4',100),
	(25,'2017-06-15 17:45:06','sadfsa','Rauxa','Great Lakes: GL','Append','sadf23','234134',NULL,'1000','6','6',1000),
	(26,'2017-06-15 17:46:02','sdfasdf','Rauxa','Great Lakes: GL','Append','asdf234','21311',NULL,'1000','7','5',1000),
	(27,'2017-06-15 17:46:39','asdfsdaf','Rauxa','Great Lakes: GL','Append','asdff23','123123',NULL,'1000','7','6',1000),
	(28,'2017-06-15 17:49:35','sdaf','Rauxa','Great Lakes: GL','Append','sadfs33','2342',NULL,'100','7','4',100),
	(29,'2017-06-15 17:54:00','sadf','Rauxa','Great Lakes: GL','Append','safdas4','1231234',NULL,'100','7','7',100),
	(30,'2017-06-15 17:54:52','sadf','Rauxa','Great Lakes: GL','Append','sadfasf','1234sdf',NULL,'100','7','7',100),
	(31,'2017-06-15 18:08:18','sadfas','Rauxa','Great Lakes: GL','Replace','asdfs','134',NULL,'1000','5','3',1000),
	(32,'2017-06-15 19:03:01','sadfsad','Rauxa','North East: NE','Replace','BASE0117','99999',NULL,'10000','8','5',10000),
	(33,'2017-06-15 19:06:18','sadfsad','Rauxa','North East: NE','Replace','BASE0117','99999',NULL,'10000','8','5',20000),
	(34,'2017-06-15 19:06:49','asdf','Rauxa','Great Lakes: GL','Replace','1234234','123123',NULL,'1132','7','6',1132),
	(35,'2017-06-15 19:07:46','asdf','Rauxa','Great Lakes: GL','Append','asdf','sadf',NULL,'1234','4','4',1234),
	(36,'2017-06-15 19:08:13','sdfaa','Rauxa','Great Lakes: GL','Replace','asdf','asfd',NULL,'1234','4','4',1234),
	(37,'2017-06-15 19:09:20','asdfasf','Rauxa','Great Lakes: GL','Replace','asdf','asdf',NULL,'1234','4','4',1234),
	(38,'2017-06-15 19:09:22','asdfasf','Rauxa','Great Lakes: GL','Replace','asdf','asdf',NULL,'1234','4','4',2468),
	(39,'2017-06-15 19:10:19','asdfasf','Rauxa','Great Lakes: GL','Replace','asdf','asdf',NULL,'1234','4','4',3702),
	(40,'2017-06-15 19:12:10','asdfasf','Rauxa','Great Lakes: GL','Replace','asdf','asdf',NULL,'1234','4','4',4936);

/*!40000 ALTER TABLE `rxa_lists` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table rxa_markets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `rxa_markets`;

CREATE TABLE `rxa_markets` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `rxa_markets` WRITE;
/*!40000 ALTER TABLE `rxa_markets` DISABLE KEYS */;

INSERT INTO `rxa_markets` (`id`, `name`)
VALUES
	(28,'Great Lakes: GL'),
	(29,'North Central: NC'),
	(30,'North East: NE'),
	(31,'Pacific: PA'),
	(32,'South Central: SC'),
	(33,'South East: SE'),
	(34,'kjhskjdf');

/*!40000 ALTER TABLE `rxa_markets` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table rxa_settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `rxa_settings`;

CREATE TABLE `rxa_settings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(15) DEFAULT NULL,
  `val` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `rxa_settings` WRITE;
/*!40000 ALTER TABLE `rxa_settings` DISABLE KEYS */;

INSERT INTO `rxa_settings` (`id`, `type`, `val`)
VALUES
	(1,'passcode',X'24327924313024626C654136353953385649686B2E304F44576971382E786D5335336855302F774866764A6E51503256585945697445637A746E4F69');

/*!40000 ALTER TABLE `rxa_settings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table rxa_vendors
# ------------------------------------------------------------

DROP TABLE IF EXISTS `rxa_vendors`;

CREATE TABLE `rxa_vendors` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `rxa_vendors` WRITE;
/*!40000 ALTER TABLE `rxa_vendors` DISABLE KEYS */;

INSERT INTO `rxa_vendors` (`id`, `name`)
VALUES
	(1,'Rauxa');

/*!40000 ALTER TABLE `rxa_vendors` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
