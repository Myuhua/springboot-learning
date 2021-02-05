/*
 Navicat Premium Data Transfer

 Source Server         : 244
 Source Server Type    : MySQL
 Source Server Version : 50731
 Source Host           : 172.16.11.244:3306
 Source Schema         : alive

 Target Server Type    : MySQL
 Target Server Version : 50731
 File Encoding         : 65001

 Date: 05/02/2021 17:37:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_dynamic_column
-- ----------------------------
DROP TABLE IF EXISTS `t_dynamic_column`;
CREATE TABLE `t_dynamic_column`  (
  `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `FORM_ID` int(11) NOT NULL COMMENT '表单ID',
  `NAME` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '表单项',
  `TIP` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '表单项提示',
  `TYPE` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '类型',
  `EXAMPLE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '填报样例',
  `REQUIRED` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '是否必填',
  `STATUS` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '删除标识',
  `CREATE_USER` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `UPDATE_USER` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime(0) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '动态列' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_dynamic_data
-- ----------------------------
DROP TABLE IF EXISTS `t_dynamic_data`;
CREATE TABLE `t_dynamic_data`  (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `FORM_ID` int(11) NOT NULL COMMENT '表单ID',
  `CONTENT` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '数据',
  `STATUS` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '删除标识',
  `USER_ID` bigint(20) NOT NULL COMMENT '填写人ID',
  `COMPANY_ID` int(11) UNSIGNED NOT NULL DEFAULT 61,
  `CREATE_USER` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `UPDATE_USER` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime(0) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '动态数据' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_dynamic_form
-- ----------------------------
DROP TABLE IF EXISTS `t_dynamic_form`;
CREATE TABLE `t_dynamic_form`  (
  `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `NAME` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '表单名称',
  `COMMENT` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '表单说明',
  `DEPT_ID` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '部门ID 可见范围',
  `COMPANY_ID` int(11) UNSIGNED NOT NULL DEFAULT 61 COMMENT '公司ID',
  `TIME_CONSTRAINT` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '填报时间约束开关',
  `START_TIME` time(0) DEFAULT NULL COMMENT '填报开始时间',
  `END_TIME` time(0) DEFAULT NULL COMMENT '填报结束时间',
  `STATUS` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '审核状态',
  `USER_ID` bigint(20) NOT NULL COMMENT '创建人ID',
  `CREATE_USER` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `UPDATE_USER` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `DELETE_FLAG` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '删除标识',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '动态表单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单/按钮ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单/按钮名称',
  `parent_id` bigint(20) NOT NULL COMMENT '上级菜单ID',
  `order_num` bigint(20) DEFAULT NULL COMMENT '排序',
  `url` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '菜单URL',
  `menu_type` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类型 0菜单 1按钮',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '菜单状态（0显示 -1隐藏）',
  `perms` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '权限标识',
  `icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '图标',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) DEFAULT NULL COMMENT '修改时间',
  `is_deleted` tinyint(1) DEFAULT NULL COMMENT '是否删除 1是 0否 默认0',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE,
  INDEX `t_menu_parent_id`(`parent_id`) USING BTREE,
  INDEX `t_menu_menu_id`(`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 182 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_menu
-- ----------------------------
INSERT INTO `t_menu` VALUES (1, '系统管理', 0, 1, NULL, '0', NULL, NULL, 'layui-icon-setting', '2017-12-27 16:39:07', NULL, 0, NULL);
INSERT INTO `t_menu` VALUES (2, '系统监控', 0, 2, '', '0', NULL, '', 'layui-icon-alert', '2017-12-27 16:45:51', '2019-06-13 11:20:40', 0, NULL);
INSERT INTO `t_menu` VALUES (3, '用户管理', 1, 1, '/system/user', '0', NULL, 'user:view', '', '2017-12-27 16:47:13', '2019-12-04 16:46:50', 0, NULL);
INSERT INTO `t_menu` VALUES (4, '角色管理', 1, 2, '/system/role', '0', NULL, 'role:view', '', '2017-12-27 16:48:09', '2019-06-13 08:57:19', 0, NULL);
INSERT INTO `t_menu` VALUES (5, '菜单管理', 1, 3, '/system/menu', '0', NULL, 'menu:view', '', '2017-12-27 16:48:57', '2019-06-13 08:57:34', 0, NULL);
INSERT INTO `t_menu` VALUES (6, '部门管理', 1, 4, '/system/dept', '0', NULL, 'dept:view', '', '2017-12-27 16:57:33', '2019-06-14 19:56:00', 0, NULL);
INSERT INTO `t_menu` VALUES (8, '在线用户', 2, 1, '/monitor/online', '0', NULL, 'online:view', '', '2017-12-27 16:59:33', '2019-06-13 14:30:31', 0, NULL);
INSERT INTO `t_menu` VALUES (10, '系统日志', 2, 2, '/monitor/log', '0', NULL, 'log:view', '', '2017-12-27 17:00:50', '2019-06-13 14:30:37', 0, NULL);
INSERT INTO `t_menu` VALUES (11, '新增用户', 3, NULL, NULL, '1', NULL, 'user:add', NULL, '2017-12-27 17:02:58', NULL, 0, NULL);
INSERT INTO `t_menu` VALUES (12, '修改用户', 3, NULL, NULL, '1', NULL, 'user:update', NULL, '2017-12-27 17:04:07', NULL, 0, NULL);
INSERT INTO `t_menu` VALUES (13, '删除用户', 3, NULL, NULL, '1', NULL, 'user:delete', NULL, '2017-12-27 17:04:58', NULL, 0, NULL);
INSERT INTO `t_menu` VALUES (14, '新增角色', 4, NULL, NULL, '1', NULL, 'role:add', NULL, '2017-12-27 17:06:38', NULL, 0, NULL);
INSERT INTO `t_menu` VALUES (15, '修改角色', 4, NULL, NULL, '1', NULL, 'role:update', NULL, '2017-12-27 17:06:38', NULL, 0, NULL);
INSERT INTO `t_menu` VALUES (16, '删除角色', 4, NULL, NULL, '1', NULL, 'role:delete', NULL, '2017-12-27 17:06:38', NULL, 0, NULL);
INSERT INTO `t_menu` VALUES (17, '新增菜单', 5, NULL, NULL, '1', NULL, 'menu:add', NULL, '2017-12-27 17:08:02', NULL, 0, NULL);
INSERT INTO `t_menu` VALUES (18, '修改菜单', 5, NULL, NULL, '1', NULL, 'menu:update', NULL, '2017-12-27 17:08:02', NULL, 0, NULL);
INSERT INTO `t_menu` VALUES (19, '删除菜单', 5, NULL, NULL, '1', NULL, 'menu:delete', NULL, '2017-12-27 17:08:02', NULL, 0, NULL);
INSERT INTO `t_menu` VALUES (20, '新增部门', 6, NULL, NULL, '1', NULL, 'dept:add', NULL, '2017-12-27 17:09:24', NULL, 0, NULL);
INSERT INTO `t_menu` VALUES (21, '修改部门', 6, NULL, NULL, '1', NULL, 'dept:update', NULL, '2017-12-27 17:09:24', NULL, 0, NULL);
INSERT INTO `t_menu` VALUES (22, '删除部门', 6, NULL, NULL, '1', NULL, 'dept:delete', NULL, '2017-12-27 17:09:24', NULL, 0, NULL);
INSERT INTO `t_menu` VALUES (23, '踢出用户', 8, NULL, NULL, '1', NULL, 'user:kickout', NULL, '2017-12-27 17:11:13', NULL, 0, NULL);
INSERT INTO `t_menu` VALUES (24, '删除日志', 10, NULL, NULL, '1', NULL, 'log:delete', NULL, '2017-12-27 17:11:45', '2019-06-06 05:56:40', 0, NULL);
INSERT INTO `t_menu` VALUES (101, '任务调度', 0, 3, NULL, '0', NULL, NULL, 'layui-icon-time-circle', '2018-02-24 15:52:57', NULL, 0, NULL);
INSERT INTO `t_menu` VALUES (102, '定时任务', 101, 1, '/job/job', '0', NULL, 'job:view', '', '2018-02-24 15:53:53', '2018-04-25 09:05:12', 0, NULL);
INSERT INTO `t_menu` VALUES (103, '新增任务', 102, NULL, NULL, '1', NULL, 'job:add', NULL, '2018-02-24 15:55:10', NULL, 0, NULL);
INSERT INTO `t_menu` VALUES (104, '修改任务', 102, NULL, NULL, '1', NULL, 'job:update', NULL, '2018-02-24 15:55:53', NULL, 0, NULL);
INSERT INTO `t_menu` VALUES (105, '删除任务', 102, NULL, NULL, '1', NULL, 'job:delete', NULL, '2018-02-24 15:56:18', NULL, 0, NULL);
INSERT INTO `t_menu` VALUES (106, '暂停任务', 102, NULL, NULL, '1', NULL, 'job:pause', NULL, '2018-02-24 15:57:08', NULL, 0, NULL);
INSERT INTO `t_menu` VALUES (107, '恢复任务', 102, NULL, NULL, '1', NULL, 'job:resume', NULL, '2018-02-24 15:58:21', NULL, 0, NULL);
INSERT INTO `t_menu` VALUES (108, '立即执行任务', 102, NULL, NULL, '1', NULL, 'job:run', NULL, '2018-02-24 15:59:45', NULL, 0, NULL);
INSERT INTO `t_menu` VALUES (109, '调度日志', 101, 2, '/job/log', '0', NULL, 'job:log:view', '', '2018-02-24 16:00:45', '2019-06-09 02:48:19', 0, NULL);
INSERT INTO `t_menu` VALUES (110, '删除日志', 109, NULL, NULL, '1', NULL, 'job:log:delete', NULL, '2018-02-24 16:01:21', NULL, 0, NULL);
INSERT INTO `t_menu` VALUES (115, '其他模块', 0, 5, NULL, '0', NULL, NULL, 'layui-icon-gift', '2019-05-27 10:18:07', NULL, 0, NULL);
INSERT INTO `t_menu` VALUES (116, 'Apex图表', 115, 2, '', '0', NULL, '', NULL, '2019-05-27 10:21:35', NULL, 0, NULL);
INSERT INTO `t_menu` VALUES (117, '线性图表', 116, 1, '/others/apex/line', '0', NULL, 'apex:line:view', NULL, '2019-05-27 10:24:49', NULL, 0, NULL);
INSERT INTO `t_menu` VALUES (118, '高德地图', 115, 3, '/others/map', '0', NULL, 'map:view', '', '2019-05-27 17:13:12', '2019-06-12 15:33:00', 0, NULL);
INSERT INTO `t_menu` VALUES (119, '面积图表', 116, 2, '/others/apex/area', '0', NULL, 'apex:area:view', NULL, '2019-05-27 18:49:22', NULL, 0, NULL);
INSERT INTO `t_menu` VALUES (120, '柱形图表', 116, 3, '/others/apex/column', '0', NULL, 'apex:column:view', NULL, '2019-05-27 18:51:33', NULL, 0, NULL);
INSERT INTO `t_menu` VALUES (121, '雷达图表', 116, 4, '/others/apex/radar', '0', NULL, 'apex:radar:view', NULL, '2019-05-27 18:56:05', NULL, 0, NULL);
INSERT INTO `t_menu` VALUES (122, '条形图表', 116, 5, '/others/apex/bar', '0', NULL, 'apex:bar:view', NULL, '2019-05-27 18:57:02', NULL, 0, NULL);
INSERT INTO `t_menu` VALUES (123, '混合图表', 116, 6, '/others/apex/mix', '0', NULL, 'apex:mix:view', '', '2019-05-27 18:58:04', '2019-06-06 02:55:23', 0, NULL);
INSERT INTO `t_menu` VALUES (125, '导入导出', 115, 4, '/others/eximport', '0', NULL, 'others:eximport:view', '', '2019-05-27 19:01:57', '2019-06-13 01:20:14', 0, NULL);
INSERT INTO `t_menu` VALUES (126, '系统图标', 132, 4, '/others/febs/icon', '0', NULL, 'febs:icons:view', '', '2019-05-27 19:03:18', '2019-06-06 03:05:26', 0, NULL);
INSERT INTO `t_menu` VALUES (127, '请求追踪', 2, 6, '/monitor/httptrace', '0', NULL, 'httptrace:view', '', '2019-05-27 19:06:38', '2019-06-13 14:36:43', 0, NULL);
INSERT INTO `t_menu` VALUES (128, '系统信息', 2, 7, NULL, '0', NULL, NULL, NULL, '2019-05-27 19:08:23', NULL, 0, NULL);
INSERT INTO `t_menu` VALUES (129, 'JVM信息', 128, 1, '/monitor/jvm', '0', NULL, 'jvm:view', '', '2019-05-27 19:08:50', '2019-06-13 14:36:51', 0, NULL);
INSERT INTO `t_menu` VALUES (131, '服务器信息', 128, 3, '/monitor/server', '0', NULL, 'server:view', '', '2019-05-27 19:10:07', '2019-06-13 14:37:04', 0, NULL);
INSERT INTO `t_menu` VALUES (132, 'FEBS组件', 115, 1, '', '0', NULL, '', NULL, '2019-05-27 19:13:54', NULL, 0, NULL);
INSERT INTO `t_menu` VALUES (133, '表单组件', 132, 1, '/others/febs/form', '0', NULL, 'febs:form:view', NULL, '2019-05-27 19:14:45', NULL, 0, NULL);
INSERT INTO `t_menu` VALUES (134, 'FEBS工具', 132, 3, '/others/febs/tools', '0', NULL, 'febs:tools:view', '', '2019-05-29 10:11:22', '2019-06-12 13:21:27', 0, NULL);
INSERT INTO `t_menu` VALUES (135, '表单组合', 132, 2, '/others/febs/form/group', '0', NULL, 'febs:formgroup:view', NULL, '2019-05-29 10:16:19', NULL, 0, NULL);
INSERT INTO `t_menu` VALUES (136, '登录日志', 2, 3, '/monitor/loginlog', '0', NULL, 'loginlog:view', '', '2019-05-29 15:56:15', '2019-06-13 14:35:56', 0, NULL);
INSERT INTO `t_menu` VALUES (137, '代码生成', 0, 4, '', '0', NULL, NULL, 'layui-icon-verticalright', '2019-06-03 15:35:58', NULL, 0, NULL);
INSERT INTO `t_menu` VALUES (138, '生成配置', 137, 1, '/generator/configure', '0', NULL, 'generator:configure:view', NULL, '2019-06-03 15:38:36', NULL, 0, NULL);
INSERT INTO `t_menu` VALUES (139, '代码生成', 137, 2, '/generator/generator', '0', NULL, 'generator:view', '', '2019-06-03 15:39:15', '2019-06-13 14:31:38', 0, NULL);
INSERT INTO `t_menu` VALUES (159, '其他组件', 132, 5, '/others/febs/others', '0', NULL, 'others:febs:others', '', '2019-06-12 07:51:08', '2019-06-12 07:51:40', 0, NULL);
INSERT INTO `t_menu` VALUES (160, '密码重置', 3, NULL, NULL, '1', NULL, 'user:password:reset', NULL, '2019-06-13 08:40:13', NULL, 0, NULL);
INSERT INTO `t_menu` VALUES (161, '导出Excel', 3, NULL, NULL, '1', NULL, 'user:export', NULL, '2019-06-13 08:40:34', NULL, 0, NULL);
INSERT INTO `t_menu` VALUES (162, '导出Excel', 4, NULL, NULL, '1', NULL, 'role:export', NULL, '2019-06-13 14:29:00', '2019-06-13 14:29:11', 0, NULL);
INSERT INTO `t_menu` VALUES (163, '导出Excel', 5, NULL, NULL, '1', NULL, 'menu:export', NULL, '2019-06-13 14:29:32', NULL, 0, NULL);
INSERT INTO `t_menu` VALUES (164, '导出Excel', 6, NULL, NULL, '1', NULL, 'dept:export', NULL, '2019-06-13 14:29:59', NULL, 0, NULL);
INSERT INTO `t_menu` VALUES (165, '修改配置', 138, NULL, NULL, '1', NULL, 'generator:configure:update', NULL, '2019-06-13 14:32:09', '2019-06-13 14:32:20', 0, NULL);
INSERT INTO `t_menu` VALUES (166, '生成代码', 139, NULL, NULL, '1', NULL, 'generator:generate', NULL, '2019-06-13 14:32:51', NULL, 0, NULL);
INSERT INTO `t_menu` VALUES (167, '模板下载', 125, NULL, NULL, '1', NULL, 'eximport:template', NULL, '2019-06-13 14:33:37', NULL, 0, NULL);
INSERT INTO `t_menu` VALUES (168, '导出Excel', 125, NULL, NULL, '1', NULL, 'eximport:export', NULL, '2019-06-13 14:33:57', NULL, 0, NULL);
INSERT INTO `t_menu` VALUES (169, '导入Excel', 125, NULL, NULL, '1', NULL, 'eximport:import', NULL, '2019-06-13 14:34:19', NULL, 0, NULL);
INSERT INTO `t_menu` VALUES (170, '导出Excel', 10, NULL, NULL, '1', NULL, 'log:export', NULL, '2019-06-13 14:34:55', NULL, 0, NULL);
INSERT INTO `t_menu` VALUES (171, '删除日志', 136, NULL, NULL, '1', NULL, 'loginlog:delete', NULL, '2019-06-13 14:35:27', '2019-06-13 14:36:08', 0, NULL);
INSERT INTO `t_menu` VALUES (172, '导出Excel', 136, NULL, NULL, '1', NULL, 'loginlog:export', NULL, '2019-06-13 14:36:26', NULL, 0, NULL);
INSERT INTO `t_menu` VALUES (173, '导出Excel', 102, NULL, NULL, '1', NULL, 'job:export', NULL, '2019-06-13 14:37:25', NULL, 0, NULL);
INSERT INTO `t_menu` VALUES (174, '导出Excel', 109, NULL, NULL, '1', NULL, 'job:log:export', NULL, '2019-06-13 14:37:46', '2019-06-13 14:38:02', 0, NULL);
INSERT INTO `t_menu` VALUES (175, 'Swagger文档', 2, 8, '/monitor/swagger', '0', NULL, 'swagger:view', '', '2019-08-18 17:25:36', '2019-08-18 17:25:59', 0, NULL);
INSERT INTO `t_menu` VALUES (178, '数据权限', 115, 5, '/others/datapermission', '0', NULL, 'others:datapermission', '', '2020-04-29 09:34:25', NULL, 0, NULL);
INSERT INTO `t_menu` VALUES (179, '业务管理', 0, NULL, '', '0', NULL, '', '', '2021-01-18 10:59:13', NULL, 0, NULL);
INSERT INTO `t_menu` VALUES (180, '智能表单', 179, NULL, '', '0', NULL, '', '', '2021-01-18 10:59:47', NULL, 0, NULL);
INSERT INTO `t_menu` VALUES (181, '表单管理', 180, NULL, '/dynamic/form/management', '0', NULL, '', '', '2021-01-18 13:51:44', '2021-01-18 14:07:06', 0, NULL);

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色状态（0正常 -1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '删除标志（0存在 -1删除）',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES (1, 'ADMIN', '0', '0', NULL, '', NULL, '', NULL);

-- ----------------------------
-- Table structure for t_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_role_menu`;
CREATE TABLE `t_role_menu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_role_menu
-- ----------------------------
INSERT INTO `t_role_menu` VALUES (1, 1, 1);

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户账号',
  `user_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '用户邮箱',
  `mobile_number` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `salt` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '盐值',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '账号是否停用（1停用 0未停用）',
  `login_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '最后登陆IP',
  `login_date` datetime(0) DEFAULT NULL COMMENT '最后登陆时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `is_deleted` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '是否删除（1表示是，0表示否）',
  `is_tab` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 'admin', '00', '', '', '0', 'RvP3UID2n30Q2sycZYvH', '$2a$10$UlexXQQVD4omj0poi7/rVudRbNltTm7YtD1IogqoBMwNy0ExyJ0JK', '0', '', NULL, NULL, '', NULL, '', NULL, '0', NULL);
INSERT INTO `t_user` VALUES (2, 'yuhua', '00', '', '', '0', 'Rt8VxsdJA87TRqpABMmg', '$2a$2a$10$UlexXQQVD4omj0poi7/rVudRbNltTm7YtD1IogqoBMwNy0ExyJ0JK', '0', '', NULL, NULL, '', '2020-05-07 06:47:06', '', NULL, '0', NULL);

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES (1, 1, 1);

SET FOREIGN_KEY_CHECKS = 1;
