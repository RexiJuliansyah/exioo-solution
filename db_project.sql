/*
 Navicat Premium Data Transfer

 Source Server         : Local
 Source Server Type    : MySQL
 Source Server Version : 100422
 Source Host           : localhost:3306
 Source Schema         : db_project

 Target Server Type    : MySQL
 Target Server Version : 100422
 File Encoding         : 65001

 Date: 06/04/2024 23:10:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_m_brand
-- ----------------------------
DROP TABLE IF EXISTS `tb_m_brand`;
CREATE TABLE `tb_m_brand`  (
  `BRAND_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `BRAND_NAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CREATED_BY` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `CREATED_DATE` datetime(0) NULL DEFAULT NULL,
  `UPDATED_BY` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `UPDATED_DATE` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`BRAND_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_m_category
-- ----------------------------
DROP TABLE IF EXISTS `tb_m_category`;
CREATE TABLE `tb_m_category`  (
  `CATEGORY_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `CATEGORY_NAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CREATED_BY` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `CREATED_DATE` datetime(0) NULL DEFAULT NULL,
  `UPDATED_BY` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `UPDATED_DATE` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`CATEGORY_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_m_menu
-- ----------------------------
DROP TABLE IF EXISTS `tb_m_menu`;
CREATE TABLE `tb_m_menu`  (
  `MENU_ID` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `PARENT_ID` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `MENU_NAME` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `MENU_ICON` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `MENU_URL` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `SEQUENCE` int(11) NULL DEFAULT NULL,
  `CREATED_BY` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `CREATED_DATE` datetime(0) NULL DEFAULT NULL,
  `UPDATED_BY` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `UPDATED_DATE` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`MENU_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_m_menu
-- ----------------------------
INSERT INTO `tb_m_menu` VALUES ('31c5a615-ef31-46d5-bc07-388581440b96', 'bcee69a2-db5a-4d71-9182-e0babc72015b', 'Hak Akses', 'fa fa-database', 'role', 2, 'superadmin', '2024-04-06 01:56:03', 'superadmin', '2024-04-06 01:56:03');
INSERT INTO `tb_m_menu` VALUES ('3f33d82f-9ab3-4f98-9c73-d8ed52d66e1c', '7b10cdc0-e910-4446-8e0b-0eeb9eb4c9f9', 'Pengguna', 'fa fa-user', 'user', 1, 'admin', '2024-04-06 00:55:18', 'superadmin', '2024-04-06 01:56:29');
INSERT INTO `tb_m_menu` VALUES ('6f68b5dd-3c84-4de7-a389-12510b702416', 'bcee69a2-db5a-4d71-9182-e0babc72015b', 'Menu', 'fa fa-database', 'menu', 1, 'superadmin', '2024-04-06 01:42:26', 'superadmin', '2024-04-06 01:42:26');
INSERT INTO `tb_m_menu` VALUES ('7b10cdc0-e910-4446-8e0b-0eeb9eb4c9f9', '0', 'Master', 'fa fa-database', 'user', 1, 'admin', '2024-04-06 00:52:26', 'superadmin', '2024-04-06 01:41:49');
INSERT INTO `tb_m_menu` VALUES ('ae56698b-10f7-4e13-9596-1a14aae789e7', 'bcee69a2-db5a-4d71-9182-e0babc72015b', 'Sistem', 'fa fa-database', 'system', 3, 'superadmin', '2024-04-06 02:05:27', 'superadmin', '2024-04-06 02:05:27');
INSERT INTO `tb_m_menu` VALUES ('bcee69a2-db5a-4d71-9182-e0babc72015b', '0', 'Pengaturan', 'fa fa-database', 'none', 2, 'superadmin', '2024-04-06 01:41:40', 'superadmin', '2024-04-06 01:41:40');

-- ----------------------------
-- Table structure for tb_m_permission
-- ----------------------------
DROP TABLE IF EXISTS `tb_m_permission`;
CREATE TABLE `tb_m_permission`  (
  `ROLE_ID` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `MENU_ID` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `CREATED_DATE` datetime(0) NULL DEFAULT NULL,
  `CREATED_BY` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `UPDATED_DATE` datetime(0) NULL DEFAULT NULL,
  `UPDATED_BY` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`, `MENU_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_m_permission
-- ----------------------------
INSERT INTO `tb_m_permission` VALUES ('0e15838b-65ef-4ef8-a6de-165d2afac75b', '31c5a615-ef31-46d5-bc07-388581440b96', '2024-04-06 02:13:38', 'superadmin', '2024-04-06 02:13:38', 'superadmin');
INSERT INTO `tb_m_permission` VALUES ('0e15838b-65ef-4ef8-a6de-165d2afac75b', '3f33d82f-9ab3-4f98-9c73-d8ed52d66e1c', '2024-04-06 02:13:38', 'superadmin', '2024-04-06 02:13:38', 'superadmin');
INSERT INTO `tb_m_permission` VALUES ('0e15838b-65ef-4ef8-a6de-165d2afac75b', '6f68b5dd-3c84-4de7-a389-12510b702416', '2024-04-06 02:13:38', 'superadmin', '2024-04-06 02:13:38', 'superadmin');
INSERT INTO `tb_m_permission` VALUES ('0e15838b-65ef-4ef8-a6de-165d2afac75b', '7b10cdc0-e910-4446-8e0b-0eeb9eb4c9f9', '2024-04-06 02:13:38', 'superadmin', '2024-04-06 02:13:38', 'superadmin');
INSERT INTO `tb_m_permission` VALUES ('0e15838b-65ef-4ef8-a6de-165d2afac75b', 'ae56698b-10f7-4e13-9596-1a14aae789e7', '2024-04-06 02:13:38', 'superadmin', '2024-04-06 02:13:38', 'superadmin');
INSERT INTO `tb_m_permission` VALUES ('0e15838b-65ef-4ef8-a6de-165d2afac75b', 'bcee69a2-db5a-4d71-9182-e0babc72015b', '2024-04-06 02:13:38', 'superadmin', '2024-04-06 02:13:38', 'superadmin');

-- ----------------------------
-- Table structure for tb_m_product
-- ----------------------------
DROP TABLE IF EXISTS `tb_m_product`;
CREATE TABLE `tb_m_product`  (
  `PRODUCT_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `CATEGORY_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `PRODUCT_CODE` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `PRODUCT_DESC` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `PRODUCT_IMG` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `STOCK` int(5) NULL DEFAULT NULL,
  `PRICE` int(11) NULL DEFAULT NULL,
  `BRAND_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `SUPPLIER_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CREATED_BY` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `CREATED_DATE` datetime(0) NULL DEFAULT NULL,
  `UPDATED_BY` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `UPDATED_DATE` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`PRODUCT_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_m_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_m_role`;
CREATE TABLE `tb_m_role`  (
  `ROLE_ID` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ROLE_NAME` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ROLE_DESC` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `CREATED_BY` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `CREATED_DATE` datetime(0) NULL DEFAULT NULL,
  `UPDATED_BY` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `UPDATED_DATE` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_m_role
-- ----------------------------
INSERT INTO `tb_m_role` VALUES ('0e15838b-65ef-4ef8-a6de-165d2afac75b', 'Super Admin', 'Super Admin', 'admin', '2024-04-06 00:37:12', 'admin', '2024-04-06 00:37:12');

-- ----------------------------
-- Table structure for tb_m_supplier
-- ----------------------------
DROP TABLE IF EXISTS `tb_m_supplier`;
CREATE TABLE `tb_m_supplier`  (
  `SUPPLIER_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `SUPPLIER_NAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CREATED_BY` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `CREATED_DATE` datetime(0) NULL DEFAULT NULL,
  `UPDATED_BY` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `UPDATED_DATE` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`SUPPLIER_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_m_system
-- ----------------------------
DROP TABLE IF EXISTS `tb_m_system`;
CREATE TABLE `tb_m_system`  (
  `SYSTEM_TYPE` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `SYSTEM_CD` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `SYSTEM_VAL` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `SYSTEM_DESC` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `CREATED_BY` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `CREATED_DATE` datetime(0) NULL DEFAULT NULL,
  `UPDATED_BY` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `UPDATED_DATE` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`SYSTEM_TYPE`, `SYSTEM_CD`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_m_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_m_user`;
CREATE TABLE `tb_m_user`  (
  `USER_ID` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ROLE_ID` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `USERNAME` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `PASSWORD` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `FULL_NAME` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `EMAIL` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `PHONE` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ADDRESS` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `CREATED_BY` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `CREATED_DATE` datetime(0) NULL DEFAULT NULL,
  `UPDATED_BY` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `UPDATED_DATE` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`USER_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_m_user
-- ----------------------------
INSERT INTO `tb_m_user` VALUES ('600082f6-93d8-475b-a4ca-2a7c5343c225', '0e15838b-65ef-4ef8-a6de-165d2afac75b', 'superadmin', '$2y$10$M84HXiOGSlIgbMrT6LlmWuEozXupcG6gQzA5MAC2cmFSL3wuCgADu', 'Super Admin', 'admin@gmail.com', NULL, NULL, 'admin', '2024-04-06 00:43:50', 'admin', '2024-04-06 00:43:50');
INSERT INTO `tb_m_user` VALUES ('8d39384c-8c09-4540-b1cf-a41a8b90b632', '0e15838b-65ef-4ef8-a6de-165d2afac75b', 'admin', '$2a$12$xrWvgqa3VvkVR2yv8HL0Cug/kBBHao29nzmap5jmVE8Cq82ymUAhi', 'Administrator', 'admin@gmail.com', NULL, NULL, 'admin', '2024-04-06 00:43:50', 'admin', '2024-04-06 00:43:50');

-- ----------------------------
-- Table structure for tb_r_purchase_product
-- ----------------------------
DROP TABLE IF EXISTS `tb_r_purchase_product`;
CREATE TABLE `tb_r_purchase_product`  (
  `PURCHASE_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `PRODUCT_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `SUPLLIER_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `AMOUNT` int(3) NULL DEFAULT NULL,
  `PRICE` int(11) NULL DEFAULT NULL,
  `CREATED_BY` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `CREATED_DATE` datetime(0) NULL DEFAULT NULL,
  `UPDATED_BY` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `UPDATED_DATE` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`PURCHASE_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_r_sale_product
-- ----------------------------
DROP TABLE IF EXISTS `tb_r_sale_product`;
CREATE TABLE `tb_r_sale_product`  (
  `SALE_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `PRODUCT_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `DATE` datetime(0) NULL DEFAULT NULL,
  `AMOUNT` int(11) NULL DEFAULT NULL,
  `CREATED_BY` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `CREATED_DATE` datetime(0) NULL DEFAULT NULL,
  `UPDATED_BY` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `UPDATED_DATE` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`SALE_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_r_transaction
-- ----------------------------
DROP TABLE IF EXISTS `tb_r_transaction`;
CREATE TABLE `tb_r_transaction`  (
  `TRANSACTION_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `TRANSACTION_CODE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `TRANSACTION_DATE` datetime(0) NULL DEFAULT NULL,
  `TOTAL_PRICE` int(11) NULL DEFAULT NULL,
  `CREATED_BY` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `CREATED_DATE` datetime(0) NULL DEFAULT NULL,
  `UPDATED_BY` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `UPDATED_DATE` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`TRANSACTION_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_r_transaction_detail
-- ----------------------------
DROP TABLE IF EXISTS `tb_r_transaction_detail`;
CREATE TABLE `tb_r_transaction_detail`  (
  `TRANSACTION_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `PRODUCT_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `QTY` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `PRODUCT_QTY` int(11) NULL DEFAULT NULL,
  `CREATED_BY` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `CREATED_DATE` datetime(0) NULL DEFAULT NULL,
  `UPDATED_BY` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `UPDATED_DATE` datetime(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
