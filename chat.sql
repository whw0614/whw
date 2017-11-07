# Host: localhost  (Version: 5.5.37)
# Date: 2017-11-07 19:01:14
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "hx_msg"
#

/*!40000 ALTER TABLE `hx_msg` DISABLE KEYS */;
/*!40000 ALTER TABLE `hx_msg` ENABLE KEYS */;

#
# Structure for table "hx_user"
#

DROP TABLE IF EXISTS `hx_user`;
CREATE TABLE `hx_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(40) NOT NULL,
  `hash` varchar(40) NOT NULL DEFAULT '',
  `nick` varchar(50) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`,`hash`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "hx_user"
#

/*!40000 ALTER TABLE `hx_user` DISABLE KEYS */;
INSERT INTO `hx_user` VALUES (1,'admin','abcdfdfdfabcdfdfdfabcdfdfdfabcdfdfddsdff','admin',0);
/*!40000 ALTER TABLE `hx_user` ENABLE KEYS */;

#
# Structure for table "hx_visitor"
#

DROP TABLE IF EXISTS `hx_visitor`;
CREATE TABLE `hx_visitor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nick` varchar(50) NOT NULL,
  `hash` varchar(40) NOT NULL,
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `hash` (`hash`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "hx_visitor"
#

/*!40000 ALTER TABLE `hx_visitor` DISABLE KEYS */;
INSERT INTO `hx_visitor` VALUES (1,'test1','348fa989e01f93e48294387709341e246d381cb9',1509692603),(2,'test1','9292da36a02615c3d2582754106e29db968ba68f',1509695450),(4,'abc','94813247f9ae90ce31c8e442436159fbd425ac95',1510027057),(5,'dfdsf','bf58f3444f5000906984a20661bbfe22749fef0d',1509696938),(6,'whw1','xxxxxxsdfsdfsgdw34fsfslls3sfjsssknksfhhh',3222),(7,'whw1','xxxxxxsdfsdfsgdw34fsfslls3sfjsssknksfhh3',1510047894);
/*!40000 ALTER TABLE `hx_visitor` ENABLE KEYS */;
