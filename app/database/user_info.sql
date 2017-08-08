/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : goods

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-08-01 11:35:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `head_pic` varchar(255) DEFAULT NULL,
  `good_collection` varchar(5000) DEFAULT NULL,
  `shop_collection` varchar(255) DEFAULT NULL,
  `buy_history` varchar(5000) DEFAULT NULL,
  `buy_car` varchar(255) DEFAULT NULL,
  `address` varchar(5000) DEFAULT NULL,
  `add_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('6', 'ma123123123', '123123', 'uploads/mine-headerpic.jpg', null, null, null, null, '', '2017-08-01 11:35:05');
INSERT INTO `user_info` VALUES ('5', 'ma123123', '123123', 'uploads/mine-headerpic.jpg', '[\"3\",\"4\",\"5\"]', null, null, '[{\"id\":\"72\",\"num\":11},{\"id\":\"71\",\"num\":3},{\"id\":\"73\",\"num\":3}]', '[{\"name\":\"ma123123\",\"phoneNum\":\"123123\",\"telNum\":\"123123\",\"area\":\"广东省, 广州市, 天河区, 沙太路, 141号\",\"detail\":\"123132\",\"username\":\"ma123123\"},{\"name\":\"majiahaoooo\",\"phoneNum\":\"123123\",\"telNum\":\"123123\",\"area\":\"广东省, 广州市, 天河区, 沙太路, 141号\",\"detail\":\"123123\",\"username\":\"ma123123\"}]', '2017-08-01 11:35:03');
INSERT INTO `user_info` VALUES ('7', 'a123123', '123123', 'uploads/mine-headerpic.jpg', null, null, null, '', '', '2017-08-01 11:34:58');
INSERT INTO `user_info` VALUES ('9', 'caixiangui0801', 'caixiangui0801', 'uploads/mine-headerpic.jpg', '[\"1\",\"71\",\"72\",\"71\",\"72\"]', null, null, '[{\"id\":\"1\",\"num\":4},{\"id\":\"2\",\"num\":5},{\"id\":\"94\",\"num\":1},{\"id\":\"3\",\"num\":1},{\"id\":\"4\",\"num\":1},{\"id\":\"5\",\"num\":1},{\"id\":\"6\",\"num\":1}]', '[{\"name\":\"ma123123\",\"phoneNum\":\"123\",\"telNum\":\"123\",\"area\":\"广东省, 广州市, 天河区, 沙太南路, 247号\",\"detail\":\"123\",\"username\":\"caixiangui0801\"}]', '2017-08-01 11:35:01');
INSERT INTO `user_info` VALUES ('10', 'heziyang', '123123', 'uploads/mine-headerpic.jpg', null, null, null, '[{\"id\":\"4\",\"num\":4},{\"id\":\"3\",\"num\":1}]', null, '2017-07-31 19:43:21');
INSERT INTO `user_info` VALUES ('8', 'wuqian', '123456', 'uploads/mine-headerpic.jpg', '[]', null, null, '[{\"id\":\"71\",\"num\":4}]', null, '2017-07-31 18:12:51');
INSERT INTO `user_info` VALUES ('12', 'mama123123', '123123', 'uploads/mine-headerpic.jpg', null, null, null, null, null, '2017-07-31 20:35:49');
INSERT INTO `user_info` VALUES ('13', 'a1231233', '123123', 'uploads/mine-headerpic.jpg', null, null, null, null, null, '2017-07-31 20:44:02');
INSERT INTO `user_info` VALUES ('14', 'maa123123', '123123', 'uploads/mine-headerpic.jpg', '[\"71\",\"73\"]', null, null, '[]', null, '2017-08-01 11:35:07');
INSERT INTO `user_info` VALUES ('15', 'a12312333', '123123', 'uploads/mine-headerpic.jpg', '[\"71\",\"72\",\"73\"]', null, null, '[]', null, '2017-07-31 21:11:47');
