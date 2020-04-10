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

 Date: 10/04/2020 11:20:14
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
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_student
-- ----------------------------
INSERT INTO `t_student` VALUES (1, 'yuhua', '121314');

SET FOREIGN_KEY_CHECKS = 1;
