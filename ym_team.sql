/*
Navicat MySQL Data Transfer

Source Server         : 我的
Source Server Version : 50556
Source Host           : 112.74.165.167:13307
Source Database       : me.rehack.cn

Target Server Type    : MYSQL
Target Server Version : 50556
File Encoding         : 65001

Date: 2018-03-06 11:36:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ym_team
-- ----------------------------
DROP TABLE IF EXISTS `ym_team`;
CREATE TABLE `ym_team` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `team_img` varchar(200) NOT NULL COMMENT '团队照',
  `vote` int(200) unsigned NOT NULL DEFAULT '0' COMMENT '投票数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ym_team
-- ----------------------------
INSERT INTO `ym_team` VALUES ('2', '991abaca166a27a6c5af53ba8a937720.jpeg', '12');
INSERT INTO `ym_team` VALUES ('3', '01daf5a0cf210b4f3460bf7965f7eada.jpeg', '4');
INSERT INTO `ym_team` VALUES ('4', '6c78526d8d82f62e9ccb10163be79605.jpeg', '4');
INSERT INTO `ym_team` VALUES ('5', 'fe4e89cd3c64c128893b0d61d3cab913.jpeg', '9');
INSERT INTO `ym_team` VALUES ('6', '1b1d552f492e9e002fcedb03d00dd972.jpeg', '10');
INSERT INTO `ym_team` VALUES ('7', '792067274e0d85de35c0dd41c13cf2da.jpeg', '7');
INSERT INTO `ym_team` VALUES ('8', '97d1995c9af40c00bdc33db800f8703a.jpeg', '6');
INSERT INTO `ym_team` VALUES ('9', 'f63248aa0a86a44e8cf71dfc90e552eb.jpeg', '5');
INSERT INTO `ym_team` VALUES ('10', 'aac67da72d6d423f53617da726e995cf.jpeg', '77');
INSERT INTO `ym_team` VALUES ('11', '20016b01bf2048705528d1089f0f8095.jpeg', '75');
INSERT INTO `ym_team` VALUES ('12', '4ced44a99177c644726a8432823c5325.jpeg', '2');
INSERT INTO `ym_team` VALUES ('13', '828d530444af782e630bb6038b125af4.jpeg', '9');
INSERT INTO `ym_team` VALUES ('14', '072f57fbf4792aac9476cb9bee836e07.jpeg', '17');
INSERT INTO `ym_team` VALUES ('15', '4a67b994cff07f734519302f496f3793.jpeg', '41');
INSERT INTO `ym_team` VALUES ('16', '78873d9c04270f6a2a90c210307750a0.jpeg', '4');
INSERT INTO `ym_team` VALUES ('17', 'f0d3f3b4416d0122e11402f6899509ed.jpeg', '7');
INSERT INTO `ym_team` VALUES ('18', '34f4f536be432fb5f386f82ef3e56306.jpeg', '5');
INSERT INTO `ym_team` VALUES ('19', '5d2f9a7286cec9759389df3ce716a3f6.jpeg', '158');
