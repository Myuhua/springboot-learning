/*
 Navicat Premium Data Transfer

 Source Server         : 241
 Source Server Type    : MySQL
 Source Server Version : 50727
 Source Host           : 172.16.11.241:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 50727
 File Encoding         : 65001

 Date: 21/04/2020 10:40:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_student
-- ----------------------------
DROP TABLE IF EXISTS `t_student`;
CREATE TABLE `t_student`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `number` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_student
-- ----------------------------
INSERT INTO `t_student` VALUES (1, 'yuhua', '121314');
INSERT INTO `t_student` VALUES (2, '小明', '12345');
INSERT INTO `t_student` VALUES (3, '小华', '123456');
INSERT INTO `t_student` VALUES (4, '王帅', '5345');
INSERT INTO `t_student` VALUES (5, '张强', '534534');
INSERT INTO `t_student` VALUES (6, '李四', '455');
INSERT INTO `t_student` VALUES (7, '马六', '7657');

SET FOREIGN_KEY_CHECKS = 1;
