/*
Navicat MySQL Data Transfer

Source Server         : MySQL_local
Source Server Version : 50516
Source Host           : 127.0.0.1:3306
Source Database       : dbsdit_backup

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2013-06-19 00:50:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for guru
-- ----------------------------
DROP TABLE IF EXISTS `guru`;
CREATE TABLE `guru` (
  `guru_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `guru_nik` varchar(25) DEFAULT NULL,
  `guru_nama` varchar(50) DEFAULT NULL,
  `guru_tmptlahir` varchar(100) DEFAULT NULL,
  `guru_tgllahir` date DEFAULT NULL,
  `guru_alamat` text,
  `guru_telp` varchar(20) DEFAULT NULL,
  `guru_hp` varchar(20) DEFAULT NULL,
  `guru_status` varchar(20) DEFAULT NULL,
  `guru_pendidikan` varchar(50) DEFAULT NULL,
  `guru_thnmasuk` varchar(4) DEFAULT NULL,
  `guru_jabatan` varchar(20) DEFAULT NULL,
  `guru_created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`guru_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guru
-- ----------------------------
INSERT INTO `guru` VALUES ('1', null, 'Mutijab, M.Pd.I', 'Ponorogo', '1968-04-06', 'Rt. 03/RW.01 Dusun Budu Crabak Slahung', null, null, null, 'S-2 2009', '2005', 'Kepala Sekolah', '2013-06-01 20:40:46');
INSERT INTO `guru` VALUES ('2', null, 'Arif Y. Varianto, M.Pd.I', 'Ponorogo', '1974-06-05', 'Jl. Bhayangkara Gg. II No. 15 Ponorogo', null, null, null, 'S-2 2007', '2003', 'Guru ', '2013-06-01 20:40:46');
INSERT INTO `guru` VALUES ('3', null, 'Elvi Purwanti, SP', 'Ponorogo', '1978-04-30', 'RT. 01 / RW. 01 Duri Slahung Ponorogo', null, null, null, 'S-I 2002', '2003', 'Guru ', '2013-06-01 20:40:46');
INSERT INTO `guru` VALUES ('4', null, 'Sri Handayani, S.Pd', 'Ponorogo', '1973-07-20', 'Jl. Pramuka 104 B Mangunsuman Siman Ponorogo', null, null, null, 'S-I 1997', '2003', 'Guru ', '2013-06-01 20:40:46');
INSERT INTO `guru` VALUES ('5', null, 'Komari, S.Ag', 'Ponorogo', '1973-01-21', 'Jl. Mayang  Gandu Mlarak Ponorogo', null, null, null, 'S-I 2001', '2004', 'Guru ', '2013-06-01 20:40:46');
INSERT INTO `guru` VALUES ('6', null, 'Nanang Harianto, S.Pd', 'Ponorogo', '1979-04-11', 'Jl. Parikesit  No. 39 Ponorogo', null, null, null, 'S-I 2003', '2005', 'Guru ', '2013-06-01 20:40:46');
INSERT INTO `guru` VALUES ('7', null, 'Sri Wulandari, S.Th.I', 'Ponorogo', '1981-04-12', 'Jl. Wibisono No. 71 Kepatihan Ponorogo', null, null, null, 'S-I 2004', '2005', 'Guru ', '2013-06-01 20:40:46');
INSERT INTO `guru` VALUES ('8', null, 'Teguh Supriarto, S.Ag', 'Pati', '1973-01-11', 'RT.04/RW.01 Desa Bancar Bungkal Ponorogo', null, null, null, 'S-I 2000', '2005', 'Guru ', '2013-06-01 20:40:46');
INSERT INTO `guru` VALUES ('9', null, 'Reni Setiawati, S.Pd                 ', 'Madiun', '1978-11-16', 'Jl. Nyai Ageng Serang 25 Pinggir Sari Ponorogo', null, null, null, 'S-I 2003', '2005', 'Guru ', '2013-06-01 20:40:46');
INSERT INTO `guru` VALUES ('10', null, 'Iswatun Khasanah, S.Pd', 'Ponorogo', '1982-10-26', 'Wotan Pulung Ponorogo', null, null, null, 'S-I 2005', '2006', 'Guru ', '2013-06-01 20:40:46');
INSERT INTO `guru` VALUES ('11', null, 'Titik Sulistyorini, S.Pd', 'Ponorogo', '1981-11-11', 'RT. 02/RW. 01 Kupuk Bungkal Ponorogo', null, null, null, 'S-I 2005', '2006', 'Guru ', '2013-06-01 20:40:46');
INSERT INTO `guru` VALUES ('12', null, 'Farida Agustina, S.Si', 'Ponorogo', '1981-08-06', 'Jl. Cinde Wilis Kertosari Ponorogo', null, null, null, 'S-I 2005', '2006', 'Guru ', '2013-06-01 20:40:46');
INSERT INTO `guru` VALUES ('13', null, 'Yunita Rahmawati, SP', 'Ponorogo', '1981-06-03', 'Jabung 3 Mlarak Ponorogo', null, null, null, 'S-I 2005', '2006', 'Guru ', '2013-06-01 20:40:46');
INSERT INTO `guru` VALUES ('14', null, 'Vera Candra Amriyanti, S.Psi', 'Jakarta', '1975-02-27', 'Jl. Pangeran Hidayatullah 28 Kauman Ponorogo', null, null, null, 'S-I 1998', '2007', 'Guru ', '2013-06-01 20:40:46');
INSERT INTO `guru` VALUES ('15', null, 'Dwi Purwanto, S.Pd.I', 'Ponorogo', '1981-06-07', 'Jl. Juru Mertani 21 Kadipaten Ponorogo', null, null, null, 'S-I 2005', '2007', 'Guru ', '2013-06-01 20:40:46');
INSERT INTO `guru` VALUES ('16', null, 'Afthon Roby Zulhij', 'Ponorogo', '1988-07-24', 'Wonoketro Jetis Ponorogo', null, null, null, 'S-I 2011', '2007', 'Guru ', '2013-06-01 20:40:46');
INSERT INTO `guru` VALUES ('17', null, 'M. Imam Mustain, S.HI', 'Ponorogo', '1979-04-11', 'Jl. Panjaitan 51 Nglengkong Sampung Ponorogo', null, null, null, 'S-I 2005', '2007', 'Guru ', '2013-06-01 20:40:46');
INSERT INTO `guru` VALUES ('18', null, 'Diana Roositasari, SE', 'Ponorogo', '1984-09-01', 'RT.06/RW.01 Lembah Babadan Ponorogo', null, null, null, 'S-I 2007', '2008', 'Guru', '2013-06-01 20:40:46');
INSERT INTO `guru` VALUES ('19', null, 'Sri Wiji Lestari, S.Pd.I', 'Ponorogo', '1982-05-15', 'Besuki Sambit Ponorogo', null, null, null, 'S-I 2007', '2008', 'Guru', '2013-06-01 20:40:46');
INSERT INTO `guru` VALUES ('20', null, 'Widad Muhsinatin, S.Pd.I', 'Ponorogo', '1983-08-06', 'Jl. Pemanahan 05 RT.01/02 Kadipaten Ponorogo', null, null, null, 'S-I 2006', '2008', 'Guru', '2013-06-01 20:40:46');
INSERT INTO `guru` VALUES ('21', null, 'Ratna Dwi Arista, SE', 'Ponorogo', '1983-08-12', 'Jagalan Jetis Ponorogo', null, null, null, 'S-I 2007', '2008', 'Guru', '2013-06-01 20:40:46');
INSERT INTO `guru` VALUES ('22', null, 'Yedda Arafiyanuri, S.Si', 'Kediri', '1985-01-29', 'Jl. Ternate 27 B Tambakbayan Ponorogo', null, null, null, 'S-I 2007', '2008', 'Guru', '2013-06-01 20:40:46');
INSERT INTO `guru` VALUES ('23', null, 'Atot Samboro, S.Pd', 'Ponorogo', '1984-10-19', 'Jl. KH. Zaenal Arifin 9 A Kauman Ponorogo', null, null, null, 'S-I 2007', '2008', 'Guru', '2013-06-01 20:40:46');
INSERT INTO `guru` VALUES ('24', null, 'Tofik Mujiono, S.HI', 'Purwokerto', '1984-07-21', 'Dusun Gendol Tegalsari Jetis Ponorogo', null, null, null, 'S-I 2007', '2008', 'Guru', '2013-06-01 20:40:46');
INSERT INTO `guru` VALUES ('25', null, 'Rimun Ibnu Wady, S.Ag ', 'Ponorogo', '1975-01-23', 'Desa Plancungan Slahung Ponorogo', null, null, null, 'S-I 2000', '2008', 'Guru', '2013-06-01 20:40:46');
INSERT INTO `guru` VALUES ('26', null, 'Tutik Susiani Dewi, S.Pd', 'Bojonegoro', '1971-10-26', 'Desa Jenangan Kecamatan Jenangan Ponorogo ', null, null, null, 'S-I 1997', '2008', 'Guru', '2013-06-01 20:40:46');
INSERT INTO `guru` VALUES ('27', null, 'Slamet Riyadi, S.S', 'Ponorogo', '1978-09-05', 'Desa Jimbe Jenangan Ponorogo ', null, null, null, 'S-I 2003', '2009', 'Guru', '2013-06-01 20:40:46');
INSERT INTO `guru` VALUES ('28', null, 'Supatoya, S.Pd', 'Ponorogo', '1972-05-20', 'Desa Siman Ponorogo ', null, null, null, 'S-I 2004', '2009', 'Guru', '2013-06-01 20:40:46');
INSERT INTO `guru` VALUES ('29', null, 'Wijiati, S.TP', 'Ponorogo', '1980-01-28', 'Desa Jebeng Slahung Ponorogo ', null, null, null, 'S-I 2004', '2009', 'Guru', '2013-06-01 20:40:46');
INSERT INTO `guru` VALUES ('30', null, 'Siti Juwariyah, S.Pd', 'Ponorogo', '1985-03-25', 'RT. 31 RW. 10 Dusun Tampo Trisono Babadan Ponorogo', null, null, null, 'S-I 2007', '2009', 'Guru', '2013-06-01 20:40:46');
INSERT INTO `guru` VALUES ('31', null, 'Yuli Windarsari, S.Pd', 'Ponorogo', '1986-07-22', 'Jl. Raya Ngebel No. 225 Desa Ngrupit Jenangan Ponorogo', null, null, null, 'S-I 2008', '2010', 'Guru', '2013-06-01 20:40:46');
INSERT INTO `guru` VALUES ('32', null, 'Dewi Mahirotunnisa\', S.Pd.I', 'Ponorogo', '1986-03-21', 'Jl. Menur No. 45 Nambang Rejo Sukorejo Ponorogo', null, null, null, 'S-I 2008', '2010', 'Guru', '2013-06-01 20:40:46');
INSERT INTO `guru` VALUES ('33', null, 'Erma Wati, S.Pd.I', 'Ponorogo', '1985-12-27', 'Jl. Raya Nampan RT. 02 RW. 02 Sukorejo Ponorogo', null, null, null, 'S-I 2007', '2010', 'Guru', '2013-06-01 20:40:46');
INSERT INTO `guru` VALUES ('34', null, 'Iva Riani, S.Pd', 'Ponorogo', '1982-07-11', 'Desa Gombang Slahung Ponorogo ', null, null, null, 'S-I 2005', '2010', 'Guru', '2013-06-01 20:40:46');
INSERT INTO `guru` VALUES ('35', null, 'Yulianita Rahmawati, A.Md', 'Ponorogo', '1985-07-06', 'Jl. Tirto Tejo Cokromenggalan Ponorogo', null, null, null, 'D-III 2008', '2011', 'Guru', '2013-06-01 20:40:46');
INSERT INTO `guru` VALUES ('36', null, 'Sri Wiyanti, S.Pd', 'Pacitan', '1983-11-25', 'Danyang Sukosari Babadan Ponorogo', null, null, null, 'S-I 2006', '2011', 'Guru', '2013-06-01 20:40:46');
INSERT INTO `guru` VALUES ('37', null, 'Anindita Dwi Ratriningrum, S.Pd', 'Ponorogo', '1987-04-08', 'Sekulak RT. 10 Majenang Sukodono Sragen 57263', null, null, null, 'S-I 2009', '2011', 'Guru', '2013-06-01 20:40:46');
INSERT INTO `guru` VALUES ('38', null, 'Suteja, S.Pd', 'Ponorogo', '1956-06-23', 'Perumda Keniten Ponorogo', null, null, null, 'S-I 2004', '2009', 'Guru', '2013-06-01 20:40:46');
INSERT INTO `guru` VALUES ('39', null, 'Muhammad Romdoni, S.Pd', 'Indragiri Hilir', '1978-05-19', 'Desa Nailan Balong Ponorogo ', null, null, null, 'S-I 2003', '2009', 'Guru', '2013-06-01 20:40:46');
INSERT INTO `guru` VALUES ('40', null, 'Mochtar Saphi\'i, S.Pd', 'Magetan', '1968-02-12', '', null, null, null, 'S-I', '2012', 'Guru', '2013-06-01 20:40:46');
INSERT INTO `guru` VALUES ('41', null, 'Inawati Setyarini, S.Pd', 'Ponorogo', '1976-06-16', 'Jl. Anjani Pakunden Ponorogo ', null, null, null, 'S-I 2007', '2012', 'Guru', '2013-06-01 20:40:46');
INSERT INTO `guru` VALUES ('42', null, 'Nanang Rudiantoro,S.Pd', 'Ponorogo', '1974-09-26', 'Tugu Mlarak Ponorogo', null, null, null, 'S-I 2011', '2012', 'Guru', '2013-06-01 20:40:46');
INSERT INTO `guru` VALUES ('43', null, 'Anang Eko Setiawan, S.Pd', 'Ponorogo', '1984-03-03', 'Jl. Onggolono RT. 07 RW. 1 Desa Golan Sukorejo Ponorogo ', null, null, null, 'S-I 2012', '2012', 'Guru', '2013-06-01 20:40:46');
INSERT INTO `guru` VALUES ('44', null, 'Erna Erawati ', 'Ponorogo', '1981-06-02', 'Jl. Rumpuk 97 Kertosari Ponorogo ', null, null, null, 'SMK 2000', '2006', 'Tata Usaha ', '2013-06-01 20:40:46');
INSERT INTO `guru` VALUES ('45', null, 'Ghufron Syakirin', 'Riau', '1986-05-02', 'Pondok Al Hasan Patihan Wetan Ponorogo ', null, null, null, 'SLTA', '2008', 'Penjaga ', '2013-06-01 20:40:46');
INSERT INTO `guru` VALUES ('46', null, 'Mugi Santoso', 'Ponorogo', '1978-07-25', 'Jl. Niken Gandini Singosaren Ponorogo ', null, null, null, 'SMP', '2008', 'Kebersihan', '2013-06-01 20:40:46');
INSERT INTO `guru` VALUES ('47', null, 'Suroto', 'Ponorogo', '1975-06-12', 'Desa Mrican Jenangan Ponorogo ', null, null, null, 'SMK  ', '2009', 'Taman', '2013-06-01 20:40:46');

-- ----------------------------
-- Table structure for kelas
-- ----------------------------
DROP TABLE IF EXISTS `kelas`;
CREATE TABLE `kelas` (
  `kelas_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kelas_tingkat` tinyint(2) unsigned DEFAULT NULL COMMENT 'Tingkat Kelas:\r\n1 = Kelas 1,\r\n2 = Kelas 2,\r\ndst',
  `kelas_nama` varchar(100) DEFAULT NULL,
  `kelas_created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `kelas_created_by` varchar(50) DEFAULT NULL,
  `kelas_updated_date` datetime DEFAULT NULL,
  `kelas_updated_by` varchar(50) DEFAULT NULL,
  `kelas_revised` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`kelas_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kelas
-- ----------------------------
INSERT INTO `kelas` VALUES ('1', '1', 'ABU BAKAR ASH SHIDIQ', '2013-06-02 12:25:15', null, null, null, null);
INSERT INTO `kelas` VALUES ('2', '1', 'UMAR BIN KHATHTHAB', '2013-06-02 14:46:00', null, null, null, null);
INSERT INTO `kelas` VALUES ('3', '1', 'UTSMAN BIN AFFAN', '2013-06-02 14:46:21', null, null, null, null);
INSERT INTO `kelas` VALUES ('4', '1', 'ALI BIN ABI THALIB', '2013-06-02 14:46:35', null, null, null, null);
INSERT INTO `kelas` VALUES ('5', '1', 'ABDUL AZIZ', '2013-06-02 14:46:50', null, null, null, null);
INSERT INTO `kelas` VALUES ('6', '2', 'ABU BAKAR ASH SHIDIQ', '2013-06-09 10:13:47', null, null, null, null);
INSERT INTO `kelas` VALUES ('7', '2', 'UMAR BIN KHATHTHAB', '2013-06-09 10:14:05', null, null, null, null);
INSERT INTO `kelas` VALUES ('8', '2', 'UTSMAN BIN AFFAN', '2013-06-09 10:14:47', null, null, null, null);
INSERT INTO `kelas` VALUES ('9', '2', 'ALI BIN ABI THALIB', '2013-06-09 10:14:57', null, null, null, null);
INSERT INTO `kelas` VALUES ('10', '3', 'ABU BAKAR ASH SHIDIQ', '2013-06-09 10:15:29', null, null, null, null);
INSERT INTO `kelas` VALUES ('11', '3', 'UMAR BIN KHATHTHAB', '2013-06-09 10:15:38', null, null, null, null);
INSERT INTO `kelas` VALUES ('12', '3', 'UTSMAN BIN AFFAN', '2013-06-09 10:15:47', null, null, null, null);
INSERT INTO `kelas` VALUES ('13', '3', 'ALI BIN ABI THALIB', '2013-06-09 10:15:57', null, null, null, null);
INSERT INTO `kelas` VALUES ('14', '4', 'ABU BAKAR ASH SHIDIQ', '2013-06-09 10:17:11', null, null, null, null);
INSERT INTO `kelas` VALUES ('15', '4', 'UMAR BIN KHATHTHAB', '2013-06-09 10:17:20', null, null, null, null);
INSERT INTO `kelas` VALUES ('16', '4', 'UTSMAN BIN AFFAN', '2013-06-09 10:17:34', null, null, null, null);
INSERT INTO `kelas` VALUES ('17', '5', 'ABU BAKAR ASH SHIDIQ', '2013-06-09 10:19:33', null, null, null, null);
INSERT INTO `kelas` VALUES ('18', '5', 'UMAR BIN KHATHTHAB', '2013-06-09 10:19:40', null, null, null, null);
INSERT INTO `kelas` VALUES ('19', '5', 'UTSMAN BIN AFFAN', '2013-06-09 10:19:50', null, null, null, null);
INSERT INTO `kelas` VALUES ('20', '6', 'ABU BAKAR ASH SHIDIQ', '2013-06-09 10:20:54', null, null, null, null);
INSERT INTO `kelas` VALUES ('21', '6', 'UMAR BIN KHATHTHAB', '2013-06-09 10:21:01', null, null, null, null);
INSERT INTO `kelas` VALUES ('22', '6', 'UTSMAN BIN AFFAN', '2013-06-09 10:21:14', null, null, null, null);

-- ----------------------------
-- Table structure for mapel
-- ----------------------------
DROP TABLE IF EXISTS `mapel`;
CREATE TABLE `mapel` (
  `mapel_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mapel_nama` varchar(50) DEFAULT NULL,
  `mapel_created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `mapel_created_by` varchar(50) DEFAULT NULL,
  `mapel_updated_date` datetime DEFAULT NULL,
  `mapel_updated_by` varchar(50) DEFAULT NULL,
  `mapel_revised` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`mapel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mapel
-- ----------------------------
INSERT INTO `mapel` VALUES ('3', 'QH', '2013-06-02 11:25:47', null, null, null, null);
INSERT INTO `mapel` VALUES ('4', 'AA', '2013-06-02 11:25:53', null, null, null, null);
INSERT INTO `mapel` VALUES ('5', 'Fiqh', '2013-06-02 11:26:01', null, null, null, null);
INSERT INTO `mapel` VALUES ('6', 'SN', '2013-06-02 11:26:04', null, null, null, null);
INSERT INTO `mapel` VALUES ('7', 'PKn', '2013-06-02 11:26:13', null, null, null, null);
INSERT INTO `mapel` VALUES ('8', 'Bhs. Indo', '2013-06-02 11:26:23', null, null, null, null);
INSERT INTO `mapel` VALUES ('9', 'Mtk', '2013-06-02 11:26:30', null, null, null, null);
INSERT INTO `mapel` VALUES ('10', 'IPA', '2013-06-02 11:26:39', null, null, null, null);
INSERT INTO `mapel` VALUES ('11', 'IPS', '2013-06-02 11:26:42', null, null, null, null);
INSERT INTO `mapel` VALUES ('12', 'SBK', '2013-06-02 11:26:50', null, null, null, null);
INSERT INTO `mapel` VALUES ('13', 'Penjas Orkes', '2013-06-02 11:27:05', null, null, null, null);
INSERT INTO `mapel` VALUES ('14', 'Bhs. Arab', '2013-06-02 11:27:14', null, null, null, null);
INSERT INTO `mapel` VALUES ('15', 'Bhs. Inggr', '2013-06-02 11:27:26', null, null, null, null);
INSERT INTO `mapel` VALUES ('16', 'Bhs. Jawa', '2013-06-02 11:27:43', null, null, null, null);

-- ----------------------------
-- Table structure for mapel_kelas
-- ----------------------------
DROP TABLE IF EXISTS `mapel_kelas`;
CREATE TABLE `mapel_kelas` (
  `mapelkelas_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kelas_id` int(10) unsigned NOT NULL COMMENT 'Foreign Key dari db.kelas',
  `mapelkelas_thnpelajaran` varchar(9) DEFAULT NULL,
  `mapel_id` int(10) unsigned DEFAULT NULL COMMENT 'Foreign Key dari db.siswa',
  `guru_id` int(10) unsigned DEFAULT NULL,
  `mapelkelas_created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `mapelkelas_created_by` varchar(50) DEFAULT NULL,
  `mapelkelas_updated_date` datetime DEFAULT NULL,
  `mapelkelas_updated_by` varchar(50) DEFAULT NULL,
  `mapelkelas_revised` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`mapelkelas_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mapel_kelas
-- ----------------------------
INSERT INTO `mapel_kelas` VALUES ('2', '1', '2012/2013', '3', '1', '2013-06-17 07:54:01', null, null, null, null);
INSERT INTO `mapel_kelas` VALUES ('3', '1', '2012/2013', '4', '2', '2013-06-18 14:50:31', null, null, null, null);
INSERT INTO `mapel_kelas` VALUES ('4', '1', '2012/2013', '5', '3', '2013-06-18 20:17:58', null, null, null, null);

-- ----------------------------
-- Table structure for nilai_siswa
-- ----------------------------
DROP TABLE IF EXISTS `nilai_siswa`;
CREATE TABLE `nilai_siswa` (
  `nilai_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `siswakelas_id` int(10) unsigned NOT NULL COMMENT 'Foreign Key dari db.siswa_kelas.siswakelas_id',
  `mapel_id` int(10) unsigned NOT NULL COMMENT 'Foreign Key dari db.mapel.mapel_id',
  `nilai_uh1` double DEFAULT NULL,
  `nilai_uh2` double DEFAULT NULL,
  `nilai_uh3` double DEFAULT NULL,
  `nilai_uh_rt2` double DEFAULT NULL,
  `nilai_uts` double DEFAULT NULL,
  `nilai_t1` double DEFAULT NULL,
  `nilai_t2` double DEFAULT NULL,
  `nilai_t3` double DEFAULT NULL,
  `nilai_t_rt2` double DEFAULT NULL,
  `nilai_uas` double DEFAULT NULL,
  `nilai_total` double DEFAULT NULL COMMENT 'hasil dari ((nilai_uh_rt2 + nilai_t_rt2 + nilai_uts + nilai_uas) / 4)',
  `nilai_created_date` timestamp NULL DEFAULT NULL,
  `nilai_created_by` varchar(50) DEFAULT NULL,
  `nilai_updated_date` datetime DEFAULT NULL,
  `nilai_updated_by` varchar(50) DEFAULT NULL,
  `nilai_revised` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`nilai_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nilai_siswa
-- ----------------------------

-- ----------------------------
-- Table structure for siswa
-- ----------------------------
DROP TABLE IF EXISTS `siswa`;
CREATE TABLE `siswa` (
  `siswa_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `siswa_nis` varchar(25) DEFAULT NULL,
  `siswa_nama` varchar(50) DEFAULT NULL,
  `siswa_lp` char(1) DEFAULT NULL COMMENT 'Jenis Kelamin: L/P',
  `siswa_tmptlahir` varchar(100) DEFAULT NULL,
  `siswa_tgllahir` date DEFAULT NULL,
  `siswa_wali_nama` varchar(50) DEFAULT NULL,
  `siswa_agama` varchar(10) DEFAULT NULL,
  `siswa_wali_pekerjaan` varchar(25) DEFAULT NULL,
  `siswa_alamat` text,
  `siswa_telp` varchar(20) DEFAULT NULL,
  `siswa_hp` varchar(20) DEFAULT NULL,
  `siswa_sekolah_asal` varchar(100) DEFAULT NULL,
  `siswa_created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `siswa_created_by` varchar(50) DEFAULT NULL,
  `siswa_updated_date` datetime DEFAULT NULL,
  `siswa_updated_by` varchar(50) DEFAULT NULL,
  `siswa_revised` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`siswa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=685 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of siswa
-- ----------------------------
INSERT INTO `siswa` VALUES ('1', '740', 'Agrin Zayyan Kurnia Putri', 'P', 'Ponorogo', '2006-03-30', 'Rudi Hendarto', 'Islam', 'Wiraswasta', 'Jl. Sigolo-golo 5 Japan Babadan', '085655622529', '085655622529', null, '2013-06-01 21:48:25', null, null, null, null);
INSERT INTO `siswa` VALUES ('2', '744', 'Aiman Abyakta Yahya', 'L', 'Ponorogo', '2005-09-11', 'Agus Subiyakto', 'Islam', 'PNS', 'Jl. Astrokoro Tambakbayan', '081331455324', '081331455324', null, '2013-06-01 21:48:25', null, null, null, null);
INSERT INTO `siswa` VALUES ('3', '752', 'Alvey Dealoveva Zhafira El Haditama', 'P', 'Ponorogo', '2005-11-09', 'Benny S. Haditama', 'Islam', 'Karyawan BNI', 'Jl. Irawan No. 37 Kepatihan', '08123021946', '085259320602', null, '2013-06-01 21:48:25', null, null, null, null);
INSERT INTO `siswa` VALUES ('4', '753', 'Alya Naura Nibras', 'P', 'Madiun', '2005-05-27', 'M. Ali Muchlison', 'Islam', 'Wiraswasta (Batik Lesung)', 'Jl. Suprapto 40 Ponorogo', '08125929007', '(0352) 461007', null, '2013-06-01 21:48:25', null, null, null, null);
INSERT INTO `siswa` VALUES ('5', '758', 'Arna Fadhila', 'P', 'Ponorogo', '2005-07-07', 'Bahrun Nasikin', 'Islam', 'POLRI', 'Jl. Stadion Timur 30 Kertosari', '8121693705', '8121693705', null, '2013-06-01 21:48:25', null, null, null, null);
INSERT INTO `siswa` VALUES ('6', '766', 'Azzizah Nisa Azzahro', 'P', 'Batam', '2005-03-23', 'Nunung Sulistiantoro', 'Islam', 'Wiraswasta', 'Jl. Zaenal Arifin 47 Kauman', '081372429216', '(0352) 485550', null, '2013-06-01 21:48:25', null, null, null, null);
INSERT INTO `siswa` VALUES ('7', '768', 'Byan Annail Burhanudin', 'L', 'Madiun', '2006-05-24', 'Burhanudin', 'Islam', 'Pegawai Koperasi', 'Bangun Sari Rt. 11 Rw. 04 Dolopo Madiun', '81217002091', '81217002091', null, '2013-06-01 21:48:25', null, null, null, null);
INSERT INTO `siswa` VALUES ('8', '771', 'Daffa\' Fairuz Izdihar Al-Alaa', 'L', 'Magetan', '2005-11-14', 'Sulistyo Andarmoyo', 'Islam', 'Dosen Unmuh', 'Perum Grisimai Blok DK11 Ponorogo', '8123408141', '8123408141', null, '2013-06-01 21:48:25', null, null, null, null);
INSERT INTO `siswa` VALUES ('9', '772', 'Dahniar Savina Wafi', 'P', 'Madiun', '2005-09-07', 'Danang Prasetyo', 'Islam', 'Wiraswasta', 'Jl. RA. Kartini 55 Mlilir Dolopo', '81359451888', '81359451888', null, '2013-06-01 21:48:25', null, null, null, null);
INSERT INTO `siswa` VALUES ('10', '773', 'Danica Ozora Himmatana', 'P', 'Ponorogo', '2005-07-05', 'Dedy Sadewo', 'Islam', 'Perawat', 'Jl. Durgandini 2/2 Lembah Babadan', '81234032323', '81234032323', null, '2013-06-01 21:48:25', null, null, null, null);
INSERT INTO `siswa` VALUES ('11', '775', 'Dicko Adi Saputra', 'L', 'Ponorogo', '2005-11-18', 'Eko Wahyudi', 'Islam', '', 'Ds. Muneng Balong Ponorogo', '085856561557', '085856561557', null, '2013-06-01 21:48:25', null, null, null, null);
INSERT INTO `siswa` VALUES ('12', '785', 'Fathi Farhat Ali Syahadah', 'L', 'Ponorogo', '2005-04-27', 'Komari', 'Islam', 'Guru', 'PP Darut Taqwa Jenangan', '81335563089', '81335563089', null, '2013-06-01 21:48:25', null, null, null, null);
INSERT INTO `siswa` VALUES ('13', '787', 'Fhiyo Ariefal Sasmito', 'L', 'Madiun', '2006-01-12', 'Wiyono', 'Islam', 'Polres Madiun', 'Jl. Asempayung 48B Dolopo Madiun', '81259368588', '81259368588', null, '2013-06-01 21:48:25', null, null, null, null);
INSERT INTO `siswa` VALUES ('14', '788', 'Fiddin Afifah Kinanti', 'P', 'Ponorogo', '2006-08-11', 'Adji Suwantono', 'Islam', 'Wiraswasta', 'Jl. Tangkuban Perahu 7', '(0352) 7158858', '(0352) 7158858', null, '2013-06-01 21:48:25', null, null, null, null);
INSERT INTO `siswa` VALUES ('15', '792', 'Gilbran Mahdavikia Raja', 'L', 'Ponorogo', '2006-06-07', 'Kusnin', 'Islam', 'PNS', 'Jl. Barong 42C Ponorogo', '085233548472', '(0352) 488955', null, '2013-06-01 21:48:25', null, null, null, null);
INSERT INTO `siswa` VALUES ('16', '794', 'Hafizh Akmal Rabbani', 'L', 'Surabaya', '2005-11-01', 'Jaka Setiyono', 'Islam', 'PNS', 'Pesona Madusari Siman Ponorogo', '081938777799', '(0352) 487189', null, '2013-06-01 21:48:25', null, null, null, null);
INSERT INTO `siswa` VALUES ('17', '796', 'Hayder Aimar Rasyad', 'L', 'Ponorogo', '2006-04-21', 'Ratno Dwi H.', 'Islam', 'Wiraswasta', 'Jl. Ustd. Sabarudin 18 Josari Jetis', '85649242661', '85649242661', null, '2013-06-01 21:48:25', null, null, null, null);
INSERT INTO `siswa` VALUES ('18', '799', 'Hudaifah Dzaky A. Mahardika', 'L', 'Ponorogo', '2005-08-20', 'Muhammad Imam Bashori', 'Islam', 'Pegawai Bank', 'Ds. Maron Kauman', '85234938960', '85234938960', null, '2013-06-01 21:48:25', null, null, null, null);
INSERT INTO `siswa` VALUES ('19', '800', 'Indira Daniswara', 'P', 'Surakarta', '2005-10-19', 'Hadi Suroso', 'Islam', 'PNS', 'Jl. KH. Zainal Arifin No.6 Kauman', '85257054624', '85257054624', null, '2013-06-01 21:48:25', null, null, null, null);
INSERT INTO `siswa` VALUES ('20', '822', 'Muhammad Faiz Abdurrahman', 'L', 'Bojonegoro', '2006-01-25', 'Edy Wirastho', 'Islam', 'Wiraswasta', 'Sedah Rt. 01 Rw. 01 Jenangan Ponorogo', '081804129758', '(0352) 482742', null, '2013-06-01 21:48:25', null, null, null, null);
INSERT INTO `siswa` VALUES ('21', '830', 'Muhammad Rafi\'', 'L', 'Ponorogo', '2006-02-04', 'Sugito', 'Islam', 'Wiraswasta', 'Jl. Gatotkaca 75 Ponorogo', '81335188070', '81335188070', null, '2013-06-01 21:48:25', null, null, null, null);
INSERT INTO `siswa` VALUES ('22', '835', 'Muslih Eriyad Anugrah Widya P.', 'L', 'Ponorogo', '2005-11-04', 'M. Widya Saputra', 'Islam', 'Wiraswasta', 'Sekayu Gandungkepuh Sukorejo', '081335707098', '08283325445', null, '2013-06-01 21:48:25', null, null, null, null);
INSERT INTO `siswa` VALUES ('23', '843', 'Nishbana Syamsa Siroja', 'P', 'Ponorogo', '2005-09-21', 'Slamet', 'Islam', 'Guru', 'Jl. Jend. A. Yani 37 Pakunden', '08125928394', '(0352) 489837', null, '2013-06-01 21:48:25', null, null, null, null);
INSERT INTO `siswa` VALUES ('24', '854', 'Rafa Huga Nirando', 'L', 'Ponorogo', '2006-02-14', 'Rony Judianto', 'Islam', 'Dokter', 'Krajan Rt.01 Rw.01 Ngrupit Jenangan', '81234225371', '81234225371', null, '2013-06-01 21:48:25', null, null, null, null);
INSERT INTO `siswa` VALUES ('25', '860', 'Riza Fahlevi', 'L', 'Ponorogo', '2004-12-15', 'Joko Priono', 'Islam', 'Petani', 'Josari Jetis Ponorogo', '8127692577', '8127692577', null, '2013-06-01 21:48:25', null, null, null, null);
INSERT INTO `siswa` VALUES ('26', '861', 'Royan Verdiansyah', 'L', 'Ponorogo', '2006-02-16', 'Moch. Aksanul', 'Islam', '', 'Jl. Letjend Suprapto 79 Ponorogo', '(0352) 486848', '08125919635', null, '2013-06-01 21:48:25', null, null, null, null);
INSERT INTO `siswa` VALUES ('27', '864', 'Satrio Bangun Putra Pratama', 'L', 'Blitar', '2005-02-07', 'David Surya P.', 'Islam', 'TKI', 'Jl. Sukowati Keniten Ponorogo', '82141599090', '82141599090', null, '2013-06-01 21:48:25', null, null, null, null);
INSERT INTO `siswa` VALUES ('28', '871', 'Yuma Eram Nurhaibah', 'L', 'Ponorogo', '2005-09-29', 'Nuroso', 'Islam', 'Wiraswasta', 'Rt. 02 Rw.02 Jl. Tanjung Patihan Kidul Siman', '081359714878', '(0352) 486876', null, '2013-06-01 21:48:25', null, null, null, null);
INSERT INTO `siswa` VALUES ('29', '736', 'Abdullah Fadly Dzul Qornain', 'L', 'Ponorogo', '2006-05-21', 'Bagus Kurnia Endro P.', 'Islam ', 'Swasta', 'Krajan Rt.02 Rw. 01 Jenangan Ponorogo', '81335943643', '81335943643', null, '2013-06-09 10:28:09', null, null, null, null);
INSERT INTO `siswa` VALUES ('30', '738', 'Adib Barliyin Abdurrahim', 'L', 'Ponorogo', '2006-08-21', 'Masun', 'Islam ', 'Dinas Pertanian ', 'Perum Bukit Asri II No.27 Ronowijayan Siman', '8113317997', '8113317997', null, '2013-06-09 10:28:09', null, null, null, null);
INSERT INTO `siswa` VALUES ('31', '751', 'Almas Azzah Tsabitah ', 'P', 'Ponorogo', '2005-03-26', 'Puguh Ibnu Nugroho', 'Islam ', '', 'RT. 1 RW. 4 Krajan Selur Ngrayun Ponorogo', '', '', null, '2013-06-09 10:28:09', null, null, null, null);
INSERT INTO `siswa` VALUES ('32', '756', 'Anindya Salwa Naila Subekti', 'P', 'Bulukumba', '2005-07-29', 'Joko Purnomo', 'Islam ', 'PNS', 'Jl. Arif Rahman Hakim Rt. 01 Rw. 01', '81359018123', '81359018123', null, '2013-06-09 10:28:09', null, null, null, null);
INSERT INTO `siswa` VALUES ('33', '760', 'Atha Yafi Al Mahirah', 'P', 'Ponorogo', '2005-08-31', 'Yudi Sujianto', 'Islam ', 'PNS', 'Perum Grisimai D. E. 05 Siman Ponorogo', '81335271654', '81335271654', null, '2013-06-09 10:28:09', null, null, null, null);
INSERT INTO `siswa` VALUES ('34', '762', 'Ayyasy Ja\'alhaq', 'L', 'Ponorogo', '2005-06-06', 'Moh. Ali Ridho', 'Islam ', 'Dosen UNS', 'Jl. Widoro Jebeng Slahung', '87858014102', '87858014102', null, '2013-06-09 10:28:09', null, null, null, null);
INSERT INTO `siswa` VALUES ('35', '778', 'Divana Syifa', 'P', 'Ponorogo', '2005-12-26', 'Sugeng Haryono', 'Islam ', 'Wiraswasta', 'Perumda 126 Keniten Ponorogo', '81556484729', '81556484729', null, '2013-06-09 10:28:09', null, null, null, null);
INSERT INTO `siswa` VALUES ('36', '779', 'Elvira Raihan Bilqis', 'P', 'Ponorogo', '2006-01-30', 'Firman Andrian', 'Islam ', 'Swasta', 'Ngrupit Jenangan', '81335420082', '81335420082', null, '2013-06-09 10:28:09', null, null, null, null);
INSERT INTO `siswa` VALUES ('37', '781', 'Fadhilah Krisna Aji', 'L', 'Ponorogo', '2005-12-08', 'Harid Dadam I', 'Islam ', 'Bangunan', 'Kertosari Indah M.13 Ponorogo', '81335254834', '81335254834', null, '2013-06-09 10:28:09', null, null, null, null);
INSERT INTO `siswa` VALUES ('38', '783', 'Fairuz Suha Zahida', 'P', 'Ponorogo', '2006-04-27', 'Wajib Muslim S.', 'Islam ', 'Perawat', 'Rt. 02 Rw. 02 Sidorejo', '85230088650', '85230088650', null, '2013-06-09 10:28:09', null, null, null, null);
INSERT INTO `siswa` VALUES ('39', '786', 'Fauzan Adi Nugroho', 'L', 'Ponorogo', '2006-05-12', 'Romli', 'Islam ', 'Penggilingan Padi', 'Rt.01 Rw.01 Ploso Jenar', '081234254445', '081235225758', null, '2013-06-09 10:28:09', null, null, null, null);
INSERT INTO `siswa` VALUES ('40', '791', 'Gesang Raka Nusantara', 'L', 'Ponorogo', '2006-05-25', 'Rianto', 'Islam ', 'Perawat', 'Dukuh Ngledok 03/02 Mlarak Ponorogo', '81359438424', '81359438424', null, '2013-06-09 10:28:09', null, null, null, null);
INSERT INTO `siswa` VALUES ('41', '797', 'Hernadya Talitha Karen', 'P', 'Ponorogo', '2005-05-06', 'Heru Sumarno', 'Islam ', 'Polsek ', ' RT. 01 RT. 02 Josari Jetis Ponorogo', '08123436554', '(0352) 311115', null, '2013-06-09 10:28:09', null, null, null, null);
INSERT INTO `siswa` VALUES ('42', '805', 'M. Dhiya\'uddin Abdul Fatah', 'L', 'Ponorogo', '2005-04-14', 'Rahmat Sulaeman', 'Islam ', 'Guru', 'PPWS Ngabar Siman Ponorogo', '8125971731', '8125971731', null, '2013-06-09 10:28:09', null, null, null, null);
INSERT INTO `siswa` VALUES ('43', '810', 'Maula Nacha', 'L', 'Ponorogo', '2005-04-23', 'Budi Istiyar', 'Islam ', 'PNS', 'Jl. MT. Haryono Gg.IV Beduri Ponorogo', '81335034525', '81335034525', null, '2013-06-09 10:28:09', null, null, null, null);
INSERT INTO `siswa` VALUES ('44', '812', 'Mazaya Zacharya Marryos', 'L', 'Ponorogo', '2006-01-29', 'Rusmani', 'Islam ', 'Swasta', 'Krajan Rt.02 Rw.02 Ngrupit Jenangan', '085235117277', '(0352) 531294', null, '2013-06-09 10:28:09', null, null, null, null);
INSERT INTO `siswa` VALUES ('45', '814', 'Mohammad Irvanudin', 'L', 'Ponorogo', '2006-03-09', 'Jemirin', 'Islam ', 'Tani', 'Jl. Sri Rejeki 15 Karangmojo Balong', '-', '-', null, '2013-06-09 10:28:09', null, null, null, null);
INSERT INTO `siswa` VALUES ('46', '829', 'Muhammad Nazzal Altaf Zaky', 'L', 'Ponorogo', '2006-06-06', 'Zaki Ichwani', 'Islam ', 'PNS', 'Ds. Polorejo Babadan Ponorogo', '081335133031', '(0352) 488716', null, '2013-06-09 10:28:09', null, null, null, null);
INSERT INTO `siswa` VALUES ('47', '833', 'Muhammad Yusuf Yasjudan', 'L', 'Ponorogo', '2006-02-26', 'Moh. Agus Yunus', 'Islam ', 'Guru', 'Jl. Barong No. 75 Kertosari', '081335170139', '(0352) 488489', null, '2013-06-09 10:28:09', null, null, null, null);
INSERT INTO `siswa` VALUES ('48', '836', 'Nadhifa Celesta Andraya', 'P', 'Ponorogo', '2006-01-16', 'Jayadi', 'Islam ', 'Guru', 'Perum Pesona Madusari Siman', '8125966364', '8125966364', null, '2013-06-09 10:28:09', null, null, null, null);
INSERT INTO `siswa` VALUES ('49', '838', 'Najwa Nadlifah Sartono', 'P', 'Ponorogo', '2005-07-22', 'Rokib Sartono', 'Islam ', 'Polsek ', 'Rt. 02 Rw.02 Karang Lokidul Jambon', '81359502422', '81359502422', null, '2013-06-09 10:28:09', null, null, null, null);
INSERT INTO `siswa` VALUES ('50', '850', 'Qalifa Habib Naufaqih', 'L', 'Ponorogo', '2005-07-25', 'Supriyanto', 'Islam ', 'Guru', 'Jl. Keramat 14 Ngunut', '85235239647', '85235239647', null, '2013-06-09 10:28:09', null, null, null, null);
INSERT INTO `siswa` VALUES ('51', '851', 'Qonitah Zahidah ', 'P', 'Ponorogo', '2006-04-13', 'Eddy Kurniawan', 'Islam ', 'BPS', 'Jl. Parang Parung No. 5 Kadipaten', '', '', null, '2013-06-09 10:28:09', null, null, null, null);
INSERT INTO `siswa` VALUES ('52', '858', 'Rhafena Sherlynda Oktaviana', 'P', 'Ponorogo', '2005-10-30', 'Rhahenry Fadiyanto', 'Islam ', 'Sopir', 'Rt. 02 Rw. 01 Wonoketro Jetis Ponorogo', '81335549218', '81335549218', null, '2013-06-09 10:28:09', null, null, null, null);
INSERT INTO `siswa` VALUES ('53', '859', 'Rijal Difaul Haq', 'L', 'Ponorogo', '2005-12-11', 'Muji\'an', 'Islam ', 'POLRI', 'Kunti Bungkal', '87758637789', '87758637789', null, '2013-06-09 10:28:09', null, null, null, null);
INSERT INTO `siswa` VALUES ('54', '865', 'Satryagung Danarjati', 'L', 'Ponorogo', '2005-08-18', 'Gunaryoko', 'Islam ', 'Guru', 'Jl. Batoro Katong V/04 Ponorogo', '081335706434', '(0352) 484478', null, '2013-06-09 10:28:09', null, null, null, null);
INSERT INTO `siswa` VALUES ('55', '866', 'Septian Alfandi Sukarno', 'L', 'Ponorogo', '2005-12-03', 'Sukarno', 'Islam ', 'Wiraswasta', 'Jl. Soekarno Hatta No. 13', '82132790656', '82132790656', null, '2013-06-09 10:28:09', null, null, null, null);
INSERT INTO `siswa` VALUES ('56', '869', 'Vanessa Agatha Sparingga', 'P', 'Ponorogo', '2006-07-05', 'Ringga Dwi Heri Irawan', 'Islam ', 'PNS', 'Rt.01 Rw.01 Goran Bungkal Ponorogo', '81335661323', '81335661323', null, '2013-06-09 10:28:09', null, null, null, null);
INSERT INTO `siswa` VALUES ('60', '735', 'Abdul Azis Al Farisi', 'L', 'Madiun', '2006-06-23', 'Tarmizi', 'Islam', 'Wiraswasta', 'Jl. BPT Sumadi E.13 Perumda Ponorogo', '08125930069', '(0352) 488110', null, '2013-06-09 10:36:17', null, null, null, null);
INSERT INTO `siswa` VALUES ('61', '739', 'Afrian Ahmad Zulfikri', 'L', 'Ponorogo', '2005-04-11', 'Sukirno', 'Islam', 'Wiraswasta', 'Jl. Singolemboro 02 Siman', '8125905993', '8125905993', null, '2013-06-09 10:36:17', null, null, null, null);
INSERT INTO `siswa` VALUES ('62', '741', 'Ahmad Asrul Fikri', 'L', 'Ponorogo', '2005-07-20', 'Drs. Imam Ghozali', 'Islam', 'Guru', 'Jl. Ir. Juanda VI 18 Mayak', '81335279066', '81335279066', null, '2013-06-09 10:36:17', null, null, null, null);
INSERT INTO `siswa` VALUES ('63', '748', 'Alfian Sharma Kalimanjaro', 'L', 'Ponorogo', '2005-07-02', 'Erwin Yudi P.', 'Islam', 'Dosen STAIN', 'Jl. Imam Bonjol Gg.V/04 Brotonegaran', '81335874240', '81335874240', null, '2013-06-09 10:36:17', null, null, null, null);
INSERT INTO `siswa` VALUES ('64', '750', 'Aliffah Fiqri Faidah', 'P', 'Ponorogo', '2005-12-04', 'Lugito', 'Islam', 'Penggilingan Padi', 'Sidomulyo Balong Ponorogo', '08123434324', '(0352) 372464', null, '2013-06-09 10:36:17', null, null, null, null);
INSERT INTO `siswa` VALUES ('65', '764', 'Azzahra Tsabitah Zaimatun Nisa', 'P', 'Ponorogo', '2005-09-29', 'Roshid', 'Islam', 'PNS (Polres Ponorogo)', 'Jl. Kalimantan No. 18A Mangkujayan', '81335702693', '81335702693', null, '2013-06-09 10:36:17', null, null, null, null);
INSERT INTO `siswa` VALUES ('66', '765', 'Azzedin Alaia Tasbaeni', 'L', 'Ponorogo', '2005-04-06', 'Achmad Tasraeni', 'Islam', 'BUMN', 'Perum Pesona Madusari Jl. Madusari I/11', '085234658828', '081230081533', null, '2013-06-09 10:36:17', null, null, null, null);
INSERT INTO `siswa` VALUES ('67', '770', 'Cheryl Adinda Khalila', 'P', 'Jakarta', '2005-03-12', 'Suhardi', 'Islam', 'Puskesmas ', 'Dkh. Guyangan Tugurejo Slahung', '81234129980', '81234129980', null, '2013-06-09 10:36:17', null, null, null, null);
INSERT INTO `siswa` VALUES ('68', '774', 'Daniel Labib Arifin', 'L', 'Madiun', '2006-02-20', 'Zainal Arifin', 'Islam', 'Wiraswasta', 'Rt 06 Rw 03 Mlilir Dolopo', '85735127141', '85735127141', null, '2013-06-09 10:36:17', null, null, null, null);
INSERT INTO `siswa` VALUES ('69', '777', 'Dinda Putri Pramesti', 'P', 'Kediri', '2005-04-01', 'Ovy Kristianto', 'Islam', 'Wiraswasta', 'Jl. Argopuro 25 Ponorogo', '85645479349', '85645479349', null, '2013-06-09 10:36:17', null, null, null, null);
INSERT INTO `siswa` VALUES ('70', '789', 'Firdausa Cahya Putri', 'P', 'Ponorogo', '2005-09-17', 'Nanang Suryantoro', 'Islam', 'Wiraswasta', 'Jl. Seram 43 Ponorogo', '81234226955', '81234226955', null, '2013-06-09 10:36:17', null, null, null, null);
INSERT INTO `siswa` VALUES ('71', '790', 'Fitria Jauharotul Mustafidah', 'P', 'Madiun', '2005-11-10', 'Irvan Juhaemy', 'Islam', 'TU SMA 3', 'Jl. Bangau Beduri Ponorogo', '85235191975', '85235191975', null, '2013-06-09 10:36:17', null, null, null, null);
INSERT INTO `siswa` VALUES ('72', '803', 'Jihadian Edgar Prasetyo', 'L', 'Ponorogo', '2005-07-29', 'Ibnu Prasetyo', 'Islam', 'Karyawan', 'Jl. Madusari Raya No.11 Perum Madusari', '8123407510', '8123407510', null, '2013-06-09 10:36:17', null, null, null, null);
INSERT INTO `siswa` VALUES ('73', '808', 'Maritza Bunga Santosa', 'P', 'Ponorogo', '2005-09-17', 'Yusuf Budi Santoso', 'Islam', 'Wiraswasta', 'Jl. Syuhada No. 87 Ngunut Babadan', '81234228233', '81234228233', null, '2013-06-09 10:36:17', null, null, null, null);
INSERT INTO `siswa` VALUES ('74', '809', 'Maritza Tahira Salsabila', 'P', 'Ponorogo', '2006-03-31', 'Mulyono', 'Islam', 'Wiraswasta', 'Jl. AR. Hakim No. 101 Keniten', '081234433429', '(0352) 461705', null, '2013-06-09 10:36:17', null, null, null, null);
INSERT INTO `siswa` VALUES ('75', '811', 'Maulidya Na\'ima Zukhrufa Arzaqina', 'P', 'Ponorogo', '2006-04-27', 'Ahmad Choirul R.', 'Islam', 'Dosen STAIN', 'Perum Grisimai D. G. 02 Ponorogo', '085853860985', '(0352) 7111433', null, '2013-06-09 10:36:17', null, null, null, null);
INSERT INTO `siswa` VALUES ('76', '816', 'Muhammad  Faza Fabian Abdillah', 'L', 'Ponorogo', '2005-05-23', 'Iman Muslihin', 'Islam', 'PNS', 'Perum Pepabri Jl. Rambutan A.4 Keniten', '8125905020', '8125905020', null, '2013-06-09 10:36:17', null, null, null, null);
INSERT INTO `siswa` VALUES ('77', '817', 'Muhammad Afif Fathoni', 'L', 'Ponorogo', '2006-03-15', 'Choirul Miftachul A\'la', 'Islam', 'Kontraktor', 'Jl. Soekarno Hatta 62 Ponorogo', '081335139454', '(0352) 481377', null, '2013-06-09 10:36:17', null, null, null, null);
INSERT INTO `siswa` VALUES ('78', '818', 'Muhammad Akbar Arrafi', 'L', 'Ponorogo', '0000-00-00', 'Cipto Wiyoto', 'Islam', 'Mandor Kintamani', 'Jl. Ki Ageng Selo No.15 Setono Ponorogo', '081233047433', '(0352) 486959', null, '2013-06-09 10:36:17', null, null, null, null);
INSERT INTO `siswa` VALUES ('79', '824', 'Muhammad Fathan Samdya Adabi', 'L', 'Madiun', '2005-06-23', 'Tatit Mudji Widodo', 'Islam', '', 'Jl. Edelweis No.18 Pesona Kertosari', '81335675257', '81335675257', null, '2013-06-09 10:36:17', null, null, null, null);
INSERT INTO `siswa` VALUES ('80', '825', 'Muhammad Fredora Akhsanul Mu\'min', 'L', 'Ponorogo', '2006-02-22', 'Ahmad Zaelani', 'Islam', 'TKI', 'Ds. Sumber Agung Balong', '8195530950', '8195530950', null, '2013-06-09 10:36:17', null, null, null, null);
INSERT INTO `siswa` VALUES ('81', '828', 'Muhammad Nauval Maulana', 'L', 'Ponorogo', '2005-09-23', 'Surono', 'Islam', 'PNS', 'Perum Sidomulyo C4 Babadan', '81234082328', '81234082328', null, '2013-06-09 10:36:17', null, null, null, null);
INSERT INTO `siswa` VALUES ('82', '841', 'Naufal Hafizh Muhana', 'L', 'Ponorogo', '2005-07-07', 'Moh. Nibhan', 'Islam', '', 'Jl Prahasto No. 15 Ponorogo', '85233639998', '85233639998', null, '2013-06-09 10:36:17', null, null, null, null);
INSERT INTO `siswa` VALUES ('83', '848', 'Prya Abiyyu Waskito', 'L', 'Ponorogo', '2005-08-18', 'Suharno', 'Islam', 'Wiraswasta', 'Pesona Kertosari No. 51', '85334244239', '85334244239', null, '2013-06-09 10:36:17', null, null, null, null);
INSERT INTO `siswa` VALUES ('84', '857', 'Resinta Aini Zakiyah', 'P', 'Ponorogo', '2006-04-30', 'Suratno', 'Islam', 'Wiraswasta', 'Jl. Ahmad Yani 153 Ponorogo', '81234203795', '81234203795', null, '2013-06-09 10:36:17', null, null, null, null);
INSERT INTO `siswa` VALUES ('85', '862', 'Safira Az Zahroh', 'P', 'Ponorogo', '2005-11-01', 'Jalal Ahmadi', 'Islam', 'Guru', 'Ds. Sawuh Rt.01 Kec. Siman', '081335628950', '(0352) 463557', null, '2013-06-09 10:36:17', null, null, null, null);
INSERT INTO `siswa` VALUES ('86', '873', 'Zeliaprilia Azura Maida Salwa', 'P', 'Ponorogo', '2006-04-01', 'Dwi Haryanto', 'Islam', 'Wiraswasta', 'Jl. Kenanga Gang 1 No 14', '85731750229', '85731750229', null, '2013-06-09 10:36:17', null, null, null, null);
INSERT INTO `siswa` VALUES ('91', '742', 'Ahmad Fajrinafi Wahyu Fardiansyah', 'L', 'Ponorogo', '2006-02-23', 'Suliadi', 'Islam', 'Wiraswasta', 'Jl. Soekarno Hatta VI/12 Ponorogo', '081335250249', '(0352) 483563', null, '2013-06-09 10:38:49', null, null, null, null);
INSERT INTO `siswa` VALUES ('92', '743', 'Ahmad Sayyid Sulaiman', 'L', 'Blitar', '2005-11-14', 'Ahmad Zamroni', 'Islam', 'Swasta', 'Bajang Mlarak Ponorogo', '8123425303', '8123425303', null, '2013-06-09 10:38:49', null, null, null, null);
INSERT INTO `siswa` VALUES ('93', '746', 'Aisyah Wardatul Firdaus', 'P', 'Ponorogo', '2005-07-01', 'Abdul Munir', 'Islam', 'Guru', 'Jl. Manggar No. 5 Purbosuman', '8123479367', '8123479367', null, '2013-06-09 10:38:49', null, null, null, null);
INSERT INTO `siswa` VALUES ('94', '755', 'Andinno Bintang Izzaturrachman', 'L', 'Ponorogo', '2005-12-15', 'Qoidin Dwi Ana', 'Islam', 'PJTKI', 'Ds. Maguwan Sambit Ponorogo', '081335569417', '081335136161', null, '2013-06-09 10:38:49', null, null, null, null);
INSERT INTO `siswa` VALUES ('95', '757', 'Ardhiya Silfania Putri', 'P', 'Ponorogo', '2006-05-27', 'Fidhian Alim K.', 'Islam', 'PNS', 'Jl. Sultan Agung No. 80 Ponorogo', '81335553222', '81335553222', null, '2013-06-09 10:38:49', null, null, null, null);
INSERT INTO `siswa` VALUES ('96', '763', 'Azzahra Stephanie Zerlinda', 'P', 'Magetan ', '2005-10-18', 'Joko Purnomo', 'Islam', 'PNS', 'JL. Balekambang Babadan', '8123443736', '8123443736', null, '2013-06-09 10:38:49', null, null, null, null);
INSERT INTO `siswa` VALUES ('97', '767', 'Bahrul Ilmi Nur Hakim', 'L', 'Ponorogo', '2005-10-01', 'Sucipto', 'Islam', 'PNS', 'Jl. Soekarno Hatta No. 51F ', '81335552068', '81335552068', null, '2013-06-09 10:38:49', null, null, null, null);
INSERT INTO `siswa` VALUES ('98', '776', 'Dina Nurul Ilmi', 'P', 'Ponorogo', '2006-03-09', 'Ahridi', 'Islam', 'Guru', 'Jl. Kertoyudo Panjeng Jenangan Ponorogo', '81335720884', '81335720884', null, '2013-06-09 10:38:49', null, null, null, null);
INSERT INTO `siswa` VALUES ('99', '780', 'Fabiano Kurnia Indrawan', 'L', 'Ponorogo', '2005-08-23', 'Irwanto', 'Islam', 'Optik Omega Jaya', 'Jl. Kilelolono 50 Setono Ponorogo', '81335144669', '81335144669', null, '2013-06-09 10:38:49', null, null, null, null);
INSERT INTO `siswa` VALUES ('100', '782', 'Fahma Zoeyya Vella Aqiya', 'P', 'Ponorogo', '2006-05-16', 'Zaenal Arif F.', 'Islam', 'Wirausaha Krupuk ', 'Jl. Jawa Gg. IV No. 20 Mangkujayan', '081259791988', '081335653175', null, '2013-06-09 10:38:49', null, null, null, null);
INSERT INTO `siswa` VALUES ('101', '784', 'Farrel Radityatama', 'L', 'Ponorogo', '2005-04-01', 'Sutris Setiawan', 'Islam', 'PNS', 'Jl. Argopuro 25 Ponorogo', '81335450649', '81335450649', null, '2013-06-09 10:38:49', null, null, null, null);
INSERT INTO `siswa` VALUES ('102', '793', 'Hafidz Dhian Atmaja', 'L', 'Madiun', '2005-10-26', 'Muhrodhi', 'Islam', 'PNS', 'Jl. Letjen Suprapto III Ngembag', '8123426254', '8123426254', null, '2013-06-09 10:38:49', null, null, null, null);
INSERT INTO `siswa` VALUES ('103', '801', 'Irene Kholifah K.', 'P', 'Ponorogo', '2006-04-19', 'Bambang Eko', 'Islam', 'Sinar Mas Finance', 'Jl. Parikesit Gg. 1/10 Kepatihan', '81914855000', '81914855000', null, '2013-06-09 10:38:49', null, null, null, null);
INSERT INTO `siswa` VALUES ('104', '802', 'Isymatus Syahidah Nabilatul Karimah', 'P', 'Ponorogo', '2006-03-27', 'Kresno Dwi Atmoko', 'Islam', 'Percetakan ', 'Jl. Kasat Satsuit Tubun 21 Ponorogo', '85235002764', '85235002764', null, '2013-06-09 10:38:49', null, null, null, null);
INSERT INTO `siswa` VALUES ('105', '804', 'Kinanti R Rahadatul \'Aisy', 'P', 'Ponorogo', '2005-12-15', 'Budi Ali Rohmat', 'Islam', 'TNI AU', 'Jl. Parang Kembang No. 60 Ponorogo', '085856065327', '(0352) 487508', null, '2013-06-09 10:38:49', null, null, null, null);
INSERT INTO `siswa` VALUES ('106', '813', 'Moh. Ilham Ramadhani', 'L', 'Ponorogo', '2005-10-22', 'Tukirin', 'Islam', 'PNS', 'Jl. Diponegoro 15 Bediwetan Bungkal', '81335623830', '81335623830', null, '2013-06-09 10:38:49', null, null, null, null);
INSERT INTO `siswa` VALUES ('107', '815', 'Muhamad A\'shif Prawisnu', 'L', 'Ponorogo', '2005-07-17', 'Djody Priambodo', 'Islam', 'Dinas Pen. Daerah ', 'KPR BTN Singosaren Blok C.14', '81235512342', '81235512342', null, '2013-06-09 10:38:49', null, null, null, null);
INSERT INTO `siswa` VALUES ('108', '819', 'Muhammad Althoffaroz Bahrain', 'L', 'Ponorogo', '2005-09-22', 'M. Sardino Yuana', 'Islam', 'PNS', 'Jl. Jawa Perum Mangkujayan Regency 14', '08125985222', '(0352) 7190666', null, '2013-06-09 10:38:49', null, null, null, null);
INSERT INTO `siswa` VALUES ('109', '820', 'Muhammad Aric Samudro Wibowo', 'L', 'Ponorogo', '2005-09-05', 'Robianto', 'Islam', 'TNI AL', 'Ds. Truneng Slahung Ponorogo', '081335111536', '(0352) 371736', null, '2013-06-09 10:38:49', null, null, null, null);
INSERT INTO `siswa` VALUES ('110', '821', 'Muhammad \'Azza Iqbal Firdaus', 'L', 'Ponorogo', '2005-07-16', 'Handaka', 'Islam', 'RSU Diponegoro', 'Jl. Lawu 92 A Nologaten Ponorogo', '8123446416', '8123446416', null, '2013-06-09 10:38:49', null, null, null, null);
INSERT INTO `siswa` VALUES ('111', '827', 'Muhammad Keysha Putra Nugroho', 'L', 'Ponorogo', '2006-05-30', 'Wawan Eko Nugroho', 'Islam', 'Wiraswasta', 'Ds. Josari Jetis Ponorogo', '8174143624', '8174143624', null, '2013-06-09 10:38:49', null, null, null, null);
INSERT INTO `siswa` VALUES ('112', '837', 'Nafis Muhammad Sulthon', 'L', 'Ponorogo', '2006-03-25', 'Sarbianto', 'Islam', 'RSUD / ICU', 'Gombang Slahung Ponorogo', '081335570908', '081335252341', null, '2013-06-09 10:38:49', null, null, null, null);
INSERT INTO `siswa` VALUES ('113', '839', 'Nastiti Wima Al Husna', 'P', 'Ponorogo', '2005-05-23', 'Sunarno Wibowo', 'Islam', 'Guru', 'Simo Slahung Ponorogo', '85228545710', '85228545710', null, '2013-06-09 10:38:49', null, null, null, null);
INSERT INTO `siswa` VALUES ('114', '853', 'Raditya Tata Pramudyo', 'L', 'Trenggalek', '2005-09-22', 'Yonas Pramudyo', 'Islam', 'Guru', 'Jl. Puspo warno Mangkujayan', '81335339073', '81335339073', null, '2013-06-09 10:38:49', null, null, null, null);
INSERT INTO `siswa` VALUES ('115', '855', 'Rahmatullah Hidayat', 'L', 'Ponorogo', '2005-09-17', 'Fachri Hidayat', 'Islam', 'Guru', 'Jl. Biliton No. 24A Ponorogo', '081556447621', '085746612929', null, '2013-06-09 10:38:49', null, null, null, null);
INSERT INTO `siswa` VALUES ('116', '856', 'Regina Rose Angie Putri', 'P', 'Ponorogo', '2005-09-07', 'Arifudin', 'Islam', 'Polres ', 'Jl. Baran Ds.Gupolo Babadab Ponorogo', '081335139976', '(0352) 485365', null, '2013-06-09 10:38:49', null, null, null, null);
INSERT INTO `siswa` VALUES ('117', '870', 'Yiyin Wahidatul Ma\'rifah Wida Listian', 'P', 'Ponorogo', '2005-11-06', 'Udin Sulistianto', 'Islam', 'BRI Syariah', 'Jl. Soekarno Hatta Slahung', '81335335869', '81335335869', null, '2013-06-09 10:38:49', null, null, null, null);
INSERT INTO `siswa` VALUES ('118', '872', 'Zaula Dzikrona', 'P', 'Situbondo', '2006-01-22', 'M. Harir Muzzaki', 'Islam', 'Dosen STAIN', 'Perum Grisima i Block C No. 8 TC', '85856740621', '85856740621', null, '2013-06-09 10:38:49', null, null, null, null);
INSERT INTO `siswa` VALUES ('122', '737', 'Adi Kusuma Wiratmaja', 'L', 'Ponorogo', '2006-02-24', 'Kusnudin', 'Islam', '', 'Morosari Sukorejo Ponorogo', '082141633321', '081335336707', null, '2013-06-09 10:41:57', null, null, null, null);
INSERT INTO `siswa` VALUES ('123', '745', 'Ainin Hazhiya Fatma', 'P', 'Ponorogo', '2006-06-19', 'M. Irham S.', 'Islam', 'Wiraswasta', 'JL. Kyai Wahid Hasyim 10 Ponorogo', '81335213133', '81335213133', null, '2013-06-09 10:41:57', null, null, null, null);
INSERT INTO `siswa` VALUES ('124', '747', 'Akbar Azadira Prasetyo', 'L', 'Ponorogo', '2006-01-26', 'Budi Prasetyo', 'Islam', '', 'Ngasinan Jetis Ponorogo', '081335790414', '081335790414', null, '2013-06-09 10:41:57', null, null, null, null);
INSERT INTO `siswa` VALUES ('125', '749', 'Alif Diaz Nur Furqan', 'L', 'Ponorogo', '2005-09-07', 'Subandi', 'Islam', 'Kontraktor', 'Jl. Sekar Putih Timur Tonatan', '08125917750', '(0352) 486452', null, '2013-06-09 10:41:57', null, null, null, null);
INSERT INTO `siswa` VALUES ('126', '754', 'Amirudin Ahmad', 'L', 'Ponorogo', '2005-01-01', 'Hery Wahyudi', 'Islam', 'Wiraswasta', 'Jl. Jawa Gg. IV No. 29 Mangkujayan', '85736144670', '85736144670', null, '2013-06-09 10:41:57', null, null, null, null);
INSERT INTO `siswa` VALUES ('127', '759', 'Ashal Muktabar Mutawakkilbillah', 'L', 'Ponorogo', '2006-05-29', 'Totok Karjito', 'Islam', 'Wiraswasta', 'Genuk Sedarat Balong ponorogo', '82132792806', '82132792806', null, '2013-06-09 10:41:57', null, null, null, null);
INSERT INTO `siswa` VALUES ('128', '761', 'Aulia Niswah Qonita', 'P', 'Ponorogo', '2006-06-26', 'Saichul Imron', 'Islam', '', 'Jl. Parang Centung No.25 Ponorogo', '081331766887', '085233640490', null, '2013-06-09 10:41:57', null, null, null, null);
INSERT INTO `siswa` VALUES ('129', '769', 'ChaterineFlorencia Ayuningtyas', 'P', 'Madiun', '2006-03-28', 'Yasin', 'Islam', 'TKI', 'Lembah Rt. 03 Rw. 02 Babadan Ponorogo', '8158235530', '8158235530', null, '2013-06-09 10:41:57', null, null, null, null);
INSERT INTO `siswa` VALUES ('130', '795', 'Hammam Sadid Agnundyatama', 'L', 'Ponorogo', '2005-07-18', 'Agung Cahyono', 'Islam', 'BRI', 'Jl. Tribusono 33A Cokromenggalan', '81359282230', '81359282230', null, '2013-06-09 10:41:57', null, null, null, null);
INSERT INTO `siswa` VALUES ('131', '798', 'Hisyam Akmal Muzakki', 'L', 'Madiun', '2005-02-18', 'Ahmad Khiyarush', 'Islam', 'Pegawai Pajak ', 'Jl. Hasanudin 52 Mlilir Dolopo', '085856324848', '(0351) 366878', null, '2013-06-09 10:41:57', null, null, null, null);
INSERT INTO `siswa` VALUES ('132', '806', 'M. Evan Dzaky Firdaus', 'L', 'Kebumen ', '2005-11-22', 'Mohanang E. S.', 'Islam', 'Counter HP', 'Broto Slahung Ponorogo', '85259687101', '85259687101', null, '2013-06-09 10:41:57', null, null, null, null);
INSERT INTO `siswa` VALUES ('133', '807', 'Maghfira Adibha El Khanza', 'P', 'Ponorogo', '2005-10-30', 'Tri Amanto', 'Islam', '', 'Pulung Rt.03 Rw 04 Ponorogo', '(0352) 571883', '081359458485', null, '2013-06-09 10:41:57', null, null, null, null);
INSERT INTO `siswa` VALUES ('134', '823', 'Muhammad Faiz Ridhwan', 'L', 'Ponorogo', '2005-06-06', 'Syaiufia Rahman', 'Islam', 'Pedagang', 'Kadipaten Babadan Ponorogo', '85856181696', '85856181696', null, '2013-06-09 10:41:57', null, null, null, null);
INSERT INTO `siswa` VALUES ('135', '826', 'Muhammad Ilham Al Azizy', 'L', 'Madiun', '2006-01-01', 'Musadi', 'Islam', '', 'Jl. Raya Ponorogo-Solo Badegan', '081359309641', '081359309641', null, '2013-06-09 10:41:57', null, null, null, null);
INSERT INTO `siswa` VALUES ('136', '831', 'Muhammad Reza Ramadhany', 'L', 'Ponorogo', '2005-08-08', 'Masirun', 'Islam', '', 'Jl. Ki Ageng Punuk No.1 Menang Jambon', '(0352) 751972', '085234938883', null, '2013-06-09 10:41:57', null, null, null, null);
INSERT INTO `siswa` VALUES ('137', '832', 'Muhammad Singgih Arya Duta', 'L', 'Ponorogo', '2002-08-23', 'M. Miftahul Ulum', 'Islam', 'Dosen STAIN', 'Jl. Pengkeran 35 Demangan Siman', '081335702545', '(0352)311625', null, '2013-06-09 10:41:57', null, null, null, null);
INSERT INTO `siswa` VALUES ('138', '834', 'Muhammed Shultan Alaudien Al Mahdi', 'L', 'Ponorogo', '2005-10-12', 'Ngarji', 'Islam', 'PNS', 'Jl. Raya Siman 3/2 Patihan Kidul Siman', '085336736661', '(0352) 7119755', null, '2013-06-09 10:41:57', null, null, null, null);
INSERT INTO `siswa` VALUES ('139', '840', 'Natasya Nvidia Faisa Imaniputri', 'P', 'Ponorogo', '2005-03-19', 'M. Wathoni', 'Islam', 'Wiraswasta', 'Jl. Batoro Katong 33B', '08125961623', '(0352) 487151', null, '2013-06-09 10:41:57', null, null, null, null);
INSERT INTO `siswa` VALUES ('140', '842', 'Nendra Apriyan Yudistira Ar Bani', 'L', 'Ponorogo', '2006-04-14', 'Zenis Sudardiri', 'Islam', '', 'Wonoketro Rt.01 Rw.02 Jetis Ponorogo', '(0352) 311842', '082143706015', null, '2013-06-09 10:41:57', null, null, null, null);
INSERT INTO `siswa` VALUES ('141', '844', 'Nisya Elri Fridawati', 'P', 'Ponorogo', '2006-04-26', 'Eko Lestari', 'Islam', '', 'Jl. Seloaji 17 Cekok Babadan', '(0352) 481596', '08123441519', null, '2013-06-09 10:41:57', null, null, null, null);
INSERT INTO `siswa` VALUES ('142', '845', 'Novanya Syahla Fathinia Hadi', 'P', 'Ponorogo', '2005-11-11', 'Bambang Kuncoro H.', 'Islam', '', 'Ds. Siwalan Mlarak Ponorogo', '082332008509', '082332008509', null, '2013-06-09 10:41:57', null, null, null, null);
INSERT INTO `siswa` VALUES ('143', '846', 'Nugroho Adika Wicaksono', 'L', 'Ponorogo', '2005-10-06', 'Setyo Hermeydi', 'Islam', '', 'Jl. Trunojoyo 159 Ponorogo', '(0352)488066', '085335265503', null, '2013-06-09 10:41:57', null, null, null, null);
INSERT INTO `siswa` VALUES ('144', '847', 'Prima Zamroni Septian', 'L', 'Ponorogo', '2005-09-05', 'Fauzi Udin Z.', 'Islam', '', 'Jl.Trunojoyo 38D Ponorogo', '(0352) 403527', '085257209682', null, '2013-06-09 10:41:57', null, null, null, null);
INSERT INTO `siswa` VALUES ('145', '849', 'Putri Farah Aisyah', 'P', 'Wonosobo', '2005-08-19', 'Yusub Dharmadi J.', 'Islam', 'Lurah Nologaten ', 'Jl. Tangkuban Perahu 2 Nologaten', '81335777390', '81335777390', null, '2013-06-09 10:41:57', null, null, null, null);
INSERT INTO `siswa` VALUES ('146', '852', 'R. Muhammad Fattarajasa', 'L', 'Ponorogo', '2005-05-10', 'Didik Prihanto', 'Islam', 'PT. Malindo Gresek ', 'Jl. Sumatra 75 Ponorogo', '81234240202', '81234240202', null, '2013-06-09 10:41:57', null, null, null, null);
INSERT INTO `siswa` VALUES ('147', '863', 'Salsabila Firdausi Rahmadita', 'P', 'Ponorogo', '2005-11-04', 'Ahmad Dardiri', 'Islam', 'Pengawas', 'Ds. Prayungan Paju Ponorogo', '81335757530', '81335757530', null, '2013-06-09 10:41:57', null, null, null, null);
INSERT INTO `siswa` VALUES ('148', '867', 'Tiara Benita Aulia', 'P', 'Ponorogo', '2006-04-12', 'Agus Satriawan', 'Islam', 'Satpol PP', 'Ds. Cekok-Babadan Ponorogo', '8155616487', '8155616487', null, '2013-06-09 10:41:57', null, null, null, null);
INSERT INTO `siswa` VALUES ('149', '868', 'Tsabita Syifa Azzahra Pertiwi', 'P', 'Ponorogo', '2006-03-10', 'Sunarto', 'Islam', 'Wiraswasta', 'Jl. Arif Rahman Hakim 6 Ponorogo', '8883494133', '8883494133', null, '2013-06-09 10:41:57', null, null, null, null);
INSERT INTO `siswa` VALUES ('153', '0613', 'Aghniya Muthia Azmi', 'P', 'Ponorogo', '0000-00-00', 'Moh. Zainak Abidin ', 'Islam ', 'Swasta', 'Jl. Ki Ageng Kutu 05 Tonatan Ponorogo', '0352481775', '0352481775', null, '2013-06-09 10:45:37', null, null, null, null);
INSERT INTO `siswa` VALUES ('154', '0614', 'Ahmad Fika Wahyu Fardiansyah ', 'L', 'Pasuruan', '0000-00-00', 'Suliadi ', 'Islam ', 'Swasta', 'Jl. Sukarno Hatta VIi/12 Ponorogo', '0352483563', '0352483563', null, '2013-06-09 10:45:37', null, null, null, null);
INSERT INTO `siswa` VALUES ('155', '0616', 'Aisyah Rafiatillah Asmaranti', 'P', 'Ponorogo', '0000-00-00', 'Luki Widiyanto', 'Islam ', 'Swasta', 'RT 03 RW 01 Bajang Balong Ponorogo', '081259050199', '081259050199', null, '2013-06-09 10:45:37', null, null, null, null);
INSERT INTO `siswa` VALUES ('156', '0624', 'Aretha Salsabila Andani', 'P', 'Ponorogo', '0000-00-00', 'Pitra Danu Aris S.', 'Islam ', 'PNS', 'Jl. Wonopringgo Kertosari Ponorogo', '0352484823', '0352484823', null, '2013-06-09 10:45:37', null, null, null, null);
INSERT INTO `siswa` VALUES ('157', '0627', 'Bagas Fajar Maulana', 'L', 'Ponorogo', '0000-00-00', 'Susilo Budi P.', 'Islam ', 'Wiraswasta', 'Perum Grisimai Blok D-E No. 4', '081335595127', '081335595127', null, '2013-06-09 10:45:37', null, null, null, null);
INSERT INTO `siswa` VALUES ('158', '0628', 'Bima Aditya Mahendra', 'L', 'Ponorogo', '0000-00-00', 'Badrudin Sholeh', 'Islam ', 'Dagang', 'Jl Lawu 9 Nologaten Ponorogo', '081359034861', '081359034861', null, '2013-06-09 10:45:37', null, null, null, null);
INSERT INTO `siswa` VALUES ('159', '0631', 'Dhiya Almas Wianputri', 'P', 'Ponorogo', '0000-00-00', 'Winoto', 'Islam ', 'Pns', 'Desa Kapuran Badegan ', '081335627960', '081335627960', null, '2013-06-09 10:45:37', null, null, null, null);
INSERT INTO `siswa` VALUES ('160', '0638', 'Emilia Elvina Ardiyanti', 'P', 'Ponorogo', '0000-00-00', 'Beny Surahmawan', 'Islam ', 'Guru', 'Jl. Arif Rahman Hakim Kertosari Ponorogo', '085235748003', '085235748003', null, '2013-06-09 10:45:37', null, null, null, null);
INSERT INTO `siswa` VALUES ('161', '0645', 'Fathiya Nakhwa Aqila ', 'P', 'Ponorogo', '0000-00-00', 'Warsito', 'Islam ', 'Guru', 'Jl. Sumatra 75 Ponorogo', '085234554858', '085234554858', null, '2013-06-09 10:45:37', null, null, null, null);
INSERT INTO `siswa` VALUES ('162', '0651', 'Ferdyta Nurul Hidayah ', 'P', 'Ponorogo', '0000-00-00', 'Suyanto', 'Islam ', 'Perangkat Desa', 'Jl. Sekutrum 173 RT. 02 RW. 01 Lembah', '0352488698', '0352488698', null, '2013-06-09 10:45:37', null, null, null, null);
INSERT INTO `siswa` VALUES ('163', '0655', 'Hanifa Nur Azizah ', 'P', 'Ponorogo', '0000-00-00', 'Sutrisno', 'Islam ', 'Guru', 'Jl. Wonopringgo 6 Kertosari Ponorogo', '0352489991', '0352489991', null, '2013-06-09 10:45:37', null, null, null, null);
INSERT INTO `siswa` VALUES ('164', '0657', 'Hannifah Zakkiyah Ramadhani', 'P', 'Ponorogo', '0000-00-00', 'Bambang Setiono', 'Islam ', 'Wiraswasta', 'RT. 01 RW. 02 Sukomulyo Balong', '0352371243', '0352371243', null, '2013-06-09 10:45:37', null, null, null, null);
INSERT INTO `siswa` VALUES ('165', '0659', 'Hasib Yusron Yujahida', 'L', 'Ponorogo', '0000-00-00', 'Timbul Pranowo', 'Islam ', 'Pns ', 'Jl. Ukel 39 A Kertosari Ponorogo', '08125952028', '08125952028', null, '2013-06-09 10:45:37', null, null, null, null);
INSERT INTO `siswa` VALUES ('166', '0669', 'Khusnunnazilah Hanum Salsabila', 'P', 'Ponorogo', '0000-00-00', 'Djulianto Subroto', 'Islam ', '', 'Desa Beton Siman Ponorogo ', '081359274849', '081359274849', null, '2013-06-09 10:45:37', null, null, null, null);
INSERT INTO `siswa` VALUES ('167', '0670', 'Luthfia Ranie Amaliasari', 'P', 'Jakarta', '0000-00-00', 'Sumaryono', 'Islam ', 'Pns', 'Jl. Ontorejo 27 Ponorogo', '0352484241', '0352484241', null, '2013-06-09 10:45:37', null, null, null, null);
INSERT INTO `siswa` VALUES ('168', '0671', 'M Kavindra Yasykur', 'L', 'Ponorogo', '0000-00-00', 'Nurul Iman ', 'Islam ', 'Dosen', 'Jl. Perikanan 66 Pondok Babadan Ponorogo', '0352462562', '0352462562', null, '2013-06-09 10:45:37', null, null, null, null);
INSERT INTO `siswa` VALUES ('169', '0679', 'Muhammad Akmal Asy Syauqi', 'L', 'Ponorogo', '0000-00-00', 'Bambang Syamsu Budi Utomo', 'Islam ', 'PNS', 'Jl. Syuhada 149 B Ngunut Ponorogo', '0352463202', '0352463202', null, '2013-06-09 10:45:37', null, null, null, null);
INSERT INTO `siswa` VALUES ('170', '0682', 'Muhammad Bisma Putra Darma Herdiansyah', 'L', 'Ponorogo', '0000-00-00', 'Darmawan', 'Islam ', 'Pns ', 'Jl. Budi Utomo Mangunsuman', '081335705761', '081335705761', null, '2013-06-09 10:45:37', null, null, null, null);
INSERT INTO `siswa` VALUES ('171', '0685', 'Muhammad Satria Rafif', 'L', 'Madiun', '0000-00-00', 'Suryadin ', 'Islam ', 'PNS', 'Jl. Persatuan 5A Ngunut Babadan ', '08155606411', '08155606411', null, '2013-06-09 10:45:37', null, null, null, null);
INSERT INTO `siswa` VALUES ('172', '0688', 'Mustazhiroh Nur \"Abidah ', 'P', 'Ponorogo', '0000-00-00', 'Nasrul Wathon ', 'Islam ', 'Wiraswasta', 'Jl. Ust Sabarudin No. 21 RT. 03/01 Josari Jetis Po', '087758447911', '087758447911', null, '2013-06-09 10:45:37', null, null, null, null);
INSERT INTO `siswa` VALUES ('173', '0689', 'Musyaffa Fulca Satria', 'L', 'Ponorogo', '0000-00-00', 'Tunggul Tamtama', 'Islam ', 'Swasta', 'Setono Jenangan Ponorogo ', '0352461750', '0352461750', null, '2013-06-09 10:45:37', null, null, null, null);
INSERT INTO `siswa` VALUES ('174', '0690', 'Nabila Nur Faatinazzahra', 'P', 'Ponorogo', '0000-00-00', 'Nur Wahyudi', 'Islam ', 'Pns', 'Perumda E 11 Ponorogo', '081335446944', '081335446944', null, '2013-06-09 10:45:37', null, null, null, null);
INSERT INTO `siswa` VALUES ('175', '0695', 'Nasywa Anindya Qussayyi Eflisashiddiqie', 'P', 'Ponorogo', '0000-00-00', 'Slamet Efendi ', 'Islam ', 'Wiraswasta', 'Josari Jetis Ponorogo', '0352312386', '0352312386', null, '2013-06-09 10:45:37', null, null, null, null);
INSERT INTO `siswa` VALUES ('176', '0698', 'Naufal Raihan Muyassar', 'L', 'Ponorogo', '0000-00-00', 'Desem Dwi Wardoyo', 'Islam ', 'Wiraswasta', 'Ks Satsuitubun Gg I No 1', '0812344154', '0812344154', null, '2013-06-09 10:45:37', null, null, null, null);
INSERT INTO `siswa` VALUES ('177', '0711', 'Rizky Karima Haryono Putri', 'P', 'Ponorogo', '0000-00-00', 'Bondo Haryono', 'Islam ', 'Tani', 'Jl. Muslim RT. 01 RW. 02 Jetis Ponorogo', '081335972', '081335972', null, '2013-06-09 10:45:37', null, null, null, null);
INSERT INTO `siswa` VALUES ('178', '0714', 'Sabili Jundi Islami Nugroho', 'L', 'Ponorogo', '0000-00-00', 'Muhariadi Nugroho, Skm', 'Islam ', 'Pns', 'Jl. Lawu 41 Nologaten Ponorogo', '085232758690', '085232758690', null, '2013-06-09 10:45:37', null, null, null, null);
INSERT INTO `siswa` VALUES ('179', '0723', 'Taqiyyatu Hanun Nuha', 'P', 'Ponorogo', '0000-00-00', 'Budi Hartanto', 'Islam ', 'Guru', 'Josari Kulon Jetis Po.', '081335622207', '081335622207', null, '2013-06-09 10:45:37', null, null, null, null);
INSERT INTO `siswa` VALUES ('180', '0726', 'Vernanditya Muhammad Mifzal Pratama', 'L', 'Ponorogo', '0000-00-00', 'Prastowo Hari Pratomo', 'Islam ', 'Pns', 'Jl. Jawa (Perum Mangkujayan Regency Kav. 25', '0352485236', '0352485236', null, '2013-06-09 10:45:37', null, null, null, null);
INSERT INTO `siswa` VALUES ('181', '0727', 'Wahyu Febrian Saputra', 'L', 'Ponorogo', '0000-00-00', 'Sukirno', 'Islam ', 'Bpr', 'Jl. Sukowati 62 Keniten Ponorogo', '0352488726', '0352488726', null, '2013-06-09 10:45:37', null, null, null, null);
INSERT INTO `siswa` VALUES ('182', '0728', 'Wildan Nawawi Agasna ', 'L', 'Ponorogo', '0000-00-00', 'Nanang Priyo Widodo', 'Islam ', 'Swasta', 'Dukuh Tanjung RT/RW 02/01 Patihan Kidul', '081335723972', '081335723972', null, '2013-06-09 10:45:37', null, null, null, null);
INSERT INTO `siswa` VALUES ('183', '0731', 'Yumna Hanun Najah ', 'P', 'Ponorogo', '0000-00-00', 'Supriyono', 'Islam ', 'Wiraswasta', 'Jl. Besaran RT 03 RW 01 Brahu Siman', '0352483659', '0352483659', null, '2013-06-09 10:45:37', null, null, null, null);
INSERT INTO `siswa` VALUES ('184', '0612', 'Adinda Keisha Ramadhani Sukmana', 'P', 'Ponorogo', '0000-00-00', 'Eko Budi Sukmono', 'Islam ', 'BUMN', 'Jl. Wonopringgo 01/03 Kertosari Ponorogo', '0352487870', '0352487870', null, '2013-06-09 10:49:41', null, null, null, null);
INSERT INTO `siswa` VALUES ('185', '0617', 'Ajeng Angieta Shandy', 'P', 'Ponorogo', '0000-00-00', 'Sugeng Riyanto', 'Islam ', 'Wiraswasta', 'Jl. Batoro Katong 67 Ponorogo', '0352482155', '0352482155', null, '2013-06-09 10:49:41', null, null, null, null);
INSERT INTO `siswa` VALUES ('186', '0626', 'Ayyeva Mujahidah Falestin', 'P', 'Madiun', '0000-00-00', 'Tarmizi', 'Islam ', 'Swasta', 'Jl. Bupati Sumadi Blok E 13 Perumda', '0352488110', '0352488110', null, '2013-06-09 10:49:41', null, null, null, null);
INSERT INTO `siswa` VALUES ('187', '0633', 'Diah Ayu Firliyana ', 'P', 'Ponorogo', '0000-00-00', 'Mujiono', 'Islam ', 'Wiraswasta', 'Jl. Raya Sampung 83 Kauman Sumoroto ', '0352751669', '0352751669', null, '2013-06-09 10:49:41', null, null, null, null);
INSERT INTO `siswa` VALUES ('188', '0634', 'Doni Darmawan', 'L', 'Ponorogo', '0000-00-00', 'Darto', 'Islam ', 'Swasta', 'Jl. Ahmad Yani Morosari', '081359855952', '081359855952', null, '2013-06-09 10:49:41', null, null, null, null);
INSERT INTO `siswa` VALUES ('189', '0636', 'Dyah Rahmadhani', 'P', 'Ponorogo', '0000-00-00', 'Mohamad Nahrowi Latif', 'Islam ', 'Pns', 'RT 01 RW 02 Tanjungrejo Badegan', '085235055342', '085235055342', null, '2013-06-09 10:49:41', null, null, null, null);
INSERT INTO `siswa` VALUES ('190', '0639', 'Fahredo Yuhan Syahlevi', 'L', 'Ponorogo', '0000-00-00', 'Suhandoko', 'Islam ', 'Wiraswasta', 'Jl. Sunan Kalijaga Cekok', '081335757888', '081335757888', null, '2013-06-09 10:49:41', null, null, null, null);
INSERT INTO `siswa` VALUES ('191', '0641', 'Faishol Arif Fakhruddin', 'L', 'Ponorogo', '0000-00-00', 'Kurniadi ', 'Islam ', 'Wiraswasta', 'Jl. MT. Haryono No. 23 Ponorogo', '081556457703', '081556457703', null, '2013-06-09 10:49:41', null, null, null, null);
INSERT INTO `siswa` VALUES ('192', '0642', 'Farah Azifah', 'P', 'Ponorogo', '0000-00-00', 'Basuki', 'Islam ', 'Wiraswasta', 'Jl. Raya Sumoroto Carat Kauman', '0352751728', '0352751728', null, '2013-06-09 10:49:41', null, null, null, null);
INSERT INTO `siswa` VALUES ('193', '0648', 'Fea El Faradisa', 'P', 'Ponorogo', '0000-00-00', 'Zen Arif Yudha Fauzin', 'Islam ', 'Wiraswasta', 'Jl. Sidomukti 2A Ponorogo', '03527108246', '03527108246', null, '2013-06-09 10:49:41', null, null, null, null);
INSERT INTO `siswa` VALUES ('194', '0650', 'Ferdyan Nur Hidayat ', 'L', 'Ponorogo', '0000-00-00', 'Suyanto', 'Islam ', 'Perangkat Desa', 'Jl. Sekutrum 173 RT. 02 RW. 01 Lembah', '0352488698', '0352488698', null, '2013-06-09 10:49:41', null, null, null, null);
INSERT INTO `siswa` VALUES ('195', '0660', 'Hasnia Safinatunnajah', 'P', 'Ponorogo', '0000-00-00', 'Abdul Hakam Mubarok', 'Islam ', 'Pns', 'Jl. Asmorondono 31 Ponorogo', '0352484574', '0352484574', null, '2013-06-09 10:49:41', null, null, null, null);
INSERT INTO `siswa` VALUES ('196', '0668', 'Khodijah Asy-Syifa\'', 'P', 'Ponorogo', '0000-00-00', 'Jemani', 'Islam ', 'Wiraswasta', 'Nongkodono Kauman Somoroto Po', '0352753078', '0352753078', null, '2013-06-09 10:49:41', null, null, null, null);
INSERT INTO `siswa` VALUES ('197', '0672', 'M Rafli Azzriel Ramadhani', 'L', 'Ponorogo', '0000-00-00', 'Irwan Dwi Prasetiyo', 'Islam ', 'Swasta', 'Dukuh Wetan 01/01 Karanglo Lor Sukorejo', '085236206018', '085236206018', null, '2013-06-09 10:49:41', null, null, null, null);
INSERT INTO `siswa` VALUES ('198', '0676', 'Malika Khumaira Kamil', 'P', 'Ponorogo', '0000-00-00', 'Ahmad Kamil', 'Islam ', 'Supervisor', 'Jl Gabah Sinawur Cokro Menggalan Po', '081556752426', '081556752426', null, '2013-06-09 10:49:41', null, null, null, null);
INSERT INTO `siswa` VALUES ('199', '0678', 'Muhamad Hanif Rifai', 'L', 'Ponorogo', '0000-00-00', 'Misman', 'Islam ', 'Petani', 'Jetis Ponorogo', '', '', null, '2013-06-09 10:49:41', null, null, null, null);
INSERT INTO `siswa` VALUES ('200', '0680', 'Muhammad Assidiqi Alamsyah ', 'L', 'Ponorogo', '0000-00-00', 'M. Tunggul Swastiko', 'Islam ', 'PNS', 'Perum Griya Citra Mandiri Jl. Barong', '0352487842', '0352487842', null, '2013-06-09 10:49:41', null, null, null, null);
INSERT INTO `siswa` VALUES ('201', '0681', 'Muhammad Basyir Abdul Majid', 'L', 'Kudus', '0000-00-00', 'Noor Udin Syaifullah', 'Islam ', 'Wiraswasta', 'Jenangan Ponorogo', '0352531107', '0352531107', null, '2013-06-09 10:49:41', null, null, null, null);
INSERT INTO `siswa` VALUES ('202', '0684', 'Muhammad Rayhan Arabi', 'L', 'Ponorogo', '0000-00-00', 'Heri Fahrudin ', 'Islam ', 'Wiraswasta', 'Jl. Gatutkoco No. 24d Ponorogo', '0352462647', '0352462647', null, '2013-06-09 10:49:41', null, null, null, null);
INSERT INTO `siswa` VALUES ('203', '0691', 'Nadeshiko Azima Putra Sutomo', 'L', 'Ponorogo', '0000-00-00', 'Sutomo', 'Islam ', 'Karyawan Pt Pos', 'Perum Kertosari Indah C31 Ponorogo', '0352486553', '0352486553', null, '2013-06-09 10:49:41', null, null, null, null);
INSERT INTO `siswa` VALUES ('204', '0694', 'Nashwa Sabrina Gunawan', 'P', 'Ponorogo', '0000-00-00', 'Indra Gunawan ', 'Islam ', 'Wiraswasta', 'Jl. Sampung Raya Kec. Sampung Po', '03527108123', '03527108123', null, '2013-06-09 10:49:41', null, null, null, null);
INSERT INTO `siswa` VALUES ('205', '0699', 'Naufaliya Wahyu Hurotul Aini', 'L', 'Ponorogo', '0000-00-00', 'Moh. Salam', 'Islam ', 'Swasta', 'Jl. Sanan RT. 02 RW. 01 Patihan Kidul ', '081335285574', '081335285574', null, '2013-06-09 10:49:41', null, null, null, null);
INSERT INTO `siswa` VALUES ('206', '0700', 'Naya Sifana Salsabila', 'P', 'Ponorogo', '0000-00-00', 'Moh Mustofa', 'Islam ', 'Tani', 'Jl Ust Sabarudin Josari Jetis Po', '08125901154', '08125901154', null, '2013-06-09 10:49:41', null, null, null, null);
INSERT INTO `siswa` VALUES ('207', '0701', 'Purwo Dian Kartika Candra ', 'L', 'Ponorogo', '0000-00-00', 'Asih Dian Asmoro', 'Islam ', 'PNS Polri ', 'RT. 03 Rw. 02 Krajan Sedarat Balong Ponorogo', '0352484328', '0352484328', null, '2013-06-09 10:49:41', null, null, null, null);
INSERT INTO `siswa` VALUES ('208', '0705', 'Rahma Amalya Irwana', 'P', 'Ponorogo', '0000-00-00', 'Irwanto', 'Islam ', 'Wiraswasta', 'Jl. Kijoyopuro RT 03/04 Singosaren ', '0352487863', '0352487863', null, '2013-06-09 10:49:41', null, null, null, null);
INSERT INTO `siswa` VALUES ('209', '0707', 'Rangga Juni Saputra', 'L', 'Surabaya', '0000-00-00', 'Bambang Juni Harmoko', 'Islam ', 'Wiraswasta', 'Jl Parikesit 22 Ponorogo', '0352481692', '0352481692', null, '2013-06-09 10:49:41', null, null, null, null);
INSERT INTO `siswa` VALUES ('210', '0719', 'Shobba Sya\'abiba Rohma', 'P', 'Ponorogo', '0000-00-00', 'Teguh Supriarto', 'Islam ', 'Guru', 'Bancar RT. 04 RW. 01 Bungkal Ponorogo', '085235493699', '085235493699', null, '2013-06-09 10:49:41', null, null, null, null);
INSERT INTO `siswa` VALUES ('211', '0724', 'Tirta Albar Bhrewira', 'L', 'Ponorogo', '0000-00-00', 'Andi Muhadi ', 'Islam ', 'Pns', 'Desa Sendang Kec. Jambon Ponorogo', '085235655667', '085235655667', null, '2013-06-09 10:49:41', null, null, null, null);
INSERT INTO `siswa` VALUES ('212', '0725', 'Vania Lituhayu Eka Faza', 'P', 'Ponorogo', '0000-00-00', 'Parmuji', 'Islam ', 'Swasta', 'Jl. Ali Usman Japan Babadan Ponorogo', '081259777430', '081259777430', null, '2013-06-09 10:49:41', null, null, null, null);
INSERT INTO `siswa` VALUES ('213', '0730', 'Yasfi Reyhan Zain', 'L', 'Ponorogo', '0000-00-00', 'M. Zaenal Mukhodas', 'Islam ', 'Wiraswasta', 'Jl. Semen Romo 14 A Kertosari Ponorogo', '081259658644', '081259658644', null, '2013-06-09 10:49:41', null, null, null, null);
INSERT INTO `siswa` VALUES ('214', '0874', 'Yoandra Yustisio', 'L', 'Ponorogo', '0000-00-00', 'Yusron Darmawan ', 'Islam ', 'Karyawan Swasta', 'Jl. MT. Haryono 100 Beduri ', '082141595555', '082141595555', null, '2013-06-09 10:49:41', null, null, null, null);
INSERT INTO `siswa` VALUES ('215', '0610', 'Abdur Rasyid Ramadhanu', 'L', 'Ponorogo', '0000-00-00', 'Use Etica', 'Islam ', 'Penyuluh Pertanian', 'Jl Jenar No 48 Surodikraman Po', '085233797715', '085233797715', null, '2013-06-09 10:52:13', null, null, null, null);
INSERT INTO `siswa` VALUES ('216', '0611', 'Abdurrohman Miftakhul Huda', 'L', 'Ponorogo', '0000-00-00', 'Sudarmawan', 'Islam ', 'Wiraswasta', 'Jl Zaenal Arifin 44 Kauman Ponorogo', '081335815010', '081335815010', null, '2013-06-09 10:52:13', null, null, null, null);
INSERT INTO `siswa` VALUES ('217', '0619', 'Alung Ambar Putra Az-Zikra ', 'L', 'Ponorogo', '0000-00-00', 'Ambari ', 'Islam ', 'Swasta', 'Ds Skaten Jenangan Ponorogo', '085856160054', '085856160054', null, '2013-06-09 10:52:13', null, null, null, null);
INSERT INTO `siswa` VALUES ('218', '0620', 'Alwan Jauhar Nugroho', 'L', 'Ponorogo', '0000-00-00', 'Suharmanto', 'Islam ', 'Wiraswasta', 'RT 02 / 01 Wonoketro Jetis Ponorogo', '0352311825', '0352311825', null, '2013-06-09 10:52:13', null, null, null, null);
INSERT INTO `siswa` VALUES ('219', '0625', 'Athaya Bunga Asmalyra ', 'P', 'Ponorogo', '0000-00-00', 'Agus Irwanto', 'Islam ', 'Swasta ', 'Jl. Rumpuk 99 Kertosari Ponorogo', '0816563657', '0816563657', null, '2013-06-09 10:52:13', null, null, null, null);
INSERT INTO `siswa` VALUES ('220', '0630', 'Daffa\' El Haq AlFaruqy', 'L', 'Ponorogo', '0000-00-00', 'Djuni Setiawan', 'Islam ', 'Paramedis', 'Jl. Stasiun 20 Slahung', '0352371228', '0352371228', null, '2013-06-09 10:52:13', null, null, null, null);
INSERT INTO `siswa` VALUES ('221', '0637', 'Dzia-Ul Haq Maz', 'L', 'Ponorogo', '0000-00-00', 'Slamet Hariyono', 'Islam ', 'Swasta ', 'RT 02 RW 01 Turi Jetis Ponorogo', '0352311990', '0352311990', null, '2013-06-09 10:52:13', null, null, null, null);
INSERT INTO `siswa` VALUES ('222', '0643', 'Faranazwa Bekti Ramadhani', 'P', 'Ponorogo', '0000-00-00', 'Gaguk Guntoro', 'Islam ', 'Wiraswasta', 'Jl. Urip Sumoharjo 73 Ponorogo', '0352481716', '0352481716', null, '2013-06-09 10:52:13', null, null, null, null);
INSERT INTO `siswa` VALUES ('223', '644', 'Fathira Elena Huzaima ', 'P', 'Ponorogo', '0000-00-00', 'Imron Rosyidi ', 'Islam ', 'Pns ', 'Jl. Seram 30 Ponorogo', '0352461283', '0352461283', null, '2013-06-09 10:52:13', null, null, null, null);
INSERT INTO `siswa` VALUES ('224', '0649', 'Febian Zahwa Salsabilla', 'P', 'Ponorogo', '0000-00-00', 'Nurul Mustofa', 'Islam ', 'PNS', 'Perum Sidomulyo B5 Babadan Ponorogo', '0352462496', '0352462496', null, '2013-06-09 10:52:13', null, null, null, null);
INSERT INTO `siswa` VALUES ('225', '0653', 'Gading Aceh ', 'L', 'Ponorogo', '0000-00-00', 'Sukinto Herman Setija Atmaja', 'Islam ', 'Polisi', 'Anggrek Garden Ponrogo ', '0352489370', '0352489370', null, '2013-06-09 10:52:13', null, null, null, null);
INSERT INTO `siswa` VALUES ('226', '0654', 'Haidar Rafli Octavio Ramadhan ', 'L', 'Ponorogo', '0000-00-00', 'Gunandi ', 'Islam ', 'Guru', 'Jl. A. Yani Gg II No. 22B Ponorogo', '085932136688', '085932136688', null, '2013-06-09 10:52:13', null, null, null, null);
INSERT INTO `siswa` VALUES ('227', '0658', 'Hashifah Salsabila Putri', 'P', 'Ponorogo', '0000-00-00', 'Kunna Tur Pristiyanto', 'Islam ', 'Wiraswasata', 'Jl. Dieng No. 18 Ponorogo', '0352483963', '0352483963', null, '2013-06-09 10:52:13', null, null, null, null);
INSERT INTO `siswa` VALUES ('228', '0661', 'Hemas Palmeda Az - Zahra ', 'P', 'Ponorogo', '0000-00-00', 'Nur Hadi Dananjoyo', 'Islam ', 'Pns', 'Jl. KH. Ahmad Dahlan No. 74 Ponorogo ', '0352481378', '0352481378', null, '2013-06-09 10:52:13', null, null, null, null);
INSERT INTO `siswa` VALUES ('229', '0662', 'Hilda Fauzia Arifin', 'P', 'Blitar', '0000-00-00', 'Zainul Arifin ', 'Islam ', 'Swasta', 'Jl. Godang 53 A Patihan Kidul ', '081335230000', '081335230000', null, '2013-06-09 10:52:13', null, null, null, null);
INSERT INTO `siswa` VALUES ('230', '0663', 'Inert Nadiyah Indraswari', 'P', 'Ponorogo', '0000-00-00', 'Siswari', 'Islam ', 'Guru', 'Jl. Tribusono 24B Ponorogo', '081332481393', '081332481393', null, '2013-06-09 10:52:13', null, null, null, null);
INSERT INTO `siswa` VALUES ('231', '0664', 'Ivana Nabila Rahmadhani', 'P', 'Ponorogo', '0000-00-00', 'Gustap Hernowo', 'Islam ', 'Wiraswasta', 'Jl. Mawar 23 A Ponorogo', '0352486359', '0352486359', null, '2013-06-09 10:52:13', null, null, null, null);
INSERT INTO `siswa` VALUES ('232', '0665', 'Jelita Puri Salsabilla ', 'P', 'Ponorogo', '0000-00-00', 'Puryadi ', 'Islam ', 'Wiraswasta', 'Jl. Astrokoro Sukorejo Ponorogo', '08124927560', '08124927560', null, '2013-06-09 10:52:13', null, null, null, null);
INSERT INTO `siswa` VALUES ('233', '0673', 'M. Faiq Rafii Wahyudi', 'L', 'Ponorogo', '0000-00-00', 'Arif Wahyudi', 'Islam ', 'Konsultan', 'Jl. Puntodewo 29 Beton Siman', '0352483131', '0352483131', null, '2013-06-09 10:52:13', null, null, null, null);
INSERT INTO `siswa` VALUES ('234', '0683', 'Muhammad Fatkhi Assidiqi', 'L', 'Ponorogo', '0000-00-00', 'Fadelan', 'Islam ', 'Dosen ', 'Perumda D19 Ponorogo', '0352486169', '0352486169', null, '2013-06-09 10:52:13', null, null, null, null);
INSERT INTO `siswa` VALUES ('235', '0692', 'Nafis Azka Syakira ', 'P', 'Ponorogo', '0000-00-00', 'Wijanarko Adi S.', 'Islam ', 'Guru', 'Jl. Merapi No. 47 Ponorogo ', '081233047312', '081233047312', null, '2013-06-09 10:52:13', null, null, null, null);
INSERT INTO `siswa` VALUES ('236', '0693', 'Naila Naswa Salsabila ', 'P', 'Ponorogo', '0000-00-00', 'Agus Hadi Winoto', 'Islam ', 'Pns', 'Jl. Kalimantan 16 Ponorogo ', '081330582253', '081330582253', null, '2013-06-09 10:52:13', null, null, null, null);
INSERT INTO `siswa` VALUES ('237', '0697', 'Nasywatuz Zahra', 'P', 'Ponorogo', '0000-00-00', 'H. Sujarno', 'Islam ', 'Wiraswasta', 'Jl. Ahmad Yani 50 Ponorogo', '0352483664', '0352483664', null, '2013-06-09 10:52:13', null, null, null, null);
INSERT INTO `siswa` VALUES ('238', '0702', 'Putri Naifah Khafida Lituhayu', 'P', 'Ponorogo', '0000-00-00', 'Narno', 'Islam ', '', 'Jl. Tri Busono 82 Ponorogo', '0351368175', '0351368175', null, '2013-06-09 10:52:13', null, null, null, null);
INSERT INTO `siswa` VALUES ('239', '0704', 'Rahadiyan Farandy', 'L', 'Ponorogo', '0000-00-00', 'Edi Ali Dahlan ', 'Islam ', 'PNS', 'Mangkujayan Regency No. 15 Jl. Jawa', '0352463459', '0352463459', null, '2013-06-09 10:52:13', null, null, null, null);
INSERT INTO `siswa` VALUES ('240', '0709', 'Regynia Ardita Putri', 'P', 'Ponorogo', '0000-00-00', 'Riyanto', 'Islam ', 'Perawat', 'Desa Mlarak RT/RW 03/02 Mlarak Ponorogo', '081359438427', '081359438427', null, '2013-06-09 10:52:13', null, null, null, null);
INSERT INTO `siswa` VALUES ('241', '0710', 'Ridho Nur Ihsan', 'L', 'Ponorogo', '0000-00-00', 'Tahan Saptoto', 'Islam ', 'Guru', 'Perumahan Grisimai DF. 01 Ponorogo', '081335157406', '081335157406', null, '2013-06-09 10:52:13', null, null, null, null);
INSERT INTO `siswa` VALUES ('242', '0715', 'Saffarul Aulia R.', 'L', 'Ponorogo', '0000-00-00', 'Totok Dwi Bagyo', 'Islam ', 'Petani', 'Jl. Sidotopo 62 Carat Kauman ', '0352751420', '0352751420', null, '2013-06-09 10:52:13', null, null, null, null);
INSERT INTO `siswa` VALUES ('243', '0717', 'Satrya Dewa Pratama Delista Putra', 'L', 'Ponorogo', '0000-00-00', 'Dedy Sulistyo W', 'Islam ', 'Swasta', 'Dukuh Sukun Sidoharjo Pulung Ponorogo', '8131987398', '8131987398', null, '2013-06-09 10:52:13', null, null, null, null);
INSERT INTO `siswa` VALUES ('244', '0729', 'Yahya Ayyash Ashdaqi', 'L', 'Ponorogo', '0000-00-00', 'Junjung Adi Satwoto', 'Islam ', 'Pns', 'Jl. Nakula 1 Sampun Ponorogo', '081556476021', '081556476021', null, '2013-06-09 10:52:13', null, null, null, null);
INSERT INTO `siswa` VALUES ('245', '0732', 'Zhelycia Atha Nida Salsabila', 'P', 'Ponorogo', '0000-00-00', 'Ganggas Rudianto', 'Islam ', 'Wiraswasta', 'Jl. Anilo 32 B Pakunden Ponorogo', '03527104345', '03527104345', null, '2013-06-09 10:52:13', null, null, null, null);
INSERT INTO `siswa` VALUES ('246', '0609', 'Abdullah M Azzam ', 'L', 'Ponorogo', '2013-06-19', 'Muhammad Kholid ', 'Islam ', 'Guru ', 'Pondok Modern Darussalam Gontoh ', '085234939402', '085234939402', 'sdfsdfsd', '2013-06-09 10:54:32', null, null, null, null);
INSERT INTO `siswa` VALUES ('247', '0615', 'Ahmad Husein Rafi', 'L', 'Ponorogo', '0000-00-00', 'Ihsanuddin', 'Islam ', 'Wiraswasta', 'Jl. Anjasmoro 11 Ponorogo', '0352461266', '0352461266', null, '2013-06-09 10:54:32', null, null, null, null);
INSERT INTO `siswa` VALUES ('248', '0618', 'Akmalia Putri Cahyarini', 'P', 'Tulung Agung', '0000-00-00', 'Dwi Ageng Nurcahyo', 'Islam ', 'Kontraktor', 'Jl Sekar Taman No. 41 Tonatan ', '081359265295', '081359265295', null, '2013-06-09 10:54:32', null, null, null, null);
INSERT INTO `siswa` VALUES ('249', '0621', 'Amalina Syahidah Alyasiir', 'P', 'Ponorogo', '0000-00-00', 'Moh. Yusrobudianto', 'Islam ', 'Wiraswasta', 'Jl. Soekarno Hatta 24 Ponorogo', '0852259949877', '0852259949877', null, '2013-06-09 10:54:32', null, null, null, null);
INSERT INTO `siswa` VALUES ('250', '0622', 'Ando Ammar Rizqullah ', 'L', 'Ponorogo', '0000-00-00', 'Sapta Indrias Mashudi', 'Islam ', 'Swasta', 'Perum Kertosari Indah Blok D 11', '082143227729', '082143227729', null, '2013-06-09 10:54:32', null, null, null, null);
INSERT INTO `siswa` VALUES ('251', '0623', 'Annisa Akhmalia Zahra', 'P', 'Ponorogo', '0000-00-00', 'Basuno', 'Islam ', 'PNS', 'Jl. Sudono Sukirto No. 29 Perumda', '0352483041', '0352483041', null, '2013-06-09 10:54:32', null, null, null, null);
INSERT INTO `siswa` VALUES ('252', '0629', 'Bintang Rafael Putra ', 'L', 'Ponorogo', '0000-00-00', 'Slamet', 'Islam ', 'Wiraswasta', 'Rt. 01 Rw. 02 Kalisat Bungkal ', '0352371168', '0352371168', null, '2013-06-09 10:54:32', null, null, null, null);
INSERT INTO `siswa` VALUES ('253', '0632', 'Dia Aisyah Nurul Fadillah ', 'P', 'Ponorogo', '0000-00-00', 'Didik Sugianto', 'Islam ', 'Wiraswasta', 'Jl. Jaksa Agung Gg II No. 01 Ponorogo ', '03527121913', '03527121913', null, '2013-06-09 10:54:32', null, null, null, null);
INSERT INTO `siswa` VALUES ('254', '0635', 'Duta Mahardhika', 'L', 'Ponorogo', '0000-00-00', 'Eka Miftakhul Huda', 'Islam ', 'Wiraswasta', 'Perum Sidomulyo A7 Babadan', '0352489658', '0352489658', null, '2013-06-09 10:54:32', null, null, null, null);
INSERT INTO `siswa` VALUES ('255', '0640', 'Fahri Iqbal Rasyidin', 'L', 'Ponorogo', '0000-00-00', 'Deny Kurniawan', 'Islam ', 'Swasta', 'Jl Durgandini Lembah Babadan Po.', '081335770965', '081335770965', null, '2013-06-09 10:54:32', null, null, null, null);
INSERT INTO `siswa` VALUES ('256', '0646', 'Fauziah Ardelia Sari', 'P', 'Ponorogo', '0000-00-00', 'Sarwo Edy Kurniawan', 'Islam ', 'Swasta', 'Jl. Bupati Sumadi E23 Perumda Ponorogo', '0352462060', '0352462060', null, '2013-06-09 10:54:32', null, null, null, null);
INSERT INTO `siswa` VALUES ('257', '0647', 'Faza Fauzan \'Adima', 'L', 'Klaten', '0000-00-00', 'Miftahul Huda, S.Ag.M.Ag', 'Islam ', 'Dosen ', 'Gentan 03/01 Ngrupit Jenangan Po', '0352 481277', '0352 481277', null, '2013-06-09 10:54:32', null, null, null, null);
INSERT INTO `siswa` VALUES ('258', '0652', 'Futiya Nafi Husna', 'P', 'Ponorogo', '0000-00-00', 'Agus Setyobudi', 'Islam ', 'Swasta', 'Jl. Menur Gg V Perum Griya Asa 31', '03527109666', '03527109666', null, '2013-06-09 10:54:32', null, null, null, null);
INSERT INTO `siswa` VALUES ('259', '0656', 'Hanifah Ash Sholihah Habiballoh', 'P', 'Ponorogo', '0000-00-00', 'Imron Mashudi ', 'Islam ', 'Wiraswasata', 'Jl. Truntum No. 16 Ponorogo', '0352487630', '0352487630', null, '2013-06-09 10:54:32', null, null, null, null);
INSERT INTO `siswa` VALUES ('260', '0666', 'Kanahaya Hanifatu Zahro', 'P', 'Ponorogo', '0000-00-00', 'Gustap Hernowo', 'Islam ', 'Wiraswasta', 'Jl. Mawar 23 A Ponorogo', '0352486359', '0352486359', null, '2013-06-09 10:54:32', null, null, null, null);
INSERT INTO `siswa` VALUES ('261', '0667', 'Karina Hurin Nabila ', 'P', 'Ponorogo', '0000-00-00', 'Budiono', 'Islam ', 'Swasta', 'Jl. Gajah Mada 25 Jetis Ponorogo', '082535377895', '082535377895', null, '2013-06-09 10:54:32', null, null, null, null);
INSERT INTO `siswa` VALUES ('262', '0674', 'M. Kholifah Arrosyid', 'L', 'Ponorogo', '0000-00-00', 'Markih', 'Islam ', 'Swasta', 'Ngampel Balong Ponorogo', '081331533706', '081331533706', null, '2013-06-09 10:54:32', null, null, null, null);
INSERT INTO `siswa` VALUES ('263', '0675', 'Mada Lathofah', 'P', 'Ponorogo', '0000-00-00', 'Ali Mufthi', 'Islam ', 'Swasta', 'Jl Cipto Mangunkusumo Mangkujayan Po', '081259184555', '081259184555', null, '2013-06-09 10:54:32', null, null, null, null);
INSERT INTO `siswa` VALUES ('264', '0677', 'Moh. Naufal Ikhwan Rifai', 'L', 'Ponorogo', '0000-00-00', 'Erfan Rahmanto', 'Islam ', 'Swasta', 'Jl. Tanjung 90 Patihan Kidul Siman Po.', '081359345393', '081359345393', null, '2013-06-09 10:54:32', null, null, null, null);
INSERT INTO `siswa` VALUES ('265', '0686', 'Muhammad Subhan Amrulloh', 'L', 'Ponorogo', null, 'Kholid Heri Santoso', 'Islam ', 'Wiraswasta', 'Jl. S. Sukowati 65 Polorejo Babadan Ponorogo', '0352488716', '0352488716', null, '2013-06-09 10:54:32', null, null, null, null);
INSERT INTO `siswa` VALUES ('266', '0687', 'Muhammad Zufar Musyaffa', 'L', 'Ponorogo', '0000-00-00', 'Zakkie Zufar Musyaffa', 'Islam ', 'Wiraswasta', 'Jl. Poncosiwalan 35 Ngunut ', '0352463189', '0352463189', null, '2013-06-09 10:54:32', null, null, null, null);
INSERT INTO `siswa` VALUES ('267', '0875', 'Nico Andika Firmansyah', 'L', 'Kediri ', '0000-00-00', 'Yuhanes', 'Islam ', 'Wiraswasta', 'Perumahan Bumi Citra Praja Blok H No. 6 Beduri', '081216665908', '081216665908', null, '2013-06-09 10:54:32', null, null, null, null);
INSERT INTO `siswa` VALUES ('268', '0703', 'Rafli Ahmad Rizqi Salam ', 'L', 'Ponorogo', '0000-00-00', 'Moh. Salam', 'Islam ', 'Swasta', 'Jl. Sanan RT. 02 RW. 01 Patihan Kidul ', '081335285574', '081335285574', null, '2013-06-09 10:54:32', null, null, null, null);
INSERT INTO `siswa` VALUES ('269', '0706', 'Ramadhani Firdaus Amruztam', 'L', 'Ponorogo', '0000-00-00', 'Sudarmaji', 'Islam ', 'Guru', 'Ringin Kembar Karangan Balong', '0352372774', '0352372774', null, '2013-06-09 10:54:32', null, null, null, null);
INSERT INTO `siswa` VALUES ('270', '0708', 'Rayana Rafiul Hayyan ', 'L', 'Ponorogo', '0000-00-00', 'Hariadi Joko Setyawan', 'Islam ', 'Swasta', 'Dsn Ngadiro Pintu Jenangan', '0352531734', '0352531734', null, '2013-06-09 10:54:32', null, null, null, null);
INSERT INTO `siswa` VALUES ('271', '0712', 'Rizky Nova Rizaputra', 'L', 'Ponorogo', '0000-00-00', 'Risa Kusprianto', 'Islam ', 'Pns ', 'Jl Sekar Gayam 44 Tonatan Po', '0813354775550', '0813354775550', null, '2013-06-09 10:54:32', null, null, null, null);
INSERT INTO `siswa` VALUES ('272', '0713', 'Rizqi Taufiqul Hakim', 'L', 'Surakarta', '0000-00-00', 'Arif Hariyadi', 'Islam ', 'Pns', 'Jl. Bhayangkara Gg II 2A Ponorogo', '081335233484', '081335233484', null, '2013-06-09 10:54:32', null, null, null, null);
INSERT INTO `siswa` VALUES ('273', '0718', 'Sevtina Ersa Dwi Vantika', 'P', 'Ponorogo', '0000-00-00', 'Lugito', 'Islam ', 'Swasta', 'Balong Ponorogo', '0352372464', '0352372464', null, '2013-06-09 10:54:32', null, null, null, null);
INSERT INTO `siswa` VALUES ('274', '0720', 'Sintia Nafisa Munawaroh', 'P', 'Ponorogo', '0000-00-00', 'Muhsin ', 'Islam ', 'Swasta', 'Jl. Sanam Patian Kidul Siman Ponorogo', '', '', null, '2013-06-09 10:54:32', null, null, null, null);
INSERT INTO `siswa` VALUES ('275', '0721', 'Syifa Ayu Ratnaduhita', 'P', 'Ponorogo', '0000-00-00', 'Nuroso', 'Islam ', 'Swasta', 'Jl Werkudoro RT 02/ RW 02 Pijeran Siman Po.', '081234192300', '081234192300', null, '2013-06-09 10:54:32', null, null, null, null);
INSERT INTO `siswa` VALUES ('276', '0722', 'Talitha Rafa Sadiya', 'P', 'Ponorogo', '0000-00-00', 'Agus Suprayogi', 'Islam ', 'Swasta ', 'Jl A. Yani 52 Kepatihan Po.', '081335999616', '081335999616', null, '2013-06-09 10:54:32', null, null, null, null);
INSERT INTO `siswa` VALUES ('277', '0507', 'Amrina Rosyada', 'P', 'Sorong', '2004-03-26', 'Sufarchan ', 'Islam', 'PNS', 'Perum Singosaren Blok C36 Po', '081359120171', '081359120171', null, '2013-06-09 10:57:20', null, null, null, null);
INSERT INTO `siswa` VALUES ('278', '0516', 'Aulia Asmaa Zahro Mafdina ', 'P', 'Ponorogo', '2004-06-13', 'Ma\'rub Basironi', 'Islam', 'Swasta', 'Jl. Ontorejo 41 Ponorogo', '485789', '485789', null, '2013-06-09 10:57:20', null, null, null, null);
INSERT INTO `siswa` VALUES ('279', '0521', 'Azizah Nur Rafidah ', 'P', 'Ponorogo', '2004-05-29', 'Budi Purnomo', 'Islam', 'RSUD', 'Jl. Batoro Katong 252 Ponorogo', '085235998915', '085235998915', null, '2013-06-09 10:57:20', null, null, null, null);
INSERT INTO `siswa` VALUES ('280', '0525', 'Chanda Bhirawa Ayub Dwinovasa', 'L', 'Ponorogo', '2003-11-03', 'Wasono', 'Islam', '', 'Des/Kec. Siman Po', '081359636936', '081359636936', null, '2013-06-09 10:57:20', null, null, null, null);
INSERT INTO `siswa` VALUES ('281', '0876', 'Daniswara Pradipa Bhagaskara', 'L', 'Ponorogo', '2003-11-27', 'Sujono S', 'Islam', 'Guru', 'Jl. Bangka No. 85 Slahung', '0352371412', '0352371412', null, '2013-06-09 10:57:20', null, null, null, null);
INSERT INTO `siswa` VALUES ('282', '0527', 'Dhiaul Haqqi Al-Mumtaza', 'L', 'Ponorogo', '2004-03-02', 'Arif Rosyadi', 'Islam', 'Swasta', 'Perum Mangkujayan Jl. Jawa No 18 ', '081335371113', '081335371113', null, '2013-06-09 10:57:20', null, null, null, null);
INSERT INTO `siswa` VALUES ('283', '0541', 'Ihza Arifatur Rizqy', 'P', 'Ponorogo', '2004-04-01', 'Nyamiran ', 'Islam', 'PNS guru', 'Jl. Cipto Mangunkusumo 03 Ponorogo', '7112534', '7112534', null, '2013-06-09 10:57:20', null, null, null, null);
INSERT INTO `siswa` VALUES ('284', '0543', 'Khansa Fathiya Wahyono', 'P', 'Ponorogo', '2003-09-03', 'Joko Dwi Wahyono', 'Islam', 'Wiraswasta', 'Jl. Krisno RT 5 RW 2 Lembah Babadan Ponorogo', '488077', '488077', null, '2013-06-09 10:57:20', null, null, null, null);
INSERT INTO `siswa` VALUES ('285', '0546', 'Latifa Rachma Maisyaroh ', 'P', 'Ponorogo', '2003-10-15', 'Sudarmadji', 'Islam', 'Wiraswasta', 'Jl Bayangkara No 70 Po', '481850', '481850', null, '2013-06-09 10:57:20', null, null, null, null);
INSERT INTO `siswa` VALUES ('286', '0733', 'Luckyta Yupi Norifumi', 'P', 'Ponorogo', '0000-00-00', 'Sumadi ', 'Islam', 'Petani', 'Ds. Gombang RT 02/01 Slahung Ponorogo', '081335598060', '081335598060', null, '2013-06-09 10:57:20', null, null, null, null);
INSERT INTO `siswa` VALUES ('287', '0548', 'M Said Sabilul M ', 'L', 'Ponorogo', '2003-07-17', 'Arif Aminudin', 'Islam', 'Swasta', 'Jl. Gajah Mada 49 Ponorogo', '081335311921', '081335311921', null, '2013-06-09 10:57:20', null, null, null, null);
INSERT INTO `siswa` VALUES ('288', '0551', 'M. Ridlo Rifqi Wahyudi', 'L', 'Ponorogo', '2004-05-29', 'Arif Wahyudi', 'Islam', 'Karya. swasta', 'Jl. Puntodewo No 29 Beton Siman', '4833131', '4833131', null, '2013-06-09 10:57:20', null, null, null, null);
INSERT INTO `siswa` VALUES ('289', '0560', 'Muchammad Sofyan Hadiansyah ', 'L', 'Ponorogo', '2004-04-28', 'Shokibul Hadi', 'Islam', 'Swasta', 'Jl Ahmad Yani No 77 B Po', '7131211', '7131211', null, '2013-06-09 10:57:20', null, null, null, null);
INSERT INTO `siswa` VALUES ('290', '0563', 'Muhammad Ari Putra Ananda', 'L', 'Ponorogo', '2004-04-08', 'Atok Nurhidayanto', 'Islam', 'Swasta', 'Dsn Tunjungan Ds. Blembem Kec. Jambon', '081335112175', '081335112175', null, '2013-06-09 10:57:20', null, null, null, null);
INSERT INTO `siswa` VALUES ('291', '0565', 'Muhammad Hamzah Al-Uhud ', 'L', 'Ponorogo', '2003-12-26', 'Zakkie Ash Shidiqie ', 'Islam', 'Wiraswasta', 'Jl. Poncosiwalan 35 Ngunut babadan PO', '463189', '463189', null, '2013-06-09 10:57:20', null, null, null, null);
INSERT INTO `siswa` VALUES ('292', '0566', 'Muhammad Hanif', 'L', 'Ponorogo', '2003-05-26', 'Mardiyanto', 'Islam', 'Wiraswasta', 'Jl. Cindewilis II No 1 Kertosari', '461364', '461364', null, '2013-06-09 10:57:20', null, null, null, null);
INSERT INTO `siswa` VALUES ('293', '0571', 'Nadia Tsabita Karimah ', 'P', 'Ponorogo', '2003-04-27', 'Ichwan Andrianto', 'Islam', 'PNS', 'Perum Sidomulyo c/6 Babadan Ponorogo', '462503', '462503', null, '2013-06-09 10:57:20', null, null, null, null);
INSERT INTO `siswa` VALUES ('294', '0572', 'Nadya Yusfaiza Salma Maulida', 'P', 'Ponorogo', '2004-04-22', 'Yusna Indarman ', 'Islam', 'Wiraswasta', 'Jl. Muria 46 Ponorogo', '483646', '483646', null, '2013-06-09 10:57:20', null, null, null, null);
INSERT INTO `siswa` VALUES ('295', '0573', 'Nailahhasna Pamelasangkar', 'P', 'Ponorogo', '2004-04-05', 'Gauri Sangkar', 'Islam', 'PNS', 'RT 02/02 Besuki Sambit Ponorogo', '311287', '311287', null, '2013-06-09 10:57:20', null, null, null, null);
INSERT INTO `siswa` VALUES ('296', '0575', 'Nasywa Nur  Fauziana Qurotu \'Aini', 'P', 'Ponorogo ', '2004-08-23', 'Hadi Suroso', 'Islam', 'PNS', 'Sempu Ngebel Po', '0812634933', '0812634933', null, '2013-06-09 10:57:20', null, null, null, null);
INSERT INTO `siswa` VALUES ('297', '0578', 'Nedzard Habibi', 'L', 'Ponorogo', '2003-11-06', 'Abdul Mukti', 'Islam', 'PNS', 'Joresan Mlarak Ponorogo', '311268', '311268', null, '2013-06-09 10:57:20', null, null, null, null);
INSERT INTO `siswa` VALUES ('298', '0579', 'Novembrizsa Farel Ramadiansyah', 'L', 'Ponorogo', '2003-11-18', 'Thomy Prianggono', 'Islam', 'Wiraswasta ', 'Jl. Letjend Suprapto Sukowati 31 Ponorogo', '482661', '482661', null, '2013-06-09 10:57:20', null, null, null, null);
INSERT INTO `siswa` VALUES ('299', '0590', 'Sahrul Ridho Firdausi', 'L', 'Blitar', '2003-10-27', 'M Darda Tatsauri', 'Islam', 'Pg. BNI 46', 'Jl. Parikesit 50 Ponorogo', '463547', '463547', null, '2013-06-09 10:57:20', null, null, null, null);
INSERT INTO `siswa` VALUES ('300', '0597', 'Talitha Rasda Kamalia', 'P', 'Ponorogo', '2003-11-24', 'Agus Riyanto, SE', 'Islam', 'Wiraswasta', 'Jl. Raya Mlarak Sambit Siwalan Mlarak Po', '311328', '311328', null, '2013-06-09 10:57:20', null, null, null, null);
INSERT INTO `siswa` VALUES ('301', '0602', 'Yahya Ayyasy Al-Muhandis', 'L', 'Ponorogo', '2003-12-01', 'Rivani Surendra', 'Islam', 'Swasta', 'Jl. Anjani 7 Ponorogo', '487884', '487884', null, '2013-06-09 10:57:20', null, null, null, null);
INSERT INTO `siswa` VALUES ('302', '0603', 'Yasmin Nurul Fauzia', 'P', 'Bojonegoro', '2003-04-03', 'Nizam Ul Muluk', 'Islam', 'PNS', 'Jl. Lawu 78 onorogo', '081330173254', '081330173254', null, '2013-06-09 10:57:20', null, null, null, null);
INSERT INTO `siswa` VALUES ('303', '0606', 'Zara Febrasanti ', 'P', 'Ponorogo', '2004-02-11', 'Rudi Siswoyo', 'Islam', 'PNS', 'Perum Grisimai CB 10 Ponorogo', '081355652227', '081355652227', null, '2013-06-09 10:57:20', null, null, null, null);
INSERT INTO `siswa` VALUES ('308', '0497', 'Abdullah Umar', 'L', 'Ponorogo', '2004-05-16', 'Ghufranuddin ', 'Islam', 'Wiraswasta', 'Jl. Stadion Timur No 11', '485777', '485777', null, '2013-06-09 10:59:24', null, null, null, null);
INSERT INTO `siswa` VALUES ('309', '0498', 'Adhen Khelvin Ardhana ', 'L', 'Ponorogo', '2003-08-25', 'Sugeng Riyanto', 'Islam', 'Dagang', 'Jl Batoro Katong No 67 cokromenggalan PO', '482155', '482155', null, '2013-06-09 10:59:24', null, null, null, null);
INSERT INTO `siswa` VALUES ('310', '0500', 'Adinda Husna Salsabela', 'P', 'Ponorogo', '2003-12-05', 'Munif Alfata H', 'Islam', 'wiraswasta', 'Ds. Ngrupit Jenangan Ponorogo', '486702', '486702', null, '2013-06-09 10:59:24', null, null, null, null);
INSERT INTO `siswa` VALUES ('311', '0502', 'Ahbib Ainur Rafiq', 'L', 'Pacitan', '2003-07-01', 'Imam Barokah', 'Islam', 'PNS', 'Jl. MT. Haryono 14 Bedi Kulon Bungkal', '373002', '373002', null, '2013-06-09 10:59:24', null, null, null, null);
INSERT INTO `siswa` VALUES ('312', '0506', 'Alvisto Zenaz Arzaqi', 'L', 'Ponorogo', '2004-05-11', 'Hariyadi', 'Islam', 'Guru', 'Dusun Krajan 2 RT 04/01 Jenangan Ponorogo', '531030', '531030', null, '2013-06-09 10:59:24', null, null, null, null);
INSERT INTO `siswa` VALUES ('313', '0508', 'Ana Karimatul Sholikah', 'P', 'Ponorogo', '2003-06-02', 'Tumirin', 'Islam', 'Wiraswasta', 'Jl. Tanjung 40 Siman Ponorogo', '7101655', '7101655', null, '2013-06-09 10:59:24', null, null, null, null);
INSERT INTO `siswa` VALUES ('314', '0510', 'Aracelly Anindya Shafa Safira', 'P', 'Ponorogo', '2003-12-08', 'Doni Setyawan', 'Islam', 'PNS', 'Jl. Pos Barat 12 Ngrupit Ponorogo', '489310', '489310', null, '2013-06-09 10:59:24', null, null, null, null);
INSERT INTO `siswa` VALUES ('315', '0512', 'Arjuna Satria Dewa Bagaskara', 'L', 'Madiun', '2004-06-14', 'Nur Junaidi ', 'Islam', 'Swasta', 'Ds. Kunti Sampung Ponorogo', '08159070834', '08159070834', null, '2013-06-09 10:59:24', null, null, null, null);
INSERT INTO `siswa` VALUES ('316', '0514', 'Asa Faradiba Hilmi', 'P', 'Ponorogo', '2003-12-09', 'Syamsul Huda', 'Islam', 'Guru', 'Dusun Tempel Desa Turi Kec. Jetis Ponorogo', '08113317605', '08113317605', null, '2013-06-09 10:59:24', null, null, null, null);
INSERT INTO `siswa` VALUES ('317', '0524', 'Chaidar Juang Nasrul Fath', 'L', 'Ponorogo', '2003-10-17', 'Tri Amanto', 'Islam', 'Wiraswasta', 'Dkh Bedangan ds Pulung Kec. Pulung Ponorogo', '571883', '571883', null, '2013-06-09 10:59:24', null, null, null, null);
INSERT INTO `siswa` VALUES ('318', '0533', 'Febrina Mutiara Nabila', 'P', 'Ponorogo', '2004-02-18', 'Mukhirto', 'Islam', 'Wiraswasta', 'Sekayu RT 03/01 Gandukepuh sukerejo PO', '751361', '751361', null, '2013-06-09 10:59:24', null, null, null, null);
INSERT INTO `siswa` VALUES ('319', '0536', 'Gloria Alfiana Jackie ', 'P', 'Ponorogo', '2003-05-09', 'Djaki', 'Islam', 'Wiraswasta', 'RT 01 RW 02 Krajan Jambon Ponorogo', '752757', '752757', null, '2013-06-09 10:59:24', null, null, null, null);
INSERT INTO `siswa` VALUES ('320', '0537', 'Gymnastiar M.R', 'L', 'Ponorogo', '2003-10-24', 'Totok Dwi Bagyo', 'Islam', 'Wiraswasta', 'Carat 62 Kauman Ponorogo', '751420', '751420', null, '2013-06-09 10:59:24', null, null, null, null);
INSERT INTO `siswa` VALUES ('321', '0538', 'Habib Al Huda', 'L', 'Ponorogo', '2003-09-07', 'Agus Alrianto', 'Islam', 'PNS ', 'Jl. Yos Sudarso Gg 2 Ponorogo', '03527140077', '03527140077', null, '2013-06-09 10:59:24', null, null, null, null);
INSERT INTO `siswa` VALUES ('322', '0540', 'Helmalia Ayuslikha Najatul Hayati', 'P', 'Ponorogo', '2003-09-25', 'Budiono', 'Islam', 'Wiraswasta', 'Ds. Jetis Kec. Jetis Ponorogo', '085235377895', '085235377895', null, '2013-06-09 10:59:24', null, null, null, null);
INSERT INTO `siswa` VALUES ('323', '0547', 'Lu\'ay Ghufrol Masyawi', 'L', 'Ponorogo', '2004-03-10', 'Isnugroho', 'Islam', 'PNS', 'Jl. Semenremeng 13 Kertosari Ponorogo', '7100474', '7100474', null, '2013-06-09 10:59:24', null, null, null, null);
INSERT INTO `siswa` VALUES ('324', '0550', 'M. Radya Hera Fitrayuda', 'L', 'Ponorogo', '2003-11-25', 'Wahyudi S', 'Islam', 'PNS', 'Jl. Suminten Siman Ponorogo', '081359922230', '081359922230', null, '2013-06-09 10:59:24', null, null, null, null);
INSERT INTO `siswa` VALUES ('325', '0559', 'Muadz Habiburrahman ', 'L', 'Ponorogo', '2003-04-05', 'Amiruddin', 'Islam', 'Wiraswasta', 'Jl. Wonosalam Kadipaten Ponorogo', '081359271770', '081359271770', null, '2013-06-09 10:59:24', null, null, null, null);
INSERT INTO `siswa` VALUES ('326', '0562', 'Muhamad Wildan Syaifuloh', 'L', 'Ponorogo', '2003-09-12', 'Lukman Hakim', 'Islam', 'Swasta', 'Jl. Letjend Suprapto 69 III N7C Ponorogo', '081234222134', '081234222134', null, '2013-06-09 10:59:24', null, null, null, null);
INSERT INTO `siswa` VALUES ('327', '0567', 'Muhammad Hasan ', 'L', 'Ponorogo', '2003-11-22', 'H. Supriono M', 'Islam', 'Wiraswasta', 'Jl Letjen Suprapto No 101 Ponorogo', '461707', '461707', null, '2013-06-09 10:59:24', null, null, null, null);
INSERT INTO `siswa` VALUES ('328', '0582', 'Rahmadiansyah Putra Fuadi ', 'L', 'Ponorogo', '2003-07-14', 'Muh. Syahrul Fuadi', 'Islam', 'Wiraswasta', 'RT 01 RW 01 Dusun II Madusari Siman Po', '484648', '484648', null, '2013-06-09 10:59:24', null, null, null, null);
INSERT INTO `siswa` VALUES ('329', '0583', 'Raisya Daniswari Azzahra', 'P', 'Ponorogo', '2004-04-05', 'Dawam Suhada', 'Islam', 'PNS', 'Jl. Tunggal Asri Bareng Ponorogo', '085649227007', '085649227007', null, '2013-06-09 10:59:24', null, null, null, null);
INSERT INTO `siswa` VALUES ('330', '0586', 'Risca Zahra Permatahati', 'P', 'Ponorogo', '2003-04-30', 'Aris Siswanto', 'Islam', 'Swasta', 'Tamansari Sambit Ponorogo', '081556495727', '081556495727', null, '2013-06-09 10:59:24', null, null, null, null);
INSERT INTO `siswa` VALUES ('331', '0588', 'Rizqi Salma Dewi', 'P', 'Ponorogo', '2004-04-30', 'Sudjito', 'Islam', 'Swasta', 'Jl Kumbokarno 55 A Ponorogo', '485162', '485162', null, '2013-06-09 10:59:24', null, null, null, null);
INSERT INTO `siswa` VALUES ('332', '0589', 'Ryan Maulana Ardiyanto', 'L', 'Ponorogo', '2004-04-08', 'Deddy Setyanto', 'Islam', 'Wiraswasta', 'Jl. Diponegoro No 48 Jetis Ponorogo', '08125905614', '08125905614', null, '2013-06-09 10:59:24', null, null, null, null);
INSERT INTO `siswa` VALUES ('333', '0596', 'Syalya Dhivayu Karisma', 'P', 'Ponorogo', '2004-07-11', 'Edy Nur Syamsu', 'Islam', 'PNS', 'Jl. Ternate 13 A Mankujayan Ponorogo', '485138', '485138', null, '2013-06-09 10:59:24', null, null, null, null);
INSERT INTO `siswa` VALUES ('334', '0598', 'Tharisma Khoirunnisa ', 'P', 'Ponorogo', '2003-07-04', 'Agung P', 'Islam', 'TNI', 'Ds Sekaran Siman Ponorogo', '081259190337', '081259190337', null, '2013-06-09 10:59:24', null, null, null, null);
INSERT INTO `siswa` VALUES ('339', '0501', 'Adinda Nadhifa Ulyatantri', 'P', 'Ponorogo', '2004-05-15', 'Triyono', 'Islam', 'Guru', 'Jl. S. Drajat 14 Cekok Babadan Ponorogo', '462533', '462533', null, '2013-06-09 11:01:17', null, null, null, null);
INSERT INTO `siswa` VALUES ('340', '0504', 'Alfin Naufal Al Fa\'iq ', 'L', 'Magetan ', '2004-04-29', 'Nanang Harianto ', 'Islam', 'Guru ', 'Jl. Parikesit 9 Kepatihan ', '081335423607', '081335423607', null, '2013-06-09 11:01:17', null, null, null, null);
INSERT INTO `siswa` VALUES ('341', '0509', 'Anindya Magfira Zain', 'P', 'Ponorogo', '2004-01-09', 'Umar Jamaludin ', 'Islam', 'Swasta', 'Jl. Wono Pringgo IV No 05 Kertosari Jaya Po', '489589', '489589', null, '2013-06-09 11:01:17', null, null, null, null);
INSERT INTO `siswa` VALUES ('342', '0513', 'Aryo Gilang Pratama', 'L', 'Bandung', '2003-12-16', 'Winaryo', 'Islam', 'wiraswasta', 'Ds. Ronosentanan Kec. Siman', '081359905662', '081359905662', null, '2013-06-09 11:01:17', null, null, null, null);
INSERT INTO `siswa` VALUES ('343', '0519', 'Avief Kharisma Nur\'aini', 'P', 'Ponorogo', '2003-12-16', 'Edi Marjuni', 'Islam', 'Wiraswasta', 'Jl. Niken Gandini 22 Singosaren Po', '489400', '489400', null, '2013-06-09 11:01:17', null, null, null, null);
INSERT INTO `siswa` VALUES ('344', '0522', 'Bisma Mufti Al Furqon', 'L', 'Ponorogo', '2003-07-22', 'Suyadi', 'Islam', 'PNS', 'RT 03 RW 02 Nailan Slahung Ponorogo', '372306', '372306', null, '2013-06-09 11:01:17', null, null, null, null);
INSERT INTO `siswa` VALUES ('345', '0523', 'Cahaya Salma Naura ', 'P', 'Ponorogo ', '2004-06-20', 'Sukat', 'Islam', 'PNS', 'Jl Parang centung 27 Patihan wetan ', '486832', '486832', null, '2013-06-09 11:01:17', null, null, null, null);
INSERT INTO `siswa` VALUES ('346', '0526', 'Denny Arrahman', 'L', 'Ponorogo', '2003-09-01', 'Syaifuddin Zuhri', 'Islam', 'SWASTA', 'Jl. Jola Juli 110 Tambakbayan Po', '485804', '485804', null, '2013-06-09 11:01:17', null, null, null, null);
INSERT INTO `siswa` VALUES ('347', '0528', 'Duarte Hawa Khalida', 'P', 'Ponorogo', '2003-12-26', 'Aris Hariyanto', 'Islam', 'Wiraswasta', 'Jl. Kyai Mojo 34 Ponorogo', '482734', '482734', null, '2013-06-09 11:01:17', null, null, null, null);
INSERT INTO `siswa` VALUES ('348', '0531', 'Farida Muthi\'ah Fathin ', 'P', 'Kediri', '2004-05-05', 'Miftakul Muhtadin', 'Islam', 'Swasta', 'Jenangan', '531135', '531135', null, '2013-06-09 11:01:17', null, null, null, null);
INSERT INTO `siswa` VALUES ('349', '0532', 'Fatanita Risma Hijriyati', 'P', 'Ponorogo', '2003-08-25', 'Yahudi', 'Islam', 'Guru', 'Ds Siderojo Japan Ponorogo', '487402', '487402', null, '2013-06-09 11:01:17', null, null, null, null);
INSERT INTO `siswa` VALUES ('350', '0553', 'Maulana Adie Saputra', 'L', 'Ponorogo', '2003-04-02', 'Sumingan', 'Islam', 'Swasta', 'Jl Wilis No 3 Ponorogo', '462857', '462857', null, '2013-06-09 11:01:17', null, null, null, null);
INSERT INTO `siswa` VALUES ('351', '0554', 'Melvina Rahma Azalia', 'P', 'Lebak', '2004-11-03', 'Agus Supriyadi', 'Islam', 'Polri', 'Ds. Ronowijayan Siman Ponorogo', '081335470054', '081335470054', null, '2013-06-09 11:01:17', null, null, null, null);
INSERT INTO `siswa` VALUES ('352', '0555', 'Moch. Abdul Mufid Alawi Falikh', 'L', 'Ponorogo', '2004-03-20', 'Edi siswanto', 'Islam', 'Wiraswasta', 'Desa Pulosari RT 10 Rw 01 Jambon Ponorogo', '081335768679', '081335768679', null, '2013-06-09 11:01:17', null, null, null, null);
INSERT INTO `siswa` VALUES ('353', '0557', 'Mohammad Faisal Althafsyah', 'L', 'Ponorogo', '2004-04-01', 'Muh. Nasrulsyah', 'Islam', 'Wiraswasta', 'Jl Sultan Agung 70 A Ponorogo', '486699', '486699', null, '2013-06-09 11:01:17', null, null, null, null);
INSERT INTO `siswa` VALUES ('354', '0558', 'Mohammad Nurul Faiz Abdillah', 'L', 'Ponorogo', '2003-12-13', 'Rudi Nur Hananto', 'Islam', 'PARAMEDIS', 'Jl. Jola Juli 110 Tambakbayan Po', '484098', '484098', null, '2013-06-09 11:01:17', null, null, null, null);
INSERT INTO `siswa` VALUES ('355', '0561', 'Muh Albarr Billah', 'L', 'Ponorogo', '2003-04-16', 'Agung Prasetyo', 'Islam', 'Wiraswasta', 'Jl. Dewi Kunthi Po norogo', '081234282844', '081234282844', null, '2013-06-09 11:01:17', null, null, null, null);
INSERT INTO `siswa` VALUES ('356', '0564', 'Muhammad Bima Raul Gibran', 'L', 'Ponorogo', '2003-08-05', 'Andi Triyanto Widodo', 'Islam', 'Swasta', 'Jl. Anjasmoro 44 Ponorogo', '085235649963', '085235649963', null, '2013-06-09 11:01:17', null, null, null, null);
INSERT INTO `siswa` VALUES ('357', '0569', 'Muhammad Zhoriif Arkaanul Hilmi', 'L', 'Ponorogo', '2004-02-19', 'Ari Hudi Siswanto', 'Islam', 'Swasta ', 'Jl. Jawa g 5 No 17 mangkujayan ', '', '', null, '2013-06-09 11:01:17', null, null, null, null);
INSERT INTO `siswa` VALUES ('358', '0570', 'Nabil Yazid Syuhada\'', 'L', 'Ponorogo', '2003-10-14', 'Rochmat Cipto S', 'Islam', 'Swasta', 'Bajang mlarak', '312282', '312282', null, '2013-06-09 11:01:17', null, null, null, null);
INSERT INTO `siswa` VALUES ('359', '0574', 'Najma Chusna Khuluqi', 'P', 'Ponorogo', '2004-04-17', 'Sarbianto', 'Islam', 'PNS', 'Desa Gombang Slahung Ponorogo', '371844', '371844', null, '2013-06-09 11:01:17', null, null, null, null);
INSERT INTO `siswa` VALUES ('360', '0577', 'Naufal Muqsith Wicaksana', 'L', 'Ponorogo', '2003-11-29', 'Sunardi', 'Islam', 'Guru', 'Jl. R Sentanan 19 Ngloning Slahung Ponorogo', '0352-371314', '0352-371314', null, '2013-06-09 11:01:17', null, null, null, null);
INSERT INTO `siswa` VALUES ('361', '0580', 'Nurrozaan Hanif Rahman', 'L', 'Ponorogo', '2003-08-13', 'Ferry Haryanto', 'Islam', 'Wiraswasta', 'Jl. Asmorondono 31 Ponorogo', '481690', '481690', null, '2013-06-09 11:01:17', null, null, null, null);
INSERT INTO `siswa` VALUES ('362', '0581', 'Rafif Naufal Muzhaffar ', 'L', 'Ponorogo', '2004-04-18', 'Basuki', 'Islam', 'PNS', 'Sedah Jenangan Ponorogo', '08123421291', '08123421291', null, '2013-06-09 11:01:17', null, null, null, null);
INSERT INTO `siswa` VALUES ('363', '0594', 'Syafiqa Umma Firdausa', 'P', 'Ponorogo', '2004-05-27', 'Ahmad Zubaidi', 'Islam', 'Dosen STAIN', 'Jl. Imam Bonjol 41 Ponorogo', '483663', '483663', null, '2013-06-09 11:01:17', null, null, null, null);
INSERT INTO `siswa` VALUES ('364', '0599', 'Wahyu Putri Maulidha', 'P', 'Ponorogo', '2004-04-27', 'Hadi Rustiyono', 'Islam', 'PNS', 'Ds Singkil Balong Ponorogo', '371441', '371441', null, '2013-06-09 11:01:17', null, null, null, null);
INSERT INTO `siswa` VALUES ('365', '0600', 'Wiffaq Yaqdhani Al Farras', 'L', 'Ponorogo', '2003-07-23', 'Sulani', 'Islam', 'Wiraswasta ', 'RT 1/1 Karanglo Ngasinan Jetis Po', '08123401981', '08123401981', null, '2013-06-09 11:01:17', null, null, null, null);
INSERT INTO `siswa` VALUES ('370', '0499', 'Adiba Aghnia Shaufani Azmam', 'P', 'Ponorogo ', '2004-03-07', 'Afif Zaki M', 'Islam', 'Swasta', 'Jln. Jendral sudirman Balong Ponorogo', '371269', '371269', null, '2013-06-09 11:03:35', null, null, null, null);
INSERT INTO `siswa` VALUES ('371', '0503', 'Akmal Wistara Muhammad Azami', 'L', 'Ponorogo', '2004-03-10', 'Agus Purwanto', 'Islam', 'Swasta', 'Perum Sidomulyo 44 Babadan Ponorogo', '462506', '462506', null, '2013-06-09 11:03:35', null, null, null, null);
INSERT INTO `siswa` VALUES ('372', '0505', 'Ali Yuji Saito', 'L', 'Ponorogo', '2003-07-31', 'Etsuro Saito', 'Islam', 'Wiraswasta', 'Jl Seloaji RT 2 RW 2 Kadipaten Babadan Po', '085735859845', '085735859845', null, '2013-06-09 11:03:35', null, null, null, null);
INSERT INTO `siswa` VALUES ('373', '0511', 'Arif Naufal As\'ad', 'L', 'Ponorogo', '2004-01-29', 'Muhamad Didik Achyani', 'Islam', 'Swasta', 'Jl Lombok no 11 Po', '085233778379', '085233778379', null, '2013-06-09 11:03:35', null, null, null, null);
INSERT INTO `siswa` VALUES ('374', '0515', 'Astrid Vanessa Putri Erwanda', 'P', 'Ponorogo', '2004-02-05', 'Herianto', 'Islam', 'Wiraswasta', 'Jl. Raya Jenangan RT 01 RW 1', '531332', '531332', null, '2013-06-09 11:03:35', null, null, null, null);
INSERT INTO `siswa` VALUES ('375', '0518', 'Aura Najla Alfatika ', 'P', 'Madiun ', '2004-07-16', 'Sukamto', 'Islam', 'PNS', 'Jl. Brigjen Katamso G2 Ponorogo', '08123441474', '08123441474', null, '2013-06-09 11:03:35', null, null, null, null);
INSERT INTO `siswa` VALUES ('376', '0520', 'Azharia Nur Arasy', 'P', 'Ponorogo', '2004-06-17', 'Dasuki, S.Hut', 'Islam', 'Wiraswasta', 'Jl. Lawu 15 Ponorogo', '7108249', '7108249', null, '2013-06-09 11:03:35', null, null, null, null);
INSERT INTO `siswa` VALUES ('377', '0529', 'Erliana Ayu Kartikasari', 'P', 'Ponorogo', '2004-04-21', 'Heri Susanto', 'Islam', 'Swasta', 'Jl. Terate 103 Ponorogo', '08125973386', '08125973386', null, '2013-06-09 11:03:35', null, null, null, null);
INSERT INTO `siswa` VALUES ('378', '0530', 'Farida Amalina Fahrulloh', 'P', 'Ponorogo', '2004-01-19', 'Slamet Riyadi', 'Islam', 'swasta', 'Serangan Mlarak', '7101783', '7101783', null, '2013-06-09 11:03:35', null, null, null, null);
INSERT INTO `siswa` VALUES ('379', '0534', 'Ganis Aprilia Zulfa Rizqita', 'P', 'Ponorogo', '2004-04-19', 'Moh. Agung ', 'Islam', 'Wiraswasta', 'Jl. Raya Jenangan Ds/Kec. Jenangan Po', '085755080585', '085755080585', null, '2013-06-09 11:03:35', null, null, null, null);
INSERT INTO `siswa` VALUES ('380', '0535', 'Gilang Rahmawan ', 'L', 'Ponorogo', '2003-08-06', 'Budi Santoso', 'Islam', '-', 'Ds Wonokerto Jetis Ponorogo', '085230330575', '085230330575', null, '2013-06-09 11:03:35', null, null, null, null);
INSERT INTO `siswa` VALUES ('381', '0542', 'Irfan Hanif KR', 'L', 'Ponorogo', '2003-09-09', 'Sofyan Jauhari', 'Islam', 'Guru', 'Menang Jambon', '753165', '753165', null, '2013-06-09 11:03:35', null, null, null, null);
INSERT INTO `siswa` VALUES ('382', '0544', 'Khanza Adilla', 'P', 'Ponorogo', '2004-04-30', 'Didik Harmanto', 'Islam', 'Guru', 'Jl Kendalisodo Siman Po', '081946314661', '081946314661', null, '2013-06-09 11:03:35', null, null, null, null);
INSERT INTO `siswa` VALUES ('383', '0545', 'Laila Nur \'azizah', 'P', 'Madiun', '2004-01-11', 'Drs. Bambang Widiyah S.', 'Islam', 'Dosen', 'Jl. Letjend Suprapto Gg I no 7', '487412', '487412', null, '2013-06-09 11:03:35', null, null, null, null);
INSERT INTO `siswa` VALUES ('384', '0552', 'Mas\'ud Ashrul Fadhli', 'L', 'Ponorogo', '2003-07-22', 'Anton Famuji', 'Islam', 'Pedagang ', 'Dusun Jetis I RT 04/01 Ds/Kec. Jetis Po', '081359270599', '081359270599', null, '2013-06-09 11:03:35', null, null, null, null);
INSERT INTO `siswa` VALUES ('385', '0556', 'Mohammad Dzaki Arifin', 'L', 'Ponorogo', '2004-03-28', 'Edy Sucipto', 'Islam', 'PNS', 'RT 02 RW 02 Simo Slahung Po', '085235284166', '085235284166', null, '2013-06-09 11:03:35', null, null, null, null);
INSERT INTO `siswa` VALUES ('386', '0606', 'Muhammad Yusuf Habibie', 'L', 'Ponorogo', '0000-00-00', 'Ahmad Nur Edi ', 'Islam', 'Guru', 'Jl. Letjen S. Sukowati No. 122 A Ponorogo', '484023', '484023', null, '2013-06-09 11:03:35', null, null, null, null);
INSERT INTO `siswa` VALUES ('387', '0576', 'Naufal Haidhar Efanda', 'L', 'Ponorogo', '2003-10-27', 'Shofan Hadi ', 'Islam', 'Wiraswasta', 'Jl. Dr. Sutomo 32 Ponorogo', '482864', '482864', null, '2013-06-09 11:03:35', null, null, null, null);
INSERT INTO `siswa` VALUES ('388', '0584', 'Ratu Ayuthia Sekar Adia Vangga ', 'P', 'Ponorogo', '2003-12-22', 'Sasmito Arif ', 'Islam', 'Wiraswasta', 'Ds. Gelangkulon sampung ', '751192', '751192', null, '2013-06-09 11:03:35', null, null, null, null);
INSERT INTO `siswa` VALUES ('389', '0587', 'Risqi  Febrianti', 'P', 'Ponorogo', '2004-02-16', 'Sunari', 'Islam', 'Wiraswasta ', 'Tugu Mlarak Ponorogo', '08123278946', '08123278946', null, '2013-06-09 11:03:35', null, null, null, null);
INSERT INTO `siswa` VALUES ('390', '0591', 'Salma Salwa Salsabila', 'P', 'Ponorogo', '2004-01-23', 'Fahrudi Effendi', 'Islam', 'Swasta ', 'Ds. Kec. Jenangan Ponorogo', '531318', '531318', null, '2013-06-09 11:03:35', null, null, null, null);
INSERT INTO `siswa` VALUES ('391', '0593', 'Surya Naufal Abrori ', 'L', 'Ponorogo', '2003-04-23', 'Abri Susilo', 'Islam', 'Dinas PU', 'Perum Kertosari Indah C1 32 Ponorogo', '484669', '484669', null, '2013-06-09 11:03:35', null, null, null, null);
INSERT INTO `siswa` VALUES ('392', '0595', 'Syahrul Dzaky Asy Syafiq ', 'L', 'ponorogo', '2003-06-12', 'Supriyono ', 'Islam', 'Wiraswasta', 'Jl Besaran RT3 RW 1 Brahu Siman Ponorogo', '081359302578', '081359302578', null, '2013-06-09 11:03:35', null, null, null, null);
INSERT INTO `siswa` VALUES ('393', '0601', 'Wika Hamidan Pramulya', 'L', 'Ponorogo', '2003-12-07', 'Prayitno', 'Islam', 'Guru', 'Desa Pondok Babadan Ponorogo', '488432', '488432', null, '2013-06-09 11:03:35', null, null, null, null);
INSERT INTO `siswa` VALUES ('394', '0604', 'Yumna Alya Az-Zahro', 'P', 'Ponorogo', '2004-08-10', 'Khoirul Huda', 'Islam', 'Guru', 'Jl. Sidodadi RT3 RW2 Gupolo ', '085235800501', '085235800501', null, '2013-06-09 11:03:35', null, null, null, null);
INSERT INTO `siswa` VALUES ('395', '0605', 'Zahira \'Izzatul Millah ', 'P', 'Ponorogo', '2004-03-20', 'Munif Ali Anhari ', 'Islam', 'PNS', 'Danyang RT2 RW2 Sukosari Babadan ', '08125988309', '08125988309', null, '2013-06-09 11:03:35', null, null, null, null);
INSERT INTO `siswa` VALUES ('401', '0406', 'Abdurrahman Faqih ', 'L', 'Ponorogo', '0000-00-00', 'Samsudin ', 'Islam', 'Wiraswasta ', 'Jl. Sultan Agung 89 Ponorogo ', '7140616', '7140616', null, '2013-06-09 11:05:52', null, null, null, null);
INSERT INTO `siswa` VALUES ('402', '0411', 'Ahmad Muhtadi Alfin Tsa Alits', 'L', 'Ponorogo', '0000-00-00', 'Senen', 'Islam', 'Wiraswasta', 'Jintap, Wonoketro, Jetis Ponorogo', '483294', '483294', null, '2013-06-09 11:05:52', null, null, null, null);
INSERT INTO `siswa` VALUES ('403', '0413', 'Akbar Nur Rochman', 'L', 'Ponorogo', '0000-00-00', 'Muhammad Kujaeni', 'Islam', 'PNS', 'Jl. Ahmad Yani 42 Ponorogo ', '461680', '461680', null, '2013-06-09 11:05:52', null, null, null, null);
INSERT INTO `siswa` VALUES ('404', '0415', 'Alfan Nadziev Mazaya Ichwany', 'L', 'Ponorogo', '2002-11-11', 'Ichwan Wahono ', 'Islam', 'Guru ', 'Jl. Pramuka Gg II Ponorogo ', '7610270', '7610270', null, '2013-06-09 11:05:52', null, null, null, null);
INSERT INTO `siswa` VALUES ('405', '0416', 'Alfian Rosyidan Al-Haq', 'L', 'Ponorogo', '2002-02-04', 'Toni Joko Pitono', 'Islam', 'Guru swasta', 'Jl. KS. Suitubun Gg I No 2 Ponorogo', '488929', '488929', null, '2013-06-09 11:05:52', null, null, null, null);
INSERT INTO `siswa` VALUES ('406', '0419', 'Andrian Novanto Ramadhan', 'L', 'Ponorogo', '2002-06-11', 'Nanang Hariyanto', 'Islam', 'Swasta ', 'Jl. Perniagaan 222 Ds Pondok RT 03/03', '08123113626', '08123113626', null, '2013-06-09 11:05:52', null, null, null, null);
INSERT INTO `siswa` VALUES ('407', '0421', 'Aqmarinda Shallika Pranesti', 'P', 'Serang ', '0000-00-00', 'Yanto', 'Islam', 'TNI AD', 'JL. Telutur', '371029', '371029', null, '2013-06-09 11:05:52', null, null, null, null);
INSERT INTO `siswa` VALUES ('408', '0425', 'Bagas Putra Pratama ', 'L', 'Ponorogo', '0000-00-00', 'Hariyudi Irwantoro', 'Islam', 'Wiraswasta', 'Jl. Ki Ageng Selo 10 Setono Ponorogo', '081359267357', '081359267357', null, '2013-06-09 11:05:52', null, null, null, null);
INSERT INTO `siswa` VALUES ('409', '0432', 'Diva Setya Damayanti ', 'P', 'Ponorogo', '0000-00-00', 'Agus Setya Budi ', 'Islam', 'PNS', 'Perum Griya Asa 02 Jl. Menur 05', '485566', '485566', null, '2013-06-09 11:05:52', null, null, null, null);
INSERT INTO `siswa` VALUES ('410', '0434', 'Dyah Mayang Seruni', 'P', 'Ponorogo', '2002-03-10', 'Roh Edi Aji Waskito', 'Islam', '', 'Jl. KH Kasan Besari No 7', '482103', '482103', null, '2013-06-09 11:05:52', null, null, null, null);
INSERT INTO `siswa` VALUES ('411', '0435', 'Fadhilah Nafiisah Sa\'ad', 'P', 'Ponorogo', '0000-00-00', 'H. Syafruddin', 'Islam', 'Dagang bangunan', 'Jl. Arif Rahman Hakim No 21 Keniten', '487457', '487457', null, '2013-06-09 11:05:52', null, null, null, null);
INSERT INTO `siswa` VALUES ('412', '0437', 'Fadilatu Rifai Nuzulul Ramadani', 'L', 'Ponorogo', '2002-07-11', 'Eko Rusandi ', 'Islam', 'Wiraswasta ', 'Jl. S. Sukowati 24 Keniten Ponorogo ', '485623', '485623', null, '2013-06-09 11:05:52', null, null, null, null);
INSERT INTO `siswa` VALUES ('413', '0438', 'Fairuz Zahra ', 'P', 'Ponorogo', '2003-06-06', 'Wahana', 'Islam', 'Karyawan', 'Jl. MT. Haryono 47B Jingglong Ponorogo', '312369', '312369', null, '2013-06-09 11:05:52', null, null, null, null);
INSERT INTO `siswa` VALUES ('414', '0443', 'Fattiya Nur Fitriantari ', 'P', 'Ponorogo', '0000-00-00', 'Ajar Nurwijdhi ', 'Islam', 'Swasta', 'Jl. Parang Centung 62 Ponorogo ', '', '', null, '2013-06-09 11:05:52', null, null, null, null);
INSERT INTO `siswa` VALUES ('415', '0451', 'Hinggil Miqdam Anamila ', 'L', 'Ponorogo', '0000-00-00', 'Kusni ', 'Islam', 'Guru ', 'Perum Asabri A11 Pijeran Siman Po.', '081335430113', '081335430113', null, '2013-06-09 11:05:52', null, null, null, null);
INSERT INTO `siswa` VALUES ('416', '0455', 'Ilham Jiwandaru ', 'L', 'Pacitan ', '0000-00-00', 'Rudi Suwandaru ', 'Islam', 'Guru ', 'Jl. W. Pringgo 4 Kertosari Babadan Po. ', '488180', '488180', null, '2013-06-09 11:05:52', null, null, null, null);
INSERT INTO `siswa` VALUES ('417', '0464', 'Malika Ayunasari ', 'P', 'Ponorogo', '2002-05-07', 'Panut', 'Islam', 'PNS', 'Ds. Kradinan Kec. Dolopo, Kab. Madiun', '481780', '481780', null, '2013-06-09 11:05:52', null, null, null, null);
INSERT INTO `siswa` VALUES ('418', '0467', 'Muhamad Abdul Chayi', 'L', 'Ponorogo', '2002-11-04', 'Suseno', 'Islam', 'Wiraswasta', 'Jl. Jenderal Sudirman Balong', '', '', null, '2013-06-09 11:05:52', null, null, null, null);
INSERT INTO `siswa` VALUES ('419', '0468', 'Muhammad Azizul Hakim ', 'L', 'Ponorogo', '0000-00-00', 'Murgianto ', 'Islam', 'Swasta ', 'Jl. Sekar Putih No. 5 Tonatan Ponorogo ', '488463', '488463', null, '2013-06-09 11:05:52', null, null, null, null);
INSERT INTO `siswa` VALUES ('420', '0471', 'Muhammad Hakam Affan ', 'L', 'Ponorogo', '0000-00-00', 'Firman Andrian H.', 'Islam', 'Peg. Swasta ', 'Jl. Krakatau 31 Ponorogo ', '', '', null, '2013-06-09 11:05:52', null, null, null, null);
INSERT INTO `siswa` VALUES ('421', '0472', 'Muhammad Hanif Fuadi ', 'L', 'Pontianak ', '2002-02-09', 'Slamet Haryadi ', 'Islam', 'PNS', 'Jl. Barito 12B Kadipaten Ponorogo ', '488123', '488123', null, '2013-06-09 11:05:52', null, null, null, null);
INSERT INTO `siswa` VALUES ('422', '0474', 'Muhammad Thoriq Alfian Alfirdaosi', 'L', 'Ponorogo', '2003-02-03', 'Miswanto', 'Islam', 'Swasta', 'Jl. Abiyoso Mengunsuman Ponorogo ', '751917', '751917', null, '2013-06-09 11:05:52', null, null, null, null);
INSERT INTO `siswa` VALUES ('423', '0477', 'Naf\'an Haykal Kamil', 'L', 'Ponorogo', '0000-00-00', 'Joni Supriadi', 'Islam', 'Swasta', 'Jl. Srigading No 9 Polorejo Babadan', '0352-7130336', '0352-7130336', null, '2013-06-09 11:05:52', null, null, null, null);
INSERT INTO `siswa` VALUES ('424', '0480', 'Nia Zahra Riski Ramadhani ', 'P', 'Ponorogo', '2002-03-12', 'Agung Prasetiyo', 'Islam', 'PNS', 'Jl. Ir. Juanda VI 7 B Ronowijayan ', '481709', '481709', null, '2013-06-09 11:05:52', null, null, null, null);
INSERT INTO `siswa` VALUES ('425', '0483', 'Rafifa Salma Syahida', 'P', 'Ponorogo', '2003-08-04', 'Junjung Adi Satwoto', 'Islam', 'PNS', 'Ds. Sampung, Kec. Sampung', '463376', '463376', null, '2013-06-09 11:05:52', null, null, null, null);
INSERT INTO `siswa` VALUES ('426', '0485', 'Rifqi Choirul Lil A\'lamin', 'L', 'Ponorogo', '0000-00-00', 'Mujab Tohir', 'Islam', 'Wiraswasta', 'Jl. Hasanudin 51 Kauman Somoroto, Po.', '462942', '462942', null, '2013-06-09 11:05:52', null, null, null, null);
INSERT INTO `siswa` VALUES ('427', '0486', 'Sabila Qonita Rohmah', 'P', 'Banyuwangi ', '2003-09-04', 'Ahmad Hananto', 'Islam', 'Swasta', 'Jl. Trunojoyo 159 Pinggirsari', '', '', null, '2013-06-09 11:05:52', null, null, null, null);
INSERT INTO `siswa` VALUES ('428', '0489', 'Satria Admaja Wirahma', 'L', 'Ponorogo', '2002-06-10', 'Tri Widjanarno', 'Islam', 'POLRI ', 'Jl. Semen Romo Kertosari Ponorogo ', '', '', null, '2013-06-09 11:05:52', null, null, null, null);
INSERT INTO `siswa` VALUES ('429', '0491', 'Umeir Sholahuddin', 'L', 'Ponorogo', '0000-00-00', 'Abdul Munir', 'Islam', 'Guru ', 'Jl. Imam Bonjol 97', '03527129035', '03527129035', null, '2013-06-09 11:05:52', null, null, null, null);
INSERT INTO `siswa` VALUES ('430', '0493', 'Yazid Fauzan Nur Ashfani', 'L', 'Ponorogo', '0000-00-00', 'Syahruddin Ashfani', 'Islam', 'Guru', 'Jl. Raden Katong 16 Setono, Jenangan', '', '', null, '2013-06-09 11:05:52', null, null, null, null);
INSERT INTO `siswa` VALUES ('432', '0408', 'Achmad Fauzan Kamil ', 'L', 'Probolinggo', '0000-00-00', 'Dirman Kelana ', 'Islam', 'Wiraswasta ', 'Jl. K. Hasan Besari 53 Ponorogo ', '08123493122', '08123493122', null, '2013-06-09 11:07:23', null, null, null, null);
INSERT INTO `siswa` VALUES ('433', '0409', 'Afifah Hasna Putri ', 'P', 'Ponorogo', '2002-05-09', 'Mulyono ', 'Islam', 'BUMN', 'Jl. DI. Panjaitan 44 Purbosuman Ponorogo', '462906', '462906', null, '2013-06-09 11:07:23', null, null, null, null);
INSERT INTO `siswa` VALUES ('434', '0412', 'Aisha Nurhanifa Kurniawan', 'P', 'Ponorogo', '2003-04-05', 'Lanjar Joko K.', 'Islam', 'PNS', 'Jl. KH. Fachrudin Kauman Ponorogo', '489811', '489811', null, '2013-06-09 11:07:23', null, null, null, null);
INSERT INTO `siswa` VALUES ('435', '0420', 'Annisariani Aprilianti', 'P', 'Ponorogo', '0000-00-00', 'Achmad Tasbaeni', 'Islam', 'PT ASDP', 'Perum Pesona Madusari,Jl. Madusari I/II', '081234045107', '081234045107', null, '2013-06-09 11:07:23', null, null, null, null);
INSERT INTO `siswa` VALUES ('436', '0321', 'Arafi Taiyo Saito', 'L', 'Ponorogo', '0000-00-00', 'Etsuro Saito', 'Islam ', 'Swasta', 'Jl. Seloaji RT/RW 02/02 Kadipaten Ba.', '085649069260', '085649069260', null, '2013-06-09 11:07:23', null, null, null, null);
INSERT INTO `siswa` VALUES ('437', '0422', 'Aruh Dhuha Yuda Mukti', 'L', 'Ponorogo', '2003-02-06', 'Saryudi', 'Islam', 'Wiraswasta', 'Jl. Anilo 36 A', '', '', null, '2013-06-09 11:07:23', null, null, null, null);
INSERT INTO `siswa` VALUES ('438', '0423', 'Arzila Emilia Ahsanti', 'P', 'Ponorogo', '2003-07-04', 'Sunaryo', 'Islam', 'Wiraswasta', 'Jl. Basuki Rahmad 36 Ponorogo', '7107818', '7107818', null, '2013-06-09 11:07:23', null, null, null, null);
INSERT INTO `siswa` VALUES ('439', '0426', 'Baruna Galih Ardi ', 'L', 'Ponorogo', '2003-10-07', 'Yani Hardi ', 'Islam', 'Guru ', 'Jl. Imam Bonjol Gg III No. 5 Ponorogo', '461393', '461393', null, '2013-06-09 11:07:23', null, null, null, null);
INSERT INTO `siswa` VALUES ('440', '0427', 'Bilqis Zahidah Widowati', 'P', 'Ponorogo', '2002-09-12', 'Khoirul Anam', 'Islam', 'Swasta', 'Jl. Sekar Pudak No. 14 Purbosuman', '085273694504', '085273694504', null, '2013-06-09 11:07:23', null, null, null, null);
INSERT INTO `siswa` VALUES ('441', '0428', 'Brillian Novita Romadhona ', 'P', 'Madiun ', '2002-09-10', 'Suwignyo', 'Islam', 'Karyawan PDAM', 'Jl. Menur 08 Nologaten Ponorogo', '0351-7846572', '0351-7846572', null, '2013-06-09 11:07:23', null, null, null, null);
INSERT INTO `siswa` VALUES ('442', '0429', 'Daffa Faza Fauzan Adhim', 'L', 'Ponorogo', '0000-00-00', 'Widodo', 'Islam', 'Swasta', 'Jll. Pramuka Gg II Mangunsuman 03/04', '', '', null, '2013-06-09 11:07:23', null, null, null, null);
INSERT INTO `siswa` VALUES ('443', '0431', 'Dina Fadhila', 'P', 'Ponorogo', '2003-06-02', 'Didik Galang P.', 'Islam', 'Guru ', 'Jl. Bupati Sumadi C2 Perumda ', '0351-7846572', '0351-7846572', null, '2013-06-09 11:07:23', null, null, null, null);
INSERT INTO `siswa` VALUES ('444', '0436', 'Fadila Latifatul Hamida', 'P', 'Ponorogo', '2002-02-08', 'M. Didik Achyani, S.Ag', 'Islam', 'Swasta', 'Jl. Lombok No 11 Ponorogo', '461575', '461575', null, '2013-06-09 11:07:23', null, null, null, null);
INSERT INTO `siswa` VALUES ('445', '0439', 'Farel Ahmed Andrian ', 'L', 'Ponorogo', '0000-00-00', 'Moh. Khoirul F.', 'Islam', 'Wiraswasta ', 'Jl. Kalimantan 90 Ponorogo ', '482857', '482857', null, '2013-06-09 11:07:23', null, null, null, null);
INSERT INTO `siswa` VALUES ('446', '0447', 'Hakim Mutiara Hati', 'L', 'Ponorogo', '0000-00-00', 'Akhmad Marsudin', 'Islam', 'Wiraswasta', 'Jl. Letjen Suprapto No. 152 Ponorogo ', '489085', '489085', null, '2013-06-09 11:07:23', null, null, null, null);
INSERT INTO `siswa` VALUES ('447', '0449', 'Hasan Abdullah', 'L', 'Lamongan ', '0000-00-00', 'Widodo Setiawan', 'Islam', 'Guru', 'KPR Singosaren Blok B5 Ponorogo', '', '', null, '2013-06-09 11:07:23', null, null, null, null);
INSERT INTO `siswa` VALUES ('448', '0450', 'Hellfan Fernanda Aditya ', 'L', 'Ponorogo', '2003-07-02', 'Sugeng Handoyo', 'Islam', 'Swata ', 'Sumber Agung RT. 01 Rw. 01 Balong Po', '372163', '372163', null, '2013-06-09 11:07:23', null, null, null, null);
INSERT INTO `siswa` VALUES ('449', '0453', 'Ibrahim Kholid Dziyaulhaq', 'L', 'Kudus', '0000-00-00', 'Noor Udin Syaifullah ', 'Islam', 'Wiraswasta ', 'Jl. Raya Jenangan No. 55', '531107', '531107', null, '2013-06-09 11:07:23', null, null, null, null);
INSERT INTO `siswa` VALUES ('450', '0454', 'Iis Aisyah', 'P', 'Ponorogo', '0000-00-00', 'Lukmanul Hakim', 'Islam', 'Wiraswasta', 'Pengkol Keling  RT 03 RW 02', '081335044352', '081335044352', null, '2013-06-09 11:07:23', null, null, null, null);
INSERT INTO `siswa` VALUES ('451', '0457', 'Jodhi Ardito Bimahatta', 'L', 'Ponorogo', '0000-00-00', 'Sunarno', 'Islam', 'PNS ', 'Ds. Karangwaluh Sampung Ponorogo', '', '', null, '2013-06-09 11:07:23', null, null, null, null);
INSERT INTO `siswa` VALUES ('452', '0460', 'Luthfi Rifada ', 'L', 'Ponorogo', '0000-00-00', 'Heru Nurwachid ', 'Islam', '', 'Jl. Tirto Tejo 22 Ponorogo ', '485277', '485277', null, '2013-06-09 11:07:23', null, null, null, null);
INSERT INTO `siswa` VALUES ('453', '0463', 'M. Kafabillah Wakila ', 'L', 'Surabaya ', '0000-00-00', 'Luthfi Hadi Aminudin', 'Islam', 'PNS', 'Tunggal Asri RT. 2 RW. 3 Bareng Bab. Po.', '08125964906', '08125964906', null, '2013-06-09 11:07:23', null, null, null, null);
INSERT INTO `siswa` VALUES ('454', '0466', 'Margaretha Meylia Herde', 'P', 'Ponorogo', '2003-12-02', 'Heri Dwi Wahyudi', 'Islam', 'Swasta ', 'Jl. Maskumambang RT 01/RW 02 Jenangan', '7131719', '7131719', null, '2013-06-09 11:07:23', null, null, null, null);
INSERT INTO `siswa` VALUES ('455', '0470', 'Muhammad Faisal Fathi ', 'L', 'Ponorogo', '0000-00-00', 'Muryadi ', 'Islam', 'PNS', 'Jl. DI. Panjaitan 102 D Ponorogo ', '462328', '462328', null, '2013-06-09 11:07:23', null, null, null, null);
INSERT INTO `siswa` VALUES ('456', '0475', 'Mushlih Effendi ', 'L', 'Madiun ', '2003-12-03', 'Joko Prayitno ', 'Islam', '', 'Jl. Mayjen Sutoyo Cekok Ponorogo ', '', '', null, '2013-06-09 11:07:23', null, null, null, null);
INSERT INTO `siswa` VALUES ('457', '0482', 'One Ardyansyah Ihsan Fadila ', 'L', 'Ponorogo', '2002-08-03', 'Aris Hariyanto ', 'Islam', 'Wiraswasta ', 'Jl. Kyai Mojo 34 Ponorogo ', '482734', '482734', null, '2013-06-09 11:07:23', null, null, null, null);
INSERT INTO `siswa` VALUES ('458', '0488', 'Salsabila Fitri Kevenandana Sahazika', 'P', 'Ponorogo', '2002-12-12', 'Dwi Haryanto', 'Islam', 'Wiraswasta', 'Jl. Kumbokarno 52', '7106012', '7106012', null, '2013-06-09 11:07:23', null, null, null, null);
INSERT INTO `siswa` VALUES ('459', '0490', 'Syifa Nooram Alfaz', 'P', 'Ponorogo', '2002-08-11', 'Sudirman ', 'Islam', 'TNI-AD', 'Ds Nailan Slahung Ponorogo', '08123401759', '08123401759', null, '2013-06-09 11:07:23', null, null, null, null);
INSERT INTO `siswa` VALUES ('460', '0492', 'Wima Alif Harianto', 'L', 'Jombang ', '2002-11-12', 'Maman Harianto', 'Islam', 'Pegawai BNI', 'Jl. Jenar 16 Ponorogo', '08123406400', '08123406400', null, '2013-06-09 11:07:23', null, null, null, null);
INSERT INTO `siswa` VALUES ('461', '0494', 'Yossa Fitria Anwar', 'P', 'Ponorogo', '0000-00-00', 'Fatoni Anwar ', 'Islam', 'Wiraswasta ', 'Jl. KH. Ahmad Dahlan 39 D Ponorogo ', '481719', '481719', null, '2013-06-09 11:07:23', null, null, null, null);
INSERT INTO `siswa` VALUES ('463', '0407', 'Abdurrobbi Izzata', 'L', 'Surabaya ', '0000-00-00', 'Dr. Jaka Setiyono', 'Islam', 'PNS', 'JL. Madusari Raya No 1 Madusari', '487189', '487189', null, '2013-06-09 11:09:14', null, null, null, null);
INSERT INTO `siswa` VALUES ('464', '0410', 'Ahmad Fathin Izzul Haq', 'L', 'Ponorogo', '2002-04-04', 'Rohmat Sulaeman', 'Islam', 'Guru', 'PP Wali Songo Ngabar Siman Ponorogo', '08125971731', '08125971731', null, '2013-06-09 11:09:14', null, null, null, null);
INSERT INTO `siswa` VALUES ('465', '0414', 'Aldian Bagaskara ', 'L', 'Ponorogo', '0000-00-00', 'Jaka Wardaya ', 'Islam', 'PNS', 'Jl. Yos Sudarso 38 Ponorogo ', '081234389389', '081234389389', null, '2013-06-09 11:09:14', null, null, null, null);
INSERT INTO `siswa` VALUES ('466', '0417', 'Alifatus Hana Fajriya', 'P', 'Ponorogo', '0000-00-00', 'Sudarmaji', 'Islam', 'Guru', 'Ringin Kembar, Karangan, Balong', '372774', '372774', null, '2013-06-09 11:09:14', null, null, null, null);
INSERT INTO `siswa` VALUES ('467', '0418', 'Aliyannisa Fuadini Azzakiyah', 'P', 'Ponorogo', '2003-09-05', 'Jalal Sayuti ', 'Islam', 'Guru ', 'Grenteng Ngampel Balong ', '372201', '372201', null, '2013-06-09 11:09:14', null, null, null, null);
INSERT INTO `siswa` VALUES ('468', '0424', 'Azzah Fachriza Yustia', 'P', 'Ponorogo', '0000-00-00', 'Suparno', 'Islam', 'PNS', 'Ds. Trisono, Kec. Babadan Ponorogo', '', '', null, '2013-06-09 11:09:14', null, null, null, null);
INSERT INTO `siswa` VALUES ('469', '0433', 'Dwi Sari Kusumaningrum', 'P', 'Ponorogo', '2002-07-12', 'Mawaludi', 'Islam', 'PNS', 'Desa Bajang, Kec. Balong', '085235335453', '085235335453', null, '2013-06-09 11:09:14', null, null, null, null);
INSERT INTO `siswa` VALUES ('470', '0440', 'Farhan Reza Cordova', 'L', 'Ponorogo', '2002-10-09', 'Kusnin, M.Pd', 'Islam', 'PNS Guru', 'Jl. Batoro Katong 211 Ponorogo', '488955', '488955', null, '2013-06-09 11:09:14', null, null, null, null);
INSERT INTO `siswa` VALUES ('471', '0442', 'Fatta Yusuf Nur Hakim', 'L', 'Ponorogo', '2002-06-06', 'Sucipto ', 'Islam', 'PNS ', 'Jl. Soekarno Hatta 51F Ponorogo ', '081335552068', '081335552068', null, '2013-06-09 11:09:14', null, null, null, null);
INSERT INTO `siswa` VALUES ('472', '0444', 'Fawaz Syarif ', 'L', 'Ponorogo', '2002-07-12', 'Ahmad Thobroni ', 'Islam', 'Swasta', 'Jintab Jetis Ponorogo ', '312193', '312193', null, '2013-06-09 11:09:14', null, null, null, null);
INSERT INTO `siswa` VALUES ('473', '0445', 'Fina Fariha ', 'P', 'Ponorogo', '2003-12-04', 'Mujiono ', 'Islam', 'Karyawan Telkom ', 'Jl. Semen Remeng No.7 Kertosari Ponorogo', '484123', '484123', null, '2013-06-09 11:09:14', null, null, null, null);
INSERT INTO `siswa` VALUES ('474', '0446', 'Haidar Muhammad Rafiqi', 'L', 'Ponorogo', '0000-00-00', 'Sumanto', 'Islam', 'PNS', 'Jl. Ahmad Yani 29 Ponorogo ', '461637', '461637', null, '2013-06-09 11:09:14', null, null, null, null);
INSERT INTO `siswa` VALUES ('475', '0448', 'Hanif Ardhya Husna', 'L', 'Ponorogo', '2002-06-04', 'Sudarminto', 'Islam', 'Telkom', 'Perum Kertosari Indah A-4 Ponorogo', '484444', '484444', null, '2013-06-09 11:09:14', null, null, null, null);
INSERT INTO `siswa` VALUES ('476', '0452', 'Huda Falah Ankasanandra', 'P', 'Ponorogo', '0000-00-00', 'Sri Ratnanto', 'Islam', 'PNS', 'Karangmojo Balong Ponorogo', '08123414109', '08123414109', null, '2013-06-09 11:09:14', null, null, null, null);
INSERT INTO `siswa` VALUES ('477', '0456', 'Inayah Khoirunnisa Hariyadi', 'P', 'Ponorogo', '2003-02-04', 'Hariyadi', 'Islam', 'Swasta', 'RT 02 RW 01 Slahung Ponorogo', '', '', null, '2013-06-09 11:09:14', null, null, null, null);
INSERT INTO `siswa` VALUES ('478', '0458', 'Kamilla Azzahra Asy\'ari ', 'P', 'Semarang', '0000-00-00', 'Wachid Asy\'ari ', 'Islam', 'Swasta ', 'Jl. Sumbawa 04 Mangkujayan Ponorogo ', '', '', null, '2013-06-09 11:09:14', null, null, null, null);
INSERT INTO `siswa` VALUES ('479', '0459', 'Laksmi Anggita Mumpuni', 'P', 'Ponorogo', '2002-11-05', 'Sunarto', 'Islam', 'Guru', 'Desa Koripan, Kec. Bungkal Ponorogo', '', '', null, '2013-06-09 11:09:14', null, null, null, null);
INSERT INTO `siswa` VALUES ('480', '0461', 'Luthfiandini Sofi Tiara ', 'P', 'Ponorogo', '2003-10-01', 'Jemani, SP', 'Islam', 'Swasta', 'Doyong Ngampel Balong Ponorogo ', '', '', null, '2013-06-09 11:09:14', null, null, null, null);
INSERT INTO `siswa` VALUES ('481', '0462', 'Luthfiyya Homaira', 'P', 'Ponorogo', '0000-00-00', 'Syaufia Rahman', 'Islam', 'Wiraswasta ', 'Jl. Ki Ageng Selo 09 Kadipaten Ponorogo ', '487882', '487882', null, '2013-06-09 11:09:14', null, null, null, null);
INSERT INTO `siswa` VALUES ('482', '0465', 'Mar\'aa Refina Robbah ', 'P', 'Ponorogo', '0000-00-00', 'Anis Setyobudi ', 'Islam', 'Wiraswasta ', 'Jl. Ki Ageng Kutu, Kutu Kulon Jetis Po.', '081335374282', '081335374282', null, '2013-06-09 11:09:14', null, null, null, null);
INSERT INTO `siswa` VALUES ('483', '0469', 'Muhammad Dewa Danubrata', 'L', 'Ponorogo', '0000-00-00', 'Nova Hari C.', 'Islam', 'Swasta ', 'Jl. KH. Ahmad Dahlan 110 Ponorogo ', '7111515', '7111515', null, '2013-06-09 11:09:14', null, null, null, null);
INSERT INTO `siswa` VALUES ('484', '0473', 'Muhammad Hasyidan Alawi', 'L', 'Ponorogo', '0000-00-00', 'Muh. Irham Safroni', 'Islam', 'Swasta ', 'Jl. KH. Wahid Hasyim 10 Ponorogo ', '486252', '486252', null, '2013-06-09 11:09:14', null, null, null, null);
INSERT INTO `siswa` VALUES ('485', '0476', 'Nada Yumna Wianputri', 'P', 'Ponorogo', '0000-00-00', 'Winoto', 'Islam', 'PNS', 'Ds. Kapuran, Kec. Badegan', '', '', null, '2013-06-09 11:09:14', null, null, null, null);
INSERT INTO `siswa` VALUES ('486', '0478', 'Naqiya Qolbiya', 'P', 'Ponorogo', '2002-03-12', 'Arif Yeni Varianto', 'Islam', 'Guru swasta', 'Jl. Bhayangkara II/15 Ponorogo', '483051', '483051', null, '2013-06-09 11:09:14', null, null, null, null);
INSERT INTO `siswa` VALUES ('487', '0479', 'Naura Dewi Anindya ', 'P', 'Ponorogo', '0000-00-00', 'Suhardi ', 'Islam', 'Perawat ', 'Jl. P. Hidayatullah Gg.1 No. 2 Ponorogo ', '485932', '485932', null, '2013-06-09 11:09:14', null, null, null, null);
INSERT INTO `siswa` VALUES ('488', '0481', 'Nizar Wildan Aulia', 'L', 'Ponorogo', '0000-00-00', 'Drs. Maiful Hadi', 'Islam', 'Swasta', 'Jl. Anjani 13 Ponorogo', '484440', '484440', null, '2013-06-09 11:09:14', null, null, null, null);
INSERT INTO `siswa` VALUES ('489', '0484', 'Reza Pahlevi Ubaidillah', 'L', 'Ponorogo', '2003-07-05', 'Sutrisno', 'Islam', 'Perawat', 'Jl. Delima No 23 Beduri Ponorogo', '081335323596', '081335323596', null, '2013-06-09 11:09:14', null, null, null, null);
INSERT INTO `siswa` VALUES ('490', '0487', 'Salsabila Azzahra Nurdi', 'P', 'Ponorogo', '0000-00-00', 'H. Didik Handoyo', 'Islam', 'Wiraswasta', 'Jl. Sumatra 69B Mangkujayan Ponorogo', '462611', '462611', null, '2013-06-09 11:09:14', null, null, null, null);
INSERT INTO `siswa` VALUES ('491', '0495', 'Yuniadi Wahid Imami', 'L', 'Ponorogo', '2003-10-06', 'Yudi Cahyoko', 'Islam', 'Dosen Unair Sby', 'Jl. Bangka No 34 Slahung', '371120', '371120', null, '2013-06-09 11:09:14', null, null, null, null);
INSERT INTO `siswa` VALUES ('494', '0313', 'Abdullah Sathori', 'L', 'Nganjuk', '2002-12-05', 'Imam Boyadi', 'Islam ', 'Wiraswasta', 'Sekayu, Gandukepuh', '081359290443', '081359290443', null, '2013-06-09 11:11:07', null, null, null, null);
INSERT INTO `siswa` VALUES ('495', '0607', 'Achmad Alies Dinaka', 'L', 'Madiun', '0000-00-00', 'Nur Asyikin', 'Islam ', 'Wiraswasta', 'RT. 03 RW. 02 Desa Gelang Kulon ', '085233792741', '085233792741', null, '2013-06-09 11:11:07', null, null, null, null);
INSERT INTO `siswa` VALUES ('496', '0317', 'Alfan Amirul Richyanto', 'L', 'Ponorogo ', '0000-00-00', 'Rini K', 'Islam ', 'Swasta', 'Jl. Singajaya 02 Singosaren', '081335152774', '081335152774', null, '2013-06-09 11:11:07', null, null, null, null);
INSERT INTO `siswa` VALUES ('497', '0318', 'Alfiana Fadhia Haya', 'P', 'Ponorogo', '2002-03-02', 'Drs. Suhariyanto', 'Islam ', 'PNS', 'Perum Kertosari Indah C1/05', '03252-7112871', '03252-7112871', null, '2013-06-09 11:11:07', null, null, null, null);
INSERT INTO `siswa` VALUES ('498', '0322', 'Ardan Zia Ul Haq', 'L', 'Ponorogo', '2001-02-11', 'H. Moh. Zaini', 'Islam ', 'Wiraswasta', 'Jl. K. Moh. Na\'im 25 Josari Jetis', '0352-312537', '0352-312537', null, '2013-06-09 11:11:07', null, null, null, null);
INSERT INTO `siswa` VALUES ('499', '0328', 'Bara Kharisma Nusantara', 'L', 'Ponorogo ', '0000-00-00', 'Heri Susilo', 'Islam ', 'PNS', 'Dsn Krajan Ds Janti Slahung Po', '085233630361', '085233630361', null, '2013-06-09 11:11:07', null, null, null, null);
INSERT INTO `siswa` VALUES ('500', '0330', 'Berliana Nur Hafidhah', 'P', 'Pacitan', '2001-08-03', 'Dwi Prasetiyo', 'Islam ', 'Guru', 'Perum Kertosari Indah Blok F. No. 13', '0352-462449', '0352-462449', null, '2013-06-09 11:11:07', null, null, null, null);
INSERT INTO `siswa` VALUES ('501', '0331', 'Bima Wicaksono', 'L', 'Ponorogo', '0000-00-00', 'Ma\'ruf Imanuddin', 'Islam ', 'spir', 'Jl. KH Zaenudin Mustofa 22 Kauman', '085259855988', '085259855988', null, '2013-06-09 11:11:07', null, null, null, null);
INSERT INTO `siswa` VALUES ('502', '0734', 'Cornella Fithria Khoirun Nisa', 'P', 'Ponorogo', '0000-00-00', 'Ir. Hadi Prayitno', 'Islam ', 'PNS', 'Jl. Sumatra  No. 120 ', '0352482717', '0352482717', null, '2013-06-09 11:11:07', null, null, null, null);
INSERT INTO `siswa` VALUES ('503', '0333', 'Dahra Maali Husna', 'P', 'Ponorogo', '2001-02-11', 'Sudono', 'Islam ', 'guru MA', 'Jl. Tangkuban Perahu 3E Po', '08123406693', '08123406693', null, '2013-06-09 11:11:07', null, null, null, null);
INSERT INTO `siswa` VALUES ('504', '0334', 'Elang  Wallesa', 'L', 'Ponorogo ', '0000-00-00', 'Dodik Kristanto', 'Islam ', 'PNS (Kimpraswil)', 'Ds. Semanding Jenangan', '0352-531736', '0352-531736', null, '2013-06-09 11:11:07', null, null, null, null);
INSERT INTO `siswa` VALUES ('505', '0247', 'Gheys Rahmatullah ', 'L', 'Ponorogo ', '2000-07-10', 'Moh. Anwar ', 'Islam', 'Perangkat Desa', 'Jimbe Jenangan Ponorogo', '531285', '531285', null, '2013-06-09 11:11:07', null, null, null, null);
INSERT INTO `siswa` VALUES ('506', '0343', 'Grizella Happy Yoeznanda', 'P', 'Ponorogo', '2002-02-04', 'Jarni Jayusman', 'Islam ', 'Debt Collektor', 'Ds. Bulukidul Balong Po', '081556455433', '081556455433', null, '2013-06-09 11:11:07', null, null, null, null);
INSERT INTO `siswa` VALUES ('507', '0344', 'Hadziq Fauza Romadhoni ', 'L', 'Ponorogo', '2001-02-12', 'Amiruddin', 'Islam ', 'Anak Bu Reni TKIT', 'RT/RW 01/01 Kadipaten Babadan', '081335263453', '081335263453', null, '2013-06-09 11:11:07', null, null, null, null);
INSERT INTO `siswa` VALUES ('508', '0348', 'Hammam Al Haqoni', 'L', 'Ponorogo ', '2002-03-03', 'Subikin', 'Islam ', 'SMP Mlarak', 'Wonokerto Jetis Ponorogo', '0352-311035', '0352-311035', null, '2013-06-09 11:11:07', null, null, null, null);
INSERT INTO `siswa` VALUES ('509', '0353', 'Iqbal Ghinanafsi Wahidan', 'L', 'Ponorogo ', '2001-07-07', 'Azis Fatoni', 'Islam ', 'Swasta Koperasi T', 'Jl. Semeru 55 Po', '0352-483757', '0352-483757', null, '2013-06-09 11:11:07', null, null, null, null);
INSERT INTO `siswa` VALUES ('510', '0361', 'Mawardha Agustina', 'P', 'Ponorogo ', '0000-00-00', 'Agus S.', 'Islam ', 'swasta', 'Jl. Imam Bonjol 94', '081335402060', '081335402060', null, '2013-06-09 11:11:07', null, null, null, null);
INSERT INTO `siswa` VALUES ('511', '0363', 'Moh Khabibulloh AlLatief', 'L', 'Ponorogo', '0000-00-00', 'Djulianto S.', 'Islam ', 'Guru', 'Jl Raya Pacitan Ds. Beton, Siman Po', '0813354088', '0813354088', null, '2013-06-09 11:11:07', null, null, null, null);
INSERT INTO `siswa` VALUES ('512', '0365', 'Mohammad Ra\'if Nashrullah', 'L', 'Ponorogo', '0000-00-00', 'Suprapto', 'Islam ', 'Wiraswasta', 'Jl. DI Panjaitan 184 Siman Po', '', '', null, '2013-06-09 11:11:07', null, null, null, null);
INSERT INTO `siswa` VALUES ('513', '0366', 'Muhamad Izharrudien Afkar', 'L', 'Ponorogo ', '0000-00-00', 'Dasuki, S. Hut', 'Islam ', 'swasta', 'Jl. Lawu 11 Ponorogo', '0352-487533', '0352-487533', null, '2013-06-09 11:11:07', null, null, null, null);
INSERT INTO `siswa` VALUES ('514', '0367', 'Muhammad Almas Nida Ilhaq', 'L', 'Ponorogo ', '0000-00-00', 'Asmawi A.', 'Islam ', 'Guru SMA PGRI', 'Jl. Banda 18 Ponorogo', '0352-488183', '0352-488183', null, '2013-06-09 11:11:07', null, null, null, null);
INSERT INTO `siswa` VALUES ('515', '0338', 'Muhammad Fakhrudin', 'L', 'Ponorogo', '0000-00-00', 'Yon Baudin', 'Islam ', 'swasta', 'Jl. Parang Ukel No.5 Kadipaten Ponorogo', '0352-481259', '0352-481259', null, '2013-06-09 11:11:07', null, null, null, null);
INSERT INTO `siswa` VALUES ('516', '0369', 'Muhammad Hafiz Kautsar', 'L', 'Ponorogo', '2001-12-07', 'Edy Agus H', 'Islam ', 'Maspion', 'Jl. Raden Wijaya  9 Setono Ponorogo', '0352-485219', '0352-485219', null, '2013-06-09 11:11:07', null, null, null, null);
INSERT INTO `siswa` VALUES ('517', '0370', 'Muhammad Hafizh Arsyadany', 'L', 'Ponorogo', '0000-00-00', 'Hayat P.', 'Islam ', 'PNS', 'RT/ RW 02/01 Ds. Bulak Balong Po.', '081335684083', '081335684083', null, '2013-06-09 11:11:07', null, null, null, null);
INSERT INTO `siswa` VALUES ('518', '0378', 'Niswana Salsabila Arrad-Mizan', 'P', 'Ponorogo ', '0000-00-00', 'M. Rotmianto', 'Islam ', 'Karywn Unmuh PO', 'Jl. Sumbawa 02 Ponorogo', '0352-482962', '0352-482962', null, '2013-06-09 11:11:07', null, null, null, null);
INSERT INTO `siswa` VALUES ('519', '0381', 'Nusaibah', 'P', 'Ponorogo ', '2002-11-02', 'Kosasih', 'Islam ', 'Guru ', 'Jl. Sunan Kalijogo RT/RW 02/01 Ngabar', '0352-311634', '0352-311634', null, '2013-06-09 11:11:07', null, null, null, null);
INSERT INTO `siswa` VALUES ('520', '0393', 'Shafa Zahra Risqika', 'P', 'Ponorogo', '2001-11-04', 'Johan NE', 'Islam ', 'PNS (BKKBN)', 'Jl. A Yani 148 Po', '08123446929', '08123446929', null, '2013-06-09 11:11:07', null, null, null, null);
INSERT INTO `siswa` VALUES ('521', '0395', 'Sinulingga Arya  Bimantara', 'L', 'Ponorogo', '0000-00-00', 'Harsono', 'Islam ', 'PNS (SMP2Jetis)', 'Simo Slahung ', '0352-372599', '0352-372599', null, '2013-06-09 11:11:07', null, null, null, null);
INSERT INTO `siswa` VALUES ('522', '0397', 'Tazkiya Adila Yasmine', 'P', 'Ponorogo', '0000-00-00', 'Ahmad Iswahyanto', 'Islam ', 'Advokat', 'Jl. Siberut 39 Banyudono Po', '0352-486687', '0352-486687', null, '2013-06-09 11:11:07', null, null, null, null);
INSERT INTO `siswa` VALUES ('523', '0401', 'Yusron Kurniawan Rusdianto', 'L', 'Ponorogo', '0000-00-00', 'Rusdianto', 'Islam ', 'Swasta', 'Perumda Blok G No.8 Ponorogo', '0352-488816', '0352-488816', null, '2013-06-09 11:11:07', null, null, null, null);
INSERT INTO `siswa` VALUES ('525', '0316', 'Aldo Fredy Pratama', 'L', 'Ponorogo', '0000-00-00', 'Suroto', 'Islam ', 'Swasta', 'Jl. Karya Bakti Kauman Somoroto', '081335785066', '081335785066', null, '2013-06-09 11:13:05', null, null, null, null);
INSERT INTO `siswa` VALUES ('526', '0320', 'Annisau Qonitaturrohmah', 'P', 'Ponorogo', '0000-00-00', 'M. Syaifudin', 'Islam ', 'Guru', 'Jl. Kokrosono 53 Ponorogo', '0352-461479', '0352-461479', null, '2013-06-09 11:13:05', null, null, null, null);
INSERT INTO `siswa` VALUES ('527', '0496', 'Ardian Yoga Pratama', 'L', 'Ponorogo', '0000-00-00', 'Sudartono', 'Islam ', 'Karya. Swasta', 'Kauman Sumoroto Ponorogo', '081359829910', '081359829910', null, '2013-06-09 11:13:05', null, null, null, null);
INSERT INTO `siswa` VALUES ('528', '0337', 'Fahmi Ridho Ar Rafi\'i', 'L', 'Pacitan', '2001-06-07', 'Mutijab', 'Islam ', 'Guru', 'Dsn Budu 03/01 Ds Crabak Slahung', '085958593766', '085958593766', null, '2013-06-09 11:13:05', null, null, null, null);
INSERT INTO `siswa` VALUES ('529', '0340', 'Fariz Abi Kusuma', 'L', 'Ponorogo', '0000-00-00', 'Maskuri', 'Islam ', 'PNS', 'Perumda i-30 Keniten Ponorogo', '0352-486172', '0352-486172', null, '2013-06-09 11:13:05', null, null, null, null);
INSERT INTO `siswa` VALUES ('530', '0341', 'Fauzi Afif Saputro', 'L', 'Ponorogo', '2002-03-03', 'Arifin', 'Islam ', 'Swasta', 'Jl. Brigjend Katamso 38 Kadipaten Bab.', '0813357517559', '0813357517559', null, '2013-06-09 11:13:05', null, null, null, null);
INSERT INTO `siswa` VALUES ('531', '0342', 'Fityatul Mujahidah', 'P', 'Ponorogo ', '0000-00-00', 'Muklis Isngadi', 'Islam ', 'Wiraswasta', 'Turi Jetis Po', '08125951294', '08125951294', null, '2013-06-09 11:13:05', null, null, null, null);
INSERT INTO `siswa` VALUES ('532', '0347', 'Hamdan Mursidien Pratama', 'L', 'Ponorogo ', '2002-01-06', 'Soimin SE', 'Islam ', 'Swasta', 'Karanglo lor Sukorejo', '085645759632', '085645759632', null, '2013-06-09 11:13:05', null, null, null, null);
INSERT INTO `siswa` VALUES ('533', '0349', 'Haya Ainun Kamila ', 'P', 'Ponorogo ', '2001-01-12', 'Tukirin', 'Islam ', 'PNS', 'Jl. Diponegoro 15 Bediwetan Bungkal', '08283299066', '08283299066', null, '2013-06-09 11:13:05', null, null, null, null);
INSERT INTO `siswa` VALUES ('534', '0350', 'Ibrohim Jundulloh', 'L', 'Ponorogo ', '0000-00-00', 'Jemani', 'Islam ', 'Guru ', 'Nongkodono Somoroto Ponorogo', '085259960740', '085259960740', null, '2013-06-09 11:13:05', null, null, null, null);
INSERT INTO `siswa` VALUES ('535', '0352', 'Indah Permata Kusuma Dewi', 'P', 'Ponorogo', '2002-05-03', 'Moh. Tarom A.Md', 'Islam ', 'Perawat', 'Ds. Mrican Jenangan ', '0352-488894', '0352-488894', null, '2013-06-09 11:13:05', null, null, null, null);
INSERT INTO `siswa` VALUES ('536', '0355', 'Jauhari Fadil Ahsan ', 'L', 'Ponorogo', '2001-12-07', 'Imam Fikri M', 'Islam ', 'Guru', 'Ds, Karangmojo Kec Balong', '0352-371601', '0352-371601', null, '2013-06-09 11:13:05', null, null, null, null);
INSERT INTO `siswa` VALUES ('537', '0357', 'Jiwangga Ajikara', 'L', 'Ponorogo', '0000-00-00', 'Rianto', 'Islam ', 'SMK Jenangan', 'Jl. Subokastowo 39 Ponorogo', '0352-486393', '0352-486393', null, '2013-06-09 11:13:05', null, null, null, null);
INSERT INTO `siswa` VALUES ('538', '0360', 'Maulaya Ratu Dzakiyyah Falda', 'P', 'Ponorogo ', '2001-03-08', 'M. Manfaul Ma\'arif', 'Islam ', 'PNS', 'Jl. Syuhada\' 270 Ngunut Babadan', '0352-482854', '0352-482854', null, '2013-06-09 11:13:05', null, null, null, null);
INSERT INTO `siswa` VALUES ('539', '0362', 'Mohammad Jordy Firmansyah Tamami', 'L', 'Ponorogo', '2001-05-09', 'Imam Rochani SH', 'Islam ', 'PNS', 'Jl. Cempaka 10 Polorejo Babadan', '0352-481249', '0352-481249', null, '2013-06-09 11:13:05', null, null, null, null);
INSERT INTO `siswa` VALUES ('540', '0368', 'Muhammad Fatah Rizqullah', 'L', 'Ponorogo', '2002-11-01', 'Andi Juniarto', 'Islam ', 'Peg. Swasta', 'Jl. Karimata 1B  Mangkujayan Po.', '081556614683', '081556614683', null, '2013-06-09 11:13:05', null, null, null, null);
INSERT INTO `siswa` VALUES ('541', '0371', 'Muhammad Maulana Rizal Akrima', 'L', 'Ponorogo ', '2001-03-07', 'Eko Rosandi', 'Islam ', 'Swasta', 'Jl. Letjend S. Sukowati 24 Keniten', '0352-481780', '0352-481780', null, '2013-06-09 11:13:05', null, null, null, null);
INSERT INTO `siswa` VALUES ('542', '0372', 'Muhammad Rhezhal Kadarisman', 'L', 'Ponorogo ', '2001-09-08', 'Edi K', 'Islam ', 'Swasta', 'Jl. A Yani 151 A', '081335605283', '081335605283', null, '2013-06-09 11:13:05', null, null, null, null);
INSERT INTO `siswa` VALUES ('543', '0374', 'Muhammad Taufiqurrahman', 'L', 'Ponorogo', '0000-00-00', 'Anang Y', 'Islam ', 'wiraswasta', 'Ngunut Babadan', '0352-463156', '0352-463156', null, '2013-06-09 11:13:05', null, null, null, null);
INSERT INTO `siswa` VALUES ('544', '0379', 'Novi Widia Rahayu', 'P', 'Madiun', '2001-11-11', 'Sumingan', 'Islam ', 'Swasta', 'Jl. Wilis No.3 Po', '0352-462857', '0352-462857', null, '2013-06-09 11:13:05', null, null, null, null);
INSERT INTO `siswa` VALUES ('545', '0380', 'Nur Riza Ahmad Fahrozi ', 'L', 'Ponorogo', '2002-05-05', 'Budi Yuwono', 'Islam ', 'Wiraswasta', 'Jl. R. Panji 11, Singosaren ', '7111114', '7111114', null, '2013-06-09 11:13:05', null, null, null, null);
INSERT INTO `siswa` VALUES ('546', '0382', 'Raffi Ardika Putra', 'L', 'Ponorogo', '2002-02-05', 'Endang P.N.', 'Islam ', 'almarhum', 'Jl. Manggis 44/ Jl Sumadi Blok K-3 Perumda', '0352-461844', '0352-461844', null, '2013-06-09 11:13:05', null, null, null, null);
INSERT INTO `siswa` VALUES ('547', '0383', 'Rafi Nur Annas', 'L', 'Ponorogo ', '0000-00-00', 'Rusdiyanto', 'Islam ', 'PNS', 'Jl. Ngadikaweruh Karanglolor', '0352-750028', '0352-750028', null, '2013-06-09 11:13:05', null, null, null, null);
INSERT INTO `siswa` VALUES ('548', '0384', 'Rafli Rahman Ibrahim', 'L', 'Ponorogo', '0000-00-00', 'Agus Nur R', 'Islam ', 'swasta', 'Jl. DI Panjaitan No, 2 A Ponorogo', '7111288', '7111288', null, '2013-06-09 11:13:05', null, null, null, null);
INSERT INTO `siswa` VALUES ('549', '0389', 'Rizal Hanafi Putra Miswanto', 'L', 'Ponorogo', '0000-00-00', 'Miswanto', 'Islam ', 'Toko Bangunan', 'Jl. Raya Jenangan 118', '0352-531655', '0352-531655', null, '2013-06-09 11:13:05', null, null, null, null);
INSERT INTO `siswa` VALUES ('550', '0391', 'Rumbin Punti Maekaratri', 'P', 'Ponorogo', '2002-02-01', 'Triwaskito', 'Islam ', 'Swasta ', 'Ds. Sedah jenangan', '08125973258', '08125973258', null, '2013-06-09 11:13:05', null, null, null, null);
INSERT INTO `siswa` VALUES ('551', '0392', 'Sabila Ihsani Nugroho', 'P', 'Madiun ', '0000-00-00', 'Muhariadi N', 'Islam ', 'PNS', 'Jl. Lawu 41 Nologaten ', '081914845597', '081914845597', null, '2013-06-09 11:13:05', null, null, null, null);
INSERT INTO `siswa` VALUES ('552', '0394', 'Shofia Niswan Qonita', 'P', 'Ponorogo', '0000-00-00', 'Slamet Hariyono', 'Islam ', 'Kep Desa', 'RT/RW 02/01 Turi Jetis Po', '0352-311990', '0352-311990', null, '2013-06-09 11:13:05', null, null, null, null);
INSERT INTO `siswa` VALUES ('553', '0398', 'Wafiq Al-Farizi', 'L', 'Ponorogo', '2001-11-09', 'Drs. Eko Heru B', 'Islam ', 'SMA Slahung', 'Jl. Batoro Katong  207 Ponorogo', '0352-486589', '0352-486589', null, '2013-06-09 11:13:05', null, null, null, null);
INSERT INTO `siswa` VALUES ('556', '0314', 'Abdurrahman Ali Ramdhani', 'L', 'Malang', '2001-12-12', 'Widodo Setiawan', 'Islam ', 'Guru', 'KPR Singosaren Blok B. No.5 Po', '081335535866', '081335535866', null, '2013-06-09 11:15:35', null, null, null, null);
INSERT INTO `siswa` VALUES ('557', '0319', 'Annisa Nur Fatikha Sari', 'P', 'Ponorogo', '2001-05-08', 'Sartono', 'Islam ', 'Swasta', 'Singkil, Krajan Balong', '0352-372490', '0352-372490', null, '2013-06-09 11:15:35', null, null, null, null);
INSERT INTO `siswa` VALUES ('558', '0323', 'Arindha Degista Eka Wiwaha', 'P', 'Ponorogo ', '0000-00-00', 'Wahono', 'Islam ', 'Swasta', 'RT/RW 02/02 Balong Ponorogo', '0352-371669', '0352-371669', null, '2013-06-09 11:15:35', null, null, null, null);
INSERT INTO `siswa` VALUES ('559', '0324', 'Arsy Meyniko Osario Irshandi', 'L', 'Ponorogo ', '0000-00-00', 'Ahmad Mukodim', 'Islam ', 'Kodim', 'Jl. Sidowaloyo 60 Carat, Kauman', '0352-752212', '0352-752212', null, '2013-06-09 11:15:35', null, null, null, null);
INSERT INTO `siswa` VALUES ('560', '0325', 'Audrey Zakia Noorhaqiqi', 'P', 'Ponorogo', '2002-11-04', 'Drs. Agung Bintoro', 'Islam ', 'Swasta', 'Jl. Urip Sumoharjo 105 Ponorogo', '08123449337', '08123449337', null, '2013-06-09 11:15:35', null, null, null, null);
INSERT INTO `siswa` VALUES ('561', '0326', 'Aulia Salsabila Merdekasari', 'P', 'Lampung ', '0000-00-00', 'Sunardianto', 'Islam ', 'Polres', 'Madusari Siman', '0352-485114', '0352-485114', null, '2013-06-09 11:15:35', null, null, null, null);
INSERT INTO `siswa` VALUES ('562', '0332', 'Churin \'In Indaryadi', 'P', 'Malang', '2002-01-04', 'dr. Indaryadi', 'Islam ', 'Dr. RS Aisyiyah Po', 'Kertosari Estate A1 Ponorogo', '0352-483668', '0352-483668', null, '2013-06-09 11:15:35', null, null, null, null);
INSERT INTO `siswa` VALUES ('563', '0335', 'Ezaqi Azra Ramadhan', 'L', 'Ponorogo ', '2002-05-06', 'Singgih SH', 'Islam ', 'karyawan swasta', 'Jl. Batoro Katong 23', '0352-461387', '0352-461387', null, '2013-06-09 11:15:35', null, null, null, null);
INSERT INTO `siswa` VALUES ('564', '0336', 'Fadhillah Putri Cahyanti', 'P', 'Ponorogo', '2001-05-07', 'Bambang Purwanto', 'Islam ', 'Peg. Swasta', 'Rt/Rw 2/2 Josari Jetis', '0352-311023', '0352-311023', null, '2013-06-09 11:15:35', null, null, null, null);
INSERT INTO `siswa` VALUES ('565', '0339', 'Fanisa Luthfia Putri Erwanti', 'P', 'Madiun', '2002-02-03', 'Siswanto', 'Islam ', 'SMP Jambon', 'Perum Kertosari Indah G .02', '081359473510', '081359473510', null, '2013-06-09 11:15:35', null, null, null, null);
INSERT INTO `siswa` VALUES ('566', '0345', 'Haffidh Mahendra Abimanyu Pratama', 'L', 'Madiun', '2001-05-10', 'Siswanto', 'Islam ', 'Swasta', 'RT/RW 01/01 Purwosari Babadan', '0352-484772', '0352-484772', null, '2013-06-09 11:15:35', null, null, null, null);
INSERT INTO `siswa` VALUES ('567', '0346', 'Hamda Yu\'thika Yasykuru Linafsih', 'L', 'Ponorogo', '0000-00-00', 'Sujono', 'Islam ', 'PNS', 'Jl. Soekarno Hatta 15 Po', '7120668', '7120668', null, '2013-06-09 11:15:35', null, null, null, null);
INSERT INTO `siswa` VALUES ('568', '0351', 'Ilham Malik Akbar ', 'L', 'Ponorogo', '0000-00-00', 'Mulyoto', 'Islam ', 'PNS', 'RT/RW 02/02 Ds. Maron Kauman', '085259597744', '085259597744', null, '2013-06-09 11:15:35', null, null, null, null);
INSERT INTO `siswa` VALUES ('569', '0354', 'Izaaz Abdul Harits', 'L', 'Kupang', '2001-01-05', 'Ichwan Andrianto', 'Islam ', 'PNS', 'Perum Sidomulyo Blok C/6 Babadan', '0352-462503', '0352-462503', null, '2013-06-09 11:15:35', null, null, null, null);
INSERT INTO `siswa` VALUES ('570', '0356', 'Jeihan Vitriashilla Maharani', 'P', 'Ponorogo ', '0000-00-00', 'Ir. Agus Susanto', 'Islam ', 'Wiraswasta', 'Jl. Sultan Agung 86 Ponorogo', '0325-481205', '0325-481205', null, '2013-06-09 11:15:35', null, null, null, null);
INSERT INTO `siswa` VALUES ('571', '0358', 'Lu\'lu\' Luthfiyyana Labibah', 'P', 'Ponorogo', '2002-01-04', 'Suwito', 'Islam ', 'Guru', 'Ds. Pijeran Siman Ponorogo', '0352-489946', '0352-489946', null, '2013-06-09 11:15:35', null, null, null, null);
INSERT INTO `siswa` VALUES ('572', '0359', 'M. Baihaqi Abdurrohim ', 'L', 'Ponorogo', '2002-12-02', 'Luqman E.  ', 'Islam ', 'Swasta', 'Jl. Batoro Katong 180 Ponorogo', '7103477', '7103477', null, '2013-06-09 11:15:35', null, null, null, null);
INSERT INTO `siswa` VALUES ('573', '0364', 'Mohammad Brilliant Andrew Reswara', 'L', 'Ponorogo ', '0000-00-00', 'Yusuf Sufiyadi', 'Islam ', 'swasta(PJTKI)', 'Jl. R Wijaya 30 Kadipaten', '531301', '531301', null, '2013-06-09 11:15:35', null, null, null, null);
INSERT INTO `siswa` VALUES ('574', '0373', 'Muhammad Rizqi Naufal Ulinnuha', 'L', 'Ponorogo', '0000-00-00', 'Indah Rianasari', 'Islam ', 'wiraswasta', 'Jl. Prahasto 53 Bancangan Sambit ', '0352-311274', '0352-311274', null, '2013-06-09 11:15:35', null, null, null, null);
INSERT INTO `siswa` VALUES ('575', '0375', 'Nadhifa Alya Hamidah', 'P', 'Ponorogo', '2002-02-03', 'Sarbianto', 'Islam ', 'Perawat', 'Gombang RT/RW 02/02 Slahung', '0352-371844', '0352-371844', null, '2013-06-09 11:15:35', null, null, null, null);
INSERT INTO `siswa` VALUES ('576', '0376', 'Najwa Amelia Qorry \'Aina ', 'P', 'Ponorogo', '0000-00-00', 'Zaenal Arif F.', 'Islam ', 'Guru', 'Jl. Jawa IV No. 29A Mangkujayan Po.', '0352-7100328', '0352-7100328', null, '2013-06-09 11:15:35', null, null, null, null);
INSERT INTO `siswa` VALUES ('577', '0377', 'Naoval Muizzul El Haq', 'L', 'Ponorogo ', '2001-01-12', 'Ahmad Zubaidi', 'Islam ', 'PNS', 'Jl. Imam Bonjol 41 Ponorogo', '0352-483663', '0352-483663', null, '2013-06-09 11:15:35', null, null, null, null);
INSERT INTO `siswa` VALUES ('578', '0385', 'Rahma Wirdatul Umami', 'P', 'Ponorogo', '0000-00-00', 'Imron B', 'Islam ', 'PNS (SMP1Slahung)', 'Jl. Madura 08, Slahung', '0352-371272', '0352-371272', null, '2013-06-09 11:15:35', null, null, null, null);
INSERT INTO `siswa` VALUES ('579', '0386', 'Rahmadina Azizah', 'P', 'Bima', '2001-02-12', 'Suryadin', 'Islam ', 'PNS (Perawat)', 'Jl. Persatuan Ngunut Babadan', '08155606411', '08155606411', null, '2013-06-09 11:15:35', null, null, null, null);
INSERT INTO `siswa` VALUES ('580', '0387', 'Raihan Fadhila Sukmana', 'L', 'Ponorogo', '2002-07-05', 'Eko Budi S', 'Islam ', 'Peg. BMUN', 'Jl. Wonopringgo RT/RW 1/3 Kertosari P.', '08123400195', '08123400195', null, '2013-06-09 11:15:35', null, null, null, null);
INSERT INTO `siswa` VALUES ('581', '0388', 'Ranindya Inugrahanti', 'P', 'Ponorogo', '0000-00-00', 'Rudi Siswoyo', 'Islam ', 'guru', 'Perum Grisimai CB 10 Ponorogo', '081335790277', '081335790277', null, '2013-06-09 11:15:35', null, null, null, null);
INSERT INTO `siswa` VALUES ('582', '0390', 'Romzi Izzuddin Aufa', 'L', 'Ponorogo', '2002-10-06', 'Munif Ali Anhari', 'Islam ', 'PNS Pemda PO', 'RT/RW 02/02 Sukosari, Babadan', '08125988309', '08125988309', null, '2013-06-09 11:15:35', null, null, null, null);
INSERT INTO `siswa` VALUES ('583', '0402', 'Yusuf Afif Ramadhan', 'L', 'Surabaya', '2001-09-12', 'Adji Suwandono', 'Islam ', 'Swasta', 'Jl. Tangkuban Perahu 7 Ponorogo', '0352-461267', '0352-461267', null, '2013-06-09 11:15:35', null, null, null, null);
INSERT INTO `siswa` VALUES ('587', '0220', 'Aldia Ataa Rahmatika', 'P', 'Ponorogo ', '0000-00-00', 'Sugeng Mugiarto', 'Islam', 'Swasta ', 'Jl. Tirtotejo 28', '483903', '483903', null, '2013-06-09 11:17:42', null, null, null, null);
INSERT INTO `siswa` VALUES ('588', '0229', 'Aquila Ghafril Azizah', 'P', 'Blitar ', '0000-00-00', 'Ahmad Zamroni', 'Islam', 'Wiraswasta ', 'Bajang Mlarak ', '311688', '311688', null, '2013-06-09 11:17:42', null, null, null, null);
INSERT INTO `siswa` VALUES ('589', '0230', 'Ardis Nur Irsyad Surahmawan', 'L', 'Ponorogo ', '0000-00-00', 'Beni Surahman ', 'Islam', 'Guru ', 'Jl. Mayjen Sutoyo ', '462838', '462838', null, '2013-06-09 11:17:42', null, null, null, null);
INSERT INTO `siswa` VALUES ('590', '0305', 'Aulia Zulfiana Nur Faiza', 'P', 'Ponorogo ', '0000-00-00', 'Fauzi Ernawanto', 'Islam', 'PNS', 'Pondok Babadan ', '081335789694', '081335789694', null, '2013-06-09 11:17:42', null, null, null, null);
INSERT INTO `siswa` VALUES ('591', '0235', 'Bangkit Dwi Ari Suseno', 'L', 'Ponorogo ', '0000-00-00', 'Seno', 'Islam', 'Swasta ', 'Jl. Sudono Soekerjo Perumda E.31', '484017', '484017', null, '2013-06-09 11:17:42', null, null, null, null);
INSERT INTO `siswa` VALUES ('592', '0236', 'Bregas Firhan Indrasworo', 'L', 'Ponorogo ', '0000-00-00', 'Sabdo Firmanto', 'Islam', 'Swasta ', 'Jl. Puspowarno 85', '487583', '487583', null, '2013-06-09 11:17:42', null, null, null, null);
INSERT INTO `siswa` VALUES ('593', '0244', 'Falih Farros Yaqzhoon', 'L', 'Ponorogo ', '0000-00-00', 'Fahrudi Efendi ', 'Islam', 'Wiraswasta ', 'Jenangan Ponorogo ', '081933186984', '081933186984', null, '2013-06-09 11:17:42', null, null, null, null);
INSERT INTO `siswa` VALUES ('594', '0246', 'Faris Muhammad Abdulloh', 'L', 'Ponorogo ', '0000-00-00', 'Basuki Abdullah', 'Islam', 'Wiraswasta ', 'Jl. Raya Sumoroto 114 Kauman ', '08174142967', '08174142967', null, '2013-06-09 11:17:42', null, null, null, null);
INSERT INTO `siswa` VALUES ('595', '0248', 'Ghowi Eka Saputra', 'L', 'Ponorogo ', '0000-00-00', 'Suhardi ', 'Islam', 'Swasta', 'Jl. Letjen S. Parman 128', '484048', '484048', null, '2013-06-09 11:17:42', null, null, null, null);
INSERT INTO `siswa` VALUES ('596', '0253', 'Hanif Mustoofa Al fajri ', 'L', 'Pacitan ', '0000-00-00', 'Mutijab ', 'Islam', 'Guru ', 'Crabak Slahung Ponorogo ', '7111753', '7111753', null, '2013-06-09 11:17:42', null, null, null, null);
INSERT INTO `siswa` VALUES ('597', '0255', 'Ityan Nuril Sofia Imamah', 'P', 'Ponorogo ', '2000-05-08', 'Suratno ', 'Islam', 'Swasta', 'Jl. Ahmad Yani 153 Surodikraman ', '462459', '462459', null, '2013-06-09 11:17:42', null, null, null, null);
INSERT INTO `siswa` VALUES ('598', '0256', 'Jasmina Azizi Fatiha Rahma ', 'P', 'Ponorogo ', '0000-00-00', 'Agus Purwanto', 'Islam', 'Swasta ', 'Perum Sidomulyo A4 Babadan ', '531318', '531318', null, '2013-06-09 11:17:42', null, null, null, null);
INSERT INTO `siswa` VALUES ('599', '0272', 'M. Irsyad Auliya Al Fathoni', 'L', 'Ponorogo ', '0000-00-00', 'M. Sudartono ', 'Islam', 'PNS', 'Kapuran Badegan ', '0812594116', '0812594116', null, '2013-06-09 11:17:42', null, null, null, null);
INSERT INTO `siswa` VALUES ('600', '0261', 'Mellin Nadya Andarista', 'P', 'Ponorogo ', '0000-00-00', 'Suparno ', 'Islam', 'PNS', 'Trisono Babadan Ponorogo', '482513', '482513', null, '2013-06-09 11:17:42', null, null, null, null);
INSERT INTO `siswa` VALUES ('601', '0264', 'Mozza Rojoel Kalimandzaro', 'L', 'Banjarmasin ', '0000-00-00', 'M. Nurdin', 'Islam', 'Guru ', 'Jl. DI Panjaitan 184', '461966', '461966', null, '2013-06-09 11:17:42', null, null, null, null);
INSERT INTO `siswa` VALUES ('602', '0267', 'Muhammad Al Ahkamiel Hakim Alfian A.H.', 'L', 'Ponorogo ', '2001-07-01', 'Ngarji', 'Islam', 'PNS', 'Jl. Raya Siman Patihan Kidul Po', '489045', '489045', null, '2013-06-09 11:17:42', null, null, null, null);
INSERT INTO `siswa` VALUES ('603', '0270', 'Muhammad Fairous Zaki Zahroni', 'L', 'Ponorogo ', '0000-00-00', 'Abdul Azis Muslim', 'Islam', 'Pedagang ', 'Jl. Anjasmara 23 ', '7103488', '7103488', null, '2013-06-09 11:17:42', null, null, null, null);
INSERT INTO `siswa` VALUES ('604', '0271', 'Muhammad Gemilang Ramadhan', 'L', 'Ponorogo ', '0000-00-00', 'Basuki', 'Islam', 'Sekdes Jenangan', 'Dusun Pelem Gurih Jenangan Po', '531464', '531464', null, '2013-06-09 11:17:42', null, null, null, null);
INSERT INTO `siswa` VALUES ('605', '0276', 'Muhammad Zahron Faruqi', 'L', 'Ponorogo ', '2000-07-11', 'Moh. Fatchurohman ', 'Islam', 'Kontraktor ', 'Dukuh Majasem RT.I RW I Madusari', '488006', '488006', null, '2013-06-09 11:17:42', null, null, null, null);
INSERT INTO `siswa` VALUES ('606', '0281', 'Novi Rahmatika I. ', 'P', 'Ponorogo ', '2000-01-11', 'Tajul Mujahidin ', 'Islam', 'PNS', 'Jl. Urip Sumoharjo No. 111 B Banyudono', '081359871070', '081359871070', null, '2013-06-09 11:17:42', null, null, null, null);
INSERT INTO `siswa` VALUES ('607', '0291', 'Rizma Zela Tricahyanti', 'P', 'Ponorogo ', '2001-03-02', 'Sukaryanto ', 'Islam', 'Guru SD', 'Jl. Singasari 42 Kadipaten Po', '7103875', '7103875', null, '2013-06-09 11:17:42', null, null, null, null);
INSERT INTO `siswa` VALUES ('608', '0293', 'Safina Nur Fadiya', 'P', 'Ponorogo ', '0000-00-00', 'Ujang Supriyatna', 'Islam', 'Swasta', 'Jl. Singajaya Blok. A 24', '085233618007', '085233618007', null, '2013-06-09 11:17:42', null, null, null, null);
INSERT INTO `siswa` VALUES ('609', '0295', 'Siti Lathifah Tsaqila', 'P', 'Ponorogo ', '0000-00-00', 'Bambang Widyah', 'Islam', 'Dosen ', 'Jl. Letjen Suprapto G.I ', '08122599715', '08122599715', null, '2013-06-09 11:17:42', null, null, null, null);
INSERT INTO `siswa` VALUES ('610', '0299', 'Tunas Pujangga D.', 'L', 'Ponorogo ', '0000-00-00', 'Utomo', 'Islam', 'Wiraswasta ', 'Joresan Mlarak Ponorogo ', '08881980029', '08881980029', null, '2013-06-09 11:17:42', null, null, null, null);
INSERT INTO `siswa` VALUES ('611', '0300', 'Wahyu Purwaning Utami', 'P', 'Ponorogo ', '0000-00-00', 'Hadi Rustiyono', 'Islam', 'PNS', 'Singkil Balong Ponorogo ', '371441', '371441', null, '2013-06-09 11:17:42', null, null, null, null);
INSERT INTO `siswa` VALUES ('612', '0304', 'Zinedine Zidney Arrad - Mizan', 'L', 'Ponorogo ', '0000-00-00', 'M. Rotmianto', 'Islam', 'Karyawan Unmuh', 'Jl. Sumbawa 42', '7109769', '7109769', null, '2013-06-09 11:17:42', null, null, null, null);
INSERT INTO `siswa` VALUES ('618', '0217', 'Afifah Nur Ramadhani', 'P', 'Samarinda ', '2000-04-12', 'Yugiarto', 'Islam', 'Swasta ', 'Perum Madusari No. 4', '081335701940', '081335701940', null, '2013-06-09 11:19:58', null, null, null, null);
INSERT INTO `siswa` VALUES ('619', '0218', 'Ahmad Naufal Labiib Nabhaan', 'L', 'Ponorogo ', '0000-00-00', 'Ihsanudin. Sp', 'Islam', 'Wiraswasta', 'Jl. Anjasmara 11', '462562', '462562', null, '2013-06-09 11:19:58', null, null, null, null);
INSERT INTO `siswa` VALUES ('620', '0222', 'Alfu Afkar Anniffari', 'L', 'Tlng Agung', '2001-01-04', 'Luluk Yunan R.', 'Islam', 'Guru ', 'Jl. Sukomingo Demangan ', '7107897', '7107897', null, '2013-06-09 11:19:58', null, null, null, null);
INSERT INTO `siswa` VALUES ('621', '0224', 'Ameilia Anastasya Rahma Afizah', 'P', 'Ponorogo ', '0000-00-00', 'Samsuri ', 'Islam', 'Wiraswasta ', 'Ngampel Balong ', '461266', '461266', null, '2013-06-09 11:19:58', null, null, null, null);
INSERT INTO `siswa` VALUES ('622', '0403', 'Daffa Thorif Murtadha ', 'L', 'Ponorogo', '0000-00-00', 'Misnianto', 'Islam', 'PNS', 'Josari Jetis Ponorogo', '751819', '751819', null, '2013-06-09 11:19:58', null, null, null, null);
INSERT INTO `siswa` VALUES ('623', '0239', 'Elazhar Ridwan Ariq', 'L', 'Ponorogo ', '0000-00-00', 'Fredi Purwanto', 'Islam', 'Wiraswasta', 'Perum Sidomulyo Babadan ', '462485', '462485', null, '2013-06-09 11:19:58', null, null, null, null);
INSERT INTO `siswa` VALUES ('624', '0241', 'Fadhil Hilmi Naufrida', 'L', 'Ponorogo ', '2001-10-08', 'Supriyanto ', 'Islam', 'Guru ', 'Jl. Keramat 14', '488701', '488701', null, '2013-06-09 11:19:58', null, null, null, null);
INSERT INTO `siswa` VALUES ('625', '0250', 'Hafiz Sheva Izzulhaq', 'L', 'Batu Raja ', '0000-00-00', 'Sopyan ', 'Islam', 'Swasta ', 'Jl. Rumpuk 57', '081359697340', '081359697340', null, '2013-06-09 11:19:58', null, null, null, null);
INSERT INTO `siswa` VALUES ('626', '0254', 'Hasna Nabiila Raihana', 'P', 'Ponorogo ', '0000-00-00', 'Edi Prestiono ', 'Islam', 'Guru ', 'Jetis Ponorogo ', '311822', '311822', null, '2013-06-09 11:19:58', null, null, null, null);
INSERT INTO `siswa` VALUES ('627', '0259', 'Luthfi Mutiara Fitri Mudhofir', 'P', 'Ponorogo ', '0000-00-00', 'Muhammad Mudhofir', 'Islam', 'PNS', 'Perumnas Singosaren D28', '483589', '483589', null, '2013-06-09 11:19:58', null, null, null, null);
INSERT INTO `siswa` VALUES ('628', '0262', 'Miko Gagas Adireynaldo', 'L', 'Ponorogo ', '2000-11-10', 'Joko Adi Kuswanto', 'Islam', 'Wiraswasta', 'Jl. Astrokoro ', '487498', '487498', null, '2013-06-09 11:19:58', null, null, null, null);
INSERT INTO `siswa` VALUES ('629', '0263', 'Mohammad Daffa Izzulhaq', 'L', 'Ponorogo ', '0000-00-00', 'Sutarlan', 'Islam', 'PNS', 'Jl. Jatisari Semanding Ponorogo ', '', '', null, '2013-06-09 11:19:58', null, null, null, null);
INSERT INTO `siswa` VALUES ('630', '0266', 'Muhammad  Haris Az Zahidy', 'L', 'Trenggalek', '0000-00-00', 'Bambang Syamsu', 'Islam', 'Paramedis ', 'Jl. Syuhada 154 Ngunut ', '462506', '462506', null, '2013-06-09 11:19:58', null, null, null, null);
INSERT INTO `siswa` VALUES ('631', '0269', 'Muhammad Azmi Ar-Rifai ', 'L', 'Ponorogo ', '0000-00-00', 'Senin ', 'Islam', 'Wiraswasta ', 'Wonoketro Jetis Ponorogo', '312369', '312369', null, '2013-06-09 11:19:58', null, null, null, null);
INSERT INTO `siswa` VALUES ('632', '0405', 'Muhammad Dahbi Adhyaksa ', 'L', 'Jakarta ', '0000-00-00', 'Agus Supriyono', 'Islam', 'Swasta', 'Jl. DI. Panjaitan 184 Ponorogo', '461966', '461966', null, '2013-06-09 11:19:58', null, null, null, null);
INSERT INTO `siswa` VALUES ('633', '0277', 'Nabiilah Winda Kurnia Putri', 'P', 'Ponorogo ', '2000-08-09', 'Marduwi Wahyuono ', 'Islam', 'PNS', 'Karangmojo Balong Ponorogo ', '085235322981', '085235322981', null, '2013-06-09 11:19:58', null, null, null, null);
INSERT INTO `siswa` VALUES ('634', '0278', 'Nada Muhda Imana', 'P', 'Ponorogo ', '0000-00-00', 'Nurul Iman ', 'Islam', 'Swasta', 'Jl. Perikanan 66 Ponorogo ', '482386', '463032', null, '2013-06-09 11:19:58', null, null, null, null);
INSERT INTO `siswa` VALUES ('635', '0283', 'Nurul Kusuma Wardani', 'P', 'Ponorogo ', '2000-10-08', 'Slamet Djarwani', 'Islam', 'Guru ', 'Bedi kulon Bungkal ', '081359289543', '081359289543', null, '2013-06-09 11:19:58', null, null, null, null);
INSERT INTO `siswa` VALUES ('636', '0284', 'Oscar Danendra Ramzy Girinaga', 'L', 'Ponorogo ', '2000-08-07', 'Dawam Suhada', 'Islam', 'PNS', 'Jl. Tunggal Asri Bareng Ponorogo', '085649227007', '085649227007', null, '2013-06-09 11:19:58', null, null, null, null);
INSERT INTO `siswa` VALUES ('637', '0287', 'Rachmad Rif’an Fauzi', 'L', 'Ponorogo ', '0000-00-00', 'Basuki Rahmad', 'Islam', 'Faus Sablon ', 'Jl. Halim Perdana Kusuma 25 Po', '487261', '487261', null, '2013-06-09 11:19:58', null, null, null, null);
INSERT INTO `siswa` VALUES ('638', '0294', 'Salsabilla Widyarto', 'P', 'Ponorogo ', '0000-00-00', 'Marsudi Widyarto ', 'Islam', 'Pengawas ', 'Jl. Sumadi E 15 Perumda ', '488027', '488027', null, '2013-06-09 11:19:58', null, null, null, null);
INSERT INTO `siswa` VALUES ('639', '0296', 'Syaffi’ Rangga Raditya Ramdhan', 'L', 'Ponorogo ', '0000-00-00', 'Muhammad Ramadan', 'Islam', 'Wiraswasta', 'Jl. Batoro katong 250', '482328', '482328', null, '2013-06-09 11:19:58', null, null, null, null);
INSERT INTO `siswa` VALUES ('640', '0301', 'Waulida Zakiyul Ramadha Putri', 'P', 'Ponorogo ', '0000-00-00', 'Trimo ', 'Islam', 'Kejaksaan ', 'Dsn Blimbing Sukorejo ', '461343', '461343', null, '2013-06-09 11:19:58', null, null, null, null);
INSERT INTO `siswa` VALUES ('641', '0302', 'Yahya Gufron', 'L', 'Ponorogo ', '0000-00-00', 'Sudibyo', 'Islam', 'Swasta', 'Jl. KH. Wahid Hasyim G.I 3', '487125', '487125', null, '2013-06-09 11:19:58', null, null, null, null);
INSERT INTO `siswa` VALUES ('642', '0312', 'Youri Randi Tasbaeni ', 'L', 'Ponorpgo', '0000-00-00', 'Achmad Tasbaeni', 'Islam', 'BUMN', 'Per. Pesona Madusari Jl. Madusari I No 11', '081335874575', '081335874575', null, '2013-06-09 11:19:58', null, null, null, null);
INSERT INTO `siswa` VALUES ('649', '0216', 'Adelia Hani Sabrina', 'P', 'Ponorogo ', '0000-00-00', 'Purwadi ', 'Islam', 'PNS', 'Cabean, Plunturan Pulung ', '571988', '571988', null, '2013-06-09 11:21:29', null, null, null, null);
INSERT INTO `siswa` VALUES ('650', '0223', 'Allmas Putri Nabilla', 'P', 'Ponorogo ', '0000-00-00', 'Suhadi Isdiyanto', 'Islam', 'Wiraswasta', 'Jl. Kokrosono 30/32', '461751', '461751', null, '2013-06-09 11:21:29', null, null, null, null);
INSERT INTO `siswa` VALUES ('651', '0226', 'Andre Wahyu Amanullah', 'L', 'Pekanbaru ', '0000-00-00', 'Junaedi ', 'Islam', 'Perawat', 'Beton Siman Ponorogo ', '08125924953', '08125924953', null, '2013-06-09 11:21:29', null, null, null, null);
INSERT INTO `siswa` VALUES ('652', '0227', 'Aqil Salim', 'L', 'Ponorogo ', '2001-11-03', 'Arif Yeni Varianto', 'Islam', 'Guru ', 'Jl. Bhayangkara G.II 15', '483051', '483051', null, '2013-06-09 11:21:29', null, null, null, null);
INSERT INTO `siswa` VALUES ('653', '0232', 'Arsy Ramadhani', 'P', 'Ponorogo ', '0000-00-00', 'Katirin ', 'Islam', 'Wiraswasta ', 'Jl. Kataptoyani Wonoketro Jetis ', '081359525231', '081359525231', null, '2013-06-09 11:21:29', null, null, null, null);
INSERT INTO `siswa` VALUES ('654', '0233', 'Azizatul \'Afifah', 'P', 'Ponorogo ', '0000-00-00', 'Jalal Ahmadi ', 'Islam', 'PNS', 'Desa Sawo Siman ', '081335628950', '081335628950', null, '2013-06-09 11:21:29', null, null, null, null);
INSERT INTO `siswa` VALUES ('655', '0234', 'Azzahra Mubyaring Putri Sayekti', 'P', 'Ponorogo ', '0000-00-00', 'Didik Ari Purwadi ', 'Islam', 'PNS', 'Purwosari Babadan ', '311945', '311945', null, '2013-06-09 11:21:29', null, null, null, null);
INSERT INTO `siswa` VALUES ('656', '0237', 'Dhanar Faisal Bagus Allathif', 'L', 'Ponorogo ', '0000-00-00', 'Muhammad Ismail ', 'Islam', 'Swasta', 'Jl. Gatot Subroto 88', '081335758439', '081335758439', null, '2013-06-09 11:21:29', null, null, null, null);
INSERT INTO `siswa` VALUES ('657', '0238', 'Diffa\' Haidar Kova', 'L', 'Madiun ', '2000-01-04', 'Ahmad Iswahyanto', 'Islam', 'Pengacara ', 'Jl. Siberut 39', '311382', '311382', null, '2013-06-09 11:21:29', null, null, null, null);
INSERT INTO `siswa` VALUES ('658', '0242', 'Fadhila Firdianika', 'L', 'Pacitan ', '2001-08-02', 'Sapar Sunardi ', 'Islam', 'Guru ', 'Kertosari Indah G.3', '08125956145', '08125956145', null, '2013-06-09 11:21:29', null, null, null, null);
INSERT INTO `siswa` VALUES ('659', '0243', 'Fahmi Kurnia Kamiludin', 'L', 'Blitar ', '0000-00-00', 'Kurniadi Ismartono', 'Islam', 'Swasta ', 'Jl. Ternate 9B', '081556457703', '081556457703', null, '2013-06-09 11:21:29', null, null, null, null);
INSERT INTO `siswa` VALUES ('660', '0245', 'Farhan Aufa Muzakky', 'L', 'Ponorogo ', '0000-00-00', 'Juni Setiawan ', 'Islam', 'Perawat ', 'Jl. Stasiun 20', '371228', '371228', null, '2013-06-09 11:21:29', null, null, null, null);
INSERT INTO `siswa` VALUES ('661', '0249', 'Gladis Tazaka Mustaqim', 'P', 'Ponorogo ', '0000-00-00', 'Arif Mustaqim. SH', 'Islam', 'PNS', 'Ngabar Siman Ponorogo ', '081335225750', '081335225750', null, '2013-06-09 11:21:29', null, null, null, null);
INSERT INTO `siswa` VALUES ('662', '0251', 'Haidar Miftahul Falah', 'P', 'Ponorogo ', '2001-01-01', 'Roisul Habibah ', 'Islam', 'Guru ', 'Jl. KBP Duryat 17', '485350', '485350', null, '2013-06-09 11:21:29', null, null, null, null);
INSERT INTO `siswa` VALUES ('663', '0162', 'Hammzah Izzul Haq ', 'L', 'Ponorogo', '2000-02-02', 'Akhmad Marsudin ', 'Islam', 'Wiraswasta', 'Jl. Kawung No. 157 ', '7108004', '7108004', null, '2013-06-09 11:21:29', null, null, null, null);
INSERT INTO `siswa` VALUES ('664', '0252', 'Hanif Aulia Akbar', 'L', 'Balikpapan ', '0000-00-00', 'Mujian ', 'Islam', 'POLRI', 'Desa Kunti Bungkal Ponorogo ', '081359138736', '081359138736', null, '2013-06-09 11:21:29', null, null, null, null);
INSERT INTO `siswa` VALUES ('665', '0257', 'Kukuh Sri Pakuaji', 'L', 'Ponorogo ', '0000-00-00', 'Rumanto', 'Islam', 'PNS', 'Pager Bungkal Ponorogo', '7101348', '7101348', null, '2013-06-09 11:21:29', null, null, null, null);
INSERT INTO `siswa` VALUES ('666', '0258', 'Lesta Romdhoni', 'L', 'Ponorogo ', '0000-00-00', 'Sukirno', 'Islam', 'Swasta ', 'Jl. Singolemboro 2 ', '085958593766', '085958593766', null, '2013-06-09 11:21:29', null, null, null, null);
INSERT INTO `siswa` VALUES ('667', '0274', 'Muhammad Rahadian R. Firdausa', 'L', 'Ponorogo ', '0000-00-00', 'Budi Ali Rohmat ', 'Islam', 'TNI AU', 'Jl. Batoro Katong I/1 Ponorogo ', '485441', '485441', null, '2013-06-09 11:21:29', null, null, null, null);
INSERT INTO `siswa` VALUES ('668', '0275', 'Muhammad Ulil Abshor Musthofa Arrofi\'i', 'L', 'Madiun ', '2000-07-07', 'Amiruddin', 'Islam', 'Guru ', 'Kadipaten Ponorogo ', '081335603072', '081335603072', null, '2013-06-09 11:21:29', null, null, null, null);
INSERT INTO `siswa` VALUES ('669', '0282', 'Novianto Dwi Prakoso Aji Nugroho', 'L', 'Ponorogo ', '0000-00-00', 'Sudarto ', 'Islam', 'Karyawan KBKS ', 'Jl. Ontorejo 37 Ponorogo ', '489122', '489122', null, '2013-06-09 11:21:29', null, null, null, null);
INSERT INTO `siswa` VALUES ('670', '0285', 'Perolina Putri Pertiwi', 'P', 'Ponorogo ', '2000-07-08', 'Indra Yuanasakti ', 'Islam', 'POLRI', 'Jl. Nanas 2 ', '08125972434', '08125972434', null, '2013-06-09 11:21:29', null, null, null, null);
INSERT INTO `siswa` VALUES ('671', '0286', 'Rahadian Aufa Diaurrahman', 'L', 'Ponorogo ', '0000-00-00', 'Irvan Budianto', 'Islam', 'Swasta', 'Jl. Batoro Katong 69', '485526', '485526', null, '2013-06-09 11:21:29', null, null, null, null);
INSERT INTO `siswa` VALUES ('672', '0289', 'Ridka Aulia Santi', 'P', 'Ponorogo ', '2001-10-01', 'Mujib Ridwan ', 'Islam', 'PNS', 'Desa Kupuk Bungkal ', '', '', null, '2013-06-09 11:21:29', null, null, null, null);
INSERT INTO `siswa` VALUES ('673', '0297', 'Taufan Adi Prayoga ', 'L', 'Ponorogo ', '0000-00-00', 'Puji Hariyono ', 'Islam', 'Guru ', 'Perumda Blok E 45', '081359399817', '081359399817', null, '2013-06-09 11:21:29', null, null, null, null);
INSERT INTO `siswa` VALUES ('674', '0303', 'Zahra Dwi Rismawati', 'P', 'Kediri', '0000-00-00', 'Ali Murtopo', 'Islam', 'Swasta', 'Jl. Bhayangkara 70', '481850', '481850', null, '2013-06-09 11:21:29', null, null, null, null);
INSERT INTO `siswa` VALUES ('684', '11111', 'test', null, 'sdfgs', '2013-09-18', 'fsdfsd', null, 'fsdfsd', 'rfsdfsdfsd', '234', '234234', 'sdfsd', '2013-06-18 20:57:43', null, null, null, null);

-- ----------------------------
-- Table structure for siswa_kelas
-- ----------------------------
DROP TABLE IF EXISTS `siswa_kelas`;
CREATE TABLE `siswa_kelas` (
  `siswakelas_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kelas_id` int(10) unsigned NOT NULL COMMENT 'Foreign Key dari db.kelas',
  `siswakelas_thnpelajaran` varchar(9) DEFAULT NULL,
  `siswa_id` int(10) unsigned DEFAULT NULL COMMENT 'Foreign Key dari db.siswa',
  `siswakelas_created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `siswakelas_created_by` varchar(50) DEFAULT NULL,
  `siswakelas_updated_date` datetime DEFAULT NULL,
  `siswakelas_updated_by` varchar(50) DEFAULT NULL,
  `siswakelas_revised` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`siswakelas_id`)
) ENGINE=InnoDB AUTO_INCREMENT=675 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of siswa_kelas
-- ----------------------------
INSERT INTO `siswa_kelas` VALUES ('1', '1', '2012/2013', '1', '2013-06-02 14:56:59', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('2', '1', '2012/2013', '2', '2013-06-02 14:56:59', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('3', '1', '2012/2013', '3', '2013-06-02 14:56:59', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('4', '1', '2012/2013', '4', '2013-06-02 14:56:59', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('5', '1', '2012/2013', '5', '2013-06-02 14:56:59', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('6', '1', '2012/2013', '6', '2013-06-02 14:56:59', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('7', '1', '2012/2013', '7', '2013-06-02 14:56:59', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('8', '1', '2012/2013', '8', '2013-06-02 14:56:59', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('9', '1', '2012/2013', '9', '2013-06-02 14:56:59', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('10', '1', '2012/2013', '10', '2013-06-02 14:56:59', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('11', '1', '2012/2013', '11', '2013-06-02 14:56:59', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('12', '1', '2012/2013', '12', '2013-06-02 14:56:59', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('13', '1', '2012/2013', '13', '2013-06-02 14:56:59', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('14', '1', '2012/2013', '14', '2013-06-02 14:56:59', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('15', '1', '2012/2013', '15', '2013-06-02 14:56:59', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('16', '1', '2012/2013', '16', '2013-06-02 14:56:59', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('17', '1', '2012/2013', '17', '2013-06-02 14:56:59', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('18', '1', '2012/2013', '18', '2013-06-02 14:56:59', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('19', '1', '2012/2013', '19', '2013-06-02 14:56:59', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('20', '1', '2012/2013', '20', '2013-06-02 14:56:59', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('21', '1', '2012/2013', '21', '2013-06-02 14:56:59', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('22', '1', '2012/2013', '22', '2013-06-02 14:56:59', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('23', '1', '2012/2013', '23', '2013-06-02 14:56:59', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('24', '1', '2012/2013', '24', '2013-06-02 14:56:59', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('25', '1', '2012/2013', '25', '2013-06-02 14:56:59', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('26', '1', '2012/2013', '26', '2013-06-02 14:56:59', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('27', '1', '2012/2013', '27', '2013-06-02 14:56:59', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('28', '1', '2012/2013', '28', '2013-06-02 14:56:59', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('29', '2', '2012/2013', '29', '2013-06-09 10:31:43', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('30', '2', '2012/2013', '30', '2013-06-09 10:31:43', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('31', '2', '2012/2013', '31', '2013-06-09 10:31:43', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('32', '2', '2012/2013', '32', '2013-06-09 10:31:43', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('33', '2', '2012/2013', '33', '2013-06-09 10:31:43', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('34', '2', '2012/2013', '34', '2013-06-09 10:31:43', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('35', '2', '2012/2013', '35', '2013-06-09 10:31:43', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('36', '2', '2012/2013', '36', '2013-06-09 10:31:43', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('37', '2', '2012/2013', '37', '2013-06-09 10:31:43', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('38', '2', '2012/2013', '38', '2013-06-09 10:31:43', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('39', '2', '2012/2013', '39', '2013-06-09 10:31:43', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('40', '2', '2012/2013', '40', '2013-06-09 10:31:43', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('41', '2', '2012/2013', '41', '2013-06-09 10:31:43', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('42', '2', '2012/2013', '42', '2013-06-09 10:31:43', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('43', '2', '2012/2013', '43', '2013-06-09 10:31:43', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('44', '2', '2012/2013', '44', '2013-06-09 10:31:43', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('45', '2', '2012/2013', '45', '2013-06-09 10:31:43', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('46', '2', '2012/2013', '46', '2013-06-09 10:31:43', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('47', '2', '2012/2013', '47', '2013-06-09 10:31:43', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('48', '2', '2012/2013', '48', '2013-06-09 10:31:43', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('49', '2', '2012/2013', '49', '2013-06-09 10:31:43', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('50', '2', '2012/2013', '50', '2013-06-09 10:31:43', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('51', '2', '2012/2013', '51', '2013-06-09 10:31:43', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('52', '2', '2012/2013', '52', '2013-06-09 10:31:43', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('53', '2', '2012/2013', '53', '2013-06-09 10:31:43', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('54', '2', '2012/2013', '54', '2013-06-09 10:31:43', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('55', '2', '2012/2013', '55', '2013-06-09 10:31:43', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('56', '2', '2012/2013', '56', '2013-06-09 10:31:43', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('60', '3', '2012/2013', '60', '2013-06-09 10:36:43', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('61', '3', '2012/2013', '61', '2013-06-09 10:36:43', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('62', '3', '2012/2013', '62', '2013-06-09 10:36:43', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('63', '3', '2012/2013', '63', '2013-06-09 10:36:43', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('64', '3', '2012/2013', '64', '2013-06-09 10:36:43', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('65', '3', '2012/2013', '65', '2013-06-09 10:36:43', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('66', '3', '2012/2013', '66', '2013-06-09 10:36:43', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('67', '3', '2012/2013', '67', '2013-06-09 10:36:43', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('68', '3', '2012/2013', '68', '2013-06-09 10:36:43', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('69', '3', '2012/2013', '69', '2013-06-09 10:36:43', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('70', '3', '2012/2013', '70', '2013-06-09 10:36:43', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('71', '3', '2012/2013', '71', '2013-06-09 10:36:43', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('72', '3', '2012/2013', '72', '2013-06-09 10:36:43', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('73', '3', '2012/2013', '73', '2013-06-09 10:36:43', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('74', '3', '2012/2013', '74', '2013-06-09 10:36:43', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('75', '3', '2012/2013', '75', '2013-06-09 10:36:43', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('76', '3', '2012/2013', '76', '2013-06-09 10:36:43', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('77', '3', '2012/2013', '77', '2013-06-09 10:36:43', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('78', '3', '2012/2013', '78', '2013-06-09 10:36:43', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('79', '3', '2012/2013', '79', '2013-06-09 10:36:43', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('80', '3', '2012/2013', '80', '2013-06-09 10:36:43', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('81', '3', '2012/2013', '81', '2013-06-09 10:36:43', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('82', '3', '2012/2013', '82', '2013-06-09 10:36:43', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('83', '3', '2012/2013', '83', '2013-06-09 10:36:43', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('84', '3', '2012/2013', '84', '2013-06-09 10:36:43', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('85', '3', '2012/2013', '85', '2013-06-09 10:36:43', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('86', '3', '2012/2013', '86', '2013-06-09 10:36:43', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('91', '4', '2012/2013', '91', '2013-06-09 10:39:00', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('92', '4', '2012/2013', '92', '2013-06-09 10:39:00', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('93', '4', '2012/2013', '93', '2013-06-09 10:39:00', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('94', '4', '2012/2013', '94', '2013-06-09 10:39:00', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('95', '4', '2012/2013', '95', '2013-06-09 10:39:00', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('96', '4', '2012/2013', '96', '2013-06-09 10:39:00', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('97', '4', '2012/2013', '97', '2013-06-09 10:39:00', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('98', '4', '2012/2013', '98', '2013-06-09 10:39:00', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('99', '4', '2012/2013', '99', '2013-06-09 10:39:00', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('100', '4', '2012/2013', '100', '2013-06-09 10:39:00', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('101', '4', '2012/2013', '101', '2013-06-09 10:39:00', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('102', '4', '2012/2013', '102', '2013-06-09 10:39:00', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('103', '4', '2012/2013', '103', '2013-06-09 10:39:00', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('104', '4', '2012/2013', '104', '2013-06-09 10:39:00', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('105', '4', '2012/2013', '105', '2013-06-09 10:39:00', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('106', '4', '2012/2013', '106', '2013-06-09 10:39:00', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('107', '4', '2012/2013', '107', '2013-06-09 10:39:00', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('108', '4', '2012/2013', '108', '2013-06-09 10:39:00', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('109', '4', '2012/2013', '109', '2013-06-09 10:39:00', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('110', '4', '2012/2013', '110', '2013-06-09 10:39:00', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('111', '4', '2012/2013', '111', '2013-06-09 10:39:00', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('112', '4', '2012/2013', '112', '2013-06-09 10:39:00', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('113', '4', '2012/2013', '113', '2013-06-09 10:39:00', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('114', '4', '2012/2013', '114', '2013-06-09 10:39:00', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('115', '4', '2012/2013', '115', '2013-06-09 10:39:00', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('116', '4', '2012/2013', '116', '2013-06-09 10:39:00', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('117', '4', '2012/2013', '117', '2013-06-09 10:39:00', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('118', '4', '2012/2013', '118', '2013-06-09 10:39:00', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('122', '5', '2012/2013', '122', '2013-06-09 10:42:15', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('123', '5', '2012/2013', '123', '2013-06-09 10:42:15', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('124', '5', '2012/2013', '124', '2013-06-09 10:42:15', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('125', '5', '2012/2013', '125', '2013-06-09 10:42:15', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('126', '5', '2012/2013', '126', '2013-06-09 10:42:15', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('127', '5', '2012/2013', '127', '2013-06-09 10:42:15', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('128', '5', '2012/2013', '128', '2013-06-09 10:42:15', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('129', '5', '2012/2013', '129', '2013-06-09 10:42:15', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('130', '5', '2012/2013', '130', '2013-06-09 10:42:15', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('131', '5', '2012/2013', '131', '2013-06-09 10:42:15', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('132', '5', '2012/2013', '132', '2013-06-09 10:42:15', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('133', '5', '2012/2013', '133', '2013-06-09 10:42:15', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('134', '5', '2012/2013', '134', '2013-06-09 10:42:15', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('135', '5', '2012/2013', '135', '2013-06-09 10:42:15', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('136', '5', '2012/2013', '136', '2013-06-09 10:42:15', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('137', '5', '2012/2013', '137', '2013-06-09 10:42:15', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('138', '5', '2012/2013', '138', '2013-06-09 10:42:15', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('139', '5', '2012/2013', '139', '2013-06-09 10:42:15', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('140', '5', '2012/2013', '140', '2013-06-09 10:42:15', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('141', '5', '2012/2013', '141', '2013-06-09 10:42:15', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('142', '5', '2012/2013', '142', '2013-06-09 10:42:15', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('143', '5', '2012/2013', '143', '2013-06-09 10:42:15', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('144', '5', '2012/2013', '144', '2013-06-09 10:42:15', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('145', '5', '2012/2013', '145', '2013-06-09 10:42:15', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('146', '5', '2012/2013', '146', '2013-06-09 10:42:15', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('147', '5', '2012/2013', '147', '2013-06-09 10:42:15', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('148', '5', '2012/2013', '148', '2013-06-09 10:42:15', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('149', '5', '2012/2013', '149', '2013-06-09 10:42:15', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('153', '6', '2012/2013', '153', '2013-06-09 10:46:13', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('154', '6', '2012/2013', '154', '2013-06-09 10:46:13', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('155', '6', '2012/2013', '155', '2013-06-09 10:46:13', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('156', '6', '2012/2013', '156', '2013-06-09 10:46:13', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('157', '6', '2012/2013', '157', '2013-06-09 10:46:13', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('158', '6', '2012/2013', '158', '2013-06-09 10:46:13', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('159', '6', '2012/2013', '159', '2013-06-09 10:46:13', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('160', '6', '2012/2013', '160', '2013-06-09 10:46:13', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('161', '6', '2012/2013', '161', '2013-06-09 10:46:13', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('162', '6', '2012/2013', '162', '2013-06-09 10:46:13', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('163', '6', '2012/2013', '163', '2013-06-09 10:46:13', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('164', '6', '2012/2013', '164', '2013-06-09 10:46:13', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('165', '6', '2012/2013', '165', '2013-06-09 10:46:13', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('166', '6', '2012/2013', '166', '2013-06-09 10:46:13', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('167', '6', '2012/2013', '167', '2013-06-09 10:46:13', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('168', '6', '2012/2013', '168', '2013-06-09 10:46:13', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('169', '6', '2012/2013', '169', '2013-06-09 10:46:13', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('170', '6', '2012/2013', '170', '2013-06-09 10:46:13', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('171', '6', '2012/2013', '171', '2013-06-09 10:46:13', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('172', '6', '2012/2013', '172', '2013-06-09 10:46:13', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('173', '6', '2012/2013', '173', '2013-06-09 10:46:13', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('174', '6', '2012/2013', '174', '2013-06-09 10:46:13', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('175', '6', '2012/2013', '175', '2013-06-09 10:46:13', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('176', '6', '2012/2013', '176', '2013-06-09 10:46:13', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('177', '6', '2012/2013', '177', '2013-06-09 10:46:13', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('178', '6', '2012/2013', '178', '2013-06-09 10:46:13', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('179', '6', '2012/2013', '179', '2013-06-09 10:46:13', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('180', '6', '2012/2013', '180', '2013-06-09 10:46:13', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('181', '6', '2012/2013', '181', '2013-06-09 10:46:13', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('182', '6', '2012/2013', '182', '2013-06-09 10:46:13', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('183', '6', '2012/2013', '183', '2013-06-09 10:46:13', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('184', '7', '2012/2013', '184', '2013-06-09 10:50:02', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('185', '7', '2012/2013', '185', '2013-06-09 10:50:02', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('186', '7', '2012/2013', '186', '2013-06-09 10:50:02', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('187', '7', '2012/2013', '187', '2013-06-09 10:50:02', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('188', '7', '2012/2013', '188', '2013-06-09 10:50:02', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('189', '7', '2012/2013', '189', '2013-06-09 10:50:02', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('190', '7', '2012/2013', '190', '2013-06-09 10:50:02', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('191', '7', '2012/2013', '191', '2013-06-09 10:50:02', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('192', '7', '2012/2013', '192', '2013-06-09 10:50:02', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('193', '7', '2012/2013', '193', '2013-06-09 10:50:02', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('194', '7', '2012/2013', '194', '2013-06-09 10:50:02', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('195', '7', '2012/2013', '195', '2013-06-09 10:50:02', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('196', '7', '2012/2013', '196', '2013-06-09 10:50:02', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('197', '7', '2012/2013', '197', '2013-06-09 10:50:02', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('198', '7', '2012/2013', '198', '2013-06-09 10:50:02', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('199', '7', '2012/2013', '199', '2013-06-09 10:50:02', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('200', '7', '2012/2013', '200', '2013-06-09 10:50:02', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('201', '7', '2012/2013', '201', '2013-06-09 10:50:02', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('202', '7', '2012/2013', '202', '2013-06-09 10:50:02', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('203', '7', '2012/2013', '203', '2013-06-09 10:50:02', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('204', '7', '2012/2013', '204', '2013-06-09 10:50:02', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('205', '7', '2012/2013', '205', '2013-06-09 10:50:02', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('206', '7', '2012/2013', '206', '2013-06-09 10:50:02', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('207', '7', '2012/2013', '207', '2013-06-09 10:50:02', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('208', '7', '2012/2013', '208', '2013-06-09 10:50:02', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('209', '7', '2012/2013', '209', '2013-06-09 10:50:02', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('210', '7', '2012/2013', '210', '2013-06-09 10:50:02', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('211', '7', '2012/2013', '211', '2013-06-09 10:50:02', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('212', '7', '2012/2013', '212', '2013-06-09 10:50:02', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('213', '7', '2012/2013', '213', '2013-06-09 10:50:02', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('214', '7', '2012/2013', '214', '2013-06-09 10:50:02', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('215', '8', '2012/2013', '215', '2013-06-09 10:52:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('216', '8', '2012/2013', '216', '2013-06-09 10:52:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('217', '8', '2012/2013', '217', '2013-06-09 10:52:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('218', '8', '2012/2013', '218', '2013-06-09 10:52:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('219', '8', '2012/2013', '219', '2013-06-09 10:52:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('220', '8', '2012/2013', '220', '2013-06-09 10:52:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('221', '8', '2012/2013', '221', '2013-06-09 10:52:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('222', '8', '2012/2013', '222', '2013-06-09 10:52:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('223', '8', '2012/2013', '223', '2013-06-09 10:52:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('224', '8', '2012/2013', '224', '2013-06-09 10:52:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('225', '8', '2012/2013', '225', '2013-06-09 10:52:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('226', '8', '2012/2013', '226', '2013-06-09 10:52:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('227', '8', '2012/2013', '227', '2013-06-09 10:52:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('228', '8', '2012/2013', '228', '2013-06-09 10:52:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('229', '8', '2012/2013', '229', '2013-06-09 10:52:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('230', '8', '2012/2013', '230', '2013-06-09 10:52:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('231', '8', '2012/2013', '231', '2013-06-09 10:52:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('232', '8', '2012/2013', '232', '2013-06-09 10:52:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('233', '8', '2012/2013', '233', '2013-06-09 10:52:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('234', '8', '2012/2013', '234', '2013-06-09 10:52:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('235', '8', '2012/2013', '235', '2013-06-09 10:52:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('236', '8', '2012/2013', '236', '2013-06-09 10:52:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('237', '8', '2012/2013', '237', '2013-06-09 10:52:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('238', '8', '2012/2013', '238', '2013-06-09 10:52:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('239', '8', '2012/2013', '239', '2013-06-09 10:52:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('240', '8', '2012/2013', '240', '2013-06-09 10:52:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('241', '8', '2012/2013', '241', '2013-06-09 10:52:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('242', '8', '2012/2013', '242', '2013-06-09 10:52:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('243', '8', '2012/2013', '243', '2013-06-09 10:52:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('244', '8', '2012/2013', '244', '2013-06-09 10:52:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('245', '8', '2012/2013', '245', '2013-06-09 10:52:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('246', '9', '2012/2013', '246', '2013-06-09 10:54:53', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('247', '9', '2012/2013', '247', '2013-06-09 10:54:53', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('248', '9', '2012/2013', '248', '2013-06-09 10:54:53', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('249', '9', '2012/2013', '249', '2013-06-09 10:54:53', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('250', '9', '2012/2013', '250', '2013-06-09 10:54:53', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('251', '9', '2012/2013', '251', '2013-06-09 10:54:53', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('252', '9', '2012/2013', '252', '2013-06-09 10:54:53', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('253', '9', '2012/2013', '253', '2013-06-09 10:54:53', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('254', '9', '2012/2013', '254', '2013-06-09 10:54:53', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('255', '9', '2012/2013', '255', '2013-06-09 10:54:53', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('256', '9', '2012/2013', '256', '2013-06-09 10:54:53', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('257', '9', '2012/2013', '257', '2013-06-09 10:54:53', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('258', '9', '2012/2013', '258', '2013-06-09 10:54:53', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('259', '9', '2012/2013', '259', '2013-06-09 10:54:53', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('260', '9', '2012/2013', '260', '2013-06-09 10:54:53', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('261', '9', '2012/2013', '261', '2013-06-09 10:54:53', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('262', '9', '2012/2013', '262', '2013-06-09 10:54:53', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('263', '9', '2012/2013', '263', '2013-06-09 10:54:53', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('264', '9', '2012/2013', '264', '2013-06-09 10:54:53', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('265', '9', '2012/2013', '265', '2013-06-09 10:54:53', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('266', '9', '2012/2013', '266', '2013-06-09 10:54:53', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('267', '9', '2012/2013', '267', '2013-06-09 10:54:53', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('268', '9', '2012/2013', '268', '2013-06-09 10:54:53', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('269', '9', '2012/2013', '269', '2013-06-09 10:54:53', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('270', '9', '2012/2013', '270', '2013-06-09 10:54:53', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('271', '9', '2012/2013', '271', '2013-06-09 10:54:53', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('272', '9', '2012/2013', '272', '2013-06-09 10:54:53', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('273', '9', '2012/2013', '273', '2013-06-09 10:54:53', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('274', '9', '2012/2013', '274', '2013-06-09 10:54:53', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('275', '9', '2012/2013', '275', '2013-06-09 10:54:53', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('276', '9', '2012/2013', '276', '2013-06-09 10:54:53', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('277', '10', '2012/2013', '277', '2013-06-09 10:57:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('278', '10', '2012/2013', '278', '2013-06-09 10:57:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('279', '10', '2012/2013', '279', '2013-06-09 10:57:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('280', '10', '2012/2013', '280', '2013-06-09 10:57:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('281', '10', '2012/2013', '281', '2013-06-09 10:57:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('282', '10', '2012/2013', '282', '2013-06-09 10:57:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('283', '10', '2012/2013', '283', '2013-06-09 10:57:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('284', '10', '2012/2013', '284', '2013-06-09 10:57:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('285', '10', '2012/2013', '285', '2013-06-09 10:57:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('286', '10', '2012/2013', '286', '2013-06-09 10:57:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('287', '10', '2012/2013', '287', '2013-06-09 10:57:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('288', '10', '2012/2013', '288', '2013-06-09 10:57:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('289', '10', '2012/2013', '289', '2013-06-09 10:57:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('290', '10', '2012/2013', '290', '2013-06-09 10:57:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('291', '10', '2012/2013', '291', '2013-06-09 10:57:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('292', '10', '2012/2013', '292', '2013-06-09 10:57:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('293', '10', '2012/2013', '293', '2013-06-09 10:57:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('294', '10', '2012/2013', '294', '2013-06-09 10:57:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('295', '10', '2012/2013', '295', '2013-06-09 10:57:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('296', '10', '2012/2013', '296', '2013-06-09 10:57:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('297', '10', '2012/2013', '297', '2013-06-09 10:57:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('298', '10', '2012/2013', '298', '2013-06-09 10:57:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('299', '10', '2012/2013', '299', '2013-06-09 10:57:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('300', '10', '2012/2013', '300', '2013-06-09 10:57:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('301', '10', '2012/2013', '301', '2013-06-09 10:57:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('302', '10', '2012/2013', '302', '2013-06-09 10:57:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('303', '10', '2012/2013', '303', '2013-06-09 10:57:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('308', '11', '2012/2013', '308', '2013-06-09 10:59:28', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('309', '11', '2012/2013', '309', '2013-06-09 10:59:28', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('310', '11', '2012/2013', '310', '2013-06-09 10:59:28', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('311', '11', '2012/2013', '311', '2013-06-09 10:59:28', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('312', '11', '2012/2013', '312', '2013-06-09 10:59:28', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('313', '11', '2012/2013', '313', '2013-06-09 10:59:28', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('314', '11', '2012/2013', '314', '2013-06-09 10:59:28', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('315', '11', '2012/2013', '315', '2013-06-09 10:59:28', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('316', '11', '2012/2013', '316', '2013-06-09 10:59:28', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('317', '11', '2012/2013', '317', '2013-06-09 10:59:28', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('318', '11', '2012/2013', '318', '2013-06-09 10:59:28', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('319', '11', '2012/2013', '319', '2013-06-09 10:59:28', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('320', '11', '2012/2013', '320', '2013-06-09 10:59:28', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('321', '11', '2012/2013', '321', '2013-06-09 10:59:28', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('322', '11', '2012/2013', '322', '2013-06-09 10:59:28', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('323', '11', '2012/2013', '323', '2013-06-09 10:59:28', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('324', '11', '2012/2013', '324', '2013-06-09 10:59:28', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('325', '11', '2012/2013', '325', '2013-06-09 10:59:28', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('326', '11', '2012/2013', '326', '2013-06-09 10:59:28', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('327', '11', '2012/2013', '327', '2013-06-09 10:59:28', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('328', '11', '2012/2013', '328', '2013-06-09 10:59:28', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('329', '11', '2012/2013', '329', '2013-06-09 10:59:28', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('330', '11', '2012/2013', '330', '2013-06-09 10:59:28', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('331', '11', '2012/2013', '331', '2013-06-09 10:59:28', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('332', '11', '2012/2013', '332', '2013-06-09 10:59:28', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('333', '11', '2012/2013', '333', '2013-06-09 10:59:28', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('334', '11', '2012/2013', '334', '2013-06-09 10:59:28', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('339', '12', '2012/2013', '339', '2013-06-09 11:01:35', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('340', '12', '2012/2013', '340', '2013-06-09 11:01:35', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('341', '12', '2012/2013', '341', '2013-06-09 11:01:35', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('342', '12', '2012/2013', '342', '2013-06-09 11:01:35', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('343', '12', '2012/2013', '343', '2013-06-09 11:01:35', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('344', '12', '2012/2013', '344', '2013-06-09 11:01:35', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('345', '12', '2012/2013', '345', '2013-06-09 11:01:35', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('346', '12', '2012/2013', '346', '2013-06-09 11:01:35', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('347', '12', '2012/2013', '347', '2013-06-09 11:01:35', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('348', '12', '2012/2013', '348', '2013-06-09 11:01:35', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('349', '12', '2012/2013', '349', '2013-06-09 11:01:35', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('350', '12', '2012/2013', '350', '2013-06-09 11:01:35', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('351', '12', '2012/2013', '351', '2013-06-09 11:01:35', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('352', '12', '2012/2013', '352', '2013-06-09 11:01:35', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('353', '12', '2012/2013', '353', '2013-06-09 11:01:35', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('354', '12', '2012/2013', '354', '2013-06-09 11:01:35', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('355', '12', '2012/2013', '355', '2013-06-09 11:01:35', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('356', '12', '2012/2013', '356', '2013-06-09 11:01:35', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('357', '12', '2012/2013', '357', '2013-06-09 11:01:35', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('358', '12', '2012/2013', '358', '2013-06-09 11:01:35', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('359', '12', '2012/2013', '359', '2013-06-09 11:01:35', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('360', '12', '2012/2013', '360', '2013-06-09 11:01:35', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('361', '12', '2012/2013', '361', '2013-06-09 11:01:35', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('362', '12', '2012/2013', '362', '2013-06-09 11:01:35', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('363', '12', '2012/2013', '363', '2013-06-09 11:01:35', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('364', '12', '2012/2013', '364', '2013-06-09 11:01:35', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('365', '12', '2012/2013', '365', '2013-06-09 11:01:35', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('370', '13', '2012/2013', '370', '2013-06-09 11:03:54', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('371', '13', '2012/2013', '371', '2013-06-09 11:03:54', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('372', '13', '2012/2013', '372', '2013-06-09 11:03:54', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('373', '13', '2012/2013', '373', '2013-06-09 11:03:54', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('374', '13', '2012/2013', '374', '2013-06-09 11:03:54', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('375', '13', '2012/2013', '375', '2013-06-09 11:03:54', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('376', '13', '2012/2013', '376', '2013-06-09 11:03:54', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('377', '13', '2012/2013', '377', '2013-06-09 11:03:54', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('378', '13', '2012/2013', '378', '2013-06-09 11:03:54', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('379', '13', '2012/2013', '379', '2013-06-09 11:03:54', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('380', '13', '2012/2013', '380', '2013-06-09 11:03:54', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('381', '13', '2012/2013', '381', '2013-06-09 11:03:54', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('382', '13', '2012/2013', '382', '2013-06-09 11:03:54', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('383', '13', '2012/2013', '383', '2013-06-09 11:03:54', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('384', '13', '2012/2013', '384', '2013-06-09 11:03:54', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('385', '13', '2012/2013', '385', '2013-06-09 11:03:54', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('386', '13', '2012/2013', '386', '2013-06-09 11:03:54', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('387', '13', '2012/2013', '387', '2013-06-09 11:03:54', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('388', '13', '2012/2013', '388', '2013-06-09 11:03:54', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('389', '13', '2012/2013', '389', '2013-06-09 11:03:54', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('390', '13', '2012/2013', '390', '2013-06-09 11:03:54', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('391', '13', '2012/2013', '391', '2013-06-09 11:03:54', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('392', '13', '2012/2013', '392', '2013-06-09 11:03:54', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('393', '13', '2012/2013', '393', '2013-06-09 11:03:54', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('394', '13', '2012/2013', '394', '2013-06-09 11:03:54', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('395', '13', '2012/2013', '395', '2013-06-09 11:03:54', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('401', '14', '2012/2013', '401', '2013-06-09 11:05:56', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('402', '14', '2012/2013', '402', '2013-06-09 11:05:56', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('403', '14', '2012/2013', '403', '2013-06-09 11:05:56', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('404', '14', '2012/2013', '404', '2013-06-09 11:05:56', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('405', '14', '2012/2013', '405', '2013-06-09 11:05:56', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('406', '14', '2012/2013', '406', '2013-06-09 11:05:56', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('407', '14', '2012/2013', '407', '2013-06-09 11:05:56', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('408', '14', '2012/2013', '408', '2013-06-09 11:05:56', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('409', '14', '2012/2013', '409', '2013-06-09 11:05:56', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('410', '14', '2012/2013', '410', '2013-06-09 11:05:56', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('411', '14', '2012/2013', '411', '2013-06-09 11:05:56', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('412', '14', '2012/2013', '412', '2013-06-09 11:05:56', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('413', '14', '2012/2013', '413', '2013-06-09 11:05:56', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('414', '14', '2012/2013', '414', '2013-06-09 11:05:56', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('415', '14', '2012/2013', '415', '2013-06-09 11:05:56', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('416', '14', '2012/2013', '416', '2013-06-09 11:05:56', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('417', '14', '2012/2013', '417', '2013-06-09 11:05:56', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('418', '14', '2012/2013', '418', '2013-06-09 11:05:56', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('419', '14', '2012/2013', '419', '2013-06-09 11:05:56', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('420', '14', '2012/2013', '420', '2013-06-09 11:05:56', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('421', '14', '2012/2013', '421', '2013-06-09 11:05:56', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('422', '14', '2012/2013', '422', '2013-06-09 11:05:56', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('423', '14', '2012/2013', '423', '2013-06-09 11:05:56', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('424', '14', '2012/2013', '424', '2013-06-09 11:05:56', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('425', '14', '2012/2013', '425', '2013-06-09 11:05:56', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('426', '14', '2012/2013', '426', '2013-06-09 11:05:56', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('427', '14', '2012/2013', '427', '2013-06-09 11:05:56', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('428', '14', '2012/2013', '428', '2013-06-09 11:05:56', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('429', '14', '2012/2013', '429', '2013-06-09 11:05:56', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('430', '14', '2012/2013', '430', '2013-06-09 11:05:56', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('432', '15', '2012/2013', '432', '2013-06-09 11:07:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('433', '15', '2012/2013', '433', '2013-06-09 11:07:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('434', '15', '2012/2013', '434', '2013-06-09 11:07:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('435', '15', '2012/2013', '435', '2013-06-09 11:07:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('436', '15', '2012/2013', '436', '2013-06-09 11:07:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('437', '15', '2012/2013', '437', '2013-06-09 11:07:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('438', '15', '2012/2013', '438', '2013-06-09 11:07:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('439', '15', '2012/2013', '439', '2013-06-09 11:07:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('440', '15', '2012/2013', '440', '2013-06-09 11:07:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('441', '15', '2012/2013', '441', '2013-06-09 11:07:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('442', '15', '2012/2013', '442', '2013-06-09 11:07:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('443', '15', '2012/2013', '443', '2013-06-09 11:07:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('444', '15', '2012/2013', '444', '2013-06-09 11:07:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('445', '15', '2012/2013', '445', '2013-06-09 11:07:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('446', '15', '2012/2013', '446', '2013-06-09 11:07:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('447', '15', '2012/2013', '447', '2013-06-09 11:07:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('448', '15', '2012/2013', '448', '2013-06-09 11:07:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('449', '15', '2012/2013', '449', '2013-06-09 11:07:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('450', '15', '2012/2013', '450', '2013-06-09 11:07:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('451', '15', '2012/2013', '451', '2013-06-09 11:07:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('452', '15', '2012/2013', '452', '2013-06-09 11:07:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('453', '15', '2012/2013', '453', '2013-06-09 11:07:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('454', '15', '2012/2013', '454', '2013-06-09 11:07:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('455', '15', '2012/2013', '455', '2013-06-09 11:07:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('456', '15', '2012/2013', '456', '2013-06-09 11:07:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('457', '15', '2012/2013', '457', '2013-06-09 11:07:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('458', '15', '2012/2013', '458', '2013-06-09 11:07:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('459', '15', '2012/2013', '459', '2013-06-09 11:07:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('460', '15', '2012/2013', '460', '2013-06-09 11:07:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('461', '15', '2012/2013', '461', '2013-06-09 11:07:36', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('463', '16', '2012/2013', '463', '2013-06-09 11:09:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('464', '16', '2012/2013', '464', '2013-06-09 11:09:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('465', '16', '2012/2013', '465', '2013-06-09 11:09:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('466', '16', '2012/2013', '466', '2013-06-09 11:09:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('467', '16', '2012/2013', '467', '2013-06-09 11:09:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('468', '16', '2012/2013', '468', '2013-06-09 11:09:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('469', '16', '2012/2013', '469', '2013-06-09 11:09:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('470', '16', '2012/2013', '470', '2013-06-09 11:09:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('471', '16', '2012/2013', '471', '2013-06-09 11:09:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('472', '16', '2012/2013', '472', '2013-06-09 11:09:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('473', '16', '2012/2013', '473', '2013-06-09 11:09:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('474', '16', '2012/2013', '474', '2013-06-09 11:09:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('475', '16', '2012/2013', '475', '2013-06-09 11:09:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('476', '16', '2012/2013', '476', '2013-06-09 11:09:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('477', '16', '2012/2013', '477', '2013-06-09 11:09:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('478', '16', '2012/2013', '478', '2013-06-09 11:09:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('479', '16', '2012/2013', '479', '2013-06-09 11:09:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('480', '16', '2012/2013', '480', '2013-06-09 11:09:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('481', '16', '2012/2013', '481', '2013-06-09 11:09:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('482', '16', '2012/2013', '482', '2013-06-09 11:09:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('483', '16', '2012/2013', '483', '2013-06-09 11:09:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('484', '16', '2012/2013', '484', '2013-06-09 11:09:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('485', '16', '2012/2013', '485', '2013-06-09 11:09:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('486', '16', '2012/2013', '486', '2013-06-09 11:09:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('487', '16', '2012/2013', '487', '2013-06-09 11:09:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('488', '16', '2012/2013', '488', '2013-06-09 11:09:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('489', '16', '2012/2013', '489', '2013-06-09 11:09:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('490', '16', '2012/2013', '490', '2013-06-09 11:09:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('491', '16', '2012/2013', '491', '2013-06-09 11:09:34', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('494', '17', '2012/2013', '494', '2013-06-09 11:11:18', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('495', '17', '2012/2013', '495', '2013-06-09 11:11:18', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('496', '17', '2012/2013', '496', '2013-06-09 11:11:18', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('497', '17', '2012/2013', '497', '2013-06-09 11:11:18', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('498', '17', '2012/2013', '498', '2013-06-09 11:11:18', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('499', '17', '2012/2013', '499', '2013-06-09 11:11:18', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('500', '17', '2012/2013', '500', '2013-06-09 11:11:18', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('501', '17', '2012/2013', '501', '2013-06-09 11:11:18', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('502', '17', '2012/2013', '502', '2013-06-09 11:11:18', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('503', '17', '2012/2013', '503', '2013-06-09 11:11:18', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('504', '17', '2012/2013', '504', '2013-06-09 11:11:18', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('505', '17', '2012/2013', '505', '2013-06-09 11:11:18', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('506', '17', '2012/2013', '506', '2013-06-09 11:11:18', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('507', '17', '2012/2013', '507', '2013-06-09 11:11:18', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('508', '17', '2012/2013', '508', '2013-06-09 11:11:18', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('509', '17', '2012/2013', '509', '2013-06-09 11:11:18', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('510', '17', '2012/2013', '510', '2013-06-09 11:11:18', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('511', '17', '2012/2013', '511', '2013-06-09 11:11:18', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('512', '17', '2012/2013', '512', '2013-06-09 11:11:18', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('513', '17', '2012/2013', '513', '2013-06-09 11:11:18', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('514', '17', '2012/2013', '514', '2013-06-09 11:11:18', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('515', '17', '2012/2013', '515', '2013-06-09 11:11:18', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('516', '17', '2012/2013', '516', '2013-06-09 11:11:18', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('517', '17', '2012/2013', '517', '2013-06-09 11:11:18', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('518', '17', '2012/2013', '518', '2013-06-09 11:11:18', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('519', '17', '2012/2013', '519', '2013-06-09 11:11:18', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('520', '17', '2012/2013', '520', '2013-06-09 11:11:18', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('521', '17', '2012/2013', '521', '2013-06-09 11:11:18', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('522', '17', '2012/2013', '522', '2013-06-09 11:11:18', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('523', '17', '2012/2013', '523', '2013-06-09 11:11:18', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('525', '18', '2012/2013', '525', '2013-06-09 11:13:25', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('526', '18', '2012/2013', '526', '2013-06-09 11:13:25', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('527', '18', '2012/2013', '527', '2013-06-09 11:13:25', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('528', '18', '2012/2013', '528', '2013-06-09 11:13:25', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('529', '18', '2012/2013', '529', '2013-06-09 11:13:25', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('530', '18', '2012/2013', '530', '2013-06-09 11:13:25', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('531', '18', '2012/2013', '531', '2013-06-09 11:13:25', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('532', '18', '2012/2013', '532', '2013-06-09 11:13:25', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('533', '18', '2012/2013', '533', '2013-06-09 11:13:25', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('534', '18', '2012/2013', '534', '2013-06-09 11:13:25', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('535', '18', '2012/2013', '535', '2013-06-09 11:13:25', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('536', '18', '2012/2013', '536', '2013-06-09 11:13:25', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('537', '18', '2012/2013', '537', '2013-06-09 11:13:25', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('538', '18', '2012/2013', '538', '2013-06-09 11:13:25', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('539', '18', '2012/2013', '539', '2013-06-09 11:13:25', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('540', '18', '2012/2013', '540', '2013-06-09 11:13:25', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('541', '18', '2012/2013', '541', '2013-06-09 11:13:25', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('542', '18', '2012/2013', '542', '2013-06-09 11:13:25', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('543', '18', '2012/2013', '543', '2013-06-09 11:13:25', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('544', '18', '2012/2013', '544', '2013-06-09 11:13:25', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('545', '18', '2012/2013', '545', '2013-06-09 11:13:25', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('546', '18', '2012/2013', '546', '2013-06-09 11:13:25', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('547', '18', '2012/2013', '547', '2013-06-09 11:13:25', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('548', '18', '2012/2013', '548', '2013-06-09 11:13:25', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('549', '18', '2012/2013', '549', '2013-06-09 11:13:25', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('550', '18', '2012/2013', '550', '2013-06-09 11:13:25', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('551', '18', '2012/2013', '551', '2013-06-09 11:13:25', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('552', '18', '2012/2013', '552', '2013-06-09 11:13:25', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('553', '18', '2012/2013', '553', '2013-06-09 11:13:25', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('556', '19', '2012/2013', '556', '2013-06-09 11:15:38', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('557', '19', '2012/2013', '557', '2013-06-09 11:15:38', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('558', '19', '2012/2013', '558', '2013-06-09 11:15:38', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('559', '19', '2012/2013', '559', '2013-06-09 11:15:38', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('560', '19', '2012/2013', '560', '2013-06-09 11:15:38', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('561', '19', '2012/2013', '561', '2013-06-09 11:15:38', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('562', '19', '2012/2013', '562', '2013-06-09 11:15:38', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('563', '19', '2012/2013', '563', '2013-06-09 11:15:38', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('564', '19', '2012/2013', '564', '2013-06-09 11:15:38', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('565', '19', '2012/2013', '565', '2013-06-09 11:15:38', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('566', '19', '2012/2013', '566', '2013-06-09 11:15:38', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('567', '19', '2012/2013', '567', '2013-06-09 11:15:38', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('568', '19', '2012/2013', '568', '2013-06-09 11:15:38', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('569', '19', '2012/2013', '569', '2013-06-09 11:15:38', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('570', '19', '2012/2013', '570', '2013-06-09 11:15:38', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('571', '19', '2012/2013', '571', '2013-06-09 11:15:38', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('572', '19', '2012/2013', '572', '2013-06-09 11:15:38', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('573', '19', '2012/2013', '573', '2013-06-09 11:15:38', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('574', '19', '2012/2013', '574', '2013-06-09 11:15:38', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('575', '19', '2012/2013', '575', '2013-06-09 11:15:38', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('576', '19', '2012/2013', '576', '2013-06-09 11:15:38', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('577', '19', '2012/2013', '577', '2013-06-09 11:15:38', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('578', '19', '2012/2013', '578', '2013-06-09 11:15:38', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('579', '19', '2012/2013', '579', '2013-06-09 11:15:38', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('580', '19', '2012/2013', '580', '2013-06-09 11:15:38', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('581', '19', '2012/2013', '581', '2013-06-09 11:15:38', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('582', '19', '2012/2013', '582', '2013-06-09 11:15:38', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('583', '19', '2012/2013', '583', '2013-06-09 11:15:38', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('587', '20', '2012/2013', '587', '2013-06-09 11:17:50', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('588', '20', '2012/2013', '588', '2013-06-09 11:17:50', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('589', '20', '2012/2013', '589', '2013-06-09 11:17:50', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('590', '20', '2012/2013', '590', '2013-06-09 11:17:50', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('591', '20', '2012/2013', '591', '2013-06-09 11:17:50', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('592', '20', '2012/2013', '592', '2013-06-09 11:17:50', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('593', '20', '2012/2013', '593', '2013-06-09 11:17:50', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('594', '20', '2012/2013', '594', '2013-06-09 11:17:50', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('595', '20', '2012/2013', '595', '2013-06-09 11:17:50', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('596', '20', '2012/2013', '596', '2013-06-09 11:17:50', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('597', '20', '2012/2013', '597', '2013-06-09 11:17:50', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('598', '20', '2012/2013', '598', '2013-06-09 11:17:50', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('599', '20', '2012/2013', '599', '2013-06-09 11:17:50', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('600', '20', '2012/2013', '600', '2013-06-09 11:17:50', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('601', '20', '2012/2013', '601', '2013-06-09 11:17:50', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('602', '20', '2012/2013', '602', '2013-06-09 11:17:50', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('603', '20', '2012/2013', '603', '2013-06-09 11:17:50', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('604', '20', '2012/2013', '604', '2013-06-09 11:17:50', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('605', '20', '2012/2013', '605', '2013-06-09 11:17:50', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('606', '20', '2012/2013', '606', '2013-06-09 11:17:50', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('607', '20', '2012/2013', '607', '2013-06-09 11:17:50', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('608', '20', '2012/2013', '608', '2013-06-09 11:17:50', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('609', '20', '2012/2013', '609', '2013-06-09 11:17:50', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('610', '20', '2012/2013', '610', '2013-06-09 11:17:50', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('611', '20', '2012/2013', '611', '2013-06-09 11:17:50', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('612', '20', '2012/2013', '612', '2013-06-09 11:17:50', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('618', '21', '2012/2013', '618', '2013-06-09 11:20:04', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('619', '21', '2012/2013', '619', '2013-06-09 11:20:04', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('620', '21', '2012/2013', '620', '2013-06-09 11:20:04', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('621', '21', '2012/2013', '621', '2013-06-09 11:20:04', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('622', '21', '2012/2013', '622', '2013-06-09 11:20:04', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('623', '21', '2012/2013', '623', '2013-06-09 11:20:04', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('624', '21', '2012/2013', '624', '2013-06-09 11:20:04', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('625', '21', '2012/2013', '625', '2013-06-09 11:20:04', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('626', '21', '2012/2013', '626', '2013-06-09 11:20:04', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('627', '21', '2012/2013', '627', '2013-06-09 11:20:04', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('628', '21', '2012/2013', '628', '2013-06-09 11:20:04', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('629', '21', '2012/2013', '629', '2013-06-09 11:20:04', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('630', '21', '2012/2013', '630', '2013-06-09 11:20:04', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('631', '21', '2012/2013', '631', '2013-06-09 11:20:04', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('632', '21', '2012/2013', '632', '2013-06-09 11:20:04', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('633', '21', '2012/2013', '633', '2013-06-09 11:20:04', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('634', '21', '2012/2013', '634', '2013-06-09 11:20:04', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('635', '21', '2012/2013', '635', '2013-06-09 11:20:04', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('636', '21', '2012/2013', '636', '2013-06-09 11:20:04', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('637', '21', '2012/2013', '637', '2013-06-09 11:20:04', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('638', '21', '2012/2013', '638', '2013-06-09 11:20:04', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('639', '21', '2012/2013', '639', '2013-06-09 11:20:04', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('640', '21', '2012/2013', '640', '2013-06-09 11:20:04', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('641', '21', '2012/2013', '641', '2013-06-09 11:20:04', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('642', '21', '2012/2013', '642', '2013-06-09 11:20:04', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('649', '22', '2012/2013', '649', '2013-06-09 11:21:35', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('650', '22', '2012/2013', '650', '2013-06-09 11:21:35', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('651', '22', '2012/2013', '651', '2013-06-09 11:21:35', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('652', '22', '2012/2013', '652', '2013-06-09 11:21:35', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('653', '22', '2012/2013', '653', '2013-06-09 11:21:35', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('654', '22', '2012/2013', '654', '2013-06-09 11:21:35', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('655', '22', '2012/2013', '655', '2013-06-09 11:21:35', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('656', '22', '2012/2013', '656', '2013-06-09 11:21:35', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('657', '22', '2012/2013', '657', '2013-06-09 11:21:35', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('658', '22', '2012/2013', '658', '2013-06-09 11:21:35', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('659', '22', '2012/2013', '659', '2013-06-09 11:21:35', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('660', '22', '2012/2013', '660', '2013-06-09 11:21:35', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('661', '22', '2012/2013', '661', '2013-06-09 11:21:35', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('662', '22', '2012/2013', '662', '2013-06-09 11:21:35', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('663', '22', '2012/2013', '663', '2013-06-09 11:21:35', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('664', '22', '2012/2013', '664', '2013-06-09 11:21:35', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('665', '22', '2012/2013', '665', '2013-06-09 11:21:35', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('666', '22', '2012/2013', '666', '2013-06-09 11:21:35', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('667', '22', '2012/2013', '667', '2013-06-09 11:21:35', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('668', '22', '2012/2013', '668', '2013-06-09 11:21:35', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('669', '22', '2012/2013', '669', '2013-06-09 11:21:35', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('670', '22', '2012/2013', '670', '2013-06-09 11:21:35', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('671', '22', '2012/2013', '671', '2013-06-09 11:21:35', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('672', '22', '2012/2013', '672', '2013-06-09 11:21:35', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('673', '22', '2012/2013', '673', '2013-06-09 11:21:35', null, null, null, null);
INSERT INTO `siswa_kelas` VALUES ('674', '22', '2012/2013', '674', '2013-06-09 11:21:35', null, null, null, null);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL DEFAULT '-',
  `user_password` varchar(50) DEFAULT NULL,
  `user_guru` varchar(10) NOT NULL DEFAULT '0',
  `user_aktif` enum('Y','T') NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `USER_NAME_UNIQUE` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('4', 'admin', '21232f297a57a5a743894a0e4a801fc3', '0', 'Y');
