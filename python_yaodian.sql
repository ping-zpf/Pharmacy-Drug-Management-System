/*
 Navicat Premium Data Transfer

 Source Server         : localhost连接
 Source Server Type    : MySQL
 Source Server Version : 50737
 Source Host           : localhost:3306
 Source Schema         : python_yaodian

 Target Server Type    : MySQL
 Target Server Version : 50737
 File Encoding         : 65001

 Date: 17/09/2023 16:55:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 81 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add ad', 7, 'add_ad');
INSERT INTO `auth_permission` VALUES (26, 'Can change ad', 7, 'change_ad');
INSERT INTO `auth_permission` VALUES (27, 'Can delete ad', 7, 'delete_ad');
INSERT INTO `auth_permission` VALUES (28, 'Can view ad', 7, 'view_ad');
INSERT INTO `auth_permission` VALUES (29, 'Can add classification', 8, 'add_classification');
INSERT INTO `auth_permission` VALUES (30, 'Can change classification', 8, 'change_classification');
INSERT INTO `auth_permission` VALUES (31, 'Can delete classification', 8, 'delete_classification');
INSERT INTO `auth_permission` VALUES (32, 'Can view classification', 8, 'view_classification');
INSERT INTO `auth_permission` VALUES (33, 'Can add error log', 9, 'add_errorlog');
INSERT INTO `auth_permission` VALUES (34, 'Can change error log', 9, 'change_errorlog');
INSERT INTO `auth_permission` VALUES (35, 'Can delete error log', 9, 'delete_errorlog');
INSERT INTO `auth_permission` VALUES (36, 'Can view error log', 9, 'view_errorlog');
INSERT INTO `auth_permission` VALUES (37, 'Can add login log', 10, 'add_loginlog');
INSERT INTO `auth_permission` VALUES (38, 'Can change login log', 10, 'change_loginlog');
INSERT INTO `auth_permission` VALUES (39, 'Can delete login log', 10, 'delete_loginlog');
INSERT INTO `auth_permission` VALUES (40, 'Can view login log', 10, 'view_loginlog');
INSERT INTO `auth_permission` VALUES (41, 'Can add notice', 11, 'add_notice');
INSERT INTO `auth_permission` VALUES (42, 'Can change notice', 11, 'change_notice');
INSERT INTO `auth_permission` VALUES (43, 'Can delete notice', 11, 'delete_notice');
INSERT INTO `auth_permission` VALUES (44, 'Can view notice', 11, 'view_notice');
INSERT INTO `auth_permission` VALUES (45, 'Can add op log', 12, 'add_oplog');
INSERT INTO `auth_permission` VALUES (46, 'Can change op log', 12, 'change_oplog');
INSERT INTO `auth_permission` VALUES (47, 'Can delete op log', 12, 'delete_oplog');
INSERT INTO `auth_permission` VALUES (48, 'Can view op log', 12, 'view_oplog');
INSERT INTO `auth_permission` VALUES (49, 'Can add tag', 13, 'add_tag');
INSERT INTO `auth_permission` VALUES (50, 'Can change tag', 13, 'change_tag');
INSERT INTO `auth_permission` VALUES (51, 'Can delete tag', 13, 'delete_tag');
INSERT INTO `auth_permission` VALUES (52, 'Can view tag', 13, 'view_tag');
INSERT INTO `auth_permission` VALUES (53, 'Can add user', 14, 'add_user');
INSERT INTO `auth_permission` VALUES (54, 'Can change user', 14, 'change_user');
INSERT INTO `auth_permission` VALUES (55, 'Can delete user', 14, 'delete_user');
INSERT INTO `auth_permission` VALUES (56, 'Can view user', 14, 'view_user');
INSERT INTO `auth_permission` VALUES (57, 'Can add thing', 15, 'add_thing');
INSERT INTO `auth_permission` VALUES (58, 'Can change thing', 15, 'change_thing');
INSERT INTO `auth_permission` VALUES (59, 'Can delete thing', 15, 'delete_thing');
INSERT INTO `auth_permission` VALUES (60, 'Can view thing', 15, 'view_thing');
INSERT INTO `auth_permission` VALUES (61, 'Can add record', 16, 'add_record');
INSERT INTO `auth_permission` VALUES (62, 'Can change record', 16, 'change_record');
INSERT INTO `auth_permission` VALUES (63, 'Can delete record', 16, 'delete_record');
INSERT INTO `auth_permission` VALUES (64, 'Can view record', 16, 'view_record');
INSERT INTO `auth_permission` VALUES (65, 'Can add comment', 17, 'add_comment');
INSERT INTO `auth_permission` VALUES (66, 'Can change comment', 17, 'change_comment');
INSERT INTO `auth_permission` VALUES (67, 'Can delete comment', 17, 'delete_comment');
INSERT INTO `auth_permission` VALUES (68, 'Can view comment', 17, 'view_comment');
INSERT INTO `auth_permission` VALUES (69, 'Can add banner', 18, 'add_banner');
INSERT INTO `auth_permission` VALUES (70, 'Can change banner', 18, 'change_banner');
INSERT INTO `auth_permission` VALUES (71, 'Can delete banner', 18, 'delete_banner');
INSERT INTO `auth_permission` VALUES (72, 'Can view banner', 18, 'view_banner');
INSERT INTO `auth_permission` VALUES (73, 'Can add address', 19, 'add_address');
INSERT INTO `auth_permission` VALUES (74, 'Can change address', 19, 'change_address');
INSERT INTO `auth_permission` VALUES (75, 'Can delete address', 19, 'delete_address');
INSERT INTO `auth_permission` VALUES (76, 'Can view address', 19, 'view_address');
INSERT INTO `auth_permission` VALUES (77, 'Can add customer', 20, 'add_customer');
INSERT INTO `auth_permission` VALUES (78, 'Can change customer', 20, 'change_customer');
INSERT INTO `auth_permission` VALUES (79, 'Can delete customer', 20, 'delete_customer');
INSERT INTO `auth_permission` VALUES (80, 'Can view customer', 20, 'view_customer');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for b_ad
-- ----------------------------
DROP TABLE IF EXISTS `b_ad`;
CREATE TABLE `b_ad`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_ad
-- ----------------------------

-- ----------------------------
-- Table structure for b_address
-- ----------------------------
DROP TABLE IF EXISTS `b_address`;
CREATE TABLE `b_address`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `desc` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `default` tinyint(1) NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_address_user_id_a37a8d6a_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_address_user_id_a37a8d6a_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_address
-- ----------------------------

-- ----------------------------
-- Table structure for b_banner
-- ----------------------------
DROP TABLE IF EXISTS `b_banner`;
CREATE TABLE `b_banner`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_banner_thing_id_3f307d00_fk_b_thing_id`(`thing_id`) USING BTREE,
  CONSTRAINT `b_banner_thing_id_3f307d00_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_banner
-- ----------------------------

-- ----------------------------
-- Table structure for b_classification
-- ----------------------------
DROP TABLE IF EXISTS `b_classification`;
CREATE TABLE `b_classification`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_classification
-- ----------------------------
INSERT INTO `b_classification` VALUES (1, '西药', '2023-09-17 11:17:27.419482');
INSERT INTO `b_classification` VALUES (2, '感冒药', '2023-09-17 11:17:32.654179');
INSERT INTO `b_classification` VALUES (3, '消化系统', '2023-09-17 11:17:41.431603');
INSERT INTO `b_classification` VALUES (4, '心血管', '2023-09-17 11:17:48.595748');
INSERT INTO `b_classification` VALUES (5, '中成药', '2023-09-17 11:17:53.466437');

-- ----------------------------
-- Table structure for b_comment
-- ----------------------------
DROP TABLE IF EXISTS `b_comment`;
CREATE TABLE `b_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment_time` datetime(6) NULL DEFAULT NULL,
  `like_count` int(11) NOT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_comment_thing_id_57ab492b_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_comment_user_id_46f0670f_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_comment_thing_id_57ab492b_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_comment_user_id_46f0670f_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_comment
-- ----------------------------

-- ----------------------------
-- Table structure for b_customer
-- ----------------------------
DROP TABLE IF EXISTS `b_customer`;
CREATE TABLE `b_customer`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jifen` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_customer
-- ----------------------------
INSERT INTO `b_customer` VALUES (1, '刘德华', '男', '22', '11', '北京大学', '90', NULL, '2023-09-17 11:43:45.086923');
INSERT INTO `b_customer` VALUES (2, '周杰伦', '男', '33', '13233333333', '福建路99号', '22', NULL, '2023-09-17 11:45:25.489772');
INSERT INTO `b_customer` VALUES (3, '杨勇', '男', '22', '123', '青岛路88号', '33', NULL, '2023-09-17 11:45:44.456076');
INSERT INTO `b_customer` VALUES (4, '杨颖', '女', '43', '+13581651531', '北京东三旗村', '2', NULL, '2023-09-17 11:46:06.920897');

-- ----------------------------
-- Table structure for b_error_log
-- ----------------------------
DROP TABLE IF EXISTS `b_error_log`;
CREATE TABLE `b_error_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_error_log
-- ----------------------------

-- ----------------------------
-- Table structure for b_login_log
-- ----------------------------
DROP TABLE IF EXISTS `b_login_log`;
CREATE TABLE `b_login_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_login_log
-- ----------------------------
INSERT INTO `b_login_log` VALUES (1, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-09-17 11:15:42.698851');
INSERT INTO `b_login_log` VALUES (2, 'admin123', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-09-17 16:44:50.430365');
INSERT INTO `b_login_log` VALUES (3, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-09-17 16:46:17.254886');
INSERT INTO `b_login_log` VALUES (4, 'admin123', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-09-17 16:51:33.534906');

-- ----------------------------
-- Table structure for b_notice
-- ----------------------------
DROP TABLE IF EXISTS `b_notice`;
CREATE TABLE `b_notice`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_notice
-- ----------------------------

-- ----------------------------
-- Table structure for b_op_log
-- ----------------------------
DROP TABLE IF EXISTS `b_op_log`;
CREATE TABLE `b_op_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `re_ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_time` datetime(6) NULL DEFAULT NULL,
  `re_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `access_time` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 243 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_op_log
-- ----------------------------
INSERT INTO `b_op_log` VALUES (1, '127.0.0.1', '2023-09-17 11:09:54.369940', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2, '127.0.0.1', '2023-09-17 11:09:54.372178', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (3, '127.0.0.1', '2023-09-17 11:09:54.375474', '/myapp/admin/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (4, '127.0.0.1', '2023-09-17 11:09:59.973730', '/myapp/admin/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (5, '127.0.0.1', '2023-09-17 11:13:07.811194', '/myapp/admin/adminLogin', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (6, '127.0.0.1', '2023-09-17 11:14:27.968233', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (7, '127.0.0.1', '2023-09-17 11:14:27.971234', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (8, '127.0.0.1', '2023-09-17 11:14:27.970232', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (9, '127.0.0.1', '2023-09-17 11:14:32.253014', '/myapp/admin/user/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (10, '127.0.0.1', '2023-09-17 11:14:50.125032', '/myapp/admin/user/create', 'POST', NULL, '2');
INSERT INTO `b_op_log` VALUES (11, '127.0.0.1', '2023-09-17 11:14:55.992745', '/myapp/admin/user/create', 'POST', NULL, '2');
INSERT INTO `b_op_log` VALUES (12, '127.0.0.1', '2023-09-17 11:15:16.664917', '/myapp/admin/user/create', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (13, '127.0.0.1', '2023-09-17 11:15:16.707413', '/myapp/admin/user/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (14, '127.0.0.1', '2023-09-17 11:15:42.705948', '/myapp/admin/adminLogin', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (15, '127.0.0.1', '2023-09-17 11:15:42.894765', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (16, '127.0.0.1', '2023-09-17 11:15:42.915414', '/myapp/admin/tag/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (17, '127.0.0.1', '2023-09-17 11:15:42.918429', '/myapp/admin/tag/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (18, '127.0.0.1', '2023-09-17 11:15:44.409974', '/myapp/admin/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (19, '127.0.0.1', '2023-09-17 11:15:44.863974', '/myapp/admin/user/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (20, '127.0.0.1', '2023-09-17 11:16:02.548425', '/myapp/admin/user/create', 'POST', NULL, '55');
INSERT INTO `b_op_log` VALUES (21, '127.0.0.1', '2023-09-17 11:16:02.621724', '/myapp/admin/user/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (22, '127.0.0.1', '2023-09-17 11:16:24.249849', '/myapp/admin/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (23, '127.0.0.1', '2023-09-17 11:16:26.290059', '/myapp/admin/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (24, '127.0.0.1', '2023-09-17 11:16:26.292431', '/myapp/admin/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (25, '127.0.0.1', '2023-09-17 11:16:26.293551', '/myapp/admin/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (26, '127.0.0.1', '2023-09-17 11:16:27.683170', '/myapp/admin/classification/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (27, '127.0.0.1', '2023-09-17 11:17:15.796898', '/myapp/admin/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (28, '127.0.0.1', '2023-09-17 11:17:20.001235', '/myapp/admin/user/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (29, '127.0.0.1', '2023-09-17 11:17:20.492085', '/myapp/admin/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (30, '127.0.0.1', '2023-09-17 11:17:27.424509', '/myapp/admin/classification/create', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (31, '127.0.0.1', '2023-09-17 11:17:27.442510', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (32, '127.0.0.1', '2023-09-17 11:17:32.660582', '/myapp/admin/classification/create', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (33, '127.0.0.1', '2023-09-17 11:17:32.708927', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (34, '127.0.0.1', '2023-09-17 11:17:41.435602', '/myapp/admin/classification/create', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (35, '127.0.0.1', '2023-09-17 11:17:41.468122', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (36, '127.0.0.1', '2023-09-17 11:17:48.601494', '/myapp/admin/classification/create', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (37, '127.0.0.1', '2023-09-17 11:17:48.646884', '/myapp/admin/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (38, '127.0.0.1', '2023-09-17 11:17:53.471426', '/myapp/admin/classification/create', 'POST', NULL, '18');
INSERT INTO `b_op_log` VALUES (39, '127.0.0.1', '2023-09-17 11:17:53.516909', '/myapp/admin/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (40, '127.0.0.1', '2023-09-17 11:17:56.211244', '/myapp/admin/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (41, '127.0.0.1', '2023-09-17 11:17:56.213245', '/myapp/admin/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (42, '127.0.0.1', '2023-09-17 11:17:56.214255', '/myapp/admin/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (43, '127.0.0.1', '2023-09-17 11:17:57.088079', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (44, '127.0.0.1', '2023-09-17 11:17:59.204501', '/myapp/admin/user/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (45, '127.0.0.1', '2023-09-17 11:18:00.105809', '/myapp/admin/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (46, '127.0.0.1', '2023-09-17 11:18:00.930871', '/myapp/admin/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (47, '127.0.0.1', '2023-09-17 11:18:00.933701', '/myapp/admin/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (48, '127.0.0.1', '2023-09-17 11:18:00.936216', '/myapp/admin/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (49, '127.0.0.1', '2023-09-17 11:18:02.689619', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (50, '127.0.0.1', '2023-09-17 11:18:04.095687', '/myapp/admin/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (51, '127.0.0.1', '2023-09-17 11:18:04.098687', '/myapp/admin/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (52, '127.0.0.1', '2023-09-17 11:18:04.103571', '/myapp/admin/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (53, '127.0.0.1', '2023-09-17 11:18:05.210743', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (54, '127.0.0.1', '2023-09-17 11:18:06.324840', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (55, '127.0.0.1', '2023-09-17 11:18:06.338441', '/myapp/admin/tag/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (56, '127.0.0.1', '2023-09-17 11:18:06.350550', '/myapp/admin/tag/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (57, '127.0.0.1', '2023-09-17 11:18:08.699502', '/myapp/admin/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (58, '127.0.0.1', '2023-09-17 11:18:09.426245', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (59, '127.0.0.1', '2023-09-17 11:18:09.435245', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (60, '127.0.0.1', '2023-09-17 11:18:09.446245', '/myapp/admin/tag/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (61, '127.0.0.1', '2023-09-17 11:18:12.640252', '/myapp/admin/loginLog/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (62, '127.0.0.1', '2023-09-17 11:18:13.694629', '/myapp/admin/opLog/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (63, '127.0.0.1', '2023-09-17 11:18:14.557251', '/myapp/admin/errorLog/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (64, '127.0.0.1', '2023-09-17 11:18:15.166049', '/myapp/admin/loginLog/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (65, '127.0.0.1', '2023-09-17 11:18:16.612507', '/myapp/admin/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (66, '127.0.0.1', '2023-09-17 11:18:16.619164', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (67, '127.0.0.1', '2023-09-17 11:18:16.623163', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (68, '127.0.0.1', '2023-09-17 11:24:36.988434', '/myapp/admin/tag/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (69, '127.0.0.1', '2023-09-17 11:24:36.989434', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (70, '127.0.0.1', '2023-09-17 11:24:37.008483', '/myapp/admin/tag/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (71, '127.0.0.1', '2023-09-17 11:26:02.248991', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (72, '127.0.0.1', '2023-09-17 11:26:02.251330', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (73, '127.0.0.1', '2023-09-17 11:26:02.254419', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (74, '127.0.0.1', '2023-09-17 11:26:06.658542', '/myapp/admin/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (75, '127.0.0.1', '2023-09-17 11:26:07.203424', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (76, '127.0.0.1', '2023-09-17 11:26:07.220667', '/myapp/admin/tag/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (77, '127.0.0.1', '2023-09-17 11:26:07.223748', '/myapp/admin/tag/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (78, '127.0.0.1', '2023-09-17 11:26:57.159496', '/myapp/admin/thing/create', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (79, '127.0.0.1', '2023-09-17 11:26:57.199396', '/myapp/admin/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (80, '127.0.0.1', '2023-09-17 11:28:32.733460', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (81, '127.0.0.1', '2023-09-17 11:28:32.739819', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (82, '127.0.0.1', '2023-09-17 11:28:32.740819', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (83, '127.0.0.1', '2023-09-17 11:28:37.579082', '/myapp/admin/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (84, '127.0.0.1', '2023-09-17 11:28:37.580082', '/myapp/admin/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (85, '127.0.0.1', '2023-09-17 11:28:37.585082', '/myapp/admin/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (86, '127.0.0.1', '2023-09-17 11:29:06.540142', '/myapp/admin/thing/create', 'POST', NULL, '54');
INSERT INTO `b_op_log` VALUES (87, '127.0.0.1', '2023-09-17 11:29:06.611300', '/myapp/admin/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (88, '127.0.0.1', '2023-09-17 11:29:25.666572', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (89, '127.0.0.1', '2023-09-17 11:29:25.669629', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (90, '127.0.0.1', '2023-09-17 11:29:25.676588', '/myapp/admin/tag/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (91, '127.0.0.1', '2023-09-17 11:29:52.976398', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (92, '127.0.0.1', '2023-09-17 11:29:52.982384', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (93, '127.0.0.1', '2023-09-17 11:29:52.995376', '/myapp/admin/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (94, '127.0.0.1', '2023-09-17 11:29:57.427729', '/myapp/admin/thing/delete', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (95, '127.0.0.1', '2023-09-17 11:29:57.454721', '/myapp/admin/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (96, '127.0.0.1', '2023-09-17 11:30:01.826925', '/myapp/admin/thing/update', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (97, '127.0.0.1', '2023-09-17 11:30:01.871576', '/myapp/admin/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (98, '127.0.0.1', '2023-09-17 11:30:11.214859', '/myapp/admin/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (99, '127.0.0.1', '2023-09-17 11:30:16.636403', '/myapp/admin/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (100, '127.0.0.1', '2023-09-17 11:30:18.188385', '/myapp/admin/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (101, '127.0.0.1', '2023-09-17 11:30:20.925504', '/myapp/admin/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (102, '127.0.0.1', '2023-09-17 11:31:24.253676', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (103, '127.0.0.1', '2023-09-17 11:31:25.208754', '/myapp/admin/thing/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (104, '127.0.0.1', '2023-09-17 11:31:25.211008', '/myapp/admin/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (105, '127.0.0.1', '2023-09-17 11:31:25.213015', '/myapp/admin/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (106, '127.0.0.1', '2023-09-17 11:33:47.386800', '/myapp/admin/tag/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (107, '127.0.0.1', '2023-09-17 11:33:47.390536', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (108, '127.0.0.1', '2023-09-17 11:33:47.404601', '/myapp/admin/tag/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (109, '127.0.0.1', '2023-09-17 11:34:18.207803', '/myapp/admin/tag/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (110, '127.0.0.1', '2023-09-17 11:34:19.749926', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (111, '127.0.0.1', '2023-09-17 11:34:20.228216', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (112, '127.0.0.1', '2023-09-17 11:36:02.325020', '/myapp/admin/tag/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (113, '127.0.0.1', '2023-09-17 11:36:05.797057', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (114, '127.0.0.1', '2023-09-17 11:36:06.254443', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (115, '127.0.0.1', '2023-09-17 11:38:53.415223', '/myapp/admin/tag/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (116, '127.0.0.1', '2023-09-17 11:39:05.840389', '/myapp/admin/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (117, '127.0.0.1', '2023-09-17 11:39:06.387600', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (118, '127.0.0.1', '2023-09-17 11:41:07.705126', '/myapp/admin/tag/create', 'POST', NULL, '91');
INSERT INTO `b_op_log` VALUES (119, '127.0.0.1', '2023-09-17 11:42:26.210453', '/myapp/admin/customer/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (120, '127.0.0.1', '2023-09-17 11:42:31.234422', '/myapp/admin/customer/create', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (121, '127.0.0.1', '2023-09-17 11:43:45.092923', '/myapp/admin/customer/create', 'POST', NULL, '16');
INSERT INTO `b_op_log` VALUES (122, '127.0.0.1', '2023-09-17 11:43:45.137462', '/myapp/admin/customer/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (123, '127.0.0.1', '2023-09-17 11:44:19.586942', '/myapp/admin/customer/update', 'POST', NULL, '16');
INSERT INTO `b_op_log` VALUES (124, '127.0.0.1', '2023-09-17 11:44:19.628944', '/myapp/admin/customer/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (125, '127.0.0.1', '2023-09-17 11:44:40.165333', '/myapp/admin/customer/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (126, '127.0.0.1', '2023-09-17 11:44:45.252693', '/myapp/admin/customer/update', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (127, '127.0.0.1', '2023-09-17 11:44:45.284604', '/myapp/admin/customer/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (128, '127.0.0.1', '2023-09-17 11:44:56.518816', '/myapp/admin/customer/update', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (129, '127.0.0.1', '2023-09-17 11:44:56.559418', '/myapp/admin/customer/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (130, '127.0.0.1', '2023-09-17 11:45:04.549604', '/myapp/admin/customer/update', 'POST', NULL, '18');
INSERT INTO `b_op_log` VALUES (131, '127.0.0.1', '2023-09-17 11:45:04.594815', '/myapp/admin/customer/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (132, '127.0.0.1', '2023-09-17 11:45:25.497237', '/myapp/admin/customer/create', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (133, '127.0.0.1', '2023-09-17 11:45:25.530352', '/myapp/admin/customer/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (134, '127.0.0.1', '2023-09-17 11:45:44.473369', '/myapp/admin/customer/create', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (135, '127.0.0.1', '2023-09-17 11:45:44.533918', '/myapp/admin/customer/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (136, '127.0.0.1', '2023-09-17 11:46:06.935516', '/myapp/admin/customer/create', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (137, '127.0.0.1', '2023-09-17 11:46:06.990997', '/myapp/admin/customer/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (138, '127.0.0.1', '2023-09-17 11:46:25.938097', '/myapp/admin/user/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (139, '127.0.0.1', '2023-09-17 11:46:27.111630', '/myapp/admin/customer/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (140, '127.0.0.1', '2023-09-17 11:46:30.275448', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (141, '127.0.0.1', '2023-09-17 11:46:31.656736', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (142, '127.0.0.1', '2023-09-17 11:46:31.661301', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (143, '127.0.0.1', '2023-09-17 11:46:31.677647', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (144, '127.0.0.1', '2023-09-17 11:46:32.750309', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (145, '127.0.0.1', '2023-09-17 11:46:33.816095', '/myapp/admin/user/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (146, '127.0.0.1', '2023-09-17 11:46:41.081368', '/myapp/admin/customer/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (147, '127.0.0.1', '2023-09-17 11:46:43.493013', '/myapp/admin/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (148, '127.0.0.1', '2023-09-17 11:46:43.496013', '/myapp/admin/classification/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (149, '127.0.0.1', '2023-09-17 11:46:43.508021', '/myapp/admin/classification/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (150, '127.0.0.1', '2023-09-17 11:46:48.977199', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (151, '127.0.0.1', '2023-09-17 11:46:48.986116', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (152, '127.0.0.1', '2023-09-17 11:46:48.994167', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (153, '127.0.0.1', '2023-09-17 16:44:31.974183', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (154, '127.0.0.1', '2023-09-17 16:44:31.972237', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (155, '127.0.0.1', '2023-09-17 16:44:31.980737', '/myapp/admin/tag/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (156, '127.0.0.1', '2023-09-17 16:44:39.664744', '/myapp/admin/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (157, '127.0.0.1', '2023-09-17 16:44:40.974042', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (158, '127.0.0.1', '2023-09-17 16:44:40.975784', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (159, '127.0.0.1', '2023-09-17 16:44:40.996988', '/myapp/admin/tag/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (160, '127.0.0.1', '2023-09-17 16:44:50.434364', '/myapp/admin/adminLogin', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (161, '127.0.0.1', '2023-09-17 16:44:50.533400', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (162, '127.0.0.1', '2023-09-17 16:44:50.540399', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (163, '127.0.0.1', '2023-09-17 16:44:50.551398', '/myapp/admin/tag/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (164, '127.0.0.1', '2023-09-17 16:44:51.961205', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (165, '127.0.0.1', '2023-09-17 16:44:55.770274', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (166, '127.0.0.1', '2023-09-17 16:44:55.778271', '/myapp/admin/tag/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (167, '127.0.0.1', '2023-09-17 16:44:55.780271', '/myapp/admin/tag/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (168, '127.0.0.1', '2023-09-17 16:46:05.652676', '/myapp/admin/thing/create', 'POST', NULL, '8');
INSERT INTO `b_op_log` VALUES (169, '127.0.0.1', '2023-09-17 16:46:17.259903', '/myapp/admin/adminLogin', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (170, '127.0.0.1', '2023-09-17 16:46:17.347972', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (171, '127.0.0.1', '2023-09-17 16:46:17.348974', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (172, '127.0.0.1', '2023-09-17 16:46:17.350321', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (173, '127.0.0.1', '2023-09-17 16:46:38.901574', '/myapp/admin/thing/create', 'POST', NULL, '21');
INSERT INTO `b_op_log` VALUES (174, '127.0.0.1', '2023-09-17 16:46:38.934572', '/myapp/admin/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (175, '127.0.0.1', '2023-09-17 16:47:03.512829', '/myapp/admin/thing/create', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (176, '127.0.0.1', '2023-09-17 16:47:03.570930', '/myapp/admin/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (177, '127.0.0.1', '2023-09-17 16:47:29.083417', '/myapp/admin/thing/create', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (178, '127.0.0.1', '2023-09-17 16:47:29.148027', '/myapp/admin/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (179, '127.0.0.1', '2023-09-17 16:47:58.811950', '/myapp/admin/thing/create', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (180, '127.0.0.1', '2023-09-17 16:47:58.860536', '/myapp/admin/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (181, '127.0.0.1', '2023-09-17 16:48:23.605184', '/myapp/admin/thing/create', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (182, '127.0.0.1', '2023-09-17 16:48:23.676519', '/myapp/admin/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (183, '127.0.0.1', '2023-09-17 16:48:25.957835', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (184, '127.0.0.1', '2023-09-17 16:48:26.933154', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (185, '127.0.0.1', '2023-09-17 16:48:26.941641', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (186, '127.0.0.1', '2023-09-17 16:48:26.953580', '/myapp/admin/tag/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (187, '127.0.0.1', '2023-09-17 16:48:27.592232', '/myapp/admin/customer/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (188, '127.0.0.1', '2023-09-17 16:48:29.352762', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (189, '127.0.0.1', '2023-09-17 16:48:29.381145', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (190, '127.0.0.1', '2023-09-17 16:48:29.390372', '/myapp/admin/tag/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (191, '127.0.0.1', '2023-09-17 16:48:53.644585', '/myapp/admin/thing/create', 'POST', NULL, '20');
INSERT INTO `b_op_log` VALUES (192, '127.0.0.1', '2023-09-17 16:48:53.706787', '/myapp/admin/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (193, '127.0.0.1', '2023-09-17 16:49:17.085150', '/myapp/admin/thing/create', 'POST', NULL, '19');
INSERT INTO `b_op_log` VALUES (194, '127.0.0.1', '2023-09-17 16:49:17.123280', '/myapp/admin/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (195, '127.0.0.1', '2023-09-17 16:49:39.469725', '/myapp/admin/thing/create', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (196, '127.0.0.1', '2023-09-17 16:49:39.518636', '/myapp/admin/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (197, '127.0.0.1', '2023-09-17 16:50:03.827048', '/myapp/admin/thing/create', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (198, '127.0.0.1', '2023-09-17 16:50:03.878012', '/myapp/admin/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (199, '127.0.0.1', '2023-09-17 16:50:13.327162', '/myapp/admin/thing/update', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (200, '127.0.0.1', '2023-09-17 16:50:13.411247', '/myapp/admin/thing/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (201, '127.0.0.1', '2023-09-17 16:50:18.040639', '/myapp/admin/thing/update', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (202, '127.0.0.1', '2023-09-17 16:50:18.095389', '/myapp/admin/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (203, '127.0.0.1', '2023-09-17 16:50:23.407809', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (204, '127.0.0.1', '2023-09-17 16:50:24.333919', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (205, '127.0.0.1', '2023-09-17 16:50:24.337805', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (206, '127.0.0.1', '2023-09-17 16:50:24.348180', '/myapp/admin/tag/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (207, '127.0.0.1', '2023-09-17 16:50:25.212224', '/myapp/admin/customer/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (208, '127.0.0.1', '2023-09-17 16:50:27.269915', '/myapp/admin/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (209, '127.0.0.1', '2023-09-17 16:50:28.087007', '/myapp/admin/user/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (210, '127.0.0.1', '2023-09-17 16:50:30.048792', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1058');
INSERT INTO `b_op_log` VALUES (211, '127.0.0.1', '2023-09-17 16:50:32.146773', '/myapp/admin/loginLog/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (212, '127.0.0.1', '2023-09-17 16:50:32.781286', '/myapp/admin/opLog/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (213, '127.0.0.1', '2023-09-17 16:50:45.829718', '/myapp/admin/errorLog/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (214, '127.0.0.1', '2023-09-17 16:50:47.567673', '/myapp/admin/customer/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (215, '127.0.0.1', '2023-09-17 16:50:48.269052', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (216, '127.0.0.1', '2023-09-17 16:50:48.662681', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (217, '127.0.0.1', '2023-09-17 16:50:48.664108', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (218, '127.0.0.1', '2023-09-17 16:50:48.682321', '/myapp/admin/tag/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (219, '127.0.0.1', '2023-09-17 16:51:33.542906', '/myapp/admin/adminLogin', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (220, '127.0.0.1', '2023-09-17 16:51:33.669391', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (221, '127.0.0.1', '2023-09-17 16:51:33.681391', '/myapp/admin/tag/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (222, '127.0.0.1', '2023-09-17 16:51:33.692399', '/myapp/admin/tag/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (223, '127.0.0.1', '2023-09-17 16:51:34.898375', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (224, '127.0.0.1', '2023-09-17 16:51:35.751886', '/myapp/admin/customer/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (225, '127.0.0.1', '2023-09-17 16:51:36.748667', '/myapp/admin/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (226, '127.0.0.1', '2023-09-17 16:51:36.750666', '/myapp/admin/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (227, '127.0.0.1', '2023-09-17 16:51:36.761666', '/myapp/admin/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (228, '127.0.0.1', '2023-09-17 16:51:37.478797', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (229, '127.0.0.1', '2023-09-17 16:51:38.479626', '/myapp/admin/tag/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (230, '127.0.0.1', '2023-09-17 16:51:38.481742', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (231, '127.0.0.1', '2023-09-17 16:51:38.498572', '/myapp/admin/tag/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (232, '127.0.0.1', '2023-09-17 16:51:39.224269', '/myapp/admin/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (233, '127.0.0.1', '2023-09-17 16:51:39.856061', '/myapp/admin/customer/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (234, '127.0.0.1', '2023-09-17 16:51:40.803714', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (235, '127.0.0.1', '2023-09-17 16:51:41.455549', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (236, '127.0.0.1', '2023-09-17 16:51:41.456549', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (237, '127.0.0.1', '2023-09-17 16:51:41.473450', '/myapp/admin/tag/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (238, '127.0.0.1', '2023-09-17 16:51:42.192482', '/myapp/admin/customer/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (239, '127.0.0.1', '2023-09-17 16:51:42.697084', '/myapp/admin/classification/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (240, '127.0.0.1', '2023-09-17 16:51:43.351153', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (241, '127.0.0.1', '2023-09-17 16:51:43.365314', '/myapp/admin/tag/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (242, '127.0.0.1', '2023-09-17 16:51:43.367313', '/myapp/admin/tag/list', 'GET', NULL, '19');

-- ----------------------------
-- Table structure for b_record
-- ----------------------------
DROP TABLE IF EXISTS `b_record`;
CREATE TABLE `b_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `record_time` datetime(6) NULL DEFAULT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_record_classification_id_52591cc9_fk_b_classification_id`(`classification_id`) USING BTREE,
  INDEX `b_record_thing_id_d8e773c0_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_record_user_id_7e5958b0_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_record_classification_id_52591cc9_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_record_thing_id_d8e773c0_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_record_user_id_7e5958b0_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_record
-- ----------------------------

-- ----------------------------
-- Table structure for b_tag
-- ----------------------------
DROP TABLE IF EXISTS `b_tag`;
CREATE TABLE `b_tag`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_tag
-- ----------------------------

-- ----------------------------
-- Table structure for b_thing
-- ----------------------------
DROP TABLE IF EXISTS `b_thing`;
CREATE TABLE `b_thing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cover` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fuyongfangshi` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gongxiao` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `property` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_thing_classification_id_47675ac4_fk_b_classification_id`(`classification_id`) USING BTREE,
  CONSTRAINT `b_thing_classification_id_47675ac4_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing
-- ----------------------------
INSERT INTO `b_thing` VALUES (2, '', '0', '2023-09-17 11:29:06.516883', 1, '云南白药喷雾', 'aaad222', '口服', '外伤', '32', '21');
INSERT INTO `b_thing` VALUES (3, '', '0', '2023-09-17 16:46:38.886275', 4, '阿莫西林', '我是备注', '口服', '消炎', '31', '23');
INSERT INTO `b_thing` VALUES (4, '', '0', '2023-09-17 16:47:03.494851', 1, '阿司匹林', '不不不', '口服', '消炎', '33', '44');
INSERT INTO `b_thing` VALUES (5, '', '0', '2023-09-17 16:47:29.065502', 2, '罗红霉素', 'adsdf', '口服', '消炎', '11', '32');
INSERT INTO `b_thing` VALUES (6, '', '0', '2023-09-17 16:47:58.791861', 1, '头孢拉定胶囊', 'hhhhh', '口服', '消炎', '54', '55');
INSERT INTO `b_thing` VALUES (7, '', '0', '2023-09-17 16:48:23.588096', 3, '左氧氟沙星', 'adsdf', '口服', '退烧、咳嗽', '66', '43');
INSERT INTO `b_thing` VALUES (8, '', '0', '2023-09-17 16:48:53.630097', 2, '小儿黄那敏颗粒', 'dddd', '口服', '退烧、咳嗽', '11', '32');
INSERT INTO `b_thing` VALUES (9, '', '0', '2023-09-17 16:49:17.070988', 3, '止咳糖浆', 'hhhhh', '口服', '退烧、咳嗽', '66', '43');
INSERT INTO `b_thing` VALUES (10, '', '0', '2023-09-17 16:49:39.461725', 4, '口腔溃疡模', 'adsdf', '口服', '退烧、咳嗽', '4', '21');
INSERT INTO `b_thing` VALUES (11, '', '0', '2023-09-17 16:50:03.812161', 5, '咽炎片', 'dddd', '口服', '消炎', '44', '21');

-- ----------------------------
-- Table structure for b_thing_tag
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_tag`;
CREATE TABLE `b_thing_tag`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_tag_thing_id_tag_id_a5d426b2_uniq`(`thing_id`, `tag_id`) USING BTREE,
  INDEX `b_thing_tag_tag_id_d02b28a1_fk_b_tag_id`(`tag_id`) USING BTREE,
  CONSTRAINT `b_thing_tag_tag_id_d02b28a1_fk_b_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `b_tag` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_tag_thing_id_fb8ecf3f_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_tag
-- ----------------------------

-- ----------------------------
-- Table structure for b_user
-- ----------------------------
DROP TABLE IF EXISTS `b_user`;
CREATE TABLE `b_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `score` int(11) NULL DEFAULT NULL,
  `push_email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `push_switch` tinyint(1) NULL DEFAULT NULL,
  `admin_token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_user
-- ----------------------------
INSERT INTO `b_user` VALUES (1, 'admin', '78aafd3207ec4ef6d16f9fc07e95ebc3', '1', '0', NULL, '', NULL, NULL, NULL, NULL, '2023-09-17 11:15:16.661445', 0, NULL, 0, '21232f297a57a5a743894a0e4a801fc3', NULL);
INSERT INTO `b_user` VALUES (2, 'admin123', '0192023a7bbd73250516f069df18b500', '3', '0', NULL, '', NULL, NULL, NULL, NULL, '2023-09-17 11:16:02.532801', 0, NULL, 0, '0192023a7bbd73250516f069df18b500', NULL);

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (7, 'myapp', 'ad');
INSERT INTO `django_content_type` VALUES (19, 'myapp', 'address');
INSERT INTO `django_content_type` VALUES (18, 'myapp', 'banner');
INSERT INTO `django_content_type` VALUES (8, 'myapp', 'classification');
INSERT INTO `django_content_type` VALUES (17, 'myapp', 'comment');
INSERT INTO `django_content_type` VALUES (20, 'myapp', 'customer');
INSERT INTO `django_content_type` VALUES (9, 'myapp', 'errorlog');
INSERT INTO `django_content_type` VALUES (10, 'myapp', 'loginlog');
INSERT INTO `django_content_type` VALUES (11, 'myapp', 'notice');
INSERT INTO `django_content_type` VALUES (12, 'myapp', 'oplog');
INSERT INTO `django_content_type` VALUES (16, 'myapp', 'record');
INSERT INTO `django_content_type` VALUES (13, 'myapp', 'tag');
INSERT INTO `django_content_type` VALUES (15, 'myapp', 'thing');
INSERT INTO `django_content_type` VALUES (14, 'myapp', 'user');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2023-09-17 10:59:28.819309');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2023-09-17 10:59:29.195407');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2023-09-17 10:59:29.301234');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2023-09-17 10:59:29.318301');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2023-09-17 10:59:29.329845');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2023-09-17 10:59:29.429573');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2023-09-17 10:59:29.491523');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2023-09-17 10:59:29.558712');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2023-09-17 10:59:29.573739');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2023-09-17 10:59:29.636868');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2023-09-17 10:59:29.643844');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2023-09-17 10:59:29.657826');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2023-09-17 10:59:29.718132');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2023-09-17 10:59:29.786286');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2023-09-17 10:59:29.856300');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2023-09-17 10:59:29.870466');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2023-09-17 10:59:29.928570');
INSERT INTO `django_migrations` VALUES (18, 'myapp', '0001_initial', '2023-09-17 10:59:30.969798');
INSERT INTO `django_migrations` VALUES (19, 'myapp', '0002_auto_20230526_2255', '2023-09-17 10:59:31.086457');
INSERT INTO `django_migrations` VALUES (20, 'myapp', '0003_auto_20230527_1411', '2023-09-17 10:59:31.240740');
INSERT INTO `django_migrations` VALUES (21, 'myapp', '0004_thing_raw', '2023-09-17 10:59:31.305098');
INSERT INTO `django_migrations` VALUES (22, 'myapp', '0005_auto_20230808_1739', '2023-09-17 10:59:32.036845');
INSERT INTO `django_migrations` VALUES (23, 'myapp', '0006_thing_remark', '2023-09-17 10:59:32.089347');
INSERT INTO `django_migrations` VALUES (24, 'myapp', '0007_auto_20230917_1059', '2023-09-17 10:59:32.366829');
INSERT INTO `django_migrations` VALUES (25, 'sessions', '0001_initial', '2023-09-17 10:59:32.429967');
INSERT INTO `django_migrations` VALUES (26, 'myapp', '0008_auto_20230917_1106', '2023-09-17 11:06:26.216197');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
