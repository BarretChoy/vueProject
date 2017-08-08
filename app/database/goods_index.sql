/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : goods

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-07-31 20:01:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for goods_index
-- ----------------------------
DROP TABLE IF EXISTS `goods_index`;
CREATE TABLE `goods_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(2550) DEFAULT NULL,
  `goods_discount` varchar(100) DEFAULT NULL,
  `goods_info` varchar(2550) DEFAULT NULL,
  `goods_img` varchar(2550) DEFAULT NULL,
  `add_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_index
-- ----------------------------
INSERT INTO `goods_index` VALUES ('1', '珍珂儿', '3.1折起', '满199减100 上不封顶', 'http://b.appsimg.com/2017/07/07/3276/1499405713550.jpg', '2017-07-22 10:45:50');
INSERT INTO `goods_index` VALUES ('2', '静佳', '3.3折起', '满199减100 上不封顶', 'http://b.appsimg.com/2017/07/07/2881/1499405587182.jpg', '2017-07-22 10:45:50');
INSERT INTO `goods_index` VALUES ('3', '自然堂', '2.3折起', '满199减50 上不封顶', 'http://b.appsimg.com/2017/07/07/9548/1499412912208.jpg', '2017-07-22 10:45:50');
INSERT INTO `goods_index` VALUES ('4', '丸美', '1.9折起', '满199减50 上不封顶', 'http://b.appsimg.com/2017/07/07/305/1499411868028.jpg', '2017-07-22 10:45:50');
INSERT INTO `goods_index` VALUES ('5', '韩束', '1件8折 2件7.5折', '全场满199赠超值大礼包 赠完为止', 'http://b.appsimg.com/2017/07/18/2587/1500378559317.jpg', '2017-07-22 10:45:50');
INSERT INTO `goods_index` VALUES ('6', '欧诗漫', '1.8折起', '满199减100 上不封顶', 'http://b.appsimg.com/2017/07/19/3728/1500458377115.jpg', '2017-07-22 10:45:50');
INSERT INTO `goods_index` VALUES ('7', '丽得姿', '1.8折起', '满199减100 上不封顶', 'http://b.appsimg.com/2017/07/07/9309/1499412881462.jpg', '2017-07-22 10:45:50');
INSERT INTO `goods_index` VALUES ('8', '里美', '3.3折起', '满199减100 上不封顶', 'http://b.appsimg.com/2017/07/07/3622/1499411767670.jpg', '2017-07-22 10:45:50');
INSERT INTO `goods_index` VALUES ('9', '御泥坊', '2.7折起', '满199减100 上不封顶', 'http://b.appsimg.com/2017/07/07/8833/1499405982564.jpg', '2017-07-22 10:45:50');
INSERT INTO `goods_index` VALUES ('10', '欧莱雅', '2件8.5折  3件8折', '全场满199赠超值大礼包 赠完为止', 'http://b.appsimg.com/2017/07/07/9749/1499406062331.jpg', '2017-07-22 10:45:50');
INSERT INTO `goods_index` VALUES ('11', '小迷糊', '1.6折起', '满199减100 上不封顶', 'http://b.appsimg.com/2017/07/12/9624/1499846855110.jpg', '2017-07-22 10:45:50');
INSERT INTO `goods_index` VALUES ('12', '百雀羚', '2.2折起', '满199减50 上不封顶', 'http://b.appsimg.com/2017/07/07/1882/1499405888906.jpg', '2017-07-22 10:45:50');
INSERT INTO `goods_index` VALUES ('13', '阿芙', '2.1折起', '满199减80 上不封顶', 'http://b.appsimg.com/2017/07/14/8980/1500023108053.jpg', '2017-07-22 10:45:50');
INSERT INTO `goods_index` VALUES ('14', '贝德玛', '5折起', '全场满199赠超值大礼包 赠完为止', 'http://b.appsimg.com/2017/07/07/6111/1499412115672.jpg', '2017-07-22 10:45:50');
INSERT INTO `goods_index` VALUES ('15', '魔法医生', '2.5折起', '满199减100 上不封顶', 'http://b.appsimg.com/2017/07/07/8218/1499411919938.jpg', '2017-07-22 10:45:50');
INSERT INTO `goods_index` VALUES ('16', '膜法世家', '2.1折起', '满199减50 上不封顶', 'http://b.appsimg.com/2017/07/07/8733/1499405936635.jpg', '2017-07-22 10:45:50');
INSERT INTO `goods_index` VALUES ('17', 'Larastyle', '1.2折起', '满199减100 上不封顶', 'http://b.appsimg.com/2017/07/16/8775/1500206800261.jpg', '2017-07-22 10:45:50');
INSERT INTO `goods_index` VALUES ('18', '姬芮', '4.5折起', '满199减50 上不封顶', 'http://b.appsimg.com/2017/07/07/47/1499412085234.jpg', '2017-07-22 10:45:50');
INSERT INTO `goods_index` VALUES ('19', '森田药妆', '3.5折起', '满199减100 上不封顶', 'http://b.appsimg.com/2017/07/07/8206/1499406246227.jpg', '2017-07-22 10:45:50');
INSERT INTO `goods_index` VALUES ('20', '自然共和国', '2.7折起', '满199减50 上不封顶', 'http://b.appsimg.com/2017/07/07/9783/1499412152262.jpg', '2017-07-22 10:45:50');
INSERT INTO `goods_index` VALUES ('21', '温碧泉', '3折起', '满199减100 上不封顶', 'http://b.appsimg.com/2017/07/07/9416/1499406382481.jpg', '2017-07-22 10:45:50');
INSERT INTO `goods_index` VALUES ('22', '母婴-袋鼠妈妈', '1.5折起', '满199减100 上不封顶', 'http://b.appsimg.com/2017/07/07/171/1499425824284.jpg', '2017-07-22 10:45:50');
INSERT INTO `goods_index` VALUES ('23', '即魅', '2.2折起', '满199减100 上不封顶', 'http://b.appsimg.com/2017/07/07/638/1499406168538.jpg', '2017-07-22 10:45:50');
INSERT INTO `goods_index` VALUES ('24', '一叶子', '1件8折 2件7.5折', '全场满199赠超值大礼包 赠完为止', 'http://b.appsimg.com/2017/07/07/6146/1499405766924.jpg', '2017-07-22 10:45:50');
INSERT INTO `goods_index` VALUES ('25', '净肌', '3.8折起', '满199减100 上不封顶', 'http://b.appsimg.com/2017/07/07/1623/1499406136684.jpg', '2017-07-22 10:45:50');
INSERT INTO `goods_index` VALUES ('26', '美宝莲', '2件8.5折 3件8折', '全场满199赠超值大礼包 赠完为止', 'http://b.appsimg.com/2017/07/07/4032/1499406538617.jpg', '2017-07-22 10:45:50');
INSERT INTO `goods_index` VALUES ('27', 'DHC', '2.4折起', '满129赠豆豆浣萌趣手包 可累计 赠完为止', 'http://b.appsimg.com/2017/07/07/6144/1499425514873.jpg', '2017-07-22 10:45:50');
INSERT INTO `goods_index` VALUES ('28', '玉兰油', '4.1折起', '满200赠188大礼包 上不封顶', 'http://b.appsimg.com/2017/07/07/6789/1499406319141.jpg', '2017-07-22 10:45:50');
INSERT INTO `goods_index` VALUES ('29', '相宜本草', '4.6折起', '满199减50 上不封顶', 'http://b.appsimg.com/2017/07/07/8665/1499406027864.jpg', '2017-07-22 10:45:50');
INSERT INTO `goods_index` VALUES ('30', '高姿', '4.4折起', '满199减100 上不封顶', 'http://b.appsimg.com/2017/07/07/1879/1499424929242.jpg', '2017-07-22 10:45:50');
INSERT INTO `goods_index` VALUES ('31', '菲诗小铺', '2.3折起', '满99赠调理修护系列3件套74ml 不累计 赠完为止', 'http://b.appsimg.com/2017/07/07/1058/1499425804466.jpg', '2017-07-22 10:45:50');
INSERT INTO `goods_index` VALUES ('32', '花印', '2.9折起', '满199减100 上不封顶', 'http://b.appsimg.com/2017/07/07/9248/1499412056886.jpg', '2017-07-22 10:45:50');
INSERT INTO `goods_index` VALUES ('33', '韩后', '2.5折起', '满199减50 上不封顶', 'http://b.appsimg.com/2017/07/07/4789/1499425151759.jpg', '2017-07-22 10:45:50');
INSERT INTO `goods_index` VALUES ('34', '伊丽莎白雅顿', '2.3折起', '满350减50 上不封顶', 'http://b.appsimg.com/2017/07/07/2753/1499412940561.jpg', '2017-07-22 10:45:50');
INSERT INTO `goods_index` VALUES ('35', '玛丽黛佳', '3.4折起', '满199减50 上不封顶', 'http://b.appsimg.com/2017/07/07/4520/1499411994946.jpg', '2017-07-22 10:45:50');
INSERT INTO `goods_index` VALUES ('36', '水密码', '3.3折起', '满199减50 上不封顶', 'http://b.appsimg.com/2017/07/07/7285/1499406575098.jpg', '2017-07-22 10:45:50');
INSERT INTO `goods_index` VALUES ('37', '芙丽芳丝', '5.7折起', '满199减50 上不封顶', 'http://b.appsimg.com/2017/07/07/4186/1499425879723.jpg', '2017-07-22 10:45:50');
INSERT INTO `goods_index` VALUES ('38', '雅诗兰黛', '4.6折起', '指定产品买即送EC粉色笔记本 赠完为止', 'http://b.appsimg.com/2017/07/07/2347/1499406483882.jpg', '2017-07-22 10:45:50');
INSERT INTO `goods_index` VALUES ('39', '雅漾', '7.1折起', '指定产品买即送EC粉色笔记本 赠完为止', 'http://b.appsimg.com/2017/07/07/9167/1499425095751.jpg', '2017-07-22 10:45:50');
INSERT INTO `goods_index` VALUES ('40', '佰草集', '3.2折起', '满199减50 上不封顶', 'http://b.appsimg.com/2017/07/07/9849/1499406633144.jpg', '2017-07-22 10:45:50');
INSERT INTO `goods_index` VALUES ('41', '谜尚', '3.7折起', '满298减80 上不封顶', 'http://b.appsimg.com/2017/07/07/9006/1499424945904.jpg', '2017-07-22 10:45:50');
INSERT INTO `goods_index` VALUES ('42', '花肌粹', '1.4折起', '满199减100 上不封顶', 'http://b.appsimg.com/2017/07/07/2036/1499425082769.jpg', '2017-07-22 10:45:50');
INSERT INTO `goods_index` VALUES ('43', '蜜丝佛陀', '6.3折起', '满129赠眼影刷 不累计  赠完为止', 'http://b.appsimg.com/2017/07/14/513/1500023249886.jpg', '2017-07-22 10:45:50');
INSERT INTO `goods_index` VALUES ('44', '羽西', '2.3折起', '满199减50 上不封顶', 'http://b.appsimg.com/2017/07/07/8744/1499412514814.jpg', '2017-07-22 10:45:50');
INSERT INTO `goods_index` VALUES ('45', '卡姿兰', '3.7折起', '满200减50 上不封顶', 'http://b.appsimg.com/2017/07/07/1582/1499425040621.jpg', '2017-07-22 10:45:50');
INSERT INTO `goods_index` VALUES ('46', '理肤泉', '6.1折起', '满298减80 上不封顶', 'http://b.appsimg.com/2017/07/16/331/1500204902340.jpg', '2017-07-22 10:45:50');
INSERT INTO `goods_index` VALUES ('47', '滋源', '4.3折起', '满199减100 上不封顶', 'http://b.appsimg.com/2017/07/07/6890/1499406452088.jpg', '2017-07-22 10:45:50');
INSERT INTO `goods_index` VALUES ('48', '京润珍珠', '3.2折起', '满298减80 上不封顶', 'http://b.appsimg.com/2017/07/07/5429/1499412205939.jpg', '2017-07-22 10:45:50');
INSERT INTO `goods_index` VALUES ('49', '法兰琳卡', '3折起', '满199减50 上不封顶', 'http://b.appsimg.com/2017/07/07/3108/1499425191587.jpg', '2017-07-22 10:45:50');
INSERT INTO `goods_index` VALUES ('50', '兰芝', '7.4折起', '全场满199赠超值大礼包 赠完为止', 'http://b.appsimg.com/2017/07/07/8610/1499406416514.jpg', '2017-07-22 10:45:50');
INSERT INTO `goods_index` VALUES ('51', '水之蔻', '1.8折起', '满199减100 上不封顶', 'http://b.appsimg.com/2017/07/07/2565/1499425593794.jpg', '2017-07-22 10:45:50');
INSERT INTO `goods_index` VALUES ('52', '美即', '4折起', '满199减100 上不封顶', 'http://b.appsimg.com/2017/07/07/9533/1499425207657.jpg', '2017-07-22 10:45:50');
INSERT INTO `goods_index` VALUES ('53', '雅芳', '2.4折起', '满199减100 上不封顶', 'http://b.appsimg.com/2017/07/07/6171/1499425244180.jpg', '2017-07-22 10:45:50');
INSERT INTO `goods_index` VALUES ('54', '母婴-亲润', '1.1折起', '满199减100 上不封顶', 'http://b.appsimg.com/2017/07/07/7769/1499411543059.jpg', '2017-07-22 10:45:50');
