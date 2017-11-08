# Host: localhost  (Version: 5.5.37)
# Date: 2017-11-08 18:40:13
# Generator: MySQL-Front 5.3  (Build 4.249)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "hx_msg"
#

DROP TABLE IF EXISTS `hx_msg`;
CREATE TABLE `hx_msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msg` longtext NOT NULL,
  `from` int(11) NOT NULL DEFAULT '0',
  `from_is_user` tinyint(1) NOT NULL DEFAULT '-1',
  `to` int(11) NOT NULL DEFAULT '0',
  `to_is_user` tinyint(1) NOT NULL DEFAULT '-1' COMMENT '1:user;2:visitor',
  `status` tinyint(1) NOT NULL DEFAULT '-1' COMMENT '0:未读;1:已读',
  `nick` varchar(50) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id_chat_id` (`from_is_user`,`from`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "hx_msg"
#

/*!40000 ALTER TABLE `hx_msg` DISABLE KEYS */;
INSERT INTO `hx_msg` VALUES (1,'dfsf',0,-1,0,-1,-1,'',0);
/*!40000 ALTER TABLE `hx_msg` ENABLE KEYS */;

#
# Structure for table "hx_user"
#

DROP TABLE IF EXISTS `hx_user`;
CREATE TABLE `hx_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hash` varchar(40) NOT NULL DEFAULT '',
  `nick` varchar(50) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `hash` (`hash`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "hx_user"
#

/*!40000 ALTER TABLE `hx_user` DISABLE KEYS */;
INSERT INTO `hx_user` VALUES (1,'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa','admin',0),(3,'robot','robot',0);
/*!40000 ALTER TABLE `hx_user` ENABLE KEYS */;

#
# Structure for table "hx_visitor"
#

DROP TABLE IF EXISTS `hx_visitor`;
CREATE TABLE `hx_visitor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hash` varchar(40) NOT NULL,
  `nick` varchar(50) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `hash` (`hash`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "hx_visitor"
#

/*!40000 ALTER TABLE `hx_visitor` DISABLE KEYS */;
INSERT INTO `hx_visitor` VALUES (1,'348fa989e01f93e48294387709341e246d381cb9','test1',1509692603),(2,'9292da36a02615c3d2582754106e29db968ba68f','test1',1509695450),(4,'94813247f9ae90ce31c8e442436159fbd425ac95','abc',1510027057),(5,'bf58f3444f5000906984a20661bbfe22749fef0d','bbbbb',1509696938),(6,'421095ab61710f5c3caf1147615c535e719198b0','visitor',1510126892),(7,'5ea24d267695313d66236071e830b212d4720aa3','visitor',1510128415),(8,'c34b4e03cb8e71b64fdfebe3f489f72bb5a561f7','visitor',1510128422),(9,'c02cf8a06b1af4d6db79c682c12cc8c10db23ccd','visitor',1510128617),(10,'d734e7f3fa1dd923b3c381022915f071270f8a3a','visitor',1510128751),(11,'dc0ae21ef081898d5190aad3606a342da95cefc9','visitor',1510129215),(12,'c6587f55ef90d7f05685f09506485e18c07f5847','visitor',1510129217),(13,'7e7d54c11ba2bf92a82b611d340c124eae8efe76','visitor',1510129217),(14,'6c3cfeeb6c47023b632d08189f5ec76bf0713e37','visitor',1510129252),(15,'656a3cfc49717fea5b325790cd7f1b7abbd4747f','visitor',1510129465),(16,'504aa11e49016e9ca7f69490f22493bfe29e5d7e','visitor',1510133999),(17,'04f020da839b1182a8682bc832c68e8cdc9d3d37','visitor',1510134000),(18,'3c5fee905dc8e8057dd0ddd6214111709c19c31f','visitor',1510135376),(19,'0381c2dde185fd363a8259afcc5f367398716545','visitor',1510137414),(20,'ca83fd806a5731328e0fad007f18621d80389623','visitor',1510137414),(21,'2ee6d6afc82e934b6503d2309d37da79ee23cccf','visitor',1510137432),(22,'57a2a7c7042525829b6220ac8774e6bea61b4e9b','visitor',1510137432),(23,'59d0b07ef770ed5efc997ee4f651c0a9d3471ece','visitor',1510137438),(24,'f96b7293c10eef577c03ee99d9dd32cfd39bca29','visitor',1510137438);
/*!40000 ALTER TABLE `hx_visitor` ENABLE KEYS */;
