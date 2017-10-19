/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50717
Source Host           : 127.0.0.1:3306
Source Database       : web_admin

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-10-19 18:50:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for osa_consume_log
-- ----------------------------
DROP TABLE IF EXISTS `osa_consume_log`;
CREATE TABLE `osa_consume_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `world_id` varchar(20) DEFAULT NULL,
  `open_id` varchar(50) DEFAULT NULL,
  `money_before` double(12,2) DEFAULT NULL COMMENT '游戏币',
  `money_after` double(12,2) DEFAULT NULL,
  `lost_money` double(12,2) DEFAULT NULL,
  `item_id` varchar(20) DEFAULT NULL,
  `item_type` varchar(30) DEFAULT NULL,
  `item_num` int(11) DEFAULT NULL,
  `item_name` varchar(50) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `role_name` varchar(50) DEFAULT NULL,
  `add_time` varchar(20) DEFAULT NULL,
  `app_id` varchar(50) DEFAULT NULL COMMENT '应用id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of osa_consume_log
-- ----------------------------

-- ----------------------------
-- Table structure for osa_createrole_log
-- ----------------------------
DROP TABLE IF EXISTS `osa_createrole_log`;
CREATE TABLE `osa_createrole_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `world_id` varchar(20) DEFAULT NULL,
  `user_ip` varchar(20) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `open_id` varchar(50) DEFAULT NULL,
  `role_name` varchar(50) DEFAULT NULL,
  `add_time` varchar(20) DEFAULT NULL,
  `app_id` varchar(50) DEFAULT NULL COMMENT '应用id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=286 DEFAULT CHARSET=utf8 COMMENT='角色创建上报。。';

-- ----------------------------
-- Records of osa_createrole_log
-- ----------------------------
INSERT INTO `osa_createrole_log` VALUES ('1', '1', '192.168.0.189', '2017-06-27 15:16:46', '6589', 'c:', '2017-06-27 15:16:53', '1');
INSERT INTO `osa_createrole_log` VALUES ('2', '1', '192.168.0.189', '2017-06-27 15:47:32', '9865', 'c:esmj879606665433841664', '2017-06-27 15:47:32', '1');
INSERT INTO `osa_createrole_log` VALUES ('3', '1001', '192.168.0.189', '2017-06-27 16:03:24', '321654', 'c:esmj879611060301070336', '2017-06-27 16:03:27', '1');
INSERT INTO `osa_createrole_log` VALUES ('4', '1001', '192.168.0.189', '2017-06-27 17:17:34', '987456', 'c:esmj879629765277908992', '2017-06-27 17:17:39', '1');
INSERT INTO `osa_createrole_log` VALUES ('5', '1001', '192.168.0.189', '2017-06-28 11:47:47', '9852', 'c:esmj879909164015419392', '2017-06-28 11:47:59', '1');
INSERT INTO `osa_createrole_log` VALUES ('6', '1001', '192.168.0.65', '2017-06-29 09:30:05', '1241', 'c:eAWgrLv', '2017-06-29 09:30:07', '1');
INSERT INTO `osa_createrole_log` VALUES ('7', '1001', '192.168.0.65', '2017-06-29 09:36:12', '1412', 'c:eDyZYrg', '2017-06-29 09:36:12', '1');
INSERT INTO `osa_createrole_log` VALUES ('8', '1001', '192.168.0.65', '2017-06-29 09:42:48', '213', 'c:eoQc5M3', '2017-06-29 09:42:48', '1');
INSERT INTO `osa_createrole_log` VALUES ('9', '1001', '192.168.0.189', '2017-06-29 10:47:17', '478555hhh', 'c:ebgbAw6', '2017-06-29 10:47:17', '1');
INSERT INTO `osa_createrole_log` VALUES ('10', '1001', '192.168.0.189', '2017-06-29 10:50:07', 'dswwwd', 'c:eoqDPKa', '2017-06-29 10:50:07', '1');
INSERT INTO `osa_createrole_log` VALUES ('11', '1001', '192.168.0.189', '2017-06-29 11:00:57', 'sewew', 'c:e49wvHT', '2017-06-29 11:00:57', '1');
INSERT INTO `osa_createrole_log` VALUES ('12', '1001', '192.168.0.189', '2017-06-29 11:05:58', 'wsdewe', 'c:eisEePF', '2017-06-29 11:05:58', '1');
INSERT INTO `osa_createrole_log` VALUES ('13', '1001', '192.168.0.189', '2017-06-29 11:25:23', 'sdsds', 'c:eNWVvsz', '2017-06-29 11:25:23', '1');
INSERT INTO `osa_createrole_log` VALUES ('14', '1001', '192.168.0.65', '2017-06-29 14:33:01', 'zyj', 'c:eW2bico', '2017-06-29 14:33:05', '1');
INSERT INTO `osa_createrole_log` VALUES ('15', '1001', '192.168.0.65', '2017-06-29 14:46:57', 'jyz', 'c:ec0OSMt', '2017-06-29 14:46:57', '1');
INSERT INTO `osa_createrole_log` VALUES ('16', '1001', '192.168.0.189', '2017-06-30 10:44:16', '7788', 'c:e0jOleu', '2017-06-30 10:44:21', '1');
INSERT INTO `osa_createrole_log` VALUES ('17', '1001', '192.168.0.65', '2017-07-03 18:33:38', '123', 'c:eA6lJdc', '2017-07-03 18:33:48', '1');
INSERT INTO `osa_createrole_log` VALUES ('18', '1001', '192.168.0.65', '2017-07-03 18:35:51', '3123', 'c:e3OO3zw', '2017-07-03 18:35:51', '1');
INSERT INTO `osa_createrole_log` VALUES ('19', '1001', '192.168.0.65', '2017-07-03 18:44:19', '312', 'c:erdEHwm', '2017-07-03 18:44:19', '1');
INSERT INTO `osa_createrole_log` VALUES ('20', '1001', '192.168.0.65', '2017-07-03 18:45:09', '21312', 'c:ehxZXil', '2017-07-03 18:45:09', '1');
INSERT INTO `osa_createrole_log` VALUES ('21', '1001', '192.168.0.65', '2017-07-03 18:50:37', '321', 'c:eTw8oy4', '2017-07-03 18:50:37', '1');
INSERT INTO `osa_createrole_log` VALUES ('22', '1001', '192.168.0.65', '2017-07-03 18:51:09', 'dasd', 'c:e29jWRG', '2017-07-03 18:51:10', '1');
INSERT INTO `osa_createrole_log` VALUES ('23', '1001', '192.168.0.65', '2017-07-04 10:49:27', '1233', 'c:eSvldzV', '2017-07-04 10:49:31', '1');
INSERT INTO `osa_createrole_log` VALUES ('24', '1001', '192.168.0.65', '2017-07-04 13:40:37', '12333', 'c-JK01zY', '2017-07-04 13:40:38', '1');
INSERT INTO `osa_createrole_log` VALUES ('25', '1001', '192.168.0.65', '2017-07-04 14:17:32', '124', 'c-9Xthlt', '2017-07-04 14:17:32', '1');
INSERT INTO `osa_createrole_log` VALUES ('26', '1001', '192.168.0.65', '2017-07-04 14:22:10', '123123', 'c-NpTI6s', '2017-07-04 14:22:10', '1');
INSERT INTO `osa_createrole_log` VALUES ('27', '1001', '192.168.0.65', '2017-07-04 14:58:29', '2', 'c-buwfVH', '2017-07-04 14:58:29', '1');
INSERT INTO `osa_createrole_log` VALUES ('28', '1001', '192.168.0.65', '2017-07-04 15:35:35', '4124', 'c-DMHE5Y', '2017-07-04 15:35:35', '1');
INSERT INTO `osa_createrole_log` VALUES ('29', '1001', '192.168.0.233', '2017-08-10 10:17:57', '3', '无敌', '2017-08-10 10:18:00', '1');
INSERT INTO `osa_createrole_log` VALUES ('30', '1001', '192.168.0.233', '2017-08-10 10:30:07', '4', '无敌', '2017-08-10 10:30:07', '1');
INSERT INTO `osa_createrole_log` VALUES ('31', '1001', '192.168.0.233', '2017-08-14 10:44:49', '5', '无敌', '2017-08-14 10:44:59', '1');
INSERT INTO `osa_createrole_log` VALUES ('32', '1001', '192.168.0.233', '2017-08-14 10:46:52', '6', '无敌', '2017-08-14 10:46:52', '1');
INSERT INTO `osa_createrole_log` VALUES ('33', '1001', '192.168.0.233', '2017-08-14 10:47:57', '7', '无敌', '2017-08-14 10:47:57', '1');
INSERT INTO `osa_createrole_log` VALUES ('34', '1001', '192.168.0.233', '2017-08-14 10:49:30', '8', '无敌', '2017-08-14 10:49:30', '1');
INSERT INTO `osa_createrole_log` VALUES ('35', '1001', '192.168.0.233', '2017-08-14 11:43:35', '9', '无敌', '2017-08-14 11:43:35', '1');
INSERT INTO `osa_createrole_log` VALUES ('36', '1001', '192.168.0.233', '2017-08-14 13:42:51', '10', '无敌', '2017-08-14 13:42:55', '1');
INSERT INTO `osa_createrole_log` VALUES ('37', '1001', '192.168.0.233', '2017-08-14 14:24:10', '11', '无敌', '2017-08-14 14:24:10', '1');
INSERT INTO `osa_createrole_log` VALUES ('38', '1001', '192.168.0.233', '2017-08-14 14:47:25', '12', '无敌', '2017-08-14 14:47:25', '1');
INSERT INTO `osa_createrole_log` VALUES ('39', '1001', '192.168.0.233', '2017-08-14 14:48:30', '13', '无敌', '2017-08-14 14:48:30', '1');
INSERT INTO `osa_createrole_log` VALUES ('40', '1001', '192.168.0.233', '2017-08-14 14:49:16', '14', '无敌', '2017-08-14 14:49:16', '1');
INSERT INTO `osa_createrole_log` VALUES ('41', '1001', '192.168.0.233', '2017-08-14 14:49:52', '15', '无敌', '2017-08-14 14:49:52', '1');
INSERT INTO `osa_createrole_log` VALUES ('42', '1001', '192.168.0.233', '2017-08-14 14:57:27', '16', '无敌', '2017-08-14 14:57:27', '1');
INSERT INTO `osa_createrole_log` VALUES ('43', '1001', '192.168.0.233', '2017-08-14 15:00:57', '17', '无敌', '2017-08-14 15:00:57', '1');
INSERT INTO `osa_createrole_log` VALUES ('44', '1001', '192.168.0.233', '2017-08-14 15:14:52', '18', '无敌', '2017-08-14 15:14:52', '1');
INSERT INTO `osa_createrole_log` VALUES ('45', '1001', '192.168.0.233', '2017-08-14 15:27:00', '19', '无敌', '2017-08-14 15:27:00', '1');
INSERT INTO `osa_createrole_log` VALUES ('46', '1001', '192.168.0.233', '2017-08-14 15:32:15', '20', '无敌', '2017-08-14 15:32:15', '1');
INSERT INTO `osa_createrole_log` VALUES ('47', '1001', '192.168.0.233', '2017-08-14 15:33:24', '21', '无敌', '2017-08-14 15:33:24', '1');
INSERT INTO `osa_createrole_log` VALUES ('48', '1001', '192.168.0.233', '2017-08-14 15:34:01', '22', '无敌', '2017-08-14 15:34:01', '1');
INSERT INTO `osa_createrole_log` VALUES ('49', '1001', '192.168.0.233', '2017-08-14 15:35:00', '23', '无敌', '2017-08-14 15:35:00', '1');
INSERT INTO `osa_createrole_log` VALUES ('50', '1001', '192.168.0.233', '2017-08-14 15:36:42', '24', '无敌', '2017-08-14 15:36:42', '1');
INSERT INTO `osa_createrole_log` VALUES ('51', '1001', '192.168.0.233', '2017-08-14 15:37:37', '25', '无敌', '2017-08-14 15:37:38', '1');
INSERT INTO `osa_createrole_log` VALUES ('52', '1001', '192.168.0.233', '2017-08-14 15:43:17', '26', '无敌', '2017-08-14 15:43:17', '1');
INSERT INTO `osa_createrole_log` VALUES ('53', '1001', '192.168.0.233', '2017-08-14 15:44:04', '27', '无敌', '2017-08-14 15:44:05', '1');
INSERT INTO `osa_createrole_log` VALUES ('54', '1001', '192.168.0.233', '2017-08-14 15:52:53', '28', '无敌', '2017-08-14 15:52:53', '1');
INSERT INTO `osa_createrole_log` VALUES ('55', '1001', '192.168.0.233', '2017-08-14 15:56:13', '29', '无敌', '2017-08-14 15:56:13', '1');
INSERT INTO `osa_createrole_log` VALUES ('56', '1001', '192.168.0.89', '2017-08-14 16:06:34', '30', '无敌', '2017-08-14 16:06:34', '1');
INSERT INTO `osa_createrole_log` VALUES ('57', '1001', '192.168.0.89', '2017-08-14 16:06:49', '31', '无敌', '2017-08-14 16:06:49', '1');
INSERT INTO `osa_createrole_log` VALUES ('58', '1001', '192.168.0.233', '2017-08-14 16:07:56', '32', '无敌', '2017-08-14 16:07:56', '1');
INSERT INTO `osa_createrole_log` VALUES ('59', '1001', '192.168.0.89', '2017-08-14 16:15:47', '33', '无敌', '2017-08-14 16:15:47', '1');
INSERT INTO `osa_createrole_log` VALUES ('60', '1001', '192.168.0.89', '2017-08-14 16:16:01', '34', '无敌', '2017-08-14 16:16:01', '1');
INSERT INTO `osa_createrole_log` VALUES ('61', '1001', '192.168.0.37', '2017-08-16 16:56:13', '35', '无敌87228', '2017-08-18 10:54:52', '1');
INSERT INTO `osa_createrole_log` VALUES ('62', '1001', '192.168.0.37', '2017-08-16 16:56:14', '36', '无敌8774', '2017-08-18 10:54:52', '1');
INSERT INTO `osa_createrole_log` VALUES ('63', '1001', '192.168.0.189', '2017-08-24 14:15:49', 'openId-0', '测试openId-0', '2017-08-25 11:46:47', '1');
INSERT INTO `osa_createrole_log` VALUES ('64', '1001', '192.168.0.233', '2017-09-12 14:16:12', 'r22', 'r22', '2017-09-20 15:30:00', '1');
INSERT INTO `osa_createrole_log` VALUES ('65', '1001', '192.168.0.233', '2017-09-12 14:22:39', 'test222', 'test222', '2017-09-20 15:30:03', '1');
INSERT INTO `osa_createrole_log` VALUES ('66', '1001', '192.168.0.233', '2017-09-12 14:25:30', 'tee22', 'tee22', '2017-09-20 15:30:04', '1');
INSERT INTO `osa_createrole_log` VALUES ('67', '1001', '192.168.0.233', '2017-09-12 14:44:09', 'test11', 'test11', '2017-09-20 15:30:04', '1');
INSERT INTO `osa_createrole_log` VALUES ('68', '1001', '192.168.0.233', '2017-09-12 14:58:29', 'o11', 'o11', '2017-09-20 15:30:05', '1');
INSERT INTO `osa_createrole_log` VALUES ('69', '1001', '192.168.0.233', '2017-09-12 15:00:01', 'ewewe', 'ewewe', '2017-09-20 15:30:06', '1');
INSERT INTO `osa_createrole_log` VALUES ('70', '1001', '192.168.0.233', '2017-09-12 15:04:44', 'er', 'er', '2017-09-20 15:30:06', '1');
INSERT INTO `osa_createrole_log` VALUES ('71', '1001', '192.168.0.233', '2017-09-12 15:06:58', 'er1', 'er1', '2017-09-20 15:30:07', '1');
INSERT INTO `osa_createrole_log` VALUES ('72', '1001', '192.168.0.233', '2017-09-12 15:07:12', 'er2', 'er2', '2017-09-20 15:30:07', '1');
INSERT INTO `osa_createrole_log` VALUES ('73', '1001', '192.168.0.233', '2017-09-12 15:12:28', 'ewe', 'ewe', '2017-09-20 15:30:07', '1');
INSERT INTO `osa_createrole_log` VALUES ('74', '1001', '192.168.0.233', '2017-09-12 15:13:29', 'dww', 'dww', '2017-09-20 15:30:07', '1');
INSERT INTO `osa_createrole_log` VALUES ('75', '1001', '192.168.0.233', '2017-09-12 15:13:48', 'weewwe', 'weewwe', '2017-09-20 15:30:08', '1');
INSERT INTO `osa_createrole_log` VALUES ('76', '1001', '192.168.0.233', '2017-09-12 15:16:47', 't11', 't11', '2017-09-20 15:30:08', '1');
INSERT INTO `osa_createrole_log` VALUES ('77', '1001', '192.168.0.233', '2017-09-12 15:17:07', 't12', 't12', '2017-09-20 15:30:08', '1');
INSERT INTO `osa_createrole_log` VALUES ('78', '1001', '192.168.0.233', '2017-09-12 15:17:32', 't13', 't13', '2017-09-20 15:30:08', '1');
INSERT INTO `osa_createrole_log` VALUES ('79', '1001', '192.168.0.233', '2017-09-12 15:17:52', 't14', 't14', '2017-09-20 15:30:09', '1');
INSERT INTO `osa_createrole_log` VALUES ('80', '1001', '192.168.0.233', '2017-09-12 15:28:12', 'r11', 'r11', '2017-09-20 15:30:10', '1');
INSERT INTO `osa_createrole_log` VALUES ('81', '1001', '192.168.0.233', '2017-09-12 15:28:28', 'r12', 'r12', '2017-09-20 15:30:10', '1');
INSERT INTO `osa_createrole_log` VALUES ('82', '1001', '192.168.0.233', '2017-09-12 15:28:42', 'r13', 'r13', '2017-09-20 15:30:10', '1');
INSERT INTO `osa_createrole_log` VALUES ('83', '1001', '192.168.0.233', '2017-09-12 15:28:54', 'r14', 'r14', '2017-09-20 15:30:10', '1');
INSERT INTO `osa_createrole_log` VALUES ('84', '1001', '192.168.0.233', '2017-09-12 16:16:08', 'e11', 'e11', '2017-09-20 15:30:14', '1');
INSERT INTO `osa_createrole_log` VALUES ('85', '1001', '192.168.0.233', '2017-09-12 16:16:32', 'e12', 'e12', '2017-09-20 15:30:15', '1');
INSERT INTO `osa_createrole_log` VALUES ('86', '1001', '192.168.0.233', '2017-09-12 16:30:44', 'wwe1', 'wwe1', '2017-09-20 15:30:16', '1');
INSERT INTO `osa_createrole_log` VALUES ('87', '1001', '192.168.0.233', '2017-09-12 16:31:06', 'weeww', 'weeww', '2017-09-20 15:30:16', '1');
INSERT INTO `osa_createrole_log` VALUES ('88', '1001', '192.168.0.233', '2017-09-12 16:31:22', 'vdsew', 'vdsew', '2017-09-20 15:30:16', '1');
INSERT INTO `osa_createrole_log` VALUES ('89', '1001', '192.168.0.233', '2017-09-12 16:43:24', 't1', 't1', '2017-09-20 15:30:16', '1');
INSERT INTO `osa_createrole_log` VALUES ('90', '1001', '192.168.0.233', '2017-09-12 16:43:29', 't2', 't2', '2017-09-20 15:30:16', '1');
INSERT INTO `osa_createrole_log` VALUES ('91', '1001', '192.168.0.233', '2017-09-12 16:46:34', 'eewew', 'eewew', '2017-09-20 15:30:17', '1');
INSERT INTO `osa_createrole_log` VALUES ('92', '1001', '192.168.0.233', '2017-09-12 16:49:43', 'rewre', 'rewre', '2017-09-20 15:30:17', '1');
INSERT INTO `osa_createrole_log` VALUES ('93', '1001', '192.168.0.233', '2017-09-12 16:51:03', 'e13', 'e13', '2017-09-20 15:30:17', '1');
INSERT INTO `osa_createrole_log` VALUES ('94', '1001', '192.168.0.233', '2017-09-12 16:51:23', 'e14', 'e14', '2017-09-20 15:30:17', '1');
INSERT INTO `osa_createrole_log` VALUES ('95', '1001', '192.168.0.233', '2017-09-12 17:00:08', 'er12', 'er12', '2017-09-20 15:30:18', '1');
INSERT INTO `osa_createrole_log` VALUES ('96', '1001', '192.168.0.233', '2017-09-12 17:00:20', 'rewe', 'rewe', '2017-09-20 15:30:18', '1');
INSERT INTO `osa_createrole_log` VALUES ('97', '1001', '192.168.0.233', '2017-09-12 17:14:57', 'erqwe', 'erqwe', '2017-09-20 15:30:19', '1');
INSERT INTO `osa_createrole_log` VALUES ('98', '1001', '192.168.0.233', '2017-09-12 17:15:16', 'ewqe', 'ewqe', '2017-09-20 15:30:19', '1');
INSERT INTO `osa_createrole_log` VALUES ('99', '1001', '192.168.0.233', '2017-09-12 17:15:32', 'fsdaf', 'fsdaf', '2017-09-20 15:30:19', '1');
INSERT INTO `osa_createrole_log` VALUES ('100', '1001', '192.168.0.233', '2017-09-12 17:15:52', 'fvxczvcx', 'fvxczvcx', '2017-09-20 15:30:19', '1');
INSERT INTO `osa_createrole_log` VALUES ('101', '1001', '192.168.0.233', '2017-09-12 17:20:43', 'ewrw', 'ewrw', '2017-09-20 15:30:20', '1');
INSERT INTO `osa_createrole_log` VALUES ('102', '1001', '192.168.0.233', '2017-09-12 17:26:00', 'xcxzc', 'xcxzc', '2017-09-20 15:30:20', '1');
INSERT INTO `osa_createrole_log` VALUES ('103', '1001', '192.168.0.233', '2017-09-12 17:26:39', 'vxcxzcv', 'vxcxzcv', '2017-09-20 15:30:20', '1');
INSERT INTO `osa_createrole_log` VALUES ('104', '1001', '192.168.0.233', '2017-09-12 17:26:55', 'vcxx', 'vcxx', '2017-09-20 15:30:20', '1');
INSERT INTO `osa_createrole_log` VALUES ('105', '1001', '192.168.0.233', '2017-09-12 17:49:44', 'ewee', 'ewee', '2017-09-20 15:30:21', '1');
INSERT INTO `osa_createrole_log` VALUES ('106', '1001', '192.168.0.233', '2017-09-12 17:50:10', 'cxzxzc', 'cxzxzc', '2017-09-20 15:30:21', '1');
INSERT INTO `osa_createrole_log` VALUES ('107', '1001', '192.168.0.233', '2017-09-12 17:50:14', 'vcxzv', 'vcxzv', '2017-09-20 15:30:21', '1');
INSERT INTO `osa_createrole_log` VALUES ('108', '1001', '192.168.0.233', '2017-09-12 17:50:26', 'bdadf', 'bdadf', '2017-09-20 15:30:21', '1');
INSERT INTO `osa_createrole_log` VALUES ('109', '1001', '192.168.0.233', '2017-09-12 17:58:42', 'eweeq', 'eweeq', '2017-09-20 15:30:21', '1');
INSERT INTO `osa_createrole_log` VALUES ('110', '1001', '192.168.0.233', '2017-09-12 17:58:48', 'cxvxc', 'cxvxc', '2017-09-20 15:30:21', '1');
INSERT INTO `osa_createrole_log` VALUES ('111', '1001', '192.168.0.233', '2017-09-12 17:59:04', 'vxccvxcz', 'vxccvxcz', '2017-09-20 15:30:21', '1');
INSERT INTO `osa_createrole_log` VALUES ('112', '1001', '192.168.0.233', '2017-09-12 17:59:24', 'bdfa', 'bdfa', '2017-09-20 15:30:21', '1');
INSERT INTO `osa_createrole_log` VALUES ('113', '1001', '192.168.0.233', '2017-09-12 18:35:03', 'ytrwty', 'ytrwty', '2017-09-20 15:30:22', '1');
INSERT INTO `osa_createrole_log` VALUES ('114', '1001', '192.168.0.233', '2017-09-12 18:35:25', 'veqwe', 'veqwe', '2017-09-20 15:30:22', '1');
INSERT INTO `osa_createrole_log` VALUES ('115', '1001', '192.168.0.233', '2017-09-12 18:35:55', 'berre', 'berre', '2017-09-20 15:30:22', '1');
INSERT INTO `osa_createrole_log` VALUES ('116', '1001', '192.168.0.233', '2017-09-12 18:36:10', 'nrtwt', 'nrtwt', '2017-09-20 15:30:22', '1');
INSERT INTO `osa_createrole_log` VALUES ('117', '1001', '192.168.0.233', '2017-09-12 18:37:21', 'y1', 'y1', '2017-09-20 15:30:22', '1');
INSERT INTO `osa_createrole_log` VALUES ('118', '1001', '192.168.0.233', '2017-09-12 18:37:37', 'y2', 'y2', '2017-09-20 15:30:22', '1');
INSERT INTO `osa_createrole_log` VALUES ('119', '1001', '192.168.0.233', '2017-09-12 18:37:58', 'y3', 'y3', '2017-09-20 15:30:22', '1');
INSERT INTO `osa_createrole_log` VALUES ('120', '1001', '192.168.0.233', '2017-09-12 18:38:20', 'y4', 'y4', '2017-09-20 15:30:22', '1');
INSERT INTO `osa_createrole_log` VALUES ('121', '1001', '192.168.0.233', '2017-09-12 18:47:05', 'twetq', 'twetq', '2017-09-20 15:30:23', '1');
INSERT INTO `osa_createrole_log` VALUES ('122', '1001', '192.168.0.233', '2017-09-12 18:47:23', 'vxczv', 'vxczv', '2017-09-20 15:30:23', '1');
INSERT INTO `osa_createrole_log` VALUES ('123', '1001', '192.168.0.233', '2017-09-12 18:47:40', 'bdfsweq', 'bdfsweq', '2017-09-20 15:30:23', '1');
INSERT INTO `osa_createrole_log` VALUES ('124', '1001', '192.168.0.233', '2017-09-12 18:47:58', 'erqer', 'erqer', '2017-09-20 15:30:23', '1');
INSERT INTO `osa_createrole_log` VALUES ('125', '1001', '192.168.0.233', '2017-09-12 18:53:22', 'vewqew', 'vewqew', '2017-09-20 15:30:24', '1');
INSERT INTO `osa_createrole_log` VALUES ('126', '1001', '192.168.0.233', '2017-09-12 18:55:48', 'vsa', 'vsa', '2017-09-20 15:30:25', '1');
INSERT INTO `osa_createrole_log` VALUES ('127', '1001', '192.168.0.233', '2017-09-12 18:56:10', 'bnrew', 'bnrew', '2017-09-20 15:30:25', '1');
INSERT INTO `osa_createrole_log` VALUES ('128', '1001', '192.168.0.233', '2017-09-12 18:56:18', 'vcnm', 'vcnm', '2017-09-20 15:30:26', '1');
INSERT INTO `osa_createrole_log` VALUES ('129', '1001', '192.168.0.233', '2017-09-12 18:56:35', 'teqrt', 'teqrt', '2017-09-20 15:30:26', '1');
INSERT INTO `osa_createrole_log` VALUES ('130', '1001', '192.168.0.233', '2017-09-12 19:40:11', 'ew111', 'ew111', '2017-09-20 15:30:26', '1');
INSERT INTO `osa_createrole_log` VALUES ('131', '1001', '192.168.0.233', '2017-09-12 19:41:17', 'cvxzb', 'cvxzb', '2017-09-20 15:30:26', '1');
INSERT INTO `osa_createrole_log` VALUES ('132', '1001', '192.168.0.233', '2017-09-12 19:41:29', 'reqwer', 'reqwer', '2017-09-20 15:30:26', '1');
INSERT INTO `osa_createrole_log` VALUES ('133', '1001', '192.168.0.233', '2017-09-12 20:03:06', 'ewrewq', 'ewrewq', '2017-09-20 15:30:27', '1');
INSERT INTO `osa_createrole_log` VALUES ('134', '1001', '192.168.0.233', '2017-09-12 20:03:25', 'vdsv', 'vdsv', '2017-09-20 15:30:27', '1');
INSERT INTO `osa_createrole_log` VALUES ('135', '1001', '192.168.0.233', '2017-09-12 20:03:42', 'bxcbz', 'bxcbz', '2017-09-20 15:30:27', '1');
INSERT INTO `osa_createrole_log` VALUES ('136', '1001', '192.168.0.233', '2017-09-12 20:03:58', 'vcxqwe', 'vcxqwe', '2017-09-20 15:30:27', '1');
INSERT INTO `osa_createrole_log` VALUES ('137', '1001', '192.168.0.233', '2017-09-12 20:10:56', 'vxcb', 'vxcb', '2017-09-20 15:30:28', '1');
INSERT INTO `osa_createrole_log` VALUES ('138', '1001', '192.168.0.233', '2017-09-12 20:11:03', 'ncvx', 'ncvx', '2017-09-20 15:30:28', '1');
INSERT INTO `osa_createrole_log` VALUES ('139', '1001', '192.168.0.233', '2017-09-12 20:11:29', 'cxzzxc', 'cxzzxc', '2017-09-20 15:30:29', '1');
INSERT INTO `osa_createrole_log` VALUES ('140', '1001', '192.168.0.233', '2017-09-13 09:20:28', 'qwe', 'qwe', '2017-09-20 15:30:29', '1');
INSERT INTO `osa_createrole_log` VALUES ('141', '1001', '192.168.0.233', '2017-09-13 09:21:01', 'qwe1', 'qwe1', '2017-09-20 15:30:29', '1');
INSERT INTO `osa_createrole_log` VALUES ('142', '1001', '192.168.0.233', '2017-09-13 09:21:18', 'qwe2', 'qwe2', '2017-09-20 15:30:29', '1');
INSERT INTO `osa_createrole_log` VALUES ('143', '1001', '192.168.0.233', '2017-09-13 09:21:32', 'qwe3', 'qwe3', '2017-09-20 15:30:29', '1');
INSERT INTO `osa_createrole_log` VALUES ('144', '1001', '192.168.0.233', '2017-09-13 09:32:19', 'weq', 'weq', '2017-09-20 15:30:29', '1');
INSERT INTO `osa_createrole_log` VALUES ('145', '1001', '192.168.0.233', '2017-09-13 09:32:55', 'weq2', 'weq2', '2017-09-20 15:30:30', '1');
INSERT INTO `osa_createrole_log` VALUES ('146', '1001', '192.168.0.233', '2017-09-13 09:33:07', 'weq3', 'weq3', '2017-09-20 15:30:30', '1');
INSERT INTO `osa_createrole_log` VALUES ('147', '1001', '192.168.0.233', '2017-09-13 09:33:18', 'weq4', 'weq4', '2017-09-20 15:30:30', '1');
INSERT INTO `osa_createrole_log` VALUES ('148', '1001', '192.168.0.233', '2017-09-13 09:53:07', 'qq1', 'qq1', '2017-09-20 15:30:30', '1');
INSERT INTO `osa_createrole_log` VALUES ('149', '1001', '192.168.0.233', '2017-09-13 09:53:22', 'qq2', 'qq2', '2017-09-20 15:30:30', '1');
INSERT INTO `osa_createrole_log` VALUES ('150', '1001', '192.168.0.233', '2017-09-13 09:53:39', 'qq3', 'qq3', '2017-09-20 15:30:30', '1');
INSERT INTO `osa_createrole_log` VALUES ('151', '1001', '192.168.0.233', '2017-09-13 09:54:00', 'qq4', 'qq4', '2017-09-20 15:30:31', '1');
INSERT INTO `osa_createrole_log` VALUES ('152', '1001', '192.168.0.233', '2017-09-13 10:04:12', 'rr', 'rr', '2017-09-20 15:30:31', '1');
INSERT INTO `osa_createrole_log` VALUES ('153', '1001', '192.168.0.233', '2017-09-13 10:04:28', 'rr2', 'rr2', '2017-09-20 15:30:31', '1');
INSERT INTO `osa_createrole_log` VALUES ('154', '1001', '192.168.0.233', '2017-09-13 10:04:51', 'rr3', 'rr3', '2017-09-20 15:30:31', '1');
INSERT INTO `osa_createrole_log` VALUES ('155', '1001', '192.168.0.233', '2017-09-13 10:05:17', 'rr4', 'rr4', '2017-09-20 15:30:31', '1');
INSERT INTO `osa_createrole_log` VALUES ('156', '1001', '192.168.0.233', '2017-09-13 10:21:45', 'ww', 'ww', '2017-09-20 15:30:31', '1');
INSERT INTO `osa_createrole_log` VALUES ('157', '1001', '192.168.0.233', '2017-09-13 10:22:18', 'ww2', 'ww2', '2017-09-20 15:30:31', '1');
INSERT INTO `osa_createrole_log` VALUES ('158', '1001', '192.168.0.233', '2017-09-13 10:22:28', 'ww3', 'ww3', '2017-09-20 15:30:31', '1');
INSERT INTO `osa_createrole_log` VALUES ('159', '1001', '192.168.0.233', '2017-09-13 10:22:48', 'ww4', 'ww4', '2017-09-20 15:30:31', '1');
INSERT INTO `osa_createrole_log` VALUES ('160', '1001', '192.168.0.233', '2017-09-13 10:33:09', 'ee1', 'ee1', '2017-09-20 15:30:32', '1');
INSERT INTO `osa_createrole_log` VALUES ('161', '1001', '192.168.0.233', '2017-09-13 10:33:25', 'ee2', 'ee2', '2017-09-20 15:30:32', '1');
INSERT INTO `osa_createrole_log` VALUES ('162', '1001', '192.168.0.233', '2017-09-13 10:33:47', 'ee3', 'ee3', '2017-09-20 15:30:32', '1');
INSERT INTO `osa_createrole_log` VALUES ('163', '1001', '192.168.0.233', '2017-09-13 10:34:05', 'ee4', 'ee4', '2017-09-20 15:30:32', '1');
INSERT INTO `osa_createrole_log` VALUES ('164', '1001', '192.168.0.233', '2017-09-13 10:49:05', 'a1', 'a1', '2017-09-20 15:30:33', '1');
INSERT INTO `osa_createrole_log` VALUES ('165', '1001', '192.168.0.233', '2017-09-13 10:49:20', 'a2', 'a2', '2017-09-20 15:30:33', '1');
INSERT INTO `osa_createrole_log` VALUES ('166', '1001', '192.168.0.233', '2017-09-13 10:49:40', 'a3', 'a3', '2017-09-20 15:30:34', '1');
INSERT INTO `osa_createrole_log` VALUES ('167', '1001', '192.168.0.233', '2017-09-13 10:50:01', 'a4', 'a4', '2017-09-20 15:30:34', '1');
INSERT INTO `osa_createrole_log` VALUES ('168', '1001', '192.168.0.233', '2017-09-13 11:02:45', 'z11', 'z11', '2017-09-20 15:30:35', '1');
INSERT INTO `osa_createrole_log` VALUES ('169', '1001', '192.168.0.233', '2017-09-13 11:03:01', 'z12', 'z12', '2017-09-20 15:30:35', '1');
INSERT INTO `osa_createrole_log` VALUES ('170', '1001', '192.168.0.233', '2017-09-13 11:03:04', 'z13', 'z13', '2017-09-20 15:30:35', '1');
INSERT INTO `osa_createrole_log` VALUES ('171', '1001', '192.168.0.233', '2017-09-13 11:03:16', 'z14', 'z14', '2017-09-20 15:30:35', '1');
INSERT INTO `osa_createrole_log` VALUES ('172', '1001', '192.168.0.233', '2017-09-13 13:52:32', 'q11', 'q11', '2017-09-20 15:30:35', '1');
INSERT INTO `osa_createrole_log` VALUES ('173', '1001', '192.168.0.233', '2017-09-13 13:52:39', 'q12', 'q12', '2017-09-20 15:30:35', '1');
INSERT INTO `osa_createrole_log` VALUES ('174', '1001', '192.168.0.233', '2017-09-13 13:52:46', 'q13', 'q13', '2017-09-20 15:30:35', '1');
INSERT INTO `osa_createrole_log` VALUES ('175', '1001', '192.168.0.233', '2017-09-13 13:52:51', 'q14', 'q14', '2017-09-20 15:30:36', '1');
INSERT INTO `osa_createrole_log` VALUES ('176', '1001', '192.168.0.233', '2017-09-13 14:36:05', 's11', 's11', '2017-09-20 15:30:37', '1');
INSERT INTO `osa_createrole_log` VALUES ('177', '1001', '192.168.0.233', '2017-09-13 14:36:51', 's12', 's12', '2017-09-20 15:30:37', '1');
INSERT INTO `osa_createrole_log` VALUES ('178', '1001', '192.168.0.233', '2017-09-13 14:36:54', 's13', 's13', '2017-09-20 15:30:37', '1');
INSERT INTO `osa_createrole_log` VALUES ('179', '1001', '192.168.0.233', '2017-09-13 14:36:58', 's14', 's14', '2017-09-20 15:30:38', '1');
INSERT INTO `osa_createrole_log` VALUES ('180', '1001', '192.168.0.233', '2017-09-13 15:44:33', 'e1', 'e1', '2017-09-20 15:30:38', '1');
INSERT INTO `osa_createrole_log` VALUES ('181', '1001', '192.168.0.233', '2017-09-13 15:44:50', 'e2', 'e2', '2017-09-20 15:30:38', '1');
INSERT INTO `osa_createrole_log` VALUES ('182', '1001', '192.168.0.233', '2017-09-13 15:45:26', 'e3', 'e3', '2017-09-20 15:30:38', '1');
INSERT INTO `osa_createrole_log` VALUES ('183', '1001', '192.168.0.233', '2017-09-13 15:45:42', 'e4', 'e4', '2017-09-20 15:30:38', '1');
INSERT INTO `osa_createrole_log` VALUES ('184', '1001', '192.168.0.233', '2017-09-13 15:57:59', 'x1', 'x1', '2017-09-20 15:30:38', '1');
INSERT INTO `osa_createrole_log` VALUES ('185', '1001', '192.168.0.233', '2017-09-13 15:58:10', 'x2', 'x2', '2017-09-20 15:30:39', '1');
INSERT INTO `osa_createrole_log` VALUES ('186', '1001', '192.168.0.233', '2017-09-13 15:58:27', 'x3', 'x3', '2017-09-20 15:30:39', '1');
INSERT INTO `osa_createrole_log` VALUES ('187', '1001', '192.168.0.233', '2017-09-13 15:58:47', 'x4', 'x4', '2017-09-20 15:30:39', '1');
INSERT INTO `osa_createrole_log` VALUES ('188', '1001', '192.168.0.233', '2017-09-13 16:21:29', 's1', 's1', '2017-09-20 15:30:39', '1');
INSERT INTO `osa_createrole_log` VALUES ('189', '1001', '192.168.0.233', '2017-09-13 16:21:45', 's2', 's2', '2017-09-20 15:30:39', '1');
INSERT INTO `osa_createrole_log` VALUES ('190', '1001', '192.168.0.233', '2017-09-13 16:22:09', 's3', 's3', '2017-09-20 15:30:39', '1');
INSERT INTO `osa_createrole_log` VALUES ('191', '1001', '192.168.0.233', '2017-09-13 16:22:30', 's4', 's4', '2017-09-20 15:30:39', '1');
INSERT INTO `osa_createrole_log` VALUES ('192', '1001', '192.168.0.233', '2017-09-13 16:40:01', 'ew1', 'ew1', '2017-09-20 15:30:40', '1');
INSERT INTO `osa_createrole_log` VALUES ('193', '1001', '192.168.0.233', '2017-09-13 16:40:31', 'ew2', 'ew2', '2017-09-20 15:30:40', '1');
INSERT INTO `osa_createrole_log` VALUES ('194', '1001', '192.168.0.233', '2017-09-13 16:41:03', 'ew3', 'ew3', '2017-09-20 15:30:40', '1');
INSERT INTO `osa_createrole_log` VALUES ('195', '1001', '192.168.0.233', '2017-09-13 16:41:16', 'ew4', 'ew4', '2017-09-20 15:30:40', '1');
INSERT INTO `osa_createrole_log` VALUES ('196', '1001', '192.168.0.233', '2017-09-13 16:46:10', 'w1', 'w1', '2017-09-20 15:30:40', '1');
INSERT INTO `osa_createrole_log` VALUES ('197', '1001', '192.168.0.233', '2017-09-13 16:46:36', 'w2', 'w2', '2017-09-20 15:30:40', '1');
INSERT INTO `osa_createrole_log` VALUES ('198', '1001', '192.168.0.233', '2017-09-13 16:46:58', 'w3', 'w3', '2017-09-20 15:30:40', '1');
INSERT INTO `osa_createrole_log` VALUES ('199', '1001', '192.168.0.233', '2017-09-13 16:47:19', 'w4', 'w4', '2017-09-20 15:30:40', '1');
INSERT INTO `osa_createrole_log` VALUES ('200', '1001', '192.168.0.233', '2017-09-13 16:59:55', 'v1', 'v1', '2017-09-20 15:30:40', '1');
INSERT INTO `osa_createrole_log` VALUES ('201', '1001', '192.168.0.233', '2017-09-13 16:59:58', 'v2', 'v2', '2017-09-20 15:30:40', '1');
INSERT INTO `osa_createrole_log` VALUES ('202', '1001', '192.168.0.233', '2017-09-13 17:00:34', 'v3', 'v3', '2017-09-20 15:30:40', '1');
INSERT INTO `osa_createrole_log` VALUES ('203', '1001', '192.168.0.233', '2017-09-13 17:00:44', 'v4', 'v4', '2017-09-20 15:30:40', '1');
INSERT INTO `osa_createrole_log` VALUES ('204', '1001', '192.168.0.233', '2017-09-13 18:19:10', 's123', 's123', '2017-09-20 15:30:43', '1');
INSERT INTO `osa_createrole_log` VALUES ('205', '1001', '192.168.0.233', '2017-09-13 18:19:17', 's124', 's124', '2017-09-20 15:30:43', '1');
INSERT INTO `osa_createrole_log` VALUES ('206', '1001', '192.168.0.233', '2017-09-13 18:19:42', 's125', 's125', '2017-09-20 15:30:43', '1');
INSERT INTO `osa_createrole_log` VALUES ('207', '1001', '192.168.0.233', '2017-09-13 18:20:05', 's126', 's126', '2017-09-20 15:30:43', '1');
INSERT INTO `osa_createrole_log` VALUES ('208', '1001', '192.168.0.233', '2017-09-13 18:32:15', 'erwwqe', 'erwwqe', '2017-09-20 15:30:43', '1');
INSERT INTO `osa_createrole_log` VALUES ('209', '1001', '192.168.0.233', '2017-09-13 18:37:35', 'rwew', 'rwew', '2017-09-20 15:30:43', '1');
INSERT INTO `osa_createrole_log` VALUES ('210', '1001', '192.168.0.233', '2017-09-13 18:37:56', 'ewr', 'ewr', '2017-09-20 15:30:43', '1');
INSERT INTO `osa_createrole_log` VALUES ('211', '1001', '192.168.0.233', '2017-09-13 18:38:22', 'evcx', 'evcx', '2017-09-20 15:30:43', '1');
INSERT INTO `osa_createrole_log` VALUES ('212', '1001', '192.168.0.233', '2017-09-13 18:38:40', 'terwt', 'terwt', '2017-09-20 15:30:44', '1');
INSERT INTO `osa_createrole_log` VALUES ('213', '1001', '192.168.0.189', '2017-09-13 20:28:09', 'dee', 'dee', '2017-09-20 15:30:44', '1');
INSERT INTO `osa_createrole_log` VALUES ('214', '1001', '192.168.0.233', '2017-09-14 09:21:03', 'wn1', 'wn1', '2017-09-20 15:30:44', '1');
INSERT INTO `osa_createrole_log` VALUES ('215', '1001', '192.168.0.233', '2017-09-14 09:21:12', 'wn2', 'wn2', '2017-09-20 15:30:44', '1');
INSERT INTO `osa_createrole_log` VALUES ('216', '1001', '192.168.0.233', '2017-09-14 09:21:15', 'wn3', 'wn3', '2017-09-20 15:30:44', '1');
INSERT INTO `osa_createrole_log` VALUES ('217', '1001', '192.168.0.233', '2017-09-14 09:21:19', 'wn4', 'wn4', '2017-09-20 15:30:44', '1');
INSERT INTO `osa_createrole_log` VALUES ('218', '1001', '192.168.0.189', '2017-09-14 09:35:51', '1', '1', '2017-09-20 15:30:45', '1');
INSERT INTO `osa_createrole_log` VALUES ('219', '1001', '192.168.0.189', '2017-09-14 09:35:54', '2', '2', '2017-09-20 15:30:45', '1');
INSERT INTO `osa_createrole_log` VALUES ('220', '1001', '192.168.0.189', '2017-09-14 09:35:58', '3', '3', '2017-09-20 15:30:45', '1');
INSERT INTO `osa_createrole_log` VALUES ('221', '1001', '192.168.0.189', '2017-09-14 09:36:03', '4', '4', '2017-09-20 15:30:45', '1');
INSERT INTO `osa_createrole_log` VALUES ('222', '1001', '192.168.0.233', '2017-09-14 10:03:22', 'a11', 'a11', '2017-09-20 15:30:49', '1');
INSERT INTO `osa_createrole_log` VALUES ('223', '1001', '192.168.0.233', '2017-09-14 10:03:36', 'a12', 'a12', '2017-09-20 15:30:49', '1');
INSERT INTO `osa_createrole_log` VALUES ('224', '1001', '192.168.0.233', '2017-09-14 10:03:48', 'a13', 'a13', '2017-09-20 15:30:49', '1');
INSERT INTO `osa_createrole_log` VALUES ('225', '1001', '192.168.0.233', '2017-09-14 10:04:01', 'a14', 'a14', '2017-09-20 15:30:49', '1');
INSERT INTO `osa_createrole_log` VALUES ('226', '1001', '192.168.0.233', '2017-09-14 10:30:27', 'c1', 'c1', '2017-09-20 15:30:54', '1');
INSERT INTO `osa_createrole_log` VALUES ('227', '1001', '192.168.0.233', '2017-09-14 10:31:22', 'c2', 'c2', '2017-09-20 15:30:54', '1');
INSERT INTO `osa_createrole_log` VALUES ('228', '1001', '192.168.0.233', '2017-09-14 10:31:30', 'c3', 'c3', '2017-09-20 15:30:54', '1');
INSERT INTO `osa_createrole_log` VALUES ('229', '1001', '192.168.0.233', '2017-09-14 10:31:43', 'c4', 'c4', '2017-09-20 15:30:54', '1');
INSERT INTO `osa_createrole_log` VALUES ('230', '1001', '192.168.0.233', '2017-09-14 10:43:16', 'asdfsd', 'asdfsd', '2017-09-20 15:30:55', '1');
INSERT INTO `osa_createrole_log` VALUES ('231', '1001', '192.168.0.233', '2017-09-14 10:46:59', 'asd', 'asd', '2017-09-20 15:30:55', '1');
INSERT INTO `osa_createrole_log` VALUES ('232', '1001', '192.168.0.233', '2017-09-14 10:49:13', 'weew', 'weew', '2017-09-20 15:30:56', '1');
INSERT INTO `osa_createrole_log` VALUES ('233', '1001', '192.168.0.233', '2017-09-14 10:49:18', 'cxczx', 'cxczx', '2017-09-20 15:30:56', '1');
INSERT INTO `osa_createrole_log` VALUES ('234', '1001', '192.168.0.233', '2017-09-14 10:49:58', 'cvzxcv', 'cvzxcv', '2017-09-20 15:30:56', '1');
INSERT INTO `osa_createrole_log` VALUES ('235', '1001', '192.168.0.233', '2017-09-14 10:50:06', 'ndfsfd', 'ndfsfd', '2017-09-20 15:30:56', '1');
INSERT INTO `osa_createrole_log` VALUES ('236', '1001', '192.168.0.189', '2017-09-14 10:53:12', '11', '11', '2017-09-20 15:30:56', '1');
INSERT INTO `osa_createrole_log` VALUES ('237', '1001', '192.168.0.189', '2017-09-14 10:53:17', '12', '12', '2017-09-20 15:30:56', '1');
INSERT INTO `osa_createrole_log` VALUES ('238', '1001', '192.168.0.189', '2017-09-14 10:53:52', '13', '13', '2017-09-20 15:30:56', '1');
INSERT INTO `osa_createrole_log` VALUES ('239', '1001', '192.168.0.189', '2017-09-14 10:54:09', '14', '14', '2017-09-20 15:30:56', '1');
INSERT INTO `osa_createrole_log` VALUES ('240', '1001', '192.168.0.233', '2017-09-14 11:00:49', 'ewr1', 'ewr1', '2017-09-20 15:30:57', '1');
INSERT INTO `osa_createrole_log` VALUES ('241', '1001', '192.168.0.189', '2017-09-14 11:00:50', '5', '5', '2017-09-20 15:30:57', '1');
INSERT INTO `osa_createrole_log` VALUES ('242', '1001', '192.168.0.233', '2017-09-14 11:00:53', 'vcxxcvxc', 'vcxxcvxc', '2017-09-20 15:30:57', '1');
INSERT INTO `osa_createrole_log` VALUES ('243', '1001', '192.168.0.233', '2017-09-14 11:01:17', 'xcvxcz', 'xcvxcz', '2017-09-20 15:30:57', '1');
INSERT INTO `osa_createrole_log` VALUES ('244', '1001', '192.168.0.233', '2017-09-14 11:06:04', 'b1', 'b1', '2017-09-20 15:30:58', '1');
INSERT INTO `osa_createrole_log` VALUES ('245', '1001', '192.168.0.233', '2017-09-14 11:06:07', 'b2', 'b2', '2017-09-20 15:30:58', '1');
INSERT INTO `osa_createrole_log` VALUES ('246', '1001', '192.168.0.233', '2017-09-14 11:06:18', 'b3', 'b3', '2017-09-20 15:30:58', '1');
INSERT INTO `osa_createrole_log` VALUES ('247', '1001', '192.168.0.233', '2017-09-14 11:06:41', 'b4', 'b4', '2017-09-20 15:30:58', '1');
INSERT INTO `osa_createrole_log` VALUES ('248', '1001', '192.168.0.233', '2017-09-14 11:37:41', 'vxc1', 'vxc1', '2017-09-20 15:30:59', '1');
INSERT INTO `osa_createrole_log` VALUES ('249', '1001', '192.168.0.233', '2017-09-14 11:38:34', 'vcx2', 'vcx2', '2017-09-20 15:30:59', '1');
INSERT INTO `osa_createrole_log` VALUES ('250', '1001', '192.168.0.233', '2017-09-14 11:38:53', 'vcx3', 'vcx3', '2017-09-20 15:30:59', '1');
INSERT INTO `osa_createrole_log` VALUES ('251', '1001', '192.168.0.233', '2017-09-14 11:39:11', 'vcx4', 'vcx4', '2017-09-20 15:30:59', '1');
INSERT INTO `osa_createrole_log` VALUES ('252', '1001', '192.168.0.233', '2017-09-14 13:56:58', 'vxccv', 'vxccv', '2017-09-20 15:31:04', '1');
INSERT INTO `osa_createrole_log` VALUES ('253', '1001', '192.168.0.233', '2017-09-14 14:31:18', 'd1', 'd1', '2017-09-20 15:31:06', '1');
INSERT INTO `osa_createrole_log` VALUES ('254', '1001', '192.168.0.233', '2017-09-14 14:31:22', 'd2', 'd2', '2017-09-20 15:31:06', '1');
INSERT INTO `osa_createrole_log` VALUES ('255', '1001', '192.168.0.233', '2017-09-14 14:31:24', 'd3', 'd3', '2017-09-20 15:31:06', '1');
INSERT INTO `osa_createrole_log` VALUES ('256', '1001', '192.168.0.233', '2017-09-14 14:31:26', 'd4', 'd4', '2017-09-20 15:31:06', '1');
INSERT INTO `osa_createrole_log` VALUES ('257', '1001', '192.168.0.233', '2017-09-14 14:42:09', 'f1', 'f1', '2017-09-20 15:31:06', '1');
INSERT INTO `osa_createrole_log` VALUES ('258', '1001', '192.168.0.233', '2017-09-14 14:42:11', 'f2', 'f2', '2017-09-20 15:31:06', '1');
INSERT INTO `osa_createrole_log` VALUES ('259', '1001', '192.168.0.233', '2017-09-14 14:42:37', 'f3', 'f3', '2017-09-20 15:31:07', '1');
INSERT INTO `osa_createrole_log` VALUES ('260', '1001', '192.168.0.233', '2017-09-14 14:42:40', 'f4', 'f4', '2017-09-20 15:31:07', '1');
INSERT INTO `osa_createrole_log` VALUES ('261', '1001', '192.168.0.189', '2017-09-14 17:13:50', '36', '36', '2017-09-20 15:31:09', '1');
INSERT INTO `osa_createrole_log` VALUES ('262', '1001', '192.168.0.189', '2017-09-14 17:13:55', '7', '7', '2017-09-20 15:31:09', '1');
INSERT INTO `osa_createrole_log` VALUES ('263', '1001', '192.168.0.233', '2017-09-14 17:36:10', 'bcnbn', 'bcnbn', '2017-09-20 15:31:10', '1');
INSERT INTO `osa_createrole_log` VALUES ('264', '1001', '192.168.0.233', '2017-09-14 17:36:41', 'cvxxzcv', 'cvxxzcv', '2017-09-20 15:31:11', '1');
INSERT INTO `osa_createrole_log` VALUES ('265', '1001', '192.168.0.233', '2017-09-14 17:43:00', 'z1', 'z1', '2017-09-20 15:31:11', '1');
INSERT INTO `osa_createrole_log` VALUES ('266', '1001', '192.168.0.233', '2017-09-14 17:43:04', 'z2', 'z2', '2017-09-20 15:31:11', '1');
INSERT INTO `osa_createrole_log` VALUES ('267', '1001', '192.168.0.233', '2017-09-14 17:43:22', 'z3', 'z3', '2017-09-20 15:31:11', '1');
INSERT INTO `osa_createrole_log` VALUES ('268', '1001', '192.168.0.233', '2017-09-14 17:43:35', 'z4', 'z4', '2017-09-20 15:31:11', '1');
INSERT INTO `osa_createrole_log` VALUES ('269', '1001', '192.168.0.189', '2017-09-15 09:56:48', '10', '10', '2017-09-20 15:31:25', '1');
INSERT INTO `osa_createrole_log` VALUES ('270', '1001', '192.168.0.189', '2017-09-15 10:03:16', '21', '21', '2017-09-20 15:31:25', '1');
INSERT INTO `osa_createrole_log` VALUES ('271', '1001', '192.168.0.189', '2017-09-15 10:03:18', '22', '22', '2017-09-20 15:31:25', '1');
INSERT INTO `osa_createrole_log` VALUES ('272', '1001', '192.168.0.189', '2017-09-15 10:03:21', '23', '23', '2017-09-20 15:31:25', '1');
INSERT INTO `osa_createrole_log` VALUES ('273', '1001', '192.168.0.189', '2017-09-15 10:03:49', '20', '20', '2017-09-20 15:31:25', '1');
INSERT INTO `osa_createrole_log` VALUES ('274', '1001', '192.168.0.189', '2017-09-15 10:58:50', '6', '6', '2017-09-20 15:31:27', '1');
INSERT INTO `osa_createrole_log` VALUES ('275', '1001', '192.168.0.189', '2017-09-15 11:01:58', '45', '45', '2017-09-20 15:31:28', '1');
INSERT INTO `osa_createrole_log` VALUES ('276', '1001', '192.168.0.233', '2017-09-15 11:28:15', 'vsd', 'vsd', '2017-09-20 15:31:29', '1');
INSERT INTO `osa_createrole_log` VALUES ('277', '1001', '192.168.0.189', '2017-09-15 16:03:37', '8', '8', '2017-09-20 15:31:35', '1');
INSERT INTO `osa_createrole_log` VALUES ('278', '1001', '192.168.0.233', '2017-09-15 17:40:47', 'n1', 'n1', '2017-09-20 15:31:42', '1');
INSERT INTO `osa_createrole_log` VALUES ('279', '1001', '192.168.0.233', '2017-09-15 17:40:50', 'n2', 'n2', '2017-09-20 15:31:42', '1');
INSERT INTO `osa_createrole_log` VALUES ('280', '1001', '192.168.0.233', '2017-09-15 17:40:54', 'n3', 'n3', '2017-09-20 15:31:42', '1');
INSERT INTO `osa_createrole_log` VALUES ('281', '1001', '192.168.0.233', '2017-09-15 17:40:57', 'n4', 'n4', '2017-09-20 15:31:42', '1');
INSERT INTO `osa_createrole_log` VALUES ('282', '1001', '192.168.0.233', '2017-09-22 17:19:11', 'b11', 'b11', '2017-10-09 18:18:11', '1');
INSERT INTO `osa_createrole_log` VALUES ('283', '1001', '192.168.0.233', '2017-09-22 17:19:52', 'b12', 'b12', '2017-10-09 18:18:12', '1');
INSERT INTO `osa_createrole_log` VALUES ('284', '1001', '192.168.0.233', '2017-09-22 17:21:24', 'b13', 'b13', '2017-10-09 18:18:12', '1');
INSERT INTO `osa_createrole_log` VALUES ('285', '1001', '192.168.0.233', '2017-09-22 17:23:02', 'b14', 'b14', '2017-10-09 18:18:12', '1');

-- ----------------------------
-- Table structure for osa_feedback_question
-- ----------------------------
DROP TABLE IF EXISTS `osa_feedback_question`;
CREATE TABLE `osa_feedback_question` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `open_id` varchar(50) DEFAULT '0' COMMENT '账号',
  `content` varchar(512) DEFAULT '0' COMMENT '内容',
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `phone` bigint(20) DEFAULT NULL COMMENT '电话号码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of osa_feedback_question
-- ----------------------------
INSERT INTO `osa_feedback_question` VALUES ('2', '7788', '这是一个好的建议夺读书法枯枯萎栽李斐莉雪枯枯顶替模压 你用针夺顶替枯萎枯萎枯萎枯在无可奈何 顶替村东走西顾革枯无可奈何花落去顶替顶替村阿斯蒂芬 顶替顶替顶替夺模压 工厅阿斯蒂芬要东走西顾械械有顶替柑使用者', '2017-07-03 11:24:26', '15320589662');
INSERT INTO `osa_feedback_question` VALUES ('3', '7788', '这是一个好的建议夺读书法枯枯萎栽李斐莉雪枯枯顶替模压 你用针夺顶替枯萎枯萎枯萎枯在无可奈何 顶替村东走西顾革枯无可奈何花落去顶替顶替村阿斯蒂芬 顶替顶替顶替夺模压 工厅阿斯蒂芬要东走西顾械械有顶替柑使用者', '2017-07-03 11:24:35', '15320589662');
INSERT INTO `osa_feedback_question` VALUES ('4', '7788', '这是一个好的建议夺读书法枯枯萎栽李斐莉雪枯枯顶替模压 你用针夺顶替枯萎枯萎枯萎枯在无可奈何 顶替村东走西顾革枯无可奈何花落去顶替顶替村阿斯蒂芬 顶替顶替顶替夺模压 工厅阿斯蒂芬要东走西顾械械有顶替柑使用者', '2017-07-04 11:36:27', '15320589662');
INSERT INTO `osa_feedback_question` VALUES ('5', '1231237788', 'neirongkuang (UnityEngine.UI.InputField)', '2017-07-04 14:22:15', '15320589662');
INSERT INTO `osa_feedback_question` VALUES ('6', '1231237788', 'neirongkuang (UnityEngine.UI.InputField)', '2017-07-04 14:23:45', '15320589662');
INSERT INTO `osa_feedback_question` VALUES ('7', '12337788', 'neirongkuang (UnityEngine.UI.InputField)', '2017-07-04 14:26:37', '15320589662');
INSERT INTO `osa_feedback_question` VALUES ('8', '12337788', 'neirongkuang (UnityEngine.UI.InputField)', '2017-07-04 14:27:24', '15320589662');
INSERT INTO `osa_feedback_question` VALUES ('9', '12337788', 'neirongkuang (UnityEngine.UI.InputField)', '2017-07-04 14:28:29', '15320589662');
INSERT INTO `osa_feedback_question` VALUES ('10', '12337788', 'neirongkuang (UnityEngine.UI.InputField)', '2017-07-04 14:36:15', '15320589662');
INSERT INTO `osa_feedback_question` VALUES ('11', '12337788', 'neirongkuang (UnityEngine.UI.InputField)', '2017-07-04 14:39:40', '15320589662');
INSERT INTO `osa_feedback_question` VALUES ('12', '1231237788', 'neirongkuang (UnityEngine.UI.InputField)', '2017-07-04 14:42:59', '15320589662');
INSERT INTO `osa_feedback_question` VALUES ('13', '1237788', 'neirongkuang (UnityEngine.UI.InputField)', '2017-07-04 14:46:46', '15320589662');
INSERT INTO `osa_feedback_question` VALUES ('14', '12337788', 'neirongkuang (UnityEngine.UI.InputField)', '2017-07-04 14:55:47', '15320589662');
INSERT INTO `osa_feedback_question` VALUES ('15', '12337788', 'neirongkuang (UnityEngine.UI.InputField)', '2017-07-04 14:56:01', '15320589662');
INSERT INTO `osa_feedback_question` VALUES ('16', '12337788', 'neirongkuang (UnityEngine.UI.InputField)', '2017-07-04 14:57:29', '15320589662');
INSERT INTO `osa_feedback_question` VALUES ('17', '27788', 'neirongkuang (UnityEngine.UI.InputField)', '2017-07-04 14:58:39', '15320589662');
INSERT INTO `osa_feedback_question` VALUES ('18', '27788', 'neirongkuang (UnityEngine.UI.InputField)', '2017-07-04 14:59:56', '15320589662');
INSERT INTO `osa_feedback_question` VALUES ('19', '27788', 'neirongkuang (UnityEngine.UI.InputField)', '2017-07-04 14:59:56', '15320589662');
INSERT INTO `osa_feedback_question` VALUES ('20', '27788', 'neirongkuang (UnityEngine.UI.InputField)', '2017-07-04 15:00:14', '15320589662');
INSERT INTO `osa_feedback_question` VALUES ('21', '12337788', '123', '2017-07-04 15:02:18', '15320589662');
INSERT INTO `osa_feedback_question` VALUES ('22', '27788', '123', '2017-07-04 15:04:00', '15320589662');
INSERT INTO `osa_feedback_question` VALUES ('23', '27788', '333333333333', '2017-07-04 15:04:14', '15320589662');
INSERT INTO `osa_feedback_question` VALUES ('24', '27788', '12321', '2017-07-04 15:05:28', '15320589662');
INSERT INTO `osa_feedback_question` VALUES ('25', '27788', '', '2017-07-04 15:05:49', '15320589662');
INSERT INTO `osa_feedback_question` VALUES ('26', '27788', '999', '2017-07-04 15:06:10', '15320589662');
INSERT INTO `osa_feedback_question` VALUES ('27', '12337788', '213', '2017-07-04 15:07:36', '15320589662');
INSERT INTO `osa_feedback_question` VALUES ('28', '12337788', '312', '2017-07-04 15:07:53', '15320589662');
INSERT INTO `osa_feedback_question` VALUES ('29', '123337788', '1233', '2017-07-04 15:09:04', '15320589662');
INSERT INTO `osa_feedback_question` VALUES ('32', '31237788', '231', '2017-07-04 15:30:33', '15320589662');
INSERT INTO `osa_feedback_question` VALUES ('33', '1237788', '213', '2017-07-04 15:33:44', '15320589662');
INSERT INTO `osa_feedback_question` VALUES ('34', 'eweew7788', 'dddd', '2017-08-14 10:58:04', '15320589662');

-- ----------------------------
-- Table structure for osa_game_player
-- ----------------------------
DROP TABLE IF EXISTS `osa_game_player`;
CREATE TABLE `osa_game_player` (
  `player_id` bigint(20) NOT NULL,
  `open_id` varchar(50) DEFAULT NULL,
  `world_id` varchar(20) DEFAULT NULL,
  `role_name` varchar(50) DEFAULT NULL,
  `level` int(11) DEFAULT '1',
  `cur_money` double(12,2) DEFAULT '0.00',
  `total_money` double(12,2) DEFAULT '0.00',
  `isonline` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '1',
  `last_login_ip` varchar(20) DEFAULT NULL,
  `last_login_time` varchar(20) DEFAULT NULL,
  `vip_level` int(11) DEFAULT '0',
  `app_id` varchar(50) DEFAULT NULL COMMENT '应用id',
  `invite_code` varchar(255) DEFAULT NULL COMMENT '邀请码',
  `real_name` varchar(255) DEFAULT '' COMMENT '姓名',
  `card_id` varchar(255) DEFAULT '0' COMMENT '身份证id',
  `invite_time` datetime DEFAULT NULL COMMENT '邀请时间',
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`player_id`),
  KEY `open_id` (`open_id`) USING BTREE,
  KEY `invite_code` (`invite_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='热血七龙珠账号表';

-- ----------------------------
-- Records of osa_game_player
-- ----------------------------
INSERT INTO `osa_game_player` VALUES ('1000162', '1', '1001', '1', '1', '1.00', null, '1', '1', '192.168.0.189', '2017-09-22 17:32:02', null, '1', '17776', null, null, null, '2017-10-19 16:53:15');
INSERT INTO `osa_game_player` VALUES ('1000163', '2', '1001', '2', '1', '0.00', null, '1', '1', '192.168.0.189', '2017-09-22 17:32:05', null, '1', '', null, null, null, '2017-10-11 15:30:29');
INSERT INTO `osa_game_player` VALUES ('1000164', '3', '1001', '3', '1', '0.00', null, '1', '1', '192.168.0.189', '2017-09-22 17:32:17', null, '1', '', null, null, null, '2017-10-11 15:30:29');
INSERT INTO `osa_game_player` VALUES ('1000165', '4', '1001', '4', '1', '0.00', null, '1', '1', '192.168.0.189', '2017-09-22 17:32:21', null, '1', '', null, null, null, '2017-10-11 15:31:01');
INSERT INTO `osa_game_player` VALUES ('1000218', '6', '1001', '6', '1', '0.00', null, '1', '1', '192.168.0.189', '2017-09-22 11:21:54', null, '1', '', null, null, null, '2017-10-11 15:30:30');
INSERT INTO `osa_game_player` VALUES ('1000226', 'b11', '1001', 'b11', null, '0.00', null, null, null, null, null, null, '1', '', null, null, null, '2017-10-11 15:30:31');
INSERT INTO `osa_game_player` VALUES ('1000227', 'b12', '1001', 'b12', null, '0.00', null, null, null, null, null, null, '1', '', null, null, null, '2017-10-11 15:30:32');
INSERT INTO `osa_game_player` VALUES ('1000228', 'b13', '1001', 'b13', null, '0.00', null, null, null, null, null, null, '1', '', null, null, null, '2017-10-11 15:30:55');
INSERT INTO `osa_game_player` VALUES ('1000229', 'b14', '1001', 'b14', null, null, null, null, null, null, null, null, '1', '', null, null, null, '2017-09-22 17:23:02');

-- ----------------------------
-- Table structure for osa_game_world
-- ----------------------------
DROP TABLE IF EXISTS `osa_game_world`;
CREATE TABLE `osa_game_world` (
  `id` bigint(20) NOT NULL COMMENT '内部编号',
  `app_id` varchar(20) DEFAULT NULL,
  `w_name` varchar(100) DEFAULT NULL,
  `world_id` varchar(20) DEFAULT NULL COMMENT '唯一',
  `status` varchar(2) DEFAULT NULL,
  `domain` varchar(50) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `server_url` varchar(100) DEFAULT NULL,
  `info` varchar(1024) DEFAULT NULL,
  `ismingle` varchar(4) DEFAULT '0' COMMENT '1: 是 0：不是',
  `time` datetime DEFAULT NULL,
  `open_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `world_id` (`world_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of osa_game_world
-- ----------------------------
INSERT INTO `osa_game_world` VALUES ('10', 'game1001', '局域网', '1001', '1', '192.168.0.189', '192.168.0.189', '3102', '', '0', null, '2014-06-05 00:00:00');

-- ----------------------------
-- Table structure for osa_gm_forbidmsg
-- ----------------------------
DROP TABLE IF EXISTS `osa_gm_forbidmsg`;
CREATE TABLE `osa_gm_forbidmsg` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ptype` int(11) DEFAULT NULL COMMENT '1:账号 2:：角色',
  `open_id` varchar(50) DEFAULT NULL,
  `app_id` varchar(20) DEFAULT NULL,
  `world_id` varchar(20) DEFAULT NULL,
  `opttype` int(11) DEFAULT NULL,
  `forbidtime` int(11) DEFAULT NULL COMMENT '单位分钟',
  `ip` varchar(20) DEFAULT NULL,
  `msg` varchar(1000) DEFAULT NULL,
  `optres` varchar(100) DEFAULT NULL,
  `opttime` varchar(20) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of osa_gm_forbidmsg
-- ----------------------------
INSERT INTO `osa_gm_forbidmsg` VALUES ('1', '1', '321654', null, '10', '5050', '10', null, '不想看到你', '成功', '2017-06-27 17:01:41', 'admin');
INSERT INTO `osa_gm_forbidmsg` VALUES ('2', '1', '321654', null, '10', '5051', null, null, '', '成功', '2017-06-27 17:03:17', 'admin');
INSERT INTO `osa_gm_forbidmsg` VALUES ('3', null, null, null, '10', '5052', null, '192.168.0.189', '想禁你', '成功', '2017-06-27 17:06:41', 'admin');
INSERT INTO `osa_gm_forbidmsg` VALUES ('4', null, null, null, '10', '5052', null, '192.168.0.189', '想禁你', '成功', '2017-06-27 17:08:25', 'admin');
INSERT INTO `osa_gm_forbidmsg` VALUES ('5', null, null, null, '10', '5053', null, '192.168.0.189', '想解你', '成功', '2017-06-27 17:16:47', 'admin');
INSERT INTO `osa_gm_forbidmsg` VALUES ('6', null, null, null, '10', '5052', null, '192.168.0.189', '', '成功', '2017-06-27 17:19:23', 'admin');
INSERT INTO `osa_gm_forbidmsg` VALUES ('7', null, null, null, '10', '5053', null, '192.168.0.189', '', '成功', '2017-06-27 17:20:06', 'admin');
INSERT INTO `osa_gm_forbidmsg` VALUES ('8', null, null, null, '10', '5053', null, '192.168.0.189', '', '成功', '2017-06-27 17:22:49', 'admin');
INSERT INTO `osa_gm_forbidmsg` VALUES ('9', null, null, null, '10', '5052', null, '192.168.0.189', '', '成功', '2017-06-27 17:24:23', 'admin');
INSERT INTO `osa_gm_forbidmsg` VALUES ('10', '1', '321654', null, '10', '5060', null, null, '禁止登录', '失败-2', '2017-06-27 17:27:20', 'admin');
INSERT INTO `osa_gm_forbidmsg` VALUES ('11', '1', '321654', null, '10', '5060', null, null, '禁止登录', '成功', '2017-06-27 17:28:55', 'admin');
INSERT INTO `osa_gm_forbidmsg` VALUES ('12', '1', '321654', null, '10', '5061', null, null, '', '成功', '2017-06-27 17:32:05', 'admin');
INSERT INTO `osa_gm_forbidmsg` VALUES ('13', '1', '321654', null, '10', '5070', null, null, '', '成功', '2017-06-27 17:34:22', 'admin');
INSERT INTO `osa_gm_forbidmsg` VALUES ('14', '1', '321654', null, '10', '5070', null, null, '', '成功', '2017-06-27 17:35:15', 'admin');
INSERT INTO `osa_gm_forbidmsg` VALUES ('15', '1', '321654', null, '10', '5070', null, null, '', '成功', '2017-06-27 17:37:52', 'admin');
INSERT INTO `osa_gm_forbidmsg` VALUES ('16', '1', '321654', null, '10', '5070', null, null, '', '成功', '2017-06-27 17:40:02', 'admin');
INSERT INTO `osa_gm_forbidmsg` VALUES ('17', '1', '321654', null, '10', '5070', null, null, '', '成功', '2017-06-27 17:53:05', 'admin');
INSERT INTO `osa_gm_forbidmsg` VALUES ('18', '1', '321654', null, '10', '5070', null, null, '', '成功', '2017-06-27 18:02:24', 'admin');
INSERT INTO `osa_gm_forbidmsg` VALUES ('19', '1', '321654', null, '10', '5070', null, null, '', '成功', '2017-06-27 18:10:30', 'admin');

-- ----------------------------
-- Table structure for osa_gm_notice
-- ----------------------------
DROP TABLE IF EXISTS `osa_gm_notice`;
CREATE TABLE `osa_gm_notice` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app_id` varchar(20) DEFAULT NULL,
  `world_id` varchar(20) DEFAULT NULL,
  `type` int(11) DEFAULT '1' COMMENT '1：一次性  2：循环',
  `content` varchar(1000) DEFAULT NULL,
  `msg` varchar(1000) DEFAULT NULL,
  `optres` varchar(100) DEFAULT NULL,
  `opttime` varchar(20) DEFAULT NULL,
  `user_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of osa_gm_notice
-- ----------------------------
INSERT INTO `osa_gm_notice` VALUES ('1', 'game1001', '10', '1', '公千柑 工有去 苛工', '', '成功', '2017-06-27 18:12:01', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('2', 'game1001', '10', '2', '看下净利要', '', '成功', '2017-06-27 18:12:50', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('3', 'game1001', '10', '2', '我相看看地', '', '成功', '2017-06-27 18:16:00', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('4', 'game1001', '10', '2', '大规模', '', '成功', '2017-06-27 18:29:44', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('5', 'game1001', '10', '1', '春树暮云 棋工仍解体你', '', '成功', '2017-06-27 18:39:29', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('6', 'game1001', '10', '1', '脏爸爸我', '', '成功', '2017-06-27 18:43:42', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('7', 'game1001', '10', '1', '须苛在人有在', '', '成功', '2017-06-27 18:44:56', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('8', 'game1001', '10', '1', 'ewee dsf as', '', '成功', '2017-06-27 18:46:02', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('9', 'game1001', '10', '2', '56416', '', '成功', '2017-06-27 19:05:39', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('10', 'game1001', '10', '2', '56416', '', '成功', '2017-06-27 19:05:40', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('11', 'game1001', '10', '2', '56416', '', '成功', '2017-06-27 19:05:50', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('12', 'game1001', '10', '2', '56416', '', '成功', '2017-06-27 19:06:00', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('13', 'game1001', '10', '2', '56416', '', '成功', '2017-06-27 19:06:10', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('14', 'game1001', '10', '2', '56416', '', '成功', '2017-06-27 19:06:20', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('15', 'game1001', '10', '2', 'ewtrwet vwertwe r', '', '成功', '2017-06-27 19:07:10', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('16', 'game1001', '10', '2', 'ewtrwet vwertwe r', '', '成功', '2017-06-27 19:07:20', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('17', 'game1001', '10', '2', 'ewtrwet vwertwe r', '', '成功', '2017-06-27 19:07:40', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('18', 'game1001', '10', '2', 'ewtrwet vwertwe r', '', '成功', '2017-06-27 19:08:10', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('19', 'game1001', '10', '1', '今天发到客户端!!', '', '成功', '2017-06-29 09:30:35', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('20', 'game1001', '10', '2', '收到请回复!!!!', '', '成功', '2017-06-29 09:32:30', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('21', 'game1001', '10', '2', '收到请回复!!!!', '', '成功', '2017-06-29 09:32:50', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('22', 'game1001', '10', '2', '收到请回复!!!!', '', '成功', '2017-06-29 09:33:00', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('23', 'game1001', '10', '2', '收到请回复!!!!', '', '成功', '2017-06-29 09:33:10', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('24', 'game1001', '10', '2', '收到请回复!!!!', '', '成功', '2017-06-29 09:33:20', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('25', 'game1001', '10', '2', '收到请回复!!!!', '', '成功', '2017-06-29 09:33:30', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('26', 'game1001', '10', '2', '收到请回复!!!!', '', '成功', '2017-06-29 09:33:40', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('27', 'game1001', '10', '2', '收到请回复!!!!', '', '成功', '2017-06-29 09:34:00', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('28', 'game1001', '10', '2', '收到请回复!!!!', '', '成功', '2017-06-29 09:34:20', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('29', 'game1001', '10', '2', '收到请回复!!!!', '', '成功', '2017-06-29 09:34:30', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('30', 'game1001', '10', '2', '收到请回复!!!!', '', '成功', '2017-06-29 09:34:40', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('31', 'game1001', '10', '2', '收到请回复!!!!', '', '成功', '2017-06-29 09:35:00', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('32', 'game1001', '10', '2', '收到请回复!!!!', '', '成功', '2017-06-29 09:35:10', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('33', 'game1001', '10', '2', '收到请回复!!!!', '', '成功', '2017-06-29 09:35:20', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('34', 'game1001', '10', '2', '收到请回复!!!!', '', '成功', '2017-06-29 09:35:30', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('35', 'game1001', '10', '2', '收到请回复!!!!', '', '成功', '2017-06-29 09:35:40', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('36', 'game1001', '10', '2', '收到请回复!!!!', '', '成功', '2017-06-29 09:35:50', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('37', 'game1001', '10', '2', '收到请回复!!!!', '', '成功', '2017-06-29 09:36:00', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('38', 'game1001', '10', '2', '收到请回复!!!!', '', '成功', '2017-06-29 09:36:10', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('39', 'game1001', '10', '2', '收到请回复!!!!', '', '成功', '2017-06-29 09:36:20', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('40', 'game1001', '10', '2', '收到请回复!!!!', '', '成功', '2017-06-29 09:36:30', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('41', 'game1001', '10', '2', '收到请回复!!!!', '', '成功', '2017-06-29 09:36:40', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('42', 'game1001', '10', '2', '今天没影慕林杉在', '', '成功', '2017-06-29 09:36:40', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('43', 'game1001', '10', '2', '收到请回复!!!!', '', '成功', '2017-06-29 09:36:50', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('44', 'game1001', '10', '2', '今天没影慕林杉在', '', '成功', '2017-06-29 09:36:50', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('45', 'game1001', '10', '2', '收到请回复!!!!', '', '成功', '2017-06-29 09:37:00', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('46', 'game1001', '10', '2', '今天没影慕林杉在', '', '成功', '2017-06-29 09:37:00', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('47', 'game1001', '10', '2', '收到请回复!!!!', '', '成功', '2017-06-29 09:37:10', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('48', 'game1001', '10', '2', '今天没影慕林杉在', '', '成功', '2017-06-29 09:37:10', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('49', 'game1001', '10', '2', '收到请回复!!!!', '', '成功', '2017-06-29 09:37:20', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('50', 'game1001', '10', '2', '今天没影慕林杉在', '', '成功', '2017-06-29 09:37:20', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('51', 'game1001', '10', '2', '今天没影慕林杉在', '', '成功', '2017-06-29 09:37:30', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('52', 'game1001', '10', '2', '今天没影慕林杉在', '', '成功', '2017-06-29 09:37:40', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('53', 'game1001', '10', '2', '今天没影慕林杉在', '', '成功', '2017-06-29 09:37:50', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('54', 'game1001', '10', '2', '今天没影慕林杉在', '', '成功', '2017-06-29 09:38:00', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('55', 'game1001', '10', '2', '今天没影慕林杉在', '', '成功', '2017-06-29 09:38:10', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('56', 'game1001', '10', '2', '今天没影慕林杉在', '', '成功', '2017-06-29 09:38:20', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('57', 'game1001', '10', '2', '今天没影慕林杉在', '', '成功', '2017-06-29 09:38:30', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('58', 'game1001', '10', '2', '今天没影慕林杉在', '', '成功', '2017-06-29 09:38:40', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('59', 'game1001', '10', '2', '今天没影慕林杉在', '', '成功', '2017-06-29 09:38:50', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('60', 'game1001', '10', '2', '今天没影慕林杉在', '', '成功', '2017-06-29 09:39:00', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('61', 'game1001', '10', '2', '今天没影慕林杉在', '', '成功', '2017-06-29 09:39:10', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('62', 'game1001', '10', '2', '今天没影慕林杉在', '', '成功', '2017-06-29 09:39:20', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('63', 'game1001', '10', '2', '今天没影慕林杉在', '', '成功', '2017-06-29 09:39:30', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('64', 'game1001', '10', '2', '今天没影慕林杉在', '', '成功', '2017-06-29 09:39:40', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('65', 'game1001', '10', '2', '今天没影慕林杉在', '', '成功', '2017-06-29 09:39:50', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('66', 'game1001', '10', '2', '今天没影慕林杉在', '', '成功', '2017-06-29 09:40:00', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('67', 'game1001', '10', '2', '今天没影慕林杉在', '', '成功', '2017-06-29 09:40:10', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('68', 'game1001', '10', '2', '今天没影慕林杉在', '', '成功', '2017-06-29 09:40:20', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('69', 'game1001', '10', '2', '今天没影慕林杉在', '', '成功', '2017-06-29 09:40:30', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('70', 'game1001', '10', '2', '春树暮云春树暮云大苏打', '', '成功', '2017-06-29 09:43:10', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('71', 'game1001', '10', '2', '春树暮云春树暮云大苏打', '', '成功', '2017-06-29 09:43:20', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('72', 'game1001', '10', '2', '春树暮云春树暮云大苏打', '', '成功', '2017-06-29 09:43:30', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('73', 'game1001', '10', '2', '春树暮云春树暮云大苏打', '', '成功', '2017-06-29 09:43:40', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('74', 'game1001', '10', '2', '春树暮云春树暮云大苏打', '', '成功', '2017-06-29 09:43:50', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('75', 'game1001', '10', '2', '春树暮云春树暮云大苏打', '', '成功', '2017-06-29 09:44:00', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('76', 'game1001', '10', '2', '春树暮云春树暮云大苏打', '', '成功', '2017-06-29 09:44:10', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('77', 'game1001', '10', '2', '春树暮云春树暮云大苏打', '', '成功', '2017-06-29 09:44:20', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('78', 'game1001', '10', '2', '春树暮云春树暮云大苏打', '', '成功', '2017-06-29 09:44:30', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('79', 'game1001', '10', '2', '春树暮云春树暮云大苏打', '', '成功', '2017-06-29 09:44:40', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('80', 'game1001', '10', '2', '春树暮云春树暮云大苏打', '', '成功', '2017-06-29 09:44:50', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('81', 'game1001', '10', '2', '春树暮云春树暮云大苏打', '', '成功', '2017-06-29 09:45:00', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('82', 'game1001', '10', '2', '春树暮云春树暮云大苏打', '', '成功', '2017-06-29 09:45:10', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('83', 'game1001', '10', '2', '春树暮云春树暮云大苏打', '', '成功', '2017-06-29 09:45:20', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('84', 'game1001', '10', '2', '春树暮云春树暮云大苏打', '', '成功', '2017-06-29 09:45:30', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('85', 'game1001', '10', '2', '春树暮云春树暮云大苏打', '', '成功', '2017-06-29 09:45:40', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('86', 'game1001', '10', '2', '春树暮云春树暮云大苏打', '', '成功', '2017-06-29 09:45:50', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('87', 'game1001', '10', '2', '春树暮云春树暮云大苏打', '', '成功', '2017-06-29 09:46:00', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('88', 'game1001', '10', '2', '春树暮云春树暮云大苏打', '', '成功', '2017-06-29 09:46:10', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('89', 'game1001', '10', '2', '春树暮云春树暮云大苏打', '', '成功', '2017-06-29 09:46:20', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('90', 'game1001', '10', '2', '春树暮云春树暮云大苏打', '', '成功', '2017-06-29 09:46:30', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('91', 'game1001', '10', '2', '春树暮云春树暮云大苏打', '', '成功', '2017-06-29 09:46:40', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('92', 'game1001', '10', '2', '春树暮云春树暮云大苏打', '', '成功', '2017-06-29 09:46:50', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('93', 'game1001', '10', '2', '春树暮云春树暮云大苏打', '', '成功', '2017-06-29 09:47:00', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('94', 'game1001', '10', '2', '春树暮云春树暮云大苏打', '', '成功', '2017-06-29 09:47:10', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('95', 'game1001', '10', '2', '春树暮云春树暮云大苏打', '', '成功', '2017-06-29 09:47:20', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('96', 'game1001', '10', '2', '春树暮云春树暮云大苏打', '', '成功', '2017-06-29 09:47:30', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('97', 'game1001', '10', '2', '春树暮云春树暮云大苏打', '', '成功', '2017-06-29 09:47:40', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('98', 'game1001', '10', '2', '春树暮云春树暮云大苏打', '', '成功', '2017-06-29 09:47:50', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('99', 'game1001', '10', '2', '春树暮云春树暮云大苏打', '', '成功', '2017-06-29 09:48:00', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('100', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 09:51:10', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('101', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 09:51:20', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('102', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 09:51:30', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('103', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 09:51:40', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('104', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 09:51:50', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('105', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 09:52:00', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('106', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 09:52:10', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('107', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 09:52:20', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('108', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 09:52:30', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('109', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 09:52:40', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('110', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 09:52:50', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('111', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 09:53:00', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('112', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 09:53:10', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('113', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 09:53:20', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('114', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 09:53:30', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('115', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 09:53:40', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('116', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 09:53:50', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('117', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 09:54:00', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('118', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 09:54:10', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('119', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 09:54:20', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('120', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 09:54:30', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('121', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 09:54:40', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('122', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 09:54:50', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('123', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 09:55:00', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('124', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 09:55:10', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('125', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 09:55:20', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('126', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 09:55:30', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('127', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 09:55:40', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('128', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 09:55:50', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('129', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 09:56:00', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('130', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 09:56:10', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('131', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 09:56:20', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('132', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 09:56:30', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('133', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 09:56:40', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('134', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 09:56:50', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('135', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 09:57:00', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('136', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 09:57:10', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('137', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 09:57:20', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('138', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 09:57:30', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('139', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 09:57:40', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('140', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 09:57:50', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('141', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 09:58:00', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('142', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 09:58:10', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('143', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 09:58:20', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('144', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 09:58:30', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('145', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 09:58:40', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('146', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 09:58:50', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('147', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 09:59:00', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('148', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 09:59:10', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('149', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 09:59:20', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('150', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 09:59:30', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('151', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 09:59:40', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('152', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 09:59:50', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('153', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 10:00:00', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('154', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 10:00:10', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('155', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 10:00:20', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('156', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 10:00:30', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('157', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 10:00:40', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('158', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 10:00:50', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('159', 'game1001', '10', '2', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '成功', '2017-06-29 10:01:00', '胡君琳');
INSERT INTO `osa_gm_notice` VALUES ('160', 'game1001', '10', '1', '左栽李斐莉雪茜阿斯蒂芬 仍然奇才阿斯蒂芬 模压 大法师阿斯蒂芬 阿斯蒂芬 李斐莉雪霜期地仍枯萎', '在有地', '成功', '2017-08-14 15:59:17', '胡君琳');

-- ----------------------------
-- Table structure for osa_gm_notice_cycle
-- ----------------------------
DROP TABLE IF EXISTS `osa_gm_notice_cycle`;
CREATE TABLE `osa_gm_notice_cycle` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app_id` varchar(20) DEFAULT NULL,
  `world_id` varchar(20) DEFAULT NULL,
  `type` int(11) DEFAULT '1' COMMENT '1：一次性  2：循环',
  `cycletime` int(11) DEFAULT '1',
  `content` varchar(1000) DEFAULT NULL,
  `msg` varchar(1000) DEFAULT NULL,
  `opttime` varchar(20) DEFAULT NULL,
  `user_name` varchar(30) DEFAULT NULL,
  `settime` varchar(20) DEFAULT NULL,
  `status` varchar(2) DEFAULT '1' COMMENT '1:活跃  0：停止',
  `last_send_time` bigint(20) DEFAULT '0' COMMENT '记录上次发送时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=918715917628604417 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of osa_gm_notice_cycle
-- ----------------------------
INSERT INTO `osa_gm_notice_cycle` VALUES ('1', 'game1001', '10', '2', '10', '看下净利要', '', '2017-06-27 18:12:50', '胡君琳', '2017-06-27 18:12:48', '0', '0');
INSERT INTO `osa_gm_notice_cycle` VALUES ('2', 'game1001', '10', '2', '10', '我相看看地', '', '2017-06-27 18:16:00', '胡君琳', '2017-06-27 18:15:53', '0', '0');
INSERT INTO `osa_gm_notice_cycle` VALUES ('3', 'game1001', '10', '2', '10', '你们好在基斯柯达茜苛', '', '2017-06-27 18:23:06', '胡君琳', '2017-06-27 18:22:58', '0', '0');
INSERT INTO `osa_gm_notice_cycle` VALUES ('4', 'game1001', '10', '2', '10', '大规模', '', '2017-06-27 18:29:42', '胡君琳', '2017-06-27 18:24:21', '0', '0');
INSERT INTO `osa_gm_notice_cycle` VALUES ('5', 'game1001', '10', '2', '10', '脸在人仍在基区', '', '2017-06-27 18:45:45', '胡君琳', '2017-06-27 18:33:43', '0', '0');
INSERT INTO `osa_gm_notice_cycle` VALUES ('6', 'game1001', '10', '2', '1', '56416', '', '2017-06-27 19:06:20', '胡君琳', '2017-06-27 19:05:26', '0', '0');
INSERT INTO `osa_gm_notice_cycle` VALUES ('7', 'game1001', '10', '2', '1', 'ewtrwet vwertwe r', '', '2017-06-27 19:07:50', '胡君琳', '2017-06-27 19:07:00', '0', '0');
INSERT INTO `osa_gm_notice_cycle` VALUES ('8', 'game1001', '10', '2', '5', '收到请回复!!!!', '', '2017-06-29 09:37:20', '胡君琳', '2017-06-29 09:32:21', '0', '0');
INSERT INTO `osa_gm_notice_cycle` VALUES ('9', 'game1001', '10', '2', '4', '今天没影慕林杉在', '', '2017-06-29 09:40:30', '胡君琳', '2017-06-29 09:36:32', '0', '0');
INSERT INTO `osa_gm_notice_cycle` VALUES ('10', 'game1001', '10', '2', '5', '春树暮云春树暮云大苏打', '', '2017-06-29 09:48:00', '胡君琳', '2017-06-29 09:43:00', '0', '0');
INSERT INTO `osa_gm_notice_cycle` VALUES ('11', 'game1001', '10', '2', '10', '砌砖厅茜基本斯柯达栽仍欠妥防守打法花木城械棋塔顶', '', '2017-06-29 10:01:00', '胡君琳', '2017-06-29 09:51:07', '0', '0');
INSERT INTO `osa_gm_notice_cycle` VALUES ('12', 'game1001', '10', '2', '1', '收到旗开得胜 加基本面李斐莉雪模压 械栽植', '棋苛', '2017-08-14 16:03:10', '胡君琳', '2017-08-14 16:02:12', '0', '0');
INSERT INTO `osa_gm_notice_cycle` VALUES ('918715917628604416', null, '1001', '2', '1', null, '夺夺阿斯蒂芬 茜模压 茜佛挡杀佛阿斯蒂芬 械棋', '2017-10-13 13:52:50', 'admin', '2017-10-13 13:51:58', '0', '1507873978329');

-- ----------------------------
-- Table structure for osa_gm_notice_left
-- ----------------------------
DROP TABLE IF EXISTS `osa_gm_notice_left`;
CREATE TABLE `osa_gm_notice_left` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(512) DEFAULT '0' COMMENT '内容',
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `app_id` varchar(50) DEFAULT NULL COMMENT 'appid',
  `world_id` varchar(50) DEFAULT NULL COMMENT '服务器id',
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `status` int(11) DEFAULT '0' COMMENT '1=成功',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of osa_gm_notice_left
-- ----------------------------
INSERT INTO `osa_gm_notice_left` VALUES ('42', '\\upload\\img\\\\goods-4.jpg', '2017-10-13 11:21:41', 'game1001', '1001', '公告', null);

-- ----------------------------
-- Table structure for osa_gm_send_money
-- ----------------------------
DROP TABLE IF EXISTS `osa_gm_send_money`;
CREATE TABLE `osa_gm_send_money` (
  `id` bigint(20) NOT NULL,
  `app_id` varchar(20) DEFAULT NULL,
  `world_id` varchar(20) DEFAULT NULL,
  `type` int(11) DEFAULT '1' COMMENT '1：指定账号  2：全服',
  `content` varchar(2000) DEFAULT NULL,
  `addtime` varchar(20) DEFAULT NULL,
  `user_name` varchar(30) DEFAULT NULL,
  `status` varchar(20) DEFAULT '0',
  `checkmsg` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of osa_gm_send_money
-- ----------------------------
INSERT INTO `osa_gm_send_money` VALUES ('1', 'game1001', '10', '1', '1000', '2017-06-27 19:30:33', '胡君琳', '0', null);

-- ----------------------------
-- Table structure for osa_gm_send_money_pay
-- ----------------------------
DROP TABLE IF EXISTS `osa_gm_send_money_pay`;
CREATE TABLE `osa_gm_send_money_pay` (
  `app_id` varchar(20) DEFAULT NULL,
  `world_id` varchar(20) DEFAULT NULL,
  `open_id` varchar(50) DEFAULT NULL COMMENT '被发放帐号',
  `money` double(12,2) DEFAULT NULL,
  `send_name` varchar(255) DEFAULT NULL COMMENT '发放人',
  `status` int(11) DEFAULT '1',
  `info` varchar(1000) DEFAULT NULL,
  `add_time` datetime DEFAULT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of osa_gm_send_money_pay
-- ----------------------------

-- ----------------------------
-- Table structure for osa_login_log
-- ----------------------------
DROP TABLE IF EXISTS `osa_login_log`;
CREATE TABLE `osa_login_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `world_id` varchar(20) DEFAULT NULL,
  `user_ip` varchar(20) DEFAULT NULL,
  `login_time` datetime DEFAULT NULL,
  `open_id` varchar(50) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `role_name` varchar(50) DEFAULT NULL,
  `addtime` varchar(20) DEFAULT NULL,
  `app_id` varchar(50) DEFAULT NULL COMMENT '应用id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=723 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of osa_login_log
-- ----------------------------
INSERT INTO `osa_login_log` VALUES ('1', '1001', '192.168.0.189', '2017-06-27 17:33:52', '321654', '1', 'c:esmj879611060301070336', '2017-06-27 17:33:53', '1');
INSERT INTO `osa_login_log` VALUES ('2', '1001', '192.168.0.189', '2017-06-27 17:39:45', '321654', '1', 'c:esmj879611060301070336', '2017-06-27 17:39:45', '1');
INSERT INTO `osa_login_log` VALUES ('3', '1001', '192.168.0.189', '2017-06-27 17:42:14', '321654', '1', 'c:esmj879611060301070336', '2017-06-27 17:42:14', '1');
INSERT INTO `osa_login_log` VALUES ('4', '1001', '192.168.0.189', '2017-06-27 17:54:13', '321654', '1', 'c:esmj879611060301070336', '2017-06-27 17:54:18', '1');
INSERT INTO `osa_login_log` VALUES ('5', '1001', '192.168.0.189', '2017-06-27 17:57:21', '321654', '1', 'c:esmj879611060301070336', '2017-06-27 17:57:21', '1');
INSERT INTO `osa_login_log` VALUES ('6', '1001', '192.168.0.189', '2017-06-27 18:01:18', '321654', '1', 'c:esmj879611060301070336', '2017-06-27 18:01:18', '1');
INSERT INTO `osa_login_log` VALUES ('7', '1001', '192.168.0.189', '2017-06-27 18:04:35', '321654', '1', 'c:esmj879611060301070336', '2017-06-27 18:04:35', '1');
INSERT INTO `osa_login_log` VALUES ('8', '1001', '192.168.0.189', '2017-06-27 18:09:49', '321654', '1', 'c:esmj879611060301070336', '2017-06-27 18:09:49', '1');
INSERT INTO `osa_login_log` VALUES ('9', '1001', '192.168.0.189', '2017-06-27 18:11:21', '321654', '1', 'c:esmj879611060301070336', '2017-06-27 18:11:21', '1');
INSERT INTO `osa_login_log` VALUES ('10', '1001', '192.168.0.189', '2017-06-27 18:22:28', '321654', '1', 'c:esmj879611060301070336', '2017-06-27 18:22:31', '1');
INSERT INTO `osa_login_log` VALUES ('11', '1001', '192.168.0.189', '2017-06-27 19:03:45', '321654', '1', 'c:esmj879611060301070336', '2017-06-27 19:03:51', '1');
INSERT INTO `osa_login_log` VALUES ('12', '1001', '192.168.0.65', '2017-06-29 14:36:42', 'zyj', '1', 'c:eW2bico', '2017-06-29 14:36:51', '1');
INSERT INTO `osa_login_log` VALUES ('13', '1001', '192.168.0.65', '2017-06-29 14:46:13', 'zyj', '1', 'c:eW2bico', '2017-06-29 14:46:14', '1');
INSERT INTO `osa_login_log` VALUES ('14', '1001', '192.168.0.65', '2017-06-29 14:47:17', 'jyz', '1', 'c:ec0OSMt', '2017-06-29 14:47:17', '1');
INSERT INTO `osa_login_log` VALUES ('15', '1001', '192.168.0.65', '2017-06-29 14:52:17', 'jyz', '1', 'c:ec0OSMt', '2017-06-29 14:52:17', '1');
INSERT INTO `osa_login_log` VALUES ('16', '1001', '192.168.0.65', '2017-06-29 14:53:33', 'jyz', '1', 'c:ec0OSMt', '2017-06-29 14:53:33', '1');
INSERT INTO `osa_login_log` VALUES ('17', '1001', '192.168.0.65', '2017-06-29 14:54:38', 'jyz', '1', 'c:ec0OSMt', '2017-06-29 14:54:38', '1');
INSERT INTO `osa_login_log` VALUES ('18', '1001', '192.168.0.65', '2017-06-29 15:23:34', 'jyz', '1', 'c:ec0OSMt', '2017-06-29 15:23:36', '1');
INSERT INTO `osa_login_log` VALUES ('19', '1001', '192.168.0.65', '2017-06-29 15:24:53', 'jyz', '1', 'c:ec0OSMt', '2017-06-29 15:24:53', '1');
INSERT INTO `osa_login_log` VALUES ('20', '1001', '192.168.0.65', '2017-07-03 18:47:00', '3123', '1', 'c:e3OO3zw', '2017-07-03 18:47:10', '1');
INSERT INTO `osa_login_log` VALUES ('21', '1001', '192.168.0.65', '2017-07-03 18:55:22', '3123', '1', 'c:e3OO3zw', '2017-07-03 18:55:22', '1');
INSERT INTO `osa_login_log` VALUES ('22', '1001', '192.168.0.65', '2017-07-03 18:57:08', '3123', '1', 'c:e3OO3zw', '2017-07-03 18:57:08', '1');
INSERT INTO `osa_login_log` VALUES ('23', '1001', '192.168.0.65', '2017-07-04 10:52:39', '1233', '1', 'c:eSvldzV', '2017-07-04 10:52:39', '1');
INSERT INTO `osa_login_log` VALUES ('24', '1001', '192.168.0.65', '2017-07-04 10:58:03', '1233', '1', 'c:eSvldzV', '2017-07-04 10:58:03', '1');
INSERT INTO `osa_login_log` VALUES ('25', '1001', '192.168.0.65', '2017-07-04 11:00:43', '1233', '1', 'c:eSvldzV', '2017-07-04 11:00:43', '1');
INSERT INTO `osa_login_log` VALUES ('26', '1001', '192.168.0.65', '2017-07-04 11:09:07', '1233', '1', 'c:eSvldzV', '2017-07-04 11:09:07', '1');
INSERT INTO `osa_login_log` VALUES ('27', '1001', '192.168.0.65', '2017-07-04 11:39:11', '3123', '1', 'c:e3OO3zw', '2017-07-04 11:39:11', '1');
INSERT INTO `osa_login_log` VALUES ('28', '1001', '192.168.0.65', '2017-07-04 11:42:14', '1233', '1', 'c:eSvldzV', '2017-07-04 11:43:23', '1');
INSERT INTO `osa_login_log` VALUES ('29', '1001', '192.168.0.65', '2017-07-04 11:47:30', '1233', '1', 'c:eSvldzV', '2017-07-04 11:47:30', '1');
INSERT INTO `osa_login_log` VALUES ('30', '1001', '192.168.0.65', '2017-07-04 11:52:59', '1233', '1', 'c:eSvldzV', '2017-07-04 11:52:59', '1');
INSERT INTO `osa_login_log` VALUES ('31', '1001', '192.168.0.65', '2017-07-04 11:57:03', '1233', '1', 'c:eSvldzV', '2017-07-04 11:57:03', '1');
INSERT INTO `osa_login_log` VALUES ('32', '1001', '192.168.0.65', '2017-07-04 12:03:43', '1233', '1', 'c:eSvldzV', '2017-07-04 12:03:43', '1');
INSERT INTO `osa_login_log` VALUES ('33', '1001', '192.168.0.65', '2017-07-04 13:38:52', '1233', '1', 'c:eSvldzV', '2017-07-04 13:38:52', '1');
INSERT INTO `osa_login_log` VALUES ('34', '1001', '192.168.0.65', '2017-07-04 13:42:59', '1233', '1', 'c:eSvldzV', '2017-07-04 13:42:59', '1');
INSERT INTO `osa_login_log` VALUES ('35', '1001', '192.168.0.65', '2017-07-04 13:48:22', '1233', '1', 'c:eSvldzV', '2017-07-04 13:48:22', '1');
INSERT INTO `osa_login_log` VALUES ('36', '1001', '192.168.0.65', '2017-07-04 14:14:12', '1233', '1', 'c:eSvldzV', '2017-07-04 14:14:12', '1');
INSERT INTO `osa_login_log` VALUES ('37', '1001', '192.168.0.65', '2017-07-04 14:16:21', '123', '1', 'c:eA6lJdc', '2017-07-04 14:16:21', '1');
INSERT INTO `osa_login_log` VALUES ('38', '1001', '192.168.0.65', '2017-07-04 14:18:21', '123', '1', 'c:eA6lJdc', '2017-07-04 14:18:21', '1');
INSERT INTO `osa_login_log` VALUES ('39', '1001', '192.168.0.65', '2017-07-04 14:20:31', '1233', '1', 'c:eSvldzV', '2017-07-04 14:20:31', '1');
INSERT INTO `osa_login_log` VALUES ('40', '1001', '192.168.0.65', '2017-07-04 14:21:16', '1233', '1', 'c:eSvldzV', '2017-07-04 14:21:16', '1');
INSERT INTO `osa_login_log` VALUES ('41', '1001', '192.168.0.65', '2017-07-04 14:26:33', '1233', '1', 'c:eSvldzV', '2017-07-04 14:26:33', '1');
INSERT INTO `osa_login_log` VALUES ('42', '1001', '192.168.0.65', '2017-07-04 14:27:21', '1233', '1', 'c:eSvldzV', '2017-07-04 14:27:21', '1');
INSERT INTO `osa_login_log` VALUES ('43', '1001', '192.168.0.65', '2017-07-04 14:28:24', '1233', '1', 'c:eSvldzV', '2017-07-04 14:28:24', '1');
INSERT INTO `osa_login_log` VALUES ('44', '1001', '192.168.0.65', '2017-07-04 14:39:25', '1233', '1', 'c:eSvldzV', '2017-07-04 14:39:26', '1');
INSERT INTO `osa_login_log` VALUES ('45', '1001', '192.168.0.65', '2017-07-04 14:42:53', '123123', '1', 'c-NpTI6s', '2017-07-04 14:42:53', '1');
INSERT INTO `osa_login_log` VALUES ('46', '1001', '192.168.0.65', '2017-07-04 14:46:42', '123', '1', 'c:eA6lJdc', '2017-07-04 14:46:42', '1');
INSERT INTO `osa_login_log` VALUES ('47', '1001', '192.168.0.65', '2017-07-04 14:55:43', '1233', '1', 'c:eSvldzV', '2017-07-04 14:55:44', '1');
INSERT INTO `osa_login_log` VALUES ('48', '1001', '192.168.0.65', '2017-07-04 15:01:29', '1233', '1', 'c:eSvldzV', '2017-07-04 15:01:29', '1');
INSERT INTO `osa_login_log` VALUES ('49', '1001', '192.168.0.65', '2017-07-04 15:03:51', '2', '1', 'c-buwfVH', '2017-07-04 15:03:51', '1');
INSERT INTO `osa_login_log` VALUES ('50', '1001', '192.168.0.65', '2017-07-04 15:07:32', '1233', '1', 'c:eSvldzV', '2017-07-04 15:07:32', '1');
INSERT INTO `osa_login_log` VALUES ('51', '1001', '192.168.0.65', '2017-07-04 15:08:58', '12333', '1', 'c-JK01zY', '2017-07-04 15:08:58', '1');
INSERT INTO `osa_login_log` VALUES ('52', '1001', '192.168.0.65', '2017-07-04 15:29:14', '123', '1', 'c:eA6lJdc', '2017-07-04 15:29:15', '1');
INSERT INTO `osa_login_log` VALUES ('53', '1001', '192.168.0.65', '2017-07-04 15:30:20', '3123', '1', 'c:e3OO3zw', '2017-07-04 15:30:20', '1');
INSERT INTO `osa_login_log` VALUES ('54', '1001', '192.168.0.65', '2017-07-04 15:33:39', '123', '1', 'c:eA6lJdc', '2017-07-04 15:33:39', '1');
INSERT INTO `osa_login_log` VALUES ('55', '1001', '192.168.0.65', '2017-07-04 15:45:00', '3123', '1', 'c:e3OO3zw', '2017-07-04 15:45:00', '1');
INSERT INTO `osa_login_log` VALUES ('56', '1001', '192.168.0.65', '2017-07-04 15:47:00', '1233', '1', 'c:eSvldzV', '2017-07-04 15:47:00', '1');
INSERT INTO `osa_login_log` VALUES ('57', '1001', '192.168.0.65', '2017-07-04 15:48:20', '123', '1', 'c:eA6lJdc', '2017-07-04 15:48:20', '1');
INSERT INTO `osa_login_log` VALUES ('58', '1001', '192.168.0.25', '2017-08-07 18:33:13', '617287071432466026', '1', '无敌', '2017-08-07 18:39:30', '1');
INSERT INTO `osa_login_log` VALUES ('59', '1001', '192.168.0.233', '2017-08-10 10:32:41', '4', '1', '无敌', '2017-08-10 10:32:41', '1');
INSERT INTO `osa_login_log` VALUES ('60', '1001', '192.168.0.233', '2017-08-14 10:47:37', '6', '1', '无敌', '2017-08-14 10:47:37', '1');
INSERT INTO `osa_login_log` VALUES ('61', '1001', '192.168.0.233', '2017-08-14 10:48:46', '7', '1', '无敌', '2017-08-14 10:48:46', '1');
INSERT INTO `osa_login_log` VALUES ('62', '1001', '192.168.0.233', '2017-08-14 10:49:45', '3', '1', '无敌', '2017-08-14 10:49:45', '1');
INSERT INTO `osa_login_log` VALUES ('63', '1001', '192.168.0.233', '2017-08-14 10:52:29', '3', '1', '无敌', '2017-08-14 10:52:29', '1');
INSERT INTO `osa_login_log` VALUES ('64', '1001', '192.168.0.233', '2017-08-14 10:53:34', '3', '1', '无敌', '2017-08-14 10:53:34', '1');
INSERT INTO `osa_login_log` VALUES ('65', '1001', '192.168.0.233', '2017-08-14 10:54:28', '3', '1', '无敌', '2017-08-14 10:54:28', '1');
INSERT INTO `osa_login_log` VALUES ('66', '1001', '192.168.0.233', '2017-08-14 10:56:13', '3', '1', '无敌', '2017-08-14 10:56:13', '1');
INSERT INTO `osa_login_log` VALUES ('67', '1001', '192.168.0.233', '2017-08-14 10:57:42', '3', '1', '无敌', '2017-08-14 10:57:42', '1');
INSERT INTO `osa_login_log` VALUES ('68', '1001', '192.168.0.233', '2017-08-14 10:59:26', '3', '1', '无敌', '2017-08-14 10:59:26', '1');
INSERT INTO `osa_login_log` VALUES ('69', '1001', '192.168.0.233', '2017-08-14 11:05:59', '3', '1', '无敌', '2017-08-14 11:05:59', '1');
INSERT INTO `osa_login_log` VALUES ('70', '1001', '192.168.0.233', '2017-08-14 11:23:52', '3', '1', '无敌', '2017-08-14 11:23:52', '1');
INSERT INTO `osa_login_log` VALUES ('71', '1001', '192.168.0.233', '2017-08-14 11:24:58', '3', '1', '无敌', '2017-08-14 11:24:58', '1');
INSERT INTO `osa_login_log` VALUES ('72', '1001', '192.168.0.233', '2017-08-14 11:40:51', '3', '1', '无敌', '2017-08-14 11:40:51', '1');
INSERT INTO `osa_login_log` VALUES ('73', '1001', '192.168.0.233', '2017-08-14 15:40:01', '10', '1', '无敌', '2017-08-14 15:40:01', '1');
INSERT INTO `osa_login_log` VALUES ('74', '1001', '192.168.0.233', '2017-08-16 09:45:55', '3', '1', '无敌', '2017-08-18 10:54:39', '1');
INSERT INTO `osa_login_log` VALUES ('75', '1001', '192.168.0.233', '2017-08-16 09:47:25', '8', '1', '无敌', '2017-08-18 10:54:44', '1');
INSERT INTO `osa_login_log` VALUES ('76', '1001', '192.168.0.233', '2017-08-16 09:47:35', '3', '1', '无敌', '2017-08-18 10:54:46', '1');
INSERT INTO `osa_login_log` VALUES ('77', '1001', '192.168.0.233', '2017-08-16 09:49:37', '3', '1', '无敌', '2017-08-18 10:54:47', '1');
INSERT INTO `osa_login_log` VALUES ('78', '1001', '192.168.0.233', '2017-08-16 10:08:49', '3', '1', '无敌', '2017-08-18 10:54:48', '1');
INSERT INTO `osa_login_log` VALUES ('79', '1001', '192.168.0.233', '2017-08-16 10:12:10', '3', '1', '无敌', '2017-08-18 10:54:49', '1');
INSERT INTO `osa_login_log` VALUES ('80', '1001', '192.168.0.233', '2017-08-16 15:20:47', '8', '1', '无敌', '2017-08-18 10:54:49', '1');
INSERT INTO `osa_login_log` VALUES ('81', '1001', '192.168.0.233', '2017-08-16 15:20:58', '3', '1', '无敌', '2017-08-18 10:54:50', '1');
INSERT INTO `osa_login_log` VALUES ('82', '1001', '192.168.0.233', '2017-08-16 15:34:41', '6', '1', '无敌', '2017-08-18 10:54:50', '1');
INSERT INTO `osa_login_log` VALUES ('83', '1001', '192.168.0.233', '2017-08-16 15:37:57', '6', '1', '无敌', '2017-08-18 10:54:51', '1');
INSERT INTO `osa_login_log` VALUES ('84', '1001', '192.168.0.233', '2017-08-16 15:43:39', '3', '1', '无敌', '2017-08-18 10:54:51', '1');
INSERT INTO `osa_login_log` VALUES ('85', '1001', '192.168.0.233', '2017-09-12 14:16:31', 'r22', '1', 'r22', '2017-09-20 15:30:02', '1');
INSERT INTO `osa_login_log` VALUES ('86', '1001', '192.168.0.233', '2017-09-12 14:23:07', 'test222', '1', 'test222', '2017-09-20 15:30:04', '1');
INSERT INTO `osa_login_log` VALUES ('87', '1001', '192.168.0.233', '2017-09-12 14:58:45', 'o11', '1', 'o11', '2017-09-20 15:30:05', '1');
INSERT INTO `osa_login_log` VALUES ('88', '1001', '192.168.0.233', '2017-09-12 15:02:39', 'ewew', '1', '无敌', '2017-09-20 15:30:06', '1');
INSERT INTO `osa_login_log` VALUES ('89', '1001', '192.168.0.233', '2017-09-12 15:12:55', 'ewewe', '1', 'ewewe', '2017-09-20 15:30:07', '1');
INSERT INTO `osa_login_log` VALUES ('90', '1001', '192.168.0.233', '2017-09-12 15:23:24', 'ewewe', '1', 'ewewe', '2017-09-20 15:30:09', '1');
INSERT INTO `osa_login_log` VALUES ('91', '1001', '192.168.0.233', '2017-09-12 15:25:56', 'eweew', '1', '无敌', '2017-09-20 15:30:09', '1');
INSERT INTO `osa_login_log` VALUES ('92', '1001', '192.168.0.233', '2017-09-12 15:42:57', 'r11', '1', 'r11', '2017-09-20 15:30:11', '1');
INSERT INTO `osa_login_log` VALUES ('93', '1001', '192.168.0.233', '2017-09-12 15:43:15', 'r12', '1', 'r12', '2017-09-20 15:30:11', '1');
INSERT INTO `osa_login_log` VALUES ('94', '1001', '192.168.0.233', '2017-09-12 15:43:21', 'r13', '1', 'r13', '2017-09-20 15:30:11', '1');
INSERT INTO `osa_login_log` VALUES ('95', '1001', '192.168.0.233', '2017-09-12 15:43:32', 'r14', '1', 'r14', '2017-09-20 15:30:11', '1');
INSERT INTO `osa_login_log` VALUES ('96', '1001', '192.168.0.233', '2017-09-12 16:04:52', 't11', '1', 't11', '2017-09-20 15:30:12', '1');
INSERT INTO `osa_login_log` VALUES ('97', '1001', '192.168.0.233', '2017-09-12 16:05:11', 'r12', '1', 'r12', '2017-09-20 15:30:12', '1');
INSERT INTO `osa_login_log` VALUES ('98', '1001', '192.168.0.233', '2017-09-12 16:05:27', 'r13', '1', 'r13', '2017-09-20 15:30:13', '1');
INSERT INTO `osa_login_log` VALUES ('99', '1001', '192.168.0.233', '2017-09-12 16:06:06', 'r14', '1', 'r14', '2017-09-20 15:30:13', '1');
INSERT INTO `osa_login_log` VALUES ('100', '1001', '192.168.0.233', '2017-09-12 16:08:34', 'r11', '1', 'r11', '2017-09-20 15:30:14', '1');
INSERT INTO `osa_login_log` VALUES ('101', '1001', '192.168.0.233', '2017-09-12 16:08:51', 'r12', '1', 'r12', '2017-09-20 15:30:14', '1');
INSERT INTO `osa_login_log` VALUES ('102', '1001', '192.168.0.233', '2017-09-12 16:09:05', 'r13', '1', 'r13', '2017-09-20 15:30:14', '1');
INSERT INTO `osa_login_log` VALUES ('103', '1001', '192.168.0.233', '2017-09-12 16:09:27', 'r14', '1', 'r14', '2017-09-20 15:30:14', '1');
INSERT INTO `osa_login_log` VALUES ('104', '1001', '192.168.0.233', '2017-09-12 16:14:57', 't11', '1', 't11', '2017-09-20 15:30:14', '1');
INSERT INTO `osa_login_log` VALUES ('105', '1001', '192.168.0.233', '2017-09-12 16:15:01', 't12', '1', 't12', '2017-09-20 15:30:14', '1');
INSERT INTO `osa_login_log` VALUES ('106', '1001', '192.168.0.233', '2017-09-12 16:15:43', 't13', '1', 't13', '2017-09-20 15:30:14', '1');
INSERT INTO `osa_login_log` VALUES ('107', '1001', '192.168.0.233', '2017-09-12 16:30:29', 'ewe', '1', 'ewe', '2017-09-20 15:30:15', '1');
INSERT INTO `osa_login_log` VALUES ('108', '1001', '192.168.0.233', '2017-09-12 16:44:56', 't1', '1', 't1', '2017-09-20 15:30:17', '1');
INSERT INTO `osa_login_log` VALUES ('109', '1001', '192.168.0.233', '2017-09-12 16:50:30', 'e11', '1', 'e11', '2017-09-20 15:30:17', '1');
INSERT INTO `osa_login_log` VALUES ('110', '1001', '192.168.0.233', '2017-09-12 16:50:45', 'e12', '1', 'e12', '2017-09-20 15:30:17', '1');
INSERT INTO `osa_login_log` VALUES ('111', '1001', '192.168.0.233', '2017-09-12 16:59:34', 'rrr', '1', '无敌', '2017-09-20 15:30:18', '1');
INSERT INTO `osa_login_log` VALUES ('112', '1001', '192.168.0.233', '2017-09-12 17:00:04', 'er1', '1', 'er1', '2017-09-20 15:30:18', '1');
INSERT INTO `osa_login_log` VALUES ('113', '1001', '192.168.0.233', '2017-09-12 17:26:35', 'ewew', '1', 'ewew', '2017-09-20 15:30:20', '1');
INSERT INTO `osa_login_log` VALUES ('114', '1001', '192.168.0.233', '2017-09-12 18:36:35', 'ytrwty', '1', 'ytrwty', '2017-09-20 15:30:22', '1');
INSERT INTO `osa_login_log` VALUES ('115', '1001', '192.168.0.233', '2017-09-12 19:40:54', 'erwwe', '1', '无敌', '2017-09-20 15:30:26', '1');
INSERT INTO `osa_login_log` VALUES ('116', '1001', '192.168.0.233', '2017-09-12 20:10:41', 'eweew', '1', 'eweew', '2017-09-20 15:30:28', '1');
INSERT INTO `osa_login_log` VALUES ('117', '1001', '192.168.0.233', '2017-09-13 09:28:44', 'qwe1', '1', 'qwe1', '2017-09-20 15:30:29', '1');
INSERT INTO `osa_login_log` VALUES ('118', '1001', '192.168.0.233', '2017-09-13 10:48:48', 'qq1', '1', 'qq1', '2017-09-20 15:30:33', '1');
INSERT INTO `osa_login_log` VALUES ('119', '1001', '192.168.0.233', '2017-09-13 10:54:20', 't11', '1', 't11', '2017-09-20 15:30:34', '1');
INSERT INTO `osa_login_log` VALUES ('120', '1001', '192.168.0.233', '2017-09-13 10:54:31', 't12', '1', 't12', '2017-09-20 15:30:34', '1');
INSERT INTO `osa_login_log` VALUES ('121', '1001', '192.168.0.233', '2017-09-13 10:54:42', 't13', '1', 't13', '2017-09-20 15:30:34', '1');
INSERT INTO `osa_login_log` VALUES ('122', '1001', '192.168.0.233', '2017-09-13 10:54:58', 't14', '1', 't14', '2017-09-20 15:30:34', '1');
INSERT INTO `osa_login_log` VALUES ('123', '1001', '192.168.0.233', '2017-09-13 14:20:05', 'z11', '1', 'z11', '2017-09-20 15:30:36', '1');
INSERT INTO `osa_login_log` VALUES ('124', '1001', '192.168.0.233', '2017-09-13 14:20:11', 'z12', '1', 'z12', '2017-09-20 15:30:36', '1');
INSERT INTO `osa_login_log` VALUES ('125', '1001', '192.168.0.233', '2017-09-13 14:20:33', 'z13', '1', 'z13', '2017-09-20 15:30:37', '1');
INSERT INTO `osa_login_log` VALUES ('126', '1001', '192.168.0.233', '2017-09-13 14:20:44', 'z14', '1', 'z14', '2017-09-20 15:30:37', '1');
INSERT INTO `osa_login_log` VALUES ('127', '1001', '192.168.0.233', '2017-09-13 17:17:25', 'a1', '1', 'a1', '2017-09-20 15:30:40', '1');
INSERT INTO `osa_login_log` VALUES ('128', '1001', '192.168.0.233', '2017-09-13 17:17:33', 'a2', '1', 'a2', '2017-09-20 15:30:41', '1');
INSERT INTO `osa_login_log` VALUES ('129', '1001', '192.168.0.233', '2017-09-13 17:18:00', 'a3', '1', 'a3', '2017-09-20 15:30:41', '1');
INSERT INTO `osa_login_log` VALUES ('130', '1001', '192.168.0.233', '2017-09-13 17:18:09', 'a4', '1', 'a4', '2017-09-20 15:30:41', '1');
INSERT INTO `osa_login_log` VALUES ('131', '1001', '192.168.0.233', '2017-09-13 17:38:11', 'a1', '1', 'a1', '2017-09-20 15:30:42', '1');
INSERT INTO `osa_login_log` VALUES ('132', '1001', '192.168.0.233', '2017-09-13 17:38:15', 'a2', '1', 'a2', '2017-09-20 15:30:42', '1');
INSERT INTO `osa_login_log` VALUES ('133', '1001', '192.168.0.233', '2017-09-13 17:38:51', 'a3', '1', 'a3', '2017-09-20 15:30:42', '1');
INSERT INTO `osa_login_log` VALUES ('134', '1001', '192.168.0.233', '2017-09-13 17:38:54', 'a4', '1', 'a4', '2017-09-20 15:30:42', '1');
INSERT INTO `osa_login_log` VALUES ('135', '1001', '192.168.0.233', '2017-09-14 09:35:40', 'a1', '1', 'a1', '2017-09-20 15:30:45', '1');
INSERT INTO `osa_login_log` VALUES ('136', '1001', '192.168.0.233', '2017-09-14 09:35:58', 'a2', '1', 'a2', '2017-09-20 15:30:45', '1');
INSERT INTO `osa_login_log` VALUES ('137', '1001', '192.168.0.233', '2017-09-14 09:36:24', 'a3', '1', 'a3', '2017-09-20 15:30:45', '1');
INSERT INTO `osa_login_log` VALUES ('138', '1001', '192.168.0.233', '2017-09-14 09:36:34', 'a4', '1', 'a4', '2017-09-20 15:30:45', '1');
INSERT INTO `osa_login_log` VALUES ('139', '1001', '192.168.0.233', '2017-09-14 09:44:04', 'a1', '1', 'a1', '2017-09-20 15:30:46', '1');
INSERT INTO `osa_login_log` VALUES ('140', '1001', '192.168.0.189', '2017-09-14 09:50:27', '1', '1', '1', '2017-09-20 15:30:48', '1');
INSERT INTO `osa_login_log` VALUES ('141', '1001', '192.168.0.189', '2017-09-14 09:50:48', '2', '1', '2', '2017-09-20 15:30:48', '1');
INSERT INTO `osa_login_log` VALUES ('142', '1001', '192.168.0.189', '2017-09-14 09:51:43', '3', '1', '3', '2017-09-20 15:30:49', '1');
INSERT INTO `osa_login_log` VALUES ('143', '1001', '192.168.0.189', '2017-09-14 09:52:11', '4', '1', '4', '2017-09-20 15:30:49', '1');
INSERT INTO `osa_login_log` VALUES ('144', '1001', '192.168.0.189', '2017-09-14 10:18:30', '4', '1', '4', '2017-09-20 15:30:49', '1');
INSERT INTO `osa_login_log` VALUES ('145', '1001', '192.168.0.189', '2017-09-14 10:20:11', '1', '1', '1', '2017-09-20 15:30:50', '1');
INSERT INTO `osa_login_log` VALUES ('146', '1001', '192.168.0.189', '2017-09-14 10:20:35', '2', '1', '2', '2017-09-20 15:30:50', '1');
INSERT INTO `osa_login_log` VALUES ('147', '1001', '192.168.0.189', '2017-09-14 10:21:11', '3', '1', '3', '2017-09-20 15:30:50', '1');
INSERT INTO `osa_login_log` VALUES ('148', '1001', '192.168.0.233', '2017-09-14 10:25:51', 's1', '1', 's1', '2017-09-20 15:30:51', '1');
INSERT INTO `osa_login_log` VALUES ('149', '1001', '192.168.0.233', '2017-09-14 10:25:57', 's2', '1', 's2', '2017-09-20 15:30:51', '1');
INSERT INTO `osa_login_log` VALUES ('150', '1001', '192.168.0.233', '2017-09-14 10:26:27', 's3', '1', 's3', '2017-09-20 15:30:51', '1');
INSERT INTO `osa_login_log` VALUES ('151', '1001', '192.168.0.233', '2017-09-14 10:26:35', 's4', '1', 's4', '2017-09-20 15:30:51', '1');
INSERT INTO `osa_login_log` VALUES ('152', '1001', '192.168.0.189', '2017-09-14 10:28:06', '1', '1', '1', '2017-09-20 15:30:52', '1');
INSERT INTO `osa_login_log` VALUES ('153', '1001', '192.168.0.189', '2017-09-14 10:39:37', '1', '1', '1', '2017-09-20 15:30:54', '1');
INSERT INTO `osa_login_log` VALUES ('154', '1001', '192.168.0.189', '2017-09-14 10:39:41', '2', '1', '2', '2017-09-20 15:30:55', '1');
INSERT INTO `osa_login_log` VALUES ('155', '1001', '192.168.0.189', '2017-09-14 10:40:06', '3', '1', '3', '2017-09-20 15:30:55', '1');
INSERT INTO `osa_login_log` VALUES ('156', '1001', '192.168.0.189', '2017-09-14 10:40:11', '4', '1', '4', '2017-09-20 15:30:55', '1');
INSERT INTO `osa_login_log` VALUES ('157', '1001', '192.168.0.189', '2017-09-14 11:00:02', '11', '1', '11', '2017-09-20 15:30:56', '1');
INSERT INTO `osa_login_log` VALUES ('158', '1001', '192.168.0.189', '2017-09-14 11:00:32', '3', '1', '3', '2017-09-20 15:30:56', '1');
INSERT INTO `osa_login_log` VALUES ('159', '1001', '192.168.0.189', '2017-09-14 11:00:44', '4', '1', '4', '2017-09-20 15:30:57', '1');
INSERT INTO `osa_login_log` VALUES ('160', '1001', '192.168.0.233', '2017-09-14 11:01:20', 'ewqe', '1', 'ewqe', '2017-09-20 15:30:58', '1');
INSERT INTO `osa_login_log` VALUES ('161', '1001', '192.168.0.233', '2017-09-14 11:20:21', 'ewew', '1', 'ewew', '2017-09-20 15:30:59', '1');
INSERT INTO `osa_login_log` VALUES ('162', '1001', '192.168.0.189', '2017-09-14 11:39:33', '1', '1', '1', '2017-09-20 15:30:59', '1');
INSERT INTO `osa_login_log` VALUES ('163', '1001', '192.168.0.189', '2017-09-14 11:40:01', '2', '1', '2', '2017-09-20 15:30:59', '1');
INSERT INTO `osa_login_log` VALUES ('164', '1001', '192.168.0.189', '2017-09-14 11:40:08', '3', '1', '3', '2017-09-20 15:30:59', '1');
INSERT INTO `osa_login_log` VALUES ('165', '1001', '192.168.0.189', '2017-09-14 11:40:22', '4', '1', '4', '2017-09-20 15:30:59', '1');
INSERT INTO `osa_login_log` VALUES ('166', '1001', '192.168.0.189', '2017-09-14 11:58:21', '1', '1', '1', '2017-09-20 15:31:02', '1');
INSERT INTO `osa_login_log` VALUES ('167', '1001', '192.168.0.189', '2017-09-14 11:58:28', '2', '1', '2', '2017-09-20 15:31:02', '1');
INSERT INTO `osa_login_log` VALUES ('168', '1001', '192.168.0.189', '2017-09-14 11:58:34', '3', '1', '3', '2017-09-20 15:31:02', '1');
INSERT INTO `osa_login_log` VALUES ('169', '1001', '192.168.0.189', '2017-09-14 11:58:49', '4', '1', '4', '2017-09-20 15:31:02', '1');
INSERT INTO `osa_login_log` VALUES ('170', '1001', '192.168.0.189', '2017-09-14 13:09:17', '1', '1', '1', '2017-09-20 15:31:02', '1');
INSERT INTO `osa_login_log` VALUES ('171', '1001', '192.168.0.189', '2017-09-14 13:09:18', '3', '1', '3', '2017-09-20 15:31:02', '1');
INSERT INTO `osa_login_log` VALUES ('172', '1001', '192.168.0.189', '2017-09-14 13:09:17', '2', '1', '2', '2017-09-20 15:31:03', '1');
INSERT INTO `osa_login_log` VALUES ('173', '1001', '192.168.0.189', '2017-09-14 13:09:22', '4', '1', '4', '2017-09-20 15:31:03', '1');
INSERT INTO `osa_login_log` VALUES ('174', '1001', '192.168.0.189', '2017-09-14 13:38:12', '1', '1', '1', '2017-09-20 15:31:03', '1');
INSERT INTO `osa_login_log` VALUES ('175', '1001', '192.168.0.233', '2017-09-14 13:44:12', 'ew1', '1', 'ew1', '2017-09-20 15:31:03', '1');
INSERT INTO `osa_login_log` VALUES ('176', '1001', '192.168.0.233', '2017-09-14 13:44:16', 'ew2', '1', 'ew2', '2017-09-20 15:31:03', '1');
INSERT INTO `osa_login_log` VALUES ('177', '1001', '192.168.0.233', '2017-09-14 13:44:31', 'ew3', '1', 'ew3', '2017-09-20 15:31:03', '1');
INSERT INTO `osa_login_log` VALUES ('178', '1001', '192.168.0.233', '2017-09-14 13:44:42', 'ew4', '1', 'ew4', '2017-09-20 15:31:03', '1');
INSERT INTO `osa_login_log` VALUES ('179', '1001', '192.168.0.233', '2017-09-14 13:58:37', 's1', '1', 's1', '2017-09-20 15:31:04', '1');
INSERT INTO `osa_login_log` VALUES ('180', '1001', '192.168.0.233', '2017-09-14 13:58:48', 's2', '1', 's2', '2017-09-20 15:31:04', '1');
INSERT INTO `osa_login_log` VALUES ('181', '1001', '192.168.0.233', '2017-09-14 13:58:57', 's3', '1', 's3', '2017-09-20 15:31:04', '1');
INSERT INTO `osa_login_log` VALUES ('182', '1001', '192.168.0.233', '2017-09-14 13:59:01', 's4', '1', 's4', '2017-09-20 15:31:04', '1');
INSERT INTO `osa_login_log` VALUES ('183', '1001', '192.168.0.233', '2017-09-14 15:21:41', 'c1', '1', 'c1', '2017-09-20 15:31:07', '1');
INSERT INTO `osa_login_log` VALUES ('184', '1001', '192.168.0.233', '2017-09-14 15:21:43', 'c2', '1', 'c2', '2017-09-20 15:31:07', '1');
INSERT INTO `osa_login_log` VALUES ('185', '1001', '192.168.0.233', '2017-09-14 15:21:45', 'c3', '1', 'c3', '2017-09-20 15:31:07', '1');
INSERT INTO `osa_login_log` VALUES ('186', '1001', '192.168.0.233', '2017-09-14 15:22:01', 'c4', '1', 'c4', '2017-09-20 15:31:07', '1');
INSERT INTO `osa_login_log` VALUES ('187', '1001', '192.168.0.189', '2017-09-14 16:46:54', '1', '1', '1', '2017-09-20 15:31:07', '1');
INSERT INTO `osa_login_log` VALUES ('188', '1001', '192.168.0.189', '2017-09-14 16:49:49', '2', '1', '2', '2017-09-20 15:31:08', '1');
INSERT INTO `osa_login_log` VALUES ('189', '1001', '192.168.0.189', '2017-09-14 16:49:53', '3', '1', '3', '2017-09-20 15:31:08', '1');
INSERT INTO `osa_login_log` VALUES ('190', '1001', '192.168.0.189', '2017-09-14 16:49:56', '4', '1', '4', '2017-09-20 15:31:08', '1');
INSERT INTO `osa_login_log` VALUES ('191', '1001', '192.168.0.189', '2017-09-14 17:12:02', '1', '1', '1', '2017-09-20 15:31:09', '1');
INSERT INTO `osa_login_log` VALUES ('192', '1001', '192.168.0.189', '2017-09-14 17:13:42', '2', '1', '2', '2017-09-20 15:31:09', '1');
INSERT INTO `osa_login_log` VALUES ('193', '1001', '192.168.0.189', '2017-09-14 17:20:06', '1', '1', '1', '2017-09-20 15:31:09', '1');
INSERT INTO `osa_login_log` VALUES ('194', '1001', '192.168.0.189', '2017-09-14 17:20:10', '2', '1', '2', '2017-09-20 15:31:09', '1');
INSERT INTO `osa_login_log` VALUES ('195', '1001', '192.168.0.189', '2017-09-14 17:20:14', '3', '1', '3', '2017-09-20 15:31:09', '1');
INSERT INTO `osa_login_log` VALUES ('196', '1001', '192.168.0.189', '2017-09-14 17:20:18', '4', '1', '4', '2017-09-20 15:31:09', '1');
INSERT INTO `osa_login_log` VALUES ('197', '1001', '192.168.0.233', '2017-09-14 17:35:40', 'ewe', '1', 'ewe', '2017-09-20 15:31:10', '1');
INSERT INTO `osa_login_log` VALUES ('198', '1001', '192.168.0.233', '2017-09-14 18:00:25', 'a1', '1', 'a1', '2017-09-20 15:31:13', '1');
INSERT INTO `osa_login_log` VALUES ('199', '1001', '192.168.0.233', '2017-09-14 18:00:30', 'a2', '1', 'a2', '2017-09-20 15:31:13', '1');
INSERT INTO `osa_login_log` VALUES ('200', '1001', '192.168.0.233', '2017-09-14 18:00:40', 'a3', '1', 'a3', '2017-09-20 15:31:13', '1');
INSERT INTO `osa_login_log` VALUES ('201', '1001', '192.168.0.233', '2017-09-14 18:00:47', 'a4', '1', 'a4', '2017-09-20 15:31:14', '1');
INSERT INTO `osa_login_log` VALUES ('202', '1001', '192.168.0.233', '2017-09-14 18:25:09', 'v1', '1', 'v1', '2017-09-20 15:31:14', '1');
INSERT INTO `osa_login_log` VALUES ('203', '1001', '192.168.0.233', '2017-09-14 18:25:12', 'v2', '1', 'v2', '2017-09-20 15:31:15', '1');
INSERT INTO `osa_login_log` VALUES ('204', '1001', '192.168.0.233', '2017-09-14 18:25:14', 'v3', '1', 'v3', '2017-09-20 15:31:15', '1');
INSERT INTO `osa_login_log` VALUES ('205', '1001', '192.168.0.233', '2017-09-14 18:25:18', 'v4', '1', 'v4', '2017-09-20 15:31:15', '1');
INSERT INTO `osa_login_log` VALUES ('206', '1001', '192.168.0.233', '2017-09-14 18:38:46', 'c1', '1', 'c1', '2017-09-20 15:31:16', '1');
INSERT INTO `osa_login_log` VALUES ('207', '1001', '192.168.0.233', '2017-09-14 18:38:48', 'c2', '1', 'c2', '2017-09-20 15:31:16', '1');
INSERT INTO `osa_login_log` VALUES ('208', '1001', '192.168.0.233', '2017-09-14 18:39:00', 'c3', '1', 'c3', '2017-09-20 15:31:16', '1');
INSERT INTO `osa_login_log` VALUES ('209', '1001', '192.168.0.233', '2017-09-14 18:39:15', 'c4', '1', 'c4', '2017-09-20 15:31:16', '1');
INSERT INTO `osa_login_log` VALUES ('210', '1001', '192.168.0.189', '2017-09-14 18:51:37', '1', '1', '1', '2017-09-20 15:31:17', '1');
INSERT INTO `osa_login_log` VALUES ('211', '1001', '192.168.0.189', '2017-09-14 18:51:41', '2', '1', '2', '2017-09-20 15:31:17', '1');
INSERT INTO `osa_login_log` VALUES ('212', '1001', '192.168.0.189', '2017-09-14 18:51:46', '3', '1', '3', '2017-09-20 15:31:17', '1');
INSERT INTO `osa_login_log` VALUES ('213', '1001', '192.168.0.189', '2017-09-14 18:51:47', '2', '1', '2', '2017-09-20 15:31:17', '1');
INSERT INTO `osa_login_log` VALUES ('214', '1001', '192.168.0.189', '2017-09-14 18:51:48', '2', '1', '2', '2017-09-20 15:31:18', '1');
INSERT INTO `osa_login_log` VALUES ('215', '1001', '192.168.0.189', '2017-09-14 18:51:51', '4', '1', '4', '2017-09-20 15:31:18', '1');
INSERT INTO `osa_login_log` VALUES ('216', '1001', '192.168.0.189', '2017-09-14 19:25:01', '1', '1', '1', '2017-09-20 15:31:19', '1');
INSERT INTO `osa_login_log` VALUES ('217', '1001', '192.168.0.189', '2017-09-14 19:25:04', '2', '1', '2', '2017-09-20 15:31:19', '1');
INSERT INTO `osa_login_log` VALUES ('218', '1001', '192.168.0.189', '2017-09-14 19:25:11', '3', '1', '3', '2017-09-20 15:31:19', '1');
INSERT INTO `osa_login_log` VALUES ('219', '1001', '192.168.0.189', '2017-09-14 19:25:16', '4', '1', '4', '2017-09-20 15:31:19', '1');
INSERT INTO `osa_login_log` VALUES ('220', '1001', '192.168.0.189', '2017-09-15 09:22:23', '4', '1', '4', '2017-09-20 15:31:20', '1');
INSERT INTO `osa_login_log` VALUES ('221', '1001', '192.168.0.189', '2017-09-15 09:22:17', '1', '1', '1', '2017-09-20 15:31:20', '1');
INSERT INTO `osa_login_log` VALUES ('222', '1001', '192.168.0.189', '2017-09-15 09:22:17', '2', '1', '2', '2017-09-20 15:31:20', '1');
INSERT INTO `osa_login_log` VALUES ('223', '1001', '192.168.0.189', '2017-09-15 09:22:22', '3', '1', '3', '2017-09-20 15:31:20', '1');
INSERT INTO `osa_login_log` VALUES ('224', '1001', '192.168.0.233', '2017-09-15 09:22:37', 's1', '1', 's1', '2017-09-20 15:31:20', '1');
INSERT INTO `osa_login_log` VALUES ('225', '1001', '192.168.0.233', '2017-09-15 09:22:46', 's2', '1', 's2', '2017-09-20 15:31:20', '1');
INSERT INTO `osa_login_log` VALUES ('226', '1001', '192.168.0.233', '2017-09-15 09:23:12', 's3', '1', 's3', '2017-09-20 15:31:21', '1');
INSERT INTO `osa_login_log` VALUES ('227', '1001', '192.168.0.233', '2017-09-15 09:23:21', 's4', '1', 's4', '2017-09-20 15:31:21', '1');
INSERT INTO `osa_login_log` VALUES ('228', '1001', '192.168.0.189', '2017-09-15 09:26:40', '2', '1', '2', '2017-09-20 15:31:21', '1');
INSERT INTO `osa_login_log` VALUES ('229', '1001', '192.168.0.189', '2017-09-15 09:47:52', '1', '1', '1', '2017-09-20 15:31:22', '1');
INSERT INTO `osa_login_log` VALUES ('230', '1001', '192.168.0.189', '2017-09-15 09:47:55', '2', '1', '2', '2017-09-20 15:31:23', '1');
INSERT INTO `osa_login_log` VALUES ('231', '1001', '192.168.0.189', '2017-09-15 09:47:58', '3', '1', '3', '2017-09-20 15:31:23', '1');
INSERT INTO `osa_login_log` VALUES ('232', '1001', '192.168.0.189', '2017-09-15 09:48:02', '4', '1', '4', '2017-09-20 15:31:23', '1');
INSERT INTO `osa_login_log` VALUES ('233', '1001', '192.168.0.189', '2017-09-15 09:56:42', '13', '1', '13', '2017-09-20 15:31:24', '1');
INSERT INTO `osa_login_log` VALUES ('234', '1001', '192.168.0.189', '2017-09-15 09:56:43', '11', '1', '11', '2017-09-20 15:31:24', '1');
INSERT INTO `osa_login_log` VALUES ('235', '1001', '192.168.0.189', '2017-09-15 09:56:44', '12', '1', '12', '2017-09-20 15:31:25', '1');
INSERT INTO `osa_login_log` VALUES ('236', '1001', '192.168.0.233', '2017-09-15 09:59:05', 'd1', '1', 'd1', '2017-09-20 15:31:25', '1');
INSERT INTO `osa_login_log` VALUES ('237', '1001', '192.168.0.233', '2017-09-15 09:59:49', 'd1', '1', 'd1', '2017-09-20 15:31:25', '1');
INSERT INTO `osa_login_log` VALUES ('238', '1001', '192.168.0.233', '2017-09-15 09:59:52', 'd2', '1', 'd2', '2017-09-20 15:31:25', '1');
INSERT INTO `osa_login_log` VALUES ('239', '1001', '192.168.0.233', '2017-09-15 09:59:54', 'd3', '1', 'd3', '2017-09-20 15:31:25', '1');
INSERT INTO `osa_login_log` VALUES ('240', '1001', '192.168.0.233', '2017-09-15 09:59:57', 'd4', '1', 'd4', '2017-09-20 15:31:25', '1');
INSERT INTO `osa_login_log` VALUES ('241', '1001', '192.168.0.233', '2017-09-15 10:26:45', 'a1', '1', 'a1', '2017-09-20 15:31:26', '1');
INSERT INTO `osa_login_log` VALUES ('242', '1001', '192.168.0.233', '2017-09-15 10:28:45', 'a1', '1', 'a1', '2017-09-20 15:31:27', '1');
INSERT INTO `osa_login_log` VALUES ('243', '1001', '192.168.0.233', '2017-09-15 10:28:48', 'a2', '1', 'a2', '2017-09-20 15:31:27', '1');
INSERT INTO `osa_login_log` VALUES ('244', '1001', '192.168.0.233', '2017-09-15 10:28:51', 'a3', '1', 'a3', '2017-09-20 15:31:27', '1');
INSERT INTO `osa_login_log` VALUES ('245', '1001', '192.168.0.233', '2017-09-15 10:28:54', 'a4', '1', 'a4', '2017-09-20 15:31:27', '1');
INSERT INTO `osa_login_log` VALUES ('246', '1001', '192.168.0.189', '2017-09-15 10:57:51', '1', '1', '1', '2017-09-20 15:31:27', '1');
INSERT INTO `osa_login_log` VALUES ('247', '1001', '192.168.0.189', '2017-09-15 10:58:09', '3', '1', '3', '2017-09-20 15:31:27', '1');
INSERT INTO `osa_login_log` VALUES ('248', '1001', '192.168.0.189', '2017-09-15 10:58:45', '5', '1', '5', '2017-09-20 15:31:27', '1');
INSERT INTO `osa_login_log` VALUES ('249', '1001', '192.168.0.233', '2017-09-15 11:07:42', 's1', '1', 's1', '2017-09-20 15:31:28', '1');
INSERT INTO `osa_login_log` VALUES ('250', '1001', '192.168.0.233', '2017-09-15 11:07:48', 's2', '1', 's2', '2017-09-20 15:31:28', '1');
INSERT INTO `osa_login_log` VALUES ('251', '1001', '192.168.0.233', '2017-09-15 11:20:31', 'd1', '1', 'd1', '2017-09-20 15:31:28', '1');
INSERT INTO `osa_login_log` VALUES ('252', '1001', '192.168.0.233', '2017-09-15 11:26:32', 'ewew', '1', 'ewew', '2017-09-20 15:31:28', '1');
INSERT INTO `osa_login_log` VALUES ('253', '1001', '192.168.0.233', '2017-09-15 11:30:09', 'c1', '1', 'c1', '2017-09-20 15:31:29', '1');
INSERT INTO `osa_login_log` VALUES ('254', '1001', '192.168.0.233', '2017-09-15 11:30:25', 'c2', '1', 'c2', '2017-09-20 15:31:29', '1');
INSERT INTO `osa_login_log` VALUES ('255', '1001', '192.168.0.233', '2017-09-15 11:30:48', 'c3', '1', 'c3', '2017-09-20 15:31:29', '1');
INSERT INTO `osa_login_log` VALUES ('256', '1001', '192.168.0.233', '2017-09-15 11:31:11', 'c4', '1', 'c4', '2017-09-20 15:31:29', '1');
INSERT INTO `osa_login_log` VALUES ('257', '1001', '192.168.0.189', '2017-09-15 11:51:40', '1', '1', '1', '2017-09-20 15:31:29', '1');
INSERT INTO `osa_login_log` VALUES ('258', '1001', '192.168.0.189', '2017-09-15 11:51:45', '2', '1', '2', '2017-09-20 15:31:29', '1');
INSERT INTO `osa_login_log` VALUES ('259', '1001', '192.168.0.189', '2017-09-15 11:51:49', '3', '1', '3', '2017-09-20 15:31:29', '1');
INSERT INTO `osa_login_log` VALUES ('260', '1001', '192.168.0.189', '2017-09-15 11:52:00', '4', '1', '4', '2017-09-20 15:31:29', '1');
INSERT INTO `osa_login_log` VALUES ('261', '1001', '192.168.0.189', '2017-09-15 14:53:48', '1', '1', '1', '2017-09-20 15:31:30', '1');
INSERT INTO `osa_login_log` VALUES ('262', '1001', '192.168.0.189', '2017-09-15 14:53:58', '2', '1', '2', '2017-09-20 15:31:30', '1');
INSERT INTO `osa_login_log` VALUES ('263', '1001', '192.168.0.189', '2017-09-15 14:54:08', '3', '1', '3', '2017-09-20 15:31:30', '1');
INSERT INTO `osa_login_log` VALUES ('264', '1001', '192.168.0.189', '2017-09-15 14:54:19', '3', '1', '3', '2017-09-20 15:31:31', '1');
INSERT INTO `osa_login_log` VALUES ('265', '1001', '192.168.0.189', '2017-09-15 14:54:19', '3', '1', '3', '2017-09-20 15:31:31', '1');
INSERT INTO `osa_login_log` VALUES ('266', '1001', '192.168.0.189', '2017-09-15 14:59:48', '1', '1', '1', '2017-09-20 15:31:31', '1');
INSERT INTO `osa_login_log` VALUES ('267', '1001', '192.168.0.189', '2017-09-15 14:59:51', '2', '1', '2', '2017-09-20 15:31:31', '1');
INSERT INTO `osa_login_log` VALUES ('268', '1001', '192.168.0.189', '2017-09-15 14:59:56', '3', '1', '3', '2017-09-20 15:31:31', '1');
INSERT INTO `osa_login_log` VALUES ('269', '1001', '192.168.0.189', '2017-09-15 15:00:01', '4', '1', '4', '2017-09-20 15:31:32', '1');
INSERT INTO `osa_login_log` VALUES ('270', '1001', '192.168.0.189', '2017-09-15 15:02:09', '1', '1', '1', '2017-09-20 15:31:33', '1');
INSERT INTO `osa_login_log` VALUES ('271', '1001', '192.168.0.189', '2017-09-15 15:02:12', '2', '1', '2', '2017-09-20 15:31:33', '1');
INSERT INTO `osa_login_log` VALUES ('272', '1001', '192.168.0.189', '2017-09-15 15:02:16', '3', '1', '3', '2017-09-20 15:31:33', '1');
INSERT INTO `osa_login_log` VALUES ('273', '1001', '192.168.0.189', '2017-09-15 15:02:20', '4', '1', '4', '2017-09-20 15:31:33', '1');
INSERT INTO `osa_login_log` VALUES ('274', '1001', '192.168.0.233', '2017-09-15 15:21:18', 'z1', '1', 'z1', '2017-09-20 15:31:33', '1');
INSERT INTO `osa_login_log` VALUES ('275', '1001', '192.168.0.233', '2017-09-15 15:21:22', 'z2', '1', 'z2', '2017-09-20 15:31:34', '1');
INSERT INTO `osa_login_log` VALUES ('276', '1001', '192.168.0.233', '2017-09-15 15:21:31', 'z3', '1', 'z3', '2017-09-20 15:31:34', '1');
INSERT INTO `osa_login_log` VALUES ('277', '1001', '192.168.0.233', '2017-09-15 15:21:38', 'z4', '1', 'z4', '2017-09-20 15:31:34', '1');
INSERT INTO `osa_login_log` VALUES ('278', '1001', '192.168.0.189', '2017-09-15 16:02:30', '1', '1', '1', '2017-09-20 15:31:34', '1');
INSERT INTO `osa_login_log` VALUES ('279', '1001', '192.168.0.189', '2017-09-15 16:02:31', '1', '1', '1', '2017-09-20 15:31:34', '1');
INSERT INTO `osa_login_log` VALUES ('280', '1001', '192.168.0.233', '2017-09-15 16:02:30', 'c1', '1', 'c1', '2017-09-20 15:31:34', '1');
INSERT INTO `osa_login_log` VALUES ('281', '1001', '192.168.0.233', '2017-09-15 16:02:35', 'c2', '1', 'c2', '2017-09-20 15:31:34', '1');
INSERT INTO `osa_login_log` VALUES ('282', '1001', '192.168.0.189', '2017-09-15 16:02:37', '2', '1', '2', '2017-09-20 15:31:34', '1');
INSERT INTO `osa_login_log` VALUES ('283', '1001', '192.168.0.233', '2017-09-15 16:02:38', 'c3', '1', 'c3', '2017-09-20 15:31:34', '1');
INSERT INTO `osa_login_log` VALUES ('284', '1001', '192.168.0.233', '2017-09-15 16:02:40', 'c4', '1', 'c4', '2017-09-20 15:31:35', '1');
INSERT INTO `osa_login_log` VALUES ('285', '1001', '192.168.0.189', '2017-09-15 16:02:45', '3', '1', '3', '2017-09-20 15:31:35', '1');
INSERT INTO `osa_login_log` VALUES ('286', '1001', '192.168.0.189', '2017-09-15 16:03:29', '7', '1', '7', '2017-09-20 15:31:35', '1');
INSERT INTO `osa_login_log` VALUES ('287', '1001', '192.168.0.233', '2017-09-15 16:24:44', 'd1', '1', 'd1', '2017-09-20 15:31:36', '1');
INSERT INTO `osa_login_log` VALUES ('288', '1001', '192.168.0.233', '2017-09-15 16:24:50', 'd2', '1', 'd2', '2017-09-20 15:31:36', '1');
INSERT INTO `osa_login_log` VALUES ('289', '1001', '192.168.0.233', '2017-09-15 16:25:24', 'd3', '1', 'd3', '2017-09-20 15:31:36', '1');
INSERT INTO `osa_login_log` VALUES ('290', '1001', '192.168.0.233', '2017-09-15 16:25:26', 'd4', '1', 'd4', '2017-09-20 15:31:36', '1');
INSERT INTO `osa_login_log` VALUES ('291', '1001', '192.168.0.233', '2017-09-15 16:33:15', 'v1', '1', 'v1', '2017-09-20 15:31:37', '1');
INSERT INTO `osa_login_log` VALUES ('292', '1001', '192.168.0.233', '2017-09-15 16:33:17', 'v2', '1', 'v2', '2017-09-20 15:31:37', '1');
INSERT INTO `osa_login_log` VALUES ('293', '1001', '192.168.0.233', '2017-09-15 16:33:20', 'v3', '1', 'v3', '2017-09-20 15:31:38', '1');
INSERT INTO `osa_login_log` VALUES ('294', '1001', '192.168.0.233', '2017-09-15 16:33:24', 'v4', '1', 'v4', '2017-09-20 15:31:38', '1');
INSERT INTO `osa_login_log` VALUES ('295', '1001', '192.168.0.233', '2017-09-15 16:35:22', 'x1', '1', 'x1', '2017-09-20 15:31:38', '1');
INSERT INTO `osa_login_log` VALUES ('296', '1001', '192.168.0.233', '2017-09-15 16:35:24', 'x2', '1', 'x2', '2017-09-20 15:31:38', '1');
INSERT INTO `osa_login_log` VALUES ('297', '1001', '192.168.0.233', '2017-09-15 16:35:26', 'x3', '1', 'x3', '2017-09-20 15:31:39', '1');
INSERT INTO `osa_login_log` VALUES ('298', '1001', '192.168.0.233', '2017-09-15 16:35:29', 'x4', '1', 'x4', '2017-09-20 15:31:39', '1');
INSERT INTO `osa_login_log` VALUES ('299', '1001', '192.168.0.233', '2017-09-15 16:38:00', 'b1', '1', 'b1', '2017-09-20 15:31:39', '1');
INSERT INTO `osa_login_log` VALUES ('300', '1001', '192.168.0.233', '2017-09-15 16:38:01', 'b2', '1', 'b2', '2017-09-20 15:31:39', '1');
INSERT INTO `osa_login_log` VALUES ('301', '1001', '192.168.0.233', '2017-09-15 16:38:04', 'b3', '1', 'b3', '2017-09-20 15:31:39', '1');
INSERT INTO `osa_login_log` VALUES ('302', '1001', '192.168.0.233', '2017-09-15 16:38:07', 'b4', '1', 'b4', '2017-09-20 15:31:39', '1');
INSERT INTO `osa_login_log` VALUES ('303', '1001', '192.168.0.189', '2017-09-15 16:53:16', '1', '1', '1', '2017-09-20 15:31:41', '1');
INSERT INTO `osa_login_log` VALUES ('304', '1001', '192.168.0.189', '2017-09-15 16:53:20', '2', '1', '2', '2017-09-20 15:31:41', '1');
INSERT INTO `osa_login_log` VALUES ('305', '1001', '192.168.0.189', '2017-09-15 16:53:23', '3', '1', '3', '2017-09-20 15:31:41', '1');
INSERT INTO `osa_login_log` VALUES ('306', '1001', '192.168.0.189', '2017-09-15 16:53:27', '4', '1', '4', '2017-09-20 15:31:41', '1');
INSERT INTO `osa_login_log` VALUES ('307', '1001', '192.168.0.233', '2017-09-15 17:40:25', 'c1', '1', 'c1', '2017-09-20 15:31:41', '1');
INSERT INTO `osa_login_log` VALUES ('308', '1001', '192.168.0.189', '2017-09-18 09:47:53', '1', '1', '1', '2017-09-20 15:31:42', '1');
INSERT INTO `osa_login_log` VALUES ('309', '1001', '192.168.0.189', '2017-09-18 09:49:00', '1', '1', '1', '2017-09-20 15:31:43', '1');
INSERT INTO `osa_login_log` VALUES ('310', '1001', '192.168.0.189', '2017-09-18 09:49:00', '1', '1', '1', '2017-09-20 15:31:43', '1');
INSERT INTO `osa_login_log` VALUES ('311', '1001', '192.168.0.189', '2017-09-18 11:28:12', '1', '1', '1', '2017-09-20 15:31:43', '1');
INSERT INTO `osa_login_log` VALUES ('312', '1001', '192.168.0.189', '2017-09-18 11:28:34', '1', '1', '1', '2017-09-20 15:31:43', '1');
INSERT INTO `osa_login_log` VALUES ('313', '1001', '192.168.0.189', '2017-09-18 11:28:58', '1', '1', '1', '2017-09-20 15:31:43', '1');
INSERT INTO `osa_login_log` VALUES ('314', '1001', '192.168.0.189', '2017-09-18 11:30:41', '1', '1', '1', '2017-09-20 15:31:43', '1');
INSERT INTO `osa_login_log` VALUES ('315', '1001', '192.168.0.189', '2017-09-18 11:30:58', '1', '1', '1', '2017-09-20 15:31:43', '1');
INSERT INTO `osa_login_log` VALUES ('316', '1001', '192.168.0.189', '2017-09-18 11:30:58', '1', '1', '1', '2017-09-20 15:31:43', '1');
INSERT INTO `osa_login_log` VALUES ('317', '1001', '192.168.0.189', '2017-09-18 11:30:58', '1', '1', '1', '2017-09-20 15:31:44', '1');
INSERT INTO `osa_login_log` VALUES ('318', '1001', '192.168.0.189', '2017-09-18 11:30:58', '1', '1', '1', '2017-09-20 15:31:44', '1');
INSERT INTO `osa_login_log` VALUES ('319', '1001', '192.168.0.189', '2017-09-18 11:30:59', '1', '1', '1', '2017-09-20 15:31:44', '1');
INSERT INTO `osa_login_log` VALUES ('320', '1001', '192.168.0.189', '2017-09-18 11:30:59', '1', '1', '1', '2017-09-20 15:31:44', '1');
INSERT INTO `osa_login_log` VALUES ('321', '1001', '192.168.0.189', '2017-09-18 11:30:59', '1', '1', '1', '2017-09-20 15:31:44', '1');
INSERT INTO `osa_login_log` VALUES ('322', '1001', '192.168.0.189', '2017-09-18 11:31:00', '1', '1', '1', '2017-09-20 15:31:44', '1');
INSERT INTO `osa_login_log` VALUES ('323', '1001', '192.168.0.189', '2017-09-18 11:31:00', '1', '1', '1', '2017-09-20 15:31:45', '1');
INSERT INTO `osa_login_log` VALUES ('324', '1001', '192.168.0.189', '2017-09-18 11:31:00', '1', '1', '1', '2017-09-20 15:31:45', '1');
INSERT INTO `osa_login_log` VALUES ('325', '1001', '192.168.0.189', '2017-09-18 11:31:31', '1', '1', '1', '2017-09-20 15:31:45', '1');
INSERT INTO `osa_login_log` VALUES ('326', '1001', '192.168.0.189', '2017-09-18 11:31:32', '1', '1', '1', '2017-09-20 15:31:45', '1');
INSERT INTO `osa_login_log` VALUES ('327', '1001', '192.168.0.189', '2017-09-18 11:32:51', '1', '1', '1', '2017-09-20 15:31:45', '1');
INSERT INTO `osa_login_log` VALUES ('328', '1001', '192.168.0.189', '2017-09-18 11:32:55', '1', '1', '1', '2017-09-20 15:31:45', '1');
INSERT INTO `osa_login_log` VALUES ('329', '1001', '192.168.0.189', '2017-09-18 11:32:55', '1', '1', '1', '2017-09-20 15:31:45', '1');
INSERT INTO `osa_login_log` VALUES ('330', '1001', '192.168.0.189', '2017-09-18 11:32:56', '1', '1', '1', '2017-09-20 15:31:45', '1');
INSERT INTO `osa_login_log` VALUES ('331', '1001', '192.168.0.189', '2017-09-18 11:32:56', '1', '1', '1', '2017-09-20 15:31:45', '1');
INSERT INTO `osa_login_log` VALUES ('332', '1001', '192.168.0.189', '2017-09-18 11:32:56', '1', '1', '1', '2017-09-20 15:31:46', '1');
INSERT INTO `osa_login_log` VALUES ('333', '1001', '192.168.0.189', '2017-09-18 11:32:56', '1', '1', '1', '2017-09-20 15:31:46', '1');
INSERT INTO `osa_login_log` VALUES ('334', '1001', '192.168.0.189', '2017-09-18 11:32:56', '1', '1', '1', '2017-09-20 15:31:46', '1');
INSERT INTO `osa_login_log` VALUES ('335', '1001', '192.168.0.189', '2017-09-18 11:32:57', '1', '1', '1', '2017-09-20 15:31:46', '1');
INSERT INTO `osa_login_log` VALUES ('336', '1001', '192.168.0.189', '2017-09-18 11:32:57', '1', '1', '1', '2017-09-20 15:31:46', '1');
INSERT INTO `osa_login_log` VALUES ('337', '1001', '192.168.0.189', '2017-09-18 11:32:57', '1', '1', '1', '2017-09-20 15:31:46', '1');
INSERT INTO `osa_login_log` VALUES ('338', '1001', '192.168.0.189', '2017-09-18 11:32:57', '1', '1', '1', '2017-09-20 15:31:46', '1');
INSERT INTO `osa_login_log` VALUES ('339', '1001', '192.168.0.189', '2017-09-18 11:32:57', '1', '1', '1', '2017-09-20 15:31:46', '1');
INSERT INTO `osa_login_log` VALUES ('340', '1001', '192.168.0.189', '2017-09-18 11:32:57', '1', '1', '1', '2017-09-20 15:31:46', '1');
INSERT INTO `osa_login_log` VALUES ('341', '1001', '192.168.0.189', '2017-09-18 11:32:57', '1', '1', '1', '2017-09-20 15:31:46', '1');
INSERT INTO `osa_login_log` VALUES ('342', '1001', '192.168.0.189', '2017-09-18 11:32:58', '1', '1', '1', '2017-09-20 15:31:47', '1');
INSERT INTO `osa_login_log` VALUES ('343', '1001', '192.168.0.189', '2017-09-18 11:32:58', '1', '1', '1', '2017-09-20 15:31:47', '1');
INSERT INTO `osa_login_log` VALUES ('344', '1001', '192.168.0.189', '2017-09-18 11:32:58', '1', '1', '1', '2017-09-20 15:31:47', '1');
INSERT INTO `osa_login_log` VALUES ('345', '1001', '192.168.0.189', '2017-09-18 11:32:58', '1', '1', '1', '2017-09-20 15:31:47', '1');
INSERT INTO `osa_login_log` VALUES ('346', '1001', '192.168.0.189', '2017-09-18 11:32:58', '1', '1', '1', '2017-09-20 15:31:47', '1');
INSERT INTO `osa_login_log` VALUES ('347', '1001', '192.168.0.189', '2017-09-18 11:32:59', '1', '1', '1', '2017-09-20 15:31:47', '1');
INSERT INTO `osa_login_log` VALUES ('348', '1001', '192.168.0.189', '2017-09-18 11:32:59', '1', '1', '1', '2017-09-20 15:31:47', '1');
INSERT INTO `osa_login_log` VALUES ('349', '1001', '192.168.0.189', '2017-09-18 11:32:59', '1', '1', '1', '2017-09-20 15:31:47', '1');
INSERT INTO `osa_login_log` VALUES ('350', '1001', '192.168.0.189', '2017-09-18 11:32:59', '1', '1', '1', '2017-09-20 15:31:47', '1');
INSERT INTO `osa_login_log` VALUES ('351', '1001', '192.168.0.189', '2017-09-18 11:32:59', '1', '1', '1', '2017-09-20 15:31:47', '1');
INSERT INTO `osa_login_log` VALUES ('352', '1001', '192.168.0.189', '2017-09-18 11:32:59', '1', '1', '1', '2017-09-20 15:31:48', '1');
INSERT INTO `osa_login_log` VALUES ('353', '1001', '192.168.0.189', '2017-09-18 11:32:59', '1', '1', '1', '2017-09-20 15:31:48', '1');
INSERT INTO `osa_login_log` VALUES ('354', '1001', '192.168.0.189', '2017-09-18 11:32:59', '1', '1', '1', '2017-09-20 15:31:48', '1');
INSERT INTO `osa_login_log` VALUES ('355', '1001', '192.168.0.189', '2017-09-18 11:33:00', '1', '1', '1', '2017-09-20 15:31:49', '1');
INSERT INTO `osa_login_log` VALUES ('356', '1001', '192.168.0.189', '2017-09-18 11:33:00', '1', '1', '1', '2017-09-20 15:31:49', '1');
INSERT INTO `osa_login_log` VALUES ('357', '1001', '192.168.0.189', '2017-09-18 11:33:02', '1', '1', '1', '2017-09-20 15:31:49', '1');
INSERT INTO `osa_login_log` VALUES ('358', '1001', '192.168.0.189', '2017-09-18 11:33:02', '1', '1', '1', '2017-09-20 15:31:49', '1');
INSERT INTO `osa_login_log` VALUES ('359', '1001', '192.168.0.189', '2017-09-18 11:33:02', '1', '1', '1', '2017-09-20 15:31:49', '1');
INSERT INTO `osa_login_log` VALUES ('360', '1001', '192.168.0.189', '2017-09-18 11:33:03', '1', '1', '1', '2017-09-20 15:31:49', '1');
INSERT INTO `osa_login_log` VALUES ('361', '1001', '192.168.0.189', '2017-09-18 11:33:03', '1', '1', '1', '2017-09-20 15:31:49', '1');
INSERT INTO `osa_login_log` VALUES ('362', '1001', '192.168.0.189', '2017-09-18 11:33:03', '1', '1', '1', '2017-09-20 15:31:49', '1');
INSERT INTO `osa_login_log` VALUES ('363', '1001', '192.168.0.189', '2017-09-18 11:33:03', '1', '1', '1', '2017-09-20 15:31:49', '1');
INSERT INTO `osa_login_log` VALUES ('364', '1001', '192.168.0.189', '2017-09-18 11:33:03', '1', '1', '1', '2017-09-20 15:31:49', '1');
INSERT INTO `osa_login_log` VALUES ('365', '1001', '192.168.0.189', '2017-09-18 11:33:03', '1', '1', '1', '2017-09-20 15:31:49', '1');
INSERT INTO `osa_login_log` VALUES ('366', '1001', '192.168.0.189', '2017-09-18 11:33:03', '1', '1', '1', '2017-09-20 15:31:49', '1');
INSERT INTO `osa_login_log` VALUES ('367', '1001', '192.168.0.189', '2017-09-18 11:33:04', '1', '1', '1', '2017-09-20 15:31:50', '1');
INSERT INTO `osa_login_log` VALUES ('368', '1001', '192.168.0.189', '2017-09-18 11:33:04', '1', '1', '1', '2017-09-20 15:31:50', '1');
INSERT INTO `osa_login_log` VALUES ('369', '1001', '192.168.0.189', '2017-09-18 11:33:04', '1', '1', '1', '2017-09-20 15:31:50', '1');
INSERT INTO `osa_login_log` VALUES ('370', '1001', '192.168.0.189', '2017-09-18 11:33:04', '1', '1', '1', '2017-09-20 15:31:50', '1');
INSERT INTO `osa_login_log` VALUES ('371', '1001', '192.168.0.189', '2017-09-18 11:33:04', '1', '1', '1', '2017-09-20 15:31:50', '1');
INSERT INTO `osa_login_log` VALUES ('372', '1001', '192.168.0.189', '2017-09-18 11:33:04', '1', '1', '1', '2017-09-20 15:31:50', '1');
INSERT INTO `osa_login_log` VALUES ('373', '1001', '192.168.0.189', '2017-09-18 11:33:04', '1', '1', '1', '2017-09-20 15:31:50', '1');
INSERT INTO `osa_login_log` VALUES ('374', '1001', '192.168.0.189', '2017-09-18 11:33:04', '1', '1', '1', '2017-09-20 15:31:50', '1');
INSERT INTO `osa_login_log` VALUES ('375', '1001', '192.168.0.189', '2017-09-18 11:33:05', '1', '1', '1', '2017-09-20 15:31:50', '1');
INSERT INTO `osa_login_log` VALUES ('376', '1001', '192.168.0.189', '2017-09-18 11:33:05', '1', '1', '1', '2017-09-20 15:31:50', '1');
INSERT INTO `osa_login_log` VALUES ('377', '1001', '192.168.0.189', '2017-09-18 11:33:05', '1', '1', '1', '2017-09-20 15:31:50', '1');
INSERT INTO `osa_login_log` VALUES ('378', '1001', '192.168.0.189', '2017-09-18 11:33:05', '1', '1', '1', '2017-09-20 15:31:50', '1');
INSERT INTO `osa_login_log` VALUES ('379', '1001', '192.168.0.189', '2017-09-18 11:33:05', '1', '1', '1', '2017-09-20 15:31:51', '1');
INSERT INTO `osa_login_log` VALUES ('380', '1001', '192.168.0.189', '2017-09-18 11:33:05', '1', '1', '1', '2017-09-20 15:31:51', '1');
INSERT INTO `osa_login_log` VALUES ('381', '1001', '192.168.0.189', '2017-09-18 11:33:05', '1', '1', '1', '2017-09-20 15:31:51', '1');
INSERT INTO `osa_login_log` VALUES ('382', '1001', '192.168.0.189', '2017-09-18 11:33:05', '1', '1', '1', '2017-09-20 15:31:51', '1');
INSERT INTO `osa_login_log` VALUES ('383', '1001', '192.168.0.189', '2017-09-18 11:33:05', '1', '1', '1', '2017-09-20 15:31:51', '1');
INSERT INTO `osa_login_log` VALUES ('384', '1001', '192.168.0.189', '2017-09-18 11:33:06', '1', '1', '1', '2017-09-20 15:31:51', '1');
INSERT INTO `osa_login_log` VALUES ('385', '1001', '192.168.0.189', '2017-09-18 11:33:06', '1', '1', '1', '2017-09-20 15:31:51', '1');
INSERT INTO `osa_login_log` VALUES ('386', '1001', '192.168.0.189', '2017-09-18 11:33:06', '1', '1', '1', '2017-09-20 15:31:51', '1');
INSERT INTO `osa_login_log` VALUES ('387', '1001', '192.168.0.189', '2017-09-18 11:33:06', '1', '1', '1', '2017-09-20 15:31:51', '1');
INSERT INTO `osa_login_log` VALUES ('388', '1001', '192.168.0.189', '2017-09-18 11:33:06', '1', '1', '1', '2017-09-20 15:31:51', '1');
INSERT INTO `osa_login_log` VALUES ('389', '1001', '192.168.0.189', '2017-09-18 11:33:07', '1', '1', '1', '2017-09-20 15:31:52', '1');
INSERT INTO `osa_login_log` VALUES ('390', '1001', '192.168.0.189', '2017-09-18 11:33:07', '1', '1', '1', '2017-09-20 15:31:52', '1');
INSERT INTO `osa_login_log` VALUES ('391', '1001', '192.168.0.189', '2017-09-18 11:33:07', '1', '1', '1', '2017-09-20 15:31:52', '1');
INSERT INTO `osa_login_log` VALUES ('392', '1001', '192.168.0.189', '2017-09-18 11:33:07', '1', '1', '1', '2017-09-20 15:31:52', '1');
INSERT INTO `osa_login_log` VALUES ('393', '1001', '192.168.0.189', '2017-09-18 11:33:07', '1', '1', '1', '2017-09-20 15:31:52', '1');
INSERT INTO `osa_login_log` VALUES ('394', '1001', '192.168.0.189', '2017-09-18 11:33:07', '1', '1', '1', '2017-09-20 15:31:53', '1');
INSERT INTO `osa_login_log` VALUES ('395', '1001', '192.168.0.189', '2017-09-18 11:33:07', '1', '1', '1', '2017-09-20 15:31:53', '1');
INSERT INTO `osa_login_log` VALUES ('396', '1001', '192.168.0.189', '2017-09-18 11:33:07', '1', '1', '1', '2017-09-20 15:31:53', '1');
INSERT INTO `osa_login_log` VALUES ('397', '1001', '192.168.0.189', '2017-09-18 11:33:07', '1', '1', '1', '2017-09-20 15:31:53', '1');
INSERT INTO `osa_login_log` VALUES ('398', '1001', '192.168.0.189', '2017-09-18 11:33:08', '1', '1', '1', '2017-09-20 15:31:53', '1');
INSERT INTO `osa_login_log` VALUES ('399', '1001', '192.168.0.189', '2017-09-18 11:33:08', '1', '1', '1', '2017-09-20 15:31:54', '1');
INSERT INTO `osa_login_log` VALUES ('400', '1001', '192.168.0.189', '2017-09-18 11:33:08', '1', '1', '1', '2017-09-20 15:31:54', '1');
INSERT INTO `osa_login_log` VALUES ('401', '1001', '192.168.0.189', '2017-09-18 11:33:08', '1', '1', '1', '2017-09-20 15:31:54', '1');
INSERT INTO `osa_login_log` VALUES ('402', '1001', '192.168.0.189', '2017-09-18 11:33:08', '1', '1', '1', '2017-09-20 15:31:54', '1');
INSERT INTO `osa_login_log` VALUES ('403', '1001', '192.168.0.189', '2017-09-18 11:33:08', '1', '1', '1', '2017-09-20 15:31:54', '1');
INSERT INTO `osa_login_log` VALUES ('404', '1001', '192.168.0.189', '2017-09-18 11:33:08', '1', '1', '1', '2017-09-20 15:31:55', '1');
INSERT INTO `osa_login_log` VALUES ('405', '1001', '192.168.0.189', '2017-09-18 11:33:08', '1', '1', '1', '2017-09-20 15:31:55', '1');
INSERT INTO `osa_login_log` VALUES ('406', '1001', '192.168.0.189', '2017-09-18 11:33:09', '1', '1', '1', '2017-09-20 15:31:55', '1');
INSERT INTO `osa_login_log` VALUES ('407', '1001', '192.168.0.189', '2017-09-18 11:33:09', '1', '1', '1', '2017-09-20 15:31:55', '1');
INSERT INTO `osa_login_log` VALUES ('408', '1001', '192.168.0.189', '2017-09-18 11:33:09', '1', '1', '1', '2017-09-20 15:31:55', '1');
INSERT INTO `osa_login_log` VALUES ('409', '1001', '192.168.0.189', '2017-09-18 11:33:09', '1', '1', '1', '2017-09-20 15:31:55', '1');
INSERT INTO `osa_login_log` VALUES ('410', '1001', '192.168.0.189', '2017-09-18 11:33:09', '1', '1', '1', '2017-09-20 15:31:56', '1');
INSERT INTO `osa_login_log` VALUES ('411', '1001', '192.168.0.189', '2017-09-18 11:33:09', '1', '1', '1', '2017-09-20 15:31:56', '1');
INSERT INTO `osa_login_log` VALUES ('412', '1001', '192.168.0.189', '2017-09-18 11:33:09', '1', '1', '1', '2017-09-20 15:31:56', '1');
INSERT INTO `osa_login_log` VALUES ('413', '1001', '192.168.0.189', '2017-09-18 11:33:09', '1', '1', '1', '2017-09-20 15:31:56', '1');
INSERT INTO `osa_login_log` VALUES ('414', '1001', '192.168.0.189', '2017-09-18 11:33:10', '1', '1', '1', '2017-09-20 15:31:56', '1');
INSERT INTO `osa_login_log` VALUES ('415', '1001', '192.168.0.189', '2017-09-18 11:33:10', '1', '1', '1', '2017-09-20 15:31:56', '1');
INSERT INTO `osa_login_log` VALUES ('416', '1001', '192.168.0.189', '2017-09-18 11:33:10', '1', '1', '1', '2017-09-20 15:31:56', '1');
INSERT INTO `osa_login_log` VALUES ('417', '1001', '192.168.0.189', '2017-09-18 11:33:10', '1', '1', '1', '2017-09-20 15:31:56', '1');
INSERT INTO `osa_login_log` VALUES ('418', '1001', '192.168.0.189', '2017-09-18 11:33:10', '1', '1', '1', '2017-09-20 15:31:56', '1');
INSERT INTO `osa_login_log` VALUES ('419', '1001', '192.168.0.189', '2017-09-18 11:33:10', '1', '1', '1', '2017-09-20 15:31:56', '1');
INSERT INTO `osa_login_log` VALUES ('420', '1001', '192.168.0.189', '2017-09-18 11:33:10', '1', '1', '1', '2017-09-20 15:31:57', '1');
INSERT INTO `osa_login_log` VALUES ('421', '1001', '192.168.0.189', '2017-09-18 11:33:10', '1', '1', '1', '2017-09-20 15:31:57', '1');
INSERT INTO `osa_login_log` VALUES ('422', '1001', '192.168.0.189', '2017-09-18 11:33:10', '1', '1', '1', '2017-09-20 15:31:58', '1');
INSERT INTO `osa_login_log` VALUES ('423', '1001', '192.168.0.189', '2017-09-18 11:33:11', '1', '1', '1', '2017-09-20 15:31:58', '1');
INSERT INTO `osa_login_log` VALUES ('424', '1001', '192.168.0.189', '2017-09-18 11:33:11', '1', '1', '1', '2017-09-20 15:31:58', '1');
INSERT INTO `osa_login_log` VALUES ('425', '1001', '192.168.0.189', '2017-09-18 11:33:11', '1', '1', '1', '2017-09-20 15:31:58', '1');
INSERT INTO `osa_login_log` VALUES ('426', '1001', '192.168.0.189', '2017-09-18 11:33:11', '1', '1', '1', '2017-09-20 15:31:58', '1');
INSERT INTO `osa_login_log` VALUES ('427', '1001', '192.168.0.189', '2017-09-18 11:33:11', '1', '1', '1', '2017-09-20 15:31:58', '1');
INSERT INTO `osa_login_log` VALUES ('428', '1001', '192.168.0.189', '2017-09-18 11:33:11', '1', '1', '1', '2017-09-20 15:31:58', '1');
INSERT INTO `osa_login_log` VALUES ('429', '1001', '192.168.0.189', '2017-09-18 11:33:11', '1', '1', '1', '2017-09-20 15:31:58', '1');
INSERT INTO `osa_login_log` VALUES ('430', '1001', '192.168.0.189', '2017-09-18 11:33:11', '1', '1', '1', '2017-09-20 15:31:58', '1');
INSERT INTO `osa_login_log` VALUES ('431', '1001', '192.168.0.189', '2017-09-18 11:33:11', '1', '1', '1', '2017-09-20 15:31:58', '1');
INSERT INTO `osa_login_log` VALUES ('432', '1001', '192.168.0.189', '2017-09-18 11:33:12', '1', '1', '1', '2017-09-20 15:31:59', '1');
INSERT INTO `osa_login_log` VALUES ('433', '1001', '192.168.0.189', '2017-09-18 11:33:12', '1', '1', '1', '2017-09-20 15:31:59', '1');
INSERT INTO `osa_login_log` VALUES ('434', '1001', '192.168.0.189', '2017-09-18 11:33:12', '1', '1', '1', '2017-09-20 15:31:59', '1');
INSERT INTO `osa_login_log` VALUES ('435', '1001', '192.168.0.189', '2017-09-18 11:33:12', '1', '1', '1', '2017-09-20 15:31:59', '1');
INSERT INTO `osa_login_log` VALUES ('436', '1001', '192.168.0.189', '2017-09-18 11:33:13', '1', '1', '1', '2017-09-20 15:31:59', '1');
INSERT INTO `osa_login_log` VALUES ('437', '1001', '192.168.0.189', '2017-09-18 11:33:13', '1', '1', '1', '2017-09-20 15:31:59', '1');
INSERT INTO `osa_login_log` VALUES ('438', '1001', '192.168.0.189', '2017-09-18 11:33:13', '1', '1', '1', '2017-09-20 15:31:59', '1');
INSERT INTO `osa_login_log` VALUES ('439', '1001', '192.168.0.189', '2017-09-18 11:33:13', '1', '1', '1', '2017-09-20 15:31:59', '1');
INSERT INTO `osa_login_log` VALUES ('440', '1001', '192.168.0.189', '2017-09-18 11:33:13', '1', '1', '1', '2017-09-20 15:31:59', '1');
INSERT INTO `osa_login_log` VALUES ('441', '1001', '192.168.0.189', '2017-09-18 11:33:13', '1', '1', '1', '2017-09-20 15:31:59', '1');
INSERT INTO `osa_login_log` VALUES ('442', '1001', '192.168.0.189', '2017-09-18 11:33:13', '1', '1', '1', '2017-09-20 15:31:59', '1');
INSERT INTO `osa_login_log` VALUES ('443', '1001', '192.168.0.189', '2017-09-18 11:33:14', '1', '1', '1', '2017-09-20 15:31:59', '1');
INSERT INTO `osa_login_log` VALUES ('444', '1001', '192.168.0.189', '2017-09-18 11:33:14', '1', '1', '1', '2017-09-20 15:32:00', '1');
INSERT INTO `osa_login_log` VALUES ('445', '1001', '192.168.0.189', '2017-09-18 11:33:14', '1', '1', '1', '2017-09-20 15:32:00', '1');
INSERT INTO `osa_login_log` VALUES ('446', '1001', '192.168.0.189', '2017-09-18 11:33:14', '1', '1', '1', '2017-09-20 15:32:00', '1');
INSERT INTO `osa_login_log` VALUES ('447', '1001', '192.168.0.189', '2017-09-18 11:33:14', '1', '1', '1', '2017-09-20 15:32:00', '1');
INSERT INTO `osa_login_log` VALUES ('448', '1001', '192.168.0.189', '2017-09-18 11:33:14', '1', '1', '1', '2017-09-20 15:32:00', '1');
INSERT INTO `osa_login_log` VALUES ('449', '1001', '192.168.0.189', '2017-09-18 11:33:14', '1', '1', '1', '2017-09-20 15:32:00', '1');
INSERT INTO `osa_login_log` VALUES ('450', '1001', '192.168.0.189', '2017-09-18 11:33:15', '1', '1', '1', '2017-09-20 15:32:00', '1');
INSERT INTO `osa_login_log` VALUES ('451', '1001', '192.168.0.189', '2017-09-18 11:33:15', '1', '1', '1', '2017-09-20 15:32:00', '1');
INSERT INTO `osa_login_log` VALUES ('452', '1001', '192.168.0.189', '2017-09-18 11:33:15', '1', '1', '1', '2017-09-20 15:32:00', '1');
INSERT INTO `osa_login_log` VALUES ('453', '1001', '192.168.0.189', '2017-09-18 11:33:15', '1', '1', '1', '2017-09-20 15:32:01', '1');
INSERT INTO `osa_login_log` VALUES ('454', '1001', '192.168.0.189', '2017-09-18 11:33:16', '1', '1', '1', '2017-09-20 15:32:01', '1');
INSERT INTO `osa_login_log` VALUES ('455', '1001', '192.168.0.189', '2017-09-18 11:33:16', '1', '1', '1', '2017-09-20 15:32:01', '1');
INSERT INTO `osa_login_log` VALUES ('456', '1001', '192.168.0.189', '2017-09-18 11:33:16', '1', '1', '1', '2017-09-20 15:32:01', '1');
INSERT INTO `osa_login_log` VALUES ('457', '1001', '192.168.0.189', '2017-09-18 11:33:16', '1', '1', '1', '2017-09-20 15:32:01', '1');
INSERT INTO `osa_login_log` VALUES ('458', '1001', '192.168.0.189', '2017-09-18 11:33:16', '1', '1', '1', '2017-09-20 15:32:01', '1');
INSERT INTO `osa_login_log` VALUES ('459', '1001', '192.168.0.189', '2017-09-18 11:33:16', '1', '1', '1', '2017-09-20 15:32:01', '1');
INSERT INTO `osa_login_log` VALUES ('460', '1001', '192.168.0.189', '2017-09-18 11:33:16', '1', '1', '1', '2017-09-20 15:32:01', '1');
INSERT INTO `osa_login_log` VALUES ('461', '1001', '192.168.0.189', '2017-09-18 11:33:17', '1', '1', '1', '2017-09-20 15:32:01', '1');
INSERT INTO `osa_login_log` VALUES ('462', '1001', '192.168.0.189', '2017-09-18 11:33:17', '1', '1', '1', '2017-09-20 15:32:01', '1');
INSERT INTO `osa_login_log` VALUES ('463', '1001', '192.168.0.189', '2017-09-18 11:33:17', '1', '1', '1', '2017-09-20 15:32:02', '1');
INSERT INTO `osa_login_log` VALUES ('464', '1001', '192.168.0.189', '2017-09-18 11:33:17', '1', '1', '1', '2017-09-20 15:32:02', '1');
INSERT INTO `osa_login_log` VALUES ('465', '1001', '192.168.0.189', '2017-09-18 11:33:17', '1', '1', '1', '2017-09-20 15:32:02', '1');
INSERT INTO `osa_login_log` VALUES ('466', '1001', '192.168.0.189', '2017-09-18 11:33:17', '1', '1', '1', '2017-09-20 15:32:02', '1');
INSERT INTO `osa_login_log` VALUES ('467', '1001', '192.168.0.189', '2017-09-18 11:33:17', '1', '1', '1', '2017-09-20 15:32:03', '1');
INSERT INTO `osa_login_log` VALUES ('468', '1001', '192.168.0.189', '2017-09-18 11:33:17', '1', '1', '1', '2017-09-20 15:32:03', '1');
INSERT INTO `osa_login_log` VALUES ('469', '1001', '192.168.0.189', '2017-09-18 11:33:18', '1', '1', '1', '2017-09-20 15:32:03', '1');
INSERT INTO `osa_login_log` VALUES ('470', '1001', '192.168.0.189', '2017-09-18 11:33:18', '1', '1', '1', '2017-09-20 15:32:03', '1');
INSERT INTO `osa_login_log` VALUES ('471', '1001', '192.168.0.189', '2017-09-18 11:33:18', '1', '1', '1', '2017-09-20 15:32:03', '1');
INSERT INTO `osa_login_log` VALUES ('472', '1001', '192.168.0.189', '2017-09-18 11:33:18', '1', '1', '1', '2017-09-20 15:32:03', '1');
INSERT INTO `osa_login_log` VALUES ('473', '1001', '192.168.0.189', '2017-09-18 11:33:18', '1', '1', '1', '2017-09-20 15:32:03', '1');
INSERT INTO `osa_login_log` VALUES ('474', '1001', '192.168.0.189', '2017-09-18 11:33:18', '1', '1', '1', '2017-09-20 15:32:03', '1');
INSERT INTO `osa_login_log` VALUES ('475', '1001', '192.168.0.189', '2017-09-18 11:33:19', '1', '1', '1', '2017-09-20 15:32:03', '1');
INSERT INTO `osa_login_log` VALUES ('476', '1001', '192.168.0.189', '2017-09-18 11:33:19', '1', '1', '1', '2017-09-20 15:32:03', '1');
INSERT INTO `osa_login_log` VALUES ('477', '1001', '192.168.0.189', '2017-09-18 11:33:19', '1', '1', '1', '2017-09-20 15:32:04', '1');
INSERT INTO `osa_login_log` VALUES ('478', '1001', '192.168.0.189', '2017-09-18 11:33:19', '1', '1', '1', '2017-09-20 15:32:04', '1');
INSERT INTO `osa_login_log` VALUES ('479', '1001', '192.168.0.189', '2017-09-18 11:33:19', '1', '1', '1', '2017-09-20 15:32:04', '1');
INSERT INTO `osa_login_log` VALUES ('480', '1001', '192.168.0.189', '2017-09-18 11:33:19', '1', '1', '1', '2017-09-20 15:32:04', '1');
INSERT INTO `osa_login_log` VALUES ('481', '1001', '192.168.0.189', '2017-09-18 11:33:19', '1', '1', '1', '2017-09-20 15:32:04', '1');
INSERT INTO `osa_login_log` VALUES ('482', '1001', '192.168.0.189', '2017-09-18 11:33:19', '1', '1', '1', '2017-09-20 15:32:05', '1');
INSERT INTO `osa_login_log` VALUES ('483', '1001', '192.168.0.189', '2017-09-18 11:33:19', '1', '1', '1', '2017-09-20 15:32:05', '1');
INSERT INTO `osa_login_log` VALUES ('484', '1001', '192.168.0.189', '2017-09-18 11:33:20', '1', '1', '1', '2017-09-20 15:32:05', '1');
INSERT INTO `osa_login_log` VALUES ('485', '1001', '192.168.0.189', '2017-09-18 11:33:20', '1', '1', '1', '2017-09-20 15:32:05', '1');
INSERT INTO `osa_login_log` VALUES ('486', '1001', '192.168.0.189', '2017-09-18 11:33:20', '1', '1', '1', '2017-09-20 15:32:06', '1');
INSERT INTO `osa_login_log` VALUES ('487', '1001', '192.168.0.189', '2017-09-18 11:33:20', '1', '1', '1', '2017-09-20 15:32:06', '1');
INSERT INTO `osa_login_log` VALUES ('488', '1001', '192.168.0.189', '2017-09-18 11:33:20', '1', '1', '1', '2017-09-20 15:32:06', '1');
INSERT INTO `osa_login_log` VALUES ('489', '1001', '192.168.0.189', '2017-09-18 11:33:20', '1', '1', '1', '2017-09-20 15:32:06', '1');
INSERT INTO `osa_login_log` VALUES ('490', '1001', '192.168.0.189', '2017-09-18 11:33:20', '1', '1', '1', '2017-09-20 15:32:06', '1');
INSERT INTO `osa_login_log` VALUES ('491', '1001', '192.168.0.189', '2017-09-18 11:33:20', '1', '1', '1', '2017-09-20 15:32:06', '1');
INSERT INTO `osa_login_log` VALUES ('492', '1001', '192.168.0.189', '2017-09-18 11:33:20', '1', '1', '1', '2017-09-20 15:32:06', '1');
INSERT INTO `osa_login_log` VALUES ('493', '1001', '192.168.0.189', '2017-09-18 11:33:20', '1', '1', '1', '2017-09-20 15:32:06', '1');
INSERT INTO `osa_login_log` VALUES ('494', '1001', '192.168.0.189', '2017-09-18 11:33:21', '1', '1', '1', '2017-09-20 15:32:06', '1');
INSERT INTO `osa_login_log` VALUES ('495', '1001', '192.168.0.189', '2017-09-18 11:33:21', '1', '1', '1', '2017-09-20 15:32:06', '1');
INSERT INTO `osa_login_log` VALUES ('496', '1001', '192.168.0.189', '2017-09-18 11:33:21', '1', '1', '1', '2017-09-20 15:32:06', '1');
INSERT INTO `osa_login_log` VALUES ('497', '1001', '192.168.0.189', '2017-09-18 11:33:21', '1', '1', '1', '2017-09-20 15:32:06', '1');
INSERT INTO `osa_login_log` VALUES ('498', '1001', '192.168.0.189', '2017-09-18 11:33:21', '1', '1', '1', '2017-09-20 15:32:06', '1');
INSERT INTO `osa_login_log` VALUES ('499', '1001', '192.168.0.189', '2017-09-18 11:33:21', '1', '1', '1', '2017-09-20 15:32:07', '1');
INSERT INTO `osa_login_log` VALUES ('500', '1001', '192.168.0.189', '2017-09-18 11:33:21', '1', '1', '1', '2017-09-20 15:32:07', '1');
INSERT INTO `osa_login_log` VALUES ('501', '1001', '192.168.0.189', '2017-09-18 11:33:21', '1', '1', '1', '2017-09-20 15:32:07', '1');
INSERT INTO `osa_login_log` VALUES ('502', '1001', '192.168.0.189', '2017-09-18 11:33:21', '1', '1', '1', '2017-09-20 15:32:07', '1');
INSERT INTO `osa_login_log` VALUES ('503', '1001', '192.168.0.189', '2017-09-18 11:33:22', '1', '1', '1', '2017-09-20 15:32:07', '1');
INSERT INTO `osa_login_log` VALUES ('504', '1001', '192.168.0.189', '2017-09-18 11:33:22', '1', '1', '1', '2017-09-20 15:32:07', '1');
INSERT INTO `osa_login_log` VALUES ('505', '1001', '192.168.0.189', '2017-09-18 11:33:22', '1', '1', '1', '2017-09-20 15:32:07', '1');
INSERT INTO `osa_login_log` VALUES ('506', '1001', '192.168.0.189', '2017-09-18 11:33:22', '1', '1', '1', '2017-09-20 15:32:07', '1');
INSERT INTO `osa_login_log` VALUES ('507', '1001', '192.168.0.189', '2017-09-18 11:33:22', '1', '1', '1', '2017-09-20 15:32:07', '1');
INSERT INTO `osa_login_log` VALUES ('508', '1001', '192.168.0.189', '2017-09-18 11:33:22', '1', '1', '1', '2017-09-20 15:32:07', '1');
INSERT INTO `osa_login_log` VALUES ('509', '1001', '192.168.0.189', '2017-09-18 11:33:22', '1', '1', '1', '2017-09-20 15:32:07', '1');
INSERT INTO `osa_login_log` VALUES ('510', '1001', '192.168.0.189', '2017-09-18 11:33:22', '1', '1', '1', '2017-09-20 15:32:07', '1');
INSERT INTO `osa_login_log` VALUES ('511', '1001', '192.168.0.189', '2017-09-18 11:33:22', '1', '1', '1', '2017-09-20 15:32:07', '1');
INSERT INTO `osa_login_log` VALUES ('512', '1001', '192.168.0.189', '2017-09-18 11:33:23', '1', '1', '1', '2017-09-20 15:32:08', '1');
INSERT INTO `osa_login_log` VALUES ('513', '1001', '192.168.0.189', '2017-09-18 11:33:23', '1', '1', '1', '2017-09-20 15:32:08', '1');
INSERT INTO `osa_login_log` VALUES ('514', '1001', '192.168.0.189', '2017-09-18 11:33:23', '1', '1', '1', '2017-09-20 15:32:08', '1');
INSERT INTO `osa_login_log` VALUES ('515', '1001', '192.168.0.189', '2017-09-18 11:33:23', '1', '1', '1', '2017-09-20 15:32:08', '1');
INSERT INTO `osa_login_log` VALUES ('516', '1001', '192.168.0.189', '2017-09-18 11:33:23', '1', '1', '1', '2017-09-20 15:32:08', '1');
INSERT INTO `osa_login_log` VALUES ('517', '1001', '192.168.0.189', '2017-09-18 11:33:23', '1', '1', '1', '2017-09-20 15:32:08', '1');
INSERT INTO `osa_login_log` VALUES ('518', '1001', '192.168.0.189', '2017-09-18 11:33:23', '1', '1', '1', '2017-09-20 15:32:09', '1');
INSERT INTO `osa_login_log` VALUES ('519', '1001', '192.168.0.189', '2017-09-18 11:33:23', '1', '1', '1', '2017-09-20 15:32:09', '1');
INSERT INTO `osa_login_log` VALUES ('520', '1001', '192.168.0.189', '2017-09-18 11:33:23', '1', '1', '1', '2017-09-20 15:32:09', '1');
INSERT INTO `osa_login_log` VALUES ('521', '1001', '192.168.0.189', '2017-09-18 11:33:24', '1', '1', '1', '2017-09-20 15:32:09', '1');
INSERT INTO `osa_login_log` VALUES ('522', '1001', '192.168.0.189', '2017-09-18 11:33:24', '1', '1', '1', '2017-09-20 15:32:09', '1');
INSERT INTO `osa_login_log` VALUES ('523', '1001', '192.168.0.189', '2017-09-18 11:33:24', '1', '1', '1', '2017-09-20 15:32:10', '1');
INSERT INTO `osa_login_log` VALUES ('524', '1001', '192.168.0.189', '2017-09-18 11:33:24', '1', '1', '1', '2017-09-20 15:32:10', '1');
INSERT INTO `osa_login_log` VALUES ('525', '1001', '192.168.0.189', '2017-09-18 11:33:24', '1', '1', '1', '2017-09-20 15:32:10', '1');
INSERT INTO `osa_login_log` VALUES ('526', '1001', '192.168.0.189', '2017-09-18 11:33:24', '1', '1', '1', '2017-09-20 15:32:10', '1');
INSERT INTO `osa_login_log` VALUES ('527', '1001', '192.168.0.189', '2017-09-18 11:33:24', '1', '1', '1', '2017-09-20 15:32:10', '1');
INSERT INTO `osa_login_log` VALUES ('528', '1001', '192.168.0.189', '2017-09-18 11:33:24', '1', '1', '1', '2017-09-20 15:32:10', '1');
INSERT INTO `osa_login_log` VALUES ('529', '1001', '192.168.0.189', '2017-09-18 11:33:25', '1', '1', '1', '2017-09-20 15:32:10', '1');
INSERT INTO `osa_login_log` VALUES ('530', '1001', '192.168.0.189', '2017-09-18 11:33:25', '1', '1', '1', '2017-09-20 15:32:10', '1');
INSERT INTO `osa_login_log` VALUES ('531', '1001', '192.168.0.189', '2017-09-18 11:33:25', '1', '1', '1', '2017-09-20 15:32:10', '1');
INSERT INTO `osa_login_log` VALUES ('532', '1001', '192.168.0.189', '2017-09-18 11:33:25', '1', '1', '1', '2017-09-20 15:32:10', '1');
INSERT INTO `osa_login_log` VALUES ('533', '1001', '192.168.0.189', '2017-09-18 11:33:25', '1', '1', '1', '2017-09-20 15:32:10', '1');
INSERT INTO `osa_login_log` VALUES ('534', '1001', '192.168.0.189', '2017-09-18 11:33:25', '1', '1', '1', '2017-09-20 15:32:10', '1');
INSERT INTO `osa_login_log` VALUES ('535', '1001', '192.168.0.189', '2017-09-18 11:33:25', '1', '1', '1', '2017-09-20 15:32:11', '1');
INSERT INTO `osa_login_log` VALUES ('536', '1001', '192.168.0.189', '2017-09-18 11:33:26', '1', '1', '1', '2017-09-20 15:32:11', '1');
INSERT INTO `osa_login_log` VALUES ('537', '1001', '192.168.0.189', '2017-09-18 11:33:26', '1', '1', '1', '2017-09-20 15:32:11', '1');
INSERT INTO `osa_login_log` VALUES ('538', '1001', '192.168.0.189', '2017-09-18 11:33:26', '1', '1', '1', '2017-09-20 15:32:11', '1');
INSERT INTO `osa_login_log` VALUES ('539', '1001', '192.168.0.189', '2017-09-18 11:33:26', '1', '1', '1', '2017-09-20 15:32:11', '1');
INSERT INTO `osa_login_log` VALUES ('540', '1001', '192.168.0.189', '2017-09-18 11:33:26', '1', '1', '1', '2017-09-20 15:32:11', '1');
INSERT INTO `osa_login_log` VALUES ('541', '1001', '192.168.0.189', '2017-09-18 11:33:26', '1', '1', '1', '2017-09-20 15:32:11', '1');
INSERT INTO `osa_login_log` VALUES ('542', '1001', '192.168.0.189', '2017-09-18 11:33:26', '1', '1', '1', '2017-09-20 15:32:11', '1');
INSERT INTO `osa_login_log` VALUES ('543', '1001', '192.168.0.189', '2017-09-18 11:33:26', '1', '1', '1', '2017-09-20 15:32:11', '1');
INSERT INTO `osa_login_log` VALUES ('544', '1001', '192.168.0.189', '2017-09-18 11:33:26', '1', '1', '1', '2017-09-20 15:32:11', '1');
INSERT INTO `osa_login_log` VALUES ('545', '1001', '192.168.0.189', '2017-09-18 11:33:27', '1', '1', '1', '2017-09-20 15:32:11', '1');
INSERT INTO `osa_login_log` VALUES ('546', '1001', '192.168.0.189', '2017-09-18 11:33:27', '1', '1', '1', '2017-09-20 15:32:11', '1');
INSERT INTO `osa_login_log` VALUES ('547', '1001', '192.168.0.189', '2017-09-18 11:33:27', '1', '1', '1', '2017-09-20 15:32:12', '1');
INSERT INTO `osa_login_log` VALUES ('548', '1001', '192.168.0.189', '2017-09-18 11:33:27', '1', '1', '1', '2017-09-20 15:32:12', '1');
INSERT INTO `osa_login_log` VALUES ('549', '1001', '192.168.0.189', '2017-09-18 11:33:27', '1', '1', '1', '2017-09-20 15:32:12', '1');
INSERT INTO `osa_login_log` VALUES ('550', '1001', '192.168.0.189', '2017-09-18 11:33:27', '1', '1', '1', '2017-09-20 15:32:12', '1');
INSERT INTO `osa_login_log` VALUES ('551', '1001', '192.168.0.189', '2017-09-18 11:38:11', '1', '1', '1', '2017-09-20 15:32:13', '1');
INSERT INTO `osa_login_log` VALUES ('552', '1001', '192.168.0.189', '2017-09-18 11:38:17', '1', '1', '1', '2017-09-20 15:32:13', '1');
INSERT INTO `osa_login_log` VALUES ('553', '1001', '192.168.0.189', '2017-09-18 11:38:17', '1', '1', '1', '2017-09-20 15:32:13', '1');
INSERT INTO `osa_login_log` VALUES ('554', '1001', '192.168.0.189', '2017-09-18 11:41:58', '1', '1', '1', '2017-09-20 15:32:22', '1');
INSERT INTO `osa_login_log` VALUES ('555', '1001', '192.168.0.189', '2017-09-18 11:42:02', '1', '1', '1', '2017-09-20 15:32:22', '1');
INSERT INTO `osa_login_log` VALUES ('556', '1001', '192.168.0.189', '2017-09-18 11:42:02', '1', '1', '1', '2017-09-20 15:32:22', '1');
INSERT INTO `osa_login_log` VALUES ('557', '1001', '192.168.0.189', '2017-09-18 11:47:02', '1', '1', '1', '2017-09-20 15:32:22', '1');
INSERT INTO `osa_login_log` VALUES ('558', '1001', '192.168.0.189', '2017-09-18 11:47:26', '1', '1', '1', '2017-09-20 15:32:22', '1');
INSERT INTO `osa_login_log` VALUES ('559', '1001', '192.168.0.189', '2017-09-18 11:47:27', '1', '1', '1', '2017-09-20 15:32:22', '1');
INSERT INTO `osa_login_log` VALUES ('560', '1001', '192.168.0.189', '2017-09-18 11:51:11', '1', '1', '1', '2017-09-20 15:32:22', '1');
INSERT INTO `osa_login_log` VALUES ('561', '1001', '192.168.0.189', '2017-09-18 11:51:28', '1', '1', '1', '2017-09-20 15:32:22', '1');
INSERT INTO `osa_login_log` VALUES ('562', '1001', '192.168.0.189', '2017-09-18 11:51:28', '1', '1', '1', '2017-09-20 15:32:23', '1');
INSERT INTO `osa_login_log` VALUES ('563', '1001', '192.168.0.189', '2017-09-18 12:11:18', '1', '1', '1', '2017-09-20 15:32:23', '1');
INSERT INTO `osa_login_log` VALUES ('564', '1001', '192.168.0.189', '2017-09-18 12:11:42', '1', '1', '1', '2017-09-20 15:32:23', '1');
INSERT INTO `osa_login_log` VALUES ('565', '1001', '192.168.0.189', '2017-09-18 12:11:43', '1', '1', '1', '2017-09-20 15:32:23', '1');
INSERT INTO `osa_login_log` VALUES ('566', '1001', '192.168.0.189', '2017-09-18 12:11:43', '1', '1', '1', '2017-09-20 15:32:23', '1');
INSERT INTO `osa_login_log` VALUES ('567', '1001', '192.168.0.189', '2017-09-18 12:11:44', '1', '1', '1', '2017-09-20 15:32:23', '1');
INSERT INTO `osa_login_log` VALUES ('568', '1001', '192.168.0.189', '2017-09-18 12:11:45', '1', '1', '1', '2017-09-20 15:32:24', '1');
INSERT INTO `osa_login_log` VALUES ('569', '1001', '192.168.0.189', '2017-09-18 12:11:45', '1', '1', '1', '2017-09-20 15:32:24', '1');
INSERT INTO `osa_login_log` VALUES ('570', '1001', '192.168.0.189', '2017-09-18 12:11:45', '1', '1', '1', '2017-09-20 15:32:24', '1');
INSERT INTO `osa_login_log` VALUES ('571', '1001', '192.168.0.189', '2017-09-18 12:11:46', '1', '1', '1', '2017-09-20 15:32:24', '1');
INSERT INTO `osa_login_log` VALUES ('572', '1001', '192.168.0.189', '2017-09-18 12:11:46', '1', '1', '1', '2017-09-20 15:32:24', '1');
INSERT INTO `osa_login_log` VALUES ('573', '1001', '192.168.0.189', '2017-09-18 12:11:46', '1', '1', '1', '2017-09-20 15:32:25', '1');
INSERT INTO `osa_login_log` VALUES ('574', '1001', '192.168.0.189', '2017-09-18 12:11:46', '1', '1', '1', '2017-09-20 15:32:25', '1');
INSERT INTO `osa_login_log` VALUES ('575', '1001', '192.168.0.189', '2017-09-18 12:11:46', '1', '1', '1', '2017-09-20 15:32:25', '1');
INSERT INTO `osa_login_log` VALUES ('576', '1001', '192.168.0.189', '2017-09-18 12:11:47', '1', '1', '1', '2017-09-20 15:32:25', '1');
INSERT INTO `osa_login_log` VALUES ('577', '1001', '192.168.0.189', '2017-09-18 12:11:47', '1', '1', '1', '2017-09-20 15:32:25', '1');
INSERT INTO `osa_login_log` VALUES ('578', '1001', '192.168.0.189', '2017-09-18 12:11:47', '1', '1', '1', '2017-09-20 15:32:25', '1');
INSERT INTO `osa_login_log` VALUES ('579', '1001', '192.168.0.189', '2017-09-18 12:11:47', '1', '1', '1', '2017-09-20 15:32:26', '1');
INSERT INTO `osa_login_log` VALUES ('580', '1001', '192.168.0.189', '2017-09-18 12:11:48', '1', '1', '1', '2017-09-20 15:32:26', '1');
INSERT INTO `osa_login_log` VALUES ('581', '1001', '192.168.0.189', '2017-09-18 12:11:48', '1', '1', '1', '2017-09-20 15:32:26', '1');
INSERT INTO `osa_login_log` VALUES ('582', '1001', '192.168.0.189', '2017-09-18 14:07:51', '1', '1', '1', '2017-09-20 15:32:29', '1');
INSERT INTO `osa_login_log` VALUES ('583', '1001', '192.168.0.189', '2017-09-18 14:08:25', '1', '1', '1', '2017-09-20 15:32:29', '1');
INSERT INTO `osa_login_log` VALUES ('584', '1001', '192.168.0.189', '2017-09-18 14:08:26', '1', '1', '1', '2017-09-20 15:32:29', '1');
INSERT INTO `osa_login_log` VALUES ('585', '1001', '192.168.0.189', '2017-09-18 14:11:44', '1', '1', '1', '2017-09-20 15:32:29', '1');
INSERT INTO `osa_login_log` VALUES ('586', '1001', '192.168.0.189', '2017-09-18 14:12:50', '1', '1', '1', '2017-09-20 15:32:29', '1');
INSERT INTO `osa_login_log` VALUES ('587', '1001', '192.168.0.189', '2017-09-18 14:12:50', '1', '1', '1', '2017-09-20 15:32:30', '1');
INSERT INTO `osa_login_log` VALUES ('588', '1001', '192.168.0.189', '2017-09-18 14:17:40', '1', '1', '1', '2017-09-20 15:32:30', '1');
INSERT INTO `osa_login_log` VALUES ('589', '1001', '192.168.0.189', '2017-09-18 14:18:59', '1', '1', '1', '2017-09-20 15:32:31', '1');
INSERT INTO `osa_login_log` VALUES ('590', '1001', '192.168.0.189', '2017-09-18 14:19:05', '1', '1', '1', '2017-09-20 15:32:31', '1');
INSERT INTO `osa_login_log` VALUES ('591', '1001', '192.168.0.189', '2017-09-18 14:29:13', '1', '1', '1', '2017-09-20 15:32:31', '1');
INSERT INTO `osa_login_log` VALUES ('592', '1001', '192.168.0.189', '2017-09-18 14:29:25', '1', '1', '1', '2017-09-20 15:32:31', '1');
INSERT INTO `osa_login_log` VALUES ('593', '1001', '192.168.0.189', '2017-09-18 14:29:29', '1', '1', '1', '2017-09-20 15:32:31', '1');
INSERT INTO `osa_login_log` VALUES ('594', '1001', '192.168.0.189', '2017-09-18 14:37:37', '1', '1', '1', '2017-09-20 15:32:32', '1');
INSERT INTO `osa_login_log` VALUES ('595', '1001', '192.168.0.189', '2017-09-18 14:38:04', '1', '1', '1', '2017-09-20 15:32:32', '1');
INSERT INTO `osa_login_log` VALUES ('596', '1001', '192.168.0.189', '2017-09-18 14:38:04', '1', '1', '1', '2017-09-20 15:32:32', '1');
INSERT INTO `osa_login_log` VALUES ('597', '1001', '192.168.0.189', '2017-09-18 15:15:06', '1', '1', '1', '2017-09-20 15:32:32', '1');
INSERT INTO `osa_login_log` VALUES ('598', '1001', '192.168.0.189', '2017-09-18 15:15:30', '1', '1', '1', '2017-09-20 15:32:33', '1');
INSERT INTO `osa_login_log` VALUES ('599', '1001', '192.168.0.189', '2017-09-18 15:18:57', '1', '1', '1', '2017-09-20 15:32:33', '1');
INSERT INTO `osa_login_log` VALUES ('600', '1001', '192.168.0.189', '2017-09-18 15:19:34', '1', '1', '1', '2017-09-20 15:32:33', '1');
INSERT INTO `osa_login_log` VALUES ('601', '1001', '192.168.0.189', '2017-09-18 15:21:02', '1', '1', '1', '2017-09-20 15:32:34', '1');
INSERT INTO `osa_login_log` VALUES ('602', '1001', '192.168.0.189', '2017-09-18 15:21:34', '1', '1', '1', '2017-09-20 15:32:34', '1');
INSERT INTO `osa_login_log` VALUES ('603', '1001', '192.168.0.189', '2017-09-18 15:24:26', '1', '1', '1', '2017-09-20 15:32:34', '1');
INSERT INTO `osa_login_log` VALUES ('604', '1001', '192.168.0.189', '2017-09-18 15:24:57', '1', '1', '1', '2017-09-20 15:32:34', '1');
INSERT INTO `osa_login_log` VALUES ('605', '1001', '192.168.0.189', '2017-09-18 15:26:44', '1', '1', '1', '2017-09-20 15:32:34', '1');
INSERT INTO `osa_login_log` VALUES ('606', '1001', '192.168.0.189', '2017-09-18 15:27:31', '1', '1', '1', '2017-09-20 15:32:35', '1');
INSERT INTO `osa_login_log` VALUES ('607', '1001', '192.168.0.189', '2017-09-18 15:28:17', '1', '1', '1', '2017-09-20 15:32:35', '1');
INSERT INTO `osa_login_log` VALUES ('608', '1001', '192.168.0.189', '2017-09-18 15:28:37', '1', '1', '1', '2017-09-20 15:32:35', '1');
INSERT INTO `osa_login_log` VALUES ('609', '1001', '192.168.0.189', '2017-09-20 09:25:25', '1', '1', '1', '2017-09-20 15:32:35', '1');
INSERT INTO `osa_login_log` VALUES ('610', '1001', '192.168.0.189', '2017-09-20 09:25:46', '2', '1', '2', '2017-09-20 15:32:35', '1');
INSERT INTO `osa_login_log` VALUES ('611', '1001', '192.168.0.189', '2017-09-20 09:26:14', '3', '1', '3', '2017-09-20 15:32:35', '1');
INSERT INTO `osa_login_log` VALUES ('612', '1001', '192.168.0.189', '2017-09-20 09:26:23', '4', '1', '4', '2017-09-20 15:32:35', '1');
INSERT INTO `osa_login_log` VALUES ('613', '1001', '192.168.0.189', '2017-09-20 10:40:15', '1', '1', '1', '2017-09-20 15:32:35', '1');
INSERT INTO `osa_login_log` VALUES ('614', '1001', '192.168.0.189', '2017-09-20 10:40:19', '2', '1', '2', '2017-09-20 15:32:35', '1');
INSERT INTO `osa_login_log` VALUES ('615', '1001', '192.168.0.189', '2017-09-20 10:40:22', '3', '1', '3', '2017-09-20 15:32:35', '1');
INSERT INTO `osa_login_log` VALUES ('616', '1001', '192.168.0.189', '2017-09-20 10:40:25', '4', '1', '4', '2017-09-20 15:32:36', '1');
INSERT INTO `osa_login_log` VALUES ('617', '1001', '192.168.0.189', '2017-09-20 10:42:01', '1', '1', '1', '2017-09-20 15:32:36', '1');
INSERT INTO `osa_login_log` VALUES ('618', '1001', '192.168.0.189', '2017-09-20 10:43:06', '5', '1', '5', '2017-09-20 15:32:36', '1');
INSERT INTO `osa_login_log` VALUES ('619', '1001', '192.168.0.189', '2017-09-20 10:48:28', '1', '1', '1', '2017-09-20 15:32:36', '1');
INSERT INTO `osa_login_log` VALUES ('620', '1001', '192.168.0.189', '2017-09-20 10:49:16', '2', '1', '2', '2017-09-20 15:32:36', '1');
INSERT INTO `osa_login_log` VALUES ('621', '1001', '192.168.0.189', '2017-09-20 10:49:59', '3', '1', '3', '2017-09-20 15:32:36', '1');
INSERT INTO `osa_login_log` VALUES ('622', '1001', '192.168.0.189', '2017-09-20 10:50:29', '4', '1', '4', '2017-09-20 15:32:36', '1');
INSERT INTO `osa_login_log` VALUES ('623', '1001', '192.168.0.189', '2017-09-20 11:28:41', '1', '1', '1', '2017-09-20 15:32:37', '1');
INSERT INTO `osa_login_log` VALUES ('624', '1001', '192.168.0.189', '2017-09-20 11:28:45', '2', '1', '2', '2017-09-20 15:32:37', '1');
INSERT INTO `osa_login_log` VALUES ('625', '1001', '192.168.0.189', '2017-09-20 11:28:50', '3', '1', '3', '2017-09-20 15:32:37', '1');
INSERT INTO `osa_login_log` VALUES ('626', '1001', '192.168.0.189', '2017-09-20 11:28:55', '4', '1', '4', '2017-09-20 15:32:37', '1');
INSERT INTO `osa_login_log` VALUES ('627', '1001', '192.168.0.189', '2017-09-20 11:34:33', '1', '1', '1', '2017-09-20 15:32:37', '1');
INSERT INTO `osa_login_log` VALUES ('628', '1001', '192.168.0.189', '2017-09-20 11:36:16', '2', '1', '2', '2017-09-20 15:32:37', '1');
INSERT INTO `osa_login_log` VALUES ('629', '1001', '192.168.0.189', '2017-09-20 11:36:20', '3', '1', '3', '2017-09-20 15:32:37', '1');
INSERT INTO `osa_login_log` VALUES ('630', '1001', '192.168.0.189', '2017-09-20 11:36:46', '4', '1', '4', '2017-09-20 15:32:37', '1');
INSERT INTO `osa_login_log` VALUES ('631', '1001', '192.168.0.189', '2017-09-20 19:00:52', '1', '1', '1', '2017-10-09 18:17:56', '1');
INSERT INTO `osa_login_log` VALUES ('632', '1001', '192.168.0.189', '2017-09-20 19:00:54', '2', '1', '2', '2017-10-09 18:17:56', '1');
INSERT INTO `osa_login_log` VALUES ('633', '1001', '192.168.0.189', '2017-09-20 19:01:15', '3', '1', '3', '2017-10-09 18:17:58', '1');
INSERT INTO `osa_login_log` VALUES ('634', '1001', '192.168.0.189', '2017-09-20 19:01:31', '1', '1', '1', '2017-10-09 18:17:58', '1');
INSERT INTO `osa_login_log` VALUES ('635', '1001', '192.168.0.189', '2017-09-21 09:35:30', '1', '1', '1', '2017-10-09 18:17:58', '1');
INSERT INTO `osa_login_log` VALUES ('636', '1001', '192.168.0.189', '2017-09-21 09:35:31', '2', '1', '2', '2017-10-09 18:17:58', '1');
INSERT INTO `osa_login_log` VALUES ('637', '1001', '192.168.0.189', '2017-09-21 09:35:36', '3', '1', '3', '2017-10-09 18:17:58', '1');
INSERT INTO `osa_login_log` VALUES ('638', '1001', '192.168.0.189', '2017-09-21 09:35:40', '4', '1', '4', '2017-10-09 18:17:58', '1');
INSERT INTO `osa_login_log` VALUES ('639', '1001', '192.168.0.189', '2017-09-21 09:43:32', '1', '1', '1', '2017-10-09 18:17:59', '1');
INSERT INTO `osa_login_log` VALUES ('640', '1001', '192.168.0.189', '2017-09-21 09:43:37', '2', '1', '2', '2017-10-09 18:17:59', '1');
INSERT INTO `osa_login_log` VALUES ('641', '1001', '192.168.0.189', '2017-09-21 09:43:40', '3', '1', '3', '2017-10-09 18:17:59', '1');
INSERT INTO `osa_login_log` VALUES ('642', '1001', '192.168.0.189', '2017-09-21 09:43:44', '4', '1', '4', '2017-10-09 18:17:59', '1');
INSERT INTO `osa_login_log` VALUES ('643', '1001', '192.168.0.189', '2017-09-21 10:03:07', '1', '1', '1', '2017-10-09 18:18:00', '1');
INSERT INTO `osa_login_log` VALUES ('644', '1001', '192.168.0.189', '2017-09-21 10:03:10', '2', '1', '2', '2017-10-09 18:18:00', '1');
INSERT INTO `osa_login_log` VALUES ('645', '1001', '192.168.0.189', '2017-09-21 10:03:13', '3', '1', '3', '2017-10-09 18:18:00', '1');
INSERT INTO `osa_login_log` VALUES ('646', '1001', '192.168.0.189', '2017-09-21 10:03:16', '4', '1', '4', '2017-10-09 18:18:00', '1');
INSERT INTO `osa_login_log` VALUES ('647', '1001', '192.168.0.189', '2017-09-21 10:13:22', '1', '1', '1', '2017-10-09 18:18:01', '1');
INSERT INTO `osa_login_log` VALUES ('648', '1001', '192.168.0.189', '2017-09-21 10:13:25', '2', '1', '2', '2017-10-09 18:18:01', '1');
INSERT INTO `osa_login_log` VALUES ('649', '1001', '192.168.0.189', '2017-09-21 10:13:33', '3', '1', '3', '2017-10-09 18:18:01', '1');
INSERT INTO `osa_login_log` VALUES ('650', '1001', '192.168.0.189', '2017-09-21 10:13:36', '4', '1', '4', '2017-10-09 18:18:01', '1');
INSERT INTO `osa_login_log` VALUES ('651', '1001', '192.168.0.189', '2017-09-21 10:29:56', '1', '1', '1', '2017-10-09 18:18:01', '1');
INSERT INTO `osa_login_log` VALUES ('652', '1001', '192.168.0.189', '2017-09-21 10:30:03', '2', '1', '2', '2017-10-09 18:18:01', '1');
INSERT INTO `osa_login_log` VALUES ('653', '1001', '192.168.0.189', '2017-09-21 10:30:06', '3', '1', '3', '2017-10-09 18:18:02', '1');
INSERT INTO `osa_login_log` VALUES ('654', '1001', '192.168.0.189', '2017-09-21 10:30:15', '4', '1', '4', '2017-10-09 18:18:02', '1');
INSERT INTO `osa_login_log` VALUES ('655', '1001', '192.168.0.189', '2017-09-21 10:58:21', '1', '1', '1', '2017-10-09 18:18:03', '1');
INSERT INTO `osa_login_log` VALUES ('656', '1001', '192.168.0.189', '2017-09-21 10:58:24', '2', '1', '2', '2017-10-09 18:18:03', '1');
INSERT INTO `osa_login_log` VALUES ('657', '1001', '192.168.0.189', '2017-09-21 10:58:27', '3', '1', '3', '2017-10-09 18:18:03', '1');
INSERT INTO `osa_login_log` VALUES ('658', '1001', '192.168.0.189', '2017-09-21 10:58:30', '4', '1', '4', '2017-10-09 18:18:03', '1');
INSERT INTO `osa_login_log` VALUES ('659', '1001', '192.168.0.189', '2017-09-21 15:26:37', '2', '1', '2', '2017-10-09 18:18:04', '1');
INSERT INTO `osa_login_log` VALUES ('660', '1001', '192.168.0.189', '2017-09-21 15:26:32', '1', '1', '1', '2017-10-09 18:18:04', '1');
INSERT INTO `osa_login_log` VALUES ('661', '1001', '192.168.0.189', '2017-09-21 15:26:41', '3', '1', '3', '2017-10-09 18:18:04', '1');
INSERT INTO `osa_login_log` VALUES ('662', '1001', '192.168.0.189', '2017-09-21 15:26:44', '4', '1', '4', '2017-10-09 18:18:04', '1');
INSERT INTO `osa_login_log` VALUES ('663', '1001', '192.168.0.189', '2017-09-21 15:38:45', '1', '1', '1', '2017-10-09 18:18:04', '1');
INSERT INTO `osa_login_log` VALUES ('664', '1001', '192.168.0.189', '2017-09-21 15:38:49', '2', '1', '2', '2017-10-09 18:18:04', '1');
INSERT INTO `osa_login_log` VALUES ('665', '1001', '192.168.0.189', '2017-09-21 15:38:52', '3', '1', '3', '2017-10-09 18:18:04', '1');
INSERT INTO `osa_login_log` VALUES ('666', '1001', '192.168.0.189', '2017-09-21 15:38:57', '4', '1', '4', '2017-10-09 18:18:05', '1');
INSERT INTO `osa_login_log` VALUES ('667', '1001', '192.168.0.189', '2017-09-21 16:01:16', '1', '1', '1', '2017-10-09 18:18:06', '1');
INSERT INTO `osa_login_log` VALUES ('668', '1001', '192.168.0.189', '2017-09-21 16:01:20', '2', '1', '2', '2017-10-09 18:18:06', '1');
INSERT INTO `osa_login_log` VALUES ('669', '1001', '192.168.0.189', '2017-09-21 16:01:25', '3', '1', '3', '2017-10-09 18:18:06', '1');
INSERT INTO `osa_login_log` VALUES ('670', '1001', '192.168.0.189', '2017-09-21 16:01:30', '4', '1', '4', '2017-10-09 18:18:06', '1');
INSERT INTO `osa_login_log` VALUES ('671', '1001', '192.168.0.189', '2017-09-21 16:58:18', '1', '1', '1', '2017-10-09 18:18:06', '1');
INSERT INTO `osa_login_log` VALUES ('672', '1001', '192.168.0.189', '2017-09-21 16:58:20', '2', '1', '2', '2017-10-09 18:18:06', '1');
INSERT INTO `osa_login_log` VALUES ('673', '1001', '192.168.0.189', '2017-09-21 16:58:25', '3', '1', '3', '2017-10-09 18:18:06', '1');
INSERT INTO `osa_login_log` VALUES ('674', '1001', '192.168.0.189', '2017-09-21 16:58:29', '4', '1', '4', '2017-10-09 18:18:06', '1');
INSERT INTO `osa_login_log` VALUES ('675', '1001', '192.168.0.189', '2017-09-21 17:46:18', '1', '1', '1', '2017-10-09 18:18:07', '1');
INSERT INTO `osa_login_log` VALUES ('676', '1001', '192.168.0.189', '2017-09-21 17:46:21', '2', '1', '2', '2017-10-09 18:18:07', '1');
INSERT INTO `osa_login_log` VALUES ('677', '1001', '192.168.0.189', '2017-09-21 17:46:24', '3', '1', '3', '2017-10-09 18:18:07', '1');
INSERT INTO `osa_login_log` VALUES ('678', '1001', '192.168.0.189', '2017-09-21 17:46:27', '4', '1', '4', '2017-10-09 18:18:07', '1');
INSERT INTO `osa_login_log` VALUES ('679', '1001', '192.168.0.189', '2017-09-22 10:05:18', '2', '1', '2', '2017-10-09 18:18:07', '1');
INSERT INTO `osa_login_log` VALUES ('680', '1001', '192.168.0.189', '2017-09-22 10:05:18', '1', '1', '1', '2017-10-09 18:18:07', '1');
INSERT INTO `osa_login_log` VALUES ('681', '1001', '192.168.0.189', '2017-09-22 10:05:21', '4', '1', '4', '2017-10-09 18:18:07', '1');
INSERT INTO `osa_login_log` VALUES ('682', '1001', '192.168.0.189', '2017-09-22 10:05:25', '6', '1', '6', '2017-10-09 18:18:07', '1');
INSERT INTO `osa_login_log` VALUES ('683', '1001', '192.168.0.189', '2017-09-22 10:31:05', '1', '1', '1', '2017-10-09 18:18:08', '1');
INSERT INTO `osa_login_log` VALUES ('684', '1001', '192.168.0.189', '2017-09-22 10:31:08', '2', '1', '2', '2017-10-09 18:18:08', '1');
INSERT INTO `osa_login_log` VALUES ('685', '1001', '192.168.0.189', '2017-09-22 10:31:12', '3', '1', '3', '2017-10-09 18:18:08', '1');
INSERT INTO `osa_login_log` VALUES ('686', '1001', '192.168.0.189', '2017-09-22 10:31:16', '6', '1', '6', '2017-10-09 18:18:08', '1');
INSERT INTO `osa_login_log` VALUES ('687', '1001', '192.168.0.189', '2017-09-22 11:21:42', '1', '1', '1', '2017-10-09 18:18:08', '1');
INSERT INTO `osa_login_log` VALUES ('688', '1001', '192.168.0.189', '2017-09-22 11:21:46', '2', '1', '2', '2017-10-09 18:18:08', '1');
INSERT INTO `osa_login_log` VALUES ('689', '1001', '192.168.0.189', '2017-09-22 11:21:51', '3', '1', '3', '2017-10-09 18:18:08', '1');
INSERT INTO `osa_login_log` VALUES ('690', '1001', '192.168.0.189', '2017-09-22 11:21:55', '6', '1', '6', '2017-10-09 18:18:08', '1');
INSERT INTO `osa_login_log` VALUES ('691', '1001', '192.168.0.189', '2017-09-22 13:46:24', '1', '1', '1', '2017-10-09 18:18:08', '1');
INSERT INTO `osa_login_log` VALUES ('692', '1001', '192.168.0.189', '2017-09-22 13:46:28', '2', '1', '2', '2017-10-09 18:18:09', '1');
INSERT INTO `osa_login_log` VALUES ('693', '1001', '192.168.0.189', '2017-09-22 13:46:32', '3', '1', '3', '2017-10-09 18:18:09', '1');
INSERT INTO `osa_login_log` VALUES ('694', '1001', '192.168.0.189', '2017-09-22 13:46:36', '4', '1', '4', '2017-10-09 18:18:09', '1');
INSERT INTO `osa_login_log` VALUES ('695', '1001', '192.168.0.189', '2017-09-22 13:57:51', '1', '1', '1', '2017-10-09 18:18:09', '1');
INSERT INTO `osa_login_log` VALUES ('696', '1001', '192.168.0.189', '2017-09-22 13:57:56', '2', '1', '2', '2017-10-09 18:18:09', '1');
INSERT INTO `osa_login_log` VALUES ('697', '1001', '192.168.0.189', '2017-09-22 13:58:01', '3', '1', '3', '2017-10-09 18:18:09', '1');
INSERT INTO `osa_login_log` VALUES ('698', '1001', '192.168.0.189', '2017-09-22 13:58:05', '4', '1', '4', '2017-10-09 18:18:09', '1');
INSERT INTO `osa_login_log` VALUES ('699', '1001', '192.168.0.189', '2017-09-22 14:02:06', '1', '1', '1', '2017-10-09 18:18:10', '1');
INSERT INTO `osa_login_log` VALUES ('700', '1001', '192.168.0.189', '2017-09-22 14:02:09', '2', '1', '2', '2017-10-09 18:18:10', '1');
INSERT INTO `osa_login_log` VALUES ('701', '1001', '192.168.0.189', '2017-09-22 14:02:12', '3', '1', '3', '2017-10-09 18:18:10', '1');
INSERT INTO `osa_login_log` VALUES ('702', '1001', '192.168.0.189', '2017-09-22 14:02:15', '4', '1', '4', '2017-10-09 18:18:10', '1');
INSERT INTO `osa_login_log` VALUES ('703', '1001', '192.168.0.189', '2017-09-22 14:04:25', '1', '1', '1', '2017-10-09 18:18:10', '1');
INSERT INTO `osa_login_log` VALUES ('704', '1001', '192.168.0.189', '2017-09-22 14:04:28', '2', '1', '2', '2017-10-09 18:18:10', '1');
INSERT INTO `osa_login_log` VALUES ('705', '1001', '192.168.0.189', '2017-09-22 14:04:32', '3', '1', '3', '2017-10-09 18:18:10', '1');
INSERT INTO `osa_login_log` VALUES ('706', '1001', '192.168.0.189', '2017-09-22 14:04:34', '4', '1', '4', '2017-10-09 18:18:10', '1');
INSERT INTO `osa_login_log` VALUES ('707', '1001', '192.168.0.189', '2017-09-22 15:49:56', '1', '1', '1', '2017-10-09 18:18:11', '1');
INSERT INTO `osa_login_log` VALUES ('708', '1001', '192.168.0.189', '2017-09-22 15:50:00', '2', '1', '2', '2017-10-09 18:18:11', '1');
INSERT INTO `osa_login_log` VALUES ('709', '1001', '192.168.0.189', '2017-09-22 15:50:03', '3', '1', '3', '2017-10-09 18:18:11', '1');
INSERT INTO `osa_login_log` VALUES ('710', '1001', '192.168.0.189', '2017-09-22 15:50:06', '4', '1', '4', '2017-10-09 18:18:11', '1');
INSERT INTO `osa_login_log` VALUES ('711', '1001', '192.168.0.189', '2017-09-22 16:02:08', '1', '1', '1', '2017-10-09 18:18:11', '1');
INSERT INTO `osa_login_log` VALUES ('712', '1001', '192.168.0.189', '2017-09-22 16:02:11', '2', '1', '2', '2017-10-09 18:18:11', '1');
INSERT INTO `osa_login_log` VALUES ('713', '1001', '192.168.0.189', '2017-09-22 16:02:14', '3', '1', '3', '2017-10-09 18:18:11', '1');
INSERT INTO `osa_login_log` VALUES ('714', '1001', '192.168.0.189', '2017-09-22 16:02:17', '4', '1', '4', '2017-10-09 18:18:11', '1');
INSERT INTO `osa_login_log` VALUES ('715', '1001', '192.168.0.189', '2017-09-22 17:15:38', '1', '1', '1', '2017-10-09 18:18:11', '1');
INSERT INTO `osa_login_log` VALUES ('716', '1001', '192.168.0.189', '2017-09-22 17:15:41', '2', '1', '2', '2017-10-09 18:18:11', '1');
INSERT INTO `osa_login_log` VALUES ('717', '1001', '192.168.0.189', '2017-09-22 17:15:46', '3', '1', '3', '2017-10-09 18:18:11', '1');
INSERT INTO `osa_login_log` VALUES ('718', '1001', '192.168.0.189', '2017-09-22 17:15:50', '4', '1', '4', '2017-10-09 18:18:11', '1');
INSERT INTO `osa_login_log` VALUES ('719', '1001', '192.168.0.189', '2017-09-22 17:32:02', '1', '1', '1', '2017-10-09 18:18:12', '1');
INSERT INTO `osa_login_log` VALUES ('720', '1001', '192.168.0.189', '2017-09-22 17:32:05', '2', '1', '2', '2017-10-09 18:18:12', '1');
INSERT INTO `osa_login_log` VALUES ('721', '1001', '192.168.0.189', '2017-09-22 17:32:18', '3', '1', '3', '2017-10-09 18:18:12', '1');
INSERT INTO `osa_login_log` VALUES ('722', '1001', '192.168.0.189', '2017-09-22 17:32:21', '4', '1', '4', '2017-10-09 18:18:12', '1');

-- ----------------------------
-- Table structure for osa_logout_log
-- ----------------------------
DROP TABLE IF EXISTS `osa_logout_log`;
CREATE TABLE `osa_logout_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `world_id` varchar(20) DEFAULT NULL,
  `user_ip` varchar(20) DEFAULT NULL,
  `out_time` datetime DEFAULT NULL,
  `open_id` varchar(50) DEFAULT NULL,
  `online_time` int(11) DEFAULT '0' COMMENT '分钟',
  `level` int(11) DEFAULT '1',
  `role_name` varchar(50) DEFAULT NULL,
  `addtime` varchar(20) DEFAULT NULL,
  `vip_level` int(11) DEFAULT '0',
  `app_id` varchar(50) DEFAULT NULL COMMENT '应用id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=714 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of osa_logout_log
-- ----------------------------
INSERT INTO `osa_logout_log` VALUES ('1', '1', '192.168.0.189', '2017-06-27 15:43:02', '6589', '1', '1', 'c:', '2017-06-27 15:43:04', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('2', '1001', '192.168.0.189', '2017-06-27 16:08:50', '321654', '0', '1', 'c:esmj879611060301070336', '2017-06-27 16:08:51', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('3', '1001', '192.168.0.189', '2017-06-27 17:24:28', '987456', '0', '1', 'c:esmj879629765277908992', '2017-06-27 17:24:29', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('4', '1001', '192.168.0.189', '2017-06-27 17:39:28', '321654', '0', '1', 'c:esmj879611060301070336', '2017-06-27 17:39:28', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('5', '1001', '192.168.0.189', '2017-06-27 17:41:23', '321654', '0', '1', 'c:esmj879611060301070336', '2017-06-27 17:41:23', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('6', '1001', '192.168.0.189', '2017-06-27 17:56:14', '321654', '0', '1', 'c:esmj879611060301070336', '2017-06-27 17:56:15', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('7', '1001', '192.168.0.189', '2017-06-27 17:58:14', '321654', '0', '1', 'c:esmj879611060301070336', '2017-06-27 17:58:14', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('8', '1001', '192.168.0.189', '2017-06-27 18:03:50', '321654', '0', '1', 'c:esmj879611060301070336', '2017-06-27 18:03:50', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('9', '1001', '192.168.0.189', '2017-06-27 18:09:18', '321654', '1', '1', 'c:esmj879611060301070336', '2017-06-27 18:09:18', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('10', '1001', '192.168.0.189', '2017-06-27 18:10:46', '321654', '1', '1', 'c:esmj879611060301070336', '2017-06-27 18:10:46', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('11', '1001', '192.168.0.189', '2017-06-28 11:48:07', '9852', '1', '1', 'c:esmj879909164015419392', '2017-06-28 11:48:07', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('12', '1001', '192.168.0.65', '2017-06-29 09:35:19', '1241', '1', '1', 'c:eAWgrLv', '2017-06-29 09:35:19', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('13', '1001', '192.168.0.65', '2017-06-29 09:41:07', '1412', '1', '1', 'c:eDyZYrg', '2017-06-29 09:41:07', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('14', '1001', '192.168.0.65', '2017-06-29 09:46:21', '213', '1', '1', 'c:eoQc5M3', '2017-06-29 09:46:22', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('15', '1001', '192.168.0.189', '2017-06-29 10:47:34', '478555hhh', '1', '1', 'c:ebgbAw6', '2017-06-29 10:47:35', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('16', '1001', '192.168.0.65', '2017-06-29 14:39:59', 'zyj', '1', '1', 'c:eW2bico', '2017-06-29 14:39:59', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('17', '1001', '192.168.0.65', '2017-06-29 14:46:48', 'zyj', '1', '1', 'c:eW2bico', '2017-06-29 14:46:48', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('18', '1001', '192.168.0.65', '2017-06-29 14:47:10', 'jyz', '1', '1', 'c:ec0OSMt', '2017-06-29 14:47:10', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('19', '1001', '192.168.0.65', '2017-06-29 14:52:08', 'jyz', '1', '1', 'c:ec0OSMt', '2017-06-29 14:52:08', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('20', '1001', '192.168.0.65', '2017-06-29 14:52:40', 'jyz', '1', '1', 'c:ec0OSMt', '2017-06-29 14:52:40', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('21', '1001', '192.168.0.65', '2017-06-29 14:54:40', 'jyz', '1', '1', 'c:ec0OSMt', '2017-06-29 14:54:40', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('22', '1001', '192.168.0.65', '2017-06-29 15:24:45', 'jyz', '1', '1', 'c:ec0OSMt', '2017-06-29 15:24:45', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('23', '1001', '192.168.0.65', '2017-06-29 15:25:04', 'jyz', '1', '1', 'c:ec0OSMt', '2017-06-29 15:25:04', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('24', '1001', '192.168.0.189', '2017-06-30 10:55:04', '7788', '1', '1', 'c:e0jOleu', '2017-06-30 10:55:06', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('25', '1001', '192.168.0.65', '2017-07-03 18:34:05', '123', '1', '1', 'c:eA6lJdc', '2017-07-03 18:34:05', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('26', '1001', '192.168.0.65', '2017-07-03 18:38:28', '3123', '1', '1', 'c:e3OO3zw', '2017-07-03 18:38:28', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('27', '1001', '192.168.0.65', '2017-07-03 18:44:32', '312', '1', '1', 'c:erdEHwm', '2017-07-03 18:44:32', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('28', '1001', '192.168.0.65', '2017-07-03 18:45:52', '21312', '1', '1', 'c:ehxZXil', '2017-07-03 18:45:52', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('29', '1001', '192.168.0.65', '2017-07-03 18:47:02', '3123', '1', '1', 'c:e3OO3zw', '2017-07-03 18:47:11', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('30', '1001', '192.168.0.65', '2017-07-03 18:50:59', '321', '1', '1', 'c:eTw8oy4', '2017-07-03 18:50:59', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('31', '1001', '192.168.0.65', '2017-07-03 18:53:00', 'dasd', '1', '1', 'c:e29jWRG', '2017-07-03 18:53:00', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('32', '1001', '192.168.0.65', '2017-07-03 18:55:27', '3123', '1', '1', 'c:e3OO3zw', '2017-07-03 18:55:27', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('33', '1001', '192.168.0.65', '2017-07-03 18:57:15', '3123', '1', '1', 'c:e3OO3zw', '2017-07-03 18:57:15', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('34', '1001', '192.168.0.65', '2017-07-04 10:52:30', '1233', '1', '1', 'c:eSvldzV', '2017-07-04 10:52:31', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('35', '1001', '192.168.0.65', '2017-07-04 10:55:14', '1233', '1', '1', 'c:eSvldzV', '2017-07-04 10:55:14', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('36', '1001', '192.168.0.65', '2017-07-04 10:58:32', '1233', '1', '1', 'c:eSvldzV', '2017-07-04 10:58:32', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('37', '1001', '192.168.0.65', '2017-07-04 11:38:18', '1233', '1', '1', 'c:eSvldzV', '2017-07-04 11:38:18', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('38', '1001', '192.168.0.65', '2017-07-04 11:41:50', '3123', '1', '1', 'c:e3OO3zw', '2017-07-04 11:43:23', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('39', '1001', '192.168.0.65', '2017-07-04 11:45:04', '1233', '1', '1', 'c:eSvldzV', '2017-07-04 11:45:04', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('40', '1001', '192.168.0.65', '2017-07-04 11:52:40', '1233', '1', '1', 'c:eSvldzV', '2017-07-04 11:52:40', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('41', '1001', '192.168.0.65', '2017-07-04 11:54:50', '1233', '1', '1', 'c:eSvldzV', '2017-07-04 11:54:50', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('42', '1001', '192.168.0.65', '2017-07-04 11:57:54', '1233', '1', '1', 'c:eSvldzV', '2017-07-04 11:57:54', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('43', '1001', '192.168.0.65', '2017-07-04 13:29:54', '1233', '1', '1', 'c:eSvldzV', '2017-07-04 13:30:01', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('44', '1001', '192.168.0.65', '2017-07-04 13:39:19', '1233', '1', '1', 'c:eSvldzV', '2017-07-04 13:39:19', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('45', '1001', '192.168.0.65', '2017-07-04 13:40:44', '12333', '1', '1', 'c-JK01zY', '2017-07-04 13:40:44', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('46', '1001', '192.168.0.65', '2017-07-04 13:43:50', '1233', '1', '1', 'c:eSvldzV', '2017-07-04 13:43:50', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('47', '1001', '192.168.0.65', '2017-07-04 13:53:08', '1233', '1', '1', 'c:eSvldzV', '2017-07-04 13:53:08', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('48', '1001', '192.168.0.65', '2017-07-04 14:16:11', '1233', '1', '1', 'c:eSvldzV', '2017-07-04 14:16:12', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('49', '1001', '192.168.0.65', '2017-07-04 14:16:59', '123', '1', '1', 'c:eA6lJdc', '2017-07-04 14:16:59', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('50', '1001', '192.168.0.65', '2017-07-04 14:18:02', '124', '1', '1', 'c-9Xthlt', '2017-07-04 14:18:02', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('51', '1001', '192.168.0.65', '2017-07-04 14:18:33', '123', '1', '1', 'c:eA6lJdc', '2017-07-04 14:18:33', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('52', '1001', '192.168.0.65', '2017-07-04 14:20:54', '1233', '1', '1', 'c:eSvldzV', '2017-07-04 14:20:54', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('53', '1001', '192.168.0.65', '2017-07-04 14:21:45', '1233', '1', '1', 'c:eSvldzV', '2017-07-04 14:21:45', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('54', '1001', '192.168.0.65', '2017-07-04 14:23:53', '123123', '1', '1', 'c-NpTI6s', '2017-07-04 14:23:53', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('55', '1001', '192.168.0.65', '2017-07-04 14:26:55', '1233', '1', '1', 'c:eSvldzV', '2017-07-04 14:26:55', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('56', '1001', '192.168.0.65', '2017-07-04 14:27:53', '1233', '1', '1', 'c:eSvldzV', '2017-07-04 14:27:53', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('57', '1001', '192.168.0.65', '2017-07-04 14:38:06', '1233', '1', '1', 'c:eSvldzV', '2017-07-04 14:38:06', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('58', '1001', '192.168.0.65', '2017-07-04 14:42:27', '1233', '1', '1', 'c:eSvldzV', '2017-07-04 14:42:27', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('59', '1001', '192.168.0.65', '2017-07-04 14:46:14', '123123', '1', '1', 'c-NpTI6s', '2017-07-04 14:46:14', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('60', '1001', '192.168.0.65', '2017-07-04 14:46:49', '123', '1', '1', 'c:eA6lJdc', '2017-07-04 14:46:49', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('61', '1001', '192.168.0.65', '2017-07-04 14:58:03', '1233', '1', '1', 'c:eSvldzV', '2017-07-04 14:58:03', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('62', '1001', '192.168.0.65', '2017-07-04 15:01:13', '2', '1', '1', 'c-buwfVH', '2017-07-04 15:01:13', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('63', '1001', '192.168.0.65', '2017-07-04 15:03:40', '1233', '1', '1', 'c:eSvldzV', '2017-07-04 15:03:40', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('64', '1001', '192.168.0.65', '2017-07-04 15:07:19', '2', '1', '1', 'c-buwfVH', '2017-07-04 15:07:19', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('65', '1001', '192.168.0.65', '2017-07-04 15:08:37', '1233', '1', '1', 'c:eSvldzV', '2017-07-04 15:08:37', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('66', '1001', '192.168.0.65', '2017-07-04 15:09:28', '12333', '1', '1', 'c-JK01zY', '2017-07-04 15:09:28', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('67', '1001', '192.168.0.65', '2017-07-04 15:30:01', '123', '1', '1', 'c:eA6lJdc', '2017-07-04 15:30:02', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('68', '1001', '192.168.0.65', '2017-07-04 15:31:55', '3123', '1', '1', 'c:e3OO3zw', '2017-07-04 15:31:55', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('69', '1001', '192.168.0.65', '2017-07-04 15:34:31', '123', '1', '1', 'c:eA6lJdc', '2017-07-04 15:34:31', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('70', '1001', '192.168.0.65', '2017-07-04 15:36:02', '4124', '1', '1', 'c-DMHE5Y', '2017-07-04 15:36:02', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('71', '1001', '192.168.0.65', '2017-07-04 15:45:13', '3123', '1', '1', 'c:e3OO3zw', '2017-07-04 15:45:13', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('72', '1001', '192.168.0.65', '2017-07-04 15:48:03', '1233', '1', '1', 'c:eSvldzV', '2017-07-04 15:48:03', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('73', '1001', '192.168.0.65', '2017-07-04 15:48:39', '123', '1', '1', 'c:eA6lJdc', '2017-07-04 15:48:39', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('74', '1001', '192.168.0.233', '2017-08-10 10:21:11', '3', '1', '1', '无敌', '2017-08-10 10:21:12', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('75', '1001', '192.168.0.233', '2017-08-10 10:32:31', '4', '1', '1', '无敌', '2017-08-10 10:32:31', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('76', '1001', '192.168.0.233', '2017-08-10 10:34:31', '4', '1', '1', '无敌', '2017-08-10 10:34:31', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('77', '1001', '192.168.0.233', '2017-08-14 10:46:01', '5', '1', '1', '无敌', '2017-08-14 10:46:01', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('78', '1001', '192.168.0.233', '2017-08-14 10:47:08', '6', '1', '1', '无敌', '2017-08-14 10:47:08', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('79', '1001', '192.168.0.233', '2017-08-14 10:47:44', '6', '1', '1', '无敌', '2017-08-14 10:47:44', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('80', '1001', '192.168.0.233', '2017-08-14 10:48:18', '7', '1', '1', '无敌', '2017-08-14 10:48:18', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('81', '1001', '192.168.0.233', '2017-08-14 10:49:23', '7', '1', '1', '无敌', '2017-08-14 10:49:23', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('82', '1001', '192.168.0.233', '2017-08-14 10:49:38', '8', '1', '1', '无敌', '2017-08-14 10:49:38', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('83', '1001', '192.168.0.233', '2017-08-14 10:52:22', '3', '1', '1', '无敌', '2017-08-14 10:52:22', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('84', '1001', '192.168.0.233', '2017-08-14 10:52:39', '3', '1', '1', '无敌', '2017-08-14 10:52:39', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('85', '1001', '192.168.0.233', '2017-08-14 10:54:03', '3', '1', '1', '无敌', '2017-08-14 10:54:03', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('86', '1001', '192.168.0.233', '2017-08-14 10:54:56', '3', '1', '1', '无敌', '2017-08-14 10:54:56', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('87', '1001', '192.168.0.233', '2017-08-14 10:57:16', '3', '1', '1', '无敌', '2017-08-14 10:57:16', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('88', '1001', '192.168.0.233', '2017-08-14 10:58:31', '3', '1', '1', '无敌', '2017-08-14 10:58:31', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('89', '1001', '192.168.0.233', '2017-08-14 11:05:41', '3', '1', '1', '无敌', '2017-08-14 11:05:41', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('90', '1001', '192.168.0.233', '2017-08-14 11:12:34', '3', '1', '1', '无敌', '2017-08-14 11:12:34', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('91', '1001', '192.168.0.233', '2017-08-14 11:24:07', '3', '1', '1', '无敌', '2017-08-14 11:24:07', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('92', '1001', '192.168.0.233', '2017-08-14 11:26:53', '3', '1', '1', '无敌', '2017-08-14 11:26:53', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('93', '1001', '192.168.0.233', '2017-08-14 13:45:12', '10', '1', '1', '无敌', '2017-08-14 13:45:12', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('94', '1001', '192.168.0.233', '2017-08-14 14:31:59', '11', '1', '1', '无敌', '2017-08-14 14:31:59', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('95', '1001', '192.168.0.233', '2017-08-14 14:48:11', '12', '1', '1', '无敌', '2017-08-14 14:48:11', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('96', '1001', '192.168.0.233', '2017-08-14 14:48:56', '13', '1', '1', '无敌', '2017-08-14 14:48:56', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('97', '1001', '192.168.0.233', '2017-08-14 14:49:27', '14', '1', '1', '无敌', '2017-08-14 14:49:27', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('98', '1001', '192.168.0.233', '2017-08-14 14:49:58', '15', '1', '1', '无敌', '2017-08-14 14:49:58', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('99', '1001', '192.168.0.233', '2017-08-14 14:58:30', '16', '1', '1', '无敌', '2017-08-14 14:58:30', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('100', '1001', '192.168.0.233', '2017-08-14 15:01:29', '17', '1', '1', '无敌', '2017-08-14 15:01:29', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('101', '1001', '192.168.0.233', '2017-08-14 15:26:52', '18', '1', '1', '无敌', '2017-08-14 15:26:52', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('102', '1001', '192.168.0.233', '2017-08-14 15:28:33', '19', '1', '1', '无敌', '2017-08-14 15:28:33', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('103', '1001', '192.168.0.233', '2017-08-14 15:32:58', '20', '1', '1', '无敌', '2017-08-14 15:32:58', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('104', '1001', '192.168.0.233', '2017-08-14 15:33:34', '21', '1', '1', '无敌', '2017-08-14 15:33:34', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('105', '1001', '192.168.0.233', '2017-08-14 15:34:11', '22', '1', '1', '无敌', '2017-08-14 15:34:11', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('106', '1001', '192.168.0.233', '2017-08-14 15:35:11', '23', '1', '1', '无敌', '2017-08-14 15:35:11', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('107', '1001', '192.168.0.233', '2017-08-14 15:36:52', '24', '1', '1', '无敌', '2017-08-14 15:36:52', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('108', '1001', '192.168.0.233', '2017-08-14 15:37:51', '25', '1', '1', '无敌', '2017-08-14 15:37:51', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('109', '1001', '192.168.0.233', '2017-08-14 15:40:21', '10', '1', '1', '无敌', '2017-08-14 15:40:21', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('110', '1001', '192.168.0.233', '2017-08-14 15:43:28', '26', '1', '1', '无敌', '2017-08-14 15:43:28', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('111', '1001', '192.168.0.233', '2017-08-14 15:44:11', '27', '1', '1', '无敌', '2017-08-14 15:44:11', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('112', '1001', '192.168.0.233', '2017-08-14 15:54:49', '28', '1', '1', '无敌', '2017-08-14 15:54:49', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('113', '1001', '192.168.0.233', '2017-08-14 15:59:56', '29', '1', '1', '无敌', '2017-08-14 15:59:56', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('114', '1001', '192.168.0.233', '2017-08-14 16:08:10', '32', '1', '1', '无敌', '2017-08-14 16:08:10', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('115', '1001', '192.168.0.89', '2017-08-14 16:08:47', '31', '1', '1', '无敌', '2017-08-14 16:08:47', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('116', '1001', '192.168.0.89', '2017-08-14 16:08:49', '30', '1', '1', '无敌', '2017-08-14 16:08:49', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('117', '1001', '192.168.0.89', '2017-08-14 16:23:11', '34', '1', '1', '无敌', '2017-08-14 16:23:11', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('118', '1001', '192.168.0.89', '2017-08-14 16:23:16', '33', '1', '1', '无敌', '2017-08-14 16:23:16', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('119', '1001', '192.168.0.233', '2017-08-16 09:47:14', '3', '1', '1', '无敌', '2017-08-18 10:54:43', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('120', '1001', '192.168.0.233', '2017-08-16 09:47:27', '8', '1', '1', '无敌', '2017-08-18 10:54:46', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('121', '1001', '192.168.0.233', '2017-08-16 09:49:26', '3', '1', '1', '无敌', '2017-08-18 10:54:47', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('122', '1001', '192.168.0.233', '2017-08-16 10:06:27', '3', '1', '1', '无敌', '2017-08-18 10:54:48', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('123', '1001', '192.168.0.233', '2017-08-16 10:11:56', '3', '1', '1', '无敌', '2017-08-18 10:54:48', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('124', '1001', '192.168.0.233', '2017-08-16 10:15:36', '3', '1', '1', '无敌', '2017-08-18 10:54:49', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('125', '1001', '192.168.0.233', '2017-08-16 15:34:17', '3', '1', '1', '无敌', '2017-08-18 10:54:50', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('126', '1001', '192.168.0.233', '2017-08-16 15:37:50', '6', '1', '1', '无敌', '2017-08-18 10:54:51', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('127', '1001', '192.168.0.233', '2017-08-16 15:43:30', '6', '1', '1', '无敌', '2017-08-18 10:54:51', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('128', '1001', '192.168.0.233', '2017-08-16 15:46:35', '8', '1', '1', '无敌', '2017-08-18 10:54:52', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('129', '1001', '192.168.0.233', '2017-08-16 15:46:36', '3', '1', '1', '无敌', '2017-08-18 10:54:52', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('130', '1001', '192.168.0.37', '2017-08-16 17:06:27', '35', '1', '1', '无敌87228', '2017-08-18 10:54:52', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('131', '1001', '192.168.0.37', '2017-08-16 17:06:31', '36', '1', '1', '无敌8774', '2017-08-18 10:54:52', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('132', '1001', '192.168.0.189', '2017-08-24 14:16:51', 'openId-0', '1', '1', '测试openId-0', '2017-08-25 11:46:48', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('133', '1001', '192.168.0.233', '2017-09-12 14:58:47', 'o11', '1', '1', 'o11', '2017-09-20 15:30:05', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('134', '1001', '192.168.0.233', '2017-09-12 15:01:19', 'ewewe', '1', '1', 'ewewe', '2017-09-20 15:30:06', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('135', '1001', '192.168.0.233', '2017-09-12 15:03:54', 'ewew', '1', '1', 'ewew', '2017-09-20 15:30:06', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('136', '1001', '192.168.0.233', '2017-09-12 15:05:55', 'er', '1', '1', 'er', '2017-09-20 15:30:07', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('137', '1001', '192.168.0.233', '2017-09-12 15:09:04', 'er1', '1', '1', 'er1', '2017-09-20 15:30:07', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('138', '1001', '192.168.0.233', '2017-09-12 15:11:51', 'er2', '1', '1', 'er2', '2017-09-20 15:30:07', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('139', '1001', '192.168.0.233', '2017-09-12 15:14:27', 'ewe', '1', '1', 'ewe', '2017-09-20 15:30:08', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('140', '1001', '192.168.0.233', '2017-09-12 15:14:31', 'dww', '1', '1', 'dww', '2017-09-20 15:30:08', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('141', '1001', '192.168.0.233', '2017-09-12 15:14:31', 'ewewe', '1', '1', 'ewewe', '2017-09-20 15:30:08', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('142', '1001', '192.168.0.233', '2017-09-12 15:14:31', 'weewwe', '1', '1', 'weewwe', '2017-09-20 15:30:08', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('143', '1001', '192.168.0.233', '2017-09-12 15:21:15', 't11', '1', '1', 't11', '2017-09-20 15:30:09', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('144', '1001', '192.168.0.233', '2017-09-12 15:21:46', 't14', '1', '1', 't14', '2017-09-20 15:30:09', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('145', '1001', '192.168.0.233', '2017-09-12 15:21:48', 't13', '1', '1', 't13', '2017-09-20 15:30:09', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('146', '1001', '192.168.0.233', '2017-09-12 15:21:49', 't12', '1', '1', 't12', '2017-09-20 15:30:09', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('147', '1001', '192.168.0.233', '2017-09-12 15:23:38', 'ewewe', '1', '1', 'ewewe', '2017-09-20 15:30:09', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('148', '1001', '192.168.0.233', '2017-09-12 15:26:54', 'eweew', '1', '1', 'eweew', '2017-09-20 15:30:10', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('149', '1001', '192.168.0.233', '2017-09-12 15:29:50', 'r11', '1', '1', 'r11', '2017-09-20 15:30:10', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('150', '1001', '192.168.0.233', '2017-09-12 15:40:08', 'r12', '1', '1', 'r12', '2017-09-20 15:30:11', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('151', '1001', '192.168.0.233', '2017-09-12 15:40:09', 'r13', '1', '1', 'r13', '2017-09-20 15:30:11', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('152', '1001', '192.168.0.233', '2017-09-12 15:40:10', 'r14', '1', '1', 'r14', '2017-09-20 15:30:11', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('153', '1001', '192.168.0.233', '2017-09-12 15:49:15', 'r11', '1', '1', 'r11', '2017-09-20 15:30:11', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('154', '1001', '192.168.0.233', '2017-09-12 15:49:28', 'r14', '1', '1', 'r14', '2017-09-20 15:30:11', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('155', '1001', '192.168.0.233', '2017-09-12 15:49:29', 'r13', '1', '1', 'r13', '2017-09-20 15:30:11', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('156', '1001', '192.168.0.233', '2017-09-12 15:49:30', 'r12', '1', '1', 'r12', '2017-09-20 15:30:12', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('157', '1001', '192.168.0.233', '2017-09-12 16:07:12', 't11', '1', '1', 't11', '2017-09-20 15:30:13', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('158', '1001', '192.168.0.233', '2017-09-12 16:07:46', 'r14', '1', '1', 'r14', '2017-09-20 15:30:13', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('159', '1001', '192.168.0.233', '2017-09-12 16:07:46', 'r13', '1', '1', 'r13', '2017-09-20 15:30:13', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('160', '1001', '192.168.0.233', '2017-09-12 16:07:46', 'r12', '1', '1', 'r12', '2017-09-20 15:30:14', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('161', '1001', '192.168.0.233', '2017-09-12 16:13:51', 'r14', '1', '1', 'r14', '2017-09-20 15:30:14', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('162', '1001', '192.168.0.233', '2017-09-12 16:13:52', 'r13', '1', '1', 'r13', '2017-09-20 15:30:14', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('163', '1001', '192.168.0.233', '2017-09-12 16:13:53', 'r12', '1', '1', 'r12', '2017-09-20 15:30:14', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('164', '1001', '192.168.0.233', '2017-09-12 16:13:57', 'r11', '1', '1', 'r11', '2017-09-20 15:30:14', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('165', '1001', '192.168.0.233', '2017-09-12 16:15:57', 't11', '1', '1', 't11', '2017-09-20 15:30:14', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('166', '1001', '192.168.0.233', '2017-09-12 16:28:18', 't12', '1', '1', 't12', '2017-09-20 15:30:15', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('167', '1001', '192.168.0.233', '2017-09-12 16:28:18', 'e12', '1', '1', 'e12', '2017-09-20 15:30:15', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('168', '1001', '192.168.0.233', '2017-09-12 16:28:18', 't13', '1', '1', 't13', '2017-09-20 15:30:15', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('169', '1001', '192.168.0.233', '2017-09-12 16:28:24', 'e11', '1', '1', 'e11', '2017-09-20 15:30:15', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('170', '1001', '192.168.0.233', '2017-09-12 16:32:27', 'ewe', '1', '1', 'ewe', '2017-09-20 15:30:16', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('171', '1001', '192.168.0.233', '2017-09-12 16:34:03', 'vdsew', '1', '1', 'vdsew', '2017-09-20 15:30:16', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('172', '1001', '192.168.0.233', '2017-09-12 16:34:03', 'wwe1', '1', '1', 'wwe1', '2017-09-20 15:30:16', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('173', '1001', '192.168.0.233', '2017-09-12 16:34:03', 'weeww', '1', '1', 'weeww', '2017-09-20 15:30:16', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('174', '1001', '192.168.0.233', '2017-09-12 16:44:21', 't1', '1', '1', 't1', '2017-09-20 15:30:16', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('175', '1001', '192.168.0.233', '2017-09-12 16:44:23', 't2', '1', '1', 't2', '2017-09-20 15:30:16', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('176', '1001', '192.168.0.233', '2017-09-12 16:46:05', 't1', '1', '1', 't1', '2017-09-20 15:30:17', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('177', '1001', '192.168.0.233', '2017-09-12 16:49:16', 'eewew', '1', '1', 'eewew', '2017-09-20 15:30:17', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('178', '1001', '192.168.0.233', '2017-09-12 16:49:49', 'rewre', '1', '1', 'rewre', '2017-09-20 15:30:17', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('179', '1001', '192.168.0.233', '2017-09-12 16:56:45', 'e11', '1', '1', 'e11', '2017-09-20 15:30:17', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('180', '1001', '192.168.0.233', '2017-09-12 16:56:49', 'e12', '1', '1', 'e12', '2017-09-20 15:30:17', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('181', '1001', '192.168.0.233', '2017-09-12 16:56:49', 'e13', '1', '1', 'e13', '2017-09-20 15:30:17', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('182', '1001', '192.168.0.233', '2017-09-12 16:56:49', 'e14', '1', '1', 'e14', '2017-09-20 15:30:17', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('183', '1001', '192.168.0.233', '2017-09-12 17:01:43', 'rrr', '1', '1', 'rrr', '2017-09-20 15:30:18', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('184', '1001', '192.168.0.233', '2017-09-12 17:01:47', 'er12', '1', '1', 'er12', '2017-09-20 15:30:18', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('185', '1001', '192.168.0.233', '2017-09-12 17:01:47', 'rewe', '1', '1', 'rewe', '2017-09-20 15:30:18', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('186', '1001', '192.168.0.233', '2017-09-12 17:01:47', 'er1', '1', '1', 'er1', '2017-09-20 15:30:19', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('187', '1001', '192.168.0.233', '2017-09-12 17:19:31', 'ewqe', '1', '1', 'ewqe', '2017-09-20 15:30:19', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('188', '1001', '192.168.0.233', '2017-09-12 17:19:33', 'fvxczvcx', '1', '1', 'fvxczvcx', '2017-09-20 15:30:19', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('189', '1001', '192.168.0.233', '2017-09-12 17:19:33', 'fsdaf', '1', '1', 'fsdaf', '2017-09-20 15:30:19', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('190', '1001', '192.168.0.233', '2017-09-12 17:19:36', 'erqwe', '1', '1', 'erqwe', '2017-09-20 15:30:20', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('191', '1001', '192.168.0.233', '2017-09-12 17:20:58', 'ewrw', '1', '1', 'ewrw', '2017-09-20 15:30:20', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('192', '1001', '192.168.0.233', '2017-09-12 17:28:18', 'xcxzc', '1', '1', 'xcxzc', '2017-09-20 15:30:20', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('193', '1001', '192.168.0.233', '2017-09-12 17:30:24', 'ewew', '1', '1', 'ewew', '2017-09-20 15:30:20', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('194', '1001', '192.168.0.233', '2017-09-12 17:30:24', 'vxcxzcv', '1', '1', 'vxcxzcv', '2017-09-20 15:30:21', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('195', '1001', '192.168.0.233', '2017-09-12 17:30:24', 'vcxx', '1', '1', 'vcxx', '2017-09-20 15:30:21', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('196', '1001', '192.168.0.233', '2017-09-12 17:54:50', 'ewee', '1', '1', 'ewee', '2017-09-20 15:30:21', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('197', '1001', '192.168.0.233', '2017-09-12 17:56:00', 'cxzxzc', '1', '1', 'cxzxzc', '2017-09-20 15:30:21', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('198', '1001', '192.168.0.233', '2017-09-12 17:56:01', 'vcxzv', '1', '1', 'vcxzv', '2017-09-20 15:30:21', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('199', '1001', '192.168.0.233', '2017-09-12 17:56:02', 'bdadf', '1', '1', 'bdadf', '2017-09-20 15:30:21', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('200', '1001', '192.168.0.233', '2017-09-12 18:04:17', 'eweeq', '1', '1', 'eweeq', '2017-09-20 15:30:21', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('201', '1001', '192.168.0.233', '2017-09-12 18:36:35', 'ytrwty', '1', '1', 'ytrwty', '2017-09-20 15:30:22', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('202', '1001', '192.168.0.233', '2017-09-12 18:36:50', 'ytrwty', '1', '1', 'ytrwty', '2017-09-20 15:30:22', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('203', '1001', '192.168.0.233', '2017-09-12 18:37:02', 'veqwe', '1', '1', 'veqwe', '2017-09-20 15:30:22', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('204', '1001', '192.168.0.233', '2017-09-12 18:37:03', 'berre', '1', '1', 'berre', '2017-09-20 15:30:22', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('205', '1001', '192.168.0.233', '2017-09-12 18:37:04', 'nrtwt', '1', '1', 'nrtwt', '2017-09-20 15:30:22', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('206', '1001', '192.168.0.233', '2017-09-12 18:43:07', 'y1', '1', '1', 'y1', '2017-09-20 15:30:23', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('207', '1001', '192.168.0.233', '2017-09-12 18:43:18', 'y2', '1', '1', 'y2', '2017-09-20 15:30:23', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('208', '1001', '192.168.0.233', '2017-09-12 18:43:19', 'y3', '1', '1', 'y3', '2017-09-20 15:30:23', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('209', '1001', '192.168.0.233', '2017-09-12 18:43:20', 'y4', '1', '1', 'y4', '2017-09-20 15:30:23', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('210', '1001', '192.168.0.233', '2017-09-12 18:52:21', 'twetq', '1', '1', 'twetq', '2017-09-20 15:30:23', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('211', '1001', '192.168.0.233', '2017-09-12 18:53:46', 'vewqew', '1', '1', 'vewqew', '2017-09-20 15:30:24', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('212', '1001', '192.168.0.233', '2017-09-12 18:53:49', 'erqer', '1', '1', 'erqer', '2017-09-20 15:30:24', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('213', '1001', '192.168.0.233', '2017-09-12 18:53:49', 'vxczv', '1', '1', 'vxczv', '2017-09-20 15:30:25', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('214', '1001', '192.168.0.233', '2017-09-12 18:53:49', 'bdfsweq', '1', '1', 'bdfsweq', '2017-09-20 15:30:25', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('215', '1001', '192.168.0.233', '2017-09-12 19:46:24', 'ew111', '1', '1', 'ew111', '2017-09-20 15:30:27', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('216', '1001', '192.168.0.233', '2017-09-12 19:46:29', 'reqwer', '1', '1', 'reqwer', '2017-09-20 15:30:27', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('217', '1001', '192.168.0.233', '2017-09-12 19:46:29', 'erwwe', '1', '1', 'erwwe', '2017-09-20 15:30:27', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('218', '1001', '192.168.0.233', '2017-09-12 19:46:29', 'cvxzb', '1', '1', 'cvxzb', '2017-09-20 15:30:27', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('219', '1001', '192.168.0.233', '2017-09-12 20:05:19', 'ewrewq', '1', '1', 'ewrewq', '2017-09-20 15:30:28', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('220', '1001', '192.168.0.233', '2017-09-12 20:05:29', 'bxcbz', '1', '1', 'bxcbz', '2017-09-20 15:30:28', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('221', '1001', '192.168.0.233', '2017-09-12 20:05:29', 'vcxqwe', '1', '1', 'vcxqwe', '2017-09-20 15:30:28', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('222', '1001', '192.168.0.233', '2017-09-12 20:05:29', 'vdsv', '1', '1', 'vdsv', '2017-09-20 15:30:28', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('223', '1001', '192.168.0.233', '2017-09-13 09:23:20', 'qwe', '1', '1', 'qwe', '2017-09-20 15:30:29', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('224', '1001', '192.168.0.233', '2017-09-13 09:25:02', 'qwe2', '1', '1', 'qwe2', '2017-09-20 15:30:29', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('225', '1001', '192.168.0.233', '2017-09-13 09:25:02', 'qwe1', '1', '1', 'qwe1', '2017-09-20 15:30:29', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('226', '1001', '192.168.0.233', '2017-09-13 09:25:02', 'qwe3', '1', '1', 'qwe3', '2017-09-20 15:30:29', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('227', '1001', '192.168.0.233', '2017-09-13 09:29:01', 'qwe1', '1', '1', 'qwe1', '2017-09-20 15:30:29', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('228', '1001', '192.168.0.233', '2017-09-13 09:39:48', 'weq2', '1', '1', 'weq2', '2017-09-20 15:30:30', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('229', '1001', '192.168.0.233', '2017-09-13 09:39:48', 'weq4', '1', '1', 'weq4', '2017-09-20 15:30:30', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('230', '1001', '192.168.0.233', '2017-09-13 09:39:48', 'weq3', '1', '1', 'weq3', '2017-09-20 15:30:30', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('231', '1001', '192.168.0.233', '2017-09-13 09:39:50', 'weq', '1', '1', 'weq', '2017-09-20 15:30:30', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('232', '1001', '192.168.0.233', '2017-09-13 09:55:49', 'qq1', '1', '1', 'qq1', '2017-09-20 15:30:31', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('233', '1001', '192.168.0.233', '2017-09-13 09:55:52', 'qq2', '1', '1', 'qq2', '2017-09-20 15:30:31', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('234', '1001', '192.168.0.233', '2017-09-13 09:55:52', 'qq3', '1', '1', 'qq3', '2017-09-20 15:30:31', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('235', '1001', '192.168.0.233', '2017-09-13 09:55:52', 'qq4', '1', '1', 'qq4', '2017-09-20 15:30:31', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('236', '1001', '192.168.0.233', '2017-09-13 10:10:45', 'rr4', '1', '1', 'rr4', '2017-09-20 15:30:31', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('237', '1001', '192.168.0.233', '2017-09-13 10:10:45', 'rr2', '1', '1', 'rr2', '2017-09-20 15:30:31', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('238', '1001', '192.168.0.233', '2017-09-13 10:10:45', 'rr3', '1', '1', 'rr3', '2017-09-20 15:30:31', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('239', '1001', '192.168.0.233', '2017-09-13 10:10:53', 'rr', '1', '1', 'rr', '2017-09-20 15:30:31', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('240', '1001', '192.168.0.233', '2017-09-13 10:27:26', 'ww', '1', '1', 'ww', '2017-09-20 15:30:31', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('241', '1001', '192.168.0.233', '2017-09-13 10:27:33', 'ww2', '1', '1', 'ww2', '2017-09-20 15:30:32', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('242', '1001', '192.168.0.233', '2017-09-13 10:27:33', 'ww4', '1', '1', 'ww4', '2017-09-20 15:30:32', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('243', '1001', '192.168.0.233', '2017-09-13 10:27:33', 'ww3', '1', '1', 'ww3', '2017-09-20 15:30:32', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('244', '1001', '192.168.0.233', '2017-09-13 10:36:36', 'ee4', '1', '1', 'ee4', '2017-09-20 15:30:32', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('245', '1001', '192.168.0.233', '2017-09-13 10:36:36', 'ee2', '1', '1', 'ee2', '2017-09-20 15:30:32', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('246', '1001', '192.168.0.233', '2017-09-13 10:36:36', 'ee3', '1', '1', 'ee3', '2017-09-20 15:30:33', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('247', '1001', '192.168.0.233', '2017-09-13 10:38:14', 'ee1', '1', '1', 'ee1', '2017-09-20 15:30:33', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('248', '1001', '192.168.0.233', '2017-09-13 10:48:53', 'qq1', '1', '1', 'qq1', '2017-09-20 15:30:33', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('249', '1001', '192.168.0.233', '2017-09-13 10:51:57', 'a1', '1', '1', 'a1', '2017-09-20 15:30:34', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('250', '1001', '192.168.0.233', '2017-09-13 10:51:59', 'a2', '1', '1', 'a2', '2017-09-20 15:30:34', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('251', '1001', '192.168.0.233', '2017-09-13 10:51:59', 'a4', '1', '1', 'a4', '2017-09-20 15:30:34', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('252', '1001', '192.168.0.233', '2017-09-13 10:51:59', 'a3', '1', '1', 'a3', '2017-09-20 15:30:34', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('253', '1001', '192.168.0.233', '2017-09-13 10:58:03', 't14', '1', '1', 't14', '2017-09-20 15:30:34', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('254', '1001', '192.168.0.233', '2017-09-13 10:58:03', 't12', '1', '1', 't12', '2017-09-20 15:30:34', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('255', '1001', '192.168.0.233', '2017-09-13 10:58:03', 't13', '1', '1', 't13', '2017-09-20 15:30:34', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('256', '1001', '192.168.0.233', '2017-09-13 10:58:09', 't11', '1', '1', 't11', '2017-09-20 15:30:35', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('257', '1001', '192.168.0.233', '2017-09-13 11:08:27', 'z11', '1', '1', 'z11', '2017-09-20 15:30:35', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('258', '1001', '192.168.0.233', '2017-09-13 11:08:28', 'z14', '1', '1', 'z14', '2017-09-20 15:30:35', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('259', '1001', '192.168.0.233', '2017-09-13 11:08:28', 'z12', '1', '1', 'z12', '2017-09-20 15:30:35', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('260', '1001', '192.168.0.233', '2017-09-13 11:08:28', 'z13', '1', '1', 'z13', '2017-09-20 15:30:35', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('261', '1001', '192.168.0.233', '2017-09-13 13:56:15', 'q11', '1', '1', 'q11', '2017-09-20 15:30:36', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('262', '1001', '192.168.0.233', '2017-09-13 13:56:16', 'q14', '1', '1', 'q14', '2017-09-20 15:30:36', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('263', '1001', '192.168.0.233', '2017-09-13 13:56:16', 'q13', '1', '1', 'q13', '2017-09-20 15:30:36', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('264', '1001', '192.168.0.233', '2017-09-13 13:56:16', 'q12', '1', '1', 'q12', '2017-09-20 15:30:36', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('265', '1001', '192.168.0.233', '2017-09-13 14:33:22', 'z11', '1', '1', 'z11', '2017-09-20 15:30:37', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('266', '1001', '192.168.0.233', '2017-09-13 14:34:04', 'z14', '1', '1', 'z14', '2017-09-20 15:30:37', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('267', '1001', '192.168.0.233', '2017-09-13 14:34:04', 'z12', '1', '1', 'z12', '2017-09-20 15:30:37', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('268', '1001', '192.168.0.233', '2017-09-13 14:34:04', 'z13', '1', '1', 'z13', '2017-09-20 15:30:37', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('269', '1001', '192.168.0.233', '2017-09-13 14:48:10', 's11', '1', '1', 's11', '2017-09-20 15:30:38', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('270', '1001', '192.168.0.233', '2017-09-13 14:48:20', 's14', '1', '1', 's14', '2017-09-20 15:30:38', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('271', '1001', '192.168.0.233', '2017-09-13 14:48:20', 's13', '1', '1', 's13', '2017-09-20 15:30:38', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('272', '1001', '192.168.0.233', '2017-09-13 14:48:20', 's12', '1', '1', 's12', '2017-09-20 15:30:38', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('273', '1001', '192.168.0.233', '2017-09-13 15:55:36', 'e1', '1', '1', 'e1', '2017-09-20 15:30:38', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('274', '1001', '192.168.0.233', '2017-09-13 15:55:38', 'e4', '1', '1', 'e4', '2017-09-20 15:30:38', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('275', '1001', '192.168.0.233', '2017-09-13 15:55:38', 'e3', '1', '1', 'e3', '2017-09-20 15:30:38', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('276', '1001', '192.168.0.233', '2017-09-13 15:55:38', 'e2', '1', '1', 'e2', '2017-09-20 15:30:38', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('277', '1001', '192.168.0.233', '2017-09-13 16:12:20', 'x1', '1', '1', 'x1', '2017-09-20 15:30:39', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('278', '1001', '192.168.0.233', '2017-09-13 16:12:22', 'x2', '1', '1', 'x2', '2017-09-20 15:30:39', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('279', '1001', '192.168.0.233', '2017-09-13 16:12:22', 'x4', '1', '1', 'x4', '2017-09-20 15:30:39', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('280', '1001', '192.168.0.233', '2017-09-13 16:12:22', 'x3', '1', '1', 'x3', '2017-09-20 15:30:39', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('281', '1001', '192.168.0.233', '2017-09-13 16:30:13', 's1', '1', '1', 's1', '2017-09-20 15:30:39', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('282', '1001', '192.168.0.233', '2017-09-13 16:30:16', 's4', '1', '1', 's4', '2017-09-20 15:30:39', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('283', '1001', '192.168.0.233', '2017-09-13 16:30:16', 's3', '1', '1', 's3', '2017-09-20 15:30:39', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('284', '1001', '192.168.0.233', '2017-09-13 16:30:16', 's2', '1', '1', 's2', '2017-09-20 15:30:40', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('285', '1001', '192.168.0.233', '2017-09-13 17:23:26', 'a4', '1', '1', 'a4', '2017-09-20 15:30:41', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('286', '1001', '192.168.0.233', '2017-09-13 17:23:26', 'a2', '1', '1', 'a2', '2017-09-20 15:30:41', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('287', '1001', '192.168.0.233', '2017-09-13 17:23:26', 'a3', '1', '1', 'a3', '2017-09-20 15:30:41', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('288', '1001', '192.168.0.233', '2017-09-13 17:23:28', 'a1', '1', '1', 'a1', '2017-09-20 15:30:41', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('289', '1001', '192.168.0.233', '2017-09-13 17:55:28', 'a3', '1', '1', 'a3', '2017-09-20 15:30:42', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('290', '1001', '192.168.0.233', '2017-09-13 17:55:28', 'a4', '1', '1', 'a4', '2017-09-20 15:30:42', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('291', '1001', '192.168.0.233', '2017-09-13 17:55:28', 'a2', '1', '1', 'a2', '2017-09-20 15:30:42', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('292', '1001', '192.168.0.233', '2017-09-13 17:55:30', 'a1', '1', '1', 'a1', '2017-09-20 15:30:43', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('293', '1001', '192.168.0.233', '2017-09-13 18:30:33', 's123', '1', '1', 's123', '2017-09-20 15:30:43', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('294', '1001', '192.168.0.233', '2017-09-13 18:30:35', 's126', '1', '1', 's126', '2017-09-20 15:30:43', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('295', '1001', '192.168.0.233', '2017-09-13 18:30:35', 's124', '1', '1', 's124', '2017-09-20 15:30:43', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('296', '1001', '192.168.0.233', '2017-09-13 18:30:35', 's125', '1', '1', 's125', '2017-09-20 15:30:43', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('297', '1001', '192.168.0.233', '2017-09-13 18:32:29', 'erwwqe', '1', '1', 'erwwqe', '2017-09-20 15:30:43', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('298', '1001', '192.168.0.233', '2017-09-13 18:55:13', 'rwew', '1', '1', 'rwew', '2017-09-20 15:30:44', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('299', '1001', '192.168.0.233', '2017-09-13 18:55:15', 'ewr', '1', '1', 'ewr', '2017-09-20 15:30:44', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('300', '1001', '192.168.0.233', '2017-09-13 18:55:15', 'terwt', '1', '1', 'terwt', '2017-09-20 15:30:44', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('301', '1001', '192.168.0.233', '2017-09-13 18:55:15', 'evcx', '1', '1', 'evcx', '2017-09-20 15:30:44', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('302', '1001', '192.168.0.189', '2017-09-13 20:29:54', 'dee', '1', '1', 'dee', '2017-09-20 15:30:44', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('303', '1001', '192.168.0.233', '2017-09-14 09:25:36', 'wn4', '1', '1', 'wn4', '2017-09-20 15:30:44', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('304', '1001', '192.168.0.233', '2017-09-14 09:25:37', 'wn1', '1', '1', 'wn1', '2017-09-20 15:30:44', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('305', '1001', '192.168.0.233', '2017-09-14 09:25:38', 'wn2', '1', '1', 'wn2', '2017-09-20 15:30:45', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('306', '1001', '192.168.0.233', '2017-09-14 09:25:39', 'wn3', '1', '1', 'wn3', '2017-09-20 15:30:45', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('307', '1001', '192.168.0.233', '2017-09-14 09:44:04', 'a1', '1', '1', 'a1', '2017-09-20 15:30:46', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('308', '1001', '192.168.0.233', '2017-09-14 09:44:29', 'a2', '1', '1', 'a2', '2017-09-20 15:30:47', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('309', '1001', '192.168.0.233', '2017-09-14 09:44:30', 'a3', '1', '1', 'a3', '2017-09-20 15:30:47', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('310', '1001', '192.168.0.233', '2017-09-14 09:44:31', 'a1', '1', '1', 'a1', '2017-09-20 15:30:48', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('311', '1001', '192.168.0.233', '2017-09-14 09:46:50', 'a4', '1', '1', 'a4', '2017-09-20 15:30:48', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('312', '1001', '192.168.0.189', '2017-09-14 09:47:57', '1', '1', '1', '1', '2017-09-20 15:30:48', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('313', '1001', '192.168.0.189', '2017-09-14 09:47:58', '2', '1', '1', '2', '2017-09-20 15:30:48', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('314', '1001', '192.168.0.189', '2017-09-14 09:48:00', '3', '1', '1', '3', '2017-09-20 15:30:48', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('315', '1001', '192.168.0.189', '2017-09-14 09:48:01', '4', '1', '1', '4', '2017-09-20 15:30:48', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('316', '1001', '192.168.0.233', '2017-09-14 10:06:36', 'a11', '1', '1', 'a11', '2017-09-20 15:30:49', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('317', '1001', '192.168.0.189', '2017-09-14 10:17:57', '4', '1', '1', '4', '2017-09-20 15:30:49', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('318', '1001', '192.168.0.189', '2017-09-14 10:19:11', '2', '1', '1', '2', '2017-09-20 15:30:49', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('319', '1001', '192.168.0.189', '2017-09-14 10:19:13', '1', '1', '1', '1', '2017-09-20 15:30:50', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('320', '1001', '192.168.0.189', '2017-09-14 10:19:19', '3', '1', '1', '3', '2017-09-20 15:30:50', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('321', '1001', '192.168.0.233', '2017-09-14 10:25:06', 'a13', '1', '1', 'a13', '2017-09-20 15:30:50', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('322', '1001', '192.168.0.233', '2017-09-14 10:25:06', 'a12', '1', '1', 'a12', '2017-09-20 15:30:51', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('323', '1001', '192.168.0.233', '2017-09-14 10:25:06', 'a14', '1', '1', 'a14', '2017-09-20 15:30:51', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('324', '1001', '192.168.0.189', '2017-09-14 10:27:19', '3', '1', '1', '3', '2017-09-20 15:30:51', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('325', '1001', '192.168.0.189', '2017-09-14 10:27:20', '2', '1', '1', '2', '2017-09-20 15:30:51', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('326', '1001', '192.168.0.189', '2017-09-14 10:27:22', '1', '1', '1', '1', '2017-09-20 15:30:51', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('327', '1001', '192.168.0.189', '2017-09-14 10:27:25', '4', '1', '1', '4', '2017-09-20 15:30:52', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('328', '1001', '192.168.0.233', '2017-09-14 10:28:41', 's1', '1', '1', 's1', '2017-09-20 15:30:52', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('329', '1001', '192.168.0.233', '2017-09-14 10:28:43', 's4', '1', '1', 's4', '2017-09-20 15:30:53', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('330', '1001', '192.168.0.233', '2017-09-14 10:28:43', 's3', '1', '1', 's3', '2017-09-20 15:30:53', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('331', '1001', '192.168.0.233', '2017-09-14 10:28:43', 's2', '1', '1', 's2', '2017-09-20 15:30:53', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('332', '1001', '192.168.0.189', '2017-09-14 10:29:30', '1', '1', '1', '1', '2017-09-20 15:30:54', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('333', '1001', '192.168.0.233', '2017-09-14 10:36:52', 'c4', '1', '1', 'c4', '2017-09-20 15:30:54', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('334', '1001', '192.168.0.233', '2017-09-14 10:36:52', 'c3', '1', '1', 'c3', '2017-09-20 15:30:54', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('335', '1001', '192.168.0.233', '2017-09-14 10:36:52', 'c2', '1', '1', 'c2', '2017-09-20 15:30:54', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('336', '1001', '192.168.0.233', '2017-09-14 10:36:56', 'c1', '1', '1', 'c1', '2017-09-20 15:30:54', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('337', '1001', '192.168.0.233', '2017-09-14 10:43:18', 'asdfsd', '1', '1', 'asdfsd', '2017-09-20 15:30:55', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('338', '1001', '192.168.0.233', '2017-09-14 10:47:03', 'asd', '1', '1', 'asd', '2017-09-20 15:30:55', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('339', '1001', '192.168.0.189', '2017-09-14 10:48:33', '4', '1', '1', '4', '2017-09-20 15:30:55', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('340', '1001', '192.168.0.189', '2017-09-14 10:48:34', '3', '1', '1', '3', '2017-09-20 15:30:55', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('341', '1001', '192.168.0.189', '2017-09-14 10:48:35', '2', '1', '1', '2', '2017-09-20 15:30:55', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('342', '1001', '192.168.0.189', '2017-09-14 10:48:37', '1', '1', '1', '1', '2017-09-20 15:30:56', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('343', '1001', '192.168.0.233', '2017-09-14 10:53:03', 'ndfsfd', '1', '1', 'ndfsfd', '2017-09-20 15:30:56', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('344', '1001', '192.168.0.233', '2017-09-14 10:53:04', 'weew', '1', '1', 'weew', '2017-09-20 15:30:56', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('345', '1001', '192.168.0.233', '2017-09-14 10:53:05', 'cxczx', '1', '1', 'cxczx', '2017-09-20 15:30:56', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('346', '1001', '192.168.0.233', '2017-09-14 10:53:06', 'cvzxcv', '1', '1', 'cvzxcv', '2017-09-20 15:30:56', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('347', '1001', '192.168.0.233', '2017-09-14 11:05:24', 'ewr1', '1', '1', 'ewr1', '2017-09-20 15:30:58', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('348', '1001', '192.168.0.233', '2017-09-14 11:05:24', 'xcvxcz', '1', '1', 'xcvxcz', '2017-09-20 15:30:58', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('349', '1001', '192.168.0.233', '2017-09-14 11:05:24', 'ewqe', '1', '1', 'ewqe', '2017-09-20 15:30:58', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('350', '1001', '192.168.0.233', '2017-09-14 11:05:24', 'vcxxcvxc', '1', '1', 'vcxxcvxc', '2017-09-20 15:30:58', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('351', '1001', '192.168.0.233', '2017-09-14 11:11:33', 'b3', '1', '1', 'b3', '2017-09-20 15:30:58', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('352', '1001', '192.168.0.233', '2017-09-14 11:11:33', 'b2', '1', '1', 'b2', '2017-09-20 15:30:58', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('353', '1001', '192.168.0.233', '2017-09-14 11:11:33', 'b1', '1', '1', 'b1', '2017-09-20 15:30:58', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('354', '1001', '192.168.0.233', '2017-09-14 11:11:33', 'b4', '1', '1', 'b4', '2017-09-20 15:30:58', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('355', '1001', '192.168.0.233', '2017-09-14 11:20:33', 'ewew', '1', '1', 'ewew', '2017-09-20 15:30:59', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('356', '1001', '192.168.0.233', '2017-09-14 11:51:02', 'vcx3', '1', '1', 'vcx3', '2017-09-20 15:30:59', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('357', '1001', '192.168.0.233', '2017-09-14 11:51:04', 'vcx4', '1', '1', 'vcx4', '2017-09-20 15:30:59', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('358', '1001', '192.168.0.233', '2017-09-14 11:51:06', 'vcx2', '1', '1', 'vcx2', '2017-09-20 15:30:59', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('359', '1001', '192.168.0.233', '2017-09-14 11:51:08', 'vxc1', '1', '1', 'vxc1', '2017-09-20 15:31:00', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('360', '1001', '192.168.0.189', '2017-09-14 11:51:33', '4', '1', '1', '4', '2017-09-20 15:31:00', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('361', '1001', '192.168.0.189', '2017-09-14 11:51:36', '2', '1', '1', '2', '2017-09-20 15:31:01', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('362', '1001', '192.168.0.189', '2017-09-14 11:51:37', '3', '1', '1', '3', '2017-09-20 15:31:01', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('363', '1001', '192.168.0.189', '2017-09-14 11:51:39', '1', '1', '1', '1', '2017-09-20 15:31:02', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('364', '1001', '192.168.0.189', '2017-09-14 12:44:25', '2', '1', '1', '2', '2017-09-20 15:31:02', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('365', '1001', '192.168.0.189', '2017-09-14 12:44:26', '1', '1', '1', '1', '2017-09-20 15:31:02', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('366', '1001', '192.168.0.189', '2017-09-14 12:44:27', '3', '1', '1', '3', '2017-09-20 15:31:02', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('367', '1001', '192.168.0.189', '2017-09-14 12:44:30', '4', '1', '1', '4', '2017-09-20 15:31:02', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('368', '1001', '192.168.0.189', '2017-09-14 13:30:58', '3', '1', '1', '3', '2017-09-20 15:31:03', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('369', '1001', '192.168.0.189', '2017-09-14 13:35:38', '1', '1', '1', '1', '2017-09-20 15:31:03', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('370', '1001', '192.168.0.189', '2017-09-14 13:35:40', '4', '1', '1', '4', '2017-09-20 15:31:03', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('371', '1001', '192.168.0.189', '2017-09-14 13:35:41', '2', '1', '1', '2', '2017-09-20 15:31:03', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('372', '1001', '192.168.0.233', '2017-09-14 13:54:27', 'ew2', '1', '1', 'ew2', '2017-09-20 15:31:03', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('373', '1001', '192.168.0.233', '2017-09-14 13:54:27', 'ew4', '1', '1', 'ew4', '2017-09-20 15:31:03', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('374', '1001', '192.168.0.233', '2017-09-14 13:54:27', 'ew3', '1', '1', 'ew3', '2017-09-20 15:31:04', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('375', '1001', '192.168.0.233', '2017-09-14 13:54:27', 'ew1', '1', '1', 'ew1', '2017-09-20 15:31:04', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('376', '1001', '192.168.0.233', '2017-09-14 13:57:00', 'vxccv', '1', '1', 'vxccv', '2017-09-20 15:31:04', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('377', '1001', '192.168.0.189', '2017-09-14 14:00:52', '1', '1', '1', '1', '2017-09-20 15:31:04', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('378', '1001', '192.168.0.233', '2017-09-14 14:18:50', 's3', '1', '1', 's3', '2017-09-20 15:31:04', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('379', '1001', '192.168.0.233', '2017-09-14 14:18:50', 's1', '1', '1', 's1', '2017-09-20 15:31:04', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('380', '1001', '192.168.0.233', '2017-09-14 14:18:50', 's2', '1', '1', 's2', '2017-09-20 15:31:06', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('381', '1001', '192.168.0.233', '2017-09-14 14:18:50', 's4', '1', '1', 's4', '2017-09-20 15:31:06', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('382', '1001', '192.168.0.233', '2017-09-14 14:38:00', 'd2', '1', '1', 'd2', '2017-09-20 15:31:06', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('383', '1001', '192.168.0.233', '2017-09-14 14:38:00', 'd1', '1', '1', 'd1', '2017-09-20 15:31:06', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('384', '1001', '192.168.0.233', '2017-09-14 14:38:00', 'd4', '1', '1', 'd4', '2017-09-20 15:31:06', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('385', '1001', '192.168.0.233', '2017-09-14 14:38:00', 'd3', '1', '1', 'd3', '2017-09-20 15:31:06', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('386', '1001', '192.168.0.233', '2017-09-14 15:03:17', 'f1', '1', '1', 'f1', '2017-09-20 15:31:07', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('387', '1001', '192.168.0.233', '2017-09-14 15:03:17', 'f4', '1', '1', 'f4', '2017-09-20 15:31:07', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('388', '1001', '192.168.0.233', '2017-09-14 15:03:17', 'f2', '1', '1', 'f2', '2017-09-20 15:31:07', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('389', '1001', '192.168.0.233', '2017-09-14 15:03:17', 'f3', '1', '1', 'f3', '2017-09-20 15:31:07', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('390', '1001', '192.168.0.233', '2017-09-14 15:30:24', 'c2', '1', '1', 'c2', '2017-09-20 15:31:07', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('391', '1001', '192.168.0.233', '2017-09-14 15:30:24', 'c3', '1', '1', 'c3', '2017-09-20 15:31:07', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('392', '1001', '192.168.0.233', '2017-09-14 15:30:24', 'c4', '1', '1', 'c4', '2017-09-20 15:31:07', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('393', '1001', '192.168.0.233', '2017-09-14 15:30:24', 'c1', '1', '1', 'c1', '2017-09-20 15:31:07', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('394', '1001', '192.168.0.189', '2017-09-14 17:06:48', '3', '1', '1', '3', '2017-09-20 15:31:08', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('395', '1001', '192.168.0.189', '2017-09-14 17:06:54', '2', '1', '1', '2', '2017-09-20 15:31:08', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('396', '1001', '192.168.0.189', '2017-09-14 17:06:55', '4', '1', '1', '4', '2017-09-20 15:31:08', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('397', '1001', '192.168.0.189', '2017-09-14 17:06:56', '1', '1', '1', '1', '2017-09-20 15:31:08', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('398', '1001', '192.168.0.189', '2017-09-14 17:18:37', '2', '1', '1', '2', '2017-09-20 15:31:09', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('399', '1001', '192.168.0.189', '2017-09-14 17:18:38', '36', '1', '1', '36', '2017-09-20 15:31:09', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('400', '1001', '192.168.0.189', '2017-09-14 17:18:39', '1', '1', '1', '1', '2017-09-20 15:31:09', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('401', '1001', '192.168.0.189', '2017-09-14 17:18:40', '7', '1', '1', '7', '2017-09-20 15:31:09', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('402', '1001', '192.168.0.189', '2017-09-14 17:35:23', '1', '1', '1', '1', '2017-09-20 15:31:09', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('403', '1001', '192.168.0.189', '2017-09-14 17:35:23', '3', '1', '1', '3', '2017-09-20 15:31:10', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('404', '1001', '192.168.0.189', '2017-09-14 17:35:25', '4', '1', '1', '4', '2017-09-20 15:31:10', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('405', '1001', '192.168.0.189', '2017-09-14 17:35:26', '2', '1', '1', '2', '2017-09-20 15:31:10', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('406', '1001', '192.168.0.233', '2017-09-14 17:35:57', 'ewe', '1', '1', 'ewe', '2017-09-20 15:31:10', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('407', '1001', '192.168.0.233', '2017-09-14 17:36:18', 'bcnbn', '1', '1', 'bcnbn', '2017-09-20 15:31:10', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('408', '1001', '192.168.0.233', '2017-09-14 17:38:34', 'cvxxzcv', '1', '1', 'cvxxzcv', '2017-09-20 15:31:11', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('409', '1001', '192.168.0.233', '2017-09-14 17:59:44', 'z4', '1', '1', 'z4', '2017-09-20 15:31:11', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('410', '1001', '192.168.0.233', '2017-09-14 17:59:44', 'z1', '1', '1', 'z1', '2017-09-20 15:31:11', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('411', '1001', '192.168.0.233', '2017-09-14 17:59:44', 'z2', '1', '1', 'z2', '2017-09-20 15:31:11', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('412', '1001', '192.168.0.233', '2017-09-14 17:59:44', 'z3', '1', '1', 'z3', '2017-09-20 15:31:12', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('413', '1001', '192.168.0.233', '2017-09-14 18:17:57', 'a3', '1', '1', 'a3', '2017-09-20 15:31:14', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('414', '1001', '192.168.0.233', '2017-09-14 18:17:57', 'a2', '1', '1', 'a2', '2017-09-20 15:31:14', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('415', '1001', '192.168.0.233', '2017-09-14 18:17:57', 'a4', '1', '1', 'a4', '2017-09-20 15:31:14', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('416', '1001', '192.168.0.233', '2017-09-14 18:17:57', 'a1', '1', '1', 'a1', '2017-09-20 15:31:14', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('417', '1001', '192.168.0.233', '2017-09-14 18:33:05', 'v3', '1', '1', 'v3', '2017-09-20 15:31:15', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('418', '1001', '192.168.0.233', '2017-09-14 18:33:05', 'v1', '1', '1', 'v1', '2017-09-20 15:31:15', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('419', '1001', '192.168.0.233', '2017-09-14 18:33:05', 'v2', '1', '1', 'v2', '2017-09-20 15:31:15', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('420', '1001', '192.168.0.233', '2017-09-14 18:33:05', 'v4', '1', '1', 'v4', '2017-09-20 15:31:15', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('421', '1001', '192.168.0.233', '2017-09-14 18:39:50', 'c4', '1', '1', 'c4', '2017-09-20 15:31:16', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('422', '1001', '192.168.0.233', '2017-09-14 18:40:10', 'c1', '1', '1', 'c1', '2017-09-20 15:31:16', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('423', '1001', '192.168.0.233', '2017-09-14 18:40:10', 'c3', '1', '1', 'c3', '2017-09-20 15:31:16', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('424', '1001', '192.168.0.233', '2017-09-14 18:40:10', 'c2', '1', '1', 'c2', '2017-09-20 15:31:16', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('425', '1001', '192.168.0.189', '2017-09-14 18:51:47', '2', '1', '1', '2', '2017-09-20 15:31:18', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('426', '1001', '192.168.0.189', '2017-09-14 18:51:47', '2', '1', '1', '2', '2017-09-20 15:31:18', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('427', '1001', '192.168.0.189', '2017-09-14 19:06:47', '2', '1', '1', '2', '2017-09-20 15:31:19', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('428', '1001', '192.168.0.189', '2017-09-14 19:06:48', '3', '1', '1', '3', '2017-09-20 15:31:19', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('429', '1001', '192.168.0.189', '2017-09-14 19:06:49', '4', '1', '1', '4', '2017-09-20 15:31:19', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('430', '1001', '192.168.0.189', '2017-09-14 19:06:50', '1', '1', '1', '1', '2017-09-20 15:31:19', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('431', '1001', '192.168.0.189', '2017-09-15 09:26:35', '2', '1', '1', '2', '2017-09-20 15:31:21', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('432', '1001', '192.168.0.233', '2017-09-15 09:30:34', 's1', '1', '1', 's1', '2017-09-20 15:31:21', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('433', '1001', '192.168.0.233', '2017-09-15 09:33:30', 's4', '1', '1', 's4', '2017-09-20 15:31:22', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('434', '1001', '192.168.0.233', '2017-09-15 09:33:32', 's3', '1', '1', 's3', '2017-09-20 15:31:22', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('435', '1001', '192.168.0.233', '2017-09-15 09:33:33', 's2', '1', '1', 's2', '2017-09-20 15:31:22', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('436', '1001', '192.168.0.189', '2017-09-15 09:37:04', '2', '1', '1', '2', '2017-09-20 15:31:22', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('437', '1001', '192.168.0.189', '2017-09-15 09:38:01', '1', '1', '1', '1', '2017-09-20 15:31:22', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('438', '1001', '192.168.0.189', '2017-09-15 09:38:02', '4', '1', '1', '4', '2017-09-20 15:31:22', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('439', '1001', '192.168.0.189', '2017-09-15 09:38:03', '3', '1', '1', '3', '2017-09-20 15:31:22', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('440', '1001', '192.168.0.189', '2017-09-15 09:49:53', '3', '1', '1', '3', '2017-09-20 15:31:24', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('441', '1001', '192.168.0.189', '2017-09-15 09:49:54', '4', '1', '1', '4', '2017-09-20 15:31:24', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('442', '1001', '192.168.0.189', '2017-09-15 09:49:55', '2', '1', '1', '2', '2017-09-20 15:31:24', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('443', '1001', '192.168.0.189', '2017-09-15 09:49:56', '1', '1', '1', '1', '2017-09-20 15:31:24', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('444', '1001', '192.168.0.233', '2017-09-15 09:59:07', 'd1', '1', '1', 'd1', '2017-09-20 15:31:25', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('445', '1001', '192.168.0.189', '2017-09-15 09:59:52', '10', '1', '1', '10', '2017-09-20 15:31:25', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('446', '1001', '192.168.0.189', '2017-09-15 10:00:12', '13', '1', '1', '13', '2017-09-20 15:31:25', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('447', '1001', '192.168.0.189', '2017-09-15 10:00:13', '12', '1', '1', '12', '2017-09-20 15:31:25', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('448', '1001', '192.168.0.189', '2017-09-15 10:00:14', '11', '1', '1', '11', '2017-09-20 15:31:25', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('449', '1001', '192.168.0.189', '2017-09-15 10:06:22', '20', '1', '1', '20', '2017-09-20 15:31:25', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('450', '1001', '192.168.0.189', '2017-09-15 10:06:25', '21', '1', '1', '21', '2017-09-20 15:31:26', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('451', '1001', '192.168.0.189', '2017-09-15 10:06:26', '23', '1', '1', '23', '2017-09-20 15:31:26', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('452', '1001', '192.168.0.189', '2017-09-15 10:06:28', '22', '1', '1', '22', '2017-09-20 15:31:26', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('453', '1001', '192.168.0.233', '2017-09-15 10:10:54', 'd2', '1', '1', 'd2', '2017-09-20 15:31:26', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('454', '1001', '192.168.0.233', '2017-09-15 10:10:54', 'd3', '1', '1', 'd3', '2017-09-20 15:31:26', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('455', '1001', '192.168.0.233', '2017-09-15 10:10:54', 'd1', '1', '1', 'd1', '2017-09-20 15:31:26', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('456', '1001', '192.168.0.233', '2017-09-15 10:10:54', 'd4', '1', '1', 'd4', '2017-09-20 15:31:26', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('457', '1001', '192.168.0.233', '2017-09-15 10:27:03', 'a1', '1', '1', 'a1', '2017-09-20 15:31:27', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('458', '1001', '192.168.0.233', '2017-09-15 10:37:17', 'a4', '1', '1', 'a4', '2017-09-20 15:31:27', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('459', '1001', '192.168.0.233', '2017-09-15 10:37:18', 'a3', '1', '1', 'a3', '2017-09-20 15:31:27', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('460', '1001', '192.168.0.233', '2017-09-15 10:37:20', 'a2', '1', '1', 'a2', '2017-09-20 15:31:27', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('461', '1001', '192.168.0.233', '2017-09-15 10:37:21', 'a1', '1', '1', 'a1', '2017-09-20 15:31:27', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('462', '1001', '192.168.0.189', '2017-09-15 10:59:44', '1', '1', '1', '1', '2017-09-20 15:31:28', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('463', '1001', '192.168.0.233', '2017-09-15 11:11:59', 's1', '1', '1', 's1', '2017-09-20 15:31:28', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('464', '1001', '192.168.0.233', '2017-09-15 11:13:31', 's2', '1', '1', 's2', '2017-09-20 15:31:28', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('465', '1001', '192.168.0.233', '2017-09-15 11:21:50', 'd1', '1', '1', 'd1', '2017-09-20 15:31:28', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('466', '1001', '192.168.0.233', '2017-09-15 11:27:38', 'ewew', '1', '1', 'ewew', '2017-09-20 15:31:28', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('467', '1001', '192.168.0.233', '2017-09-15 11:28:54', 'vsd', '1', '1', 'vsd', '2017-09-20 15:31:29', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('468', '1001', '192.168.0.189', '2017-09-15 12:09:09', '1', '1', '1', '1', '2017-09-20 15:31:29', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('469', '1001', '192.168.0.189', '2017-09-15 12:09:10', '2', '1', '1', '2', '2017-09-20 15:31:30', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('470', '1001', '192.168.0.189', '2017-09-15 12:09:11', '3', '1', '1', '3', '2017-09-20 15:31:30', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('471', '1001', '192.168.0.189', '2017-09-15 12:09:12', '4', '1', '1', '4', '2017-09-20 15:31:30', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('472', '1001', '192.168.0.189', '2017-09-15 14:54:19', '3', '1', '1', '3', '2017-09-20 15:31:31', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('473', '1001', '192.168.0.189', '2017-09-15 14:57:52', '1', '1', '1', '1', '2017-09-20 15:31:31', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('474', '1001', '192.168.0.189', '2017-09-15 14:57:54', '2', '1', '1', '2', '2017-09-20 15:31:31', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('475', '1001', '192.168.0.189', '2017-09-15 14:57:55', '3', '1', '1', '3', '2017-09-20 15:31:31', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('476', '1001', '192.168.0.189', '2017-09-15 14:57:56', '3', '1', '1', '3', '2017-09-20 15:31:31', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('477', '1001', '192.168.0.189', '2017-09-15 15:00:16', '1', '1', '1', '1', '2017-09-20 15:31:32', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('478', '1001', '192.168.0.189', '2017-09-15 15:00:17', '3', '1', '1', '3', '2017-09-20 15:31:32', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('479', '1001', '192.168.0.189', '2017-09-15 15:00:18', '4', '1', '1', '4', '2017-09-20 15:31:32', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('480', '1001', '192.168.0.189', '2017-09-15 15:00:19', '2', '1', '1', '2', '2017-09-20 15:31:33', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('481', '1001', '192.168.0.233', '2017-09-15 15:36:36', 'z1', '1', '1', 'z1', '2017-09-20 15:31:34', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('482', '1001', '192.168.0.233', '2017-09-15 15:36:39', 'z3', '1', '1', 'z3', '2017-09-20 15:31:34', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('483', '1001', '192.168.0.233', '2017-09-15 15:36:39', 'z4', '1', '1', 'z4', '2017-09-20 15:31:34', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('484', '1001', '192.168.0.233', '2017-09-15 15:36:39', 'z2', '1', '1', 'z2', '2017-09-20 15:31:34', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('485', '1001', '192.168.0.189', '2017-09-15 16:02:52', '1', '1', '1', '1', '2017-09-20 15:31:35', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('486', '1001', '192.168.0.189', '2017-09-15 16:03:10', '1', '1', '1', '1', '2017-09-20 15:31:35', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('487', '1001', '192.168.0.233', '2017-09-15 16:11:54', 'c1', '1', '1', 'c1', '2017-09-20 15:31:35', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('488', '1001', '192.168.0.233', '2017-09-15 16:11:54', 'c3', '1', '1', 'c3', '2017-09-20 15:31:35', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('489', '1001', '192.168.0.233', '2017-09-15 16:11:54', 'c4', '1', '1', 'c4', '2017-09-20 15:31:35', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('490', '1001', '192.168.0.233', '2017-09-15 16:11:54', 'c2', '1', '1', 'c2', '2017-09-20 15:31:36', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('491', '1001', '192.168.0.233', '2017-09-15 16:27:55', 'd1', '1', '1', 'd1', '2017-09-20 15:31:36', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('492', '1001', '192.168.0.233', '2017-09-15 16:27:59', 'd2', '1', '1', 'd2', '2017-09-20 15:31:36', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('493', '1001', '192.168.0.233', '2017-09-15 16:27:59', 'd3', '1', '1', 'd3', '2017-09-20 15:31:37', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('494', '1001', '192.168.0.233', '2017-09-15 16:27:59', 'd4', '1', '1', 'd4', '2017-09-20 15:31:37', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('495', '1001', '192.168.0.233', '2017-09-15 16:33:58', 'v1', '1', '1', 'v1', '2017-09-20 15:31:38', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('496', '1001', '192.168.0.233', '2017-09-15 16:33:59', 'v4', '1', '1', 'v4', '2017-09-20 15:31:38', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('497', '1001', '192.168.0.233', '2017-09-15 16:34:01', 'v3', '1', '1', 'v3', '2017-09-20 15:31:38', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('498', '1001', '192.168.0.233', '2017-09-15 16:34:02', 'v2', '1', '1', 'v2', '2017-09-20 15:31:38', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('499', '1001', '192.168.0.233', '2017-09-15 16:36:04', 'x4', '1', '1', 'x4', '2017-09-20 15:31:39', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('500', '1001', '192.168.0.233', '2017-09-15 16:36:05', 'x1', '1', '1', 'x1', '2017-09-20 15:31:39', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('501', '1001', '192.168.0.233', '2017-09-15 16:36:06', 'x2', '1', '1', 'x2', '2017-09-20 15:31:39', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('502', '1001', '192.168.0.233', '2017-09-15 16:36:07', 'x3', '1', '1', 'x3', '2017-09-20 15:31:39', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('503', '1001', '192.168.0.233', '2017-09-15 16:46:22', 'b4', '1', '1', 'b4', '2017-09-20 15:31:40', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('504', '1001', '192.168.0.233', '2017-09-15 16:46:23', 'b3', '1', '1', 'b3', '2017-09-20 15:31:40', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('505', '1001', '192.168.0.233', '2017-09-15 16:46:24', 'b2', '1', '1', 'b2', '2017-09-20 15:31:40', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('506', '1001', '192.168.0.233', '2017-09-15 16:46:25', 'b1', '1', '1', 'b1', '2017-09-20 15:31:40', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('507', '1001', '192.168.0.189', '2017-09-15 16:48:36', '8', '1', '1', '8', '2017-09-20 15:31:40', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('508', '1001', '192.168.0.189', '2017-09-15 16:48:38', '2', '1', '1', '2', '2017-09-20 15:31:40', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('509', '1001', '192.168.0.189', '2017-09-15 16:48:40', '3', '1', '1', '3', '2017-09-20 15:31:40', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('510', '1001', '192.168.0.189', '2017-09-15 16:49:38', '7', '1', '1', '7', '2017-09-20 15:31:41', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('511', '1001', '192.168.0.233', '2017-09-15 17:40:31', 'c1', '1', '1', 'c1', '2017-09-20 15:31:42', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('512', '1001', '192.168.0.233', '2017-09-15 17:42:47', 'n3', '1', '1', 'n3', '2017-09-20 15:31:42', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('513', '1001', '192.168.0.233', '2017-09-15 17:42:47', 'n2', '1', '1', 'n2', '2017-09-20 15:31:42', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('514', '1001', '192.168.0.233', '2017-09-15 17:42:47', 'n1', '1', '1', 'n1', '2017-09-20 15:31:42', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('515', '1001', '192.168.0.233', '2017-09-15 17:42:47', 'n4', '1', '1', 'n4', '2017-09-20 15:31:42', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('516', '1001', '192.168.0.189', '2017-09-15 18:33:43', '2', '1', '1', '2', '2017-09-20 15:31:42', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('517', '1001', '192.168.0.189', '2017-09-15 18:33:46', '1', '1', '1', '1', '2017-09-20 15:31:42', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('518', '1001', '192.168.0.189', '2017-09-15 18:33:47', '3', '1', '1', '3', '2017-09-20 15:31:42', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('519', '1001', '192.168.0.189', '2017-09-15 18:33:48', '4', '1', '1', '4', '2017-09-20 15:31:42', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('520', '1001', '192.168.0.189', '2017-09-18 09:49:00', '1', '1', '1', '1', '2017-09-20 15:31:43', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('521', '1001', '192.168.0.189', '2017-09-18 09:51:13', '1', '1', '1', '1', '2017-09-20 15:31:43', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('522', '1001', '192.168.0.189', '2017-09-18 09:51:14', '1', '1', '1', '1', '2017-09-20 15:31:43', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('523', '1001', '192.168.0.189', '2017-09-18 11:31:32', '1', '1', '1', '1', '2017-09-20 15:31:45', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('524', '1001', '192.168.0.189', '2017-09-18 11:32:16', '1', '1', '1', '1', '2017-09-20 15:31:45', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('525', '1001', '192.168.0.189', '2017-09-18 11:32:21', '1', '1', '1', '1', '2017-09-20 15:31:45', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('526', '1001', '192.168.0.189', '2017-09-18 11:33:27', '1', '1', '1', '1', '2017-09-20 15:32:12', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('527', '1001', '192.168.0.189', '2017-09-18 11:36:08', '1', '1', '1', '1', '2017-09-20 15:32:12', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('528', '1001', '192.168.0.189', '2017-09-18 11:36:10', '1', '1', '1', '1', '2017-09-20 15:32:12', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('529', '1001', '192.168.0.189', '2017-09-18 11:36:10', '1', '1', '1', '1', '2017-09-20 15:32:12', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('530', '1001', '192.168.0.189', '2017-09-18 11:36:12', '1', '1', '1', '1', '2017-09-20 15:32:12', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('531', '1001', '192.168.0.189', '2017-09-18 11:38:17', '1', '1', '1', '1', '2017-09-20 15:32:13', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('532', '1001', '192.168.0.189', '2017-09-18 11:38:23', '1', '1', '1', '1', '2017-09-20 15:32:13', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('533', '1001', '192.168.0.189', '2017-09-18 11:38:24', '1', '1', '1', '1', '2017-09-20 15:32:13', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('534', '1001', '192.168.0.189', '2017-09-18 11:38:24', '1', '1', '1', '1', '2017-09-20 15:32:13', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('535', '1001', '192.168.0.189', '2017-09-18 11:38:25', '1', '1', '1', '1', '2017-09-20 15:32:13', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('536', '1001', '192.168.0.189', '2017-09-18 11:38:38', '1', '1', '1', '1', '2017-09-20 15:32:13', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('537', '1001', '192.168.0.189', '2017-09-18 11:38:39', '1', '1', '1', '1', '2017-09-20 15:32:13', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('538', '1001', '192.168.0.189', '2017-09-18 11:38:39', '1', '1', '1', '1', '2017-09-20 15:32:13', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('539', '1001', '192.168.0.189', '2017-09-18 11:38:40', '1', '1', '1', '1', '2017-09-20 15:32:13', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('540', '1001', '192.168.0.189', '2017-09-18 11:38:40', '1', '1', '1', '1', '2017-09-20 15:32:14', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('541', '1001', '192.168.0.189', '2017-09-18 11:38:42', '1', '1', '1', '1', '2017-09-20 15:32:14', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('542', '1001', '192.168.0.189', '2017-09-18 11:38:42', '1', '1', '1', '1', '2017-09-20 15:32:14', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('543', '1001', '192.168.0.189', '2017-09-18 11:38:46', '1', '1', '1', '1', '2017-09-20 15:32:14', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('544', '1001', '192.168.0.189', '2017-09-18 11:38:49', '1', '1', '1', '1', '2017-09-20 15:32:14', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('545', '1001', '192.168.0.189', '2017-09-18 11:40:07', '1', '1', '1', '1', '2017-09-20 15:32:14', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('546', '1001', '192.168.0.189', '2017-09-18 11:40:07', '1', '1', '1', '1', '2017-09-20 15:32:14', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('547', '1001', '192.168.0.189', '2017-09-18 11:40:08', '1', '1', '1', '1', '2017-09-20 15:32:14', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('548', '1001', '192.168.0.189', '2017-09-18 11:40:08', '1', '1', '1', '1', '2017-09-20 15:32:15', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('549', '1001', '192.168.0.189', '2017-09-18 11:40:11', '1', '1', '1', '1', '2017-09-20 15:32:15', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('550', '1001', '192.168.0.189', '2017-09-18 11:40:28', '1', '1', '1', '1', '2017-09-20 15:32:15', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('551', '1001', '192.168.0.189', '2017-09-18 11:40:29', '1', '1', '1', '1', '2017-09-20 15:32:15', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('552', '1001', '192.168.0.189', '2017-09-18 11:40:29', '1', '1', '1', '1', '2017-09-20 15:32:16', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('553', '1001', '192.168.0.189', '2017-09-18 11:40:29', '1', '1', '1', '1', '2017-09-20 15:32:16', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('554', '1001', '192.168.0.189', '2017-09-18 11:40:30', '1', '1', '1', '1', '2017-09-20 15:32:16', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('555', '1001', '192.168.0.189', '2017-09-18 11:40:31', '1', '1', '1', '1', '2017-09-20 15:32:17', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('556', '1001', '192.168.0.189', '2017-09-18 11:40:31', '1', '1', '1', '1', '2017-09-20 15:32:17', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('557', '1001', '192.168.0.189', '2017-09-18 11:40:31', '1', '1', '1', '1', '2017-09-20 15:32:17', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('558', '1001', '192.168.0.189', '2017-09-18 11:40:31', '1', '1', '1', '1', '2017-09-20 15:32:18', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('559', '1001', '192.168.0.189', '2017-09-18 11:40:32', '1', '1', '1', '1', '2017-09-20 15:32:18', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('560', '1001', '192.168.0.189', '2017-09-18 11:40:32', '1', '1', '1', '1', '2017-09-20 15:32:18', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('561', '1001', '192.168.0.189', '2017-09-18 11:40:32', '1', '1', '1', '1', '2017-09-20 15:32:18', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('562', '1001', '192.168.0.189', '2017-09-18 11:40:33', '1', '1', '1', '1', '2017-09-20 15:32:18', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('563', '1001', '192.168.0.189', '2017-09-18 11:40:33', '1', '1', '1', '1', '2017-09-20 15:32:19', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('564', '1001', '192.168.0.189', '2017-09-18 11:40:33', '1', '1', '1', '1', '2017-09-20 15:32:19', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('565', '1001', '192.168.0.189', '2017-09-18 11:40:33', '1', '1', '1', '1', '2017-09-20 15:32:19', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('566', '1001', '192.168.0.189', '2017-09-18 11:40:34', '1', '1', '1', '1', '2017-09-20 15:32:19', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('567', '1001', '192.168.0.189', '2017-09-18 11:40:34', '1', '1', '1', '1', '2017-09-20 15:32:19', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('568', '1001', '192.168.0.189', '2017-09-18 11:40:34', '1', '1', '1', '1', '2017-09-20 15:32:19', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('569', '1001', '192.168.0.189', '2017-09-18 11:40:34', '1', '1', '1', '1', '2017-09-20 15:32:19', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('570', '1001', '192.168.0.189', '2017-09-18 11:40:34', '1', '1', '1', '1', '2017-09-20 15:32:19', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('571', '1001', '192.168.0.189', '2017-09-18 11:40:35', '1', '1', '1', '1', '2017-09-20 15:32:20', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('572', '1001', '192.168.0.189', '2017-09-18 11:40:35', '1', '1', '1', '1', '2017-09-20 15:32:20', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('573', '1001', '192.168.0.189', '2017-09-18 11:40:35', '1', '1', '1', '1', '2017-09-20 15:32:20', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('574', '1001', '192.168.0.189', '2017-09-18 11:40:35', '1', '1', '1', '1', '2017-09-20 15:32:20', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('575', '1001', '192.168.0.189', '2017-09-18 11:40:35', '1', '1', '1', '1', '2017-09-20 15:32:20', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('576', '1001', '192.168.0.189', '2017-09-18 11:40:36', '1', '1', '1', '1', '2017-09-20 15:32:20', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('577', '1001', '192.168.0.189', '2017-09-18 11:40:36', '1', '1', '1', '1', '2017-09-20 15:32:20', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('578', '1001', '192.168.0.189', '2017-09-18 11:40:36', '1', '1', '1', '1', '2017-09-20 15:32:21', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('579', '1001', '192.168.0.189', '2017-09-18 11:40:36', '1', '1', '1', '1', '2017-09-20 15:32:21', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('580', '1001', '192.168.0.189', '2017-09-18 11:40:36', '1', '1', '1', '1', '2017-09-20 15:32:21', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('581', '1001', '192.168.0.189', '2017-09-18 11:40:37', '1', '1', '1', '1', '2017-09-20 15:32:21', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('582', '1001', '192.168.0.189', '2017-09-18 11:40:37', '1', '1', '1', '1', '2017-09-20 15:32:21', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('583', '1001', '192.168.0.189', '2017-09-18 11:40:37', '1', '1', '1', '1', '2017-09-20 15:32:21', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('584', '1001', '192.168.0.189', '2017-09-18 11:40:39', '1', '1', '1', '1', '2017-09-20 15:32:21', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('585', '1001', '192.168.0.189', '2017-09-18 11:40:40', '1', '1', '1', '1', '2017-09-20 15:32:21', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('586', '1001', '192.168.0.189', '2017-09-18 11:40:40', '1', '1', '1', '1', '2017-09-20 15:32:21', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('587', '1001', '192.168.0.189', '2017-09-18 11:40:41', '1', '1', '1', '1', '2017-09-20 15:32:21', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('588', '1001', '192.168.0.189', '2017-09-18 11:40:41', '1', '1', '1', '1', '2017-09-20 15:32:22', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('589', '1001', '192.168.0.189', '2017-09-18 11:43:30', '1', '1', '1', '1', '2017-09-20 15:32:22', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('590', '1001', '192.168.0.189', '2017-09-18 11:47:26', '1', '1', '1', '1', '2017-09-20 15:32:22', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('591', '1001', '192.168.0.189', '2017-09-18 11:51:28', '1', '1', '1', '1', '2017-09-20 15:32:23', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('592', '1001', '192.168.0.189', '2017-09-18 11:52:24', '1', '1', '1', '1', '2017-09-20 15:32:23', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('593', '1001', '192.168.0.189', '2017-09-18 11:53:22', '1', '1', '1', '1', '2017-09-20 15:32:23', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('594', '1001', '192.168.0.189', '2017-09-18 12:11:48', '1', '1', '1', '1', '2017-09-20 15:32:26', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('595', '1001', '192.168.0.189', '2017-09-18 12:11:50', '1', '1', '1', '1', '2017-09-20 15:32:26', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('596', '1001', '192.168.0.189', '2017-09-18 12:11:50', '1', '1', '1', '1', '2017-09-20 15:32:26', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('597', '1001', '192.168.0.189', '2017-09-18 12:11:50', '1', '1', '1', '1', '2017-09-20 15:32:26', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('598', '1001', '192.168.0.189', '2017-09-18 12:11:51', '1', '1', '1', '1', '2017-09-20 15:32:27', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('599', '1001', '192.168.0.189', '2017-09-18 12:11:51', '1', '1', '1', '1', '2017-09-20 15:32:27', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('600', '1001', '192.168.0.189', '2017-09-18 12:11:52', '1', '1', '1', '1', '2017-09-20 15:32:27', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('601', '1001', '192.168.0.189', '2017-09-18 12:11:52', '1', '1', '1', '1', '2017-09-20 15:32:27', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('602', '1001', '192.168.0.189', '2017-09-18 12:11:52', '1', '1', '1', '1', '2017-09-20 15:32:27', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('603', '1001', '192.168.0.189', '2017-09-18 12:11:52', '1', '1', '1', '1', '2017-09-20 15:32:27', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('604', '1001', '192.168.0.189', '2017-09-18 12:11:52', '1', '1', '1', '1', '2017-09-20 15:32:27', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('605', '1001', '192.168.0.189', '2017-09-18 12:11:52', '1', '1', '1', '1', '2017-09-20 15:32:27', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('606', '1001', '192.168.0.189', '2017-09-18 12:11:53', '1', '1', '1', '1', '2017-09-20 15:32:27', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('607', '1001', '192.168.0.189', '2017-09-18 12:11:53', '1', '1', '1', '1', '2017-09-20 15:32:28', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('608', '1001', '192.168.0.189', '2017-09-18 12:11:53', '1', '1', '1', '1', '2017-09-20 15:32:28', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('609', '1001', '192.168.0.189', '2017-09-18 12:11:53', '1', '1', '1', '1', '2017-09-20 15:32:28', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('610', '1001', '192.168.0.189', '2017-09-18 12:11:54', '1', '1', '1', '1', '2017-09-20 15:32:28', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('611', '1001', '192.168.0.189', '2017-09-18 12:14:24', '1', '1', '1', '1', '2017-09-20 15:32:28', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('612', '1001', '192.168.0.189', '2017-09-18 12:14:28', '1', '1', '1', '1', '2017-09-20 15:32:29', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('613', '1001', '192.168.0.189', '2017-09-18 14:08:25', '1', '1', '1', '1', '2017-09-20 15:32:29', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('614', '1001', '192.168.0.189', '2017-09-18 14:09:41', '1', '1', '1', '1', '2017-09-20 15:32:29', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('615', '1001', '192.168.0.189', '2017-09-18 14:09:43', '1', '1', '1', '1', '2017-09-20 15:32:29', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('616', '1001', '192.168.0.189', '2017-09-18 14:12:50', '1', '1', '1', '1', '2017-09-20 15:32:29', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('617', '1001', '192.168.0.189', '2017-09-18 14:14:47', '1', '1', '1', '1', '2017-09-20 15:32:30', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('618', '1001', '192.168.0.189', '2017-09-18 14:14:52', '1', '1', '1', '1', '2017-09-20 15:32:30', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('619', '1001', '192.168.0.189', '2017-09-18 14:19:05', '1', '1', '1', '1', '2017-09-20 15:32:31', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('620', '1001', '192.168.0.189', '2017-09-18 14:28:41', '1', '1', '1', '1', '2017-09-20 15:32:31', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('621', '1001', '192.168.0.189', '2017-09-18 14:28:42', '1', '1', '1', '1', '2017-09-20 15:32:31', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('622', '1001', '192.168.0.189', '2017-09-18 14:29:29', '1', '1', '1', '1', '2017-09-20 15:32:31', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('623', '1001', '192.168.0.189', '2017-09-18 14:37:12', '1', '1', '1', '1', '2017-09-20 15:32:31', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('624', '1001', '192.168.0.189', '2017-09-18 14:37:13', '1', '1', '1', '1', '2017-09-20 15:32:31', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('625', '1001', '192.168.0.189', '2017-09-18 14:38:04', '1', '1', '1', '1', '2017-09-20 15:32:32', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('626', '1001', '192.168.0.189', '2017-09-18 15:18:26', '1', '1', '1', '1', '2017-09-20 15:32:33', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('627', '1001', '192.168.0.189', '2017-09-18 15:18:29', '1', '1', '1', '1', '2017-09-20 15:32:33', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('628', '1001', '192.168.0.189', '2017-09-18 15:19:58', '1', '1', '1', '1', '2017-09-20 15:32:33', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('629', '1001', '192.168.0.189', '2017-09-18 15:20:02', '1', '1', '1', '1', '2017-09-20 15:32:33', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('630', '1001', '192.168.0.189', '2017-09-18 15:26:18', '1', '1', '1', '1', '2017-09-20 15:32:34', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('631', '1001', '192.168.0.189', '2017-09-18 15:26:20', '1', '1', '1', '1', '2017-09-20 15:32:34', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('632', '1001', '192.168.0.189', '2017-09-20 10:41:03', '1', '1', '1', '1', '2017-09-20 15:32:36', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('633', '1001', '192.168.0.189', '2017-09-20 10:42:28', '1', '1', '1', '1', '2017-09-20 15:32:36', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('634', '1001', '192.168.0.189', '2017-09-20 11:26:20', '4', '1', '1', '4', '2017-09-20 15:32:36', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('635', '1001', '192.168.0.189', '2017-09-20 11:26:23', '3', '1', '1', '3', '2017-09-20 15:32:36', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('636', '1001', '192.168.0.189', '2017-09-20 11:26:30', '2', '1', '1', '2', '2017-09-20 15:32:36', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('637', '1001', '192.168.0.189', '2017-09-20 11:26:33', '1', '1', '1', '1', '2017-09-20 15:32:36', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('638', '1001', '192.168.0.189', '2017-09-20 11:31:13', '1', '1', '1', '1', '2017-09-20 15:32:37', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('639', '1001', '192.168.0.189', '2017-09-20 11:31:15', '4', '1', '1', '4', '2017-09-20 15:32:37', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('640', '1001', '192.168.0.189', '2017-09-20 11:31:16', '2', '1', '1', '2', '2017-09-20 15:32:37', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('641', '1001', '192.168.0.189', '2017-09-20 11:31:18', '3', '1', '1', '3', '2017-09-20 15:32:37', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('642', '1001', '192.168.0.189', '2017-09-20 12:04:51', '3', '1', '1', '3', '2017-09-20 15:32:37', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('643', '1001', '192.168.0.189', '2017-09-20 12:04:54', '1', '1', '1', '1', '2017-09-20 15:32:38', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('644', '1001', '192.168.0.189', '2017-09-20 12:04:56', '4', '1', '1', '4', '2017-09-20 15:32:38', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('645', '1001', '192.168.0.189', '2017-09-20 12:04:57', '2', '1', '1', '2', '2017-09-20 15:32:38', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('646', '1001', '192.168.0.189', '2017-09-20 19:01:01', '1', '0', '1', '1', '2017-10-09 18:17:57', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('647', '1001', '192.168.0.189', '2017-09-21 09:37:46', '4', '0', '1', '4', '2017-10-09 18:17:58', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('648', '1001', '192.168.0.189', '2017-09-21 09:37:49', '3', '0', '1', '3', '2017-10-09 18:17:58', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('649', '1001', '192.168.0.189', '2017-09-21 09:37:50', '1', '0', '1', '1', '2017-10-09 18:17:59', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('650', '1001', '192.168.0.189', '2017-09-21 09:37:51', '2', '0', '1', '2', '2017-10-09 18:17:59', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('651', '1001', '192.168.0.189', '2017-09-21 09:58:59', '1', '0', '1', '1', '2017-10-09 18:17:59', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('652', '1001', '192.168.0.189', '2017-09-21 09:59:00', '3', '0', '1', '3', '2017-10-09 18:17:59', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('653', '1001', '192.168.0.189', '2017-09-21 09:59:02', '2', '0', '1', '2', '2017-10-09 18:17:59', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('654', '1001', '192.168.0.189', '2017-09-21 09:59:03', '4', '0', '1', '4', '2017-10-09 18:17:59', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('655', '1001', '192.168.0.189', '2017-09-21 10:10:04', '1', '0', '1', '1', '2017-10-09 18:18:00', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('656', '1001', '192.168.0.189', '2017-09-21 10:10:20', '2', '0', '1', '2', '2017-10-09 18:18:00', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('657', '1001', '192.168.0.189', '2017-09-21 10:10:22', '3', '0', '1', '3', '2017-10-09 18:18:01', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('658', '1001', '192.168.0.189', '2017-09-21 10:10:24', '4', '0', '1', '4', '2017-10-09 18:18:01', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('659', '1001', '192.168.0.189', '2017-09-21 10:53:53', '4', '0', '1', '4', '2017-10-09 18:18:02', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('660', '1001', '192.168.0.189', '2017-09-21 10:53:56', '2', '0', '1', '2', '2017-10-09 18:18:02', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('661', '1001', '192.168.0.189', '2017-09-21 10:53:57', '3', '0', '1', '3', '2017-10-09 18:18:02', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('662', '1001', '192.168.0.189', '2017-09-21 10:53:58', '1', '0', '1', '1', '2017-10-09 18:18:03', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('663', '1001', '192.168.0.189', '2017-09-21 11:08:41', '2', '0', '1', '2', '2017-10-09 18:18:03', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('664', '1001', '192.168.0.189', '2017-09-21 11:08:42', '4', '0', '1', '4', '2017-10-09 18:18:03', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('665', '1001', '192.168.0.189', '2017-09-21 11:08:43', '3', '0', '1', '3', '2017-10-09 18:18:03', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('666', '1001', '192.168.0.189', '2017-09-21 11:08:45', '1', '0', '1', '1', '2017-10-09 18:18:03', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('667', '1001', '192.168.0.189', '2017-09-21 15:33:44', '3', '0', '1', '3', '2017-10-09 18:18:04', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('668', '1001', '192.168.0.189', '2017-09-21 15:33:45', '1', '0', '1', '1', '2017-10-09 18:18:04', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('669', '1001', '192.168.0.189', '2017-09-21 15:33:47', '4', '0', '1', '4', '2017-10-09 18:18:04', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('670', '1001', '192.168.0.189', '2017-09-21 15:33:48', '2', '0', '1', '2', '2017-10-09 18:18:04', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('671', '1001', '192.168.0.189', '2017-09-21 15:55:45', '2', '0', '1', '2', '2017-10-09 18:18:05', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('672', '1001', '192.168.0.189', '2017-09-21 15:55:46', '1', '0', '1', '1', '2017-10-09 18:18:05', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('673', '1001', '192.168.0.189', '2017-09-21 15:55:47', '3', '0', '1', '3', '2017-10-09 18:18:05', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('674', '1001', '192.168.0.189', '2017-09-21 15:55:52', '4', '0', '1', '4', '2017-10-09 18:18:05', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('675', '1001', '192.168.0.189', '2017-09-21 17:43:52', '3', '0', '1', '3', '2017-10-09 18:18:06', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('676', '1001', '192.168.0.189', '2017-09-21 17:43:53', '1', '0', '1', '1', '2017-10-09 18:18:06', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('677', '1001', '192.168.0.189', '2017-09-21 17:43:55', '2', '0', '1', '2', '2017-10-09 18:18:06', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('678', '1001', '192.168.0.189', '2017-09-21 17:43:56', '4', '0', '1', '4', '2017-10-09 18:18:06', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('679', '1001', '192.168.0.189', '2017-09-21 17:57:52', '2', '0', '1', '2', '2017-10-09 18:18:07', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('680', '1001', '192.168.0.189', '2017-09-21 17:57:53', '1', '0', '1', '1', '2017-10-09 18:18:07', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('681', '1001', '192.168.0.189', '2017-09-21 17:57:54', '3', '0', '1', '3', '2017-10-09 18:18:07', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('682', '1001', '192.168.0.189', '2017-09-21 17:57:56', '4', '0', '1', '4', '2017-10-09 18:18:07', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('683', '1001', '192.168.0.189', '2017-09-22 10:26:40', '6', '0', '1', '6', '2017-10-09 18:18:08', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('684', '1001', '192.168.0.189', '2017-09-22 10:28:41', '2', '0', '1', '2', '2017-10-09 18:18:08', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('685', '1001', '192.168.0.189', '2017-09-22 10:28:42', '1', '0', '1', '1', '2017-10-09 18:18:08', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('686', '1001', '192.168.0.189', '2017-09-22 10:28:43', '4', '0', '1', '4', '2017-10-09 18:18:08', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('687', '1001', '192.168.0.189', '2017-09-22 12:19:34', '3', '0', '1', '3', '2017-10-09 18:18:08', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('688', '1001', '192.168.0.189', '2017-09-22 12:19:35', '1', '0', '1', '1', '2017-10-09 18:18:08', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('689', '1001', '192.168.0.189', '2017-09-22 12:19:37', '6', '0', '1', '6', '2017-10-09 18:18:08', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('690', '1001', '192.168.0.189', '2017-09-22 12:19:37', '2', '0', '1', '2', '2017-10-09 18:18:08', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('691', '1001', '192.168.0.189', '2017-09-22 13:55:07', '3', '0', '1', '3', '2017-10-09 18:18:09', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('692', '1001', '192.168.0.189', '2017-09-22 13:55:09', '1', '0', '1', '1', '2017-10-09 18:18:09', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('693', '1001', '192.168.0.189', '2017-09-22 13:55:10', '2', '0', '1', '2', '2017-10-09 18:18:09', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('694', '1001', '192.168.0.189', '2017-09-22 13:55:11', '4', '0', '1', '4', '2017-10-09 18:18:09', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('695', '1001', '192.168.0.189', '2017-09-22 14:01:01', '3', '0', '1', '3', '2017-10-09 18:18:09', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('696', '1001', '192.168.0.189', '2017-09-22 14:01:02', '1', '0', '1', '1', '2017-10-09 18:18:09', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('697', '1001', '192.168.0.189', '2017-09-22 14:01:04', '4', '0', '1', '4', '2017-10-09 18:18:09', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('698', '1001', '192.168.0.189', '2017-09-22 14:01:05', '2', '0', '1', '2', '2017-10-09 18:18:10', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('699', '1001', '192.168.0.189', '2017-09-22 14:02:52', '3', '0', '1', '3', '2017-10-09 18:18:10', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('700', '1001', '192.168.0.189', '2017-09-22 14:02:54', '4', '0', '1', '4', '2017-10-09 18:18:10', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('701', '1001', '192.168.0.189', '2017-09-22 14:02:55', '1', '0', '1', '1', '2017-10-09 18:18:10', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('702', '1001', '192.168.0.189', '2017-09-22 14:02:56', '2', '0', '1', '2', '2017-10-09 18:18:10', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('703', '1001', '192.168.0.189', '2017-09-22 14:23:52', '3', '0', '1', '3', '2017-10-09 18:18:10', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('704', '1001', '192.168.0.189', '2017-09-22 14:23:53', '1', '0', '1', '1', '2017-10-09 18:18:10', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('705', '1001', '192.168.0.189', '2017-09-22 14:23:55', '2', '0', '1', '2', '2017-10-09 18:18:11', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('706', '1001', '192.168.0.233', '2017-09-22 17:26:03', 'b11', '0', '1', 'b11', '2017-10-09 18:18:12', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('707', '1001', '192.168.0.233', '2017-09-22 17:26:36', 'b14', '0', '1', 'b14', '2017-10-09 18:18:12', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('708', '1001', '192.168.0.233', '2017-09-22 17:26:36', 'b12', '0', '1', 'b12', '2017-10-09 18:18:12', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('709', '1001', '192.168.0.233', '2017-09-22 17:26:36', 'b13', '0', '1', 'b13', '2017-10-09 18:18:12', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('710', '1001', '192.168.0.189', '2017-09-22 17:27:51', '4', '0', '1', '4', '2017-10-09 18:18:12', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('711', '1001', '192.168.0.189', '2017-09-22 17:27:52', '2', '0', '1', '2', '2017-10-09 18:18:12', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('712', '1001', '192.168.0.189', '2017-09-22 17:27:53', '1', '0', '1', '1', '2017-10-09 18:18:12', '0', '1');
INSERT INTO `osa_logout_log` VALUES ('713', '1001', '192.168.0.189', '2017-09-22 17:28:59', '3', '0', '1', '3', '2017-10-09 18:18:12', '0', '1');

-- ----------------------------
-- Table structure for osa_menu_url
-- ----------------------------
DROP TABLE IF EXISTS `osa_menu_url`;
CREATE TABLE `osa_menu_url` (
  `menu_id` bigint(20) NOT NULL COMMENT '菜单id',
  `menu_name` varchar(50) NOT NULL,
  `menu_url` varchar(255) NOT NULL,
  `module_id` bigint(20) NOT NULL,
  `is_show` tinyint(4) NOT NULL COMMENT '是否在sidebar里出现',
  `online` int(11) NOT NULL DEFAULT '1' COMMENT '在线状态，还是下线状态，即可用，不可用。',
  `shortcut_allowed` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '是否允许快捷访问',
  `menu_desc` varchar(255) DEFAULT NULL,
  `father_menu` int(11) NOT NULL DEFAULT '0' COMMENT '上一级菜单',
  PRIMARY KEY (`menu_id`),
  KEY `menu_url` (`menu_url`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='功能链接（菜单链接）';

-- ----------------------------
-- Records of osa_menu_url
-- ----------------------------
INSERT INTO `osa_menu_url` VALUES ('1', '首页', '/index', '1', '0', '1', '1', '后台首页', '0');
INSERT INTO `osa_menu_url` VALUES ('2', '玩家列表', '/game_play', '1', '1', '1', '1', '玩家列表', '0');
INSERT INTO `osa_menu_url` VALUES ('3', '检索玩家', '/player_search', '1', '0', '1', '0', '检索玩家', '2');
INSERT INTO `osa_menu_url` VALUES ('4', '封禁记录', '/forbid/history', '2', '1', '1', '1', '封禁记录', '0');
INSERT INTO `osa_menu_url` VALUES ('5', '账号禁言', '/forbid/block_say', '2', '1', '1', '1', '个人信息', '0');
INSERT INTO `osa_menu_url` VALUES ('6', '账号解禁', '/forbid/disblock_say', '2', '1', '1', '0', '显示账号组详情及该组成员', '0');
INSERT INTO `osa_menu_url` VALUES ('7', 'IP禁言', '/forbid/block_ip', '2', '1', '1', '1', '增加管理员', '0');
INSERT INTO `osa_menu_url` VALUES ('8', 'IP解禁', '/forbid/disblock_ip', '2', '1', '1', '0', '修改账号组', '0');
INSERT INTO `osa_menu_url` VALUES ('9', '封账号', '/forbid/block_role', '2', '1', '1', '1', '新建账号组', '0');
INSERT INTO `osa_menu_url` VALUES ('10', '解封账号', '/forbid/disblock_role', '2', '1', '1', '1', '用户权限依赖于账号组的权限', '0');
INSERT INTO `osa_menu_url` VALUES ('11', '踢人', '/forbid/kick_role', '2', '1', '1', '1', '菜单里的模块', '0');
INSERT INTO `osa_menu_url` VALUES ('12', '广播列表', '/broadcast/list', '3', '1', '1', '0', '编辑模块', '0');
INSERT INTO `osa_menu_url` VALUES ('13', '发送广播', '/broadcast/send', '3', '1', '1', '1', '添加菜单模块', '0');
INSERT INTO `osa_menu_url` VALUES ('14', '循环广播记录', '/broadcast/loop_list', '3', '1', '1', '1', '菜单功能及可访问的链接', '0');
INSERT INTO `osa_menu_url` VALUES ('15', '公告栏记录', '/noticeboard/list', '4', '1', '1', '1', '增加功能', '0');
INSERT INTO `osa_menu_url` VALUES ('16', '公告栏添加', '/noticeboard/add_view', '4', '0', '1', '0', '修改功能', '15');
INSERT INTO `osa_menu_url` VALUES ('17', '内部充值记录', '/pay/internal_list', '5', '1', '1', '1', '内部充值记录', '0');
INSERT INTO `osa_menu_url` VALUES ('18', '内部发放', '/pay/internal_add', '5', '1', '1', '1', '内部充值', '0');
INSERT INTO `osa_menu_url` VALUES ('19', '玩家充值记录', '/pay/player_list', '5', '1', '1', '0', '玩家充值记录', '0');
INSERT INTO `osa_menu_url` VALUES ('20', '登入', '/login', '1', '0', '1', '1', '登入页面', '0');
INSERT INTO `osa_menu_url` VALUES ('21', '玩家反馈记录', '/feedback/list', '6', '1', '1', '1', '用户操作的历史行为', '0');
INSERT INTO `osa_menu_url` VALUES ('22', '删除玩家反馈记录', '/feedback/list_del', '6', '0', '1', '1', '显示系统相关信息', '21');
INSERT INTO `osa_menu_url` VALUES ('23', '金花控制', '/jh/card_look', '6', '1', '1', '0', '金花控制', '0');
INSERT INTO `osa_menu_url` VALUES ('24', '添加玩家反馈记录', '/player/feedback/add', '6', '0', '1', '1', '添加quicknote的内容', '0');
INSERT INTO `osa_menu_url` VALUES ('25', '公告图片添加', '/noticeboard/add_img', '4', '0', '1', '0', '修改quicknote的内容', '0');
INSERT INTO `osa_menu_url` VALUES ('26', '公告文本添加', '/noticeboard/add_text', '4', '0', '1', '0', '系统设置', '0');
INSERT INTO `osa_menu_url` VALUES ('27', '我的代理列表', '/proxy/my_list', '7', '1', '1', '1', '我的代理列表', '0');
INSERT INTO `osa_menu_url` VALUES ('28', '查看下一级代理', '/proxy/see_sub_proxy', '7', '0', '1', '1', '查看下一级代理', '27');
INSERT INTO `osa_menu_url` VALUES ('29', '给下级代理充值', '/proxy/recharge_sub_proxy', '7', '0', '1', '1', '给下级代理充值', '27');
INSERT INTO `osa_menu_url` VALUES ('30', '删除代理', '/proxy/proxy_del', '7', '0', '1', '1', '删除代理', '27');
INSERT INTO `osa_menu_url` VALUES ('31', '我的购卡记录(代理)', '/proxy/buy_card_list', '8', '1', '1', '1', '我的购卡记录', '0');
INSERT INTO `osa_menu_url` VALUES ('32', '我的售卡记录(全部)', '/proxy/sell_card_list', '8', '1', '1', '1', '我的售卡记录', '0');
INSERT INTO `osa_menu_url` VALUES ('33', '代理玩家线上充值记录', '/proxy/player_card_online', '8', '1', '1', '1', '代理玩家充值记录', '0');
INSERT INTO `osa_menu_url` VALUES ('34', '代理玩家线下充值记录', '/proxy/player_card_offline', '8', '1', '1', '1', '代理玩家线下充值记录', '0');
INSERT INTO `osa_menu_url` VALUES ('35', '代理玩家列表', '/proxy/player_list', '9', '1', '1', '1', '代理玩家列表', '0');
INSERT INTO `osa_menu_url` VALUES ('36', '代理玩家线下充值', '/proxy/recharge_player', '9', '0', '1', '1', '代理玩家线下充值', '35');
INSERT INTO `osa_menu_url` VALUES ('37', '代理添加', '/proxy/add', '7', '1', '1', '1', '代理添加', '0');
INSERT INTO `osa_menu_url` VALUES ('38', '结算配置', '/proxy/settlement_config_list', '10', '1', '1', '1', '结算配置', '0');
INSERT INTO `osa_menu_url` VALUES ('39', '我的结算列表', '/proxy/my_settlement_list', '10', '1', '1', '1', '我的结算列表', '0');
INSERT INTO `osa_menu_url` VALUES ('40', '修改结算配置', '/proxy/settlement_config_add', '10', '0', '1', '1', '修改结算配置', '38');
INSERT INTO `osa_menu_url` VALUES ('41', '批付申请结算列表', '/proxy/settlement_apply_list', '10', '1', '1', '1', '批付申请结算列表', '0');
INSERT INTO `osa_menu_url` VALUES ('42', '结算请求(主动)', '/proxy/settlement_request', '10', '0', '1', '1', '结算请求(主动)', '39');
INSERT INTO `osa_menu_url` VALUES ('43', '结算支付', '/proxy/settlement_pay', '10', '0', '1', '1', '结算支付', '41');
INSERT INTO `osa_menu_url` VALUES ('44', '批付申请结算列表查看', '/proxy/settlement_see', '10', '0', '1', '1', '结算查看', '41');

-- ----------------------------
-- Table structure for osa_module
-- ----------------------------
DROP TABLE IF EXISTS `osa_module`;
CREATE TABLE `osa_module` (
  `module_id` bigint(20) NOT NULL,
  `module_name` varchar(50) NOT NULL,
  `module_url` varchar(128) NOT NULL,
  `module_sort` int(11) unsigned NOT NULL DEFAULT '1',
  `module_desc` varchar(255) DEFAULT NULL,
  `module_icon` varchar(32) DEFAULT 'icon-th' COMMENT '菜单模块图标',
  `online` int(11) NOT NULL DEFAULT '1' COMMENT '模块是否在线',
  PRIMARY KEY (`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单模块';

-- ----------------------------
-- Records of osa_module
-- ----------------------------
INSERT INTO `osa_module` VALUES ('1', '玩家管理', '/index', '0', '配置OSAdmin的相关功能', 'icon-th', '1');
INSERT INTO `osa_module` VALUES ('2', '封禁管理', '/index', '1', '封禁管理', 'icon-leaf', '1');
INSERT INTO `osa_module` VALUES ('3', '广播管理', '/index', '2', '广播消息管理', 'icon-th', '1');
INSERT INTO `osa_module` VALUES ('4', '公告栏管理', '/index', '3', '公告栏管理', 'icon-th', '1');
INSERT INTO `osa_module` VALUES ('5', '充值管理', '/index', '4', '内部充值和玩家真实充值', 'icon-th', '1');
INSERT INTO `osa_module` VALUES ('6', '游戏管理', '/index', '5', '游戏管理', 'icon-th', '1');
INSERT INTO `osa_module` VALUES ('7', '代理管理', '/index', '6', '代理管理', 'icon-th', '1');
INSERT INTO `osa_module` VALUES ('8', '代理充值管理', '/index', '7', '代理充值管理', 'icon-th', '1');
INSERT INTO `osa_module` VALUES ('9', '代理玩家管理', '/index', '8', '代理玩家管理', 'icon-th', '1');
INSERT INTO `osa_module` VALUES ('10', '代理结算管理', '/index', '9', '代理结算管理', 'icon-th', '1');

-- ----------------------------
-- Table structure for osa_online_log
-- ----------------------------
DROP TABLE IF EXISTS `osa_online_log`;
CREATE TABLE `osa_online_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `world_id` varchar(20) DEFAULT NULL,
  `online_num` int(11) DEFAULT '0',
  `addtime` varchar(20) DEFAULT NULL,
  `app_id` varchar(50) DEFAULT NULL COMMENT '应用id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1855 DEFAULT CHARSET=utf8 COMMENT='上报实时在线人数   周期5秒\r\n\r\n当前时间  传输是 unix 时间   存储格式是日期格式';

-- ----------------------------
-- Records of osa_online_log
-- ----------------------------
INSERT INTO `osa_online_log` VALUES ('1', '1001', '0', '2017-06-29 10:09:01', null);
INSERT INTO `osa_online_log` VALUES ('2', '1001', '0', '2017-06-29 10:11:01', null);
INSERT INTO `osa_online_log` VALUES ('3', '1001', '0', '2017-06-29 10:13:01', null);
INSERT INTO `osa_online_log` VALUES ('4', '1001', '0', '2017-06-29 10:14:01', null);
INSERT INTO `osa_online_log` VALUES ('5', '1001', '0', '2017-06-29 10:15:01', null);
INSERT INTO `osa_online_log` VALUES ('6', '1001', '0', '2017-06-29 10:16:01', null);
INSERT INTO `osa_online_log` VALUES ('7', '1001', '0', '2017-06-29 10:17:01', null);
INSERT INTO `osa_online_log` VALUES ('8', '1001', '0', '2017-06-29 10:18:01', null);
INSERT INTO `osa_online_log` VALUES ('9', '1001', '0', '2017-06-29 10:19:01', null);
INSERT INTO `osa_online_log` VALUES ('10', '1001', '0', '2017-06-29 10:20:01', null);
INSERT INTO `osa_online_log` VALUES ('11', '1001', '0', '2017-06-29 10:21:01', null);
INSERT INTO `osa_online_log` VALUES ('12', '1001', '0', '2017-06-29 10:22:01', null);
INSERT INTO `osa_online_log` VALUES ('13', '1001', '0', '2017-06-29 10:23:01', null);
INSERT INTO `osa_online_log` VALUES ('14', '1001', '0', '2017-06-29 10:24:01', null);
INSERT INTO `osa_online_log` VALUES ('15', '1001', '0', '2017-06-29 10:25:01', null);
INSERT INTO `osa_online_log` VALUES ('16', '1001', '0', '2017-06-29 10:26:01', null);
INSERT INTO `osa_online_log` VALUES ('17', '1001', '0', '2017-06-29 10:27:01', null);
INSERT INTO `osa_online_log` VALUES ('18', '1001', '0', '2017-06-29 10:28:01', null);
INSERT INTO `osa_online_log` VALUES ('19', '1001', '0', '2017-06-29 10:29:01', null);
INSERT INTO `osa_online_log` VALUES ('20', '1001', '0', '2017-06-29 10:30:01', null);
INSERT INTO `osa_online_log` VALUES ('21', '1001', '0', '2017-06-29 10:31:01', null);
INSERT INTO `osa_online_log` VALUES ('22', '1001', '0', '2017-06-29 10:32:01', null);
INSERT INTO `osa_online_log` VALUES ('23', '1001', '0', '2017-06-29 10:34:01', null);
INSERT INTO `osa_online_log` VALUES ('24', '1001', '0', '2017-06-29 10:36:01', null);
INSERT INTO `osa_online_log` VALUES ('25', '1001', '0', '2017-06-29 10:37:01', null);
INSERT INTO `osa_online_log` VALUES ('26', '1001', '0', '2017-06-29 10:38:01', null);
INSERT INTO `osa_online_log` VALUES ('27', '1001', '0', '2017-06-29 10:41:01', null);
INSERT INTO `osa_online_log` VALUES ('28', '1001', '0', '2017-06-29 10:42:01', null);
INSERT INTO `osa_online_log` VALUES ('29', '1001', '0', '2017-06-29 10:44:01', null);
INSERT INTO `osa_online_log` VALUES ('30', '1001', '0', '2017-06-29 10:45:01', null);
INSERT INTO `osa_online_log` VALUES ('31', '1001', '0', '2017-06-29 10:46:01', null);
INSERT INTO `osa_online_log` VALUES ('32', '1001', '0', '2017-06-29 10:47:01', null);
INSERT INTO `osa_online_log` VALUES ('33', '1001', '1', '2017-06-29 10:48:01', null);
INSERT INTO `osa_online_log` VALUES ('34', '1001', '1', '2017-06-29 10:50:01', null);
INSERT INTO `osa_online_log` VALUES ('35', '1001', '2', '2017-06-29 10:51:01', null);
INSERT INTO `osa_online_log` VALUES ('36', '1001', '2', '2017-06-29 10:52:01', null);
INSERT INTO `osa_online_log` VALUES ('37', '1001', '2', '2017-06-29 10:53:01', null);
INSERT INTO `osa_online_log` VALUES ('38', '1001', '2', '2017-06-29 10:54:16', null);
INSERT INTO `osa_online_log` VALUES ('39', '1001', '2', '2017-06-29 10:55:01', null);
INSERT INTO `osa_online_log` VALUES ('40', '1001', '2', '2017-06-29 10:56:26', null);
INSERT INTO `osa_online_log` VALUES ('41', '1001', '2', '2017-06-29 10:57:01', null);
INSERT INTO `osa_online_log` VALUES ('42', '1001', '2', '2017-06-29 10:58:01', null);
INSERT INTO `osa_online_log` VALUES ('43', '1001', '2', '2017-06-29 10:59:01', null);
INSERT INTO `osa_online_log` VALUES ('44', '1001', '2', '2017-06-29 11:00:01', null);
INSERT INTO `osa_online_log` VALUES ('45', '1001', '3', '2017-06-29 11:01:01', null);
INSERT INTO `osa_online_log` VALUES ('46', '1001', '3', '2017-06-29 11:02:01', null);
INSERT INTO `osa_online_log` VALUES ('47', '1001', '3', '2017-06-29 11:03:01', null);
INSERT INTO `osa_online_log` VALUES ('48', '1001', '3', '2017-06-29 11:04:01', null);
INSERT INTO `osa_online_log` VALUES ('49', '1001', '3', '2017-06-29 11:05:01', null);
INSERT INTO `osa_online_log` VALUES ('50', '1001', '4', '2017-06-29 11:06:01', null);
INSERT INTO `osa_online_log` VALUES ('51', '1001', '4', '2017-06-29 11:07:01', null);
INSERT INTO `osa_online_log` VALUES ('52', '1001', '4', '2017-06-29 11:08:01', null);
INSERT INTO `osa_online_log` VALUES ('53', '1001', '4', '2017-06-29 11:09:01', null);
INSERT INTO `osa_online_log` VALUES ('54', '1001', '4', '2017-06-29 11:10:01', null);
INSERT INTO `osa_online_log` VALUES ('55', '1001', '4', '2017-06-29 11:11:01', null);
INSERT INTO `osa_online_log` VALUES ('56', '1001', '4', '2017-06-29 11:12:01', null);
INSERT INTO `osa_online_log` VALUES ('57', '1001', '4', '2017-06-29 11:13:01', null);
INSERT INTO `osa_online_log` VALUES ('58', '1001', '4', '2017-06-29 11:14:01', null);
INSERT INTO `osa_online_log` VALUES ('59', '1001', '4', '2017-06-29 11:15:01', null);
INSERT INTO `osa_online_log` VALUES ('60', '1001', '4', '2017-06-29 11:16:01', null);
INSERT INTO `osa_online_log` VALUES ('61', '1001', '4', '2017-06-29 11:17:01', null);
INSERT INTO `osa_online_log` VALUES ('62', '1001', '4', '2017-06-29 11:18:01', null);
INSERT INTO `osa_online_log` VALUES ('63', '1001', '4', '2017-06-29 11:19:01', null);
INSERT INTO `osa_online_log` VALUES ('64', '1001', '4', '2017-06-29 11:20:01', null);
INSERT INTO `osa_online_log` VALUES ('65', '1001', '4', '2017-06-29 11:21:01', null);
INSERT INTO `osa_online_log` VALUES ('66', '1001', '4', '2017-06-29 11:22:01', null);
INSERT INTO `osa_online_log` VALUES ('67', '1001', '4', '2017-06-29 11:23:01', null);
INSERT INTO `osa_online_log` VALUES ('68', '1001', '0', '2017-06-29 11:24:01', null);
INSERT INTO `osa_online_log` VALUES ('69', '1001', '0', '2017-06-29 11:25:01', null);
INSERT INTO `osa_online_log` VALUES ('70', '1001', '1', '2017-06-29 11:26:01', null);
INSERT INTO `osa_online_log` VALUES ('71', '1001', '1', '2017-06-29 11:27:01', null);
INSERT INTO `osa_online_log` VALUES ('72', '1001', '1', '2017-06-29 11:28:01', null);
INSERT INTO `osa_online_log` VALUES ('73', '1001', '1', '2017-06-29 11:29:01', null);
INSERT INTO `osa_online_log` VALUES ('74', '1001', '1', '2017-06-29 11:30:01', null);
INSERT INTO `osa_online_log` VALUES ('75', '1001', '1', '2017-06-29 11:31:01', null);
INSERT INTO `osa_online_log` VALUES ('76', '1001', '1', '2017-06-29 11:32:01', null);
INSERT INTO `osa_online_log` VALUES ('77', '1001', '1', '2017-06-29 11:33:01', null);
INSERT INTO `osa_online_log` VALUES ('78', '1001', '1', '2017-06-29 11:34:01', null);
INSERT INTO `osa_online_log` VALUES ('79', '1001', '1', '2017-06-29 11:35:01', null);
INSERT INTO `osa_online_log` VALUES ('80', '1001', '1', '2017-06-29 11:36:01', null);
INSERT INTO `osa_online_log` VALUES ('81', '1001', '0', '2017-06-29 11:38:01', null);
INSERT INTO `osa_online_log` VALUES ('82', '1001', '0', '2017-06-29 11:39:01', null);
INSERT INTO `osa_online_log` VALUES ('83', '1001', '0', '2017-06-29 11:40:01', null);
INSERT INTO `osa_online_log` VALUES ('84', '1001', '0', '2017-06-29 11:41:01', null);
INSERT INTO `osa_online_log` VALUES ('85', '1001', '0', '2017-06-29 11:42:01', null);
INSERT INTO `osa_online_log` VALUES ('86', '1001', '0', '2017-06-29 11:43:01', null);
INSERT INTO `osa_online_log` VALUES ('87', '1001', '0', '2017-06-29 11:44:01', null);
INSERT INTO `osa_online_log` VALUES ('88', '1001', '0', '2017-06-29 11:45:01', null);
INSERT INTO `osa_online_log` VALUES ('89', '1001', '0', '2017-06-29 11:46:01', null);
INSERT INTO `osa_online_log` VALUES ('90', '1001', '0', '2017-06-29 11:47:01', null);
INSERT INTO `osa_online_log` VALUES ('91', '1001', '0', '2017-06-29 11:48:01', null);
INSERT INTO `osa_online_log` VALUES ('92', '1001', '0', '2017-06-29 11:49:01', null);
INSERT INTO `osa_online_log` VALUES ('93', '1001', '0', '2017-06-29 11:50:01', null);
INSERT INTO `osa_online_log` VALUES ('94', '1001', '0', '2017-06-29 11:51:01', null);
INSERT INTO `osa_online_log` VALUES ('95', '1001', '0', '2017-06-29 11:52:01', null);
INSERT INTO `osa_online_log` VALUES ('96', '1001', '0', '2017-06-29 11:54:03', null);
INSERT INTO `osa_online_log` VALUES ('97', '1001', '0', '2017-06-29 11:55:01', null);
INSERT INTO `osa_online_log` VALUES ('98', '1001', '0', '2017-06-29 11:56:01', null);
INSERT INTO `osa_online_log` VALUES ('99', '1001', '0', '2017-06-29 12:01:01', null);
INSERT INTO `osa_online_log` VALUES ('100', '1001', '0', '2017-06-29 12:05:01', null);
INSERT INTO `osa_online_log` VALUES ('101', '1001', '0', '2017-06-29 12:06:01', null);
INSERT INTO `osa_online_log` VALUES ('102', '1001', '0', '2017-06-29 12:07:01', null);
INSERT INTO `osa_online_log` VALUES ('103', '1001', '0', '2017-06-29 12:08:01', null);
INSERT INTO `osa_online_log` VALUES ('104', '1001', '0', '2017-06-29 12:09:01', null);
INSERT INTO `osa_online_log` VALUES ('105', '1001', '0', '2017-06-29 12:10:01', null);
INSERT INTO `osa_online_log` VALUES ('106', '1001', '0', '2017-06-29 12:11:01', null);
INSERT INTO `osa_online_log` VALUES ('107', '1001', '0', '2017-06-29 12:12:01', null);
INSERT INTO `osa_online_log` VALUES ('108', '1001', '0', '2017-06-29 12:13:01', null);
INSERT INTO `osa_online_log` VALUES ('109', '1001', '0', '2017-06-29 12:14:01', null);
INSERT INTO `osa_online_log` VALUES ('110', '1001', '0', '2017-06-29 12:15:01', null);
INSERT INTO `osa_online_log` VALUES ('111', '1001', '0', '2017-06-29 12:16:01', null);
INSERT INTO `osa_online_log` VALUES ('112', '1001', '0', '2017-06-29 12:17:01', null);
INSERT INTO `osa_online_log` VALUES ('113', '1001', '0', '2017-06-29 12:18:01', null);
INSERT INTO `osa_online_log` VALUES ('114', '1001', '0', '2017-06-29 12:19:01', null);
INSERT INTO `osa_online_log` VALUES ('115', '1001', '0', '2017-06-29 12:20:01', null);
INSERT INTO `osa_online_log` VALUES ('116', '1001', '0', '2017-06-29 12:21:01', null);
INSERT INTO `osa_online_log` VALUES ('117', '1001', '0', '2017-06-29 12:22:01', null);
INSERT INTO `osa_online_log` VALUES ('118', '1001', '0', '2017-06-29 12:23:01', null);
INSERT INTO `osa_online_log` VALUES ('119', '1001', '0', '2017-06-29 12:24:01', null);
INSERT INTO `osa_online_log` VALUES ('120', '1001', '0', '2017-06-29 12:25:01', null);
INSERT INTO `osa_online_log` VALUES ('121', '1001', '0', '2017-06-29 12:26:01', null);
INSERT INTO `osa_online_log` VALUES ('122', '1001', '0', '2017-06-29 12:27:01', null);
INSERT INTO `osa_online_log` VALUES ('123', '1001', '0', '2017-06-29 12:28:01', null);
INSERT INTO `osa_online_log` VALUES ('124', '1001', '0', '2017-06-29 12:29:01', null);
INSERT INTO `osa_online_log` VALUES ('125', '1001', '0', '2017-06-29 12:30:01', null);
INSERT INTO `osa_online_log` VALUES ('126', '1001', '0', '2017-06-29 12:31:01', null);
INSERT INTO `osa_online_log` VALUES ('127', '1001', '0', '2017-06-29 12:32:01', null);
INSERT INTO `osa_online_log` VALUES ('128', '1001', '0', '2017-06-29 12:33:01', null);
INSERT INTO `osa_online_log` VALUES ('129', '1001', '0', '2017-06-29 12:34:01', null);
INSERT INTO `osa_online_log` VALUES ('130', '1001', '0', '2017-06-29 12:35:01', null);
INSERT INTO `osa_online_log` VALUES ('131', '1001', '0', '2017-06-29 12:36:01', null);
INSERT INTO `osa_online_log` VALUES ('132', '1001', '0', '2017-06-29 12:37:01', null);
INSERT INTO `osa_online_log` VALUES ('133', '1001', '0', '2017-06-29 12:38:01', null);
INSERT INTO `osa_online_log` VALUES ('134', '1001', '0', '2017-06-29 12:39:01', null);
INSERT INTO `osa_online_log` VALUES ('135', '1001', '0', '2017-06-29 12:40:01', null);
INSERT INTO `osa_online_log` VALUES ('136', '1001', '0', '2017-06-29 12:41:01', null);
INSERT INTO `osa_online_log` VALUES ('137', '1001', '0', '2017-06-29 12:42:01', null);
INSERT INTO `osa_online_log` VALUES ('138', '1001', '0', '2017-06-29 12:43:01', null);
INSERT INTO `osa_online_log` VALUES ('139', '1001', '0', '2017-06-29 12:44:01', null);
INSERT INTO `osa_online_log` VALUES ('140', '1001', '0', '2017-06-29 12:45:01', null);
INSERT INTO `osa_online_log` VALUES ('141', '1001', '0', '2017-06-29 12:46:01', null);
INSERT INTO `osa_online_log` VALUES ('142', '1001', '0', '2017-06-29 12:47:01', null);
INSERT INTO `osa_online_log` VALUES ('143', '1001', '0', '2017-06-29 12:48:01', null);
INSERT INTO `osa_online_log` VALUES ('144', '1001', '0', '2017-06-29 12:49:01', null);
INSERT INTO `osa_online_log` VALUES ('145', '1001', '0', '2017-06-29 12:50:01', null);
INSERT INTO `osa_online_log` VALUES ('146', '1001', '0', '2017-06-29 12:51:01', null);
INSERT INTO `osa_online_log` VALUES ('147', '1001', '0', '2017-06-29 12:52:01', null);
INSERT INTO `osa_online_log` VALUES ('148', '1001', '0', '2017-06-29 12:53:01', null);
INSERT INTO `osa_online_log` VALUES ('149', '1001', '0', '2017-06-29 12:54:01', null);
INSERT INTO `osa_online_log` VALUES ('150', '1001', '0', '2017-06-29 12:57:01', null);
INSERT INTO `osa_online_log` VALUES ('151', '1001', '0', '2017-06-29 12:58:01', null);
INSERT INTO `osa_online_log` VALUES ('152', '1001', '0', '2017-06-29 12:59:01', null);
INSERT INTO `osa_online_log` VALUES ('153', '1001', '0', '2017-06-29 13:00:01', null);
INSERT INTO `osa_online_log` VALUES ('154', '1001', '0', '2017-06-29 13:01:01', null);
INSERT INTO `osa_online_log` VALUES ('155', '1001', '0', '2017-06-29 13:02:01', null);
INSERT INTO `osa_online_log` VALUES ('156', '1001', '0', '2017-06-29 13:03:01', null);
INSERT INTO `osa_online_log` VALUES ('157', '1001', '0', '2017-06-29 13:07:01', null);
INSERT INTO `osa_online_log` VALUES ('158', '1001', '0', '2017-06-29 13:18:01', null);
INSERT INTO `osa_online_log` VALUES ('159', '1001', '0', '2017-06-29 13:19:01', null);
INSERT INTO `osa_online_log` VALUES ('160', '1001', '0', '2017-06-29 13:20:01', null);
INSERT INTO `osa_online_log` VALUES ('161', '1001', '0', '2017-06-29 13:21:01', null);
INSERT INTO `osa_online_log` VALUES ('162', '1001', '0', '2017-06-29 13:22:01', null);
INSERT INTO `osa_online_log` VALUES ('163', '1001', '0', '2017-06-29 13:23:01', null);
INSERT INTO `osa_online_log` VALUES ('164', '1001', '0', '2017-06-29 13:24:01', null);
INSERT INTO `osa_online_log` VALUES ('165', '1001', '0', '2017-06-29 13:25:01', null);
INSERT INTO `osa_online_log` VALUES ('166', '1001', '0', '2017-06-29 13:26:01', null);
INSERT INTO `osa_online_log` VALUES ('167', '1001', '0', '2017-06-29 13:27:01', null);
INSERT INTO `osa_online_log` VALUES ('168', '1001', '0', '2017-06-29 13:28:01', null);
INSERT INTO `osa_online_log` VALUES ('169', '1001', '0', '2017-06-29 13:29:01', null);
INSERT INTO `osa_online_log` VALUES ('170', '1001', '0', '2017-06-29 13:30:01', null);
INSERT INTO `osa_online_log` VALUES ('171', '1001', '0', '2017-06-29 13:31:01', null);
INSERT INTO `osa_online_log` VALUES ('172', '1001', '0', '2017-06-29 13:32:01', null);
INSERT INTO `osa_online_log` VALUES ('173', '1001', '0', '2017-06-29 13:33:01', null);
INSERT INTO `osa_online_log` VALUES ('174', '1001', '0', '2017-06-29 13:34:01', null);
INSERT INTO `osa_online_log` VALUES ('175', '1001', '0', '2017-06-29 13:35:01', null);
INSERT INTO `osa_online_log` VALUES ('176', '1001', '0', '2017-06-29 13:36:01', null);
INSERT INTO `osa_online_log` VALUES ('177', '1001', '0', '2017-06-29 13:37:01', null);
INSERT INTO `osa_online_log` VALUES ('178', '1001', '0', '2017-06-29 13:38:01', null);
INSERT INTO `osa_online_log` VALUES ('179', '1001', '0', '2017-06-29 13:39:01', null);
INSERT INTO `osa_online_log` VALUES ('180', '1001', '0', '2017-06-29 13:40:01', null);
INSERT INTO `osa_online_log` VALUES ('181', '1001', '0', '2017-06-29 13:41:01', null);
INSERT INTO `osa_online_log` VALUES ('182', '1001', '0', '2017-06-29 13:42:01', null);
INSERT INTO `osa_online_log` VALUES ('183', '1001', '0', '2017-06-29 13:43:01', null);
INSERT INTO `osa_online_log` VALUES ('184', '1001', '0', '2017-06-29 13:44:01', null);
INSERT INTO `osa_online_log` VALUES ('185', '1001', '0', '2017-06-29 13:45:01', null);
INSERT INTO `osa_online_log` VALUES ('186', '1001', '0', '2017-06-29 13:46:01', null);
INSERT INTO `osa_online_log` VALUES ('187', '1001', '0', '2017-06-29 13:47:01', null);
INSERT INTO `osa_online_log` VALUES ('188', '1001', '0', '2017-06-29 13:48:01', null);
INSERT INTO `osa_online_log` VALUES ('189', '1001', '0', '2017-06-29 13:53:01', null);
INSERT INTO `osa_online_log` VALUES ('190', '1001', '0', '2017-06-29 14:08:01', null);
INSERT INTO `osa_online_log` VALUES ('191', '1001', '0', '2017-06-29 14:09:01', null);
INSERT INTO `osa_online_log` VALUES ('192', '1001', '0', '2017-06-29 14:20:02', null);
INSERT INTO `osa_online_log` VALUES ('193', '1001', '0', '2017-06-29 14:21:01', null);
INSERT INTO `osa_online_log` VALUES ('194', '1001', '0', '2017-06-29 14:22:01', null);
INSERT INTO `osa_online_log` VALUES ('195', '1001', '0', '2017-06-29 14:23:01', null);
INSERT INTO `osa_online_log` VALUES ('196', '1001', '0', '2017-06-29 14:24:01', null);
INSERT INTO `osa_online_log` VALUES ('197', '1001', '0', '2017-06-29 14:25:01', null);
INSERT INTO `osa_online_log` VALUES ('198', '1001', '0', '2017-06-29 14:26:01', null);
INSERT INTO `osa_online_log` VALUES ('199', '1001', '0', '2017-06-29 14:27:01', null);
INSERT INTO `osa_online_log` VALUES ('200', '1001', '0', '2017-06-29 14:28:01', null);
INSERT INTO `osa_online_log` VALUES ('201', '1001', '0', '2017-06-29 14:29:01', null);
INSERT INTO `osa_online_log` VALUES ('202', '1001', '0', '2017-06-29 14:30:01', null);
INSERT INTO `osa_online_log` VALUES ('203', '1001', '0', '2017-06-29 14:31:01', null);
INSERT INTO `osa_online_log` VALUES ('204', '1001', '0', '2017-06-29 14:32:01', null);
INSERT INTO `osa_online_log` VALUES ('205', '1001', '0', '2017-06-29 14:33:01', null);
INSERT INTO `osa_online_log` VALUES ('206', '1001', '0', '2017-06-29 14:34:01', null);
INSERT INTO `osa_online_log` VALUES ('207', '1001', '0', '2017-06-29 14:35:01', null);
INSERT INTO `osa_online_log` VALUES ('208', '1001', '0', '2017-06-29 14:36:01', null);
INSERT INTO `osa_online_log` VALUES ('209', '1001', '1', '2017-06-29 14:37:01', null);
INSERT INTO `osa_online_log` VALUES ('210', '1001', '1', '2017-06-29 14:38:01', null);
INSERT INTO `osa_online_log` VALUES ('211', '1001', '1', '2017-06-29 14:39:01', null);
INSERT INTO `osa_online_log` VALUES ('212', '1001', '0', '2017-06-29 14:40:01', null);
INSERT INTO `osa_online_log` VALUES ('213', '1001', '0', '2017-06-29 14:41:01', null);
INSERT INTO `osa_online_log` VALUES ('214', '1001', '0', '2017-06-29 14:42:01', null);
INSERT INTO `osa_online_log` VALUES ('215', '1001', '0', '2017-06-29 14:45:01', null);
INSERT INTO `osa_online_log` VALUES ('216', '1001', '0', '2017-06-29 14:46:01', null);
INSERT INTO `osa_online_log` VALUES ('217', '1001', '1', '2017-06-29 14:47:01', null);
INSERT INTO `osa_online_log` VALUES ('218', '1001', '1', '2017-06-29 14:48:01', null);
INSERT INTO `osa_online_log` VALUES ('219', '1001', '1', '2017-06-29 14:49:01', null);
INSERT INTO `osa_online_log` VALUES ('220', '1001', '1', '2017-06-29 14:50:01', null);
INSERT INTO `osa_online_log` VALUES ('221', '1001', '1', '2017-06-29 14:51:01', null);
INSERT INTO `osa_online_log` VALUES ('222', '1001', '1', '2017-06-29 14:52:01', null);
INSERT INTO `osa_online_log` VALUES ('223', '1001', '0', '2017-06-29 14:53:01', null);
INSERT INTO `osa_online_log` VALUES ('224', '1001', '1', '2017-06-29 14:54:10', null);
INSERT INTO `osa_online_log` VALUES ('225', '1001', '0', '2017-06-29 14:55:01', null);
INSERT INTO `osa_online_log` VALUES ('226', '1001', '0', '2017-06-29 14:56:01', null);
INSERT INTO `osa_online_log` VALUES ('227', '1001', '0', '2017-06-29 14:57:01', null);
INSERT INTO `osa_online_log` VALUES ('228', '1001', '0', '2017-06-29 14:58:01', null);
INSERT INTO `osa_online_log` VALUES ('229', '1001', '0', '2017-06-29 14:59:01', null);
INSERT INTO `osa_online_log` VALUES ('230', '1001', '0', '2017-06-29 15:00:01', null);
INSERT INTO `osa_online_log` VALUES ('231', '1001', '0', '2017-06-29 15:01:01', null);
INSERT INTO `osa_online_log` VALUES ('232', '1001', '0', '2017-06-29 15:02:01', null);
INSERT INTO `osa_online_log` VALUES ('233', '1001', '0', '2017-06-29 15:03:01', null);
INSERT INTO `osa_online_log` VALUES ('234', '1001', '0', '2017-06-29 15:04:01', null);
INSERT INTO `osa_online_log` VALUES ('235', '1001', '0', '2017-06-29 15:05:01', null);
INSERT INTO `osa_online_log` VALUES ('236', '1001', '0', '2017-06-29 15:06:01', null);
INSERT INTO `osa_online_log` VALUES ('237', '1001', '0', '2017-06-29 15:07:01', null);
INSERT INTO `osa_online_log` VALUES ('238', '1001', '1', '2017-06-29 15:24:01', null);
INSERT INTO `osa_online_log` VALUES ('239', '1001', '1', '2017-06-29 15:25:01', null);
INSERT INTO `osa_online_log` VALUES ('240', '1001', '0', '2017-06-29 15:26:01', null);
INSERT INTO `osa_online_log` VALUES ('241', '1001', '0', '2017-06-29 15:27:01', null);
INSERT INTO `osa_online_log` VALUES ('242', '1001', '0', '2017-06-29 15:28:01', null);
INSERT INTO `osa_online_log` VALUES ('243', '1001', '0', '2017-06-29 15:32:02', null);
INSERT INTO `osa_online_log` VALUES ('244', '1001', '0', '2017-06-29 15:33:01', null);
INSERT INTO `osa_online_log` VALUES ('245', '1001', '0', '2017-06-29 15:34:01', null);
INSERT INTO `osa_online_log` VALUES ('246', '1001', '0', '2017-06-29 15:35:01', null);
INSERT INTO `osa_online_log` VALUES ('247', '1001', '0', '2017-06-29 15:36:01', null);
INSERT INTO `osa_online_log` VALUES ('248', '1001', '0', '2017-06-29 15:37:01', null);
INSERT INTO `osa_online_log` VALUES ('249', '1001', '0', '2017-06-29 15:38:01', null);
INSERT INTO `osa_online_log` VALUES ('250', '1001', '0', '2017-06-29 15:39:01', null);
INSERT INTO `osa_online_log` VALUES ('251', '1001', '0', '2017-06-29 15:40:01', null);
INSERT INTO `osa_online_log` VALUES ('252', '1001', '0', '2017-06-29 15:41:01', null);
INSERT INTO `osa_online_log` VALUES ('253', '1001', '0', '2017-06-29 15:42:01', null);
INSERT INTO `osa_online_log` VALUES ('254', '1001', '0', '2017-06-29 15:43:01', null);
INSERT INTO `osa_online_log` VALUES ('255', '1001', '0', '2017-06-29 15:44:01', null);
INSERT INTO `osa_online_log` VALUES ('256', '1001', '0', '2017-06-29 15:45:01', null);
INSERT INTO `osa_online_log` VALUES ('257', '1001', '0', '2017-06-29 15:46:01', null);
INSERT INTO `osa_online_log` VALUES ('258', '1001', '0', '2017-06-29 15:47:01', null);
INSERT INTO `osa_online_log` VALUES ('259', '1001', '0', '2017-06-29 15:48:01', null);
INSERT INTO `osa_online_log` VALUES ('260', '1001', '0', '2017-06-29 15:49:01', null);
INSERT INTO `osa_online_log` VALUES ('261', '1001', '0', '2017-06-29 15:50:01', null);
INSERT INTO `osa_online_log` VALUES ('262', '1001', '0', '2017-06-29 15:51:01', null);
INSERT INTO `osa_online_log` VALUES ('263', '1001', '0', '2017-06-29 15:52:01', null);
INSERT INTO `osa_online_log` VALUES ('264', '1001', '0', '2017-06-29 15:53:01', null);
INSERT INTO `osa_online_log` VALUES ('265', '1001', '0', '2017-06-29 15:54:01', null);
INSERT INTO `osa_online_log` VALUES ('266', '1001', '0', '2017-06-29 15:55:01', null);
INSERT INTO `osa_online_log` VALUES ('267', '1001', '0', '2017-06-29 15:56:01', null);
INSERT INTO `osa_online_log` VALUES ('268', '1001', '0', '2017-06-29 15:57:01', null);
INSERT INTO `osa_online_log` VALUES ('269', '1001', '0', '2017-06-29 15:58:01', null);
INSERT INTO `osa_online_log` VALUES ('270', '1001', '0', '2017-06-29 15:59:01', null);
INSERT INTO `osa_online_log` VALUES ('271', '1001', '0', '2017-06-29 16:43:02', null);
INSERT INTO `osa_online_log` VALUES ('272', '1001', '0', '2017-06-29 16:44:01', null);
INSERT INTO `osa_online_log` VALUES ('273', '1001', '0', '2017-06-29 16:45:01', null);
INSERT INTO `osa_online_log` VALUES ('274', '1001', '0', '2017-06-29 16:46:01', null);
INSERT INTO `osa_online_log` VALUES ('275', '1001', '0', '2017-06-29 16:47:01', null);
INSERT INTO `osa_online_log` VALUES ('276', '1001', '0', '2017-06-29 16:50:01', null);
INSERT INTO `osa_online_log` VALUES ('277', '1001', '0', '2017-06-29 16:51:01', null);
INSERT INTO `osa_online_log` VALUES ('278', '1001', '0', '2017-06-29 16:52:01', null);
INSERT INTO `osa_online_log` VALUES ('279', '1001', '0', '2017-06-29 16:53:01', null);
INSERT INTO `osa_online_log` VALUES ('280', '1001', '0', '2017-06-29 16:54:01', null);
INSERT INTO `osa_online_log` VALUES ('281', '1001', '0', '2017-06-29 16:55:01', null);
INSERT INTO `osa_online_log` VALUES ('282', '1001', '0', '2017-06-29 16:56:01', null);
INSERT INTO `osa_online_log` VALUES ('283', '1001', '0', '2017-06-29 16:57:01', null);
INSERT INTO `osa_online_log` VALUES ('284', '1001', '0', '2017-06-29 16:58:01', null);
INSERT INTO `osa_online_log` VALUES ('285', '1001', '0', '2017-06-29 16:59:01', null);
INSERT INTO `osa_online_log` VALUES ('286', '1001', '0', '2017-06-29 17:00:01', null);
INSERT INTO `osa_online_log` VALUES ('287', '1001', '0', '2017-06-29 17:01:01', null);
INSERT INTO `osa_online_log` VALUES ('288', '1001', '0', '2017-06-29 17:02:01', null);
INSERT INTO `osa_online_log` VALUES ('289', '1001', '0', '2017-06-29 17:03:01', null);
INSERT INTO `osa_online_log` VALUES ('290', '1001', '0', '2017-06-29 17:04:01', null);
INSERT INTO `osa_online_log` VALUES ('291', '1001', '0', '2017-06-29 17:05:01', null);
INSERT INTO `osa_online_log` VALUES ('292', '1001', '0', '2017-06-29 17:06:01', null);
INSERT INTO `osa_online_log` VALUES ('293', '1001', '0', '2017-06-29 17:07:01', null);
INSERT INTO `osa_online_log` VALUES ('294', '1001', '0', '2017-06-29 17:08:01', null);
INSERT INTO `osa_online_log` VALUES ('295', '1001', '0', '2017-06-29 17:09:01', null);
INSERT INTO `osa_online_log` VALUES ('296', '1001', '0', '2017-06-29 17:10:01', null);
INSERT INTO `osa_online_log` VALUES ('297', '1001', '0', '2017-06-29 17:11:01', null);
INSERT INTO `osa_online_log` VALUES ('298', '1001', '0', '2017-06-29 17:12:01', null);
INSERT INTO `osa_online_log` VALUES ('299', '1001', '0', '2017-06-29 17:13:01', null);
INSERT INTO `osa_online_log` VALUES ('300', '1001', '0', '2017-06-29 17:14:01', null);
INSERT INTO `osa_online_log` VALUES ('301', '1001', '0', '2017-06-29 17:15:01', null);
INSERT INTO `osa_online_log` VALUES ('302', '1001', '0', '2017-06-29 17:16:01', null);
INSERT INTO `osa_online_log` VALUES ('303', '1001', '0', '2017-06-29 17:17:01', null);
INSERT INTO `osa_online_log` VALUES ('304', '1001', '0', '2017-06-29 17:18:01', null);
INSERT INTO `osa_online_log` VALUES ('305', '1001', '0', '2017-06-29 17:19:01', null);
INSERT INTO `osa_online_log` VALUES ('306', '1001', '0', '2017-06-29 17:20:01', null);
INSERT INTO `osa_online_log` VALUES ('307', '1001', '0', '2017-06-29 17:21:01', null);
INSERT INTO `osa_online_log` VALUES ('308', '1001', '0', '2017-06-29 17:22:01', null);
INSERT INTO `osa_online_log` VALUES ('309', '1001', '0', '2017-06-29 17:23:01', null);
INSERT INTO `osa_online_log` VALUES ('310', '1001', '0', '2017-06-29 17:24:01', null);
INSERT INTO `osa_online_log` VALUES ('311', '1001', '0', '2017-06-29 17:25:01', null);
INSERT INTO `osa_online_log` VALUES ('312', '1001', '0', '2017-06-29 17:26:01', null);
INSERT INTO `osa_online_log` VALUES ('313', '1001', '0', '2017-06-29 17:27:01', null);
INSERT INTO `osa_online_log` VALUES ('314', '1001', '0', '2017-06-29 17:28:01', null);
INSERT INTO `osa_online_log` VALUES ('315', '1001', '0', '2017-06-29 17:29:01', null);
INSERT INTO `osa_online_log` VALUES ('316', '1001', '0', '2017-06-29 17:30:01', null);
INSERT INTO `osa_online_log` VALUES ('317', '1001', '0', '2017-06-29 17:31:01', null);
INSERT INTO `osa_online_log` VALUES ('318', '1001', '0', '2017-06-29 17:32:01', null);
INSERT INTO `osa_online_log` VALUES ('319', '1001', '0', '2017-06-29 17:33:01', null);
INSERT INTO `osa_online_log` VALUES ('320', '1001', '0', '2017-06-29 17:34:01', null);
INSERT INTO `osa_online_log` VALUES ('321', '1001', '0', '2017-06-29 17:35:01', null);
INSERT INTO `osa_online_log` VALUES ('322', '1001', '0', '2017-06-29 17:36:01', null);
INSERT INTO `osa_online_log` VALUES ('323', '1001', '0', '2017-06-29 17:37:01', null);
INSERT INTO `osa_online_log` VALUES ('324', '1001', '0', '2017-06-29 17:38:01', null);
INSERT INTO `osa_online_log` VALUES ('325', '1001', '0', '2017-06-29 17:39:01', null);
INSERT INTO `osa_online_log` VALUES ('326', '1001', '0', '2017-06-29 17:41:01', null);
INSERT INTO `osa_online_log` VALUES ('327', '1001', '0', '2017-06-29 17:42:01', null);
INSERT INTO `osa_online_log` VALUES ('328', '1001', '0', '2017-06-29 17:43:01', null);
INSERT INTO `osa_online_log` VALUES ('329', '1001', '0', '2017-06-29 17:44:01', null);
INSERT INTO `osa_online_log` VALUES ('330', '1001', '0', '2017-06-29 17:48:01', null);
INSERT INTO `osa_online_log` VALUES ('331', '1001', '0', '2017-06-29 17:49:01', null);
INSERT INTO `osa_online_log` VALUES ('332', '1001', '0', '2017-06-29 17:50:01', null);
INSERT INTO `osa_online_log` VALUES ('333', '1001', '0', '2017-06-29 17:51:01', null);
INSERT INTO `osa_online_log` VALUES ('334', '1001', '0', '2017-06-29 17:52:01', null);
INSERT INTO `osa_online_log` VALUES ('335', '1001', '0', '2017-06-29 17:53:01', null);
INSERT INTO `osa_online_log` VALUES ('336', '1001', '0', '2017-06-29 17:54:01', null);
INSERT INTO `osa_online_log` VALUES ('337', '1001', '0', '2017-06-29 17:55:01', null);
INSERT INTO `osa_online_log` VALUES ('338', '1001', '0', '2017-06-29 17:56:01', null);
INSERT INTO `osa_online_log` VALUES ('339', '1001', '0', '2017-06-29 17:57:01', null);
INSERT INTO `osa_online_log` VALUES ('340', '1001', '0', '2017-06-29 17:58:01', null);
INSERT INTO `osa_online_log` VALUES ('341', '1001', '0', '2017-06-29 17:59:01', null);
INSERT INTO `osa_online_log` VALUES ('342', '1001', '0', '2017-06-29 18:00:01', null);
INSERT INTO `osa_online_log` VALUES ('343', '1001', '0', '2017-06-29 18:01:01', null);
INSERT INTO `osa_online_log` VALUES ('344', '1001', '0', '2017-06-29 18:02:01', null);
INSERT INTO `osa_online_log` VALUES ('345', '1001', '0', '2017-06-29 18:03:01', null);
INSERT INTO `osa_online_log` VALUES ('346', '1001', '0', '2017-06-29 18:04:01', null);
INSERT INTO `osa_online_log` VALUES ('347', '1001', '0', '2017-06-29 18:05:01', null);
INSERT INTO `osa_online_log` VALUES ('348', '1001', '0', '2017-06-29 18:06:01', null);
INSERT INTO `osa_online_log` VALUES ('349', '1001', '0', '2017-06-29 18:07:01', null);
INSERT INTO `osa_online_log` VALUES ('350', '1001', '0', '2017-06-29 18:08:01', null);
INSERT INTO `osa_online_log` VALUES ('351', '1001', '0', '2017-06-29 18:09:01', null);
INSERT INTO `osa_online_log` VALUES ('352', '1001', '0', '2017-06-29 18:10:01', null);
INSERT INTO `osa_online_log` VALUES ('353', '1001', '0', '2017-06-29 18:11:01', null);
INSERT INTO `osa_online_log` VALUES ('354', '1001', '0', '2017-06-29 18:12:01', null);
INSERT INTO `osa_online_log` VALUES ('355', '1001', '0', '2017-06-29 18:13:01', null);
INSERT INTO `osa_online_log` VALUES ('356', '1001', '0', '2017-06-29 18:14:01', null);
INSERT INTO `osa_online_log` VALUES ('357', '1001', '0', '2017-06-29 18:15:01', null);
INSERT INTO `osa_online_log` VALUES ('358', '1001', '0', '2017-06-29 18:16:01', null);
INSERT INTO `osa_online_log` VALUES ('359', '1001', '0', '2017-06-29 18:23:01', null);
INSERT INTO `osa_online_log` VALUES ('360', '1001', '0', '2017-06-29 18:24:01', null);
INSERT INTO `osa_online_log` VALUES ('361', '1001', '0', '2017-06-29 18:25:01', null);
INSERT INTO `osa_online_log` VALUES ('362', '1001', '0', '2017-06-29 18:26:01', null);
INSERT INTO `osa_online_log` VALUES ('363', '1001', '0', '2017-06-29 18:27:01', null);
INSERT INTO `osa_online_log` VALUES ('364', '1001', '0', '2017-06-29 18:28:01', null);
INSERT INTO `osa_online_log` VALUES ('365', '1001', '0', '2017-06-29 18:29:01', null);
INSERT INTO `osa_online_log` VALUES ('366', '1001', '0', '2017-06-29 18:30:01', null);
INSERT INTO `osa_online_log` VALUES ('367', '1001', '0', '2017-06-29 18:31:01', null);
INSERT INTO `osa_online_log` VALUES ('368', '1001', '0', '2017-06-29 18:32:01', null);
INSERT INTO `osa_online_log` VALUES ('369', '1001', '0', '2017-06-29 18:33:01', null);
INSERT INTO `osa_online_log` VALUES ('370', '1001', '0', '2017-06-29 18:34:01', null);
INSERT INTO `osa_online_log` VALUES ('371', '1001', '0', '2017-06-29 18:35:01', null);
INSERT INTO `osa_online_log` VALUES ('372', '1001', '0', '2017-06-29 18:36:01', null);
INSERT INTO `osa_online_log` VALUES ('373', '1001', '0', '2017-06-29 18:37:01', null);
INSERT INTO `osa_online_log` VALUES ('374', '1001', '0', '2017-06-29 18:38:01', null);
INSERT INTO `osa_online_log` VALUES ('375', '1001', '0', '2017-06-29 18:39:01', null);
INSERT INTO `osa_online_log` VALUES ('376', '1001', '0', '2017-06-29 18:40:01', null);
INSERT INTO `osa_online_log` VALUES ('377', '1001', '0', '2017-06-29 18:41:01', null);
INSERT INTO `osa_online_log` VALUES ('378', '1001', '0', '2017-06-29 18:42:01', null);
INSERT INTO `osa_online_log` VALUES ('379', '1001', '0', '2017-06-29 18:43:01', null);
INSERT INTO `osa_online_log` VALUES ('380', '1001', '0', '2017-06-29 18:44:01', null);
INSERT INTO `osa_online_log` VALUES ('381', '1001', '0', '2017-06-29 18:45:01', null);
INSERT INTO `osa_online_log` VALUES ('382', '1001', '0', '2017-06-29 18:46:01', null);
INSERT INTO `osa_online_log` VALUES ('383', '1001', '0', '2017-06-29 18:47:01', null);
INSERT INTO `osa_online_log` VALUES ('384', '1001', '0', '2017-06-29 18:48:01', null);
INSERT INTO `osa_online_log` VALUES ('385', '1001', '0', '2017-06-29 18:49:01', null);
INSERT INTO `osa_online_log` VALUES ('386', '1001', '0', '2017-06-29 18:50:01', null);
INSERT INTO `osa_online_log` VALUES ('387', '1001', '0', '2017-06-29 18:51:01', null);
INSERT INTO `osa_online_log` VALUES ('388', '1001', '0', '2017-06-29 18:52:01', null);
INSERT INTO `osa_online_log` VALUES ('389', '1001', '0', '2017-06-29 18:53:01', null);
INSERT INTO `osa_online_log` VALUES ('390', '1001', '0', '2017-06-29 18:54:01', null);
INSERT INTO `osa_online_log` VALUES ('391', '1001', '0', '2017-06-29 18:55:01', null);
INSERT INTO `osa_online_log` VALUES ('392', '1001', '0', '2017-06-29 18:56:01', null);
INSERT INTO `osa_online_log` VALUES ('393', '1001', '0', '2017-06-29 18:57:01', null);
INSERT INTO `osa_online_log` VALUES ('394', '1001', '0', '2017-06-29 18:58:01', null);
INSERT INTO `osa_online_log` VALUES ('395', '1001', '0', '2017-06-29 18:59:01', null);
INSERT INTO `osa_online_log` VALUES ('396', '1001', '0', '2017-06-29 19:00:01', null);
INSERT INTO `osa_online_log` VALUES ('397', '1001', '0', '2017-06-29 19:01:01', null);
INSERT INTO `osa_online_log` VALUES ('398', '1001', '0', '2017-06-29 19:02:01', null);
INSERT INTO `osa_online_log` VALUES ('399', '1001', '0', '2017-06-29 19:03:01', null);
INSERT INTO `osa_online_log` VALUES ('400', '1001', '0', '2017-06-29 19:04:01', null);
INSERT INTO `osa_online_log` VALUES ('401', '1001', '0', '2017-06-29 19:05:01', null);
INSERT INTO `osa_online_log` VALUES ('402', '1001', '0', '2017-06-29 19:06:01', null);
INSERT INTO `osa_online_log` VALUES ('403', '1001', '0', '2017-06-29 19:07:01', null);
INSERT INTO `osa_online_log` VALUES ('404', '1001', '0', '2017-06-29 19:08:01', null);
INSERT INTO `osa_online_log` VALUES ('405', '1001', '0', '2017-06-29 19:09:01', null);
INSERT INTO `osa_online_log` VALUES ('406', '1001', '0', '2017-06-29 19:10:01', null);
INSERT INTO `osa_online_log` VALUES ('407', '1001', '0', '2017-06-29 19:11:01', null);
INSERT INTO `osa_online_log` VALUES ('408', '1001', '0', '2017-06-29 19:12:01', null);
INSERT INTO `osa_online_log` VALUES ('409', '1001', '0', '2017-06-29 19:13:01', null);
INSERT INTO `osa_online_log` VALUES ('410', '1001', '0', '2017-06-29 19:14:01', null);
INSERT INTO `osa_online_log` VALUES ('411', '1001', '0', '2017-06-29 19:15:01', null);
INSERT INTO `osa_online_log` VALUES ('412', '1001', '0', '2017-06-29 19:16:01', null);
INSERT INTO `osa_online_log` VALUES ('413', '1001', '0', '2017-06-29 19:17:01', null);
INSERT INTO `osa_online_log` VALUES ('414', '1001', '0', '2017-06-29 19:18:01', null);
INSERT INTO `osa_online_log` VALUES ('415', '1001', '0', '2017-06-29 19:19:01', null);
INSERT INTO `osa_online_log` VALUES ('416', '1001', '0', '2017-06-29 19:20:01', null);
INSERT INTO `osa_online_log` VALUES ('417', '1001', '0', '2017-06-29 19:21:01', null);
INSERT INTO `osa_online_log` VALUES ('418', '1001', '0', '2017-06-29 19:22:01', null);
INSERT INTO `osa_online_log` VALUES ('419', '1001', '0', '2017-06-29 19:23:01', null);
INSERT INTO `osa_online_log` VALUES ('420', '1001', '0', '2017-06-29 19:24:01', null);
INSERT INTO `osa_online_log` VALUES ('421', '1001', '0', '2017-06-30 10:44:03', null);
INSERT INTO `osa_online_log` VALUES ('422', '1001', '1', '2017-06-30 10:45:01', null);
INSERT INTO `osa_online_log` VALUES ('423', '1001', '1', '2017-06-30 10:46:01', null);
INSERT INTO `osa_online_log` VALUES ('424', '1001', '1', '2017-06-30 10:47:01', null);
INSERT INTO `osa_online_log` VALUES ('425', '1001', '1', '2017-06-30 10:48:01', null);
INSERT INTO `osa_online_log` VALUES ('426', '1001', '1', '2017-06-30 10:49:01', null);
INSERT INTO `osa_online_log` VALUES ('427', '1001', '1', '2017-06-30 10:52:02', null);
INSERT INTO `osa_online_log` VALUES ('428', '1001', '1', '2017-06-30 10:53:01', null);
INSERT INTO `osa_online_log` VALUES ('429', '1001', '1', '2017-06-30 10:54:01', null);
INSERT INTO `osa_online_log` VALUES ('430', '1001', '1', '2017-06-30 10:55:01', null);
INSERT INTO `osa_online_log` VALUES ('431', '1001', '0', '2017-06-30 10:56:01', null);
INSERT INTO `osa_online_log` VALUES ('432', '1001', '0', '2017-06-30 10:57:01', null);
INSERT INTO `osa_online_log` VALUES ('433', '1001', '0', '2017-06-30 10:58:01', null);
INSERT INTO `osa_online_log` VALUES ('434', '1001', '0', '2017-06-30 10:59:01', null);
INSERT INTO `osa_online_log` VALUES ('435', '1001', '0', '2017-06-30 11:00:01', null);
INSERT INTO `osa_online_log` VALUES ('436', '1001', '0', '2017-06-30 11:01:01', null);
INSERT INTO `osa_online_log` VALUES ('437', '1001', '0', '2017-06-30 11:02:01', null);
INSERT INTO `osa_online_log` VALUES ('438', '1001', '0', '2017-06-30 11:03:01', null);
INSERT INTO `osa_online_log` VALUES ('439', '1001', '0', '2017-06-30 11:04:01', null);
INSERT INTO `osa_online_log` VALUES ('440', '1001', '0', '2017-06-30 11:05:01', null);
INSERT INTO `osa_online_log` VALUES ('441', '1001', '0', '2017-06-30 11:06:01', null);
INSERT INTO `osa_online_log` VALUES ('442', '1001', '0', '2017-06-30 11:07:01', null);
INSERT INTO `osa_online_log` VALUES ('443', '1001', '0', '2017-06-30 11:08:01', null);
INSERT INTO `osa_online_log` VALUES ('444', '1001', '0', '2017-06-30 11:09:01', null);
INSERT INTO `osa_online_log` VALUES ('445', '1001', '0', '2017-06-30 11:10:01', null);
INSERT INTO `osa_online_log` VALUES ('446', '1001', '0', '2017-06-30 11:11:01', null);
INSERT INTO `osa_online_log` VALUES ('447', '1001', '0', '2017-06-30 11:12:01', null);
INSERT INTO `osa_online_log` VALUES ('448', '1001', '0', '2017-06-30 11:13:01', null);
INSERT INTO `osa_online_log` VALUES ('449', '1001', '0', '2017-06-30 11:14:01', null);
INSERT INTO `osa_online_log` VALUES ('450', '1001', '0', '2017-06-30 11:15:01', null);
INSERT INTO `osa_online_log` VALUES ('451', '1001', '0', '2017-06-30 11:16:01', null);
INSERT INTO `osa_online_log` VALUES ('452', '1001', '0', '2017-06-30 11:17:01', null);
INSERT INTO `osa_online_log` VALUES ('453', '1001', '0', '2017-06-30 11:18:01', null);
INSERT INTO `osa_online_log` VALUES ('454', '1001', '0', '2017-06-30 11:19:01', null);
INSERT INTO `osa_online_log` VALUES ('455', '1001', '0', '2017-06-30 11:20:01', null);
INSERT INTO `osa_online_log` VALUES ('456', '1001', '0', '2017-06-30 11:21:01', null);
INSERT INTO `osa_online_log` VALUES ('457', '1001', '0', '2017-06-30 11:22:01', null);
INSERT INTO `osa_online_log` VALUES ('458', '1001', '0', '2017-06-30 11:23:01', null);
INSERT INTO `osa_online_log` VALUES ('459', '1001', '0', '2017-06-30 11:24:01', null);
INSERT INTO `osa_online_log` VALUES ('460', '1001', '0', '2017-06-30 11:25:01', null);
INSERT INTO `osa_online_log` VALUES ('461', '1001', '0', '2017-06-30 11:26:01', null);
INSERT INTO `osa_online_log` VALUES ('462', '1001', '0', '2017-06-30 11:27:01', null);
INSERT INTO `osa_online_log` VALUES ('463', '1001', '0', '2017-07-03 18:27:09', null);
INSERT INTO `osa_online_log` VALUES ('464', '1001', '0', '2017-07-03 18:28:01', null);
INSERT INTO `osa_online_log` VALUES ('465', '1001', '0', '2017-07-03 18:29:01', null);
INSERT INTO `osa_online_log` VALUES ('466', '1001', '0', '2017-07-03 18:30:01', null);
INSERT INTO `osa_online_log` VALUES ('467', '1001', '0', '2017-07-03 18:31:01', null);
INSERT INTO `osa_online_log` VALUES ('468', '1001', '0', '2017-07-03 18:32:01', null);
INSERT INTO `osa_online_log` VALUES ('469', '1001', '0', '2017-07-03 18:33:01', null);
INSERT INTO `osa_online_log` VALUES ('470', '1001', '1', '2017-07-03 18:34:01', null);
INSERT INTO `osa_online_log` VALUES ('471', '1001', '0', '2017-07-03 18:35:01', null);
INSERT INTO `osa_online_log` VALUES ('472', '1001', '1', '2017-07-03 18:36:01', null);
INSERT INTO `osa_online_log` VALUES ('473', '1001', '1', '2017-07-03 18:37:01', null);
INSERT INTO `osa_online_log` VALUES ('474', '1001', '1', '2017-07-03 18:38:01', null);
INSERT INTO `osa_online_log` VALUES ('475', '1001', '0', '2017-07-03 18:39:01', null);
INSERT INTO `osa_online_log` VALUES ('476', '1001', '0', '2017-07-03 18:40:01', null);
INSERT INTO `osa_online_log` VALUES ('477', '1001', '0', '2017-07-03 18:41:01', null);
INSERT INTO `osa_online_log` VALUES ('478', '1001', '0', '2017-07-03 18:42:01', null);
INSERT INTO `osa_online_log` VALUES ('479', '1001', '0', '2017-07-03 18:43:01', null);
INSERT INTO `osa_online_log` VALUES ('480', '1001', '0', '2017-07-03 18:44:01', null);
INSERT INTO `osa_online_log` VALUES ('481', '1001', '0', '2017-07-03 18:45:01', null);
INSERT INTO `osa_online_log` VALUES ('482', '1001', '0', '2017-07-03 18:46:01', null);
INSERT INTO `osa_online_log` VALUES ('483', '1001', '1', '2017-07-03 18:47:01', null);
INSERT INTO `osa_online_log` VALUES ('484', '1001', '0', '2017-07-03 18:48:01', null);
INSERT INTO `osa_online_log` VALUES ('485', '1001', '0', '2017-07-03 18:49:01', null);
INSERT INTO `osa_online_log` VALUES ('486', '1001', '0', '2017-07-03 18:50:01', null);
INSERT INTO `osa_online_log` VALUES ('487', '1001', '0', '2017-07-03 18:51:01', null);
INSERT INTO `osa_online_log` VALUES ('488', '1001', '1', '2017-07-03 18:52:01', null);
INSERT INTO `osa_online_log` VALUES ('489', '1001', '0', '2017-07-03 18:53:01', null);
INSERT INTO `osa_online_log` VALUES ('490', '1001', '0', '2017-07-03 18:54:01', null);
INSERT INTO `osa_online_log` VALUES ('491', '1001', '0', '2017-07-03 18:55:01', null);
INSERT INTO `osa_online_log` VALUES ('492', '1001', '0', '2017-07-03 18:56:01', null);
INSERT INTO `osa_online_log` VALUES ('493', '1001', '0', '2017-07-03 18:57:01', null);
INSERT INTO `osa_online_log` VALUES ('494', '1001', '0', '2017-07-03 18:58:01', null);
INSERT INTO `osa_online_log` VALUES ('495', '1001', '0', '2017-07-03 18:59:01', null);
INSERT INTO `osa_online_log` VALUES ('496', '1001', '0', '2017-07-04 10:34:02', null);
INSERT INTO `osa_online_log` VALUES ('497', '1001', '0', '2017-07-04 10:35:01', null);
INSERT INTO `osa_online_log` VALUES ('498', '1001', '0', '2017-07-04 10:36:01', null);
INSERT INTO `osa_online_log` VALUES ('499', '1001', '0', '2017-07-04 10:37:01', null);
INSERT INTO `osa_online_log` VALUES ('500', '1001', '0', '2017-07-04 10:38:01', null);
INSERT INTO `osa_online_log` VALUES ('501', '1001', '0', '2017-07-04 10:39:01', null);
INSERT INTO `osa_online_log` VALUES ('502', '1001', '0', '2017-07-04 10:40:01', null);
INSERT INTO `osa_online_log` VALUES ('503', '1001', '0', '2017-07-04 10:43:01', null);
INSERT INTO `osa_online_log` VALUES ('504', '1001', '0', '2017-07-04 10:44:01', null);
INSERT INTO `osa_online_log` VALUES ('505', '1001', '0', '2017-07-04 10:45:01', null);
INSERT INTO `osa_online_log` VALUES ('506', '1001', '0', '2017-07-04 10:46:01', null);
INSERT INTO `osa_online_log` VALUES ('507', '1001', '0', '2017-07-04 10:47:01', null);
INSERT INTO `osa_online_log` VALUES ('508', '1001', '0', '2017-07-04 10:48:01', null);
INSERT INTO `osa_online_log` VALUES ('509', '1001', '0', '2017-07-04 10:49:01', null);
INSERT INTO `osa_online_log` VALUES ('510', '1001', '1', '2017-07-04 10:51:01', null);
INSERT INTO `osa_online_log` VALUES ('511', '1001', '1', '2017-07-04 10:52:01', null);
INSERT INTO `osa_online_log` VALUES ('512', '1001', '1', '2017-07-04 10:53:03', null);
INSERT INTO `osa_online_log` VALUES ('513', '1001', '1', '2017-07-04 10:54:01', null);
INSERT INTO `osa_online_log` VALUES ('514', '1001', '1', '2017-07-04 10:55:01', null);
INSERT INTO `osa_online_log` VALUES ('515', '1001', '0', '2017-07-04 10:56:01', null);
INSERT INTO `osa_online_log` VALUES ('516', '1001', '0', '2017-07-04 10:57:01', null);
INSERT INTO `osa_online_log` VALUES ('517', '1001', '0', '2017-07-04 10:58:01', null);
INSERT INTO `osa_online_log` VALUES ('518', '1001', '0', '2017-07-04 10:59:01', null);
INSERT INTO `osa_online_log` VALUES ('519', '1001', '0', '2017-07-04 11:00:01', null);
INSERT INTO `osa_online_log` VALUES ('520', '1001', '1', '2017-07-04 11:01:01', null);
INSERT INTO `osa_online_log` VALUES ('521', '1001', '1', '2017-07-04 11:02:01', null);
INSERT INTO `osa_online_log` VALUES ('522', '1001', '1', '2017-07-04 11:03:01', null);
INSERT INTO `osa_online_log` VALUES ('523', '1001', '1', '2017-07-04 11:04:01', null);
INSERT INTO `osa_online_log` VALUES ('524', '1001', '1', '2017-07-04 11:05:07', null);
INSERT INTO `osa_online_log` VALUES ('525', '1001', '1', '2017-07-04 11:06:01', null);
INSERT INTO `osa_online_log` VALUES ('526', '1001', '1', '2017-07-04 11:07:01', null);
INSERT INTO `osa_online_log` VALUES ('527', '1001', '1', '2017-07-04 11:08:01', null);
INSERT INTO `osa_online_log` VALUES ('528', '1001', '0', '2017-07-04 11:09:01', null);
INSERT INTO `osa_online_log` VALUES ('529', '1001', '1', '2017-07-04 11:10:01', null);
INSERT INTO `osa_online_log` VALUES ('530', '1001', '1', '2017-07-04 11:11:01', null);
INSERT INTO `osa_online_log` VALUES ('531', '1001', '1', '2017-07-04 11:12:01', null);
INSERT INTO `osa_online_log` VALUES ('532', '1001', '1', '2017-07-04 11:13:01', null);
INSERT INTO `osa_online_log` VALUES ('533', '1001', '1', '2017-07-04 11:14:01', null);
INSERT INTO `osa_online_log` VALUES ('534', '1001', '1', '2017-07-04 11:15:01', null);
INSERT INTO `osa_online_log` VALUES ('535', '1001', '1', '2017-07-04 11:16:01', null);
INSERT INTO `osa_online_log` VALUES ('536', '1001', '1', '2017-07-04 11:17:01', null);
INSERT INTO `osa_online_log` VALUES ('537', '1001', '1', '2017-07-04 11:18:01', null);
INSERT INTO `osa_online_log` VALUES ('538', '1001', '1', '2017-07-04 11:19:01', null);
INSERT INTO `osa_online_log` VALUES ('539', '1001', '1', '2017-07-04 11:20:01', null);
INSERT INTO `osa_online_log` VALUES ('540', '1001', '1', '2017-07-04 11:21:01', null);
INSERT INTO `osa_online_log` VALUES ('541', '1001', '1', '2017-07-04 11:22:01', null);
INSERT INTO `osa_online_log` VALUES ('542', '1001', '1', '2017-07-04 11:23:01', null);
INSERT INTO `osa_online_log` VALUES ('543', '1001', '1', '2017-07-04 11:24:01', null);
INSERT INTO `osa_online_log` VALUES ('544', '1001', '1', '2017-07-04 11:25:01', null);
INSERT INTO `osa_online_log` VALUES ('545', '1001', '1', '2017-07-04 11:26:01', null);
INSERT INTO `osa_online_log` VALUES ('546', '1001', '1', '2017-07-04 11:27:01', null);
INSERT INTO `osa_online_log` VALUES ('547', '1001', '1', '2017-07-04 11:28:01', null);
INSERT INTO `osa_online_log` VALUES ('548', '1001', '1', '2017-07-04 11:29:01', null);
INSERT INTO `osa_online_log` VALUES ('549', '1001', '1', '2017-07-04 11:30:01', null);
INSERT INTO `osa_online_log` VALUES ('550', '1001', '1', '2017-07-04 11:31:01', null);
INSERT INTO `osa_online_log` VALUES ('551', '1001', '1', '2017-07-04 11:32:01', null);
INSERT INTO `osa_online_log` VALUES ('552', '1001', '1', '2017-07-04 11:33:01', null);
INSERT INTO `osa_online_log` VALUES ('553', '1001', '1', '2017-07-04 11:34:01', null);
INSERT INTO `osa_online_log` VALUES ('554', '1001', '1', '2017-07-04 11:35:01', null);
INSERT INTO `osa_online_log` VALUES ('555', '1001', '1', '2017-07-04 11:36:01', null);
INSERT INTO `osa_online_log` VALUES ('556', '1001', '1', '2017-07-04 11:37:01', null);
INSERT INTO `osa_online_log` VALUES ('557', '1001', '1', '2017-07-04 11:38:01', null);
INSERT INTO `osa_online_log` VALUES ('558', '1001', '0', '2017-07-04 11:39:01', null);
INSERT INTO `osa_online_log` VALUES ('559', '1001', '1', '2017-07-04 11:40:01', null);
INSERT INTO `osa_online_log` VALUES ('560', '1001', '1', '2017-07-04 11:44:01', null);
INSERT INTO `osa_online_log` VALUES ('561', '1001', '1', '2017-07-04 11:45:01', null);
INSERT INTO `osa_online_log` VALUES ('562', '1001', '0', '2017-07-04 11:46:01', null);
INSERT INTO `osa_online_log` VALUES ('563', '1001', '0', '2017-07-04 11:47:01', null);
INSERT INTO `osa_online_log` VALUES ('564', '1001', '1', '2017-07-04 11:48:01', null);
INSERT INTO `osa_online_log` VALUES ('565', '1001', '1', '2017-07-04 11:49:01', null);
INSERT INTO `osa_online_log` VALUES ('566', '1001', '1', '2017-07-04 11:50:01', null);
INSERT INTO `osa_online_log` VALUES ('567', '1001', '1', '2017-07-04 11:51:01', null);
INSERT INTO `osa_online_log` VALUES ('568', '1001', '1', '2017-07-04 11:52:01', null);
INSERT INTO `osa_online_log` VALUES ('569', '1001', '1', '2017-07-04 11:53:01', null);
INSERT INTO `osa_online_log` VALUES ('570', '1001', '1', '2017-07-04 11:54:01', null);
INSERT INTO `osa_online_log` VALUES ('571', '1001', '0', '2017-07-04 11:55:01', null);
INSERT INTO `osa_online_log` VALUES ('572', '1001', '0', '2017-07-04 11:56:01', null);
INSERT INTO `osa_online_log` VALUES ('573', '1001', '0', '2017-07-04 11:57:01', null);
INSERT INTO `osa_online_log` VALUES ('574', '1001', '0', '2017-07-04 11:58:01', null);
INSERT INTO `osa_online_log` VALUES ('575', '1001', '0', '2017-07-04 11:59:01', null);
INSERT INTO `osa_online_log` VALUES ('576', '1001', '0', '2017-07-04 12:00:01', null);
INSERT INTO `osa_online_log` VALUES ('577', '1001', '0', '2017-07-04 12:01:01', null);
INSERT INTO `osa_online_log` VALUES ('578', '1001', '0', '2017-07-04 12:02:01', null);
INSERT INTO `osa_online_log` VALUES ('579', '1001', '0', '2017-07-04 12:03:01', null);
INSERT INTO `osa_online_log` VALUES ('580', '1001', '1', '2017-07-04 12:45:01', null);
INSERT INTO `osa_online_log` VALUES ('581', '1001', '1', '2017-07-04 12:46:01', null);
INSERT INTO `osa_online_log` VALUES ('582', '1001', '1', '2017-07-04 12:47:01', null);
INSERT INTO `osa_online_log` VALUES ('583', '1001', '1', '2017-07-04 12:48:01', null);
INSERT INTO `osa_online_log` VALUES ('584', '1001', '1', '2017-07-04 12:49:01', null);
INSERT INTO `osa_online_log` VALUES ('585', '1001', '1', '2017-07-04 12:50:01', null);
INSERT INTO `osa_online_log` VALUES ('586', '1001', '1', '2017-07-04 12:51:01', null);
INSERT INTO `osa_online_log` VALUES ('587', '1001', '1', '2017-07-04 12:52:01', null);
INSERT INTO `osa_online_log` VALUES ('588', '1001', '1', '2017-07-04 12:53:01', null);
INSERT INTO `osa_online_log` VALUES ('589', '1001', '1', '2017-07-04 12:54:01', null);
INSERT INTO `osa_online_log` VALUES ('590', '1001', '1', '2017-07-04 12:55:01', null);
INSERT INTO `osa_online_log` VALUES ('591', '1001', '1', '2017-07-04 12:56:01', null);
INSERT INTO `osa_online_log` VALUES ('592', '1001', '1', '2017-07-04 12:57:01', null);
INSERT INTO `osa_online_log` VALUES ('593', '1001', '1', '2017-07-04 12:58:01', null);
INSERT INTO `osa_online_log` VALUES ('594', '1001', '1', '2017-07-04 12:59:01', null);
INSERT INTO `osa_online_log` VALUES ('595', '1001', '1', '2017-07-04 13:00:01', null);
INSERT INTO `osa_online_log` VALUES ('596', '1001', '1', '2017-07-04 13:01:01', null);
INSERT INTO `osa_online_log` VALUES ('597', '1001', '1', '2017-07-04 13:02:01', null);
INSERT INTO `osa_online_log` VALUES ('598', '1001', '1', '2017-07-04 13:03:01', null);
INSERT INTO `osa_online_log` VALUES ('599', '1001', '1', '2017-07-04 13:04:01', null);
INSERT INTO `osa_online_log` VALUES ('600', '1001', '1', '2017-07-04 13:05:01', null);
INSERT INTO `osa_online_log` VALUES ('601', '1001', '1', '2017-07-04 13:06:01', null);
INSERT INTO `osa_online_log` VALUES ('602', '1001', '1', '2017-07-04 13:07:01', null);
INSERT INTO `osa_online_log` VALUES ('603', '1001', '1', '2017-07-04 13:08:01', null);
INSERT INTO `osa_online_log` VALUES ('604', '1001', '1', '2017-07-04 13:09:01', null);
INSERT INTO `osa_online_log` VALUES ('605', '1001', '1', '2017-07-04 13:10:01', null);
INSERT INTO `osa_online_log` VALUES ('606', '1001', '1', '2017-07-04 13:11:01', null);
INSERT INTO `osa_online_log` VALUES ('607', '1001', '1', '2017-07-04 13:12:01', null);
INSERT INTO `osa_online_log` VALUES ('608', '1001', '1', '2017-07-04 13:13:01', null);
INSERT INTO `osa_online_log` VALUES ('609', '1001', '1', '2017-07-04 13:14:01', null);
INSERT INTO `osa_online_log` VALUES ('610', '1001', '1', '2017-07-04 13:15:01', null);
INSERT INTO `osa_online_log` VALUES ('611', '1001', '1', '2017-07-04 13:16:01', null);
INSERT INTO `osa_online_log` VALUES ('612', '1001', '1', '2017-07-04 13:17:01', null);
INSERT INTO `osa_online_log` VALUES ('613', '1001', '1', '2017-07-04 13:18:01', null);
INSERT INTO `osa_online_log` VALUES ('614', '1001', '1', '2017-07-04 13:19:01', null);
INSERT INTO `osa_online_log` VALUES ('615', '1001', '1', '2017-07-04 13:20:01', null);
INSERT INTO `osa_online_log` VALUES ('616', '1001', '1', '2017-07-04 13:21:01', null);
INSERT INTO `osa_online_log` VALUES ('617', '1001', '1', '2017-07-04 13:22:01', null);
INSERT INTO `osa_online_log` VALUES ('618', '1001', '1', '2017-07-04 13:23:01', null);
INSERT INTO `osa_online_log` VALUES ('619', '1001', '1', '2017-07-04 13:24:01', null);
INSERT INTO `osa_online_log` VALUES ('620', '1001', '1', '2017-07-04 13:25:01', null);
INSERT INTO `osa_online_log` VALUES ('621', '1001', '1', '2017-07-04 13:26:01', null);
INSERT INTO `osa_online_log` VALUES ('622', '1001', '1', '2017-07-04 13:27:01', null);
INSERT INTO `osa_online_log` VALUES ('623', '1001', '1', '2017-07-04 13:28:01', null);
INSERT INTO `osa_online_log` VALUES ('624', '1001', '1', '2017-07-04 13:29:01', null);
INSERT INTO `osa_online_log` VALUES ('625', '1001', '0', '2017-07-04 13:30:01', null);
INSERT INTO `osa_online_log` VALUES ('626', '1001', '0', '2017-07-04 13:31:01', null);
INSERT INTO `osa_online_log` VALUES ('627', '1001', '0', '2017-07-04 13:32:01', null);
INSERT INTO `osa_online_log` VALUES ('628', '1001', '0', '2017-07-04 13:33:01', null);
INSERT INTO `osa_online_log` VALUES ('629', '1001', '0', '2017-07-04 13:34:01', null);
INSERT INTO `osa_online_log` VALUES ('630', '1001', '0', '2017-07-04 13:35:01', null);
INSERT INTO `osa_online_log` VALUES ('631', '1001', '0', '2017-07-04 13:36:01', null);
INSERT INTO `osa_online_log` VALUES ('632', '1001', '0', '2017-07-04 13:37:01', null);
INSERT INTO `osa_online_log` VALUES ('633', '1001', '0', '2017-07-04 13:38:01', null);
INSERT INTO `osa_online_log` VALUES ('634', '1001', '1', '2017-07-04 13:39:01', null);
INSERT INTO `osa_online_log` VALUES ('635', '1001', '0', '2017-07-04 13:40:01', null);
INSERT INTO `osa_online_log` VALUES ('636', '1001', '0', '2017-07-04 13:41:01', null);
INSERT INTO `osa_online_log` VALUES ('637', '1001', '0', '2017-07-04 13:42:01', null);
INSERT INTO `osa_online_log` VALUES ('638', '1001', '1', '2017-07-04 13:43:01', null);
INSERT INTO `osa_online_log` VALUES ('639', '1001', '0', '2017-07-04 13:44:01', null);
INSERT INTO `osa_online_log` VALUES ('640', '1001', '0', '2017-07-04 13:45:01', null);
INSERT INTO `osa_online_log` VALUES ('641', '1001', '0', '2017-07-04 13:46:01', null);
INSERT INTO `osa_online_log` VALUES ('642', '1001', '0', '2017-07-04 13:47:01', null);
INSERT INTO `osa_online_log` VALUES ('643', '1001', '0', '2017-07-04 13:48:01', null);
INSERT INTO `osa_online_log` VALUES ('644', '1001', '1', '2017-07-04 13:49:01', null);
INSERT INTO `osa_online_log` VALUES ('645', '1001', '1', '2017-07-04 13:50:01', null);
INSERT INTO `osa_online_log` VALUES ('646', '1001', '1', '2017-07-04 13:51:01', null);
INSERT INTO `osa_online_log` VALUES ('647', '1001', '1', '2017-07-04 13:52:01', null);
INSERT INTO `osa_online_log` VALUES ('648', '1001', '1', '2017-07-04 13:53:01', null);
INSERT INTO `osa_online_log` VALUES ('649', '1001', '0', '2017-07-04 13:54:01', null);
INSERT INTO `osa_online_log` VALUES ('650', '1001', '0', '2017-07-04 13:55:01', null);
INSERT INTO `osa_online_log` VALUES ('651', '1001', '0', '2017-07-04 13:56:01', null);
INSERT INTO `osa_online_log` VALUES ('652', '1001', '0', '2017-07-04 13:57:01', null);
INSERT INTO `osa_online_log` VALUES ('653', '1001', '0', '2017-07-04 13:58:01', null);
INSERT INTO `osa_online_log` VALUES ('654', '1001', '0', '2017-07-04 13:59:01', null);
INSERT INTO `osa_online_log` VALUES ('655', '1001', '0', '2017-07-04 14:00:01', null);
INSERT INTO `osa_online_log` VALUES ('656', '1001', '0', '2017-07-04 14:01:01', null);
INSERT INTO `osa_online_log` VALUES ('657', '1001', '0', '2017-07-04 14:02:01', null);
INSERT INTO `osa_online_log` VALUES ('658', '1001', '0', '2017-07-04 14:03:01', null);
INSERT INTO `osa_online_log` VALUES ('659', '1001', '0', '2017-07-04 14:04:01', null);
INSERT INTO `osa_online_log` VALUES ('660', '1001', '0', '2017-07-04 14:05:01', null);
INSERT INTO `osa_online_log` VALUES ('661', '1001', '0', '2017-07-04 14:06:01', null);
INSERT INTO `osa_online_log` VALUES ('662', '1001', '0', '2017-07-04 14:07:01', null);
INSERT INTO `osa_online_log` VALUES ('663', '1001', '0', '2017-07-04 14:08:01', null);
INSERT INTO `osa_online_log` VALUES ('664', '1001', '0', '2017-07-04 14:09:01', null);
INSERT INTO `osa_online_log` VALUES ('665', '1001', '0', '2017-07-04 14:10:01', null);
INSERT INTO `osa_online_log` VALUES ('666', '1001', '0', '2017-07-04 14:11:01', null);
INSERT INTO `osa_online_log` VALUES ('667', '1001', '0', '2017-07-04 14:12:01', null);
INSERT INTO `osa_online_log` VALUES ('668', '1001', '0', '2017-07-04 14:13:01', null);
INSERT INTO `osa_online_log` VALUES ('669', '1001', '0', '2017-07-04 14:14:01', null);
INSERT INTO `osa_online_log` VALUES ('670', '1001', '1', '2017-07-04 14:15:01', null);
INSERT INTO `osa_online_log` VALUES ('671', '1001', '1', '2017-07-04 14:16:01', null);
INSERT INTO `osa_online_log` VALUES ('672', '1001', '0', '2017-07-04 14:17:01', null);
INSERT INTO `osa_online_log` VALUES ('673', '1001', '1', '2017-07-04 14:18:01', null);
INSERT INTO `osa_online_log` VALUES ('674', '1001', '0', '2017-07-04 14:19:01', null);
INSERT INTO `osa_online_log` VALUES ('675', '1001', '0', '2017-07-04 14:20:01', null);
INSERT INTO `osa_online_log` VALUES ('676', '1001', '0', '2017-07-04 14:21:01', null);
INSERT INTO `osa_online_log` VALUES ('677', '1001', '0', '2017-07-04 14:22:01', null);
INSERT INTO `osa_online_log` VALUES ('678', '1001', '1', '2017-07-04 14:23:01', null);
INSERT INTO `osa_online_log` VALUES ('679', '1001', '0', '2017-07-04 14:24:01', null);
INSERT INTO `osa_online_log` VALUES ('680', '1001', '0', '2017-07-04 14:25:01', null);
INSERT INTO `osa_online_log` VALUES ('681', '1001', '0', '2017-07-04 14:26:01', null);
INSERT INTO `osa_online_log` VALUES ('682', '1001', '0', '2017-07-04 14:27:01', null);
INSERT INTO `osa_online_log` VALUES ('683', '1001', '0', '2017-07-04 14:28:01', null);
INSERT INTO `osa_online_log` VALUES ('684', '1001', '1', '2017-07-04 14:29:01', null);
INSERT INTO `osa_online_log` VALUES ('685', '1001', '1', '2017-07-04 14:30:01', null);
INSERT INTO `osa_online_log` VALUES ('686', '1001', '1', '2017-07-04 14:31:01', null);
INSERT INTO `osa_online_log` VALUES ('687', '1001', '1', '2017-07-04 14:32:01', null);
INSERT INTO `osa_online_log` VALUES ('688', '1001', '1', '2017-07-04 14:33:01', null);
INSERT INTO `osa_online_log` VALUES ('689', '1001', '1', '2017-07-04 14:34:01', null);
INSERT INTO `osa_online_log` VALUES ('690', '1001', '1', '2017-07-04 14:35:01', null);
INSERT INTO `osa_online_log` VALUES ('691', '1001', '1', '2017-07-04 14:36:01', null);
INSERT INTO `osa_online_log` VALUES ('692', '1001', '1', '2017-07-04 14:37:01', null);
INSERT INTO `osa_online_log` VALUES ('693', '1001', '1', '2017-07-04 14:38:01', null);
INSERT INTO `osa_online_log` VALUES ('694', '1001', '0', '2017-07-04 14:39:01', null);
INSERT INTO `osa_online_log` VALUES ('695', '1001', '1', '2017-07-04 14:40:01', null);
INSERT INTO `osa_online_log` VALUES ('696', '1001', '1', '2017-07-04 14:41:01', null);
INSERT INTO `osa_online_log` VALUES ('697', '1001', '1', '2017-07-04 14:42:01', null);
INSERT INTO `osa_online_log` VALUES ('698', '1001', '1', '2017-07-04 14:43:01', null);
INSERT INTO `osa_online_log` VALUES ('699', '1001', '1', '2017-07-04 14:44:01', null);
INSERT INTO `osa_online_log` VALUES ('700', '1001', '1', '2017-07-04 14:45:01', null);
INSERT INTO `osa_online_log` VALUES ('701', '1001', '1', '2017-07-04 14:46:01', null);
INSERT INTO `osa_online_log` VALUES ('702', '1001', '0', '2017-07-04 14:47:01', null);
INSERT INTO `osa_online_log` VALUES ('703', '1001', '0', '2017-07-04 14:48:01', null);
INSERT INTO `osa_online_log` VALUES ('704', '1001', '0', '2017-07-04 14:49:01', null);
INSERT INTO `osa_online_log` VALUES ('705', '1001', '0', '2017-07-04 14:50:01', null);
INSERT INTO `osa_online_log` VALUES ('706', '1001', '0', '2017-07-04 14:51:01', null);
INSERT INTO `osa_online_log` VALUES ('707', '1001', '0', '2017-07-04 14:52:01', null);
INSERT INTO `osa_online_log` VALUES ('708', '1001', '0', '2017-07-04 14:53:01', null);
INSERT INTO `osa_online_log` VALUES ('709', '1001', '0', '2017-07-04 14:54:01', null);
INSERT INTO `osa_online_log` VALUES ('710', '1001', '0', '2017-07-04 14:55:01', null);
INSERT INTO `osa_online_log` VALUES ('711', '1001', '1', '2017-07-04 14:56:01', null);
INSERT INTO `osa_online_log` VALUES ('712', '1001', '1', '2017-07-04 14:57:01', null);
INSERT INTO `osa_online_log` VALUES ('713', '1001', '1', '2017-07-04 14:58:01', null);
INSERT INTO `osa_online_log` VALUES ('714', '1001', '1', '2017-07-04 14:59:01', null);
INSERT INTO `osa_online_log` VALUES ('715', '1001', '1', '2017-07-04 15:00:01', null);
INSERT INTO `osa_online_log` VALUES ('716', '1001', '1', '2017-07-04 15:01:01', null);
INSERT INTO `osa_online_log` VALUES ('717', '1001', '1', '2017-07-04 15:02:01', null);
INSERT INTO `osa_online_log` VALUES ('718', '1001', '1', '2017-07-04 15:03:01', null);
INSERT INTO `osa_online_log` VALUES ('719', '1001', '1', '2017-07-04 15:04:01', null);
INSERT INTO `osa_online_log` VALUES ('720', '1001', '1', '2017-07-04 15:05:01', null);
INSERT INTO `osa_online_log` VALUES ('721', '1001', '1', '2017-07-04 15:06:01', null);
INSERT INTO `osa_online_log` VALUES ('722', '1001', '1', '2017-07-04 15:07:01', null);
INSERT INTO `osa_online_log` VALUES ('723', '1001', '1', '2017-07-04 15:08:01', null);
INSERT INTO `osa_online_log` VALUES ('724', '1001', '1', '2017-07-04 15:09:01', null);
INSERT INTO `osa_online_log` VALUES ('725', '1001', '0', '2017-07-04 15:10:01', null);
INSERT INTO `osa_online_log` VALUES ('726', '1001', '0', '2017-07-04 15:11:01', null);
INSERT INTO `osa_online_log` VALUES ('727', '1001', '0', '2017-07-04 15:12:01', null);
INSERT INTO `osa_online_log` VALUES ('728', '1001', '0', '2017-07-04 15:13:01', null);
INSERT INTO `osa_online_log` VALUES ('729', '1001', '0', '2017-07-04 15:14:01', null);
INSERT INTO `osa_online_log` VALUES ('730', '1001', '0', '2017-07-04 15:19:01', null);
INSERT INTO `osa_online_log` VALUES ('731', '1001', '0', '2017-07-04 15:20:01', null);
INSERT INTO `osa_online_log` VALUES ('732', '1001', '0', '2017-07-04 15:21:01', null);
INSERT INTO `osa_online_log` VALUES ('733', '1001', '0', '2017-07-04 15:22:01', null);
INSERT INTO `osa_online_log` VALUES ('734', '1001', '0', '2017-07-04 15:23:01', null);
INSERT INTO `osa_online_log` VALUES ('735', '1001', '0', '2017-07-04 15:24:01', null);
INSERT INTO `osa_online_log` VALUES ('736', '1001', '0', '2017-07-04 15:25:01', null);
INSERT INTO `osa_online_log` VALUES ('737', '1001', '0', '2017-07-04 15:26:01', null);
INSERT INTO `osa_online_log` VALUES ('738', '1001', '0', '2017-07-04 15:27:01', null);
INSERT INTO `osa_online_log` VALUES ('739', '1001', '0', '2017-07-04 15:28:01', null);
INSERT INTO `osa_online_log` VALUES ('740', '1001', '0', '2017-07-04 15:29:01', null);
INSERT INTO `osa_online_log` VALUES ('741', '1001', '1', '2017-07-04 15:30:01', null);
INSERT INTO `osa_online_log` VALUES ('742', '1001', '1', '2017-07-04 15:31:01', null);
INSERT INTO `osa_online_log` VALUES ('743', '1001', '0', '2017-07-04 15:32:01', null);
INSERT INTO `osa_online_log` VALUES ('744', '1001', '0', '2017-07-04 15:33:01', null);
INSERT INTO `osa_online_log` VALUES ('745', '1001', '1', '2017-07-04 15:34:01', null);
INSERT INTO `osa_online_log` VALUES ('746', '1001', '0', '2017-07-04 15:35:01', null);
INSERT INTO `osa_online_log` VALUES ('747', '1001', '1', '2017-07-04 15:36:01', null);
INSERT INTO `osa_online_log` VALUES ('748', '1001', '0', '2017-07-04 15:37:01', null);
INSERT INTO `osa_online_log` VALUES ('749', '1001', '0', '2017-07-04 15:38:01', null);
INSERT INTO `osa_online_log` VALUES ('750', '1001', '0', '2017-07-04 15:39:01', null);
INSERT INTO `osa_online_log` VALUES ('751', '1001', '0', '2017-07-04 15:40:01', null);
INSERT INTO `osa_online_log` VALUES ('752', '1001', '0', '2017-07-04 15:41:01', null);
INSERT INTO `osa_online_log` VALUES ('753', '1001', '0', '2017-07-04 15:42:01', null);
INSERT INTO `osa_online_log` VALUES ('754', '1001', '0', '2017-07-04 15:43:01', null);
INSERT INTO `osa_online_log` VALUES ('755', '1001', '0', '2017-07-04 15:44:01', null);
INSERT INTO `osa_online_log` VALUES ('756', '1001', '1', '2017-07-04 15:45:01', null);
INSERT INTO `osa_online_log` VALUES ('757', '1001', '0', '2017-07-04 15:46:01', null);
INSERT INTO `osa_online_log` VALUES ('758', '1001', '1', '2017-07-04 15:47:01', null);
INSERT INTO `osa_online_log` VALUES ('759', '1001', '1', '2017-07-04 15:48:01', null);
INSERT INTO `osa_online_log` VALUES ('760', '1001', '0', '2017-07-04 15:49:01', null);
INSERT INTO `osa_online_log` VALUES ('761', '1001', '0', '2017-07-04 15:50:01', null);
INSERT INTO `osa_online_log` VALUES ('762', '1001', '0', '2017-07-04 15:51:01', null);
INSERT INTO `osa_online_log` VALUES ('763', '1001', '0', '2017-07-04 15:52:01', null);
INSERT INTO `osa_online_log` VALUES ('764', '1001', '0', '2017-07-04 15:53:01', null);
INSERT INTO `osa_online_log` VALUES ('765', '1001', '0', '2017-07-04 15:54:01', null);
INSERT INTO `osa_online_log` VALUES ('766', '1001', '0', '2017-07-04 15:55:01', null);
INSERT INTO `osa_online_log` VALUES ('767', '1001', '0', '2017-07-04 15:56:01', null);
INSERT INTO `osa_online_log` VALUES ('768', '1001', '0', '2017-07-04 15:57:01', null);
INSERT INTO `osa_online_log` VALUES ('769', '1001', '0', '2017-07-04 15:58:01', null);
INSERT INTO `osa_online_log` VALUES ('770', '1001', '0', '2017-07-04 15:59:01', null);
INSERT INTO `osa_online_log` VALUES ('771', '1001', '0', '2017-07-04 16:00:01', null);
INSERT INTO `osa_online_log` VALUES ('772', '1001', '0', '2017-07-04 16:01:01', null);
INSERT INTO `osa_online_log` VALUES ('773', '1001', '0', '2017-07-04 16:02:01', null);
INSERT INTO `osa_online_log` VALUES ('774', '1001', '0', '2017-07-04 16:03:01', null);
INSERT INTO `osa_online_log` VALUES ('775', '1001', '0', '2017-07-04 16:04:01', null);
INSERT INTO `osa_online_log` VALUES ('776', '1001', '0', '2017-07-04 16:05:01', null);
INSERT INTO `osa_online_log` VALUES ('777', '1001', '0', '2017-07-04 16:06:01', null);
INSERT INTO `osa_online_log` VALUES ('778', '1001', '0', '2017-07-04 16:07:01', null);
INSERT INTO `osa_online_log` VALUES ('779', '1001', '0', '2017-07-04 16:08:01', null);
INSERT INTO `osa_online_log` VALUES ('780', '1001', '0', '2017-07-04 16:09:01', null);
INSERT INTO `osa_online_log` VALUES ('781', '1001', '0', '2017-07-04 16:10:01', null);
INSERT INTO `osa_online_log` VALUES ('782', '1001', '0', '2017-07-04 16:11:01', null);
INSERT INTO `osa_online_log` VALUES ('783', '1001', '0', '2017-07-04 16:12:01', null);
INSERT INTO `osa_online_log` VALUES ('784', '1001', '0', '2017-07-04 16:13:01', null);
INSERT INTO `osa_online_log` VALUES ('785', '1001', '0', '2017-07-04 16:14:01', null);
INSERT INTO `osa_online_log` VALUES ('786', '1001', '0', '2017-07-04 16:15:01', null);
INSERT INTO `osa_online_log` VALUES ('787', '1001', '0', '2017-07-04 16:16:01', null);
INSERT INTO `osa_online_log` VALUES ('788', '1001', '0', '2017-07-04 16:17:01', null);
INSERT INTO `osa_online_log` VALUES ('789', '1001', '0', '2017-07-04 16:18:01', null);
INSERT INTO `osa_online_log` VALUES ('790', '1001', '0', '2017-07-04 16:19:01', null);
INSERT INTO `osa_online_log` VALUES ('791', '1001', '0', '2017-07-04 16:20:01', null);
INSERT INTO `osa_online_log` VALUES ('792', '1001', '0', '2017-07-04 16:21:01', null);
INSERT INTO `osa_online_log` VALUES ('793', '1001', '0', '2017-07-04 16:22:01', null);
INSERT INTO `osa_online_log` VALUES ('794', '1001', '0', '2017-07-04 16:23:01', null);
INSERT INTO `osa_online_log` VALUES ('795', '1001', '0', '2017-07-04 16:24:01', null);
INSERT INTO `osa_online_log` VALUES ('796', '1001', '0', '2017-07-04 16:25:01', null);
INSERT INTO `osa_online_log` VALUES ('797', '1001', '0', '2017-07-04 16:26:01', null);
INSERT INTO `osa_online_log` VALUES ('798', '1001', '0', '2017-07-04 16:27:01', null);
INSERT INTO `osa_online_log` VALUES ('799', '1001', '0', '2017-07-04 16:28:01', null);
INSERT INTO `osa_online_log` VALUES ('800', '1001', '0', '2017-07-04 16:29:01', null);
INSERT INTO `osa_online_log` VALUES ('801', '1001', '0', '2017-07-04 16:30:01', null);
INSERT INTO `osa_online_log` VALUES ('802', '1001', '0', '2017-07-04 16:31:01', null);
INSERT INTO `osa_online_log` VALUES ('803', '1001', '0', '2017-07-04 16:32:01', null);
INSERT INTO `osa_online_log` VALUES ('804', '1001', '0', '2017-07-04 16:33:01', null);
INSERT INTO `osa_online_log` VALUES ('805', '1001', '0', '2017-07-04 16:34:01', null);
INSERT INTO `osa_online_log` VALUES ('806', '1001', '0', '2017-07-04 16:35:01', null);
INSERT INTO `osa_online_log` VALUES ('807', '1001', '0', '2017-07-04 16:36:01', null);
INSERT INTO `osa_online_log` VALUES ('808', '1001', '0', '2017-07-04 16:37:01', null);
INSERT INTO `osa_online_log` VALUES ('809', '1001', '0', '2017-07-04 16:38:01', null);
INSERT INTO `osa_online_log` VALUES ('810', '1001', '0', '2017-07-04 16:39:01', null);
INSERT INTO `osa_online_log` VALUES ('811', '1001', '0', '2017-07-04 16:40:01', null);
INSERT INTO `osa_online_log` VALUES ('812', '1001', '0', '2017-07-04 16:41:01', null);
INSERT INTO `osa_online_log` VALUES ('813', '1001', '0', '2017-07-04 16:42:01', null);
INSERT INTO `osa_online_log` VALUES ('814', '1001', '0', '2017-07-04 16:43:01', null);
INSERT INTO `osa_online_log` VALUES ('815', '1001', '0', '2017-07-04 16:44:01', null);
INSERT INTO `osa_online_log` VALUES ('816', '1001', '0', '2017-07-04 16:45:01', null);
INSERT INTO `osa_online_log` VALUES ('817', '1001', '0', '2017-07-04 16:46:01', null);
INSERT INTO `osa_online_log` VALUES ('818', '1001', '0', '2017-07-04 16:47:01', null);
INSERT INTO `osa_online_log` VALUES ('819', '1001', '0', '2017-07-04 16:48:01', null);
INSERT INTO `osa_online_log` VALUES ('820', '1001', '0', '2017-07-04 16:49:01', null);
INSERT INTO `osa_online_log` VALUES ('821', '1001', '0', '2017-07-04 16:50:01', null);
INSERT INTO `osa_online_log` VALUES ('822', '1001', '0', '2017-07-04 16:51:01', null);
INSERT INTO `osa_online_log` VALUES ('823', '1001', '0', '2017-07-04 16:52:01', null);
INSERT INTO `osa_online_log` VALUES ('824', '1001', '0', '2017-07-04 16:53:01', null);
INSERT INTO `osa_online_log` VALUES ('825', '1001', '0', '2017-07-04 16:54:01', null);
INSERT INTO `osa_online_log` VALUES ('826', '1001', '0', '2017-07-04 16:55:01', null);
INSERT INTO `osa_online_log` VALUES ('827', '1001', '0', '2017-07-04 16:56:01', null);
INSERT INTO `osa_online_log` VALUES ('828', '1001', '0', '2017-07-04 16:57:01', null);
INSERT INTO `osa_online_log` VALUES ('829', '1001', '0', '2017-07-04 16:58:01', null);
INSERT INTO `osa_online_log` VALUES ('830', '1001', '0', '2017-07-04 16:59:01', null);
INSERT INTO `osa_online_log` VALUES ('831', '1001', '0', '2017-07-04 17:00:01', null);
INSERT INTO `osa_online_log` VALUES ('832', '1001', '0', '2017-07-04 17:01:01', null);
INSERT INTO `osa_online_log` VALUES ('833', '1001', '0', '2017-07-04 17:02:01', null);
INSERT INTO `osa_online_log` VALUES ('834', '1001', '0', '2017-07-04 17:03:01', null);
INSERT INTO `osa_online_log` VALUES ('835', '1001', '0', '2017-07-04 17:04:01', null);
INSERT INTO `osa_online_log` VALUES ('836', '1001', '0', '2017-07-04 17:05:01', null);
INSERT INTO `osa_online_log` VALUES ('837', '1001', '0', '2017-07-04 17:06:01', null);
INSERT INTO `osa_online_log` VALUES ('838', '1001', '0', '2017-07-04 17:07:01', null);
INSERT INTO `osa_online_log` VALUES ('839', '1001', '0', '2017-07-04 17:08:01', null);
INSERT INTO `osa_online_log` VALUES ('840', '1001', '0', '2017-07-04 17:09:01', null);
INSERT INTO `osa_online_log` VALUES ('841', '1001', '0', '2017-07-04 17:10:01', null);
INSERT INTO `osa_online_log` VALUES ('842', '1001', '0', '2017-07-04 17:11:01', null);
INSERT INTO `osa_online_log` VALUES ('843', '1001', '0', '2017-07-04 17:12:01', null);
INSERT INTO `osa_online_log` VALUES ('844', '1001', '0', '2017-07-04 17:14:01', null);
INSERT INTO `osa_online_log` VALUES ('845', '1001', '0', '2017-07-04 17:15:01', null);
INSERT INTO `osa_online_log` VALUES ('846', '1001', '0', '2017-07-04 17:16:01', null);
INSERT INTO `osa_online_log` VALUES ('847', '1001', '0', '2017-07-04 17:17:01', null);
INSERT INTO `osa_online_log` VALUES ('848', '1001', '0', '2017-07-04 17:18:01', null);
INSERT INTO `osa_online_log` VALUES ('849', '1001', '0', '2017-07-04 17:19:01', null);
INSERT INTO `osa_online_log` VALUES ('850', '1001', '0', '2017-07-04 17:20:01', null);
INSERT INTO `osa_online_log` VALUES ('851', '1001', '0', '2017-07-04 17:21:01', null);
INSERT INTO `osa_online_log` VALUES ('852', '1001', '0', '2017-07-04 17:22:01', null);
INSERT INTO `osa_online_log` VALUES ('853', '1001', '0', '2017-07-04 17:23:01', null);
INSERT INTO `osa_online_log` VALUES ('854', '1001', '0', '2017-07-04 17:24:01', null);
INSERT INTO `osa_online_log` VALUES ('855', '1001', '0', '2017-07-04 17:25:01', null);
INSERT INTO `osa_online_log` VALUES ('856', '1001', '0', '2017-07-04 17:26:01', null);
INSERT INTO `osa_online_log` VALUES ('857', '1001', '0', '2017-07-04 17:27:01', null);
INSERT INTO `osa_online_log` VALUES ('858', '1001', '0', '2017-07-04 17:28:01', null);
INSERT INTO `osa_online_log` VALUES ('859', '1001', '0', '2017-07-04 17:29:01', null);
INSERT INTO `osa_online_log` VALUES ('860', '1001', '0', '2017-07-04 17:30:01', null);
INSERT INTO `osa_online_log` VALUES ('861', '1001', '0', '2017-07-04 17:31:01', null);
INSERT INTO `osa_online_log` VALUES ('862', '1001', '0', '2017-07-04 17:32:01', null);
INSERT INTO `osa_online_log` VALUES ('863', '1001', '0', '2017-07-04 17:33:01', null);
INSERT INTO `osa_online_log` VALUES ('864', '1001', '0', '2017-07-04 17:34:01', null);
INSERT INTO `osa_online_log` VALUES ('865', '1001', '0', '2017-07-04 17:35:01', null);
INSERT INTO `osa_online_log` VALUES ('866', '1001', '0', '2017-07-04 17:36:01', null);
INSERT INTO `osa_online_log` VALUES ('867', '1001', '0', '2017-07-04 17:37:01', null);
INSERT INTO `osa_online_log` VALUES ('868', '1001', '0', '2017-07-04 17:43:01', null);
INSERT INTO `osa_online_log` VALUES ('869', '1001', '0', '2017-07-04 17:44:01', null);
INSERT INTO `osa_online_log` VALUES ('870', '1001', '0', '2017-07-04 17:45:01', null);
INSERT INTO `osa_online_log` VALUES ('871', '1001', '0', '2017-07-04 17:46:01', null);
INSERT INTO `osa_online_log` VALUES ('872', '1001', '0', '2017-07-04 17:47:01', null);
INSERT INTO `osa_online_log` VALUES ('873', '1001', '0', '2017-07-04 17:48:01', null);
INSERT INTO `osa_online_log` VALUES ('874', '1001', '0', '2017-07-04 17:49:01', null);
INSERT INTO `osa_online_log` VALUES ('875', '1001', '0', '2017-07-04 17:50:01', null);
INSERT INTO `osa_online_log` VALUES ('876', '1001', '0', '2017-07-04 17:51:01', null);
INSERT INTO `osa_online_log` VALUES ('877', '1001', '0', '2017-07-04 17:52:01', null);
INSERT INTO `osa_online_log` VALUES ('878', '1001', '0', '2017-07-04 17:53:01', null);
INSERT INTO `osa_online_log` VALUES ('879', '1001', '0', '2017-07-04 17:54:01', null);
INSERT INTO `osa_online_log` VALUES ('880', '1001', '0', '2017-07-04 17:55:01', null);
INSERT INTO `osa_online_log` VALUES ('881', '1001', '0', '2017-07-04 17:56:01', null);
INSERT INTO `osa_online_log` VALUES ('882', '1001', '0', '2017-07-04 17:57:01', null);
INSERT INTO `osa_online_log` VALUES ('883', '1001', '0', '2017-07-04 17:58:01', null);
INSERT INTO `osa_online_log` VALUES ('884', '1001', '0', '2017-07-04 17:59:01', null);
INSERT INTO `osa_online_log` VALUES ('885', '1001', '0', '2017-07-04 18:00:01', null);
INSERT INTO `osa_online_log` VALUES ('886', '1001', '0', '2017-07-04 18:01:01', null);
INSERT INTO `osa_online_log` VALUES ('887', '1001', '0', '2017-07-04 18:02:01', null);
INSERT INTO `osa_online_log` VALUES ('888', '1001', '0', '2017-07-04 18:03:01', null);
INSERT INTO `osa_online_log` VALUES ('889', '1001', '0', '2017-07-04 18:04:01', null);
INSERT INTO `osa_online_log` VALUES ('890', '1001', '0', '2017-07-04 18:05:01', null);
INSERT INTO `osa_online_log` VALUES ('891', '1001', '0', '2017-07-04 18:06:01', null);
INSERT INTO `osa_online_log` VALUES ('892', '1001', '0', '2017-07-04 18:07:01', null);
INSERT INTO `osa_online_log` VALUES ('893', '1001', '0', '2017-07-04 18:08:01', null);
INSERT INTO `osa_online_log` VALUES ('894', '1001', '0', '2017-07-04 18:09:01', null);
INSERT INTO `osa_online_log` VALUES ('895', '1001', '0', '2017-07-04 18:10:01', null);
INSERT INTO `osa_online_log` VALUES ('896', '1001', '0', '2017-07-04 18:11:01', null);
INSERT INTO `osa_online_log` VALUES ('897', '1001', '0', '2017-07-10 15:47:09', null);
INSERT INTO `osa_online_log` VALUES ('898', '1001', '0', '2017-07-10 15:48:01', null);
INSERT INTO `osa_online_log` VALUES ('899', '1001', '0', '2017-07-10 15:49:01', null);
INSERT INTO `osa_online_log` VALUES ('900', '1001', '0', '2017-07-10 15:50:01', null);
INSERT INTO `osa_online_log` VALUES ('901', '1001', '0', '2017-07-10 15:51:01', null);
INSERT INTO `osa_online_log` VALUES ('902', '1001', '0', '2017-07-10 15:52:01', null);
INSERT INTO `osa_online_log` VALUES ('903', '1001', '0', '2017-07-10 15:53:01', null);
INSERT INTO `osa_online_log` VALUES ('904', '1001', '0', '2017-07-10 15:54:01', null);
INSERT INTO `osa_online_log` VALUES ('905', '1001', '0', '2017-07-10 15:55:01', null);
INSERT INTO `osa_online_log` VALUES ('906', '1001', '0', '2017-07-10 15:56:45', null);
INSERT INTO `osa_online_log` VALUES ('907', '1001', '0', '2017-07-10 15:57:04', null);
INSERT INTO `osa_online_log` VALUES ('908', '1001', '0', '2017-07-10 15:58:01', null);
INSERT INTO `osa_online_log` VALUES ('909', '1001', '0', '2017-07-10 15:59:01', null);
INSERT INTO `osa_online_log` VALUES ('910', '1001', '0', '2017-07-10 16:00:01', null);
INSERT INTO `osa_online_log` VALUES ('911', '1001', '0', '2017-07-10 16:01:01', null);
INSERT INTO `osa_online_log` VALUES ('912', '1001', '0', '2017-07-10 16:02:01', null);
INSERT INTO `osa_online_log` VALUES ('913', '1001', '0', '2017-07-10 16:03:01', null);
INSERT INTO `osa_online_log` VALUES ('914', '1001', '0', '2017-07-10 16:04:01', null);
INSERT INTO `osa_online_log` VALUES ('915', '1001', '0', '2017-07-10 16:05:01', null);
INSERT INTO `osa_online_log` VALUES ('916', '1001', '0', '2017-07-10 16:06:01', null);
INSERT INTO `osa_online_log` VALUES ('917', '1001', '0', '2017-07-10 16:07:01', null);
INSERT INTO `osa_online_log` VALUES ('918', '1001', '0', '2017-07-10 16:08:01', null);
INSERT INTO `osa_online_log` VALUES ('919', '1001', '0', '2017-07-10 16:09:01', null);
INSERT INTO `osa_online_log` VALUES ('920', '1001', '0', '2017-07-10 16:10:01', null);
INSERT INTO `osa_online_log` VALUES ('921', '1001', '0', '2017-07-10 16:11:01', null);
INSERT INTO `osa_online_log` VALUES ('922', '1001', '0', '2017-07-10 16:12:01', null);
INSERT INTO `osa_online_log` VALUES ('923', '1001', '0', '2017-07-10 16:13:01', null);
INSERT INTO `osa_online_log` VALUES ('924', '1001', '0', '2017-07-10 16:14:01', null);
INSERT INTO `osa_online_log` VALUES ('925', '1001', '0', '2017-07-10 16:15:01', null);
INSERT INTO `osa_online_log` VALUES ('926', '1001', '0', '2017-07-10 16:16:01', null);
INSERT INTO `osa_online_log` VALUES ('927', '1001', '0', '2017-07-10 16:17:01', null);
INSERT INTO `osa_online_log` VALUES ('928', '1001', '0', '2017-07-10 16:18:01', null);
INSERT INTO `osa_online_log` VALUES ('929', '1001', '0', '2017-07-10 16:19:01', null);
INSERT INTO `osa_online_log` VALUES ('930', '1001', '0', '2017-07-10 16:20:01', null);
INSERT INTO `osa_online_log` VALUES ('931', '1001', '0', '2017-07-10 16:21:01', null);
INSERT INTO `osa_online_log` VALUES ('932', '1001', '0', '2017-07-10 16:22:01', null);
INSERT INTO `osa_online_log` VALUES ('933', '1001', '0', '2017-07-10 16:23:01', null);
INSERT INTO `osa_online_log` VALUES ('934', '1001', '0', '2017-07-10 16:24:01', null);
INSERT INTO `osa_online_log` VALUES ('935', '1001', '0', '2017-07-10 16:25:01', null);
INSERT INTO `osa_online_log` VALUES ('936', '1001', '0', '2017-07-10 16:26:01', null);
INSERT INTO `osa_online_log` VALUES ('937', '1001', '0', '2017-07-10 16:32:01', null);
INSERT INTO `osa_online_log` VALUES ('938', '1001', '0', '2017-07-10 16:33:01', null);
INSERT INTO `osa_online_log` VALUES ('939', '1001', '0', '2017-07-10 16:34:01', null);
INSERT INTO `osa_online_log` VALUES ('940', '1001', '0', '2017-07-10 16:35:01', null);
INSERT INTO `osa_online_log` VALUES ('941', '1001', '0', '2017-07-10 16:36:01', null);
INSERT INTO `osa_online_log` VALUES ('942', '1001', '0', '2017-07-10 16:37:01', null);
INSERT INTO `osa_online_log` VALUES ('943', '1001', '0', '2017-07-10 16:38:01', null);
INSERT INTO `osa_online_log` VALUES ('944', '1001', '0', '2017-07-10 16:39:01', null);
INSERT INTO `osa_online_log` VALUES ('945', '1001', '0', '2017-07-10 16:40:01', null);
INSERT INTO `osa_online_log` VALUES ('946', '1001', '0', '2017-07-10 16:41:01', null);
INSERT INTO `osa_online_log` VALUES ('947', '1001', '0', '2017-07-10 16:42:01', null);
INSERT INTO `osa_online_log` VALUES ('948', '1001', '0', '2017-07-10 16:43:01', null);
INSERT INTO `osa_online_log` VALUES ('949', '1001', '0', '2017-07-10 16:44:01', null);
INSERT INTO `osa_online_log` VALUES ('950', '1001', '0', '2017-07-10 16:47:21', null);
INSERT INTO `osa_online_log` VALUES ('951', '1001', '0', '2017-07-10 16:47:21', null);
INSERT INTO `osa_online_log` VALUES ('952', '1001', '0', '2017-07-10 16:47:21', null);
INSERT INTO `osa_online_log` VALUES ('953', '1001', '0', '2017-07-10 16:48:01', null);
INSERT INTO `osa_online_log` VALUES ('954', '1001', '0', '2017-07-10 16:49:01', null);
INSERT INTO `osa_online_log` VALUES ('955', '1001', '0', '2017-07-10 16:50:01', null);
INSERT INTO `osa_online_log` VALUES ('956', '1001', '0', '2017-07-10 16:51:01', null);
INSERT INTO `osa_online_log` VALUES ('957', '1001', '0', '2017-07-10 16:52:01', null);
INSERT INTO `osa_online_log` VALUES ('958', '1001', '0', '2017-07-10 16:53:01', null);
INSERT INTO `osa_online_log` VALUES ('959', '1001', '0', '2017-07-10 16:54:01', null);
INSERT INTO `osa_online_log` VALUES ('960', '1001', '0', '2017-07-10 16:55:01', null);
INSERT INTO `osa_online_log` VALUES ('961', '1001', '0', '2017-07-10 16:56:01', null);
INSERT INTO `osa_online_log` VALUES ('962', '1001', '0', '2017-07-10 16:57:01', null);
INSERT INTO `osa_online_log` VALUES ('963', '1001', '0', '2017-07-10 16:58:01', null);
INSERT INTO `osa_online_log` VALUES ('964', '1001', '0', '2017-07-10 16:59:01', null);
INSERT INTO `osa_online_log` VALUES ('965', '1001', '0', '2017-07-10 17:00:01', null);
INSERT INTO `osa_online_log` VALUES ('966', '1001', '0', '2017-07-10 17:01:01', null);
INSERT INTO `osa_online_log` VALUES ('967', '1001', '0', '2017-07-10 17:02:01', null);
INSERT INTO `osa_online_log` VALUES ('968', '1001', '0', '2017-07-10 17:03:01', null);
INSERT INTO `osa_online_log` VALUES ('969', '1001', '0', '2017-07-10 17:04:01', null);
INSERT INTO `osa_online_log` VALUES ('970', '1001', '0', '2017-07-10 17:05:01', null);
INSERT INTO `osa_online_log` VALUES ('971', '1001', '0', '2017-07-10 17:06:01', null);
INSERT INTO `osa_online_log` VALUES ('972', '1001', '0', '2017-07-10 17:07:01', null);
INSERT INTO `osa_online_log` VALUES ('973', '1001', '0', '2017-07-10 17:08:01', null);
INSERT INTO `osa_online_log` VALUES ('974', '1001', '0', '2017-07-10 17:09:01', null);
INSERT INTO `osa_online_log` VALUES ('975', '1001', '0', '2017-07-10 17:10:01', null);
INSERT INTO `osa_online_log` VALUES ('976', '1001', '0', '2017-07-10 17:11:01', null);
INSERT INTO `osa_online_log` VALUES ('977', '1001', '0', '2017-07-10 17:22:01', null);
INSERT INTO `osa_online_log` VALUES ('978', '1001', '0', '2017-07-10 17:23:01', null);
INSERT INTO `osa_online_log` VALUES ('979', '1001', '0', '2017-07-10 17:24:01', null);
INSERT INTO `osa_online_log` VALUES ('980', '1001', '0', '2017-07-10 17:25:01', null);
INSERT INTO `osa_online_log` VALUES ('981', '1001', '0', '2017-07-10 17:26:01', null);
INSERT INTO `osa_online_log` VALUES ('982', '1001', '0', '2017-07-10 17:27:01', null);
INSERT INTO `osa_online_log` VALUES ('983', '1001', '0', '2017-07-10 17:28:01', null);
INSERT INTO `osa_online_log` VALUES ('984', '1001', '0', '2017-07-10 17:29:01', null);
INSERT INTO `osa_online_log` VALUES ('985', '1001', '0', '2017-07-10 17:30:01', null);
INSERT INTO `osa_online_log` VALUES ('986', '1001', '0', '2017-07-10 17:31:01', null);
INSERT INTO `osa_online_log` VALUES ('987', '1001', '0', '2017-07-10 17:32:01', null);
INSERT INTO `osa_online_log` VALUES ('988', '1001', '0', '2017-07-10 17:33:01', null);
INSERT INTO `osa_online_log` VALUES ('989', '1001', '0', '2017-07-10 17:45:02', null);
INSERT INTO `osa_online_log` VALUES ('990', '1001', '0', '2017-07-10 17:46:01', null);
INSERT INTO `osa_online_log` VALUES ('991', '1001', '0', '2017-07-10 17:47:01', null);
INSERT INTO `osa_online_log` VALUES ('992', '1001', '0', '2017-07-10 17:48:01', null);
INSERT INTO `osa_online_log` VALUES ('993', '1001', '0', '2017-07-10 17:49:01', null);
INSERT INTO `osa_online_log` VALUES ('994', '1001', '0', '2017-07-10 17:50:01', null);
INSERT INTO `osa_online_log` VALUES ('995', '1001', '0', '2017-07-10 17:51:01', null);
INSERT INTO `osa_online_log` VALUES ('996', '1001', '0', '2017-07-10 17:52:01', null);
INSERT INTO `osa_online_log` VALUES ('997', '1001', '0', '2017-07-10 17:53:01', null);
INSERT INTO `osa_online_log` VALUES ('998', '1001', '0', '2017-07-10 17:54:01', null);
INSERT INTO `osa_online_log` VALUES ('999', '1001', '0', '2017-07-10 17:55:01', null);
INSERT INTO `osa_online_log` VALUES ('1000', '1001', '0', '2017-07-10 17:56:01', null);
INSERT INTO `osa_online_log` VALUES ('1001', '1001', '0', '2017-07-10 17:57:01', null);
INSERT INTO `osa_online_log` VALUES ('1002', '1001', '0', '2017-07-10 17:58:01', null);
INSERT INTO `osa_online_log` VALUES ('1003', '1001', '0', '2017-07-10 17:59:01', null);
INSERT INTO `osa_online_log` VALUES ('1004', '1001', '0', '2017-07-10 18:04:01', null);
INSERT INTO `osa_online_log` VALUES ('1005', '1001', '0', '2017-07-10 18:05:01', null);
INSERT INTO `osa_online_log` VALUES ('1006', '1001', '0', '2017-07-10 18:06:01', null);
INSERT INTO `osa_online_log` VALUES ('1007', '1001', '0', '2017-07-10 18:07:01', null);
INSERT INTO `osa_online_log` VALUES ('1008', '1001', '0', '2017-07-10 18:08:01', null);
INSERT INTO `osa_online_log` VALUES ('1009', '1001', '0', '2017-07-10 18:09:01', null);
INSERT INTO `osa_online_log` VALUES ('1010', '1001', '0', '2017-07-10 18:10:01', null);
INSERT INTO `osa_online_log` VALUES ('1011', '1001', '0', '2017-07-10 18:11:01', null);
INSERT INTO `osa_online_log` VALUES ('1012', '1001', '0', '2017-07-10 18:12:01', null);
INSERT INTO `osa_online_log` VALUES ('1013', '1001', '0', '2017-07-10 18:13:01', null);
INSERT INTO `osa_online_log` VALUES ('1014', '1001', '0', '2017-07-10 18:14:01', null);
INSERT INTO `osa_online_log` VALUES ('1015', '1001', '0', '2017-07-10 18:15:01', null);
INSERT INTO `osa_online_log` VALUES ('1016', '1001', '0', '2017-07-10 18:16:01', null);
INSERT INTO `osa_online_log` VALUES ('1017', '1001', '0', '2017-07-10 18:17:01', null);
INSERT INTO `osa_online_log` VALUES ('1018', '1001', '0', '2017-07-10 18:18:01', null);
INSERT INTO `osa_online_log` VALUES ('1019', '1001', '0', '2017-07-10 18:19:01', null);
INSERT INTO `osa_online_log` VALUES ('1020', '1001', '0', '2017-07-10 18:20:01', null);
INSERT INTO `osa_online_log` VALUES ('1021', '1001', '0', '2017-07-10 18:21:01', null);
INSERT INTO `osa_online_log` VALUES ('1022', '1001', '0', '2017-07-10 18:22:01', null);
INSERT INTO `osa_online_log` VALUES ('1023', '1001', '0', '2017-07-10 18:23:01', null);
INSERT INTO `osa_online_log` VALUES ('1024', '1001', '0', '2017-07-10 18:24:01', null);
INSERT INTO `osa_online_log` VALUES ('1025', '1001', '0', '2017-07-10 18:25:01', null);
INSERT INTO `osa_online_log` VALUES ('1026', '1001', '0', '2017-07-10 18:26:01', null);
INSERT INTO `osa_online_log` VALUES ('1027', '1001', '0', '2017-07-10 18:27:01', null);
INSERT INTO `osa_online_log` VALUES ('1028', '1001', '0', '2017-07-10 18:28:01', null);
INSERT INTO `osa_online_log` VALUES ('1029', '1001', '0', '2017-07-10 19:52:02', null);
INSERT INTO `osa_online_log` VALUES ('1030', '1001', '0', '2017-07-10 19:53:01', null);
INSERT INTO `osa_online_log` VALUES ('1031', '1001', '0', '2017-07-11 13:37:08', null);
INSERT INTO `osa_online_log` VALUES ('1032', '1001', '0', '2017-07-11 13:38:01', null);
INSERT INTO `osa_online_log` VALUES ('1033', '1001', '0', '2017-07-11 13:39:01', null);
INSERT INTO `osa_online_log` VALUES ('1034', '1001', '0', '2017-07-11 13:40:17', null);
INSERT INTO `osa_online_log` VALUES ('1035', '1001', '0', '2017-07-11 13:41:01', null);
INSERT INTO `osa_online_log` VALUES ('1036', '1001', '0', '2017-07-11 13:42:01', null);
INSERT INTO `osa_online_log` VALUES ('1037', '1001', '0', '2017-07-11 13:43:01', null);
INSERT INTO `osa_online_log` VALUES ('1038', '1001', '0', '2017-07-11 13:44:01', null);
INSERT INTO `osa_online_log` VALUES ('1039', '1001', '0', '2017-07-11 13:45:01', null);
INSERT INTO `osa_online_log` VALUES ('1040', '1001', '0', '2017-07-11 13:46:01', null);
INSERT INTO `osa_online_log` VALUES ('1041', '1001', '0', '2017-07-11 13:47:01', null);
INSERT INTO `osa_online_log` VALUES ('1042', '1001', '0', '2017-07-11 13:48:01', null);
INSERT INTO `osa_online_log` VALUES ('1043', '1001', '0', '2017-07-11 13:49:01', null);
INSERT INTO `osa_online_log` VALUES ('1044', '1001', '0', '2017-07-11 13:50:01', null);
INSERT INTO `osa_online_log` VALUES ('1045', '1001', '0', '2017-07-11 13:51:01', null);
INSERT INTO `osa_online_log` VALUES ('1046', '1001', '0', '2017-07-11 13:52:01', null);
INSERT INTO `osa_online_log` VALUES ('1047', '1001', '0', '2017-08-07 18:43:09', null);
INSERT INTO `osa_online_log` VALUES ('1048', '1001', '0', '2017-08-07 18:44:01', null);
INSERT INTO `osa_online_log` VALUES ('1049', '1001', '0', '2017-08-07 18:45:01', null);
INSERT INTO `osa_online_log` VALUES ('1050', '1001', '0', '2017-08-07 18:46:01', null);
INSERT INTO `osa_online_log` VALUES ('1051', '1001', '0', '2017-08-07 18:47:01', null);
INSERT INTO `osa_online_log` VALUES ('1052', '1001', '0', '2017-08-07 18:56:06', null);
INSERT INTO `osa_online_log` VALUES ('1053', '1001', '0', '2017-08-07 18:57:01', null);
INSERT INTO `osa_online_log` VALUES ('1054', '1001', '0', '2017-08-07 18:58:01', null);
INSERT INTO `osa_online_log` VALUES ('1055', '1001', '0', '2017-08-07 18:59:01', null);
INSERT INTO `osa_online_log` VALUES ('1056', '1001', '0', '2017-08-07 19:00:01', null);
INSERT INTO `osa_online_log` VALUES ('1057', '1001', '0', '2017-08-07 19:01:01', null);
INSERT INTO `osa_online_log` VALUES ('1058', '1001', '0', '2017-08-07 19:02:01', null);
INSERT INTO `osa_online_log` VALUES ('1059', '1001', '0', '2017-08-07 19:03:01', null);
INSERT INTO `osa_online_log` VALUES ('1060', '1001', '0', '2017-08-07 19:04:01', null);
INSERT INTO `osa_online_log` VALUES ('1061', '1001', '0', '2017-08-07 19:05:01', null);
INSERT INTO `osa_online_log` VALUES ('1062', '1001', '0', '2017-08-07 19:06:01', null);
INSERT INTO `osa_online_log` VALUES ('1063', '1001', '0', '2017-08-07 19:07:01', null);
INSERT INTO `osa_online_log` VALUES ('1064', '1001', '0', '2017-08-10 10:15:04', null);
INSERT INTO `osa_online_log` VALUES ('1065', '1001', '0', '2017-08-10 10:16:01', null);
INSERT INTO `osa_online_log` VALUES ('1066', '1001', '0', '2017-08-10 10:17:01', null);
INSERT INTO `osa_online_log` VALUES ('1067', '1001', '0', '2017-08-10 10:18:01', null);
INSERT INTO `osa_online_log` VALUES ('1068', '1001', '1', '2017-08-10 10:19:01', null);
INSERT INTO `osa_online_log` VALUES ('1069', '1001', '1', '2017-08-10 10:20:01', null);
INSERT INTO `osa_online_log` VALUES ('1070', '1001', '1', '2017-08-10 10:21:01', null);
INSERT INTO `osa_online_log` VALUES ('1071', '1001', '0', '2017-08-10 10:22:01', null);
INSERT INTO `osa_online_log` VALUES ('1072', '1001', '0', '2017-08-10 10:23:01', null);
INSERT INTO `osa_online_log` VALUES ('1073', '1001', '0', '2017-08-10 10:24:01', null);
INSERT INTO `osa_online_log` VALUES ('1074', '1001', '0', '2017-08-10 10:25:01', null);
INSERT INTO `osa_online_log` VALUES ('1075', '1001', '0', '2017-08-10 10:26:01', null);
INSERT INTO `osa_online_log` VALUES ('1076', '1001', '0', '2017-08-10 10:27:01', null);
INSERT INTO `osa_online_log` VALUES ('1077', '1001', '0', '2017-08-10 10:28:01', null);
INSERT INTO `osa_online_log` VALUES ('1078', '1001', '0', '2017-08-10 10:29:01', null);
INSERT INTO `osa_online_log` VALUES ('1079', '1001', '0', '2017-08-10 10:30:01', null);
INSERT INTO `osa_online_log` VALUES ('1080', '1001', '1', '2017-08-10 10:31:01', null);
INSERT INTO `osa_online_log` VALUES ('1081', '1001', '1', '2017-08-10 10:32:01', null);
INSERT INTO `osa_online_log` VALUES ('1082', '1001', '1', '2017-08-10 10:33:01', null);
INSERT INTO `osa_online_log` VALUES ('1083', '1001', '1', '2017-08-10 10:34:01', null);
INSERT INTO `osa_online_log` VALUES ('1084', '1001', '0', '2017-08-10 10:35:01', null);
INSERT INTO `osa_online_log` VALUES ('1085', '1001', '0', '2017-08-10 10:36:01', null);
INSERT INTO `osa_online_log` VALUES ('1086', '1001', '0', '2017-08-10 10:37:01', null);
INSERT INTO `osa_online_log` VALUES ('1087', '1001', '0', '2017-08-10 10:38:01', null);
INSERT INTO `osa_online_log` VALUES ('1088', '1001', '0', '2017-08-10 10:39:01', null);
INSERT INTO `osa_online_log` VALUES ('1089', '1001', '0', '2017-08-10 10:40:01', null);
INSERT INTO `osa_online_log` VALUES ('1090', '1001', '0', '2017-08-10 10:41:01', null);
INSERT INTO `osa_online_log` VALUES ('1091', '1001', '0', '2017-08-10 10:42:01', null);
INSERT INTO `osa_online_log` VALUES ('1092', '1001', '0', '2017-08-10 10:43:01', null);
INSERT INTO `osa_online_log` VALUES ('1093', '1001', '0', '2017-08-10 10:44:01', null);
INSERT INTO `osa_online_log` VALUES ('1094', '1001', '0', '2017-08-10 10:45:01', null);
INSERT INTO `osa_online_log` VALUES ('1095', '1001', '0', '2017-08-10 10:46:01', null);
INSERT INTO `osa_online_log` VALUES ('1096', '1001', '0', '2017-08-10 10:47:01', null);
INSERT INTO `osa_online_log` VALUES ('1097', '1001', '0', '2017-08-10 10:48:01', null);
INSERT INTO `osa_online_log` VALUES ('1098', '1001', '0', '2017-08-10 10:49:01', null);
INSERT INTO `osa_online_log` VALUES ('1099', '1001', '0', '2017-08-10 10:50:01', null);
INSERT INTO `osa_online_log` VALUES ('1100', '1001', '0', '2017-08-10 10:51:01', null);
INSERT INTO `osa_online_log` VALUES ('1101', '1001', '0', '2017-08-10 10:52:01', null);
INSERT INTO `osa_online_log` VALUES ('1102', '1001', '0', '2017-08-10 10:53:01', null);
INSERT INTO `osa_online_log` VALUES ('1103', '1001', '0', '2017-08-10 10:54:01', null);
INSERT INTO `osa_online_log` VALUES ('1104', '1001', '0', '2017-08-10 10:55:01', null);
INSERT INTO `osa_online_log` VALUES ('1105', '1001', '0', '2017-08-10 10:56:01', null);
INSERT INTO `osa_online_log` VALUES ('1106', '1001', '0', '2017-08-10 10:57:01', null);
INSERT INTO `osa_online_log` VALUES ('1107', '1001', '0', '2017-08-10 10:58:01', null);
INSERT INTO `osa_online_log` VALUES ('1108', '1001', '0', '2017-08-10 10:59:01', null);
INSERT INTO `osa_online_log` VALUES ('1109', '1001', '0', '2017-08-10 11:00:01', null);
INSERT INTO `osa_online_log` VALUES ('1110', '1001', '0', '2017-08-10 11:01:01', null);
INSERT INTO `osa_online_log` VALUES ('1111', '1001', '0', '2017-08-10 11:02:01', null);
INSERT INTO `osa_online_log` VALUES ('1112', '1001', '0', '2017-08-10 11:03:01', null);
INSERT INTO `osa_online_log` VALUES ('1113', '1001', '0', '2017-08-10 11:04:01', null);
INSERT INTO `osa_online_log` VALUES ('1114', '1001', '0', '2017-08-10 11:05:01', null);
INSERT INTO `osa_online_log` VALUES ('1115', '1001', '0', '2017-08-10 11:06:01', null);
INSERT INTO `osa_online_log` VALUES ('1116', '1001', '0', '2017-08-10 11:07:01', null);
INSERT INTO `osa_online_log` VALUES ('1117', '1001', '0', '2017-08-10 11:08:01', null);
INSERT INTO `osa_online_log` VALUES ('1118', '1001', '0', '2017-08-10 11:09:01', null);
INSERT INTO `osa_online_log` VALUES ('1119', '1001', '0', '2017-08-10 11:10:01', null);
INSERT INTO `osa_online_log` VALUES ('1120', '1001', '0', '2017-08-10 11:11:01', null);
INSERT INTO `osa_online_log` VALUES ('1121', '1001', '0', '2017-08-10 11:12:01', null);
INSERT INTO `osa_online_log` VALUES ('1122', '1001', '0', '2017-08-10 11:13:01', null);
INSERT INTO `osa_online_log` VALUES ('1123', '1001', '0', '2017-08-10 11:14:01', null);
INSERT INTO `osa_online_log` VALUES ('1124', '1001', '0', '2017-08-10 11:15:01', null);
INSERT INTO `osa_online_log` VALUES ('1125', '1001', '0', '2017-08-10 11:16:01', null);
INSERT INTO `osa_online_log` VALUES ('1126', '1001', '0', '2017-08-10 11:17:01', null);
INSERT INTO `osa_online_log` VALUES ('1127', '1001', '0', '2017-08-10 11:18:01', null);
INSERT INTO `osa_online_log` VALUES ('1128', '1001', '0', '2017-08-10 11:19:01', null);
INSERT INTO `osa_online_log` VALUES ('1129', '1001', '0', '2017-08-10 11:20:01', null);
INSERT INTO `osa_online_log` VALUES ('1130', '1001', '0', '2017-08-10 11:21:01', null);
INSERT INTO `osa_online_log` VALUES ('1131', '1001', '0', '2017-08-10 11:22:01', null);
INSERT INTO `osa_online_log` VALUES ('1132', '1001', '0', '2017-08-10 11:23:01', null);
INSERT INTO `osa_online_log` VALUES ('1133', '1001', '0', '2017-08-10 11:24:01', null);
INSERT INTO `osa_online_log` VALUES ('1134', '1001', '0', '2017-08-10 11:25:01', null);
INSERT INTO `osa_online_log` VALUES ('1135', '1001', '0', '2017-08-10 11:26:01', null);
INSERT INTO `osa_online_log` VALUES ('1136', '1001', '0', '2017-08-10 11:27:01', null);
INSERT INTO `osa_online_log` VALUES ('1137', '1001', '0', '2017-08-10 11:28:01', null);
INSERT INTO `osa_online_log` VALUES ('1138', '1001', '0', '2017-08-10 11:29:01', null);
INSERT INTO `osa_online_log` VALUES ('1139', '1001', '0', '2017-08-10 11:30:01', null);
INSERT INTO `osa_online_log` VALUES ('1140', '1001', '0', '2017-08-10 11:31:01', null);
INSERT INTO `osa_online_log` VALUES ('1141', '1001', '0', '2017-08-10 11:32:01', null);
INSERT INTO `osa_online_log` VALUES ('1142', '1001', '0', '2017-08-10 11:33:01', null);
INSERT INTO `osa_online_log` VALUES ('1143', '1001', '0', '2017-08-10 11:34:01', null);
INSERT INTO `osa_online_log` VALUES ('1144', '1001', '0', '2017-08-10 11:35:01', null);
INSERT INTO `osa_online_log` VALUES ('1145', '1001', '0', '2017-08-10 11:36:01', null);
INSERT INTO `osa_online_log` VALUES ('1146', '1001', '0', '2017-08-10 11:37:01', null);
INSERT INTO `osa_online_log` VALUES ('1147', '1001', '0', '2017-08-10 11:38:01', null);
INSERT INTO `osa_online_log` VALUES ('1148', '1001', '0', '2017-08-10 11:39:01', null);
INSERT INTO `osa_online_log` VALUES ('1149', '1001', '0', '2017-08-10 11:40:01', null);
INSERT INTO `osa_online_log` VALUES ('1150', '1001', '0', '2017-08-10 11:41:01', null);
INSERT INTO `osa_online_log` VALUES ('1151', '1001', '0', '2017-08-10 11:42:01', null);
INSERT INTO `osa_online_log` VALUES ('1152', '1001', '0', '2017-08-10 11:43:01', null);
INSERT INTO `osa_online_log` VALUES ('1153', '1001', '0', '2017-08-10 11:44:01', null);
INSERT INTO `osa_online_log` VALUES ('1154', '1001', '0', '2017-08-10 11:45:01', null);
INSERT INTO `osa_online_log` VALUES ('1155', '1001', '0', '2017-08-10 11:46:01', null);
INSERT INTO `osa_online_log` VALUES ('1156', '1001', '0', '2017-08-10 11:47:01', null);
INSERT INTO `osa_online_log` VALUES ('1157', '1001', '0', '2017-08-10 11:48:01', null);
INSERT INTO `osa_online_log` VALUES ('1158', '1001', '0', '2017-08-10 11:49:01', null);
INSERT INTO `osa_online_log` VALUES ('1159', '1001', '0', '2017-08-10 11:50:01', null);
INSERT INTO `osa_online_log` VALUES ('1160', '1001', '0', '2017-08-10 11:51:01', null);
INSERT INTO `osa_online_log` VALUES ('1161', '1001', '0', '2017-08-10 11:52:01', null);
INSERT INTO `osa_online_log` VALUES ('1162', '1001', '0', '2017-08-10 11:53:01', null);
INSERT INTO `osa_online_log` VALUES ('1163', '1001', '0', '2017-08-10 11:54:01', null);
INSERT INTO `osa_online_log` VALUES ('1164', '1001', '0', '2017-08-10 11:55:01', null);
INSERT INTO `osa_online_log` VALUES ('1165', '1001', '0', '2017-08-10 11:56:01', null);
INSERT INTO `osa_online_log` VALUES ('1166', '1001', '0', '2017-08-10 11:57:01', null);
INSERT INTO `osa_online_log` VALUES ('1167', '1001', '0', '2017-08-10 11:58:01', null);
INSERT INTO `osa_online_log` VALUES ('1168', '1001', '0', '2017-08-10 11:59:01', null);
INSERT INTO `osa_online_log` VALUES ('1169', '1001', '0', '2017-08-10 12:00:01', null);
INSERT INTO `osa_online_log` VALUES ('1170', '1001', '0', '2017-08-10 12:01:01', null);
INSERT INTO `osa_online_log` VALUES ('1171', '1001', '0', '2017-08-10 12:02:01', null);
INSERT INTO `osa_online_log` VALUES ('1172', '1001', '0', '2017-08-10 12:03:01', null);
INSERT INTO `osa_online_log` VALUES ('1173', '1001', '0', '2017-08-10 12:04:01', null);
INSERT INTO `osa_online_log` VALUES ('1174', '1001', '0', '2017-08-10 12:05:01', null);
INSERT INTO `osa_online_log` VALUES ('1175', '1001', '0', '2017-08-10 12:06:01', null);
INSERT INTO `osa_online_log` VALUES ('1176', '1001', '0', '2017-08-10 12:07:01', null);
INSERT INTO `osa_online_log` VALUES ('1177', '1001', '0', '2017-08-10 12:08:01', null);
INSERT INTO `osa_online_log` VALUES ('1178', '1001', '0', '2017-08-10 12:09:01', null);
INSERT INTO `osa_online_log` VALUES ('1179', '1001', '0', '2017-08-10 12:10:01', null);
INSERT INTO `osa_online_log` VALUES ('1180', '1001', '0', '2017-08-10 12:11:01', null);
INSERT INTO `osa_online_log` VALUES ('1181', '1001', '0', '2017-08-10 12:12:01', null);
INSERT INTO `osa_online_log` VALUES ('1182', '1001', '0', '2017-08-10 12:13:01', null);
INSERT INTO `osa_online_log` VALUES ('1183', '1001', '0', '2017-08-10 12:14:01', null);
INSERT INTO `osa_online_log` VALUES ('1184', '1001', '0', '2017-08-10 12:15:01', null);
INSERT INTO `osa_online_log` VALUES ('1185', '1001', '0', '2017-08-10 12:16:01', null);
INSERT INTO `osa_online_log` VALUES ('1186', '1001', '0', '2017-08-10 12:17:01', null);
INSERT INTO `osa_online_log` VALUES ('1187', '1001', '0', '2017-08-10 12:18:01', null);
INSERT INTO `osa_online_log` VALUES ('1188', '1001', '0', '2017-08-10 12:19:01', null);
INSERT INTO `osa_online_log` VALUES ('1189', '1001', '0', '2017-08-10 12:20:01', null);
INSERT INTO `osa_online_log` VALUES ('1190', '1001', '0', '2017-08-10 12:21:01', null);
INSERT INTO `osa_online_log` VALUES ('1191', '1001', '0', '2017-08-10 12:22:01', null);
INSERT INTO `osa_online_log` VALUES ('1192', '1001', '0', '2017-08-10 12:23:01', null);
INSERT INTO `osa_online_log` VALUES ('1193', '1001', '0', '2017-08-10 12:24:01', null);
INSERT INTO `osa_online_log` VALUES ('1194', '1001', '0', '2017-08-10 12:25:01', null);
INSERT INTO `osa_online_log` VALUES ('1195', '1001', '0', '2017-08-10 12:26:01', null);
INSERT INTO `osa_online_log` VALUES ('1196', '1001', '0', '2017-08-10 12:27:01', null);
INSERT INTO `osa_online_log` VALUES ('1197', '1001', '0', '2017-08-10 12:28:01', null);
INSERT INTO `osa_online_log` VALUES ('1198', '1001', '0', '2017-08-10 12:29:01', null);
INSERT INTO `osa_online_log` VALUES ('1199', '1001', '0', '2017-08-10 12:30:01', null);
INSERT INTO `osa_online_log` VALUES ('1200', '1001', '0', '2017-08-10 12:31:01', null);
INSERT INTO `osa_online_log` VALUES ('1201', '1001', '0', '2017-08-10 12:32:01', null);
INSERT INTO `osa_online_log` VALUES ('1202', '1001', '0', '2017-08-10 12:33:01', null);
INSERT INTO `osa_online_log` VALUES ('1203', '1001', '0', '2017-08-10 12:34:01', null);
INSERT INTO `osa_online_log` VALUES ('1204', '1001', '0', '2017-08-10 12:35:01', null);
INSERT INTO `osa_online_log` VALUES ('1205', '1001', '0', '2017-08-10 12:36:01', null);
INSERT INTO `osa_online_log` VALUES ('1206', '1001', '0', '2017-08-10 12:37:01', null);
INSERT INTO `osa_online_log` VALUES ('1207', '1001', '0', '2017-08-10 12:38:01', null);
INSERT INTO `osa_online_log` VALUES ('1208', '1001', '0', '2017-08-10 12:39:01', null);
INSERT INTO `osa_online_log` VALUES ('1209', '1001', '0', '2017-08-10 12:40:01', null);
INSERT INTO `osa_online_log` VALUES ('1210', '1001', '0', '2017-08-10 12:41:01', null);
INSERT INTO `osa_online_log` VALUES ('1211', '1001', '0', '2017-08-10 12:42:01', null);
INSERT INTO `osa_online_log` VALUES ('1212', '1001', '0', '2017-08-10 12:43:01', null);
INSERT INTO `osa_online_log` VALUES ('1213', '1001', '0', '2017-08-10 12:44:01', null);
INSERT INTO `osa_online_log` VALUES ('1214', '1001', '0', '2017-08-10 12:45:01', null);
INSERT INTO `osa_online_log` VALUES ('1215', '1001', '0', '2017-08-10 12:46:01', null);
INSERT INTO `osa_online_log` VALUES ('1216', '1001', '0', '2017-08-10 12:47:01', null);
INSERT INTO `osa_online_log` VALUES ('1217', '1001', '0', '2017-08-10 12:48:01', null);
INSERT INTO `osa_online_log` VALUES ('1218', '1001', '0', '2017-08-10 12:49:01', null);
INSERT INTO `osa_online_log` VALUES ('1219', '1001', '0', '2017-08-10 12:50:01', null);
INSERT INTO `osa_online_log` VALUES ('1220', '1001', '0', '2017-08-10 12:51:01', null);
INSERT INTO `osa_online_log` VALUES ('1221', '1001', '0', '2017-08-10 12:52:01', null);
INSERT INTO `osa_online_log` VALUES ('1222', '1001', '0', '2017-08-10 12:53:01', null);
INSERT INTO `osa_online_log` VALUES ('1223', '1001', '0', '2017-08-10 12:54:01', null);
INSERT INTO `osa_online_log` VALUES ('1224', '1001', '0', '2017-08-10 12:55:01', null);
INSERT INTO `osa_online_log` VALUES ('1225', '1001', '0', '2017-08-10 12:56:01', null);
INSERT INTO `osa_online_log` VALUES ('1226', '1001', '0', '2017-08-10 12:57:01', null);
INSERT INTO `osa_online_log` VALUES ('1227', '1001', '0', '2017-08-10 12:58:01', null);
INSERT INTO `osa_online_log` VALUES ('1228', '1001', '0', '2017-08-10 12:59:01', null);
INSERT INTO `osa_online_log` VALUES ('1229', '1001', '0', '2017-08-10 13:00:01', null);
INSERT INTO `osa_online_log` VALUES ('1230', '1001', '0', '2017-08-10 13:01:01', null);
INSERT INTO `osa_online_log` VALUES ('1231', '1001', '0', '2017-08-10 13:02:01', null);
INSERT INTO `osa_online_log` VALUES ('1232', '1001', '0', '2017-08-10 13:03:01', null);
INSERT INTO `osa_online_log` VALUES ('1233', '1001', '0', '2017-08-10 13:04:01', null);
INSERT INTO `osa_online_log` VALUES ('1234', '1001', '0', '2017-08-10 13:05:01', null);
INSERT INTO `osa_online_log` VALUES ('1235', '1001', '0', '2017-08-10 13:06:01', null);
INSERT INTO `osa_online_log` VALUES ('1236', '1001', '0', '2017-08-10 13:07:01', null);
INSERT INTO `osa_online_log` VALUES ('1237', '1001', '0', '2017-08-10 13:08:01', null);
INSERT INTO `osa_online_log` VALUES ('1238', '1001', '0', '2017-08-10 13:09:01', null);
INSERT INTO `osa_online_log` VALUES ('1239', '1001', '0', '2017-08-10 13:10:01', null);
INSERT INTO `osa_online_log` VALUES ('1240', '1001', '0', '2017-08-10 13:11:01', null);
INSERT INTO `osa_online_log` VALUES ('1241', '1001', '0', '2017-08-10 13:12:01', null);
INSERT INTO `osa_online_log` VALUES ('1242', '1001', '0', '2017-08-10 13:13:01', null);
INSERT INTO `osa_online_log` VALUES ('1243', '1001', '0', '2017-08-10 13:14:01', null);
INSERT INTO `osa_online_log` VALUES ('1244', '1001', '0', '2017-08-10 13:15:01', null);
INSERT INTO `osa_online_log` VALUES ('1245', '1001', '0', '2017-08-10 13:16:01', null);
INSERT INTO `osa_online_log` VALUES ('1246', '1001', '0', '2017-08-10 13:17:01', null);
INSERT INTO `osa_online_log` VALUES ('1247', '1001', '0', '2017-08-10 13:18:01', null);
INSERT INTO `osa_online_log` VALUES ('1248', '1001', '0', '2017-08-10 13:19:01', null);
INSERT INTO `osa_online_log` VALUES ('1249', '1001', '0', '2017-08-10 13:20:01', null);
INSERT INTO `osa_online_log` VALUES ('1250', '1001', '0', '2017-08-10 13:21:01', null);
INSERT INTO `osa_online_log` VALUES ('1251', '1001', '0', '2017-08-10 13:22:01', null);
INSERT INTO `osa_online_log` VALUES ('1252', '1001', '0', '2017-08-10 13:23:01', null);
INSERT INTO `osa_online_log` VALUES ('1253', '1001', '0', '2017-08-10 13:24:01', null);
INSERT INTO `osa_online_log` VALUES ('1254', '1001', '0', '2017-08-10 13:25:01', null);
INSERT INTO `osa_online_log` VALUES ('1255', '1001', '0', '2017-08-10 13:26:01', null);
INSERT INTO `osa_online_log` VALUES ('1256', '1001', '0', '2017-08-10 13:27:01', null);
INSERT INTO `osa_online_log` VALUES ('1257', '1001', '0', '2017-08-10 13:28:01', null);
INSERT INTO `osa_online_log` VALUES ('1258', '1001', '0', '2017-08-10 13:29:01', null);
INSERT INTO `osa_online_log` VALUES ('1259', '1001', '0', '2017-08-10 13:30:01', null);
INSERT INTO `osa_online_log` VALUES ('1260', '1001', '0', '2017-08-10 13:31:01', null);
INSERT INTO `osa_online_log` VALUES ('1261', '1001', '0', '2017-08-10 13:32:01', null);
INSERT INTO `osa_online_log` VALUES ('1262', '1001', '0', '2017-08-10 13:33:01', null);
INSERT INTO `osa_online_log` VALUES ('1263', '1001', '0', '2017-08-10 13:34:01', null);
INSERT INTO `osa_online_log` VALUES ('1264', '1001', '0', '2017-08-10 13:35:01', null);
INSERT INTO `osa_online_log` VALUES ('1265', '1001', '0', '2017-08-10 13:36:01', null);
INSERT INTO `osa_online_log` VALUES ('1266', '1001', '0', '2017-08-10 13:37:01', null);
INSERT INTO `osa_online_log` VALUES ('1267', '1001', '0', '2017-08-10 13:38:01', null);
INSERT INTO `osa_online_log` VALUES ('1268', '1001', '0', '2017-08-10 13:39:01', null);
INSERT INTO `osa_online_log` VALUES ('1269', '1001', '0', '2017-08-10 13:40:01', null);
INSERT INTO `osa_online_log` VALUES ('1270', '1001', '0', '2017-08-10 13:41:01', null);
INSERT INTO `osa_online_log` VALUES ('1271', '1001', '0', '2017-08-10 13:42:01', null);
INSERT INTO `osa_online_log` VALUES ('1272', '1001', '0', '2017-08-10 13:43:01', null);
INSERT INTO `osa_online_log` VALUES ('1273', '1001', '0', '2017-08-10 13:44:01', null);
INSERT INTO `osa_online_log` VALUES ('1274', '1001', '0', '2017-08-10 13:45:01', null);
INSERT INTO `osa_online_log` VALUES ('1275', '1001', '0', '2017-08-10 13:46:01', null);
INSERT INTO `osa_online_log` VALUES ('1276', '1001', '0', '2017-08-10 13:47:01', null);
INSERT INTO `osa_online_log` VALUES ('1277', '1001', '0', '2017-08-10 13:48:01', null);
INSERT INTO `osa_online_log` VALUES ('1278', '1001', '0', '2017-08-10 13:49:01', null);
INSERT INTO `osa_online_log` VALUES ('1279', '1001', '0', '2017-08-10 13:50:01', null);
INSERT INTO `osa_online_log` VALUES ('1280', '1001', '0', '2017-08-10 13:51:01', null);
INSERT INTO `osa_online_log` VALUES ('1281', '1001', '0', '2017-08-10 13:52:01', null);
INSERT INTO `osa_online_log` VALUES ('1282', '1001', '0', '2017-08-10 13:53:01', null);
INSERT INTO `osa_online_log` VALUES ('1283', '1001', '0', '2017-08-10 13:54:01', null);
INSERT INTO `osa_online_log` VALUES ('1284', '1001', '0', '2017-08-10 13:55:01', null);
INSERT INTO `osa_online_log` VALUES ('1285', '1001', '0', '2017-08-10 13:56:01', null);
INSERT INTO `osa_online_log` VALUES ('1286', '1001', '0', '2017-08-10 13:57:01', null);
INSERT INTO `osa_online_log` VALUES ('1287', '1001', '0', '2017-08-10 13:58:01', null);
INSERT INTO `osa_online_log` VALUES ('1288', '1001', '0', '2017-08-10 13:59:01', null);
INSERT INTO `osa_online_log` VALUES ('1289', '1001', '0', '2017-08-10 14:00:01', null);
INSERT INTO `osa_online_log` VALUES ('1290', '1001', '0', '2017-08-10 14:01:01', null);
INSERT INTO `osa_online_log` VALUES ('1291', '1001', '0', '2017-08-10 14:02:01', null);
INSERT INTO `osa_online_log` VALUES ('1292', '1001', '0', '2017-08-10 14:03:01', null);
INSERT INTO `osa_online_log` VALUES ('1293', '1001', '0', '2017-08-10 14:04:01', null);
INSERT INTO `osa_online_log` VALUES ('1294', '1001', '0', '2017-08-10 14:05:01', null);
INSERT INTO `osa_online_log` VALUES ('1295', '1001', '0', '2017-08-10 14:06:01', null);
INSERT INTO `osa_online_log` VALUES ('1296', '1001', '0', '2017-08-10 14:07:01', null);
INSERT INTO `osa_online_log` VALUES ('1297', '1001', '0', '2017-08-10 14:08:01', null);
INSERT INTO `osa_online_log` VALUES ('1298', '1001', '0', '2017-08-10 14:09:01', null);
INSERT INTO `osa_online_log` VALUES ('1299', '1001', '0', '2017-08-10 14:10:01', null);
INSERT INTO `osa_online_log` VALUES ('1300', '1001', '0', '2017-08-10 14:11:01', null);
INSERT INTO `osa_online_log` VALUES ('1301', '1001', '0', '2017-08-10 14:12:01', null);
INSERT INTO `osa_online_log` VALUES ('1302', '1001', '0', '2017-08-10 14:13:01', null);
INSERT INTO `osa_online_log` VALUES ('1303', '1001', '0', '2017-08-10 14:14:01', null);
INSERT INTO `osa_online_log` VALUES ('1304', '1001', '0', '2017-08-10 14:15:01', null);
INSERT INTO `osa_online_log` VALUES ('1305', '1001', '0', '2017-08-10 14:16:01', null);
INSERT INTO `osa_online_log` VALUES ('1306', '1001', '0', '2017-08-10 14:17:01', null);
INSERT INTO `osa_online_log` VALUES ('1307', '1001', '0', '2017-08-10 14:18:01', null);
INSERT INTO `osa_online_log` VALUES ('1308', '1001', '0', '2017-08-10 14:19:01', null);
INSERT INTO `osa_online_log` VALUES ('1309', '1001', '0', '2017-08-10 14:20:01', null);
INSERT INTO `osa_online_log` VALUES ('1310', '1001', '0', '2017-08-10 14:21:01', null);
INSERT INTO `osa_online_log` VALUES ('1311', '1001', '0', '2017-08-10 14:22:01', null);
INSERT INTO `osa_online_log` VALUES ('1312', '1001', '0', '2017-08-10 14:23:01', null);
INSERT INTO `osa_online_log` VALUES ('1313', '1001', '0', '2017-08-10 14:24:01', null);
INSERT INTO `osa_online_log` VALUES ('1314', '1001', '0', '2017-08-10 14:25:01', null);
INSERT INTO `osa_online_log` VALUES ('1315', '1001', '0', '2017-08-10 14:26:01', null);
INSERT INTO `osa_online_log` VALUES ('1316', '1001', '0', '2017-08-10 14:27:01', null);
INSERT INTO `osa_online_log` VALUES ('1317', '1001', '0', '2017-08-10 14:28:01', null);
INSERT INTO `osa_online_log` VALUES ('1318', '1001', '0', '2017-08-10 14:29:01', null);
INSERT INTO `osa_online_log` VALUES ('1319', '1001', '0', '2017-08-10 14:30:01', null);
INSERT INTO `osa_online_log` VALUES ('1320', '1001', '0', '2017-08-10 14:31:01', null);
INSERT INTO `osa_online_log` VALUES ('1321', '1001', '0', '2017-08-10 14:32:01', null);
INSERT INTO `osa_online_log` VALUES ('1322', '1001', '0', '2017-08-10 14:33:01', null);
INSERT INTO `osa_online_log` VALUES ('1323', '1001', '0', '2017-08-10 14:34:01', null);
INSERT INTO `osa_online_log` VALUES ('1324', '1001', '0', '2017-08-10 14:35:01', null);
INSERT INTO `osa_online_log` VALUES ('1325', '1001', '0', '2017-08-10 14:36:01', null);
INSERT INTO `osa_online_log` VALUES ('1326', '1001', '0', '2017-08-10 14:37:01', null);
INSERT INTO `osa_online_log` VALUES ('1327', '1001', '0', '2017-08-10 14:38:01', null);
INSERT INTO `osa_online_log` VALUES ('1328', '1001', '0', '2017-08-10 14:39:01', null);
INSERT INTO `osa_online_log` VALUES ('1329', '1001', '0', '2017-08-10 14:40:01', null);
INSERT INTO `osa_online_log` VALUES ('1330', '1001', '0', '2017-08-10 14:41:01', null);
INSERT INTO `osa_online_log` VALUES ('1331', '1001', '0', '2017-08-10 14:42:01', null);
INSERT INTO `osa_online_log` VALUES ('1332', '1001', '0', '2017-08-10 14:43:01', null);
INSERT INTO `osa_online_log` VALUES ('1333', '1001', '0', '2017-08-10 14:44:01', null);
INSERT INTO `osa_online_log` VALUES ('1334', '1001', '0', '2017-08-10 14:45:01', null);
INSERT INTO `osa_online_log` VALUES ('1335', '1001', '0', '2017-08-10 14:46:01', null);
INSERT INTO `osa_online_log` VALUES ('1336', '1001', '0', '2017-08-10 14:47:01', null);
INSERT INTO `osa_online_log` VALUES ('1337', '1001', '0', '2017-08-10 14:48:01', null);
INSERT INTO `osa_online_log` VALUES ('1338', '1001', '0', '2017-08-10 14:49:01', null);
INSERT INTO `osa_online_log` VALUES ('1339', '1001', '0', '2017-08-10 14:50:01', null);
INSERT INTO `osa_online_log` VALUES ('1340', '1001', '0', '2017-08-10 14:51:01', null);
INSERT INTO `osa_online_log` VALUES ('1341', '1001', '0', '2017-08-10 14:52:01', null);
INSERT INTO `osa_online_log` VALUES ('1342', '1001', '0', '2017-08-10 14:53:01', null);
INSERT INTO `osa_online_log` VALUES ('1343', '1001', '0', '2017-08-10 14:54:01', null);
INSERT INTO `osa_online_log` VALUES ('1344', '1001', '0', '2017-08-10 14:55:01', null);
INSERT INTO `osa_online_log` VALUES ('1345', '1001', '0', '2017-08-10 14:56:01', null);
INSERT INTO `osa_online_log` VALUES ('1346', '1001', '0', '2017-08-10 14:57:01', null);
INSERT INTO `osa_online_log` VALUES ('1347', '1001', '0', '2017-08-10 14:58:01', null);
INSERT INTO `osa_online_log` VALUES ('1348', '1001', '0', '2017-08-10 14:59:01', null);
INSERT INTO `osa_online_log` VALUES ('1349', '1001', '0', '2017-08-10 15:00:01', null);
INSERT INTO `osa_online_log` VALUES ('1350', '1001', '0', '2017-08-10 15:01:01', null);
INSERT INTO `osa_online_log` VALUES ('1351', '1001', '0', '2017-08-10 15:02:01', null);
INSERT INTO `osa_online_log` VALUES ('1352', '1001', '0', '2017-08-10 15:03:01', null);
INSERT INTO `osa_online_log` VALUES ('1353', '1001', '0', '2017-08-10 15:04:01', null);
INSERT INTO `osa_online_log` VALUES ('1354', '1001', '0', '2017-08-10 15:05:01', null);
INSERT INTO `osa_online_log` VALUES ('1355', '1001', '0', '2017-08-10 15:06:01', null);
INSERT INTO `osa_online_log` VALUES ('1356', '1001', '0', '2017-08-10 15:07:01', null);
INSERT INTO `osa_online_log` VALUES ('1357', '1001', '0', '2017-08-10 15:08:01', null);
INSERT INTO `osa_online_log` VALUES ('1358', '1001', '0', '2017-08-10 15:09:01', null);
INSERT INTO `osa_online_log` VALUES ('1359', '1001', '0', '2017-08-10 15:10:01', null);
INSERT INTO `osa_online_log` VALUES ('1360', '1001', '0', '2017-08-10 15:11:01', null);
INSERT INTO `osa_online_log` VALUES ('1361', '1001', '0', '2017-08-10 15:12:01', null);
INSERT INTO `osa_online_log` VALUES ('1362', '1001', '0', '2017-08-10 15:13:01', null);
INSERT INTO `osa_online_log` VALUES ('1363', '1001', '0', '2017-08-10 15:14:01', null);
INSERT INTO `osa_online_log` VALUES ('1364', '1001', '0', '2017-08-10 15:15:01', null);
INSERT INTO `osa_online_log` VALUES ('1365', '1001', '0', '2017-08-10 15:16:01', null);
INSERT INTO `osa_online_log` VALUES ('1366', '1001', '0', '2017-08-10 15:17:01', null);
INSERT INTO `osa_online_log` VALUES ('1367', '1001', '0', '2017-08-10 15:18:01', null);
INSERT INTO `osa_online_log` VALUES ('1368', '1001', '0', '2017-08-10 15:19:01', null);
INSERT INTO `osa_online_log` VALUES ('1369', '1001', '0', '2017-08-10 15:20:01', null);
INSERT INTO `osa_online_log` VALUES ('1370', '1001', '0', '2017-08-10 15:21:01', null);
INSERT INTO `osa_online_log` VALUES ('1371', '1001', '0', '2017-08-10 15:22:01', null);
INSERT INTO `osa_online_log` VALUES ('1372', '1001', '0', '2017-08-10 15:23:01', null);
INSERT INTO `osa_online_log` VALUES ('1373', '1001', '0', '2017-08-10 15:24:01', null);
INSERT INTO `osa_online_log` VALUES ('1374', '1001', '0', '2017-08-10 15:25:01', null);
INSERT INTO `osa_online_log` VALUES ('1375', '1001', '0', '2017-08-10 15:26:01', null);
INSERT INTO `osa_online_log` VALUES ('1376', '1001', '0', '2017-08-10 15:27:01', null);
INSERT INTO `osa_online_log` VALUES ('1377', '1001', '0', '2017-08-10 15:28:01', null);
INSERT INTO `osa_online_log` VALUES ('1378', '1001', '0', '2017-08-10 15:29:01', null);
INSERT INTO `osa_online_log` VALUES ('1379', '1001', '0', '2017-08-10 15:30:01', null);
INSERT INTO `osa_online_log` VALUES ('1380', '1001', '0', '2017-08-10 15:31:01', null);
INSERT INTO `osa_online_log` VALUES ('1381', '1001', '0', '2017-08-10 15:32:01', null);
INSERT INTO `osa_online_log` VALUES ('1382', '1001', '0', '2017-08-10 15:33:01', null);
INSERT INTO `osa_online_log` VALUES ('1383', '1001', '0', '2017-08-10 15:34:01', null);
INSERT INTO `osa_online_log` VALUES ('1384', '1001', '0', '2017-08-10 15:35:01', null);
INSERT INTO `osa_online_log` VALUES ('1385', '1001', '0', '2017-08-10 15:36:01', null);
INSERT INTO `osa_online_log` VALUES ('1386', '1001', '0', '2017-08-10 15:37:01', null);
INSERT INTO `osa_online_log` VALUES ('1387', '1001', '0', '2017-08-10 15:38:01', null);
INSERT INTO `osa_online_log` VALUES ('1388', '1001', '0', '2017-08-10 15:39:01', null);
INSERT INTO `osa_online_log` VALUES ('1389', '1001', '0', '2017-08-10 15:40:01', null);
INSERT INTO `osa_online_log` VALUES ('1390', '1001', '0', '2017-08-10 15:41:01', null);
INSERT INTO `osa_online_log` VALUES ('1391', '1001', '0', '2017-08-10 15:42:01', null);
INSERT INTO `osa_online_log` VALUES ('1392', '1001', '0', '2017-08-10 15:43:01', null);
INSERT INTO `osa_online_log` VALUES ('1393', '1001', '0', '2017-08-10 15:44:01', null);
INSERT INTO `osa_online_log` VALUES ('1394', '1001', '0', '2017-08-10 15:45:01', null);
INSERT INTO `osa_online_log` VALUES ('1395', '1001', '0', '2017-08-10 15:46:01', null);
INSERT INTO `osa_online_log` VALUES ('1396', '1001', '0', '2017-08-10 15:47:01', null);
INSERT INTO `osa_online_log` VALUES ('1397', '1001', '0', '2017-08-10 15:48:01', null);
INSERT INTO `osa_online_log` VALUES ('1398', '1001', '0', '2017-08-10 15:49:01', null);
INSERT INTO `osa_online_log` VALUES ('1399', '1001', '0', '2017-08-10 15:50:01', null);
INSERT INTO `osa_online_log` VALUES ('1400', '1001', '0', '2017-08-10 15:51:01', null);
INSERT INTO `osa_online_log` VALUES ('1401', '1001', '0', '2017-08-10 15:52:01', null);
INSERT INTO `osa_online_log` VALUES ('1402', '1001', '0', '2017-08-10 15:53:01', null);
INSERT INTO `osa_online_log` VALUES ('1403', '1001', '0', '2017-08-10 15:54:01', null);
INSERT INTO `osa_online_log` VALUES ('1404', '1001', '0', '2017-08-10 15:55:01', null);
INSERT INTO `osa_online_log` VALUES ('1405', '1001', '0', '2017-08-10 15:56:01', null);
INSERT INTO `osa_online_log` VALUES ('1406', '1001', '0', '2017-08-10 15:57:01', null);
INSERT INTO `osa_online_log` VALUES ('1407', '1001', '0', '2017-08-10 15:58:01', null);
INSERT INTO `osa_online_log` VALUES ('1408', '1001', '0', '2017-08-10 15:59:01', null);
INSERT INTO `osa_online_log` VALUES ('1409', '1001', '0', '2017-08-10 16:00:01', null);
INSERT INTO `osa_online_log` VALUES ('1410', '1001', '0', '2017-08-10 16:01:01', null);
INSERT INTO `osa_online_log` VALUES ('1411', '1001', '0', '2017-08-10 16:02:01', null);
INSERT INTO `osa_online_log` VALUES ('1412', '1001', '0', '2017-08-10 16:03:01', null);
INSERT INTO `osa_online_log` VALUES ('1413', '1001', '0', '2017-08-10 16:04:01', null);
INSERT INTO `osa_online_log` VALUES ('1414', '1001', '0', '2017-08-10 16:05:01', null);
INSERT INTO `osa_online_log` VALUES ('1415', '1001', '0', '2017-08-10 16:06:01', null);
INSERT INTO `osa_online_log` VALUES ('1416', '1001', '0', '2017-08-10 16:07:01', null);
INSERT INTO `osa_online_log` VALUES ('1417', '1001', '0', '2017-08-10 16:08:01', null);
INSERT INTO `osa_online_log` VALUES ('1418', '1001', '0', '2017-08-10 16:09:01', null);
INSERT INTO `osa_online_log` VALUES ('1419', '1001', '0', '2017-08-10 16:10:01', null);
INSERT INTO `osa_online_log` VALUES ('1420', '1001', '0', '2017-08-10 16:11:01', null);
INSERT INTO `osa_online_log` VALUES ('1421', '1001', '0', '2017-08-10 16:12:01', null);
INSERT INTO `osa_online_log` VALUES ('1422', '1001', '0', '2017-08-10 16:13:01', null);
INSERT INTO `osa_online_log` VALUES ('1423', '1001', '0', '2017-08-10 16:14:01', null);
INSERT INTO `osa_online_log` VALUES ('1424', '1001', '0', '2017-08-10 16:15:01', null);
INSERT INTO `osa_online_log` VALUES ('1425', '1001', '0', '2017-08-10 16:16:01', null);
INSERT INTO `osa_online_log` VALUES ('1426', '1001', '0', '2017-08-10 16:17:01', null);
INSERT INTO `osa_online_log` VALUES ('1427', '1001', '0', '2017-08-10 16:18:01', null);
INSERT INTO `osa_online_log` VALUES ('1428', '1001', '0', '2017-08-10 16:19:01', null);
INSERT INTO `osa_online_log` VALUES ('1429', '1001', '0', '2017-08-10 16:20:01', null);
INSERT INTO `osa_online_log` VALUES ('1430', '1001', '0', '2017-08-10 16:21:01', null);
INSERT INTO `osa_online_log` VALUES ('1431', '1001', '0', '2017-08-10 16:22:01', null);
INSERT INTO `osa_online_log` VALUES ('1432', '1001', '0', '2017-08-10 16:23:01', null);
INSERT INTO `osa_online_log` VALUES ('1433', '1001', '0', '2017-08-10 16:24:01', null);
INSERT INTO `osa_online_log` VALUES ('1434', '1001', '0', '2017-08-10 16:25:01', null);
INSERT INTO `osa_online_log` VALUES ('1435', '1001', '0', '2017-08-10 16:26:01', null);
INSERT INTO `osa_online_log` VALUES ('1436', '1001', '0', '2017-08-10 16:27:01', null);
INSERT INTO `osa_online_log` VALUES ('1437', '1001', '0', '2017-08-10 16:28:01', null);
INSERT INTO `osa_online_log` VALUES ('1438', '1001', '0', '2017-08-10 16:29:01', null);
INSERT INTO `osa_online_log` VALUES ('1439', '1001', '0', '2017-08-10 16:30:01', null);
INSERT INTO `osa_online_log` VALUES ('1440', '1001', '0', '2017-08-10 16:31:01', null);
INSERT INTO `osa_online_log` VALUES ('1441', '1001', '0', '2017-08-10 16:32:01', null);
INSERT INTO `osa_online_log` VALUES ('1442', '1001', '0', '2017-08-10 16:33:01', null);
INSERT INTO `osa_online_log` VALUES ('1443', '1001', '0', '2017-08-10 16:34:01', null);
INSERT INTO `osa_online_log` VALUES ('1444', '1001', '0', '2017-08-10 16:35:01', null);
INSERT INTO `osa_online_log` VALUES ('1445', '1001', '0', '2017-08-10 16:36:01', null);
INSERT INTO `osa_online_log` VALUES ('1446', '1001', '0', '2017-08-10 16:37:01', null);
INSERT INTO `osa_online_log` VALUES ('1447', '1001', '0', '2017-08-11 09:43:08', null);
INSERT INTO `osa_online_log` VALUES ('1448', '1001', '0', '2017-08-11 09:44:01', null);
INSERT INTO `osa_online_log` VALUES ('1449', '1001', '0', '2017-08-11 09:46:26', null);
INSERT INTO `osa_online_log` VALUES ('1450', '1001', '0', '2017-08-11 09:47:01', null);
INSERT INTO `osa_online_log` VALUES ('1451', '1001', '0', '2017-08-11 09:48:01', null);
INSERT INTO `osa_online_log` VALUES ('1452', '1001', '0', '2017-08-11 09:49:01', null);
INSERT INTO `osa_online_log` VALUES ('1453', '1001', '0', '2017-08-11 09:50:01', null);
INSERT INTO `osa_online_log` VALUES ('1454', '1001', '0', '2017-08-11 09:51:01', null);
INSERT INTO `osa_online_log` VALUES ('1455', '1001', '0', '2017-08-11 09:52:01', null);
INSERT INTO `osa_online_log` VALUES ('1456', '1001', '0', '2017-08-11 09:53:01', null);
INSERT INTO `osa_online_log` VALUES ('1457', '1001', '0', '2017-08-11 09:54:01', null);
INSERT INTO `osa_online_log` VALUES ('1458', '1001', '0', '2017-08-14 10:43:02', null);
INSERT INTO `osa_online_log` VALUES ('1459', '1001', '0', '2017-08-14 10:44:01', null);
INSERT INTO `osa_online_log` VALUES ('1460', '1001', '1', '2017-08-14 10:45:01', null);
INSERT INTO `osa_online_log` VALUES ('1461', '1001', '1', '2017-08-14 10:46:01', null);
INSERT INTO `osa_online_log` VALUES ('1462', '1001', '1', '2017-08-14 10:47:01', null);
INSERT INTO `osa_online_log` VALUES ('1463', '1001', '1', '2017-08-14 10:48:01', null);
INSERT INTO `osa_online_log` VALUES ('1464', '1001', '1', '2017-08-14 10:49:01', null);
INSERT INTO `osa_online_log` VALUES ('1465', '1001', '1', '2017-08-14 10:50:01', null);
INSERT INTO `osa_online_log` VALUES ('1466', '1001', '1', '2017-08-14 10:51:01', null);
INSERT INTO `osa_online_log` VALUES ('1467', '1001', '1', '2017-08-14 10:52:01', null);
INSERT INTO `osa_online_log` VALUES ('1468', '1001', '0', '2017-08-14 10:53:01', null);
INSERT INTO `osa_online_log` VALUES ('1469', '1001', '1', '2017-08-14 10:54:01', null);
INSERT INTO `osa_online_log` VALUES ('1470', '1001', '0', '2017-08-14 10:55:01', null);
INSERT INTO `osa_online_log` VALUES ('1471', '1001', '0', '2017-08-14 10:56:01', null);
INSERT INTO `osa_online_log` VALUES ('1472', '1001', '1', '2017-08-14 10:57:01', null);
INSERT INTO `osa_online_log` VALUES ('1473', '1001', '1', '2017-08-14 10:58:01', null);
INSERT INTO `osa_online_log` VALUES ('1474', '1001', '0', '2017-08-14 10:59:01', null);
INSERT INTO `osa_online_log` VALUES ('1475', '1001', '1', '2017-08-14 11:00:01', null);
INSERT INTO `osa_online_log` VALUES ('1476', '1001', '1', '2017-08-14 11:01:01', null);
INSERT INTO `osa_online_log` VALUES ('1477', '1001', '1', '2017-08-14 11:02:01', null);
INSERT INTO `osa_online_log` VALUES ('1478', '1001', '1', '2017-08-14 11:03:01', null);
INSERT INTO `osa_online_log` VALUES ('1479', '1001', '1', '2017-08-14 11:04:01', null);
INSERT INTO `osa_online_log` VALUES ('1480', '1001', '1', '2017-08-14 11:05:01', null);
INSERT INTO `osa_online_log` VALUES ('1481', '1001', '1', '2017-08-14 11:06:01', null);
INSERT INTO `osa_online_log` VALUES ('1482', '1001', '1', '2017-08-14 11:07:01', null);
INSERT INTO `osa_online_log` VALUES ('1483', '1001', '1', '2017-08-14 11:08:01', null);
INSERT INTO `osa_online_log` VALUES ('1484', '1001', '1', '2017-08-14 11:09:01', null);
INSERT INTO `osa_online_log` VALUES ('1485', '1001', '1', '2017-08-14 11:10:01', null);
INSERT INTO `osa_online_log` VALUES ('1486', '1001', '1', '2017-08-14 11:11:01', null);
INSERT INTO `osa_online_log` VALUES ('1487', '1001', '1', '2017-08-14 11:12:01', null);
INSERT INTO `osa_online_log` VALUES ('1488', '1001', '0', '2017-08-14 11:13:01', null);
INSERT INTO `osa_online_log` VALUES ('1489', '1001', '0', '2017-08-14 11:14:01', null);
INSERT INTO `osa_online_log` VALUES ('1490', '1001', '0', '2017-08-14 11:15:01', null);
INSERT INTO `osa_online_log` VALUES ('1491', '1001', '0', '2017-08-14 11:16:01', null);
INSERT INTO `osa_online_log` VALUES ('1492', '1001', '0', '2017-08-14 11:17:01', null);
INSERT INTO `osa_online_log` VALUES ('1493', '1001', '0', '2017-08-14 11:18:01', null);
INSERT INTO `osa_online_log` VALUES ('1494', '1001', '0', '2017-08-14 11:19:01', null);
INSERT INTO `osa_online_log` VALUES ('1495', '1001', '0', '2017-08-14 11:20:01', null);
INSERT INTO `osa_online_log` VALUES ('1496', '1001', '0', '2017-08-14 11:21:01', null);
INSERT INTO `osa_online_log` VALUES ('1497', '1001', '0', '2017-08-14 11:22:01', null);
INSERT INTO `osa_online_log` VALUES ('1498', '1001', '0', '2017-08-14 11:23:01', null);
INSERT INTO `osa_online_log` VALUES ('1499', '1001', '1', '2017-08-14 11:24:01', null);
INSERT INTO `osa_online_log` VALUES ('1500', '1001', '1', '2017-08-14 11:25:01', null);
INSERT INTO `osa_online_log` VALUES ('1501', '1001', '1', '2017-08-14 11:26:01', null);
INSERT INTO `osa_online_log` VALUES ('1502', '1001', '0', '2017-08-14 11:27:01', null);
INSERT INTO `osa_online_log` VALUES ('1503', '1001', '0', '2017-08-14 11:28:01', null);
INSERT INTO `osa_online_log` VALUES ('1504', '1001', '0', '2017-08-14 11:29:01', null);
INSERT INTO `osa_online_log` VALUES ('1505', '1001', '0', '2017-08-14 11:30:01', null);
INSERT INTO `osa_online_log` VALUES ('1506', '1001', '0', '2017-08-14 11:31:01', null);
INSERT INTO `osa_online_log` VALUES ('1507', '1001', '0', '2017-08-14 11:32:01', null);
INSERT INTO `osa_online_log` VALUES ('1508', '1001', '0', '2017-08-14 11:33:01', null);
INSERT INTO `osa_online_log` VALUES ('1509', '1001', '0', '2017-08-14 11:34:01', null);
INSERT INTO `osa_online_log` VALUES ('1510', '1001', '0', '2017-08-14 11:35:01', null);
INSERT INTO `osa_online_log` VALUES ('1511', '1001', '0', '2017-08-14 11:36:01', null);
INSERT INTO `osa_online_log` VALUES ('1512', '1001', '0', '2017-08-14 11:37:01', null);
INSERT INTO `osa_online_log` VALUES ('1513', '1001', '0', '2017-08-14 11:38:01', null);
INSERT INTO `osa_online_log` VALUES ('1514', '1001', '0', '2017-08-14 11:39:01', null);
INSERT INTO `osa_online_log` VALUES ('1515', '1001', '0', '2017-08-14 11:40:01', null);
INSERT INTO `osa_online_log` VALUES ('1516', '1001', '1', '2017-08-14 11:41:01', null);
INSERT INTO `osa_online_log` VALUES ('1517', '1001', '1', '2017-08-14 11:42:01', null);
INSERT INTO `osa_online_log` VALUES ('1518', '1001', '0', '2017-08-14 11:43:01', null);
INSERT INTO `osa_online_log` VALUES ('1519', '1001', '0', '2017-08-14 11:44:01', null);
INSERT INTO `osa_online_log` VALUES ('1520', '1001', '0', '2017-08-14 11:45:01', null);
INSERT INTO `osa_online_log` VALUES ('1521', '1001', '0', '2017-08-14 11:46:01', null);
INSERT INTO `osa_online_log` VALUES ('1522', '1001', '0', '2017-08-14 11:47:01', null);
INSERT INTO `osa_online_log` VALUES ('1523', '1001', '0', '2017-08-14 11:48:01', null);
INSERT INTO `osa_online_log` VALUES ('1524', '1001', '0', '2017-08-14 11:49:01', null);
INSERT INTO `osa_online_log` VALUES ('1525', '1001', '0', '2017-08-14 11:50:01', null);
INSERT INTO `osa_online_log` VALUES ('1526', '1001', '0', '2017-08-14 11:51:01', null);
INSERT INTO `osa_online_log` VALUES ('1527', '1001', '0', '2017-08-14 11:52:01', null);
INSERT INTO `osa_online_log` VALUES ('1528', '1001', '0', '2017-08-14 11:53:01', null);
INSERT INTO `osa_online_log` VALUES ('1529', '1001', '0', '2017-08-14 11:57:01', null);
INSERT INTO `osa_online_log` VALUES ('1530', '1001', '0', '2017-08-14 11:58:01', null);
INSERT INTO `osa_online_log` VALUES ('1531', '1001', '0', '2017-08-14 11:59:01', null);
INSERT INTO `osa_online_log` VALUES ('1532', '1001', '0', '2017-08-14 12:00:01', null);
INSERT INTO `osa_online_log` VALUES ('1533', '1001', '0', '2017-08-14 12:01:01', null);
INSERT INTO `osa_online_log` VALUES ('1534', '1001', '0', '2017-08-14 12:02:01', null);
INSERT INTO `osa_online_log` VALUES ('1535', '1001', '0', '2017-08-14 12:03:01', null);
INSERT INTO `osa_online_log` VALUES ('1536', '1001', '0', '2017-08-14 12:04:01', null);
INSERT INTO `osa_online_log` VALUES ('1537', '1001', '0', '2017-08-14 12:05:01', null);
INSERT INTO `osa_online_log` VALUES ('1538', '1001', '0', '2017-08-14 12:06:01', null);
INSERT INTO `osa_online_log` VALUES ('1539', '1001', '0', '2017-08-14 12:07:01', null);
INSERT INTO `osa_online_log` VALUES ('1540', '1001', '0', '2017-08-14 12:08:01', null);
INSERT INTO `osa_online_log` VALUES ('1541', '1001', '0', '2017-08-14 12:09:01', null);
INSERT INTO `osa_online_log` VALUES ('1542', '1001', '0', '2017-08-14 12:10:01', null);
INSERT INTO `osa_online_log` VALUES ('1543', '1001', '0', '2017-08-14 12:11:01', null);
INSERT INTO `osa_online_log` VALUES ('1544', '1001', '0', '2017-08-14 12:12:01', null);
INSERT INTO `osa_online_log` VALUES ('1545', '1001', '0', '2017-08-14 12:13:01', null);
INSERT INTO `osa_online_log` VALUES ('1546', '1001', '0', '2017-08-14 12:14:01', null);
INSERT INTO `osa_online_log` VALUES ('1547', '1001', '0', '2017-08-14 12:15:01', null);
INSERT INTO `osa_online_log` VALUES ('1548', '1001', '0', '2017-08-14 12:16:01', null);
INSERT INTO `osa_online_log` VALUES ('1549', '1001', '0', '2017-08-14 12:17:01', null);
INSERT INTO `osa_online_log` VALUES ('1550', '1001', '0', '2017-08-14 12:18:01', null);
INSERT INTO `osa_online_log` VALUES ('1551', '1001', '0', '2017-08-14 12:19:01', null);
INSERT INTO `osa_online_log` VALUES ('1552', '1001', '0', '2017-08-14 12:20:01', null);
INSERT INTO `osa_online_log` VALUES ('1553', '1001', '0', '2017-08-14 12:21:01', null);
INSERT INTO `osa_online_log` VALUES ('1554', '1001', '0', '2017-08-14 12:22:01', null);
INSERT INTO `osa_online_log` VALUES ('1555', '1001', '0', '2017-08-14 12:23:01', null);
INSERT INTO `osa_online_log` VALUES ('1556', '1001', '0', '2017-08-14 12:24:01', null);
INSERT INTO `osa_online_log` VALUES ('1557', '1001', '0', '2017-08-14 12:25:01', null);
INSERT INTO `osa_online_log` VALUES ('1558', '1001', '0', '2017-08-14 12:26:01', null);
INSERT INTO `osa_online_log` VALUES ('1559', '1001', '0', '2017-08-14 12:27:01', null);
INSERT INTO `osa_online_log` VALUES ('1560', '1001', '0', '2017-08-14 12:28:01', null);
INSERT INTO `osa_online_log` VALUES ('1561', '1001', '0', '2017-08-14 12:29:01', null);
INSERT INTO `osa_online_log` VALUES ('1562', '1001', '0', '2017-08-14 12:30:01', null);
INSERT INTO `osa_online_log` VALUES ('1563', '1001', '0', '2017-08-14 12:31:01', null);
INSERT INTO `osa_online_log` VALUES ('1564', '1001', '0', '2017-08-14 12:32:01', null);
INSERT INTO `osa_online_log` VALUES ('1565', '1001', '0', '2017-08-14 12:33:01', null);
INSERT INTO `osa_online_log` VALUES ('1566', '1001', '0', '2017-08-14 12:34:01', null);
INSERT INTO `osa_online_log` VALUES ('1567', '1001', '0', '2017-08-14 12:35:01', null);
INSERT INTO `osa_online_log` VALUES ('1568', '1001', '0', '2017-08-14 12:36:01', null);
INSERT INTO `osa_online_log` VALUES ('1569', '1001', '0', '2017-08-14 12:37:01', null);
INSERT INTO `osa_online_log` VALUES ('1570', '1001', '0', '2017-08-14 12:38:01', null);
INSERT INTO `osa_online_log` VALUES ('1571', '1001', '0', '2017-08-14 12:39:01', null);
INSERT INTO `osa_online_log` VALUES ('1572', '1001', '0', '2017-08-14 12:40:01', null);
INSERT INTO `osa_online_log` VALUES ('1573', '1001', '0', '2017-08-14 12:41:01', null);
INSERT INTO `osa_online_log` VALUES ('1574', '1001', '0', '2017-08-14 12:42:01', null);
INSERT INTO `osa_online_log` VALUES ('1575', '1001', '0', '2017-08-14 12:43:01', null);
INSERT INTO `osa_online_log` VALUES ('1576', '1001', '0', '2017-08-14 12:44:01', null);
INSERT INTO `osa_online_log` VALUES ('1577', '1001', '0', '2017-08-14 12:45:01', null);
INSERT INTO `osa_online_log` VALUES ('1578', '1001', '0', '2017-08-14 12:46:01', null);
INSERT INTO `osa_online_log` VALUES ('1579', '1001', '0', '2017-08-14 12:47:01', null);
INSERT INTO `osa_online_log` VALUES ('1580', '1001', '0', '2017-08-14 12:48:01', null);
INSERT INTO `osa_online_log` VALUES ('1581', '1001', '0', '2017-08-14 12:49:01', null);
INSERT INTO `osa_online_log` VALUES ('1582', '1001', '0', '2017-08-14 12:50:01', null);
INSERT INTO `osa_online_log` VALUES ('1583', '1001', '0', '2017-08-14 12:51:01', null);
INSERT INTO `osa_online_log` VALUES ('1584', '1001', '0', '2017-08-14 12:52:01', null);
INSERT INTO `osa_online_log` VALUES ('1585', '1001', '0', '2017-08-14 12:53:01', null);
INSERT INTO `osa_online_log` VALUES ('1586', '1001', '0', '2017-08-14 12:54:01', null);
INSERT INTO `osa_online_log` VALUES ('1587', '1001', '0', '2017-08-14 12:55:01', null);
INSERT INTO `osa_online_log` VALUES ('1588', '1001', '0', '2017-08-14 12:56:01', null);
INSERT INTO `osa_online_log` VALUES ('1589', '1001', '0', '2017-08-14 12:57:01', null);
INSERT INTO `osa_online_log` VALUES ('1590', '1001', '0', '2017-08-14 12:58:01', null);
INSERT INTO `osa_online_log` VALUES ('1591', '1001', '0', '2017-08-14 12:59:01', null);
INSERT INTO `osa_online_log` VALUES ('1592', '1001', '0', '2017-08-14 13:00:01', null);
INSERT INTO `osa_online_log` VALUES ('1593', '1001', '0', '2017-08-14 13:01:01', null);
INSERT INTO `osa_online_log` VALUES ('1594', '1001', '0', '2017-08-14 13:02:01', null);
INSERT INTO `osa_online_log` VALUES ('1595', '1001', '0', '2017-08-14 13:03:01', null);
INSERT INTO `osa_online_log` VALUES ('1596', '1001', '0', '2017-08-14 13:04:01', null);
INSERT INTO `osa_online_log` VALUES ('1597', '1001', '0', '2017-08-14 13:05:01', null);
INSERT INTO `osa_online_log` VALUES ('1598', '1001', '0', '2017-08-14 13:06:01', null);
INSERT INTO `osa_online_log` VALUES ('1599', '1001', '0', '2017-08-14 13:07:01', null);
INSERT INTO `osa_online_log` VALUES ('1600', '1001', '0', '2017-08-14 13:08:01', null);
INSERT INTO `osa_online_log` VALUES ('1601', '1001', '0', '2017-08-14 13:09:01', null);
INSERT INTO `osa_online_log` VALUES ('1602', '1001', '0', '2017-08-14 13:10:01', null);
INSERT INTO `osa_online_log` VALUES ('1603', '1001', '0', '2017-08-14 13:11:01', null);
INSERT INTO `osa_online_log` VALUES ('1604', '1001', '0', '2017-08-14 13:12:01', null);
INSERT INTO `osa_online_log` VALUES ('1605', '1001', '0', '2017-08-14 13:13:01', null);
INSERT INTO `osa_online_log` VALUES ('1606', '1001', '0', '2017-08-14 13:14:01', null);
INSERT INTO `osa_online_log` VALUES ('1607', '1001', '0', '2017-08-14 13:15:01', null);
INSERT INTO `osa_online_log` VALUES ('1608', '1001', '0', '2017-08-14 13:16:01', null);
INSERT INTO `osa_online_log` VALUES ('1609', '1001', '0', '2017-08-14 13:17:01', null);
INSERT INTO `osa_online_log` VALUES ('1610', '1001', '0', '2017-08-14 13:18:01', null);
INSERT INTO `osa_online_log` VALUES ('1611', '1001', '0', '2017-08-14 13:19:01', null);
INSERT INTO `osa_online_log` VALUES ('1612', '1001', '0', '2017-08-14 13:20:01', null);
INSERT INTO `osa_online_log` VALUES ('1613', '1001', '0', '2017-08-14 13:21:01', null);
INSERT INTO `osa_online_log` VALUES ('1614', '1001', '0', '2017-08-14 13:22:01', null);
INSERT INTO `osa_online_log` VALUES ('1615', '1001', '0', '2017-08-14 13:23:01', null);
INSERT INTO `osa_online_log` VALUES ('1616', '1001', '0', '2017-08-14 13:24:01', null);
INSERT INTO `osa_online_log` VALUES ('1617', '1001', '0', '2017-08-14 13:25:01', null);
INSERT INTO `osa_online_log` VALUES ('1618', '1001', '0', '2017-08-14 13:26:01', null);
INSERT INTO `osa_online_log` VALUES ('1619', '1001', '0', '2017-08-14 13:27:01', null);
INSERT INTO `osa_online_log` VALUES ('1620', '1001', '0', '2017-08-14 13:28:01', null);
INSERT INTO `osa_online_log` VALUES ('1621', '1001', '0', '2017-08-14 13:29:01', null);
INSERT INTO `osa_online_log` VALUES ('1622', '1001', '0', '2017-08-14 13:30:01', null);
INSERT INTO `osa_online_log` VALUES ('1623', '1001', '0', '2017-08-14 13:31:01', null);
INSERT INTO `osa_online_log` VALUES ('1624', '1001', '0', '2017-08-14 13:32:01', null);
INSERT INTO `osa_online_log` VALUES ('1625', '1001', '0', '2017-08-14 13:33:01', null);
INSERT INTO `osa_online_log` VALUES ('1626', '1001', '0', '2017-08-14 13:34:01', null);
INSERT INTO `osa_online_log` VALUES ('1627', '1001', '0', '2017-08-14 13:35:01', null);
INSERT INTO `osa_online_log` VALUES ('1628', '1001', '0', '2017-08-14 13:36:01', null);
INSERT INTO `osa_online_log` VALUES ('1629', '1001', '0', '2017-08-14 13:37:01', null);
INSERT INTO `osa_online_log` VALUES ('1630', '1001', '0', '2017-08-14 13:38:01', null);
INSERT INTO `osa_online_log` VALUES ('1631', '1001', '0', '2017-08-14 13:39:01', null);
INSERT INTO `osa_online_log` VALUES ('1632', '1001', '0', '2017-08-14 13:40:01', null);
INSERT INTO `osa_online_log` VALUES ('1633', '1001', '0', '2017-08-14 13:41:01', null);
INSERT INTO `osa_online_log` VALUES ('1634', '1001', '0', '2017-08-14 13:42:01', null);
INSERT INTO `osa_online_log` VALUES ('1635', '1001', '1', '2017-08-14 13:43:01', null);
INSERT INTO `osa_online_log` VALUES ('1636', '1001', '1', '2017-08-14 13:44:01', null);
INSERT INTO `osa_online_log` VALUES ('1637', '1001', '1', '2017-08-14 13:45:01', null);
INSERT INTO `osa_online_log` VALUES ('1638', '1001', '0', '2017-08-14 13:46:01', null);
INSERT INTO `osa_online_log` VALUES ('1639', '1001', '0', '2017-08-14 13:47:01', null);
INSERT INTO `osa_online_log` VALUES ('1640', '1001', '0', '2017-08-14 13:48:01', null);
INSERT INTO `osa_online_log` VALUES ('1641', '1001', '0', '2017-08-14 13:49:01', null);
INSERT INTO `osa_online_log` VALUES ('1642', '1001', '0', '2017-08-14 13:50:01', null);
INSERT INTO `osa_online_log` VALUES ('1643', '1001', '0', '2017-08-14 13:51:01', null);
INSERT INTO `osa_online_log` VALUES ('1644', '1001', '0', '2017-08-14 13:52:01', null);
INSERT INTO `osa_online_log` VALUES ('1645', '1001', '0', '2017-08-14 13:53:01', null);
INSERT INTO `osa_online_log` VALUES ('1646', '1001', '0', '2017-08-14 13:54:01', null);
INSERT INTO `osa_online_log` VALUES ('1647', '1001', '0', '2017-08-14 13:55:01', null);
INSERT INTO `osa_online_log` VALUES ('1648', '1001', '0', '2017-08-14 13:56:01', null);
INSERT INTO `osa_online_log` VALUES ('1649', '1001', '0', '2017-08-14 13:57:01', null);
INSERT INTO `osa_online_log` VALUES ('1650', '1001', '0', '2017-08-14 13:58:01', null);
INSERT INTO `osa_online_log` VALUES ('1651', '1001', '0', '2017-08-14 13:59:01', null);
INSERT INTO `osa_online_log` VALUES ('1652', '1001', '0', '2017-08-14 14:00:01', null);
INSERT INTO `osa_online_log` VALUES ('1653', '1001', '0', '2017-08-14 14:01:01', null);
INSERT INTO `osa_online_log` VALUES ('1654', '1001', '0', '2017-08-14 14:02:01', null);
INSERT INTO `osa_online_log` VALUES ('1655', '1001', '0', '2017-08-14 14:03:01', null);
INSERT INTO `osa_online_log` VALUES ('1656', '1001', '0', '2017-08-14 14:04:01', null);
INSERT INTO `osa_online_log` VALUES ('1657', '1001', '0', '2017-08-14 14:05:01', null);
INSERT INTO `osa_online_log` VALUES ('1658', '1001', '0', '2017-08-14 14:06:01', null);
INSERT INTO `osa_online_log` VALUES ('1659', '1001', '0', '2017-08-14 14:07:01', null);
INSERT INTO `osa_online_log` VALUES ('1660', '1001', '0', '2017-08-14 14:08:01', null);
INSERT INTO `osa_online_log` VALUES ('1661', '1001', '0', '2017-08-14 14:09:01', null);
INSERT INTO `osa_online_log` VALUES ('1662', '1001', '0', '2017-08-14 14:10:01', null);
INSERT INTO `osa_online_log` VALUES ('1663', '1001', '0', '2017-08-14 14:11:01', null);
INSERT INTO `osa_online_log` VALUES ('1664', '1001', '0', '2017-08-14 14:12:01', null);
INSERT INTO `osa_online_log` VALUES ('1665', '1001', '0', '2017-08-14 14:13:01', null);
INSERT INTO `osa_online_log` VALUES ('1666', '1001', '0', '2017-08-14 14:14:01', null);
INSERT INTO `osa_online_log` VALUES ('1667', '1001', '0', '2017-08-14 14:15:01', null);
INSERT INTO `osa_online_log` VALUES ('1668', '1001', '0', '2017-08-14 14:16:01', null);
INSERT INTO `osa_online_log` VALUES ('1669', '1001', '0', '2017-08-14 14:17:01', null);
INSERT INTO `osa_online_log` VALUES ('1670', '1001', '0', '2017-08-14 14:18:01', null);
INSERT INTO `osa_online_log` VALUES ('1671', '1001', '0', '2017-08-14 14:19:01', null);
INSERT INTO `osa_online_log` VALUES ('1672', '1001', '0', '2017-08-14 14:20:01', null);
INSERT INTO `osa_online_log` VALUES ('1673', '1001', '0', '2017-08-14 14:21:01', null);
INSERT INTO `osa_online_log` VALUES ('1674', '1001', '0', '2017-08-14 14:22:01', null);
INSERT INTO `osa_online_log` VALUES ('1675', '1001', '0', '2017-08-14 14:23:01', null);
INSERT INTO `osa_online_log` VALUES ('1676', '1001', '0', '2017-08-14 14:24:01', null);
INSERT INTO `osa_online_log` VALUES ('1677', '1001', '1', '2017-08-14 14:25:01', null);
INSERT INTO `osa_online_log` VALUES ('1678', '1001', '1', '2017-08-14 14:26:01', null);
INSERT INTO `osa_online_log` VALUES ('1679', '1001', '1', '2017-08-14 14:27:01', null);
INSERT INTO `osa_online_log` VALUES ('1680', '1001', '1', '2017-08-14 14:28:01', null);
INSERT INTO `osa_online_log` VALUES ('1681', '1001', '1', '2017-08-14 14:29:01', null);
INSERT INTO `osa_online_log` VALUES ('1682', '1001', '1', '2017-08-14 14:30:01', null);
INSERT INTO `osa_online_log` VALUES ('1683', '1001', '1', '2017-08-14 14:31:01', null);
INSERT INTO `osa_online_log` VALUES ('1684', '1001', '0', '2017-08-14 14:32:01', null);
INSERT INTO `osa_online_log` VALUES ('1685', '1001', '0', '2017-08-14 14:33:01', null);
INSERT INTO `osa_online_log` VALUES ('1686', '1001', '0', '2017-08-14 14:34:01', null);
INSERT INTO `osa_online_log` VALUES ('1687', '1001', '0', '2017-08-14 14:35:01', null);
INSERT INTO `osa_online_log` VALUES ('1688', '1001', '0', '2017-08-14 14:36:01', null);
INSERT INTO `osa_online_log` VALUES ('1689', '1001', '0', '2017-08-14 14:37:01', null);
INSERT INTO `osa_online_log` VALUES ('1690', '1001', '0', '2017-08-14 14:38:01', null);
INSERT INTO `osa_online_log` VALUES ('1691', '1001', '0', '2017-08-14 14:39:01', null);
INSERT INTO `osa_online_log` VALUES ('1692', '1001', '0', '2017-08-14 14:40:01', null);
INSERT INTO `osa_online_log` VALUES ('1693', '1001', '0', '2017-08-14 14:41:01', null);
INSERT INTO `osa_online_log` VALUES ('1694', '1001', '0', '2017-08-14 14:42:01', null);
INSERT INTO `osa_online_log` VALUES ('1695', '1001', '0', '2017-08-14 14:43:01', null);
INSERT INTO `osa_online_log` VALUES ('1696', '1001', '0', '2017-08-14 14:44:01', null);
INSERT INTO `osa_online_log` VALUES ('1697', '1001', '0', '2017-08-14 14:45:01', null);
INSERT INTO `osa_online_log` VALUES ('1698', '1001', '0', '2017-08-14 14:46:01', null);
INSERT INTO `osa_online_log` VALUES ('1699', '1001', '0', '2017-08-14 14:47:01', null);
INSERT INTO `osa_online_log` VALUES ('1700', '1001', '1', '2017-08-14 14:48:01', null);
INSERT INTO `osa_online_log` VALUES ('1701', '1001', '0', '2017-08-14 14:49:01', null);
INSERT INTO `osa_online_log` VALUES ('1702', '1001', '0', '2017-08-14 14:50:01', null);
INSERT INTO `osa_online_log` VALUES ('1703', '1001', '0', '2017-08-14 14:51:01', null);
INSERT INTO `osa_online_log` VALUES ('1704', '1001', '0', '2017-08-14 14:52:01', null);
INSERT INTO `osa_online_log` VALUES ('1705', '1001', '0', '2017-08-14 14:53:01', null);
INSERT INTO `osa_online_log` VALUES ('1706', '1001', '0', '2017-08-14 14:54:01', null);
INSERT INTO `osa_online_log` VALUES ('1707', '1001', '0', '2017-08-14 14:55:01', null);
INSERT INTO `osa_online_log` VALUES ('1708', '1001', '0', '2017-08-14 14:56:01', null);
INSERT INTO `osa_online_log` VALUES ('1709', '1001', '0', '2017-08-14 14:57:01', null);
INSERT INTO `osa_online_log` VALUES ('1710', '1001', '1', '2017-08-14 14:58:01', null);
INSERT INTO `osa_online_log` VALUES ('1711', '1001', '0', '2017-08-14 14:59:01', null);
INSERT INTO `osa_online_log` VALUES ('1712', '1001', '0', '2017-08-14 15:00:01', null);
INSERT INTO `osa_online_log` VALUES ('1713', '1001', '1', '2017-08-14 15:01:01', null);
INSERT INTO `osa_online_log` VALUES ('1714', '1001', '0', '2017-08-14 15:02:01', null);
INSERT INTO `osa_online_log` VALUES ('1715', '1001', '0', '2017-08-14 15:03:01', null);
INSERT INTO `osa_online_log` VALUES ('1716', '1001', '0', '2017-08-14 15:04:01', null);
INSERT INTO `osa_online_log` VALUES ('1717', '1001', '0', '2017-08-14 15:05:01', null);
INSERT INTO `osa_online_log` VALUES ('1718', '1001', '0', '2017-08-14 15:06:01', null);
INSERT INTO `osa_online_log` VALUES ('1719', '1001', '0', '2017-08-14 15:07:01', null);
INSERT INTO `osa_online_log` VALUES ('1720', '1001', '0', '2017-08-14 15:08:01', null);
INSERT INTO `osa_online_log` VALUES ('1721', '1001', '0', '2017-08-14 15:09:01', null);
INSERT INTO `osa_online_log` VALUES ('1722', '1001', '0', '2017-08-14 15:10:01', null);
INSERT INTO `osa_online_log` VALUES ('1723', '1001', '0', '2017-08-14 15:11:01', null);
INSERT INTO `osa_online_log` VALUES ('1724', '1001', '0', '2017-08-14 15:12:01', null);
INSERT INTO `osa_online_log` VALUES ('1725', '1001', '0', '2017-08-14 15:13:01', null);
INSERT INTO `osa_online_log` VALUES ('1726', '1001', '0', '2017-08-14 15:14:01', null);
INSERT INTO `osa_online_log` VALUES ('1727', '1001', '1', '2017-08-14 15:15:01', null);
INSERT INTO `osa_online_log` VALUES ('1728', '1001', '1', '2017-08-14 15:16:01', null);
INSERT INTO `osa_online_log` VALUES ('1729', '1001', '1', '2017-08-14 15:17:01', null);
INSERT INTO `osa_online_log` VALUES ('1730', '1001', '1', '2017-08-14 15:18:01', null);
INSERT INTO `osa_online_log` VALUES ('1731', '1001', '1', '2017-08-14 15:19:01', null);
INSERT INTO `osa_online_log` VALUES ('1732', '1001', '1', '2017-08-14 15:20:01', null);
INSERT INTO `osa_online_log` VALUES ('1733', '1001', '1', '2017-08-14 15:21:01', null);
INSERT INTO `osa_online_log` VALUES ('1734', '1001', '1', '2017-08-14 15:22:01', null);
INSERT INTO `osa_online_log` VALUES ('1735', '1001', '1', '2017-08-14 15:23:01', null);
INSERT INTO `osa_online_log` VALUES ('1736', '1001', '1', '2017-08-14 15:24:01', null);
INSERT INTO `osa_online_log` VALUES ('1737', '1001', '1', '2017-08-14 15:25:01', null);
INSERT INTO `osa_online_log` VALUES ('1738', '1001', '1', '2017-08-14 15:26:01', null);
INSERT INTO `osa_online_log` VALUES ('1739', '1001', '1', '2017-08-14 15:27:01', null);
INSERT INTO `osa_online_log` VALUES ('1740', '1001', '1', '2017-08-14 15:28:01', null);
INSERT INTO `osa_online_log` VALUES ('1741', '1001', '0', '2017-08-14 15:29:01', null);
INSERT INTO `osa_online_log` VALUES ('1742', '1001', '0', '2017-08-14 15:30:01', null);
INSERT INTO `osa_online_log` VALUES ('1743', '1001', '0', '2017-08-14 15:31:01', null);
INSERT INTO `osa_online_log` VALUES ('1744', '1001', '0', '2017-08-14 15:32:01', null);
INSERT INTO `osa_online_log` VALUES ('1745', '1001', '0', '2017-08-14 15:33:01', null);
INSERT INTO `osa_online_log` VALUES ('1746', '1001', '0', '2017-08-14 15:34:01', null);
INSERT INTO `osa_online_log` VALUES ('1747', '1001', '1', '2017-08-14 15:35:01', null);
INSERT INTO `osa_online_log` VALUES ('1748', '1001', '0', '2017-08-14 15:36:01', null);
INSERT INTO `osa_online_log` VALUES ('1749', '1001', '0', '2017-08-14 15:37:01', null);
INSERT INTO `osa_online_log` VALUES ('1750', '1001', '0', '2017-08-14 15:38:01', null);
INSERT INTO `osa_online_log` VALUES ('1751', '1001', '0', '2017-08-14 15:39:01', null);
INSERT INTO `osa_online_log` VALUES ('1752', '1001', '0', '2017-08-14 15:40:01', null);
INSERT INTO `osa_online_log` VALUES ('1753', '1001', '0', '2017-08-14 15:41:01', null);
INSERT INTO `osa_online_log` VALUES ('1754', '1001', '0', '2017-08-14 15:42:01', null);
INSERT INTO `osa_online_log` VALUES ('1755', '1001', '0', '2017-08-14 15:43:01', null);
INSERT INTO `osa_online_log` VALUES ('1756', '1001', '0', '2017-08-14 15:44:01', null);
INSERT INTO `osa_online_log` VALUES ('1757', '1001', '0', '2017-08-14 15:45:01', null);
INSERT INTO `osa_online_log` VALUES ('1758', '1001', '0', '2017-08-14 15:46:01', null);
INSERT INTO `osa_online_log` VALUES ('1759', '1001', '0', '2017-08-14 15:47:01', null);
INSERT INTO `osa_online_log` VALUES ('1760', '1001', '0', '2017-08-14 15:48:01', null);
INSERT INTO `osa_online_log` VALUES ('1761', '1001', '0', '2017-08-14 15:49:01', null);
INSERT INTO `osa_online_log` VALUES ('1762', '1001', '0', '2017-08-14 15:50:01', null);
INSERT INTO `osa_online_log` VALUES ('1763', '1001', '0', '2017-08-14 15:51:01', null);
INSERT INTO `osa_online_log` VALUES ('1764', '1001', '0', '2017-08-14 15:52:01', null);
INSERT INTO `osa_online_log` VALUES ('1765', '1001', '1', '2017-08-14 15:53:01', null);
INSERT INTO `osa_online_log` VALUES ('1766', '1001', '1', '2017-08-14 15:54:01', null);
INSERT INTO `osa_online_log` VALUES ('1767', '1001', '0', '2017-08-14 15:55:01', null);
INSERT INTO `osa_online_log` VALUES ('1768', '1001', '0', '2017-08-14 15:56:01', null);
INSERT INTO `osa_online_log` VALUES ('1769', '1001', '1', '2017-08-14 15:57:01', null);
INSERT INTO `osa_online_log` VALUES ('1770', '1001', '1', '2017-08-14 15:58:01', null);
INSERT INTO `osa_online_log` VALUES ('1771', '1001', '1', '2017-08-14 15:59:01', null);
INSERT INTO `osa_online_log` VALUES ('1772', '1001', '0', '2017-08-14 16:00:01', null);
INSERT INTO `osa_online_log` VALUES ('1773', '1001', '0', '2017-08-14 16:01:01', null);
INSERT INTO `osa_online_log` VALUES ('1774', '1001', '0', '2017-08-14 16:02:01', null);
INSERT INTO `osa_online_log` VALUES ('1775', '1001', '0', '2017-08-14 16:03:01', null);
INSERT INTO `osa_online_log` VALUES ('1776', '1001', '0', '2017-08-14 16:04:01', null);
INSERT INTO `osa_online_log` VALUES ('1777', '1001', '0', '2017-08-14 16:05:01', null);
INSERT INTO `osa_online_log` VALUES ('1778', '1001', '0', '2017-08-14 16:06:01', null);
INSERT INTO `osa_online_log` VALUES ('1779', '1001', '2', '2017-08-14 16:07:01', null);
INSERT INTO `osa_online_log` VALUES ('1780', '1001', '3', '2017-08-14 16:08:01', null);
INSERT INTO `osa_online_log` VALUES ('1781', '1001', '0', '2017-08-14 16:09:01', null);
INSERT INTO `osa_online_log` VALUES ('1782', '1001', '0', '2017-08-14 16:10:01', null);
INSERT INTO `osa_online_log` VALUES ('1783', '1001', '0', '2017-08-14 16:11:01', null);
INSERT INTO `osa_online_log` VALUES ('1784', '1001', '0', '2017-08-14 16:12:01', null);
INSERT INTO `osa_online_log` VALUES ('1785', '1001', '0', '2017-08-14 16:13:01', null);
INSERT INTO `osa_online_log` VALUES ('1786', '1001', '0', '2017-08-14 16:14:01', null);
INSERT INTO `osa_online_log` VALUES ('1787', '1001', '0', '2017-08-14 16:15:01', null);
INSERT INTO `osa_online_log` VALUES ('1788', '1001', '1', '2017-08-14 16:16:01', null);
INSERT INTO `osa_online_log` VALUES ('1789', '1001', '2', '2017-08-14 16:17:01', null);
INSERT INTO `osa_online_log` VALUES ('1790', '1001', '2', '2017-08-14 16:18:01', null);
INSERT INTO `osa_online_log` VALUES ('1791', '1001', '2', '2017-08-14 16:19:01', null);
INSERT INTO `osa_online_log` VALUES ('1792', '1001', '2', '2017-08-14 16:20:01', null);
INSERT INTO `osa_online_log` VALUES ('1793', '1001', '2', '2017-08-14 16:21:01', null);
INSERT INTO `osa_online_log` VALUES ('1794', '1001', '2', '2017-08-14 16:22:01', null);
INSERT INTO `osa_online_log` VALUES ('1795', '1001', '2', '2017-08-14 16:23:01', null);
INSERT INTO `osa_online_log` VALUES ('1796', '1001', '0', '2017-08-14 16:24:01', null);
INSERT INTO `osa_online_log` VALUES ('1797', '1001', '0', '2017-08-14 16:25:01', null);
INSERT INTO `osa_online_log` VALUES ('1798', '1001', '0', '2017-08-14 16:26:01', null);
INSERT INTO `osa_online_log` VALUES ('1799', '1001', '0', '2017-08-14 16:27:01', null);
INSERT INTO `osa_online_log` VALUES ('1800', '1001', '0', '2017-08-14 16:28:01', null);
INSERT INTO `osa_online_log` VALUES ('1801', '1001', '0', '2017-08-14 16:29:01', null);
INSERT INTO `osa_online_log` VALUES ('1802', '1001', '0', '2017-08-14 16:30:01', null);
INSERT INTO `osa_online_log` VALUES ('1803', '1001', '0', '2017-08-14 16:31:01', null);
INSERT INTO `osa_online_log` VALUES ('1804', '1001', '0', '2017-08-14 16:32:01', null);
INSERT INTO `osa_online_log` VALUES ('1805', '1001', '0', '2017-08-14 16:33:01', null);
INSERT INTO `osa_online_log` VALUES ('1806', '1001', '0', '2017-08-14 16:34:01', null);
INSERT INTO `osa_online_log` VALUES ('1807', '1001', '0', '2017-08-14 16:35:01', null);
INSERT INTO `osa_online_log` VALUES ('1808', '1001', '0', '2017-08-14 16:36:01', null);
INSERT INTO `osa_online_log` VALUES ('1809', '1001', '0', '2017-08-14 16:37:01', null);
INSERT INTO `osa_online_log` VALUES ('1810', '1001', '0', '2017-08-14 16:38:01', null);
INSERT INTO `osa_online_log` VALUES ('1811', '1001', '0', '2017-08-14 16:39:01', null);
INSERT INTO `osa_online_log` VALUES ('1812', '1001', '0', '2017-08-14 16:40:01', null);
INSERT INTO `osa_online_log` VALUES ('1813', '1001', '0', '2017-08-14 16:41:01', null);
INSERT INTO `osa_online_log` VALUES ('1814', '1001', '0', '2017-08-14 16:42:01', null);
INSERT INTO `osa_online_log` VALUES ('1815', '1001', '0', '2017-08-14 16:43:01', null);
INSERT INTO `osa_online_log` VALUES ('1816', '1001', '0', '2017-08-14 16:44:01', null);
INSERT INTO `osa_online_log` VALUES ('1817', '1001', '0', '2017-08-14 16:45:01', null);
INSERT INTO `osa_online_log` VALUES ('1818', '1001', '0', '2017-08-14 16:46:01', null);
INSERT INTO `osa_online_log` VALUES ('1819', '1001', '0', '2017-08-14 16:47:01', null);
INSERT INTO `osa_online_log` VALUES ('1820', '1001', '0', '2017-08-14 16:48:01', null);
INSERT INTO `osa_online_log` VALUES ('1821', '1001', '0', '2017-08-14 16:49:01', null);
INSERT INTO `osa_online_log` VALUES ('1822', '1001', '0', '2017-08-14 16:50:01', null);
INSERT INTO `osa_online_log` VALUES ('1823', '1001', '0', '2017-08-14 16:51:01', null);
INSERT INTO `osa_online_log` VALUES ('1824', '1001', '0', '2017-09-20 15:30:02', null);
INSERT INTO `osa_online_log` VALUES ('1825', '1001', '0', '2017-09-20 15:31:01', null);
INSERT INTO `osa_online_log` VALUES ('1826', '1001', '0', '2017-09-20 15:32:01', null);
INSERT INTO `osa_online_log` VALUES ('1827', '1001', '0', '2017-09-20 15:33:01', null);
INSERT INTO `osa_online_log` VALUES ('1828', '1001', '0', '2017-09-20 15:34:01', null);
INSERT INTO `osa_online_log` VALUES ('1829', '1001', '0', '2017-09-20 15:35:01', null);
INSERT INTO `osa_online_log` VALUES ('1830', '1001', '0', '2017-09-20 15:36:01', null);
INSERT INTO `osa_online_log` VALUES ('1831', '1001', '0', '2017-09-20 15:37:01', null);
INSERT INTO `osa_online_log` VALUES ('1832', '1001', '0', '2017-09-20 15:38:01', null);
INSERT INTO `osa_online_log` VALUES ('1833', '1001', '0', '2017-09-20 15:39:01', null);
INSERT INTO `osa_online_log` VALUES ('1834', '1001', '0', '2017-09-20 15:40:01', null);
INSERT INTO `osa_online_log` VALUES ('1835', '1001', '0', '2017-09-20 15:41:01', null);
INSERT INTO `osa_online_log` VALUES ('1836', '1001', '0', '2017-09-20 15:42:01', null);
INSERT INTO `osa_online_log` VALUES ('1837', '1001', '0', '2017-09-20 15:43:01', null);
INSERT INTO `osa_online_log` VALUES ('1838', '1001', '0', '2017-09-20 15:44:01', null);
INSERT INTO `osa_online_log` VALUES ('1839', '1001', '0', '2017-09-20 15:45:01', null);
INSERT INTO `osa_online_log` VALUES ('1840', '1001', '0', '2017-09-20 15:46:01', null);
INSERT INTO `osa_online_log` VALUES ('1841', '1001', '0', '2017-09-20 15:47:01', null);
INSERT INTO `osa_online_log` VALUES ('1842', '1001', '0', '2017-09-20 18:18:01', null);
INSERT INTO `osa_online_log` VALUES ('1843', '1001', '0', '2017-09-20 18:19:01', null);
INSERT INTO `osa_online_log` VALUES ('1844', '1001', '0', '2017-09-20 18:24:01', null);
INSERT INTO `osa_online_log` VALUES ('1845', '1001', '0', '2017-09-20 18:25:01', null);
INSERT INTO `osa_online_log` VALUES ('1846', '1001', '0', '2017-09-20 18:26:01', null);
INSERT INTO `osa_online_log` VALUES ('1847', '1001', '0', '2017-09-20 18:27:01', null);
INSERT INTO `osa_online_log` VALUES ('1848', '1001', '0', '2017-09-20 18:30:01', null);
INSERT INTO `osa_online_log` VALUES ('1849', '1001', '0', '2017-09-20 18:31:01', null);
INSERT INTO `osa_online_log` VALUES ('1850', '1001', '0', '2017-09-20 18:32:01', null);
INSERT INTO `osa_online_log` VALUES ('1851', '1001', '0', '2017-09-20 18:33:01', null);
INSERT INTO `osa_online_log` VALUES ('1852', '1001', '0', '2017-09-20 18:34:01', null);
INSERT INTO `osa_online_log` VALUES ('1853', '1001', '0', '2017-09-20 18:35:01', null);
INSERT INTO `osa_online_log` VALUES ('1854', '1001', '0', '2017-09-20 18:36:01', null);

-- ----------------------------
-- Table structure for osa_operator_recharge
-- ----------------------------
DROP TABLE IF EXISTS `osa_operator_recharge`;
CREATE TABLE `osa_operator_recharge` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `open_id` varchar(100) DEFAULT NULL,
  `world_id` varchar(100) DEFAULT NULL,
  `gold` double(11,0) DEFAULT NULL COMMENT '充的钱',
  `money` double(10,2) DEFAULT NULL COMMENT '单价',
  `billno` varchar(100) DEFAULT NULL COMMENT '订单号',
  `time` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '状态',
  `addtime` varchar(20) DEFAULT NULL,
  `res` varchar(100) DEFAULT NULL,
  `info` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of osa_operator_recharge
-- ----------------------------
INSERT INTO `osa_operator_recharge` VALUES ('1', '321654', '1001', null, '10.00', 'player:879877857940078592', '1498614203', '1', '2017-06-28 09:43:26', '1', null);
INSERT INTO `osa_operator_recharge` VALUES ('2', '321654', '1001', null, '10.00', 'player:879886984158380032', '1498616379', '1', '2017-06-28 10:19:46', '1', null);
INSERT INTO `osa_operator_recharge` VALUES ('3', '321654', '1001', null, '11.00', 'player:879887196549545984', '1498616429', '1', '2017-06-28 10:20:29', '1', null);
INSERT INTO `osa_operator_recharge` VALUES ('4', '321654', '1001', '500', '400.00', 'test1470654170170', '1499751590', '1', '2017-07-11 13:40:25', '1', null);
INSERT INTO `osa_operator_recharge` VALUES ('5', '321654', '1001', '500', '400.00', 'test1470654170171', '1499752261', '1', '2017-07-11 13:51:14', '1', null);

-- ----------------------------
-- Table structure for osa_player_register_log
-- ----------------------------
DROP TABLE IF EXISTS `osa_player_register_log`;
CREATE TABLE `osa_player_register_log` (
  `open_id` varchar(50) DEFAULT NULL COMMENT '帐号',
  `world_id` varchar(20) DEFAULT NULL,
  `lastlogin_ip` varchar(20) DEFAULT NULL,
  `lastlogintime` varchar(20) DEFAULT NULL,
  `info` varchar(1000) DEFAULT NULL,
  `app_id` varchar(50) DEFAULT NULL COMMENT '应用id',
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='热血七龙珠账号表';

-- ----------------------------
-- Records of osa_player_register_log
-- ----------------------------

-- ----------------------------
-- Table structure for osa_proxy_config
-- ----------------------------
DROP TABLE IF EXISTS `osa_proxy_config`;
CREATE TABLE `osa_proxy_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `one_level` varchar(255) DEFAULT NULL COMMENT '一级的充值比例',
  `two_level` varchar(255) DEFAULT NULL COMMENT '二级充值比例',
  `three_level` varchar(255) DEFAULT NULL COMMENT '三级充值比例',
  `none_level` varchar(255) DEFAULT NULL COMMENT '玩家充值比例',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of osa_proxy_config
-- ----------------------------
INSERT INTO `osa_proxy_config` VALUES ('1', '12', '8', '4', '1');

-- ----------------------------
-- Table structure for osa_proxy_recharge
-- ----------------------------
DROP TABLE IF EXISTS `osa_proxy_recharge`;
CREATE TABLE `osa_proxy_recharge` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `proxy_name` varchar(255) DEFAULT NULL COMMENT '代理名称',
  `money` double(20,2) DEFAULT '0.00' COMMENT '充值的金额(rmb)',
  `is_proxy` tinyint(4) DEFAULT '0' COMMENT '是否是代理1为代理',
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '申请充值时间',
  `name` varchar(255) DEFAULT NULL COMMENT '充值的用户名,或者代理名',
  `trader_order` varchar(1024) DEFAULT NULL COMMENT '交易号',
  `online_pay` int(11) DEFAULT NULL COMMENT '是否在线充值 1为在线充',
  `is_fetch` int(11) DEFAULT '0' COMMENT '是否已提现 ,申请提现为1,已提为2',
  `fetch_money` double(20,2) DEFAULT '0.00' COMMENT '提成',
  `flag` int(11) DEFAULT '1' COMMENT '充值标志,支付宝有用',
  `open_id` varchar(255) DEFAULT NULL COMMENT '开放平台id',
  PRIMARY KEY (`id`),
  KEY `agent_name` (`proxy_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of osa_proxy_recharge
-- ----------------------------
INSERT INTO `osa_proxy_recharge` VALUES ('1', '超级管理员', '1.00', '0', '2017-06-28 09:43:44', 'c:esmj879611060301070336', 'player:879877857940078592', '0', '0', '0.15', '1', null);
INSERT INTO `osa_proxy_recharge` VALUES ('2', 'proxy1', '10.00', '1', '2017-06-28 10:17:37', 'proxy12', 'agent:879886473006940160', '0', '0', '0.00', '1', null);
INSERT INTO `osa_proxy_recharge` VALUES ('3', 'proxy12', '1.00', '0', '2017-06-28 11:03:41', 'c:esmj879611060301070336', 'player:879886984158380032', '0', '2', '0.15', '1', null);
INSERT INTO `osa_proxy_recharge` VALUES ('4', 'proxy12', '5.00', '0', '2017-06-28 11:03:39', 'c:esmj879611060301070336', 'player:879887196549545984', '0', '2', '0.75', '1', null);
INSERT INTO `osa_proxy_recharge` VALUES ('5', '超级管理员', '400.00', '0', '2017-07-11 13:40:26', 'c:esmj879611060301070336', 'test1470654170170', '0', '0', '60.00', '1', null);
INSERT INTO `osa_proxy_recharge` VALUES ('6', 'proxy12', '400.00', '0', '2017-07-11 13:52:37', 'c:esmj879611060301070336', 'test1470654170171', '0', '0', '60.00', '1', null);
INSERT INTO `osa_proxy_recharge` VALUES ('7', 'admin', '100.00', '1', '2017-10-19 12:41:17', 'p1001', '920861619477544960', '0', '0', '0.00', '1', null);
INSERT INTO `osa_proxy_recharge` VALUES ('8', 'admin', '100.00', '1', '2017-10-19 16:51:20', 'p1001', '920870765740425216', '0', '0', '0.00', '1', null);
INSERT INTO `osa_proxy_recharge` VALUES ('9', 'admin', '1000.00', '1', '2017-10-19 16:51:31', 'p1002', '920873637106417664', '0', '0', '0.00', '1', null);
INSERT INTO `osa_proxy_recharge` VALUES ('10', 'p1001', '7.00', '0', '2017-10-19 16:51:43', '1', '920927470377500672', '0', '2', '1.00', '1', '1');
INSERT INTO `osa_proxy_recharge` VALUES ('11', 'p1001', '7.00', '0', '2017-10-19 16:51:45', '1', '920927712120406016', '1', '2', '1.00', '1', '1');
INSERT INTO `osa_proxy_recharge` VALUES ('12', 'p1001', '7.00', '0', '2017-10-19 16:51:46', '1', '920927802092421120', '1', '2', '1.00', '1', '1');
INSERT INTO `osa_proxy_recharge` VALUES ('13', 'p1001', '7.00', '0', '2017-10-19 16:51:48', '1', '920928591271690240', '1', '2', '1.00', '1', '1');
INSERT INTO `osa_proxy_recharge` VALUES ('14', 'p1001', '7.00', '0', '2017-10-19 16:51:52', '1', '920930089422553088', '1', '2', '1.00', '1', '1');
INSERT INTO `osa_proxy_recharge` VALUES ('15', 'admin', '7.00', '0', '2017-10-19 16:38:12', '1', '920932075329028096', '1', '0', '0.00', '0', '1');
INSERT INTO `osa_proxy_recharge` VALUES ('16', 'admin', '7.00', '0', '2017-10-19 16:38:46', '1', '920932221412442112', '1', '0', '0.00', '0', '1');
INSERT INTO `osa_proxy_recharge` VALUES ('17', 'admin', '7.00', '0', '2017-10-19 16:39:38', '1', '920932439147151360', '1', '0', '0.00', '0', '1');
INSERT INTO `osa_proxy_recharge` VALUES ('18', 'admin', '7.00', '0', '2017-10-19 16:48:18', '1', '920934618096467968', '1', '0', '0.00', '0', '1');
INSERT INTO `osa_proxy_recharge` VALUES ('19', 'admin', '7.00', '0', '2017-10-19 17:08:42', '1', '920939753182855168', '1', '0', '0.00', '0', '1');
INSERT INTO `osa_proxy_recharge` VALUES ('20', 'admin', '7.00', '0', '2017-10-19 17:08:56', '1', '920939811924082688', '1', '0', '0.00', '0', '1');
INSERT INTO `osa_proxy_recharge` VALUES ('21', 'admin', '7.00', '0', '2017-10-19 17:39:29', '1', '920947499001184256', '1', '0', '0.00', '0', '1');
INSERT INTO `osa_proxy_recharge` VALUES ('22', 'admin', '7.00', '0', '2017-10-19 17:40:13', '1', '920947686159417344', '1', '0', '0.00', '0', '1');
INSERT INTO `osa_proxy_recharge` VALUES ('23', 'admin', '7.00', '0', '2017-10-19 17:40:26', '1', '920947740974776320', '1', '0', '0.00', '0', '1');
INSERT INTO `osa_proxy_recharge` VALUES ('24', 'admin', '7.00', '0', '2017-10-19 17:41:12', '1', '920947929877839872', '1', '0', '0.00', '0', '1');
INSERT INTO `osa_proxy_recharge` VALUES ('25', 'admin', '7.00', '0', '2017-10-19 17:41:26', '1', '920947992431689728', '1', '0', '0.00', '0', '1');
INSERT INTO `osa_proxy_recharge` VALUES ('26', 'admin', '7.00', '0', '2017-10-19 18:07:59', '1', '920954671894364160', '1', '0', '0.00', '0', '1');
INSERT INTO `osa_proxy_recharge` VALUES ('27', 'admin', '7.00', '0', '2017-10-19 18:10:28', '1', '920955296271040512', '1', '0', '0.00', '0', '1');
INSERT INTO `osa_proxy_recharge` VALUES ('28', 'admin', '7.00', '0', '2017-10-19 18:20:59', '1', '920957945334726656', '1', '0', '0.00', '0', '1');
INSERT INTO `osa_proxy_recharge` VALUES ('29', 'admin', '7.00', '0', '2017-10-19 18:24:32', '1', '920958835147931648', '1', '0', '0.00', '0', '1');
INSERT INTO `osa_proxy_recharge` VALUES ('30', 'admin', '7.00', '0', '2017-10-19 18:24:32', '1', '920958835118571520', '1', '0', '0.00', '0', '1');
INSERT INTO `osa_proxy_recharge` VALUES ('31', 'admin', '7.00', '0', '2017-10-19 18:25:23', '1', '920959052748423168', '1', '0', '0.00', '0', '1');
INSERT INTO `osa_proxy_recharge` VALUES ('32', 'admin', '7.00', '0', '2017-10-19 18:26:44', '1', '920959389819469824', '1', '0', '0.00', '0', '1');

-- ----------------------------
-- Table structure for osa_proxy_recharge_fetch
-- ----------------------------
DROP TABLE IF EXISTS `osa_proxy_recharge_fetch`;
CREATE TABLE `osa_proxy_recharge_fetch` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `money` double(20,2) DEFAULT '0.00' COMMENT '充值的金额(rmb)',
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '申请充值时间',
  `name` varchar(255) DEFAULT NULL COMMENT '申请结算的代理名',
  `ids` varchar(512) DEFAULT NULL COMMENT '申请结算的充值id',
  `status` int(11) DEFAULT '0' COMMENT '1为已领取',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of osa_proxy_recharge_fetch
-- ----------------------------
INSERT INTO `osa_proxy_recharge_fetch` VALUES ('1', '5.00', '2017-10-19 17:08:00', 'p1001', '[10,11,12,13,14]', '1');

-- ----------------------------
-- Table structure for osa_proxy_request
-- ----------------------------
DROP TABLE IF EXISTS `osa_proxy_request`;
CREATE TABLE `osa_proxy_request` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `invite_code` varchar(255) DEFAULT NULL COMMENT '邀请码',
  `wechat_code` varchar(255) DEFAULT NULL COMMENT '微信号',
  `phone` bigint(255) DEFAULT '0' COMMENT '电话',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `parent_name` varchar(255) DEFAULT '' COMMENT '上级代理',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of osa_proxy_request
-- ----------------------------

-- ----------------------------
-- Table structure for osa_proxy_user
-- ----------------------------
DROP TABLE IF EXISTS `osa_proxy_user`;
CREATE TABLE `osa_proxy_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '用户昵称',
  `invite_code` varchar(255) DEFAULT NULL COMMENT '邀请码',
  `agent_level` int(11) DEFAULT '0' COMMENT '代理级别,0,1,2,3,',
  `remain_money` int(11) DEFAULT '0' COMMENT '剩余房卡数',
  `parent_name` varchar(255) DEFAULT NULL COMMENT '上一级代理名称',
  `wechat_code` varchar(255) DEFAULT NULL COMMENT '微信号',
  `phone` bigint(20) DEFAULT '0' COMMENT '电话',
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `password` varchar(255) DEFAULT NULL COMMENT '代理密码',
  `status` tinyint(4) DEFAULT '1' COMMENT '禁用为0,',
  `blank_card` varchar(255) DEFAULT NULL COMMENT '银行卡',
  `bind_player_id` varchar(128) DEFAULT '0' COMMENT '绑定的玩家id',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_name`) USING BTREE,
  KEY `name` (`name`) USING BTREE,
  KEY `invite_code` (`invite_code`) USING BTREE,
  KEY `phone` (`phone`) USING BTREE,
  KEY `wechat_code` (`wechat_code`) USING BTREE,
  KEY `bind_player_id` (`bind_player_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of osa_proxy_user
-- ----------------------------
INSERT INTO `osa_proxy_user` VALUES ('1', '超级管理员', '888888', '888888', '2147483137', '0', '超级管理员', '12345678996', '2017-06-28 09:36:43', '888888', '1', null, '0');
INSERT INTO `osa_proxy_user` VALUES ('11', 'proxy1', 'paWaxA', '999', '2147483617', '超级管理员', '88888', '15746953659', '2017-06-28 09:59:09', '123456', '1', null, '0');
INSERT INTO `osa_proxy_user` VALUES ('12', 'proxy2', 'f9tyhq', '999', '2147483647', '超级管理员', '9876554', '17785246536', '2017-06-28 09:59:12', '123456', '1', null, '0');
INSERT INTO `osa_proxy_user` VALUES ('13', 'proxy11', 'toq18a', '1', null, 'proxy1', 'toq18a', '13256487952', '2017-06-28 09:59:18', '123456', '1', null, '3');
INSERT INTO `osa_proxy_user` VALUES ('14', 'proxy12', 'UiU7OQ', '1', '9', 'proxy1', 'UiU7OQ', '18745696352', '2017-06-28 09:59:21', '123456', '1', null, '0');

-- ----------------------------
-- Table structure for osa_quick_note
-- ----------------------------
DROP TABLE IF EXISTS `osa_quick_note`;
CREATE TABLE `osa_quick_note` (
  `note_id` bigint(20) NOT NULL COMMENT 'note_id',
  `note_content` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '内容',
  `owner_id` int(10) unsigned NOT NULL COMMENT '谁添加的',
  PRIMARY KEY (`note_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='用于显示的quick note';

-- ----------------------------
-- Records of osa_quick_note
-- ----------------------------
INSERT INTO `osa_quick_note` VALUES ('6', '孔子说：万能的不是神，是程序员！', '1');
INSERT INTO `osa_quick_note` VALUES ('7', '听说飞信被渗透了几百台服务器', '1');
INSERT INTO `osa_quick_note` VALUES ('8', '（yamete）＝不要 ，一般音译为”亚美爹”，正确发音是：亚灭贴', '1');
INSERT INTO `osa_quick_note` VALUES ('9', '（kimochiii）＝爽死了，一般音译为”可莫其”，正确发音是：克一莫其一一 ', '1');
INSERT INTO `osa_quick_note` VALUES ('10', '（itai）＝疼 ，一般音译为以太', '1');
INSERT INTO `osa_quick_note` VALUES ('11', '（iku）＝要出来了 ，一般音译为一库', '1');
INSERT INTO `osa_quick_note` VALUES ('12', '（soko dame）＝那里……不可以 一般音译：锁扩，打灭', '1');
INSERT INTO `osa_quick_note` VALUES ('13', '(hatsukashi)＝羞死人了 ，音译：哈次卡西', '1');
INSERT INTO `osa_quick_note` VALUES ('14', '（atashinookuni）＝到人家的身体里了，音译：啊她西诺喔库你', '1');
INSERT INTO `osa_quick_note` VALUES ('15', '（mottto mottto）＝还要，还要，再大力点的意思 音译：毛掏 毛掏', '1');
INSERT INTO `osa_quick_note` VALUES ('20', '这是一条含HTML的便签 <a href=\"http://www.osadmin.org\">osadmin.org</a>', '1');
INSERT INTO `osa_quick_note` VALUES ('23', '你造吗？quick note可以关掉的，在右上角的我的账号里可以设置的。', '1');
INSERT INTO `osa_quick_note` VALUES ('24', '你造吗？“功能”其实就是“链接”啦啦，权限控制是根据用户访问的链接来验证的。', '1');
INSERT INTO `osa_quick_note` VALUES ('25', '你造吗？权限是赋予给账号组的，账号组下的用户拥有相同的权限。', '1');
INSERT INTO `osa_quick_note` VALUES ('26', 'Hi，你注意到navibar上的+号和-号了吗？', '1');
INSERT INTO `osa_quick_note` VALUES ('27', '假如世界上只剩下两坨屎，我一定会把热的留给你', '1');
INSERT INTO `osa_quick_note` VALUES ('28', '你造吗？这页面设计用是bootstrap模板改的', '1');
INSERT INTO `osa_quick_note` VALUES ('29', '你造吗？这全部都是我一个人开发的，可特么累了', '1');
INSERT INTO `osa_quick_note` VALUES ('30', '客官有什么建议可以直接在weibo.com上<a target=_blank  href =\"http://weibo.com/osadmin\">@OSAdmin官网</a> 本店服务一定会让客官满意的！亚美爹！', '1');

-- ----------------------------
-- Table structure for osa_recharge_log
-- ----------------------------
DROP TABLE IF EXISTS `osa_recharge_log`;
CREATE TABLE `osa_recharge_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `worldid` varchar(20) DEFAULT NULL,
  `openid` varchar(50) DEFAULT NULL,
  `moneybefore` double(12,2) DEFAULT NULL COMMENT '游戏币',
  `moneyafter` double(12,2) DEFAULT NULL,
  `moneyadd` double(12,2) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `sfrom` varchar(2) DEFAULT NULL COMMENT '充值渠道，主要是针对自身平台',
  `level` int(11) DEFAULT NULL,
  `rolename` varchar(50) DEFAULT NULL,
  `addtime` varchar(20) DEFAULT NULL,
  `billon` varchar(1024) DEFAULT NULL,
  `app_id` varchar(50) DEFAULT NULL COMMENT '应用id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of osa_recharge_log
-- ----------------------------
INSERT INTO `osa_recharge_log` VALUES ('1', '1001', '321654', '0.00', '100.00', '100.00', '2017-06-27 19:33:47', '1', '1', 'c:esmj879611060301070336', '2017-06-27 19:33:58', 'lyh:1498563225592', '1001');
INSERT INTO `osa_recharge_log` VALUES ('2', '1001', '321654', '100.00', '110.00', '10.00', '2017-06-28 09:43:25', '1', '1', 'c:esmj879611060301070336', '2017-06-28 09:43:29', 'player:879877857940078592', '1001');
INSERT INTO `osa_recharge_log` VALUES ('3', '1001', 'zyj', '0.00', '100.00', '100.00', '2017-06-29 14:44:30', '1', '1', 'c:eW2bico', '2017-06-29 14:44:31', 'lyh:1498718567948', '1001');
INSERT INTO `osa_recharge_log` VALUES ('4', '1001', 'zyj', '100.00', '200.00', '100.00', '2017-06-29 14:45:43', '1', '1', 'c:eW2bico', '2017-06-29 14:45:43', 'lyh:1498718742994', '1001');
INSERT INTO `osa_recharge_log` VALUES ('5', '1001', 'zyj', '200.00', '210.00', '10.00', '2017-06-29 14:46:33', '1', '1', 'c:eW2bico', '2017-06-29 14:46:33', 'lyh:1498718792857', '1001');
INSERT INTO `osa_recharge_log` VALUES ('6', '1001', 'jyz', '0.00', '10.00', '10.00', '2017-06-29 14:47:05', '1', '1', 'c:ec0OSMt', '2017-06-29 14:47:05', 'lyh:1498718825681', '1001');
INSERT INTO `osa_recharge_log` VALUES ('7', '1001', 'jyz', '0.00', '10.00', '10.00', '2017-06-29 14:51:48', '1', '1', 'c:ec0OSMt', '2017-06-29 14:51:48', 'lyh:1498719108595', '1001');
INSERT INTO `osa_recharge_log` VALUES ('8', '1001', 'jyz', '0.00', '10.00', '10.00', '2017-06-29 14:54:10', '1', '1', 'c:ec0OSMt', '2017-06-29 14:54:10', 'lyh:1498719225932', '1001');
INSERT INTO `osa_recharge_log` VALUES ('9', '1001', 'jyz', '0.00', '10.00', '10.00', '2017-06-29 15:24:29', '1', '1', 'c:ec0OSMt', '2017-06-29 15:24:30', 'lyh:1498721068814', '1001');
INSERT INTO `osa_recharge_log` VALUES ('10', '1001', '321654', '131.00', '631.00', '500.00', '2017-07-11 13:40:16', '1', '1', 'c:esmj879611060301070336', '2017-07-11 13:40:25', 'test1470654170170', '1001');
INSERT INTO `osa_recharge_log` VALUES ('11', '1001', '321654', '631.00', '1131.00', '500.00', '2017-07-11 13:51:14', '1', '1', 'c:esmj879611060301070336', '2017-07-11 13:51:14', 'test1470654170171', '1001');

-- ----------------------------
-- Table structure for osa_shop
-- ----------------------------
DROP TABLE IF EXISTS `osa_shop`;
CREATE TABLE `osa_shop` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `price` double(20,2) DEFAULT '0.00' COMMENT '价格(RMB)',
  `num` int(11) DEFAULT '0' COMMENT '钻的数量',
  `gift` int(11) DEFAULT '0' COMMENT '赠送',
  `type` int(11) DEFAULT '0' COMMENT '充值类型0为全部,1为玩家2.为代理',
  `name` varchar(255) DEFAULT NULL COMMENT '商品名称',
  PRIMARY KEY (`id`),
  KEY `price` (`price`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of osa_shop
-- ----------------------------
INSERT INTO `osa_shop` VALUES ('1', '0.01', '7', '0', '0', '钻6');
INSERT INTO `osa_shop` VALUES ('2', '12.00', '15', '0', '0', '钻12');
INSERT INTO `osa_shop` VALUES ('3', '24.00', '30', '0', '0', '钻24');
INSERT INTO `osa_shop` VALUES ('4', '48.00', '58', '0', '0', '钻48');
INSERT INTO `osa_shop` VALUES ('5', '96.00', '116', '0', '0', '钻96');
INSERT INTO `osa_shop` VALUES ('6', '200.00', '250', '0', '0', '钻200');
INSERT INTO `osa_shop` VALUES ('7', '400.00', '500', '0', '0', '钻400');

-- ----------------------------
-- Table structure for osa_sys_log
-- ----------------------------
DROP TABLE IF EXISTS `osa_sys_log`;
CREATE TABLE `osa_sys_log` (
  `id` bigint(20) NOT NULL,
  `user_name` varchar(32) NOT NULL,
  `action` varchar(255) NOT NULL,
  `class_name` varchar(255) NOT NULL COMMENT '操作了哪个类的对象',
  `class_obj` varchar(32) NOT NULL COMMENT '操作的对象是谁，可能为对象的ID',
  `result` text NOT NULL COMMENT '操作的结果',
  `op_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `op_time` (`op_time`) USING BTREE,
  KEY `class_name` (`class_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='操作日志表';

-- ----------------------------
-- Records of osa_sys_log
-- ----------------------------
INSERT INTO `osa_sys_log` VALUES ('1', 'admin', 'LOGIN', 'User', '', '\"\\u7528\\u6237\\u540d\\u6216\\u5bc6\\u7801\\u9519\\u8bef\"', '1502077441');
INSERT INTO `osa_sys_log` VALUES ('2', 'admin', 'LOGIN', 'User', '1', '{\"IP\":\"127.0.0.1\"}', '1502077462');
INSERT INTO `osa_sys_log` VALUES ('3', 'admin', 'LOGIN', 'User', '1', '{\"IP\":\"127.0.0.1\"}', '1502350173');
INSERT INTO `osa_sys_log` VALUES ('4', 'admin', 'LOGOUT', 'User', '1', '', '1502361331');
INSERT INTO `osa_sys_log` VALUES ('5', '17578945632', 'LOGIN', 'User', '', '\"\\u7528\\u6237\\u540d\\u6216\\u5bc6\\u7801\\u9519\\u8bef\"', '1502438694');
INSERT INTO `osa_sys_log` VALUES ('6', 'admin', 'LOGIN', 'User', '1', '{\"IP\":\"127.0.0.1\"}', '1502438716');
INSERT INTO `osa_sys_log` VALUES ('7', 'admin', 'LOGIN', 'User', '1', '{\"IP\":\"127.0.0.1\"}', '1502691597');
INSERT INTO `osa_sys_log` VALUES ('8', 'admin', 'LOGIN', 'User', '1', '{\"IP\":\"127.0.0.1\"}', '1502762558');
INSERT INTO `osa_sys_log` VALUES ('9', 'admin', 'LOGIN', 'User', '1', '{\"IP\":\"127.0.0.1\"}', '1502762665');
INSERT INTO `osa_sys_log` VALUES ('10', 'admin', 'LOGIN', 'User', '1', '{\"IP\":\"127.0.0.1\"}', '1502778355');
INSERT INTO `osa_sys_log` VALUES ('11', 'admin', 'LOGIN', 'User', '1', '{\"IP\":\"127.0.0.1\"}', '1506502111');
INSERT INTO `osa_sys_log` VALUES ('12', 'admin', 'LOGIN', 'User', '1', '{\"IP\":\"127.0.0.1\"}', '1506568847');

-- ----------------------------
-- Table structure for osa_user
-- ----------------------------
DROP TABLE IF EXISTS `osa_user`;
CREATE TABLE `osa_user` (
  `id` bigint(20) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `real_name` varchar(255) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `user_desc` varchar(255) DEFAULT NULL,
  `login_time` datetime DEFAULT NULL COMMENT '登录时间',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '用户状态',
  `login_ip` varchar(32) DEFAULT NULL,
  `user_group` int(11) NOT NULL,
  `template` varchar(32) NOT NULL DEFAULT 'default' COMMENT '主题模板',
  `shortcuts` varchar(255) DEFAULT NULL COMMENT '快捷菜单',
  `show_quicknote` int(11) DEFAULT '1' COMMENT '是否显示quicknote',
  `wechat` varchar(255) DEFAULT NULL COMMENT '微信号',
  `is_proxy` int(11) DEFAULT '0' COMMENT '1=代理',
  `bank` varchar(255) DEFAULT NULL COMMENT '银行卡号',
  `invite_code` varchar(255) DEFAULT NULL COMMENT '邀请码',
  `proxy_level` int(11) DEFAULT '1' COMMENT '代理等级',
  `father_name` varchar(255) DEFAULT '' COMMENT '父代理名称',
  `remain_money` varchar(255) DEFAULT '0' COMMENT '剩余金币',
  `bind_player_id` bigint(20) DEFAULT '0' COMMENT '绑定的玩家id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `wechat` (`wechat`),
  KEY `mobile` (`mobile`),
  KEY `user_name` (`user_name`) USING BTREE,
  KEY `father_name` (`father_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='后台用户';

-- ----------------------------
-- Records of osa_user
-- ----------------------------
INSERT INTO `osa_user` VALUES ('1', 'admin', '123456', 'SomewhereYu', '13800138001', 'admin@osadmin.org', '初始的超级管理员!', '2017-10-19 17:03:46', '1', '192.168.0.189', '1', 'schoolpainting', '2,7,10,11,13,14,18,21,24', '0', null, '1', null, '88888', '10', '', '999998600', '0', '2017-10-11 16:10:59');
INSERT INTO `osa_user` VALUES ('26', 'demo', 'e10adc3949ba59abbe56e057f20f883e', 'SomewhereYu', '15812345678', 'yuwenqi@osadmin.org', '默认用户组成员', '2017-10-10 16:16:34', '1', '127.0.0.1', '2', 'schoolpainting', '', '1', null, '0', null, null, '1', '', '0', '0', '2017-10-20 16:11:03');
INSERT INTO `osa_user` VALUES ('920549016024907776', 'p1001', '123123', 'dsweew', '15847125895', '1548@126.com', null, '2017-10-19 17:15:21', '1', '192.168.0.189', '2', 'schoolpainting', null, null, null, '1', 'ewreq', '17776', '1', 'admin', '1100', '0', '2017-10-18 15:16:24');
INSERT INTO `osa_user` VALUES ('920861890291171328', 'p1002', '123123', 'fcfffd', '18874584695', '1548@126.com', null, null, '1', null, '3', 'schoolpainting', null, null, null, '1', 'sdafsafas', '71328', '2', 'admin', '300', '0', '2017-10-19 11:59:38');

-- ----------------------------
-- Table structure for osa_user_group
-- ----------------------------
DROP TABLE IF EXISTS `osa_user_group`;
CREATE TABLE `osa_user_group` (
  `group_id` bigint(20) NOT NULL,
  `group_name` varchar(32) DEFAULT NULL,
  `group_role` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '初始权限为1,5,17,18,22,23,24,25',
  `owner_id` int(11) DEFAULT NULL COMMENT '创建人ID',
  `group_desc` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='账号组';

-- ----------------------------
-- Records of osa_user_group
-- ----------------------------
INSERT INTO `osa_user_group` VALUES ('1', '超级管理员组', '1,2,3,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44', '1', '万能的不是神，是程序员');
INSERT INTO `osa_user_group` VALUES ('2', '一级代理', '1,27,28,29,30,31,32,33,34,35,36,39,42', '1', '一级代理');
INSERT INTO `osa_user_group` VALUES ('3', '二级代理', '1,27,28,29,30,31,32,33,34,35,36,37,39,42', '1', '二级');
