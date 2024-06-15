/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 80037 (8.0.37)
 Source Host           : localhost:3306
 Source Schema         : seatreservation

 Target Server Type    : MySQL
 Target Server Version : 80037 (8.0.37)
 File Encoding         : 65001

 Date: 15/06/2024 23:04:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for area
-- ----------------------------
DROP TABLE IF EXISTS `area`;
CREATE TABLE `area`  (
  `aid` int NOT NULL AUTO_INCREMENT,
  `areaName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '区域名',
  `subName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '区域缩写',
  PRIMARY KEY (`aid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of area
-- ----------------------------
INSERT INTO `area` VALUES (1, '一层讨论区', 'AW');
INSERT INTO `area` VALUES (2, '一层静音区', 'AE');
INSERT INTO `area` VALUES (3, '二层讨论区', 'BW');
INSERT INTO `area` VALUES (4, '二层静音区', 'BE');
INSERT INTO `area` VALUES (5, '三层讨论区', 'CW');
INSERT INTO `area` VALUES (6, '三层静音区', 'CE');

-- ----------------------------
-- Table structure for reservation
-- ----------------------------
DROP TABLE IF EXISTS `reservation`;
CREATE TABLE `reservation`  (
  `rid` bigint NOT NULL AUTO_INCREMENT,
  `uid` bigint NULL DEFAULT NULL COMMENT '用户id',
  `startTime` bigint NULL DEFAULT NULL,
  `endTime` bigint NULL DEFAULT NULL,
  `sid` bigint NULL DEFAULT NULL COMMENT '座位id',
  `state` int NULL DEFAULT 0 COMMENT '0待签到1已签到使用中2未及时签到3暂离4暂离60分钟未签到-1使用完成',
  `leaveTime` bigint NULL DEFAULT NULL COMMENT '暂离时间',
  `score` int NULL DEFAULT NULL COMMENT '扣多少信用分',
  PRIMARY KEY (`rid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reservation
-- ----------------------------
INSERT INTO `reservation` VALUES (15, 1, 1660116600000, 1660129024000, 100, 2, NULL, 10);
INSERT INTO `reservation` VALUES (16, 3, 1660116600000, 1660129024000, 101, 2, NULL, 10);
INSERT INTO `reservation` VALUES (17, 1, 1660183200000, 1660221000000, 61, -1, 1660161142018, NULL);
INSERT INTO `reservation` VALUES (18, 3, 1660185000000, 1660215600000, 65, 2, NULL, NULL);
INSERT INTO `reservation` VALUES (19, 6, 1660190400000, 1660219200000, 63, -1, NULL, NULL);
INSERT INTO `reservation` VALUES (20, 9, 1660192200000, 1660210200000, 69, 2, NULL, NULL);
INSERT INTO `reservation` VALUES (21, 10, 1660201200000, 1660219200000, 72, 2, NULL, NULL);
INSERT INTO `reservation` VALUES (22, 10, 1660210200000, 1660212000000, 70, 4, 1660209524628, NULL);
INSERT INTO `reservation` VALUES (24, 10, 1660212000000, 1660213800000, 58, -1, NULL, NULL);
INSERT INTO `reservation` VALUES (25, 10, 1660219200000, 1660221000000, 35, -1, 1660218204527, NULL);
INSERT INTO `reservation` VALUES (26, 1, 1659943800000, 1659961800000, 35, -1, NULL, NULL);
INSERT INTO `reservation` VALUES (27, 3, 1659933000000, 1659940200000, 100, -1, NULL, NULL);
INSERT INTO `reservation` VALUES (28, 1, 1659832200000, 1659839400000, 101, -1, NULL, NULL);
INSERT INTO `reservation` VALUES (29, 10, 1659749400000, 1659756600000, 58, -1, NULL, NULL);
INSERT INTO `reservation` VALUES (30, 6, 1659943800000, 1659961800000, 35, -1, NULL, NULL);
INSERT INTO `reservation` VALUES (31, 1, 1659943800000, 1659961800000, 61, -1, NULL, NULL);
INSERT INTO `reservation` VALUES (32, 1, 1659943800000, 1659961800000, 35, -1, NULL, NULL);
INSERT INTO `reservation` VALUES (33, 6, 1660210200000, 1660212000000, 70, -1, NULL, NULL);
INSERT INTO `reservation` VALUES (34, 6, 1660226400000, 1660226400000, 72, -1, NULL, NULL);
INSERT INTO `reservation` VALUES (35, 1, 1716557400000, 1716561000000, 35, -1, NULL, NULL);
INSERT INTO `reservation` VALUES (36, 1, 1717920000000, 1717943400000, 40, -1, 1717920049459, NULL);
INSERT INTO `reservation` VALUES (37, 2, 1717923600000, 1717943400000, 40, 4, 1717923481902, NULL);
INSERT INTO `reservation` VALUES (38, 1, 1718449200000, 1718461800000, 40, -1, NULL, NULL);
INSERT INTO `reservation` VALUES (39, 1, 1718445600000, 1718461800000, 40, -1, 1718445318272, NULL);
INSERT INTO `reservation` VALUES (40, 1, 1718445600000, 1718461800000, 40, -1, NULL, NULL);
INSERT INTO `reservation` VALUES (41, 1, 1718445600000, 1718461800000, 40, -1, NULL, NULL);
INSERT INTO `reservation` VALUES (42, 1, 1718449200000, 1718461800000, 40, -1, NULL, NULL);
INSERT INTO `reservation` VALUES (43, 1, 1718447400000, 1718454600000, 40, 4, 1718446678922, NULL);

-- ----------------------------
-- Table structure for seat
-- ----------------------------
DROP TABLE IF EXISTS `seat`;
CREATE TABLE `seat`  (
  `sid` bigint NOT NULL AUTO_INCREMENT COMMENT '位置id',
  `area` int NULL DEFAULT NULL COMMENT '区域',
  `type` int NULL DEFAULT 0 COMMENT '0座位1桌子',
  `row` int NULL DEFAULT NULL COMMENT '行',
  `column` int NULL DEFAULT NULL COMMENT '列',
  `state` int NULL DEFAULT 0 COMMENT '0有座1有约2被使用',
  PRIMARY KEY (`sid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 688 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of seat
-- ----------------------------
INSERT INTO `seat` VALUES (35, 1, 0, 2, 2, 0);
INSERT INTO `seat` VALUES (36, 1, 1, 1, 2, 0);
INSERT INTO `seat` VALUES (37, 1, 1, 1, 3, 0);
INSERT INTO `seat` VALUES (38, 1, 1, 1, 4, 0);
INSERT INTO `seat` VALUES (39, 1, 1, 1, 5, 0);
INSERT INTO `seat` VALUES (40, 1, 0, 2, 5, 0);
INSERT INTO `seat` VALUES (41, 1, 0, 2, 4, 0);
INSERT INTO `seat` VALUES (42, 1, 0, 2, 3, 0);
INSERT INTO `seat` VALUES (46, 1, 1, 9, 2, 0);
INSERT INTO `seat` VALUES (47, 1, 1, 9, 3, 0);
INSERT INTO `seat` VALUES (48, 1, 1, 9, 4, 0);
INSERT INTO `seat` VALUES (49, 1, 1, 9, 5, 0);
INSERT INTO `seat` VALUES (50, 1, 0, 8, 2, 0);
INSERT INTO `seat` VALUES (51, 1, 0, 8, 3, 0);
INSERT INTO `seat` VALUES (52, 1, 0, 8, 4, 0);
INSERT INTO `seat` VALUES (53, 1, 0, 8, 5, 0);
INSERT INTO `seat` VALUES (54, 1, 1, 5, 2, 0);
INSERT INTO `seat` VALUES (55, 1, 1, 5, 3, 0);
INSERT INTO `seat` VALUES (56, 1, 1, 5, 4, 0);
INSERT INTO `seat` VALUES (57, 1, 1, 5, 5, 0);
INSERT INTO `seat` VALUES (58, 1, 0, 4, 2, 0);
INSERT INTO `seat` VALUES (59, 1, 0, 4, 3, 0);
INSERT INTO `seat` VALUES (60, 1, 0, 4, 4, 0);
INSERT INTO `seat` VALUES (61, 1, 0, 4, 5, 0);
INSERT INTO `seat` VALUES (62, 1, 0, 6, 2, 0);
INSERT INTO `seat` VALUES (63, 1, 0, 6, 3, 0);
INSERT INTO `seat` VALUES (64, 1, 0, 6, 4, 0);
INSERT INTO `seat` VALUES (65, 1, 0, 6, 5, 0);
INSERT INTO `seat` VALUES (66, 1, 0, 2, 8, 0);
INSERT INTO `seat` VALUES (67, 1, 0, 3, 8, 0);
INSERT INTO `seat` VALUES (68, 1, 0, 4, 8, 0);
INSERT INTO `seat` VALUES (69, 1, 0, 5, 8, 0);
INSERT INTO `seat` VALUES (70, 1, 0, 6, 8, 0);
INSERT INTO `seat` VALUES (71, 1, 0, 7, 8, 0);
INSERT INTO `seat` VALUES (72, 1, 0, 8, 8, 0);
INSERT INTO `seat` VALUES (73, 1, 1, 2, 9, 0);
INSERT INTO `seat` VALUES (74, 1, 1, 3, 9, 0);
INSERT INTO `seat` VALUES (75, 1, 1, 4, 9, 0);
INSERT INTO `seat` VALUES (76, 1, 1, 5, 9, 0);
INSERT INTO `seat` VALUES (77, 1, 1, 6, 9, 0);
INSERT INTO `seat` VALUES (78, 1, 1, 7, 9, 0);
INSERT INTO `seat` VALUES (79, 1, 1, 8, 9, 0);
INSERT INTO `seat` VALUES (80, 1, 0, 2, 10, 0);
INSERT INTO `seat` VALUES (82, 1, 0, 4, 10, 0);
INSERT INTO `seat` VALUES (83, 1, 0, 5, 10, 0);
INSERT INTO `seat` VALUES (84, 1, 0, 6, 10, 0);
INSERT INTO `seat` VALUES (85, 1, 0, 7, 10, 0);
INSERT INTO `seat` VALUES (86, 1, 0, 8, 10, 0);
INSERT INTO `seat` VALUES (87, 1, 0, 3, 10, 0);
INSERT INTO `seat` VALUES (88, 1, 0, 2, 13, 0);
INSERT INTO `seat` VALUES (96, 1, 0, 1, 13, 0);
INSERT INTO `seat` VALUES (97, 1, 1, 1, 14, 0);
INSERT INTO `seat` VALUES (98, 1, 1, 2, 14, 0);
INSERT INTO `seat` VALUES (99, 1, 1, 1, 15, 0);
INSERT INTO `seat` VALUES (100, 1, 1, 2, 15, 0);
INSERT INTO `seat` VALUES (101, 1, 0, 1, 16, 0);
INSERT INTO `seat` VALUES (102, 1, 0, 2, 16, 0);
INSERT INTO `seat` VALUES (104, 1, 1, 4, 14, 0);
INSERT INTO `seat` VALUES (105, 1, 1, 4, 15, 0);
INSERT INTO `seat` VALUES (106, 1, 1, 5, 15, 0);
INSERT INTO `seat` VALUES (107, 1, 1, 5, 14, 0);
INSERT INTO `seat` VALUES (108, 1, 0, 4, 13, 0);
INSERT INTO `seat` VALUES (109, 1, 0, 5, 13, 0);
INSERT INTO `seat` VALUES (110, 1, 0, 4, 16, 0);
INSERT INTO `seat` VALUES (112, 1, 0, 5, 16, 0);
INSERT INTO `seat` VALUES (113, 1, 0, 8, 14, 0);
INSERT INTO `seat` VALUES (114, 1, 0, 8, 13, 0);
INSERT INTO `seat` VALUES (115, 1, 0, 8, 15, 0);
INSERT INTO `seat` VALUES (116, 1, 0, 8, 16, 0);
INSERT INTO `seat` VALUES (118, 1, 1, 9, 16, 0);
INSERT INTO `seat` VALUES (119, 1, 1, 9, 15, 0);
INSERT INTO `seat` VALUES (120, 1, 1, 9, 14, 0);
INSERT INTO `seat` VALUES (121, 1, 1, 9, 13, 0);
INSERT INTO `seat` VALUES (122, 1, 1, 4, 20, 0);
INSERT INTO `seat` VALUES (123, 1, 1, 4, 21, 0);
INSERT INTO `seat` VALUES (124, 1, 1, 4, 22, 0);
INSERT INTO `seat` VALUES (125, 1, 1, 5, 22, 0);
INSERT INTO `seat` VALUES (126, 1, 1, 5, 21, 0);
INSERT INTO `seat` VALUES (127, 1, 1, 5, 20, 0);
INSERT INTO `seat` VALUES (128, 1, 0, 3, 19, 0);
INSERT INTO `seat` VALUES (129, 1, 0, 3, 20, 0);
INSERT INTO `seat` VALUES (130, 1, 0, 4, 19, 0);
INSERT INTO `seat` VALUES (131, 1, 0, 5, 19, 0);
INSERT INTO `seat` VALUES (132, 1, 0, 6, 19, 0);
INSERT INTO `seat` VALUES (134, 1, 0, 6, 21, 0);
INSERT INTO `seat` VALUES (135, 1, 0, 6, 22, 0);
INSERT INTO `seat` VALUES (136, 1, 0, 3, 21, 0);
INSERT INTO `seat` VALUES (137, 1, 0, 3, 22, 0);
INSERT INTO `seat` VALUES (138, 1, 0, 3, 23, 0);
INSERT INTO `seat` VALUES (139, 1, 0, 4, 23, 0);
INSERT INTO `seat` VALUES (140, 1, 0, 5, 23, 0);
INSERT INTO `seat` VALUES (141, 1, 0, 6, 23, 0);
INSERT INTO `seat` VALUES (144, 1, 0, 6, 20, 0);
INSERT INTO `seat` VALUES (152, 2, 0, 2, 6, 0);
INSERT INTO `seat` VALUES (153, 2, 0, 2, 7, 0);
INSERT INTO `seat` VALUES (154, 2, 0, 2, 8, 0);
INSERT INTO `seat` VALUES (155, 2, 0, 2, 9, 0);
INSERT INTO `seat` VALUES (156, 2, 0, 2, 10, 0);
INSERT INTO `seat` VALUES (157, 2, 0, 2, 11, 0);
INSERT INTO `seat` VALUES (158, 2, 0, 2, 12, 0);
INSERT INTO `seat` VALUES (159, 2, 0, 2, 13, 0);
INSERT INTO `seat` VALUES (160, 2, 0, 2, 14, 0);
INSERT INTO `seat` VALUES (161, 2, 0, 2, 15, 0);
INSERT INTO `seat` VALUES (166, 2, 1, 3, 6, 0);
INSERT INTO `seat` VALUES (167, 2, 1, 3, 7, 0);
INSERT INTO `seat` VALUES (168, 2, 1, 3, 8, 0);
INSERT INTO `seat` VALUES (169, 2, 1, 3, 9, 0);
INSERT INTO `seat` VALUES (170, 2, 1, 3, 10, 0);
INSERT INTO `seat` VALUES (171, 2, 1, 3, 11, 0);
INSERT INTO `seat` VALUES (172, 2, 1, 3, 12, 0);
INSERT INTO `seat` VALUES (173, 2, 1, 3, 13, 0);
INSERT INTO `seat` VALUES (174, 2, 1, 3, 14, 0);
INSERT INTO `seat` VALUES (175, 2, 1, 3, 15, 0);
INSERT INTO `seat` VALUES (180, 2, 0, 4, 6, 0);
INSERT INTO `seat` VALUES (181, 2, 0, 4, 7, 0);
INSERT INTO `seat` VALUES (182, 2, 0, 4, 8, 0);
INSERT INTO `seat` VALUES (183, 2, 0, 4, 9, 0);
INSERT INTO `seat` VALUES (184, 2, 0, 4, 10, 0);
INSERT INTO `seat` VALUES (185, 2, 0, 4, 11, 0);
INSERT INTO `seat` VALUES (186, 2, 0, 4, 12, 0);
INSERT INTO `seat` VALUES (187, 2, 0, 4, 13, 0);
INSERT INTO `seat` VALUES (188, 2, 0, 4, 14, 0);
INSERT INTO `seat` VALUES (189, 2, 0, 4, 15, 0);
INSERT INTO `seat` VALUES (190, 2, 0, 6, 2, 0);
INSERT INTO `seat` VALUES (191, 2, 0, 6, 3, 0);
INSERT INTO `seat` VALUES (192, 2, 0, 6, 4, 0);
INSERT INTO `seat` VALUES (193, 2, 0, 6, 5, 0);
INSERT INTO `seat` VALUES (194, 2, 0, 6, 6, 0);
INSERT INTO `seat` VALUES (195, 2, 0, 6, 7, 0);
INSERT INTO `seat` VALUES (196, 2, 0, 6, 8, 0);
INSERT INTO `seat` VALUES (197, 2, 0, 6, 9, 0);
INSERT INTO `seat` VALUES (198, 2, 0, 6, 11, 0);
INSERT INTO `seat` VALUES (199, 2, 0, 6, 10, 0);
INSERT INTO `seat` VALUES (200, 2, 0, 6, 12, 0);
INSERT INTO `seat` VALUES (201, 2, 0, 6, 13, 0);
INSERT INTO `seat` VALUES (202, 2, 0, 6, 14, 0);
INSERT INTO `seat` VALUES (203, 2, 0, 6, 15, 0);
INSERT INTO `seat` VALUES (204, 2, 0, 8, 15, 0);
INSERT INTO `seat` VALUES (205, 2, 0, 8, 14, 0);
INSERT INTO `seat` VALUES (206, 2, 0, 8, 13, 0);
INSERT INTO `seat` VALUES (207, 2, 0, 8, 12, 0);
INSERT INTO `seat` VALUES (208, 2, 0, 8, 11, 0);
INSERT INTO `seat` VALUES (209, 2, 0, 8, 10, 0);
INSERT INTO `seat` VALUES (210, 2, 0, 8, 9, 0);
INSERT INTO `seat` VALUES (211, 2, 0, 8, 8, 0);
INSERT INTO `seat` VALUES (212, 2, 0, 8, 7, 0);
INSERT INTO `seat` VALUES (213, 2, 0, 8, 6, 0);
INSERT INTO `seat` VALUES (214, 2, 0, 8, 5, 0);
INSERT INTO `seat` VALUES (215, 2, 0, 8, 4, 0);
INSERT INTO `seat` VALUES (216, 2, 0, 8, 3, 0);
INSERT INTO `seat` VALUES (217, 2, 0, 8, 2, 0);
INSERT INTO `seat` VALUES (218, 2, 1, 7, 2, 0);
INSERT INTO `seat` VALUES (219, 2, 1, 7, 3, 0);
INSERT INTO `seat` VALUES (220, 2, 1, 7, 4, 0);
INSERT INTO `seat` VALUES (221, 2, 1, 7, 5, 0);
INSERT INTO `seat` VALUES (222, 2, 1, 7, 6, 0);
INSERT INTO `seat` VALUES (223, 2, 1, 7, 7, 0);
INSERT INTO `seat` VALUES (224, 2, 1, 7, 8, 0);
INSERT INTO `seat` VALUES (225, 2, 1, 7, 9, 0);
INSERT INTO `seat` VALUES (226, 2, 1, 7, 10, 0);
INSERT INTO `seat` VALUES (227, 2, 1, 7, 11, 0);
INSERT INTO `seat` VALUES (228, 2, 1, 7, 12, 0);
INSERT INTO `seat` VALUES (229, 2, 1, 7, 13, 0);
INSERT INTO `seat` VALUES (230, 2, 1, 7, 14, 0);
INSERT INTO `seat` VALUES (231, 2, 1, 7, 15, 0);
INSERT INTO `seat` VALUES (234, 2, 0, 2, 16, 0);
INSERT INTO `seat` VALUES (235, 2, 0, 2, 17, 0);
INSERT INTO `seat` VALUES (237, 2, 0, 2, 19, 0);
INSERT INTO `seat` VALUES (238, 2, 0, 2, 20, 0);
INSERT INTO `seat` VALUES (239, 2, 0, 2, 21, 0);
INSERT INTO `seat` VALUES (240, 2, 0, 2, 22, 0);
INSERT INTO `seat` VALUES (241, 2, 0, 2, 23, 0);
INSERT INTO `seat` VALUES (242, 2, 0, 2, 24, 0);
INSERT INTO `seat` VALUES (243, 2, 0, 4, 24, 0);
INSERT INTO `seat` VALUES (244, 2, 0, 4, 23, 0);
INSERT INTO `seat` VALUES (245, 2, 0, 4, 22, 0);
INSERT INTO `seat` VALUES (246, 2, 0, 4, 21, 0);
INSERT INTO `seat` VALUES (247, 2, 0, 4, 20, 0);
INSERT INTO `seat` VALUES (248, 2, 0, 4, 19, 0);
INSERT INTO `seat` VALUES (249, 2, 0, 4, 18, 0);
INSERT INTO `seat` VALUES (250, 2, 0, 4, 17, 0);
INSERT INTO `seat` VALUES (251, 2, 0, 4, 16, 0);
INSERT INTO `seat` VALUES (252, 2, 1, 3, 16, 0);
INSERT INTO `seat` VALUES (253, 2, 1, 3, 17, 0);
INSERT INTO `seat` VALUES (254, 2, 1, 3, 18, 0);
INSERT INTO `seat` VALUES (255, 2, 1, 3, 20, 0);
INSERT INTO `seat` VALUES (256, 2, 1, 3, 19, 0);
INSERT INTO `seat` VALUES (257, 2, 1, 3, 21, 0);
INSERT INTO `seat` VALUES (258, 2, 1, 3, 22, 0);
INSERT INTO `seat` VALUES (259, 2, 1, 3, 23, 0);
INSERT INTO `seat` VALUES (260, 2, 1, 3, 24, 0);
INSERT INTO `seat` VALUES (261, 2, 0, 2, 18, 0);
INSERT INTO `seat` VALUES (278, 3, 1, 5, 2, 0);
INSERT INTO `seat` VALUES (279, 3, 1, 5, 3, 0);
INSERT INTO `seat` VALUES (280, 3, 1, 5, 4, 0);
INSERT INTO `seat` VALUES (281, 3, 1, 5, 5, 0);
INSERT INTO `seat` VALUES (282, 3, 0, 4, 2, 0);
INSERT INTO `seat` VALUES (283, 3, 0, 4, 3, 0);
INSERT INTO `seat` VALUES (284, 3, 0, 4, 4, 0);
INSERT INTO `seat` VALUES (285, 3, 0, 4, 5, 0);
INSERT INTO `seat` VALUES (286, 3, 0, 6, 2, 0);
INSERT INTO `seat` VALUES (287, 3, 0, 6, 3, 0);
INSERT INTO `seat` VALUES (288, 3, 0, 6, 4, 0);
INSERT INTO `seat` VALUES (289, 3, 0, 6, 5, 0);
INSERT INTO `seat` VALUES (290, 3, 0, 2, 8, 0);
INSERT INTO `seat` VALUES (291, 3, 0, 3, 8, 0);
INSERT INTO `seat` VALUES (292, 3, 0, 4, 8, 0);
INSERT INTO `seat` VALUES (293, 3, 0, 5, 8, 0);
INSERT INTO `seat` VALUES (294, 3, 0, 6, 8, 0);
INSERT INTO `seat` VALUES (295, 3, 0, 7, 8, 0);
INSERT INTO `seat` VALUES (296, 3, 0, 8, 8, 0);
INSERT INTO `seat` VALUES (297, 3, 1, 2, 9, 0);
INSERT INTO `seat` VALUES (298, 3, 1, 3, 9, 0);
INSERT INTO `seat` VALUES (299, 3, 1, 4, 9, 0);
INSERT INTO `seat` VALUES (300, 3, 1, 5, 9, 0);
INSERT INTO `seat` VALUES (301, 3, 1, 6, 9, 0);
INSERT INTO `seat` VALUES (302, 3, 1, 7, 9, 0);
INSERT INTO `seat` VALUES (303, 3, 1, 8, 9, 0);
INSERT INTO `seat` VALUES (304, 3, 0, 2, 10, 0);
INSERT INTO `seat` VALUES (305, 3, 0, 4, 10, 0);
INSERT INTO `seat` VALUES (306, 3, 0, 5, 10, 0);
INSERT INTO `seat` VALUES (307, 3, 0, 6, 10, 0);
INSERT INTO `seat` VALUES (308, 3, 0, 7, 10, 0);
INSERT INTO `seat` VALUES (309, 3, 0, 8, 10, 0);
INSERT INTO `seat` VALUES (310, 3, 0, 3, 10, 0);
INSERT INTO `seat` VALUES (311, 3, 0, 2, 13, 0);
INSERT INTO `seat` VALUES (312, 3, 0, 1, 13, 0);
INSERT INTO `seat` VALUES (313, 3, 1, 1, 14, 0);
INSERT INTO `seat` VALUES (314, 3, 1, 2, 14, 0);
INSERT INTO `seat` VALUES (315, 3, 1, 1, 15, 0);
INSERT INTO `seat` VALUES (316, 3, 1, 2, 15, 0);
INSERT INTO `seat` VALUES (317, 3, 0, 1, 16, 0);
INSERT INTO `seat` VALUES (318, 3, 0, 2, 16, 0);
INSERT INTO `seat` VALUES (319, 3, 1, 4, 14, 0);
INSERT INTO `seat` VALUES (320, 3, 1, 4, 15, 0);
INSERT INTO `seat` VALUES (321, 3, 1, 5, 15, 0);
INSERT INTO `seat` VALUES (322, 3, 1, 5, 14, 0);
INSERT INTO `seat` VALUES (323, 3, 0, 4, 13, 0);
INSERT INTO `seat` VALUES (324, 3, 0, 5, 13, 0);
INSERT INTO `seat` VALUES (325, 3, 0, 4, 16, 0);
INSERT INTO `seat` VALUES (326, 3, 0, 5, 16, 0);
INSERT INTO `seat` VALUES (327, 3, 0, 8, 14, 0);
INSERT INTO `seat` VALUES (328, 3, 0, 8, 13, 0);
INSERT INTO `seat` VALUES (329, 3, 0, 8, 15, 0);
INSERT INTO `seat` VALUES (330, 3, 0, 8, 16, 0);
INSERT INTO `seat` VALUES (331, 3, 1, 9, 16, 0);
INSERT INTO `seat` VALUES (332, 3, 1, 9, 15, 0);
INSERT INTO `seat` VALUES (333, 3, 1, 9, 14, 0);
INSERT INTO `seat` VALUES (334, 3, 1, 9, 13, 0);
INSERT INTO `seat` VALUES (335, 3, 1, 4, 20, 0);
INSERT INTO `seat` VALUES (336, 3, 1, 4, 21, 0);
INSERT INTO `seat` VALUES (337, 3, 1, 4, 22, 0);
INSERT INTO `seat` VALUES (338, 3, 1, 5, 22, 0);
INSERT INTO `seat` VALUES (339, 3, 1, 5, 21, 0);
INSERT INTO `seat` VALUES (340, 3, 1, 5, 20, 0);
INSERT INTO `seat` VALUES (341, 3, 0, 3, 19, 0);
INSERT INTO `seat` VALUES (342, 3, 0, 3, 20, 0);
INSERT INTO `seat` VALUES (343, 3, 0, 4, 19, 0);
INSERT INTO `seat` VALUES (344, 3, 0, 5, 19, 0);
INSERT INTO `seat` VALUES (345, 3, 0, 6, 19, 0);
INSERT INTO `seat` VALUES (346, 3, 0, 6, 21, 0);
INSERT INTO `seat` VALUES (347, 3, 0, 6, 22, 0);
INSERT INTO `seat` VALUES (348, 3, 0, 3, 21, 0);
INSERT INTO `seat` VALUES (349, 3, 0, 3, 22, 0);
INSERT INTO `seat` VALUES (350, 3, 0, 3, 23, 0);
INSERT INTO `seat` VALUES (351, 3, 0, 4, 23, 0);
INSERT INTO `seat` VALUES (352, 3, 0, 5, 23, 0);
INSERT INTO `seat` VALUES (353, 3, 0, 6, 23, 0);
INSERT INTO `seat` VALUES (354, 3, 0, 6, 20, 0);
INSERT INTO `seat` VALUES (355, 5, 0, 2, 2, 0);
INSERT INTO `seat` VALUES (356, 5, 1, 1, 2, 0);
INSERT INTO `seat` VALUES (357, 5, 1, 1, 3, 0);
INSERT INTO `seat` VALUES (358, 5, 1, 1, 4, 0);
INSERT INTO `seat` VALUES (359, 5, 1, 1, 5, 0);
INSERT INTO `seat` VALUES (360, 5, 0, 2, 5, 0);
INSERT INTO `seat` VALUES (361, 5, 0, 2, 4, 0);
INSERT INTO `seat` VALUES (362, 5, 0, 2, 3, 0);
INSERT INTO `seat` VALUES (363, 5, 1, 9, 2, 0);
INSERT INTO `seat` VALUES (364, 5, 1, 9, 3, 0);
INSERT INTO `seat` VALUES (365, 5, 1, 9, 4, 0);
INSERT INTO `seat` VALUES (366, 5, 1, 9, 5, 0);
INSERT INTO `seat` VALUES (367, 5, 0, 8, 2, 0);
INSERT INTO `seat` VALUES (368, 5, 0, 8, 3, 0);
INSERT INTO `seat` VALUES (369, 5, 0, 8, 4, 0);
INSERT INTO `seat` VALUES (370, 5, 0, 8, 5, 0);
INSERT INTO `seat` VALUES (383, 5, 0, 2, 8, 0);
INSERT INTO `seat` VALUES (384, 5, 0, 3, 8, 0);
INSERT INTO `seat` VALUES (385, 5, 0, 4, 8, 0);
INSERT INTO `seat` VALUES (386, 5, 0, 5, 8, 0);
INSERT INTO `seat` VALUES (387, 5, 0, 6, 8, 0);
INSERT INTO `seat` VALUES (388, 5, 0, 7, 8, 0);
INSERT INTO `seat` VALUES (389, 5, 0, 8, 8, 0);
INSERT INTO `seat` VALUES (390, 5, 1, 2, 9, 0);
INSERT INTO `seat` VALUES (391, 5, 1, 3, 9, 0);
INSERT INTO `seat` VALUES (392, 5, 1, 4, 9, 0);
INSERT INTO `seat` VALUES (393, 5, 1, 5, 9, 0);
INSERT INTO `seat` VALUES (394, 5, 1, 6, 9, 0);
INSERT INTO `seat` VALUES (395, 5, 1, 7, 9, 0);
INSERT INTO `seat` VALUES (396, 5, 1, 8, 9, 0);
INSERT INTO `seat` VALUES (397, 5, 0, 2, 10, 0);
INSERT INTO `seat` VALUES (398, 5, 0, 4, 10, 0);
INSERT INTO `seat` VALUES (399, 5, 0, 5, 10, 0);
INSERT INTO `seat` VALUES (400, 5, 0, 6, 10, 0);
INSERT INTO `seat` VALUES (401, 5, 0, 7, 10, 0);
INSERT INTO `seat` VALUES (402, 5, 0, 8, 10, 0);
INSERT INTO `seat` VALUES (403, 5, 0, 3, 10, 0);
INSERT INTO `seat` VALUES (404, 5, 0, 2, 13, 0);
INSERT INTO `seat` VALUES (405, 5, 0, 1, 13, 0);
INSERT INTO `seat` VALUES (406, 5, 1, 1, 14, 0);
INSERT INTO `seat` VALUES (407, 5, 1, 2, 14, 0);
INSERT INTO `seat` VALUES (408, 5, 1, 1, 15, 0);
INSERT INTO `seat` VALUES (409, 5, 1, 2, 15, 0);
INSERT INTO `seat` VALUES (410, 5, 0, 1, 16, 0);
INSERT INTO `seat` VALUES (411, 5, 0, 2, 16, 0);
INSERT INTO `seat` VALUES (412, 5, 1, 4, 14, 0);
INSERT INTO `seat` VALUES (413, 5, 1, 4, 15, 0);
INSERT INTO `seat` VALUES (414, 5, 1, 5, 15, 0);
INSERT INTO `seat` VALUES (415, 5, 1, 5, 14, 0);
INSERT INTO `seat` VALUES (416, 5, 0, 4, 13, 0);
INSERT INTO `seat` VALUES (417, 5, 0, 5, 13, 0);
INSERT INTO `seat` VALUES (418, 5, 0, 4, 16, 0);
INSERT INTO `seat` VALUES (419, 5, 0, 5, 16, 0);
INSERT INTO `seat` VALUES (420, 5, 0, 8, 14, 0);
INSERT INTO `seat` VALUES (421, 5, 0, 8, 13, 0);
INSERT INTO `seat` VALUES (422, 5, 0, 8, 15, 0);
INSERT INTO `seat` VALUES (423, 5, 0, 8, 16, 0);
INSERT INTO `seat` VALUES (424, 5, 1, 9, 16, 0);
INSERT INTO `seat` VALUES (425, 5, 1, 9, 15, 0);
INSERT INTO `seat` VALUES (426, 5, 1, 9, 14, 0);
INSERT INTO `seat` VALUES (427, 5, 1, 9, 13, 0);
INSERT INTO `seat` VALUES (428, 5, 1, 4, 20, 0);
INSERT INTO `seat` VALUES (429, 5, 1, 4, 21, 0);
INSERT INTO `seat` VALUES (430, 5, 1, 4, 22, 0);
INSERT INTO `seat` VALUES (431, 5, 1, 5, 22, 0);
INSERT INTO `seat` VALUES (432, 5, 1, 5, 21, 0);
INSERT INTO `seat` VALUES (433, 5, 1, 5, 20, 0);
INSERT INTO `seat` VALUES (434, 5, 0, 3, 19, 0);
INSERT INTO `seat` VALUES (435, 5, 0, 3, 20, 0);
INSERT INTO `seat` VALUES (436, 5, 0, 4, 19, 0);
INSERT INTO `seat` VALUES (437, 5, 0, 5, 19, 0);
INSERT INTO `seat` VALUES (438, 5, 0, 6, 19, 0);
INSERT INTO `seat` VALUES (439, 5, 0, 6, 21, 0);
INSERT INTO `seat` VALUES (440, 5, 0, 6, 22, 0);
INSERT INTO `seat` VALUES (441, 5, 0, 3, 21, 0);
INSERT INTO `seat` VALUES (442, 5, 0, 3, 22, 0);
INSERT INTO `seat` VALUES (443, 5, 0, 3, 23, 0);
INSERT INTO `seat` VALUES (444, 5, 0, 4, 23, 0);
INSERT INTO `seat` VALUES (445, 5, 0, 5, 23, 0);
INSERT INTO `seat` VALUES (446, 5, 0, 6, 23, 0);
INSERT INTO `seat` VALUES (447, 5, 0, 6, 20, 0);
INSERT INTO `seat` VALUES (448, 4, 0, 2, 2, 0);
INSERT INTO `seat` VALUES (449, 4, 0, 2, 3, 0);
INSERT INTO `seat` VALUES (450, 4, 0, 2, 4, 0);
INSERT INTO `seat` VALUES (451, 4, 0, 2, 5, 0);
INSERT INTO `seat` VALUES (452, 4, 0, 2, 6, 0);
INSERT INTO `seat` VALUES (453, 4, 0, 2, 7, 0);
INSERT INTO `seat` VALUES (454, 4, 0, 2, 8, 0);
INSERT INTO `seat` VALUES (455, 4, 0, 2, 9, 0);
INSERT INTO `seat` VALUES (456, 4, 0, 2, 10, 0);
INSERT INTO `seat` VALUES (457, 4, 0, 2, 11, 0);
INSERT INTO `seat` VALUES (458, 4, 0, 2, 12, 0);
INSERT INTO `seat` VALUES (459, 4, 0, 2, 13, 0);
INSERT INTO `seat` VALUES (460, 4, 0, 2, 14, 0);
INSERT INTO `seat` VALUES (461, 4, 0, 2, 15, 0);
INSERT INTO `seat` VALUES (462, 4, 1, 3, 2, 0);
INSERT INTO `seat` VALUES (463, 4, 1, 3, 3, 0);
INSERT INTO `seat` VALUES (464, 4, 1, 3, 4, 0);
INSERT INTO `seat` VALUES (465, 4, 1, 3, 5, 0);
INSERT INTO `seat` VALUES (466, 4, 1, 3, 6, 0);
INSERT INTO `seat` VALUES (467, 4, 1, 3, 7, 0);
INSERT INTO `seat` VALUES (468, 4, 1, 3, 8, 0);
INSERT INTO `seat` VALUES (469, 4, 1, 3, 9, 0);
INSERT INTO `seat` VALUES (470, 4, 1, 3, 10, 0);
INSERT INTO `seat` VALUES (471, 4, 1, 3, 11, 0);
INSERT INTO `seat` VALUES (472, 4, 1, 3, 12, 0);
INSERT INTO `seat` VALUES (473, 4, 1, 3, 13, 0);
INSERT INTO `seat` VALUES (474, 4, 1, 3, 14, 0);
INSERT INTO `seat` VALUES (475, 4, 1, 3, 15, 0);
INSERT INTO `seat` VALUES (476, 4, 0, 4, 2, 0);
INSERT INTO `seat` VALUES (477, 4, 0, 4, 3, 0);
INSERT INTO `seat` VALUES (478, 4, 0, 4, 4, 0);
INSERT INTO `seat` VALUES (479, 4, 0, 4, 5, 0);
INSERT INTO `seat` VALUES (480, 4, 0, 4, 6, 0);
INSERT INTO `seat` VALUES (481, 4, 0, 4, 7, 0);
INSERT INTO `seat` VALUES (482, 4, 0, 4, 8, 0);
INSERT INTO `seat` VALUES (483, 4, 0, 4, 9, 0);
INSERT INTO `seat` VALUES (484, 4, 0, 4, 10, 0);
INSERT INTO `seat` VALUES (485, 4, 0, 4, 11, 0);
INSERT INTO `seat` VALUES (486, 4, 0, 4, 12, 0);
INSERT INTO `seat` VALUES (487, 4, 0, 4, 13, 0);
INSERT INTO `seat` VALUES (488, 4, 0, 4, 14, 0);
INSERT INTO `seat` VALUES (489, 4, 0, 4, 15, 0);
INSERT INTO `seat` VALUES (490, 4, 0, 6, 2, 0);
INSERT INTO `seat` VALUES (491, 4, 0, 6, 3, 0);
INSERT INTO `seat` VALUES (492, 4, 0, 6, 4, 0);
INSERT INTO `seat` VALUES (493, 4, 0, 6, 5, 0);
INSERT INTO `seat` VALUES (494, 4, 0, 6, 6, 0);
INSERT INTO `seat` VALUES (495, 4, 0, 6, 7, 0);
INSERT INTO `seat` VALUES (496, 4, 0, 6, 8, 0);
INSERT INTO `seat` VALUES (497, 4, 0, 6, 9, 0);
INSERT INTO `seat` VALUES (498, 4, 0, 6, 11, 0);
INSERT INTO `seat` VALUES (499, 4, 0, 6, 10, 0);
INSERT INTO `seat` VALUES (500, 4, 0, 6, 12, 0);
INSERT INTO `seat` VALUES (501, 4, 0, 6, 13, 0);
INSERT INTO `seat` VALUES (502, 4, 0, 6, 14, 0);
INSERT INTO `seat` VALUES (503, 4, 0, 6, 15, 0);
INSERT INTO `seat` VALUES (504, 4, 0, 8, 15, 0);
INSERT INTO `seat` VALUES (505, 4, 0, 8, 14, 0);
INSERT INTO `seat` VALUES (506, 4, 0, 8, 13, 0);
INSERT INTO `seat` VALUES (507, 4, 0, 8, 12, 0);
INSERT INTO `seat` VALUES (508, 4, 0, 8, 11, 0);
INSERT INTO `seat` VALUES (509, 4, 0, 8, 10, 0);
INSERT INTO `seat` VALUES (510, 4, 0, 8, 9, 0);
INSERT INTO `seat` VALUES (511, 4, 0, 8, 8, 0);
INSERT INTO `seat` VALUES (512, 4, 0, 8, 7, 0);
INSERT INTO `seat` VALUES (513, 4, 0, 8, 6, 0);
INSERT INTO `seat` VALUES (514, 4, 0, 8, 5, 0);
INSERT INTO `seat` VALUES (515, 4, 0, 8, 4, 0);
INSERT INTO `seat` VALUES (516, 4, 0, 8, 3, 0);
INSERT INTO `seat` VALUES (517, 4, 0, 8, 2, 0);
INSERT INTO `seat` VALUES (518, 4, 1, 7, 2, 0);
INSERT INTO `seat` VALUES (519, 4, 1, 7, 3, 0);
INSERT INTO `seat` VALUES (520, 4, 1, 7, 4, 0);
INSERT INTO `seat` VALUES (521, 4, 1, 7, 5, 0);
INSERT INTO `seat` VALUES (522, 4, 1, 7, 6, 0);
INSERT INTO `seat` VALUES (523, 4, 1, 7, 7, 0);
INSERT INTO `seat` VALUES (524, 4, 1, 7, 8, 0);
INSERT INTO `seat` VALUES (525, 4, 1, 7, 9, 0);
INSERT INTO `seat` VALUES (526, 4, 1, 7, 10, 0);
INSERT INTO `seat` VALUES (527, 4, 1, 7, 11, 0);
INSERT INTO `seat` VALUES (528, 4, 1, 7, 12, 0);
INSERT INTO `seat` VALUES (529, 4, 1, 7, 13, 0);
INSERT INTO `seat` VALUES (530, 4, 1, 7, 14, 0);
INSERT INTO `seat` VALUES (531, 4, 1, 7, 15, 0);
INSERT INTO `seat` VALUES (532, 4, 0, 2, 16, 0);
INSERT INTO `seat` VALUES (533, 4, 0, 2, 17, 0);
INSERT INTO `seat` VALUES (534, 4, 0, 2, 19, 0);
INSERT INTO `seat` VALUES (535, 4, 0, 2, 20, 0);
INSERT INTO `seat` VALUES (536, 4, 0, 2, 21, 0);
INSERT INTO `seat` VALUES (537, 4, 0, 2, 22, 0);
INSERT INTO `seat` VALUES (538, 4, 0, 2, 23, 0);
INSERT INTO `seat` VALUES (539, 4, 0, 2, 24, 0);
INSERT INTO `seat` VALUES (540, 4, 0, 4, 24, 0);
INSERT INTO `seat` VALUES (541, 4, 0, 4, 23, 0);
INSERT INTO `seat` VALUES (542, 4, 0, 4, 22, 0);
INSERT INTO `seat` VALUES (543, 4, 0, 4, 21, 0);
INSERT INTO `seat` VALUES (544, 4, 0, 4, 20, 0);
INSERT INTO `seat` VALUES (545, 4, 0, 4, 19, 0);
INSERT INTO `seat` VALUES (546, 4, 0, 4, 18, 0);
INSERT INTO `seat` VALUES (547, 4, 0, 4, 17, 0);
INSERT INTO `seat` VALUES (548, 4, 0, 4, 16, 0);
INSERT INTO `seat` VALUES (549, 4, 1, 3, 16, 0);
INSERT INTO `seat` VALUES (550, 4, 1, 3, 17, 0);
INSERT INTO `seat` VALUES (551, 4, 1, 3, 18, 0);
INSERT INTO `seat` VALUES (552, 4, 1, 3, 20, 0);
INSERT INTO `seat` VALUES (553, 4, 1, 3, 19, 0);
INSERT INTO `seat` VALUES (554, 4, 1, 3, 21, 0);
INSERT INTO `seat` VALUES (555, 4, 1, 3, 22, 0);
INSERT INTO `seat` VALUES (556, 4, 1, 3, 23, 0);
INSERT INTO `seat` VALUES (557, 4, 1, 3, 24, 0);
INSERT INTO `seat` VALUES (558, 4, 0, 2, 18, 0);
INSERT INTO `seat` VALUES (560, 6, 0, 2, 3, 0);
INSERT INTO `seat` VALUES (561, 6, 0, 2, 4, 0);
INSERT INTO `seat` VALUES (562, 6, 0, 2, 5, 0);
INSERT INTO `seat` VALUES (563, 6, 0, 2, 6, 0);
INSERT INTO `seat` VALUES (564, 6, 0, 2, 7, 0);
INSERT INTO `seat` VALUES (565, 6, 0, 2, 8, 0);
INSERT INTO `seat` VALUES (566, 6, 0, 2, 9, 0);
INSERT INTO `seat` VALUES (567, 6, 0, 2, 10, 0);
INSERT INTO `seat` VALUES (568, 6, 0, 2, 11, 0);
INSERT INTO `seat` VALUES (570, 6, 0, 2, 13, 0);
INSERT INTO `seat` VALUES (571, 6, 0, 2, 14, 0);
INSERT INTO `seat` VALUES (572, 6, 0, 2, 15, 0);
INSERT INTO `seat` VALUES (574, 6, 1, 3, 3, 0);
INSERT INTO `seat` VALUES (575, 6, 1, 3, 4, 0);
INSERT INTO `seat` VALUES (576, 6, 1, 3, 5, 0);
INSERT INTO `seat` VALUES (577, 6, 1, 3, 6, 0);
INSERT INTO `seat` VALUES (578, 6, 1, 3, 7, 0);
INSERT INTO `seat` VALUES (579, 6, 1, 3, 8, 0);
INSERT INTO `seat` VALUES (580, 6, 1, 3, 9, 0);
INSERT INTO `seat` VALUES (581, 6, 1, 3, 10, 0);
INSERT INTO `seat` VALUES (582, 6, 1, 3, 11, 0);
INSERT INTO `seat` VALUES (584, 6, 1, 3, 13, 0);
INSERT INTO `seat` VALUES (585, 6, 1, 3, 14, 0);
INSERT INTO `seat` VALUES (586, 6, 1, 3, 15, 0);
INSERT INTO `seat` VALUES (588, 6, 0, 4, 3, 0);
INSERT INTO `seat` VALUES (589, 6, 0, 4, 4, 0);
INSERT INTO `seat` VALUES (590, 6, 0, 4, 5, 0);
INSERT INTO `seat` VALUES (591, 6, 0, 4, 6, 0);
INSERT INTO `seat` VALUES (592, 6, 0, 4, 7, 0);
INSERT INTO `seat` VALUES (593, 6, 0, 4, 8, 0);
INSERT INTO `seat` VALUES (594, 6, 0, 4, 9, 0);
INSERT INTO `seat` VALUES (595, 6, 0, 4, 10, 0);
INSERT INTO `seat` VALUES (596, 6, 0, 4, 11, 0);
INSERT INTO `seat` VALUES (598, 6, 0, 4, 13, 0);
INSERT INTO `seat` VALUES (599, 6, 0, 4, 14, 0);
INSERT INTO `seat` VALUES (600, 6, 0, 4, 15, 0);
INSERT INTO `seat` VALUES (602, 6, 0, 6, 3, 0);
INSERT INTO `seat` VALUES (603, 6, 0, 6, 4, 0);
INSERT INTO `seat` VALUES (604, 6, 0, 6, 5, 0);
INSERT INTO `seat` VALUES (605, 6, 0, 6, 6, 0);
INSERT INTO `seat` VALUES (606, 6, 0, 6, 7, 0);
INSERT INTO `seat` VALUES (607, 6, 0, 6, 8, 0);
INSERT INTO `seat` VALUES (608, 6, 0, 6, 9, 0);
INSERT INTO `seat` VALUES (609, 6, 0, 6, 11, 0);
INSERT INTO `seat` VALUES (610, 6, 0, 6, 10, 0);
INSERT INTO `seat` VALUES (619, 6, 0, 8, 11, 0);
INSERT INTO `seat` VALUES (620, 6, 0, 8, 10, 0);
INSERT INTO `seat` VALUES (621, 6, 0, 8, 9, 0);
INSERT INTO `seat` VALUES (622, 6, 0, 8, 8, 0);
INSERT INTO `seat` VALUES (623, 6, 0, 8, 7, 0);
INSERT INTO `seat` VALUES (624, 6, 0, 8, 6, 0);
INSERT INTO `seat` VALUES (625, 6, 0, 8, 5, 0);
INSERT INTO `seat` VALUES (626, 6, 0, 8, 4, 0);
INSERT INTO `seat` VALUES (627, 6, 0, 8, 3, 0);
INSERT INTO `seat` VALUES (630, 6, 1, 7, 3, 0);
INSERT INTO `seat` VALUES (631, 6, 1, 7, 4, 0);
INSERT INTO `seat` VALUES (632, 6, 1, 7, 5, 0);
INSERT INTO `seat` VALUES (633, 6, 1, 7, 6, 0);
INSERT INTO `seat` VALUES (634, 6, 1, 7, 7, 0);
INSERT INTO `seat` VALUES (635, 6, 1, 7, 8, 0);
INSERT INTO `seat` VALUES (636, 6, 1, 7, 9, 0);
INSERT INTO `seat` VALUES (637, 6, 1, 7, 10, 0);
INSERT INTO `seat` VALUES (638, 6, 1, 7, 11, 0);
INSERT INTO `seat` VALUES (643, 6, 0, 2, 16, 0);
INSERT INTO `seat` VALUES (644, 6, 0, 2, 17, 0);
INSERT INTO `seat` VALUES (645, 6, 0, 2, 19, 0);
INSERT INTO `seat` VALUES (646, 6, 0, 2, 20, 0);
INSERT INTO `seat` VALUES (647, 6, 0, 2, 21, 0);
INSERT INTO `seat` VALUES (648, 6, 0, 2, 22, 0);
INSERT INTO `seat` VALUES (649, 6, 0, 2, 23, 0);
INSERT INTO `seat` VALUES (652, 6, 0, 4, 23, 0);
INSERT INTO `seat` VALUES (653, 6, 0, 4, 22, 0);
INSERT INTO `seat` VALUES (654, 6, 0, 4, 21, 0);
INSERT INTO `seat` VALUES (655, 6, 0, 4, 20, 0);
INSERT INTO `seat` VALUES (656, 6, 0, 4, 19, 0);
INSERT INTO `seat` VALUES (657, 6, 0, 4, 18, 0);
INSERT INTO `seat` VALUES (658, 6, 0, 4, 17, 0);
INSERT INTO `seat` VALUES (659, 6, 0, 4, 16, 0);
INSERT INTO `seat` VALUES (660, 6, 1, 3, 16, 0);
INSERT INTO `seat` VALUES (661, 6, 1, 3, 17, 0);
INSERT INTO `seat` VALUES (662, 6, 1, 3, 18, 0);
INSERT INTO `seat` VALUES (663, 6, 1, 3, 20, 0);
INSERT INTO `seat` VALUES (664, 6, 1, 3, 19, 0);
INSERT INTO `seat` VALUES (665, 6, 1, 3, 21, 0);
INSERT INTO `seat` VALUES (666, 6, 1, 3, 22, 0);
INSERT INTO `seat` VALUES (667, 6, 1, 3, 23, 0);
INSERT INTO `seat` VALUES (669, 6, 0, 2, 18, 0);
INSERT INTO `seat` VALUES (681, 1, 0, 1, 8, 0);
INSERT INTO `seat` VALUES (682, 1, 0, 1, 10, 0);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `uid` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `type` int NULL DEFAULT 0 COMMENT '0学生1老师2管理员',
  `score` int NULL DEFAULT 100 COMMENT '信用分',
  `number` bigint NULL DEFAULT NULL COMMENT '学号',
  `phone` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '张三', '123456789', 0, 90, 123, 123456);
INSERT INTO `user` VALUES (2, '王老师', '123456789', 1, 100, 999, NULL);
INSERT INTO `user` VALUES (3, '李四', '223456789', 0, 80, 124, 123457);
INSERT INTO `user` VALUES (6, '赵五', '323456789', 0, 100, 126, 123458);
INSERT INTO `user` VALUES (7, '周一', '423456789', 0, 100, 130, 123459);
INSERT INTO `user` VALUES (9, '张六', '523456789', 0, 100, 131, 123460);
INSERT INTO `user` VALUES (17, '王二麻子', '123456', 0, 100, 132, 1234567891);

SET FOREIGN_KEY_CHECKS = 1;
