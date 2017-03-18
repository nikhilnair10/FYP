/*
SQLyog - Free MySQL GUI v5.19
Host - 5.0.15-nt : Database - sptheory
*********************************************************************
Server version : 5.0.15-nt
*/

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `sptheory`;

USE `sptheory`;

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `adminlogin` */

DROP TABLE IF EXISTS `adminlogin`;

CREATE TABLE `adminlogin` (
  `id` int(5) NOT NULL auto_increment,
  `name` varchar(50) default NULL,
  `password` varchar(50) default NULL,
  `adminid` varchar(20) NOT NULL,
  `address` varchar(50) default NULL,
  `phone` varchar(15) default NULL,
  `email` varchar(50) default NULL,
  PRIMARY KEY  (`id`,`adminid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `adminlogin` */

insert into `adminlogin` (`id`,`name`,`password`,`adminid`,`address`,`phone`,`email`) values (1,'admin','admin','admin','mysoreeeeeeeeeee','9988668866','admin123@gmail.com');

/*Table structure for table `m_cloud` */

DROP TABLE IF EXISTS `m_cloud`;

CREATE TABLE `m_cloud` (
  `c_id` int(11) default NULL,
  `c_url` varchar(50) default NULL,
  `c_folder` varchar(20) default NULL,
  `c_username` varchar(10) default NULL,
  `c_pass` varchar(10) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_cloud` */

insert into `m_cloud` (`c_id`,`c_url`,`c_folder`,`c_username`,`c_pass`) values (1,'ftp://drivehq.com','sp_theory','blrstore','*blrstore1');

/*Table structure for table `m_file_one` */

DROP TABLE IF EXISTS `m_file_one`;

CREATE TABLE `m_file_one` (
  `file_no` int(11) NOT NULL auto_increment,
  `file_name` varchar(20) default NULL,
  `file_size1` int(11) default NULL,
  `file_size2` int(11) default NULL,
  `padding` int(11) default NULL,
  `no_blocks` int(11) default NULL,
  `hash_blk_nos` varchar(200) default NULL,
  `user_id` int(11) default NULL,
  `date` varchar(10) default NULL,
  `time` varchar(10) default NULL,
  `day` varchar(10) default NULL,
  PRIMARY KEY  (`file_no`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `m_file_one_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `userlogin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_file_one` */

insert into `m_file_one` (`file_no`,`file_name`,`file_size1`,`file_size2`,`padding`,`no_blocks`,`hash_blk_nos`,`user_id`,`date`,`time`,`day`) values (1,'shanu_rabbit.jpg',8454,0,0,5,'1-2-3-4-5-',40,'01-05-2016','13:44:08','Sunday');
insert into `m_file_one` (`file_no`,`file_name`,`file_size1`,`file_size2`,`padding`,`no_blocks`,`hash_blk_nos`,`user_id`,`date`,`time`,`day`) values (2,'sharu_rabbit.jpg',8454,0,0,5,'1-2-3-4-5-',40,'01-05-2016','13:45:14','Sunday');

/*Table structure for table `m_hash_code` */

DROP TABLE IF EXISTS `m_hash_code`;

CREATE TABLE `m_hash_code` (
  `hash_unique_code` int(11) NOT NULL auto_increment,
  `hash_code` varchar(40) default NULL,
  `blk_name` varchar(20) default NULL,
  `no_instnce` int(11) default NULL,
  `uploaded_status` varchar(5) default 'no',
  PRIMARY KEY  (`hash_unique_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_hash_code` */

insert into `m_hash_code` (`hash_unique_code`,`hash_code`,`blk_name`,`no_instnce`,`uploaded_status`) values (1,'454bf4f10530797b001055f9d930b3a8','1blk_0',2,'yes');
insert into `m_hash_code` (`hash_unique_code`,`hash_code`,`blk_name`,`no_instnce`,`uploaded_status`) values (2,'46d1aeae08b631591798be605da636ec','2blk_1',2,'yes');
insert into `m_hash_code` (`hash_unique_code`,`hash_code`,`blk_name`,`no_instnce`,`uploaded_status`) values (3,'2109c6d617e6739f2383fd3a5a2b06bf','3blk_2',2,'yes');
insert into `m_hash_code` (`hash_unique_code`,`hash_code`,`blk_name`,`no_instnce`,`uploaded_status`) values (4,'f3839f8e1c3a3e9af7973a434069c6a5','4blk_3',2,'yes');
insert into `m_hash_code` (`hash_unique_code`,`hash_code`,`blk_name`,`no_instnce`,`uploaded_status`) values (5,'13c6ba729365ddec6bd1ab9a600a4c51','5blk_4',2,'yes');

/*Table structure for table `m_level1` */

DROP TABLE IF EXISTS `m_level1`;

CREATE TABLE `m_level1` (
  `m_l1_code` int(11) NOT NULL default '0',
  `m_l1_byte` varchar(4) default 'NULL',
  PRIMARY KEY  (`m_l1_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_level1` */

insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (0,'00');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (1,'01');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (2,'02');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (3,'03');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (4,'04');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (5,'05');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (6,'06');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (7,'07');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (8,'08');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (9,'09');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (10,'0a');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (11,'0b');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (12,'0c');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (13,'0d');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (14,'0e');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (15,'0f');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (16,'10');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (17,'11');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (18,'12');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (19,'13');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (20,'14');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (21,'15');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (22,'16');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (23,'17');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (24,'18');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (25,'19');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (26,'1a');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (27,'1b');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (28,'1c');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (29,'1d');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (30,'1e');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (31,'1f');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (32,'20');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (33,'21');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (34,'22');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (35,'23');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (36,'24');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (37,'25');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (38,'26');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (39,'27');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (40,'28');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (41,'29');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (42,'2a');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (43,'2b');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (44,'2c');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (45,'2d');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (46,'2e');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (47,'2f');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (48,'30');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (49,'31');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (50,'32');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (51,'33');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (52,'34');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (53,'35');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (54,'36');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (55,'37');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (56,'38');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (57,'39');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (58,'3a');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (59,'3b');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (60,'3c');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (61,'3d');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (62,'3e');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (63,'3f');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (64,'40');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (65,'41');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (66,'42');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (67,'43');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (68,'44');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (69,'45');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (70,'46');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (71,'47');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (72,'48');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (73,'49');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (74,'4a');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (75,'4b');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (76,'4c');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (77,'4d');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (78,'4e');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (79,'4f');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (80,'50');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (81,'51');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (82,'52');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (83,'53');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (84,'54');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (85,'55');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (86,'56');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (87,'57');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (88,'58');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (89,'59');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (90,'5a');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (91,'5b');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (92,'5c');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (93,'5d');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (94,'5e');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (95,'5f');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (96,'60');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (97,'61');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (98,'62');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (99,'63');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (100,'64');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (101,'65');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (102,'66');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (103,'67');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (104,'68');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (105,'69');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (106,'6a');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (107,'6b');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (108,'6c');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (109,'6d');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (110,'6e');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (111,'6f');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (112,'70');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (113,'71');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (114,'72');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (115,'73');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (116,'74');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (117,'75');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (118,'76');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (119,'77');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (120,'78');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (121,'79');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (122,'7a');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (123,'7b');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (124,'7c');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (125,'7d');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (126,'7e');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (127,'7f');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (128,'80');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (129,'81');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (130,'82');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (131,'83');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (132,'84');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (133,'85');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (134,'86');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (135,'87');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (136,'88');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (137,'89');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (138,'8a');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (139,'8b');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (140,'8c');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (141,'8d');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (142,'8e');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (143,'8f');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (144,'90');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (145,'91');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (146,'92');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (147,'93');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (148,'94');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (149,'95');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (150,'96');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (151,'97');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (152,'98');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (153,'99');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (154,'9a');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (155,'9b');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (156,'9c');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (157,'9d');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (158,'9e');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (159,'9f');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (160,'a0');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (161,'a1');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (162,'a2');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (163,'a3');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (164,'a4');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (165,'a5');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (166,'a6');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (167,'a7');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (168,'a8');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (169,'a9');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (170,'aa');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (171,'ab');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (172,'ac');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (173,'ad');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (174,'ae');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (175,'af');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (176,'b0');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (177,'b1');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (178,'b2');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (179,'b3');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (180,'b4');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (181,'b5');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (182,'b6');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (183,'b7');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (184,'b8');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (185,'b9');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (186,'ba');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (187,'bb');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (188,'bc');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (189,'bd');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (190,'be');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (191,'bf');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (192,'c0');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (193,'c1');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (194,'c2');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (195,'c3');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (196,'c4');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (197,'c5');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (198,'c6');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (199,'c7');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (200,'c8');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (201,'c9');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (202,'ca');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (203,'cb');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (204,'cc');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (205,'cd');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (206,'ce');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (207,'cf');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (208,'d0');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (209,'d1');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (210,'d2');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (211,'d3');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (212,'d4');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (213,'d5');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (214,'d6');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (215,'d7');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (216,'d8');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (217,'d9');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (218,'da');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (219,'db');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (220,'dc');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (221,'dd');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (222,'de');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (223,'df');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (224,'e0');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (225,'e1');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (226,'e2');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (227,'e3');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (228,'e4');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (229,'e5');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (230,'e6');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (231,'e7');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (232,'e8');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (233,'e9');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (234,'ea');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (235,'eb');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (236,'ec');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (237,'ed');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (238,'ee');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (239,'ef');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (240,'f0');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (241,'f1');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (242,'f2');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (243,'f3');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (244,'f4');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (245,'f5');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (246,'f6');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (247,'f7');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (248,'f8');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (249,'f9');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (250,'fa');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (251,'fb');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (252,'fc');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (253,'fd');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (254,'fe');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (255,'ff');

/*Table structure for table `m_level2` */

DROP TABLE IF EXISTS `m_level2`;

CREATE TABLE `m_level2` (
  `m_l2_code` int(11) NOT NULL auto_increment,
  `m_l1_code` int(11) default NULL,
  `m_l2_byte` varchar(4) default NULL,
  PRIMARY KEY  (`m_l2_code`),
  KEY `m_l1_code` (`m_l1_code`),
  CONSTRAINT `m_level2_ibfk_1` FOREIGN KEY (`m_l1_code`) REFERENCES `m_level1` (`m_l1_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_level2` */

insert into `m_level2` (`m_l2_code`,`m_l1_code`,`m_l2_byte`) values (1,69,'4b');
insert into `m_level2` (`m_l2_code`,`m_l1_code`,`m_l2_byte`) values (2,70,'d1');
insert into `m_level2` (`m_l2_code`,`m_l1_code`,`m_l2_byte`) values (3,33,'09');
insert into `m_level2` (`m_l2_code`,`m_l1_code`,`m_l2_byte`) values (4,243,'83');
insert into `m_level2` (`m_l2_code`,`m_l1_code`,`m_l2_byte`) values (5,19,'c6');

/*Table structure for table `m_level3` */

DROP TABLE IF EXISTS `m_level3`;

CREATE TABLE `m_level3` (
  `m_l3_code` int(11) NOT NULL auto_increment,
  `m_l2_code` int(11) default NULL,
  `m_l3_bytes` varchar(30) default NULL,
  `hash_uniq_code` int(11) default NULL,
  PRIMARY KEY  (`m_l3_code`),
  KEY `m_l2_code` (`m_l2_code`),
  CONSTRAINT `m_level3_ibfk_1` FOREIGN KEY (`m_l2_code`) REFERENCES `m_level2` (`m_l2_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_level3` */

insert into `m_level3` (`m_l3_code`,`m_l2_code`,`m_l3_bytes`,`hash_uniq_code`) values (1,1,'f4f10530797b001055f9d930b3a8',1);
insert into `m_level3` (`m_l3_code`,`m_l2_code`,`m_l3_bytes`,`hash_uniq_code`) values (2,2,'aeae08b631591798be605da636ec',2);
insert into `m_level3` (`m_l3_code`,`m_l2_code`,`m_l3_bytes`,`hash_uniq_code`) values (3,3,'c6d617e6739f2383fd3a5a2b06bf',3);
insert into `m_level3` (`m_l3_code`,`m_l2_code`,`m_l3_bytes`,`hash_uniq_code`) values (4,4,'9f8e1c3a3e9af7973a434069c6a5',4);
insert into `m_level3` (`m_l3_code`,`m_l2_code`,`m_l3_bytes`,`hash_uniq_code`) values (5,5,'ba729365ddec6bd1ab9a600a4c51',5);

/*Table structure for table `userlogin` */

DROP TABLE IF EXISTS `userlogin`;

CREATE TABLE `userlogin` (
  `id` int(5) NOT NULL auto_increment,
  `userid` varchar(50) NOT NULL,
  `password` varchar(50) default NULL,
  `username` varchar(20) default NULL,
  `gender` varchar(50) default NULL,
  `address` varchar(50) default NULL,
  `city` varchar(50) default NULL,
  `email` varchar(50) default NULL,
  `phone` varchar(12) default NULL,
  PRIMARY KEY  (`id`,`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `userlogin` */

insert into `userlogin` (`id`,`userid`,`password`,`username`,`gender`,`address`,`city`,`email`,`phone`) values (31,'amutha','amutha','amutha','Female','Bangalore','bangalore','bansalrajat016@gmail.com','9632917445');
insert into `userlogin` (`id`,`userid`,`password`,`username`,`gender`,`address`,`city`,`email`,`phone`) values (36,'manu','shanu','manu','Male','jayanagara','Bangalore`','rameshrajworld@gmail.com','9900392855');
insert into `userlogin` (`id`,`userid`,`password`,`username`,`gender`,`address`,`city`,`email`,`phone`) values (40,'merry','123','merry','Male','Jayanagarrrrr','Bangalore','rameshrajworld@gmail.com','9900223344');
insert into `userlogin` (`id`,`userid`,`password`,`username`,`gender`,`address`,`city`,`email`,`phone`) values (42,'brinda','brinda','brinda','Female','bangalore','bangalore','shalini@celestialv.com','9988776655');

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
