-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for appbantuan
CREATE DATABASE IF NOT EXISTS `appbantuan` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `appbantuan`;

-- Dumping structure for table appbantuan.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appbantuan.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table appbantuan.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appbantuan.migrations: ~8 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2024_05_06_020357_create_penduduks_table', 1),
	(6, '2024_05_20_002928_create_sembakos_table', 2),
	(7, '2024_05_20_003638_view_sembako', 3),
	(8, '2024_05_20_020209_view_sembako', 4),
	(9, '2024_05_26_064223_create_tunais_table', 5),
	(10, '2024_05_26_064635_view_tunai', 6),
	(11, '2024_05_27_002049_create_rumahs_table', 7),
	(12, '2024_05_27_002305_view_rumah', 8);

-- Dumping structure for table appbantuan.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appbantuan.password_reset_tokens: ~0 rows (approximately)

-- Dumping structure for table appbantuan.penduduks
CREATE TABLE IF NOT EXISTS `penduduks` (
  `nik_kk` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jeniskelamin_kk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgllahir_kk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pendidikan_kk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pekerjaan_kk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penghasilan_kk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_kk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`nik_kk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appbantuan.penduduks: ~2 rows (approximately)
INSERT INTO `penduduks` (`nik_kk`, `nama_kk`, `jeniskelamin_kk`, `tgllahir_kk`, `pendidikan_kk`, `pekerjaan_kk`, `penghasilan_kk`, `alamat_kk`, `created_at`, `updated_at`) VALUES
	('333111222333', 'Dunir', 'Laki-Laki', '2000-06-20', 'SMK', 'Petani', '3000000', 'Jl.semangat', '2024-05-19 19:24:32', '2024-05-19 19:24:32'),
	('44535354564', 'Fadhel', 'Laki-Laki', '2024-05-13', 'SMP', 'Nelayan', '1000000', 'Jl.Rahasia', '2024-05-12 19:30:37', '2024-05-26 18:21:54');

-- Dumping structure for table appbantuan.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appbantuan.personal_access_tokens: ~0 rows (approximately)

-- Dumping structure for table appbantuan.rumahs
CREATE TABLE IF NOT EXISTS `rumahs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nik_kk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_bantuan` date NOT NULL,
  `jumlah_dana` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appbantuan.rumahs: ~2 rows (approximately)
INSERT INTO `rumahs` (`id`, `nik_kk`, `tgl_bantuan`, `jumlah_dana`, `keterangan`, `created_at`, `updated_at`) VALUES
	(1, '333111222333', '2024-05-02', '1000000', 'Bantuan Bedah', '2024-05-26 18:34:49', '2024-05-26 18:34:49'),
	(2, '44535354564', '2024-05-02', '2.000.000', 'batuan bedah rumah', '2024-05-26 18:56:02', '2024-05-26 18:56:02');

-- Dumping structure for table appbantuan.sembakos
CREATE TABLE IF NOT EXISTS `sembakos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nik_kk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_bantuan` date NOT NULL,
  `jenis_bantuan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appbantuan.sembakos: ~2 rows (approximately)
INSERT INTO `sembakos` (`id`, `nik_kk`, `tgl_bantuan`, `jenis_bantuan`, `keterangan`, `created_at`, `updated_at`) VALUES
	(2, '333111222333', '2024-05-16', 'Bantuan alat tani', 'Bantuan dari pemerintah', '2024-05-19 19:25:51', '2024-05-25 22:58:23');

-- Dumping structure for table appbantuan.tunais
CREATE TABLE IF NOT EXISTS `tunais` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nik_kk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_bantuan` date NOT NULL,
  `jumlah_dana` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appbantuan.tunais: ~6 rows (approximately)
INSERT INTO `tunais` (`id`, `nik_kk`, `tgl_bantuan`, `jumlah_dana`, `keterangan`, `created_at`, `updated_at`) VALUES
	(3, '333111222333', '2024-05-07', '2.000.000', 'batuan bedah rumah', '2024-05-26 18:12:18', '2024-05-26 18:12:18'),
	(4, '44535354564', '2024-05-04', '1000000', 'Bantuan dari pemerintah', '2024-05-26 18:21:11', '2024-05-26 18:21:11'),
	(5, '333111222333', '2024-05-08', '3.200.000', 'bantuan BLT', '2024-05-26 18:29:42', '2024-05-26 18:29:42'),
	(6, '333111222333', '2024-05-15', '1000000', 'Bantuan Bedah', '2024-05-26 18:30:23', '2024-05-26 18:30:23'),
	(7, '333111222333', '2024-05-11', '1000000', 'Bantuan Bedah', '2024-05-26 18:31:01', '2024-05-26 18:31:01'),
	(8, '333111222333', '2024-05-09', '1000000', 'Bantuan Bedah', '2024-05-26 18:33:04', '2024-05-26 18:33:04');

-- Dumping structure for table appbantuan.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appbantuan.users: ~0 rows (approximately)

-- Dumping structure for view appbantuan.viewrumah
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `viewrumah` (
	`id` BIGINT(20) UNSIGNED NOT NULL,
	`nik_kk` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`nama_kk` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`jeniskelamin_kk` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`pekerjaan_kk` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`penghasilan_kk` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`alamat_kk` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`tgl_bantuan` DATE NOT NULL,
	`jumlah_dana` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`keterangan` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`created_at` TIMESTAMP NULL,
	`updated_at` TIMESTAMP NULL
) ENGINE=MyISAM;

-- Dumping structure for view appbantuan.viewsembako
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `viewsembako` (
	`id` BIGINT(20) UNSIGNED NOT NULL,
	`nik_kk` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`nama_kk` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`jeniskelamin_kk` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`pekerjaan_kk` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`alamat_kk` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`tgl_bantuan` DATE NOT NULL,
	`jenis_bantuan` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`keterangan` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`created_at` TIMESTAMP NULL,
	`updated_at` TIMESTAMP NULL
) ENGINE=MyISAM;

-- Dumping structure for view appbantuan.viewtunai
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `viewtunai` (
	`id` BIGINT(20) UNSIGNED NOT NULL,
	`nik_kk` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`nama_kk` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`jeniskelamin_kk` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`pekerjaan_kk` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`penghasilan_kk` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`alamat_kk` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`tgl_bantuan` DATE NOT NULL,
	`jumlah_dana` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`keterangan` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`created_at` TIMESTAMP NULL,
	`updated_at` TIMESTAMP NULL
) ENGINE=MyISAM;

-- Dumping structure for view appbantuan.viewrumah
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `viewrumah`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `viewrumah` AS select distinct `rumahs`.`id` AS `id`,`rumahs`.`nik_kk` AS `nik_kk`,`penduduks`.`nama_kk` AS `nama_kk`,`penduduks`.`jeniskelamin_kk` AS `jeniskelamin_kk`,`penduduks`.`pekerjaan_kk` AS `pekerjaan_kk`,`penduduks`.`penghasilan_kk` AS `penghasilan_kk`,`penduduks`.`alamat_kk` AS `alamat_kk`,`rumahs`.`tgl_bantuan` AS `tgl_bantuan`,`rumahs`.`jumlah_dana` AS `jumlah_dana`,`rumahs`.`keterangan` AS `keterangan`,`rumahs`.`created_at` AS `created_at`,`rumahs`.`updated_at` AS `updated_at` from (`penduduks` join `rumahs` on((`penduduks`.`nik_kk` = `rumahs`.`nik_kk`)));

-- Dumping structure for view appbantuan.viewsembako
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `viewsembako`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `viewsembako` AS select distinct `sembakos`.`id` AS `id`,`sembakos`.`nik_kk` AS `nik_kk`,`penduduks`.`nama_kk` AS `nama_kk`,`penduduks`.`jeniskelamin_kk` AS `jeniskelamin_kk`,`penduduks`.`pekerjaan_kk` AS `pekerjaan_kk`,`penduduks`.`alamat_kk` AS `alamat_kk`,`sembakos`.`tgl_bantuan` AS `tgl_bantuan`,`sembakos`.`jenis_bantuan` AS `jenis_bantuan`,`sembakos`.`keterangan` AS `keterangan`,`sembakos`.`created_at` AS `created_at`,`sembakos`.`updated_at` AS `updated_at` from (`penduduks` join `sembakos` on((`penduduks`.`nik_kk` = `sembakos`.`nik_kk`)));

-- Dumping structure for view appbantuan.viewtunai
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `viewtunai`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `viewtunai` AS select distinct `tunais`.`id` AS `id`,`tunais`.`nik_kk` AS `nik_kk`,`penduduks`.`nama_kk` AS `nama_kk`,`penduduks`.`jeniskelamin_kk` AS `jeniskelamin_kk`,`penduduks`.`pekerjaan_kk` AS `pekerjaan_kk`,`penduduks`.`penghasilan_kk` AS `penghasilan_kk`,`penduduks`.`alamat_kk` AS `alamat_kk`,`tunais`.`tgl_bantuan` AS `tgl_bantuan`,`tunais`.`jumlah_dana` AS `jumlah_dana`,`tunais`.`keterangan` AS `keterangan`,`tunais`.`created_at` AS `created_at`,`tunais`.`updated_at` AS `updated_at` from (`penduduks` join `tunais` on((`penduduks`.`nik_kk` = `tunais`.`nik_kk`)));

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
