/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 100425
 Source Host           : localhost:3306
 Source Schema         : cardb

 Target Server Type    : MySQL
 Target Server Version : 100425
 File Encoding         : 65001

 Date: 19/12/2022 04:25:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for mydatabase
-- ----------------------------
DROP TABLE IF EXISTS `mydatabase`;
CREATE TABLE `mydatabase`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `inbound_date` date NULL DEFAULT NULL,
  `inbound_time` time(0) NULL DEFAULT NULL,
  `license_plate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `truck_number` decimal(9, 2) NULL DEFAULT NULL,
  `company_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `driver_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `destination` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comments` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `outbound_date` date NULL DEFAULT NULL,
  `outbound_time` time(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mydatabase
-- ----------------------------
INSERT INTO `mydatabase` VALUES (1, '2022-12-07', NULL, '', 0.00, '', '', '', '', NULL, NULL);
INSERT INTO `mydatabase` VALUES (2, '2022-12-06', NULL, '', 0.00, '', 'ki', '', '', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
