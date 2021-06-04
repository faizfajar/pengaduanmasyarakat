/*
 Navicat Premium Data Transfer

 Source Server         : LOCAL_MYSQL
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : ukk2021

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 05/06/2021 02:25:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for masyarakat
-- ----------------------------
DROP TABLE IF EXISTS `masyarakat`;
CREATE TABLE `masyarakat`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nik` bigint(11) NOT NULL,
  `fullname` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `masyarakat_username_unique`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of masyarakat
-- ----------------------------
INSERT INTO `masyarakat` VALUES (1, 32424, 'Ai Khodijah', 'ai_khodijah', 'admin123', '98887', 'JPshOWELnZ29gSaAtSrjsmfBr8Gu8F2Ebt6a8yI1RMBSew8sId29Wy2v1pnP', NULL, '2020-02-15 12:19:12');
INSERT INTO `masyarakat` VALUES (2, 1232132, 'Magfirah', 'magfirah', 'admin123', '324324', '7hCDzHsy3vYOr0w3irEizhXgEkzGRGzVhhcvgonDwaprDiW8XX2pJeXoQpDz', '2020-02-15 12:10:38', '2020-02-15 12:10:38');
INSERT INTO `masyarakat` VALUES (3, 21312, 'Muzammil Hasballah', 'muzammil', 'admin123', '32432', 'cBcvZlHYEoRRrI8XG2cRvoGypMGH4NUkvOQcbwPCdVsAPonuh9T1BiLzg33q', '2020-02-15 12:14:38', '2020-02-15 12:14:38');
INSERT INTO `masyarakat` VALUES (4, 324324, 'Evie Effendi', 'evie_effendi', 'admin123', '329392', '7pgcjMxiOCLSUSitAYINX4VzuzF3v9hkI50HcIW4rOnfPGSrAKmVys3QqgTr', '2020-02-17 14:10:16', '2020-02-17 14:10:16');
INSERT INTO `masyarakat` VALUES (5, 123456, 'Saeful', 'epul', 'admin123', '9727767', 'YXTvy9ZrSuRHm09mGVnkj50sPXr0elwioYF4Z3mWoUqGLuD979H90EmBDMlE', '2020-02-21 03:37:20', '2020-02-21 03:37:20');
INSERT INTO `masyarakat` VALUES (6, 84237, 'Masyarakat Biasa', 'masyarakat', 'admin123', '9534532', 'fFnPve8lGrwAU0YQLt83WhxxKjUcRyFTLuhdb0g7F6BksGhMdGhvF535LiG3', '2020-03-17 22:44:29', '2020-03-17 22:44:29');
INSERT INTO `masyarakat` VALUES (7, 1211111111111111, 'faizfajar', 'faiz', '$2y$10$6UweFv/XU5VB6x/Y16UvEOa8a3g5xL3tXm4aM79zF8f.C14pkUWYO', '11111111111', '7LMrdgcxjeYmrO6DH3gIkNj3olrmneUi0iI1INOAe1sfPEQY62yr8ISrESu3', '2021-06-04 12:02:05', '2021-06-04 12:02:05');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2020_02_05_132145_create_petugas_table', 1);
INSERT INTO `migrations` VALUES (2, '2020_02_05_133453_create_masyarakat_table', 1);
INSERT INTO `migrations` VALUES (3, '2020_02_05_133629_create_pengaduan_table', 1);
INSERT INTO `migrations` VALUES (4, '2020_02_05_134123_create_tanggapan_table', 1);

-- ----------------------------
-- Table structure for pengaduan
-- ----------------------------
DROP TABLE IF EXISTS `pengaduan`;
CREATE TABLE `pengaduan`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `masyarakat_id` int(10) UNSIGNED NOT NULL,
  `isi_laporan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `masyarakat_relasi`(`masyarakat_id`) USING BTREE,
  CONSTRAINT `masyarakat_relasi` FOREIGN KEY (`masyarakat_id`) REFERENCES `masyarakat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pengaduan
-- ----------------------------
INSERT INTO `pengaduan` VALUES (1, 3, 'kebakaran sate saat idul adha :(', '88_IMG_20190812_204747.jpg', 'ditanggapi', '2020-03-11 11:05:55', '2020-03-11 11:06:56');
INSERT INTO `pengaduan` VALUES (2, 4, 'hehe admin sehat', '396_IMG_20200311_101201_940.jpg', 'ditanggapi', '2020-03-11 12:13:43', '2020-03-11 12:14:48');
INSERT INTO `pengaduan` VALUES (3, 1, 'Virus COVID-19 sudah nyampe padaherang.... apa yang harus dilakukan masyarakat?', '562_IMG-20200316-WA0002.jpg', 'ditanggapi', '2020-03-16 02:20:39', '2020-03-16 02:23:53');
INSERT INTO `pengaduan` VALUES (4, 6, 'bagaimana cara agar kita selalu sehat?', '441_4.GuardiansoftheGalaxy(2014).mp4_snapshot_01.03.09_[2020.03.12_17.38.46].jpg', 'ditolak', '2020-03-17 22:47:27', '2020-03-17 22:49:31');
INSERT INTO `pengaduan` VALUES (5, 6, 'bagaimana cara agar kita terhindar dari virus korona?', '920_4.GuardiansoftheGalaxy(2014).mp4_snapshot_00.47.36_[2020.03.10_19.00.32].jpg', 'ditanggapi', '2020-03-17 22:51:34', '2020-03-17 22:54:01');
INSERT INTO `pengaduan` VALUES (6, 7, '<p>ini pengaduan</p>', '231_brown-coconut-fruit_99326-42.jpg', 'ditanggapi', '2021-06-04 12:03:00', '2021-06-04 12:18:58');

-- ----------------------------
-- Table structure for petugas
-- ----------------------------
DROP TABLE IF EXISTS `petugas`;
CREATE TABLE `petugas`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `fullname` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp` int(11) NOT NULL,
  `level` enum('admin','petugas') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `nik` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `petugas_username_unique`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of petugas
-- ----------------------------
INSERT INTO `petugas` VALUES (1, 'Ryan Dinul Fatah', 'admin', '$2y$10$xxVzKgHjLNHCkDPWqZsFHua3fsNMh9ghmwiZ3.NEueLFLDCJT0AKq', 12121, 'admin', 'ibFejeHC980nAQr2W5sW8IajRqiT9w5JR93OLowKauKK3D5d7Ja7RgovACWM', '2020-02-12 01:28:24', '2020-02-15 10:56:28', NULL);
INSERT INTO `petugas` VALUES (2, 'Dobleh', 'dobleh_kun', '$2y$10$vJ7yjrsVmGt7OCm4WrXSPuiZQxya7D8kXoN0Ej08kcWNW0GImZQeu', 93489, 'petugas', 'mG9AkXqe4hiaFMnBaqWg60fmFZo8DC7k85sdvkTrsLjxgx0sVA8V4a4QSThK', '2020-02-14 03:34:15', '2020-02-15 10:59:48', NULL);
INSERT INTO `petugas` VALUES (3, 'Jamal', 'petugas1', 'admin123', 453543, 'petugas', 'yJhlAxKDCQMX8gxcYOcR5WPh1eNKJIlB4syWG0cdCUfW5SQWSXxtT8byeJmu', '2020-02-15 08:41:30', '2020-02-15 11:00:02', NULL);
INSERT INTO `petugas` VALUES (5, 'Petugas2', 'hehebuooy', 'admin123', 2311243, 'petugas', NULL, '2020-02-15 11:48:52', '2020-02-15 11:49:13', NULL);
INSERT INTO `petugas` VALUES (6, 'muhammad faiz fajar', 'faizfajar', '$2y$10$XoSxbZC8gnJDkpKQI1WYXunjJABaFl4BdqHV5Y5ToNIKKKyPEqC5G', 7771241, 'admin', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tanggapan
-- ----------------------------
DROP TABLE IF EXISTS `tanggapan`;
CREATE TABLE `tanggapan`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pengaduan_id` int(10) UNSIGNED NOT NULL,
  `petugas_id` int(10) UNSIGNED NOT NULL,
  `isi_tanggapan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `pengaduan_relasi`(`pengaduan_id`) USING BTREE,
  INDEX `petugas_relasi`(`petugas_id`) USING BTREE,
  CONSTRAINT `pengaduan_relasi` FOREIGN KEY (`pengaduan_id`) REFERENCES `pengaduan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `petugas_relasi` FOREIGN KEY (`petugas_id`) REFERENCES `petugas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tanggapan
-- ----------------------------
INSERT INTO `tanggapan` VALUES (1, 1, 1, 'wah mantap tuh gan :)', '2020-03-11 11:06:45', '2020-03-11 11:06:45');
INSERT INTO `tanggapan` VALUES (2, 2, 1, 'sehat walafiat hehe', '2020-03-11 12:14:42', '2020-03-11 12:14:42');
INSERT INTO `tanggapan` VALUES (3, 3, 3, 'tetap tenang, jangan panik.\r\ndan agar kita terhindar dari virus, rajinlah cuci tangan', '2020-03-16 02:23:43', '2020-03-16 02:23:43');
INSERT INTO `tanggapan` VALUES (4, 5, 1, 'dengan cara menerapklan gaya hidup sehat, cuci tangan dan berdo\'alah', '2020-03-17 22:53:47', '2020-03-17 22:53:47');
INSERT INTO `tanggapan` VALUES (5, 6, 1, '<p>test</p>', '2021-06-04 12:18:02', '2021-06-04 12:18:02');
INSERT INTO `tanggapan` VALUES (6, 6, 1, '<p>sudah dibaca</p>', '2021-06-04 12:18:32', '2021-06-04 12:18:32');
INSERT INTO `tanggapan` VALUES (7, 6, 1, '<p>sudah dibaca</p>', '2021-06-04 12:18:56', '2021-06-04 12:18:56');

SET FOREIGN_KEY_CHECKS = 1;
