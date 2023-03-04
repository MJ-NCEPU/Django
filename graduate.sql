/*
 Navicat Premium Data Transfer

 Source Server         : ma
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : graduate

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 04/03/2023 09:25:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for 2018101
-- ----------------------------
DROP TABLE IF EXISTS `2018101`;
CREATE TABLE `2018101`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `snickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sclass` int(10) NULL DEFAULT NULL,
  `snum` int(10) NULL DEFAULT NULL,
  `academy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `statusqiandao` tinyint(10) NULL DEFAULT NULL,
  `status` tinyint(10) NULL DEFAULT NULL,
  `cover_pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_at` datetime(0) NULL DEFAULT NULL,
  `update_at` datetime(0) NULL DEFAULT NULL,
  `password_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password_salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 2018101
-- ----------------------------
INSERT INTO `2018101` VALUES (1, '吹风', '李丽', 2018101, 201810101, '信息工程学院', 1, 1, '1650616169.8970525.jpeg', '2022-01-08 12:56:16', '2022-01-10 02:21:14', '4403f86934b883f24679d6de01ec4355', '560424');
INSERT INTO `2018101` VALUES (2, '大地', '张三', 2018101, 201810102, '信息工程学院', 2, 1, '1641955279.59036.jpeg', '2022-01-08 13:08:52', '2022-01-08 13:23:48', '7a6460f9c970e9a98e8bd5acfe7dece3', '634421');
INSERT INTO `2018101` VALUES (3, '和风', '安利', 2018101, 201810103, '信息工程学院', 2, 1, '0e40c28560efb01d3fb3b292dc349083.jpeg', '2022-01-16 09:13:47', '2022-01-16 09:13:47', '6bae01e4336c5e88f419d5e5959cde00', '846728');
INSERT INTO `2018101` VALUES (4, '阿神', '李卡', 2018101, 201810104, '信息工程学院', 2, 1, '0fd4e5fa49f97559d2bddbb8c23698b6.jpeg', '2022-01-16 09:14:53', '2022-01-16 09:14:53', '968b644ac536d46353b34753d3d1eda7', '775594');
INSERT INTO `2018101` VALUES (5, 'Automa', '何力', 2018101, 201810105, '信息工程学院', 2, 1, '1a6f9b289839821920972772d11991c9.jpeg', '2022-01-16 09:15:49', '2022-01-16 09:15:49', '6805b534312f77df1126fbf6faeac80f', '332062');
INSERT INTO `2018101` VALUES (6, '大明', '位明', 2018101, 201810106, '信息工程学院', 2, 1, '3c025f6b11786688f17274ea038bb143.jpeg', '2022-01-16 09:16:52', '2022-01-16 09:16:52', 'e6f97a26d84a35b893509c21bffb534d', '187306');
INSERT INTO `2018101` VALUES (7, 'HL', '于东升', 2018101, 201810107, '信息工程学院', 2, 1, '9e60a3b0e4cb02c048b29203fee14f88.jpeg', '2022-01-16 09:18:05', '2022-01-16 09:18:05', '7e3841380cb9f28dc8ec0a54a146182e', '608226');

-- ----------------------------
-- Table structure for 2018102
-- ----------------------------
DROP TABLE IF EXISTS `2018102`;
CREATE TABLE `2018102`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `snickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sclass` int(10) NULL DEFAULT NULL,
  `snum` int(10) NULL DEFAULT NULL,
  `academy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `statusqiandao` tinyint(10) NULL DEFAULT NULL,
  `status` tinyint(10) NULL DEFAULT NULL,
  `cover_pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_at` datetime(0) NULL DEFAULT NULL,
  `update_at` datetime(0) NULL DEFAULT NULL,
  `password_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password_salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 2018102
-- ----------------------------
INSERT INTO `2018102` VALUES (1, '小河', '李四', 2018102, 201810201, '信息工程学院', 1, 1, '79a489fe39e6f241289c362e0b971dc1.jpeg', '2022-01-08 13:10:34', '2022-01-08 13:10:55', 'bcde1cd46b9667340f5fbed618d80eed', '228586');
INSERT INTO `2018102` VALUES (2, '达西', '张明', 2018102, 201810202, '信息工程学院', 2, 1, '82fc7cd1c8330f7d28c9317e818ceef2.jpeg', '2022-01-08 13:12:06', '2022-01-08 13:12:06', '9f0fbac8286937edb80e5ab7742533c8', '652230');
INSERT INTO `2018102` VALUES (3, 'sore', '韩立', 2018102, 201810203, '信息工程学院', 2, 1, '90a5c04c88c587e29eeec16a2d1cb2ef.jpeg', '2022-01-16 09:19:12', '2022-01-16 09:19:12', '5381e0e8594ef7651fe8b3410f45ff3e', '804273');
INSERT INTO `2018102` VALUES (4, '畅儿', '从红', 2018102, 201810204, '信息工程学院', 2, 1, '153dd9ddb04fecaa4b506893146b742e.jpeg', '2022-01-16 09:20:15', '2022-01-16 09:20:15', '4625e551ad9783cba12b67b8e5a55737', '454933');
INSERT INTO `2018102` VALUES (5, '大胆', '刘胆', 2018102, 201810205, '信息工程学院', 2, 1, '169ab949c936cb23a7b89d341f912363.jpeg', '2022-01-16 09:21:24', '2022-01-16 09:21:24', '782d60a61e490a1425de26c54c9bcfd3', '735929');

-- ----------------------------
-- Table structure for 2018103
-- ----------------------------
DROP TABLE IF EXISTS `2018103`;
CREATE TABLE `2018103`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `snickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sclass` int(10) NULL DEFAULT NULL,
  `snum` int(10) NULL DEFAULT NULL,
  `academy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `statusqiandao` tinyint(10) NULL DEFAULT NULL,
  `status` tinyint(10) NULL DEFAULT NULL,
  `cover_pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_at` datetime(0) NULL DEFAULT NULL,
  `update_at` datetime(0) NULL DEFAULT NULL,
  `password_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password_salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 2018103
-- ----------------------------
INSERT INTO `2018103` VALUES (1, 'xy88', '赵云', 2018103, 201810301, '信息工程学院', 2, 1, '242aa7f22d05f11fdc18694447d70ee8.jpeg', '2022-01-08 13:13:37', '2022-01-08 13:24:52', '8bdd860075bea671a261c7148ba4a1d1', '265039');

-- ----------------------------
-- Table structure for 2018104
-- ----------------------------
DROP TABLE IF EXISTS `2018104`;
CREATE TABLE `2018104`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `snickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sclass` int(10) NULL DEFAULT NULL,
  `snum` int(10) NULL DEFAULT NULL,
  `academy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `statusqiandao` tinyint(10) NULL DEFAULT NULL,
  `status` tinyint(10) NULL DEFAULT NULL,
  `cover_pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_at` datetime(0) NULL DEFAULT NULL,
  `update_at` datetime(0) NULL DEFAULT NULL,
  `password_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password_salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 2018104
-- ----------------------------
INSERT INTO `2018104` VALUES (1, '小河s', '李四', 2018104, 201810401, '信息工程学院', 2, 1, '79a489fe39e6f241289c362e0b971dc1.jpeg', '2022-01-08 13:10:34', '2022-01-08 13:10:55', 'bcde1cd46b9667340f5fbed618d80eed', '228586');
INSERT INTO `2018104` VALUES (2, '达西s', '张明', 2018104, 201810402, '信息工程学院', 2, 1, '82fc7cd1c8330f7d28c9317e818ceef2.jpeg', '2022-01-08 13:12:06', '2022-01-08 13:12:06', '9f0fbac8286937edb80e5ab7742533c8', '652230');
INSERT INTO `2018104` VALUES (3, 'sores', '韩立', 2018104, 201810403, '信息工程学院', 2, 1, '90a5c04c88c587e29eeec16a2d1cb2ef.jpeg', '2022-01-16 09:19:12', '2022-01-16 09:19:12', '5381e0e8594ef7651fe8b3410f45ff3e', '804273');
INSERT INTO `2018104` VALUES (4, 'dd', '从红', 2018104, 201810404, '信息工程学院', 2, 1, '153dd9ddb04fecaa4b506893146b742e.jpeg', '2022-01-16 09:20:15', '2022-01-16 09:20:15', '4625e551ad9783cba12b67b8e5a55737', '454933');
INSERT INTO `2018104` VALUES (5, '大胆', '刘力', 2018104, 201810405, '信息工程学院', 2, 1, '169ab949c936cb23a7b89d341f912363.jpeg', '2022-01-16 09:21:24', '2022-01-16 09:21:24', '782d60a61e490a1425de26c54c9bcfd3', '735929');

-- ----------------------------
-- Table structure for 2018105
-- ----------------------------
DROP TABLE IF EXISTS `2018105`;
CREATE TABLE `2018105`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `snickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sclass` int(10) NULL DEFAULT NULL,
  `snum` int(10) NULL DEFAULT NULL,
  `academy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `statusqiandao` tinyint(10) NULL DEFAULT NULL,
  `status` tinyint(10) NULL DEFAULT NULL,
  `cover_pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_at` datetime(0) NULL DEFAULT NULL,
  `update_at` datetime(0) NULL DEFAULT NULL,
  `password_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password_salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 2018105
-- ----------------------------
INSERT INTO `2018105` VALUES (1, '铃铛', '张军', 2018105, 201810501, '信息工程学院', 1, 1, 'default.png', '2022-01-09 03:20:19', '2022-01-09 03:20:57', '5ceb2e8afce97633fd41dd5ed2993d0b', '851248');

-- ----------------------------
-- Table structure for 2018106
-- ----------------------------
DROP TABLE IF EXISTS `2018106`;
CREATE TABLE `2018106`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `snickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sclass` int(10) NULL DEFAULT NULL,
  `snum` int(10) NULL DEFAULT NULL,
  `academy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `statusqiandao` tinyint(10) NULL DEFAULT NULL,
  `status` tinyint(10) NULL DEFAULT NULL,
  `cover_pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_at` datetime(0) NULL DEFAULT NULL,
  `update_at` datetime(0) NULL DEFAULT NULL,
  `password_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password_salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 2018106
-- ----------------------------
INSERT INTO `2018106` VALUES (1, '小河', '李四', 2018106, 201810601, '信息工程学院', 2, 1, '85783f0f4ca29c3ed76d00be1d6b2992.jpeg', '2022-01-08 13:10:34', '2022-01-08 13:10:55', 'bcde1cd46b9667340f5fbed618d80eed', '228586');
INSERT INTO `2018106` VALUES (2, '达西', '张明', 2018106, 201810602, '信息工程学院', 2, 1, '87712edd546d5559b6c736c3ff43e4db.jpeg', '2022-01-08 13:12:06', '2022-01-08 13:12:06', '9f0fbac8286937edb80e5ab7742533c8', '652230');
INSERT INTO `2018106` VALUES (3, 'sore', '韩立', 2018106, 201810603, '信息工程学院', 1, 1, '4480767ef96e98373ec93ba7d0571381.jpeg', '2022-01-16 09:19:12', '2022-01-16 09:19:12', '5381e0e8594ef7651fe8b3410f45ff3e', '804273');
INSERT INTO `2018106` VALUES (4, '畅儿', '从红', 2018106, 201810604, '信息工程学院', 1, 1, 'c6b1c649287bab88251ac9b4416612a6.jpeg', '2022-01-16 09:20:15', '2022-01-16 09:20:15', '4625e551ad9783cba12b67b8e5a55737', '454933');
INSERT INTO `2018106` VALUES (5, '大胆', '刘胆', 2018106, 201810605, '信息工程学院', 1, 1, 'dcd688f79fcc9f398be98af78c4583d3.jpeg', '2022-01-16 09:21:24', '2022-01-16 09:21:24', '782d60a61e490a1425de26c54c9bcfd3', '735929');

-- ----------------------------
-- Table structure for 2018107
-- ----------------------------
DROP TABLE IF EXISTS `2018107`;
CREATE TABLE `2018107`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `snickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sclass` int(10) NULL DEFAULT NULL,
  `snum` int(10) NULL DEFAULT NULL,
  `academy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `statusqiandao` tinyint(10) NULL DEFAULT NULL,
  `status` tinyint(10) NULL DEFAULT NULL,
  `cover_pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_at` datetime(0) NULL DEFAULT NULL,
  `update_at` datetime(0) NULL DEFAULT NULL,
  `password_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password_salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 2018107
-- ----------------------------
INSERT INTO `2018107` VALUES (1, '小河', '李四', 2018107, 201810701, '信息工程学院', 2, 1, '79a489fe39e6f241289c362e0b971dc1.jpeg', '2022-01-08 13:10:34', '2022-01-08 13:10:55', 'bcde1cd46b9667340f5fbed618d80eed', '228586');
INSERT INTO `2018107` VALUES (2, '达西', '张明', 2018107, 201810702, '信息工程学院', 2, 1, 'e140d88464796cd0ae60d224b0fad741.jpeg', '2022-01-08 13:12:06', '2022-01-08 13:12:06', '9f0fbac8286937edb80e5ab7742533c8', '652230');
INSERT INTO `2018107` VALUES (3, 'sore', '韩立', 2018107, 201810703, '信息工程学院', 1, 1, 'e660eb5f6d498a7c0105de7a883bd544.jpeg', '2022-01-16 09:19:12', '2022-01-16 09:19:12', '5381e0e8594ef7651fe8b3410f45ff3e', '804273');
INSERT INTO `2018107` VALUES (4, '畅儿', '从红', 2018107, 201810704, '信息工程学院', 1, 1, 'f73e30c159bc6d16732618ccb18b41ec.jpeg', '2022-01-16 09:20:15', '2022-01-16 09:20:15', '4625e551ad9783cba12b67b8e5a55737', '454933');
INSERT INTO `2018107` VALUES (5, '大胆', '刘胆', 2018107, 201810705, '信息工程学院', 1, 1, 'f73e30c159bc6d16732618ccb18b41ec.jpeg', '2022-01-16 09:21:24', '2022-01-16 09:21:24', '782d60a61e490a1425de26c54c9bcfd3', '735929');

-- ----------------------------
-- Table structure for 2018108
-- ----------------------------
DROP TABLE IF EXISTS `2018108`;
CREATE TABLE `2018108`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `snickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sclass` int(10) NULL DEFAULT NULL,
  `snum` int(10) NULL DEFAULT NULL,
  `academy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `statusqiandao` tinyint(10) NULL DEFAULT NULL,
  `status` tinyint(10) NULL DEFAULT NULL,
  `cover_pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_at` datetime(0) NULL DEFAULT NULL,
  `update_at` datetime(0) NULL DEFAULT NULL,
  `password_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password_salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 2018108
-- ----------------------------
INSERT INTO `2018108` VALUES (1, '小河', '李四', 2018108, 201810801, '信息工程学院', 2, 1, '79a489fe39e6f241289c362e0b971dc1.jpeg', '2022-01-08 13:10:34', '2022-01-08 13:10:55', 'bcde1cd46b9667340f5fbed618d80eed', '228586');
INSERT INTO `2018108` VALUES (2, '达西', '张明', 2018108, 201810802, '信息工程学院', 2, 1, '707dfc348d4132a75b46e0a986e46e4c.jpeg', '2022-01-08 13:12:06', '2022-01-08 13:12:06', '9f0fbac8286937edb80e5ab7742533c8', '652230');
INSERT INTO `2018108` VALUES (3, 'sore', '韩立', 2018108, 201810803, '信息工程学院', 1, 1, '736a91193908454a5fd264496b573b8e.jpeg', '2022-01-16 09:19:12', '2022-01-16 09:19:12', '5381e0e8594ef7651fe8b3410f45ff3e', '804273');
INSERT INTO `2018108` VALUES (4, '畅儿', '从红', 2018108, 201810804, '信息工程学院', 1, 1, '2671ae8ea0c1908eb8edf42486c249b3.jpeg', '2022-01-16 09:20:15', '2022-01-16 09:20:15', '4625e551ad9783cba12b67b8e5a55737', '454933');
INSERT INTO `2018108` VALUES (5, '大胆', '刘胆', 2018108, 201810805, '信息工程学院', 1, 1, '35051b03d1dd74b5f0286e496d38995e.jpeg', '2022-01-16 09:21:24', '2022-01-16 09:21:24', '782d60a61e490a1425de26c54c9bcfd3', '735929');

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin1', '123456', 1);
INSERT INTO `admin` VALUES (2, 'admin2', '123456', 1);
INSERT INTO `admin` VALUES (3, 'admin3', '123456', 1);

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `bookname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `booknum` int(10) NULL DEFAULT NULL,
  `status` tinyint(10) NULL DEFAULT NULL,
  `cover_pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_at` datetime(0) NULL DEFAULT NULL,
  `update_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (1, '计算机网络', 50, 1, '1641439917.6968563.png', '2022-01-06 03:31:57', '2022-01-06 03:37:57');
INSERT INTO `book` VALUES (2, 'c语言', 40, 1, '1641440343.7426786.png', '2022-01-06 03:39:03', '2022-01-06 03:39:03');
INSERT INTO `book` VALUES (3, '汇编语言', 60, 2, '1641440365.9981084.png', '2022-01-06 03:39:26', '2022-01-06 03:45:43');
INSERT INTO `book` VALUES (4, '软件测试', 30, 1, '1641440410.30203.png', '2022-01-06 03:40:10', '2022-01-06 03:40:10');
INSERT INTO `book` VALUES (5, '算法逻辑', 40, 1, '1641440453.699142.png', '2022-01-06 03:40:53', '2022-01-06 03:40:53');
INSERT INTO `book` VALUES (6, '计算机基础', 50, 2, '1641440474.1516888.png', '2022-01-06 03:41:14', '2022-01-06 03:42:28');
INSERT INTO `book` VALUES (7, 'visual c++', 50, 1, '1641440527.7325735.png', '2022-01-06 03:42:07', '2022-01-06 03:42:07');
INSERT INTO `book` VALUES (8, '数据通信与网络', 40, 9, '1642391940.4539313.png', '2022-01-17 03:59:00', '2022-01-19 01:57:09');
INSERT INTO `book` VALUES (9, '数据通信与网络', 30, 2, '1642557466.734938.png', '2022-01-19 01:57:46', '2022-01-19 01:58:05');

-- ----------------------------
-- Table structure for chattable
-- ----------------------------
DROP TABLE IF EXISTS `chattable`;
CREATE TABLE `chattable`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `send` int(10) NULL DEFAULT NULL,
  `client1` int(10) NULL DEFAULT NULL,
  `client2` int(10) NULL DEFAULT NULL,
  `text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_at` datetime(0) NULL DEFAULT NULL,
  `update_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chattable
-- ----------------------------
INSERT INTO `chattable` VALUES (1, 201810101, 201810101, 201810102, '你好啊张三', '2022-01-16 12:38:09', '2022-01-16 12:38:09');
INSERT INTO `chattable` VALUES (2, 201810102, 201810101, 201810102, '你好啊李丽', '2022-01-16 13:10:01', '2022-01-16 13:10:01');
INSERT INTO `chattable` VALUES (3, 201810101, 201810101, 201810103, '你好安利', '2022-01-16 13:26:36', '2022-01-16 13:26:36');
INSERT INTO `chattable` VALUES (4, 201810103, 201810101, 201810103, '你好啊李丽', '2022-01-16 13:34:21', '2022-01-16 13:34:21');
INSERT INTO `chattable` VALUES (5, 201810101, 201810101, 201810102, '谢谢', '2022-01-17 04:08:11', '2022-01-17 04:08:11');
INSERT INTO `chattable` VALUES (6, 201810102, 201810101, 201810102, '不客气', '2022-01-17 04:12:05', '2022-01-17 04:12:05');
INSERT INTO `chattable` VALUES (7, 201810101, 201810101, 201810103, '谢谢', '2022-01-19 02:04:47', '2022-01-19 02:04:47');
INSERT INTO `chattable` VALUES (8, 201810103, 201810101, 201810103, '不客气', '2022-01-19 02:08:32', '2022-01-19 02:08:32');
INSERT INTO `chattable` VALUES (9, 201810101, 201810101, 201810106, '1111', '2022-02-17 09:28:29', '2022-02-17 09:28:29');
INSERT INTO `chattable` VALUES (10, 201810101, 201810101, 201810103, '1111111111111', '2022-02-24 09:04:51', '2022-02-24 09:04:51');
INSERT INTO `chattable` VALUES (11, 201810103, 201810101, 201810103, '222222222222222222', '2022-02-24 09:05:47', '2022-02-24 09:05:47');
INSERT INTO `chattable` VALUES (12, 201810103, 201810103, 201810106, 'qqqqqqqqqqqq', '2022-02-24 09:06:13', '2022-02-24 09:06:13');
INSERT INTO `chattable` VALUES (13, 201810101, 201810101, 201810107, '1111', '2022-02-26 05:42:55', '2022-02-26 05:42:55');
INSERT INTO `chattable` VALUES (14, 201810201, 201810201, 201810202, '你好', '2022-08-17 01:55:44', '2022-08-17 01:55:44');

-- ----------------------------
-- Table structure for classroom
-- ----------------------------
DROP TABLE IF EXISTS `classroom`;
CREATE TABLE `classroom`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `build` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `room` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sitenum` int(10) NULL DEFAULT NULL,
  `status` tinyint(10) NULL DEFAULT NULL,
  `create_at` datetime(0) NULL DEFAULT NULL,
  `update_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of classroom
-- ----------------------------
INSERT INTO `classroom` VALUES (1, '1号楼', '1001', 40, 1, '2022-01-05 11:32:24', '2022-01-05 11:38:05');
INSERT INTO `classroom` VALUES (2, '1号楼', '1002', 40, 1, '2022-01-05 11:34:05', '2022-01-05 11:34:05');
INSERT INTO `classroom` VALUES (3, '1号楼', '1003', 40, 2, '2022-01-05 11:39:15', '2022-01-05 11:41:10');
INSERT INTO `classroom` VALUES (4, '1号楼', '1004', 40, 1, '2022-01-05 11:39:27', '2022-01-05 11:39:27');
INSERT INTO `classroom` VALUES (5, '1号楼', '1005', 40, 1, '2022-01-05 11:39:38', '2022-02-26 05:34:09');
INSERT INTO `classroom` VALUES (6, '2号楼', '2001', 90, 2, '2022-01-05 11:40:00', '2022-01-11 10:37:40');
INSERT INTO `classroom` VALUES (7, '2号楼', '2002', 90, 1, '2022-01-05 11:40:15', '2022-01-05 11:40:15');
INSERT INTO `classroom` VALUES (8, '2号楼', '2003', 90, 2, '2022-01-05 11:40:29', '2022-01-05 11:41:22');

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
INSERT INTO `django_session` VALUES ('3o7omwuwlbhhdh4kzzm85vg5x0q8y2os', '.eJxlUNtuwjAM_RXkZ0C267ppvqUSCkkK3aBUtNmEEP--tGMIaW_xybn4-A5f8dq1N38JESww1whrmA59OoNlZEakNfiTG8cnRIZm6HeE54yUVeOUQuwnsHfoAtiF1PnP3p1n6yaVUtRNqo2PM_kFayWxSRKLMMNL1FuO8y7E821hShsp81HbbBZi2aTK4T6_96rZWJWzg7_kRruh81lCKlQZMqhbkZwuZvsxxMOyq5vSuCw55MDvyzXsjm48ZpEIFq3RupC9MUXLolUdNESk6KUoS_gr_-r-5jG6Uz4AlIrCMm9zjW6KOzctt2LeIG3QrIhtqZY0M9IQ_jEIV8iWyZLAYw1h6pZbvb6LFaPl0qLC4wfnfnzf:1n7zAA:CUmfUccAqN45Mv3bsci2EyVAN3h4E5hCNM9mrsZm3Zo', '2022-01-27 12:25:06.837982');
INSERT INTO `django_session` VALUES ('4zh6msh5oe4fjfwxv2ch7r51aydrkh8l', '.eJwdyjEOgCAQBdG7_JoGUaLchggmFIBhQWMId3e1nXkdly_hePbsPAz0plYIWBdDauQLTEdwMFIg2fiJf0k2pyW6c-EJOal50dyo2tqI-Rgv7CUbiQ:1n54T6:lmL6ywR6TJ_MHlWq1F7GYAILpZ2ovv98JEy-rUEPOyM', '2022-01-19 11:28:36.592683');
INSERT INTO `django_session` VALUES ('7xdcdbjb9pshgo8np5j0dhrd82sfnf2m', 'eyJ2ZXJpZnljb2RlIjoiNjkwNSJ9:1n8DUh:RJL_yGquVbi6AmedJ7TUM_3sZnyYWFe3Zy9Qtp0NpDs', '2022-01-28 03:43:15.535105');
INSERT INTO `django_session` VALUES ('bourfo7qobuqb16e1958sehdzyijexuv', 'ODY2ZTYwNWZjYzMyZjkwNmM2ZjBlYjM5YThlNjk5Mzk4YzQ0NmQ1MTp7InZlcmlmeWNvZGUiOiI4OTIwIiwiZ251bSI6IjIwMjIwMDEiLCJuYW1lIjoiXHU1ZjIwXHU4MDAxXHU1ZTA4IiwidGVhY2hlciI6eyJpZCI6MSwibmFtZSI6Ilx1NWYyMFx1ODAwMVx1NWUwOCIsImdudW0iOjIwMjIwMDEsInBhc3N3b3JkX2hhc2giOiI5YTg4ZjQ3Y2VjZjgzYmI3MGVkOGQwNWE2ZTg5YTMyYiIsInBob25lIjoiMTc1MTMzNjY4NzkiLCJwYXNzd29yZF9zYWx0IjoiNjkxNDI1Iiwic3RhdHVzIjoxLCJjcmVhdGVfYXQiOiIyMDIyLTAxLTA1IDA4OjU3OjU1IiwidXBkYXRlX2F0IjoiMjAyMi0wMS0wNSAwOToxMToxOSIsInBvc2l0aW9uIjoiXHU2NTU5XHU2Mzg4In19', '2022-10-19 10:55:59.577995');
INSERT INTO `django_session` VALUES ('btzdmkocbuczdh1x9h8ahvw6j240yfwy', 'OTdiNTM2OTViZTBmMTk0M2UwZDRjNzdjNWYwMzUwMWVhNGM5NGFkMjp7InZlcmlmeWNvZGUiOiIzNjY0In0=', '2023-03-10 01:24:14.203824');
INSERT INTO `django_session` VALUES ('d418acrm2shw804wvdf96z2uez4bgmb7', '.eJx1Uu1u2zAMfJVAv9OC1AdN61kCBLIkN94WO4jkDUXRdx8tJGjWtX8EQbw7knd6U7_zdRpf45Ky8gqQndqrkM7TvJZ8Vf5NTUl53Ks5nDdEK6FgLqGUP8tVigq1sY7krdRQ1yLw9716mdez1DRoDbARag7x9JXkYXWjhsPKgpN7BlZ3-o390e14CuUknD4wj7aLOY5shqGDnDiBC5S5D0YP24CnZd7ksXNoDBF3_cPYxxJ-ValSj1a7x9n3Kl5zqPkY6m3-J8AncDtg7zrvNvB6SV8ieo_osfVZylSnZW77kXO9nIZZiTOpTm3vOxH1DkXXer0tXu6-ISNgc67UNeW5PjhX5in-_LDPGpHvOebGvz9TZ_Nhtdmk7Tn-ks03R5uuZBxDyufXhrRjFucJaBSxlN1h7QIMch-IRJhIi0Jc5KscL1PcPCWLHSMDPVsr3S0__7jkl39t_JyZtWBGpt7YgdmM2lLXJ0oZMEdrmq_llvpt9__jcgRWW_VNRrxD7R15pG8yQtiB9loyslsS9dMvax49jvD-F51h38M:1n7aKq:VBxDRqtBybAows4uCjDweRzN5c6ODPudBLQ6XJgx8Oo', '2022-01-26 09:54:28.715763');
INSERT INTO `django_session` VALUES ('eq1eqoecwl6gli9m2w96amfatrjn2pl8', '.eJx1kutu4yAQhV8l4ndaDffLs0SKMIwb7za2FaBVVfXdC2yczVbZPxZizhzOzOdP8oaXafwIS0TiCFPSkj3JL3M5E8eAMQC6J-HVp3S9ooa2qz8KcpW0HvThhBfiPskUiauS2Z-b56HIkcGhmKqrZwRDtvbbA2v1f18u8Xjy6VR7rDdmFDpgGA0fBg0YTQTpFRrrORuqw3pa5mZPtaScK2V0S34zSv4116qyVDBZCyn7XFLPFS7oMx59vuZ_AvoEcgfGSe1kE5c1PlRYR6mj_Z0lTXla5j6fktLWLzeGfO2Jj-dpLunRKnqJ3sVs-RkXUt0nrB5p227fNrBajnnqHlseynYUnAB3Ha9EnPP2JGsWU_j9F4Flun41hyb-QUYgtJlSx3zH2Acf8fzRlWLESk-BGmtXRHko2sNQz4NSh2KVahnDUv-m4zqFNpcS1ErJtH2WFrh6_rXiy78gflLXXgkFow22ArfeGjRDlD6MqCMG5GRbzG0vD4BzIVhb8UPKZke5a6DZ_yh3BeNOVJZf33Vz4FI:1n7Tb1:Wxgu4fHCZ81gbV984kPrUgWssUvk2r2fP9YNQiPzOLs', '2022-01-26 02:42:43.907888');
INSERT INTO `django_session` VALUES ('g1stsjzos8u7zz4jwhyp1sgpucy4r4n8', '.eJwdyjEOgCAQBdG7_JoGQQpusxFMKATDgsYQ7u5qO_MGrljT_mwlRHg4Yy0UKBwpd44VfiAFeK2Q6fjEv7SYk5jvUmVCL8auTho3ap2Fz_kC6ZsbgA:1n52jz:PoRW9W7EQuaizTteBaS5JCJxu7SggrmYQnHVME_CP5A', '2022-01-19 09:37:55.482139');
INSERT INTO `django_session` VALUES ('hz860igb06347lv5hkdkbmyy0dt30ika', 'NDQwNWI2OTFiMzQ4OWEyZTkzNDZjOWQ4NGUxOGM1ZjM1MjZhNGE3MDp7InZlcmlmeWNvZGUiOiI3ODYzIiwiYWRtaW51c2VyIjp7ImlkIjoxLCJuYW1lIjoiYWRtaW4xIiwicGFzc3dvcmQiOiIxMjM0NTYiLCJzdGF0dXMiOjF9fQ==', '2022-08-31 01:12:21.399615');
INSERT INTO `django_session` VALUES ('kut54dvp7mlgwcdr5iyosuw87tzbhkyz', '.eJytU9Fu2zAM_JXAz01BURIl-Tf2GiCQJarx1jhBbG8oiv77KC8J0jYd9jAYMGyKOh7vyNfmJ5_68pIOmZu28YF889CMw7yXPwTlFcgjof3LM4_pINnbY5_k8NvQH-M48RYBcQ1qrcxW0Vr5tXaPx-HpcmeI-4q8mX2hspkNF9rMlE0nkS7bGgHezNaVuJmdNyAX03Mcx32c5OJr0-em1ZVTn35cwazxaTMHn3ihew13PsgbMdTwAtO05zYemphi5v3LkmkKK-EBlZPNLDxchK4ikPALRFh53PQLbCChtwRcOlBZl053GDAnbQJ4_fj9yLXpcYrTLFWlnugz_jqc8nYXx51AUBcZFButKVn2vhgVsmUbbEiZAa7KX4TXNxhjfJ6qQ4YcVo_SiUWgbZwWo84W0ApCq3RrnGTMx_zXjLcboT_VnZ7OEUSo2i2ZN0n40OSpX2T_g23WiCtFLbpWV34x7_thHvl08VBAzj4tR3WoLs1JTKE2lm71E3pPlzlcSDRXALGpIMgASVS-GWrBiWPa3St3N_tDex-tCrHa4xKn4nXXOeDsM9hI7EPU2FXyu8NQ4ZWzShwl70Lz2S8KyqB9Pxf3rAO7At9a11r7hXU1Q6xTrVrqHMZ-6g_D0h9ZK2NP2vtq6jjNmYfpRoiPu6PDnd0hZ7huo87_fXcUWSAlT3j0wYFF-w_bYgzo4ilo03mvC8rgh0y5blAyepHp_dSqz-rLtho0X2wL-JXC1lKr6KttgRVgiyK5ad7efgMa_HmK:1nhorS:PaRDIPZBeriZpXJC12apLmZmTR4V_41PvsZin11hAhI', '2022-05-06 08:41:54.842480');
INSERT INTO `django_session` VALUES ('ll5u3ex0per6cka5tes2yna3brwo6v2d', '.eJwdy0sKgCAURuG9_GMn9pBwN5c0cKCGV4sQ9546Pt-peGxy13dGY6FxKKUgQMa7UNgm6ApnoKVAID_ETLKbm5jfmHqEXNZtHx9nyoU7b-0H7CgbiQ:1n5IJN:QwnPfTA_DqxChwiUpfzl9KTsAjPheMOqwJYrIcgyVg8', '2022-01-20 02:15:29.648743');
INSERT INTO `django_session` VALUES ('luc80h4kti65655jsctisd8mtvv84hki', '.eJytU8tu20AM_JVgz3FA7nt16zf0asDYZ6w2kgxLamEE_fdy5Qfs2Al6KCDowCVnyBnynf3K-7Yc4pAyaxh3Etgzm177uWMNB84B8JnFNz-OpxBavIQ6P1HVO2sTa8QzG_s2_ux9V5HWs5I2rmdnY2b16RIO1tGfc1fDC8wVrI8-5e6wZMqScT1r0IXyU1br2XgIFUFrAtaaE0IcaIDNro1UAllC5FZpyCUAJlGCCNzxFIV0YMXLj11-rayTn2ZiJb4d0f8e9mmz9eOWIHTwGTBLIXRU2doi0SWVlVMupgywjHIlBIgrjNG_TYRhpTbc1t72mQTa-BqsWq4AV6ifwDUoGmkoY96lLzP-XAl9x9sd3vJ4Pf_3vqVeCO8CJTeoVoKvhH7Z9XX0pebkxe4wbYf-omq2pLMNIde_R0r2qWv7ecz7s8ck2Kl2eao55-EphlxIpa_1pfaPm8ROq8QuAERYOBAVRSs5VMGm7OP2Ed3D7A9L-tFK56t9JuZYrAjBQE42gfI6W-cFD7V5mr_Co1FIjmtrHLv3UzuUXN3uzSNrQT2BbZRplPrE2ppB1mKDC88wtlM79Mt8Wik6Cy2sraaPZ9WOZh_J55T76ayNuj23b_M0dP7m0GRRqh6aC__90NDr4gK3zgpnOToOznBjeEJ0DqP7l0OzoIISUiAvxqSCyHUJRRdPO2Ch3B2aujdGCA7H3j4_NNVI9_WhLRmkeZraRbnjs1gBf-LY0CfJkr9N_Xnr:1nPOzB:caA2NVUUs_A28nf-B7e0NrWGfSNmlq1xNggFnrSKMb8', '2022-03-16 13:25:45.673519');
INSERT INTO `django_session` VALUES ('meqfti0aox86ufxkglyn1h4boqex31te', '.eJytU0tu2zAQvYrBdRxwSM6Q1C5n6NaAQYlkrDb6wJJaGIHv3pEiu06cFF0UAgSJHL6Z9-Gr-JmOdT5VXUyiEKTIiwfx3E4N_ymplJTAC21o5u3dhFnJ3eR4lb-TdLw3plAd0lEUr6KOooC_V79Br8gPog_D8Ks7xv0hDAc-44Nz2dgqVdnpsrQyRRclBkrOB61KRugPXTvDg0XQmsjZeeQr0BBexpmJB6OQN4YxjNOwzFUdUxjTPowrt62ErcSNdAXaAufiqY-fVvgCoIClTzfUY921Cz9C9PzWzokzC_GBW_XCM61L4ECaB9GcXtJQdaz5vq8rxvjW1jw5t7x0A7MH3Gq11fTYt89iPbNK2p9GZr-bbJDlLKnLLG9ZpvkdZqOWng1zuNiBrEBbVz9WgKdp7Jowy3I1yWRExlJ-FndYAC4TM4lQhZia01qZ2EiSxF0xJrzOURLtJk-k5glu2EGg7EvlvNPeKfBKequsVRHAe6j84_c-Pb_36GMgyEksURsNKlsbM4CiXGbKgWPnZF6o_NEYJN5nQWsl32b7JABAi71YGP9FAG4rzjcS3_UNsanbafjsLixbcJPTWR2lDdItfUaPY70ceGuOWwUbjp6iQuKVqrj0hOXwFFM73rS89ZvNMZoz6l2V3rlO1nBqTNLx_7tOKAn48Y_OW4kK_8FnY6TOjrw2pXM6K0PWR4pJQqqMRrzzGe59RpJGmS98lm4DqkAqgL7yWW6kKhRfdCPO59-PhXRq:1nsFkj:z7PSMZeN4ZPB5OKxeN65svGESPWlKrE5_Y0T5Y1vvGw', '2022-06-04 03:26:05.439925');
INSERT INTO `django_session` VALUES ('uvfcuwwuwyg7dsa1cmiwl8mleaku1b96', '.eJxlUNFuwyAM_JXKz2mFCZiEb4lUUXDWbE0aNWFTVe3fZ6K1mjTxAue7484P-OTb0N_jNTF40Og0VLBMeSwvhQ0qOQVac-JpBf-AIYHHQhrixxTGouuyNXXb5baJvOmfMDnDXTZcpwLHS1gW8L--FYQYEo_3jWl6RuEr6sUsse2yC-ok9xORGBOVYPEqcY_zEEWCZLS1riV3MOSwdYf3md-2qGHNy5Zxlv--rrd0PIflLBpjVN031Nbm1DR1r0XYJkqskKOprX11f1X_47GEi_QHS8poU8LcOKx8DOu2Kq33Cveq2aH2ljySMPKc_jFQ7ZT2Gj0a-K4grcO2qudY6x1aUXsl4x8uIHMf:1nBAd2:bN_Rua0urmyuWpq-XOHRVmdRDhoqQncV8KsEfZoe2Pk', '2022-02-05 07:16:04.950035');
INSERT INTO `django_session` VALUES ('w2x80mev6omosxppnfu636xl0txw80lf', '.eJxtkstu4zAMRX8l0LoJ9KQev9FtgECW6MYziW1Edoug6L8P5SYZz6Q7gSLvJQ_5yd7x0rXXNGRkgYEWir2w6a2fzyxILiXn4oWlUyzlFhJO1ND5esKSBqo-jF2i0te-G2OZ8FCrtlxshT4Is1VqK-1u7N_YraaP5-q0n10TxX62jbf7GayK9G5NjWBO7OZ5jhMlf7Ius0Cmpe_S74eA0crvZ-8Ssvp1D4PVuJ81qlzDi8yq75hixvN1ydQtkh9waEksoyHvyBt6NwAkDCBrH6sZBWhpjPVgdxqs8Hb3a8Q6WZniNJelR4JQPoZLPhxjOVKN1ly1DrzSjXOqlVToM2TkApNWxiy9r9DytUaJp4k0DHAtdW3mgkTkEGvwzpm7jZDBQBBAGfOYnzIE33AZpAhCs68V2Sff77Wz297rIWBMR7ysVvCXfis5LZHy6I3csXv542r-J-Gjc622CVPrVNNYjtllbiKg81HJhhTG49BXeWGNUArAWc-ecYAXtId_sf9Ixmy4C8aGhfJPZGqGD4LILD5D6aZu6L_PyBi6LlDOVWZ56pa5H0j9RvBQ1Q37-gO5o-0u:1nA0P9:cIYyyZ64UMqX4h7vVEy2jHnqK4qMqJ3U6wGSVWzu3vc', '2022-02-02 02:08:55.995025');
INSERT INTO `django_session` VALUES ('y5elma1iiortbn5jlvrfa6a30685s0d4', 'MGI1NThmZmVjMWQwOWFkZGIxNmI2ZDVkMTMwYTM4Yzc2ODdiMDUzOTp7InZlcmlmeWNvZGUiOiIzNzQ0IiwidGdudW0iOjIwMjIwMDEsImNsYXNzbnVtIjoyMDE4MTAxLCJjbGFzc21hdGUiOnsiaWQiOjMsInNuaWNrbmFtZSI6Ilx1NTQ4Y1x1OThjZSIsInNuYW1lIjoiXHU1Yjg5XHU1MjI5Iiwic2NsYXNzIjoyMDE4MTAxLCJhY2FkZW15IjoiXHU0ZmUxXHU2MDZmXHU1ZGU1XHU3YTBiXHU1YjY2XHU5NjYyIiwiY292ZXJfcGljIjoiMGU0MGMyODU2MGVmYjAxZDNmYjNiMjkyZGMzNDkwODMuanBlZyIsInN0YXR1cyI6MSwicGFzc3dvcmRfaGFzaCI6IjZiYWUwMWU0MzM2YzVlODhmNDE5ZDVlNTk1OWNkZTAwIiwic251bSI6MjAxODEwMTAzLCJwYXNzd29yZF9zYWx0IjoiODQ2NzI4IiwiY3JlYXRlX2F0IjoiMjAyMi0wMS0xNiAwOToxMzo0NyIsInVwZGF0ZV9hdCI6IjIwMjItMDEtMTYgMDk6MTM6NDcifSwiY2xhc3NtYXRlc251bSI6MjAxODEwMTAzLCJhZG1pbnVzZXIiOnsiaWQiOjEsIm5hbWUiOiJhZG1pbjEiLCJwYXNzd29yZCI6IjEyMzQ1NiIsInN0YXR1cyI6MX0sInNudW0iOiIyMDE4MTAxMDEiLCJzdHVkZW50Ijp7ImlkIjoxLCJzbmlja25hbWUiOiJcdTU0MzlcdTk4Y2UiLCJzbmFtZSI6Ilx1Njc0ZVx1NGUzZCIsInNjbGFzcyI6MjAxODEwMSwiYWNhZGVteSI6Ilx1NGZlMVx1NjA2Zlx1NWRlNVx1N2EwYlx1NWI2Nlx1OTY2MiIsImNvdmVyX3BpYyI6IjE2NTA2MTYxNjkuODk3MDUyNS5qcGVnIiwic3RhdHVzIjoxLCJwYXNzd29yZF9oYXNoIjoiNDQwM2Y4NjkzNGI4ODNmMjQ2NzlkNmRlMDFlYzQzNTUiLCJzbnVtIjoyMDE4MTAxMDEsInBhc3N3b3JkX3NhbHQiOiI1NjA0MjQiLCJjcmVhdGVfYXQiOiIyMDIyLTAxLTA4IDEyOjU2OjE2IiwidXBkYXRlX2F0IjoiMjAyMi0wMS0xMCAwMjoyMToxNCJ9LCJnbnVtIjoiMjAyMjAwMSIsIm5hbWUiOiJcdTVmMjBcdTgwMDFcdTVlMDgiLCJ0ZWFjaGVyIjp7ImlkIjoxLCJuYW1lIjoiXHU1ZjIwXHU4MDAxXHU1ZTA4IiwiZ251bSI6MjAyMjAwMSwicGFzc3dvcmRfaGFzaCI6IjlhODhmNDdjZWNmODNiYjcwZWQ4ZDA1YTZlODlhMzJiIiwicGhvbmUiOiIxNzUxMzM2Njg3OSIsInBhc3N3b3JkX3NhbHQiOiI2OTE0MjUiLCJzdGF0dXMiOjEsImNyZWF0ZV9hdCI6IjIwMjItMDEtMDUgMDg6NTc6NTUiLCJ1cGRhdGVfYXQiOiIyMDIyLTAxLTA1IDA5OjExOjE5IiwicG9zaXRpb24iOiJcdTY1NTlcdTYzODgifSwiZHRpbWUiOiIyMDIzLTAyLTI4IDE3OjE3OjI3In0=', '2023-03-18 01:01:08.282824');
INSERT INTO `django_session` VALUES ('yxe31oee7re7nzra629t29knpu83t13j', 'YjRiMjkyNGFhY2E5M2ZmZDkxNTBmMWYxNDdiNDdlMTE5YjAzMTRhZjp7InZlcmlmeWNvZGUiOiIzMzc4IiwidGdudW0iOjIwMjIwMDEsImNsYXNzbnVtIjoyMDE4MTAxLCJzbnVtIjoiMjAxODEwMjAxIiwic3R1ZGVudCI6eyJpZCI6MSwic25pY2tuYW1lIjoiXHU1YzBmXHU2Y2IzIiwic25hbWUiOiJcdTY3NGVcdTU2ZGIiLCJzY2xhc3MiOjIwMTgxMDIsImFjYWRlbXkiOiJcdTRmZTFcdTYwNmZcdTVkZTVcdTdhMGJcdTViNjZcdTk2NjIiLCJjb3Zlcl9waWMiOiI3OWE0ODlmZTM5ZTZmMjQxMjg5YzM2MmUwYjk3MWRjMS5qcGVnIiwic3RhdHVzIjoxLCJwYXNzd29yZF9oYXNoIjoiYmNkZTFjZDQ2Yjk2NjczNDBmNWZiZWQ2MThkODBlZWQiLCJzbnVtIjoyMDE4MTAyMDEsInBhc3N3b3JkX3NhbHQiOiIyMjg1ODYiLCJjcmVhdGVfYXQiOiIyMDIyLTAxLTA4IDEzOjEwOjM0IiwidXBkYXRlX2F0IjoiMjAyMi0wMS0wOCAxMzoxMDo1NSJ9LCJteWxlc2NvdmVyX3BpYyI6IlNuaXBhc3RlXzIwMjItMDEtMTRfMTUtMzItMzYucG5nIiwibXlsZXNuYW1lIjoicHl0aG9uXHU3YTBiXHU1ZThmXHU4YmJlXHU4YmExIiwiZHRpbWUiOiIyMDIyLTA4LTE3IDA5OjU2OjUyIiwiY2xhc3NtYXRlIjp7ImlkIjoyLCJzbmlja25hbWUiOiJcdThmYmVcdTg5N2YiLCJzbmFtZSI6Ilx1NWYyMFx1NjYwZSIsInNjbGFzcyI6MjAxODEwMiwiYWNhZGVteSI6Ilx1NGZlMVx1NjA2Zlx1NWRlNVx1N2EwYlx1NWI2Nlx1OTY2MiIsImNvdmVyX3BpYyI6IjgyZmM3Y2QxYzgzMzBmN2QyOGM5MzE3ZTgxOGNlZWYyLmpwZWciLCJzdGF0dXMiOjEsInBhc3N3b3JkX2hhc2giOiI5ZjBmYmFjODI4NjkzN2VkYjgwZTVhYjc3NDI1MzNjOCIsInNudW0iOjIwMTgxMDIwMiwicGFzc3dvcmRfc2FsdCI6IjY1MjIzMCIsImNyZWF0ZV9hdCI6IjIwMjItMDEtMDggMTM6MTI6MDYiLCJ1cGRhdGVfYXQiOiIyMDIyLTAxLTA4IDEzOjEyOjA2In0sImNsYXNzbWF0ZXNudW0iOjIwMTgxMDIwMn0=', '2022-08-31 01:56:52.129176');

-- ----------------------------
-- Table structure for homework
-- ----------------------------
DROP TABLE IF EXISTS `homework`;
CREATE TABLE `homework`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tgnum` int(10) NULL DEFAULT NULL,
  `t_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of homework
-- ----------------------------
INSERT INTO `homework` VALUES (4, '课前实验.doc', 2022011, '钱老师');
INSERT INTO `homework` VALUES (17, 'BlindSR_Survey.pdf', 2022001, '张老师');
INSERT INTO `homework` VALUES (18, 'NNCnet_QKV.pdf', 2022001, '张老师');

-- ----------------------------
-- Table structure for learnbiji
-- ----------------------------
DROP TABLE IF EXISTS `learnbiji`;
CREATE TABLE `learnbiji`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `snum` int(10) NULL DEFAULT NULL,
  `text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_at` datetime(0) NULL DEFAULT NULL,
  `update_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of learnbiji
-- ----------------------------
INSERT INTO `learnbiji` VALUES (1, 201810101, '<p>\r\n\r\n第一次记笔记\r\n\r\n<br></p>', '2022-01-11 03:56:59', '2022-01-11 03:56:59');
INSERT INTO `learnbiji` VALUES (2, 201810101, '<p>afsdg</p>', '2022-01-11 03:57:44', '2022-01-11 03:57:44');
INSERT INTO `learnbiji` VALUES (3, 201810101, '<p>afsdg</p>', '2022-01-11 03:58:57', '2022-01-11 03:58:57');
INSERT INTO `learnbiji` VALUES (4, 201810101, 'aaaaasdf', '2022-01-11 04:00:12', '2022-01-11 04:00:12');
INSERT INTO `learnbiji` VALUES (5, 201810101, 'aaaaasdf', '2022-01-11 04:00:42', '2022-01-11 04:00:42');
INSERT INTO `learnbiji` VALUES (6, 201810101, '<p>gfhjk</p>', '2022-01-11 04:01:25', '2022-01-11 04:01:25');
INSERT INTO `learnbiji` VALUES (7, 201810101, '<p>aesdrgtfhj</p>', '2022-01-11 04:10:41', '2022-01-11 04:10:41');
INSERT INTO `learnbiji` VALUES (8, 201810102, '<p>aaaaaaaaa</p>', '2022-01-12 02:40:49', '2022-01-12 02:40:49');
INSERT INTO `learnbiji` VALUES (9, 201810101, '<p>bijiiiiiiiiiii</p>', '2022-01-15 12:19:43', '2022-01-15 12:19:43');
INSERT INTO `learnbiji` VALUES (10, 201810101, '<p>我的学习笔记</p>', '2022-01-19 02:05:26', '2022-01-19 02:05:26');
INSERT INTO `learnbiji` VALUES (11, 201810101, '', '2022-02-18 11:39:55', '2022-02-18 11:39:55');
INSERT INTO `learnbiji` VALUES (12, 201810201, '<p>1111111111111111111</p>', '2022-08-17 01:56:07', '2022-08-17 01:56:07');

-- ----------------------------
-- Table structure for mylesson
-- ----------------------------
DROP TABLE IF EXISTS `mylesson`;
CREATE TABLE `mylesson`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cover_pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` tinyint(10) NULL DEFAULT NULL,
  `create_at` datetime(0) NULL DEFAULT NULL,
  `update_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mylesson
-- ----------------------------
INSERT INTO `mylesson` VALUES (1, 'python程序设计', 'Snipaste_2022-01-14_15-32-36.png', 1, '2022-01-15 11:38:49', '2022-01-15 11:38:55');
INSERT INTO `mylesson` VALUES (2, '计算机网络', 'Snipaste_2022-01-14_15-33-27.png', 2, '2022-01-15 11:38:58', '2022-01-15 11:39:01');
INSERT INTO `mylesson` VALUES (3, '计算机组成原理', 'Snipaste_2022-01-14_15-33-54.png', 1, '2022-01-15 11:39:04', '2022-01-15 11:39:08');
INSERT INTO `mylesson` VALUES (4, '数据结构(一)', 'Snipaste_2022-01-14_15-34-13.png', 1, '2022-01-15 11:39:12', '2022-01-15 11:39:14');
INSERT INTO `mylesson` VALUES (5, '操作系统', 'Snipaste_2022-01-14_15-34-37.png', 2, '2022-01-15 11:39:18', '2022-01-15 11:39:21');
INSERT INTO `mylesson` VALUES (6, '计算机与软件工程', 'Snipaste_2022-01-14_16-17-33.png', 2, '2022-01-15 11:39:24', '2022-01-15 11:39:28');
INSERT INTO `mylesson` VALUES (7, 'C语言', 'Snipaste_2022-01-14_16-18-18.png', 1, '2022-01-15 11:39:31', '2022-01-15 11:39:34');
INSERT INTO `mylesson` VALUES (8, '人工智能', 'Snipaste_2022-01-14_16-18-37.png', 1, '2022-01-15 11:39:37', '2022-01-15 11:39:40');
INSERT INTO `mylesson` VALUES (9, '软件设计', 'Snipaste_2022-01-14_15-33-54.png', 1, '2022-01-15 11:39:44', '2022-01-15 11:39:47');
INSERT INTO `mylesson` VALUES (10, '软件规划', 'Snipaste_2022-01-14_15-34-13.png', 2, '2022-01-15 11:39:49', '2022-01-15 11:39:52');
INSERT INTO `mylesson` VALUES (11, '移动设备开发', 'Snipaste_2022-01-14_15-34-37.png', 1, '2022-01-15 11:40:29', '2022-01-15 11:40:32');
INSERT INTO `mylesson` VALUES (12, 'Linux操作系统', 'Snipaste_2022-01-14_16-17-33.png', 1, '2022-01-15 11:41:08', '2022-01-15 11:41:11');
INSERT INTO `mylesson` VALUES (13, '软件需求工程', 'Snipaste_2022-01-14_16-18-18.png', 1, '2022-01-15 11:41:37', '2022-01-15 11:41:40');
INSERT INTO `mylesson` VALUES (14, '软件测试与基础', 'Snipaste_2022-01-14_16-18-37.png', 1, '2022-01-15 11:42:06', '2022-01-15 11:42:08');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gnum` int(10) NULL DEFAULT NULL,
  `text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_at` datetime(0) NULL DEFAULT NULL,
  `update_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, '张老师', 2022001, '第一次通知', '2022-01-11 02:35:49', '2022-01-11 02:35:49');
INSERT INTO `notice` VALUES (2, '张老师', 2022001, '我的第二次通知', '2022-01-11 02:39:59', '2022-01-11 02:39:59');
INSERT INTO `notice` VALUES (5, '张老师', 2022001, 'xcfygvubihnjokm', '2022-01-11 02:53:59', '2022-01-11 02:53:59');
INSERT INTO `notice` VALUES (6, '张老师', 2022001, '第三次通知\r\n                            ', '2022-01-11 12:47:12', '2022-01-11 12:47:12');
INSERT INTO `notice` VALUES (7, '张老师', 2022001, '考试\r\n                            ', '2022-01-15 12:11:17', '2022-01-15 12:11:17');
INSERT INTO `notice` VALUES (8, '张老师', 2022001, '张老师的通知\r\n                            ', '2022-01-17 04:05:58', '2022-01-17 04:05:58');
INSERT INTO `notice` VALUES (9, '李老师', 2022002, '李老师的通知\r\n                            ', '2022-02-10 08:56:01', '2022-02-10 08:56:01');
INSERT INTO `notice` VALUES (10, '张老师', 2022001, '11111111111111111111111111111111\r\n                            ', '2022-02-24 08:47:50', '2022-02-24 08:47:50');
INSERT INTO `notice` VALUES (11, '马老师', 2022008, '老师的通知\r\n                            ', '2022-02-26 05:40:45', '2022-02-26 05:40:45');
INSERT INTO `notice` VALUES (12, '付老师', 2022007, '1\r\n                            ', '2022-03-02 13:20:35', '2022-03-02 13:20:35');
INSERT INTO `notice` VALUES (13, '张老师', 2022001, 'qqqqqqqqqqq\r\n                            ', '2022-04-22 08:42:19', '2022-04-22 08:42:19');
INSERT INTO `notice` VALUES (14, '张老师', 2022001, '333\r\n                            ', '2022-08-17 01:53:18', '2022-08-17 01:53:18');

-- ----------------------------
-- Table structure for physics
-- ----------------------------
DROP TABLE IF EXISTS `physics`;
CREATE TABLE `physics`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cover_pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` tinyint(10) NULL DEFAULT NULL,
  `pnum` int(10) NULL DEFAULT NULL,
  `create_at` datetime(0) NULL DEFAULT NULL,
  `update_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of physics
-- ----------------------------
INSERT INTO `physics` VALUES (1, '滑轮', '1641609537.4216132.png', 2, 30, '2022-01-08 02:38:57', '2022-01-08 02:45:45');
INSERT INTO `physics` VALUES (2, '电铃', '1641609787.4524431.png', 1, 40, '2022-01-08 02:43:07', '2022-01-08 02:43:07');
INSERT INTO `physics` VALUES (3, '天平', '1641609810.3683863.png', 1, 40, '2022-01-08 02:43:30', '2022-01-08 02:43:30');
INSERT INTO `physics` VALUES (4, '涡轮机', '1641609836.8414774.png', 1, 40, '2022-01-08 02:43:56', '2022-01-08 02:43:56');

-- ----------------------------
-- Table structure for salary
-- ----------------------------
DROP TABLE IF EXISTS `salary`;
CREATE TABLE `salary`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tgnum` int(10) NULL DEFAULT NULL,
  `basicsalary` int(10) NULL DEFAULT NULL,
  `carsubsidy` int(10) NULL DEFAULT NULL,
  `roomsubsidy` int(10) NULL DEFAULT NULL,
  `award` int(10) NULL DEFAULT NULL,
  `sum` int(10) NULL DEFAULT NULL,
  `create_at` datetime(0) NULL DEFAULT NULL,
  `update_at` datetime(0) NULL DEFAULT NULL,
  `status` tinyint(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of salary
-- ----------------------------
INSERT INTO `salary` VALUES (1, '张老师', 2022001, 4000, 1000, 1000, 2000, 8000, '2022-01-06 06:37:17', '2022-01-06 06:37:17', 1);
INSERT INTO `salary` VALUES (2, '李老师', 2022002, 4000, 1000, 1000, 2000, 8000, '2022-01-06 06:38:49', '2022-01-06 06:39:04', 1);
INSERT INTO `salary` VALUES (3, '王老师', 2022003, 4000, 1000, 1000, 2000, 8000, '2022-01-06 06:53:46', '2022-01-06 06:53:46', 1);
INSERT INTO `salary` VALUES (4, '刘老师', 2022004, 4000, 1000, 1000, 2000, 8000, '2022-01-06 06:54:09', '2022-01-06 06:54:09', 1);
INSERT INTO `salary` VALUES (5, '侯老师', 2022005, 4000, 1000, 1500, 2000, 8500, '2022-01-06 06:54:37', '2022-01-17 03:59:34', 1);
INSERT INTO `salary` VALUES (6, '曹老师', 2022006, 4000, 1000, 1500, 2000, 8500, '2022-01-06 06:55:04', '2022-01-11 10:36:22', 1);

-- ----------------------------
-- Table structure for student_lesson
-- ----------------------------
DROP TABLE IF EXISTS `student_lesson`;
CREATE TABLE `student_lesson`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `snum` int(10) NULL DEFAULT NULL,
  `lessonid` int(10) NULL DEFAULT NULL,
  `idstatus` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 71 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student_lesson
-- ----------------------------
INSERT INTO `student_lesson` VALUES (1, 201810101, 1, 2);
INSERT INTO `student_lesson` VALUES (2, 201810101, 2, 2);
INSERT INTO `student_lesson` VALUES (3, 201810101, 3, 2);
INSERT INTO `student_lesson` VALUES (4, 201810101, 4, 1);
INSERT INTO `student_lesson` VALUES (5, 201810101, 5, 1);
INSERT INTO `student_lesson` VALUES (6, 201810101, 6, 1);
INSERT INTO `student_lesson` VALUES (7, 201810101, 7, 1);
INSERT INTO `student_lesson` VALUES (8, 201810101, 8, 1);
INSERT INTO `student_lesson` VALUES (9, 201810101, 9, 1);
INSERT INTO `student_lesson` VALUES (10, 201810101, 10, 1);
INSERT INTO `student_lesson` VALUES (11, 201810101, 11, 1);
INSERT INTO `student_lesson` VALUES (12, 201810101, 12, 1);
INSERT INTO `student_lesson` VALUES (13, 201810101, 13, 1);
INSERT INTO `student_lesson` VALUES (14, 201810101, 14, 1);
INSERT INTO `student_lesson` VALUES (15, 201810102, 1, 1);
INSERT INTO `student_lesson` VALUES (16, 201810102, 2, 1);
INSERT INTO `student_lesson` VALUES (17, 201810102, 3, 2);
INSERT INTO `student_lesson` VALUES (18, 201810102, 4, 1);
INSERT INTO `student_lesson` VALUES (19, 201810102, 5, 1);
INSERT INTO `student_lesson` VALUES (20, 201810102, 6, 1);
INSERT INTO `student_lesson` VALUES (21, 201810102, 7, 1);
INSERT INTO `student_lesson` VALUES (22, 201810102, 8, 1);
INSERT INTO `student_lesson` VALUES (23, 201810102, 9, 1);
INSERT INTO `student_lesson` VALUES (24, 201810102, 10, 1);
INSERT INTO `student_lesson` VALUES (25, 201810102, 11, 1);
INSERT INTO `student_lesson` VALUES (26, 201810102, 12, 1);
INSERT INTO `student_lesson` VALUES (27, 201810102, 13, 1);
INSERT INTO `student_lesson` VALUES (28, 201810102, 14, 1);
INSERT INTO `student_lesson` VALUES (29, 201810103, 1, 2);
INSERT INTO `student_lesson` VALUES (30, 201810103, 2, 2);
INSERT INTO `student_lesson` VALUES (31, 201810103, 3, 1);
INSERT INTO `student_lesson` VALUES (32, 201810103, 4, 1);
INSERT INTO `student_lesson` VALUES (33, 201810103, 5, 1);
INSERT INTO `student_lesson` VALUES (34, 201810103, 6, 1);
INSERT INTO `student_lesson` VALUES (35, 201810103, 7, 1);
INSERT INTO `student_lesson` VALUES (36, 201810103, 8, 1);
INSERT INTO `student_lesson` VALUES (37, 201810103, 9, 1);
INSERT INTO `student_lesson` VALUES (38, 201810103, 10, 1);
INSERT INTO `student_lesson` VALUES (39, 201810103, 11, 1);
INSERT INTO `student_lesson` VALUES (40, 201810103, 12, 1);
INSERT INTO `student_lesson` VALUES (41, 201810103, 13, 1);
INSERT INTO `student_lesson` VALUES (42, 201810103, 14, 1);
INSERT INTO `student_lesson` VALUES (43, 201810105, 1, 2);
INSERT INTO `student_lesson` VALUES (44, 201810105, 2, 1);
INSERT INTO `student_lesson` VALUES (45, 201810105, 3, 1);
INSERT INTO `student_lesson` VALUES (46, 201810105, 4, 1);
INSERT INTO `student_lesson` VALUES (47, 201810105, 5, 1);
INSERT INTO `student_lesson` VALUES (48, 201810105, 6, 1);
INSERT INTO `student_lesson` VALUES (49, 201810105, 7, 1);
INSERT INTO `student_lesson` VALUES (50, 201810105, 8, 1);
INSERT INTO `student_lesson` VALUES (51, 201810105, 9, 1);
INSERT INTO `student_lesson` VALUES (52, 201810105, 10, 1);
INSERT INTO `student_lesson` VALUES (53, 201810105, 11, 1);
INSERT INTO `student_lesson` VALUES (54, 201810105, 12, 1);
INSERT INTO `student_lesson` VALUES (55, 201810105, 13, 1);
INSERT INTO `student_lesson` VALUES (56, 201810105, 14, 1);
INSERT INTO `student_lesson` VALUES (57, 201810201, 1, 1);
INSERT INTO `student_lesson` VALUES (58, 201810201, 2, 1);
INSERT INTO `student_lesson` VALUES (59, 201810201, 3, 1);
INSERT INTO `student_lesson` VALUES (60, 201810201, 4, 1);
INSERT INTO `student_lesson` VALUES (61, 201810201, 5, 1);
INSERT INTO `student_lesson` VALUES (62, 201810201, 6, 1);
INSERT INTO `student_lesson` VALUES (63, 201810201, 7, 1);
INSERT INTO `student_lesson` VALUES (64, 201810201, 8, 1);
INSERT INTO `student_lesson` VALUES (65, 201810201, 9, 1);
INSERT INTO `student_lesson` VALUES (66, 201810201, 10, 1);
INSERT INTO `student_lesson` VALUES (67, 201810201, 11, 1);
INSERT INTO `student_lesson` VALUES (68, 201810201, 12, 1);
INSERT INTO `student_lesson` VALUES (69, 201810201, 13, 1);
INSERT INTO `student_lesson` VALUES (70, 201810201, 14, 1);

-- ----------------------------
-- Table structure for studentevent
-- ----------------------------
DROP TABLE IF EXISTS `studentevent`;
CREATE TABLE `studentevent`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_at` datetime(0) NULL DEFAULT NULL,
  `update_at` datetime(0) NULL DEFAULT NULL,
  `snum` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of studentevent
-- ----------------------------
INSERT INTO `studentevent` VALUES (11, '201810101的第一次记录', '2022-01-09 12:21:54', '2022-01-09 12:21:54', 201810101);
INSERT INTO `studentevent` VALUES (12, '第二次记录', '2022-01-09 12:24:17', '2022-01-09 12:24:17', 201810101);
INSERT INTO `studentevent` VALUES (13, '第三次记录', '2022-01-14 08:50:53', '2022-01-14 08:50:53', 201810101);
INSERT INTO `studentevent` VALUES (14, '第四次记录', '2022-01-15 12:15:56', '2022-01-15 12:15:56', 201810101);
INSERT INTO `studentevent` VALUES (15, '安利的记录', '2022-01-16 13:29:08', '2022-01-16 13:29:08', 201810103);
INSERT INTO `studentevent` VALUES (16, '张三的第一次记录', '2022-01-17 03:05:12', '2022-01-17 03:05:12', 201810102);
INSERT INTO `studentevent` VALUES (17, '张三', '2022-08-17 01:54:38', '2022-08-17 01:54:38', 201810201);

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gnum` int(10) NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password_salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` tinyint(255) NULL DEFAULT NULL,
  `create_at` datetime(0) NULL DEFAULT NULL,
  `update_at` datetime(0) NULL DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES (1, '张老师', 2022001, '17513366879', '9a88f47cecf83bb70ed8d05a6e89a32b', '691425', 1, '2022-01-05 08:57:55', '2022-01-05 09:11:19', '教授');
INSERT INTO `teacher` VALUES (2, '李老师', 2022002, '17513366333', '62a7e214163208728214f05b38cf5597', '429685', 1, '2022-01-05 09:14:55', '2022-01-05 09:14:55', '教授');
INSERT INTO `teacher` VALUES (3, '王老师', 2022003, '17513366321', 'cae69545f318a42bc34dab1eb2ab64ac', '757213', 2, '2022-01-05 09:15:36', '2022-01-05 09:38:17', '教授');
INSERT INTO `teacher` VALUES (4, '刘老师', 2022004, '17513356879', 'e2c1309d9185bc49e66a54657137ba49', '380527', 1, '2022-01-05 09:16:48', '2023-01-31 11:39:31', 'www');
INSERT INTO `teacher` VALUES (5, '侯老师', 2022005, '17333366879', '32c41b74733cb36848d048b1970b685e', '227636', 2, '2022-01-05 09:17:23', '2022-01-17 03:57:54', '教授');
INSERT INTO `teacher` VALUES (6, '曹老师', 2022006, '17323366321', '6c812d4218fddde6606d441d4ab13c4f', '520540', 2, '2022-01-05 09:18:32', '2022-01-05 09:20:26', '讲师');
INSERT INTO `teacher` VALUES (7, '付老师', 2022007, '17517366879', 'e25e6b059bc6a8b2ec40332f308b2ac0', '586127', 1, '2022-01-05 09:19:19', '2022-01-05 09:19:19', '讲师');
INSERT INTO `teacher` VALUES (8, '马老师', 2022008, '15513356879', 'c2694f6c1c343a091c9bb4defe16df7e', '372247', 1, '2022-01-05 09:19:56', '2022-01-05 09:19:56', '讲师');
INSERT INTO `teacher` VALUES (10, '张老师', 2022009, '17513366879', '767ced996ce13d044a475b674a9aff89', '683038', 1, '2022-01-06 11:00:27', '2022-01-06 11:26:10', '讲师');
INSERT INTO `teacher` VALUES (11, '赵老师', 2022010, '17513366879', 'e752be28aa2732b26c634e18910193dc', '365927', 1, '2022-01-06 11:11:40', '2022-01-06 11:26:34', '讲师');
INSERT INTO `teacher` VALUES (12, '钱老师', 2022011, '17513366879', 'df8e121e5e113983b725e3299b2c4183', '522296', 1, '2022-01-06 11:16:33', '2022-01-06 11:27:14', '院长');
INSERT INTO `teacher` VALUES (13, '马老师', 2022012, '17513366879', '44bafbd3b66063d14c9646ad23ccacc1', '651195', 1, '2022-01-06 11:16:48', '2022-01-07 02:48:30', '助理');
INSERT INTO `teacher` VALUES (14, '付老师', 2022013, '17513366879', 'ec14d2463f027d41f11afe622f40a414', '302464', 1, '2022-01-06 11:18:11', '2022-01-07 02:48:43', '助理');
INSERT INTO `teacher` VALUES (15, '赵老师', 2022014, '17513366879', 'c88d7b8f4a9e829377082f90e5f36a26', '969402', 1, '2022-01-06 11:19:11', '2022-01-07 02:48:52', '助理');
INSERT INTO `teacher` VALUES (16, '赵老师', 2022015, '17513366321', 'a5b7ee82a5df6083f131e574aca99f20', '532893', 1, '2022-01-06 11:24:43', '2022-01-07 02:49:08', '助理');
INSERT INTO `teacher` VALUES (17, '张老师', 2022016, '17513366333', '9cc93da962cce2b9d2cda5c1bb684e5e', '214567', 1, '2022-01-07 09:06:48', '2022-01-07 09:06:48', '助理');
INSERT INTO `teacher` VALUES (18, '诸葛老师', 2022017, '17513366879', '531bf4e8e510d020f4da40d1a4f9186c', '663991', 9, '2022-01-19 01:53:11', '2022-01-19 01:55:53', '助理');
INSERT INTO `teacher` VALUES (20, '111', 11111, '11111', '3eeaf188184cc697fa9c89ee23135fcf', '458383', 9, '2023-01-31 11:40:47', '2023-02-28 01:10:37', '111');

-- ----------------------------
-- Table structure for teacher_student
-- ----------------------------
DROP TABLE IF EXISTS `teacher_student`;
CREATE TABLE `teacher_student`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tgnum` int(10) NULL DEFAULT NULL,
  `classnum` int(10) NULL DEFAULT NULL,
  `classmatenum` int(10) NULL DEFAULT NULL,
  `create_at` datetime(0) NULL DEFAULT NULL,
  `update_at` datetime(0) NULL DEFAULT NULL,
  `status` tinyint(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher_student
-- ----------------------------
INSERT INTO `teacher_student` VALUES (1, '张老师', 2022001, 2018101, NULL, '2022-01-08 06:54:58', '2022-01-08 07:43:55', 2);
INSERT INTO `teacher_student` VALUES (2, '张老师', 2022001, 2018102, NULL, '2022-01-08 07:28:57', '2022-01-08 07:45:38', 2);
INSERT INTO `teacher_student` VALUES (3, '张老师', 2022001, 2018101, NULL, '2022-01-08 07:48:44', '2022-01-08 07:48:44', 1);
INSERT INTO `teacher_student` VALUES (4, '张老师', 2022001, 2018102, NULL, '2022-01-08 07:48:49', '2022-01-08 13:14:41', 2);
INSERT INTO `teacher_student` VALUES (5, '张老师', 2022001, 2018103, NULL, '2022-01-08 07:48:53', '2022-01-08 12:52:07', 2);
INSERT INTO `teacher_student` VALUES (6, '张老师', 2022001, 2018104, NULL, '2022-01-08 07:48:56', '2022-01-08 07:49:54', 2);
INSERT INTO `teacher_student` VALUES (7, '张老师', 2022001, 2018105, NULL, '2022-01-08 07:49:01', '2022-01-08 07:49:50', 2);
INSERT INTO `teacher_student` VALUES (8, '张老师', 2022001, 2018106, NULL, '2022-01-08 07:49:05', '2022-01-08 07:49:46', 2);
INSERT INTO `teacher_student` VALUES (9, '张老师', 2022001, 2018107, NULL, '2022-01-08 07:49:10', '2022-01-08 07:49:42', 2);
INSERT INTO `teacher_student` VALUES (10, '张老师', 2022001, 2018108, NULL, '2022-01-08 07:49:13', '2022-01-08 07:49:38', 2);
INSERT INTO `teacher_student` VALUES (11, '李老师', 2022002, 2018105, NULL, '2022-01-08 07:51:54', '2022-01-08 07:59:35', 2);
INSERT INTO `teacher_student` VALUES (12, '李老师', 2022002, 2018102, NULL, '2022-01-08 07:52:01', '2022-01-08 07:59:31', 2);
INSERT INTO `teacher_student` VALUES (13, '李老师', 2022002, 2018102, NULL, '2022-01-08 07:59:45', '2022-01-08 09:40:25', 2);
INSERT INTO `teacher_student` VALUES (14, '李老师', 2022002, 2018107, NULL, '2022-01-08 07:59:49', '2022-01-08 08:10:07', 2);
INSERT INTO `teacher_student` VALUES (15, '李老师', 2022002, 2018102, NULL, '2022-01-08 09:42:38', '2022-01-08 12:51:11', 2);
INSERT INTO `teacher_student` VALUES (16, '张老师', 2022001, 2018103, NULL, '2022-01-08 13:12:39', '2022-01-15 12:30:12', 2);
INSERT INTO `teacher_student` VALUES (17, '李老师', 2022002, 2018101, NULL, '2022-01-09 03:18:31', '2022-01-09 03:18:31', 1);
INSERT INTO `teacher_student` VALUES (18, '李老师', 2022002, 2018105, NULL, '2022-01-09 03:18:35', '2022-02-10 08:53:19', 2);
INSERT INTO `teacher_student` VALUES (19, '李老师', 2022002, 2018103, NULL, '2022-01-09 03:21:15', '2022-01-09 03:21:15', 1);
INSERT INTO `teacher_student` VALUES (20, '张老师', 2022001, 2018105, NULL, '2022-01-11 04:22:16', '2022-01-11 11:42:34', 2);
INSERT INTO `teacher_student` VALUES (21, '张老师', 2022001, 2018104, NULL, '2022-01-14 08:55:45', '2022-01-15 12:08:15', 2);
INSERT INTO `teacher_student` VALUES (22, '张老师', 2022001, 2018106, NULL, '2022-01-15 07:44:47', '2022-01-15 07:45:01', 2);
INSERT INTO `teacher_student` VALUES (23, '张老师', 2022001, 2018102, NULL, '2022-01-15 12:08:29', '2022-01-15 12:08:29', 1);
INSERT INTO `teacher_student` VALUES (24, '张老师', 2022001, 2018104, NULL, '2022-01-16 09:10:11', '2022-01-16 09:10:20', 2);
INSERT INTO `teacher_student` VALUES (25, '张老师', 2022001, 2018103, NULL, '2022-01-16 09:11:06', '2022-01-17 04:00:59', 2);
INSERT INTO `teacher_student` VALUES (26, '张老师', 2022001, 2018104, NULL, '2022-01-16 09:11:09', '2022-01-16 09:46:02', 2);
INSERT INTO `teacher_student` VALUES (27, '张老师', 2022001, 2018105, NULL, '2022-01-16 09:11:12', '2022-01-16 09:46:14', 2);
INSERT INTO `teacher_student` VALUES (28, '张老师', 2022001, 2018106, NULL, '2022-01-16 09:11:16', '2022-01-16 09:46:04', 2);
INSERT INTO `teacher_student` VALUES (29, '张老师', 2022001, 2018107, NULL, '2022-01-16 09:11:20', '2022-01-16 09:46:06', 2);
INSERT INTO `teacher_student` VALUES (30, '张老师', 2022001, 2018108, NULL, '2022-01-16 09:11:22', '2022-01-16 09:46:08', 2);
INSERT INTO `teacher_student` VALUES (31, '张老师', 2022001, 2018103, NULL, '2022-01-17 04:04:58', '2022-01-19 01:59:58', 2);
INSERT INTO `teacher_student` VALUES (32, '张老师', 2022001, 2018103, NULL, '2022-01-19 02:00:11', '2022-02-17 09:21:10', 2);
INSERT INTO `teacher_student` VALUES (33, '张老师', 2022001, 2018103, NULL, '2022-02-18 11:41:44', '2022-04-22 08:40:18', 2);
INSERT INTO `teacher_student` VALUES (34, '张老师', 2022001, 2018104, NULL, '2022-02-24 08:43:57', '2022-02-26 05:36:20', 2);
INSERT INTO `teacher_student` VALUES (35, '马老师', 2022008, 2018101, NULL, '2022-02-26 05:37:25', '2022-02-26 05:37:25', 1);
INSERT INTO `teacher_student` VALUES (36, '付老师', 2022007, 2018101, NULL, '2022-03-02 13:19:37', '2022-03-02 13:19:47', 2);
INSERT INTO `teacher_student` VALUES (37, '张老师', 2022001, 2018104, NULL, '2022-03-02 13:23:30', '2022-03-02 13:23:50', 2);
INSERT INTO `teacher_student` VALUES (38, '张老师', 2022001, 2018104, NULL, '2022-04-22 08:40:08', '2022-04-22 08:40:08', 1);
INSERT INTO `teacher_student` VALUES (39, '张老师', 2022001, 2018108, NULL, '2022-08-17 01:51:56', '2022-08-17 01:52:06', 2);
INSERT INTO `teacher_student` VALUES (40, '张老师', 2022001, 2018103, NULL, '2023-02-26 11:37:24', '2023-02-26 11:37:30', 2);

-- ----------------------------
-- Table structure for teacherevent
-- ----------------------------
DROP TABLE IF EXISTS `teacherevent`;
CREATE TABLE `teacherevent`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_at` datetime(0) NULL DEFAULT NULL,
  `update_at` datetime(0) NULL DEFAULT NULL,
  `gnum` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacherevent
-- ----------------------------
INSERT INTO `teacherevent` VALUES (2, '第一次记录', '2022-01-07 12:02:45', '2022-01-07 12:02:45', 2022001);
INSERT INTO `teacherevent` VALUES (3, '第二次记录', '2022-01-07 12:04:42', '2022-01-07 12:04:42', 2022001);
INSERT INTO `teacherevent` VALUES (4, '第三次记录', '2022-01-07 12:33:18', '2022-01-07 12:33:18', 2022001);
INSERT INTO `teacherevent` VALUES (5, '第四次记录', '2022-01-07 12:33:42', '2022-01-07 12:33:42', 2022001);
INSERT INTO `teacherevent` VALUES (6, '第五次记录', '2022-01-07 12:33:56', '2022-01-07 12:33:56', 2022001);
INSERT INTO `teacherevent` VALUES (7, '第六次记录', '2022-01-07 12:35:50', '2022-01-07 12:35:50', 2022001);
INSERT INTO `teacherevent` VALUES (8, '第一次记录', '2022-01-07 12:36:33', '2022-01-07 12:36:33', 2022002);
INSERT INTO `teacherevent` VALUES (9, '第二次记录', '2022-01-08 01:37:43', '2022-01-08 01:37:43', 2022002);
INSERT INTO `teacherevent` VALUES (10, '第七次记录', '2022-01-08 07:51:08', '2022-01-08 07:51:08', 2022001);
INSERT INTO `teacherevent` VALUES (11, 'frrrrrrrrrrrrrrrrrrrrrrrrrrrrr', '2022-01-15 12:07:38', '2022-01-15 12:07:38', 2022001);
INSERT INTO `teacherevent` VALUES (12, '一次记录', '2022-01-17 04:00:40', '2022-01-17 04:00:40', 2022001);
INSERT INTO `teacherevent` VALUES (13, '2022/1/19', '2022-01-19 01:59:43', '2022-01-19 01:59:43', 2022001);
INSERT INTO `teacherevent` VALUES (14, '11111111111111111111', '2022-02-17 09:20:35', '2022-02-17 09:20:35', 2022001);
INSERT INTO `teacherevent` VALUES (15, '2022/2/24', '2022-02-24 08:43:34', '2022-02-24 08:43:34', 2022001);
INSERT INTO `teacherevent` VALUES (16, '第一次记录', '2022-02-26 05:41:23', '2022-02-26 05:41:23', 2022008);
INSERT INTO `teacherevent` VALUES (17, '第二次记录', '2022-02-26 05:41:32', '2022-02-26 05:41:32', 2022008);
INSERT INTO `teacherevent` VALUES (18, '第七次记录', '2022-05-13 08:09:58', '2022-05-13 08:09:58', 2022001);
INSERT INTO `teacherevent` VALUES (19, '2222', '2022-08-17 01:18:04', '2022-08-17 01:18:04', 2022001);
INSERT INTO `teacherevent` VALUES (20, '33333', '2022-08-17 01:51:40', '2022-08-17 01:51:40', 2022001);

-- ----------------------------
-- Table structure for tijiaohomework
-- ----------------------------
DROP TABLE IF EXISTS `tijiaohomework`;
CREATE TABLE `tijiaohomework`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `snum` int(255) NULL DEFAULT NULL,
  `s_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tijiaohomework
-- ----------------------------
INSERT INTO `tijiaohomework` VALUES (3, 'DASR_supplemental.pdf', 201810101, '201810101');
INSERT INTO `tijiaohomework` VALUES (4, 'CCNN.pdf', 201810101, '201810101');
INSERT INTO `tijiaohomework` VALUES (5, 'CARN.pdf', 201810101, '201810101');
INSERT INTO `tijiaohomework` VALUES (6, '记录.pdf', 201810101, '201810101');

-- ----------------------------
-- Table structure for tlessontable
-- ----------------------------
DROP TABLE IF EXISTS `tlessontable`;
CREATE TABLE `tlessontable`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `monday` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tuesday` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wednesday` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thursday` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `friday` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tlessontable
-- ----------------------------
INSERT INTO `tlessontable` VALUES (1, 'python语言程序设计 必修课   1001 32', '无', '计算机软件工程 必修课   1001 32', '无', '无');
INSERT INTO `tlessontable` VALUES (2, 'Linux操作系统 必修课   1002 32', '无', '人工智能 必修课   1003 32', 'python语言程序设计 必修课   1001 32', '无');
INSERT INTO `tlessontable` VALUES (3, '无', '计算与软件工程 必修课   2002 32', '无', '无', '网络信息与安全 必修课   2003 32');
INSERT INTO `tlessontable` VALUES (4, '无', 'python语言程序设计 必修课   1001 32', '无', '无', '无');
INSERT INTO `tlessontable` VALUES (5, '软件过程与管理 必修课   2001 32', '无', '无', '无', 'python语言程序设计 必修课   1001 32');

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tgnum` int(10) NULL DEFAULT NULL,
  `t_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
