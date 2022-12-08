-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.30 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Volcando estructura para tabla biblioteca.archivos
CREATE TABLE IF NOT EXISTS `archivos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `autor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `editorial` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha` date NOT NULL,
  `tipo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla biblioteca.archivos: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `archivos` DISABLE KEYS */;
INSERT INTO `archivos` (`id`, `titulo`, `autor`, `editorial`, `fecha`, `tipo`, `url`, `created_at`, `updated_at`) VALUES
	(1, 'asd', 'fdfsd', 'qwer', '1978-11-12', 'qwerq', 'pdfs/3/pdf_1664962735.pdf', '2022-10-05 09:38:55', '2022-10-05 09:38:55'),
	(3, 'ccc', 'ccc', 'cccc', '1996-11-12', 'ee', 'pdfs/5/pdf_1664980644.pdf', '2022-10-05 14:37:24', '2022-10-05 14:37:24');
/*!40000 ALTER TABLE `archivos` ENABLE KEYS */;

-- Volcando estructura para tabla biblioteca.empresas
CREATE TABLE IF NOT EXISTS `empresas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` text COLLATE utf8mb4_unicode_ci,
  `colorfondo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `colopanel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fotoempresa` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla biblioteca.empresas: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `empresas` DISABLE KEYS */;
INSERT INTO `empresas` (`id`, `nombre`, `logo`, `colorfondo`, `colopanel`, `telefono`, `direccion`, `fotoempresa`) VALUES
	(3, NULL, NULL, '#3dd8ff', '#6f6d6d', '123412', 'roque', NULL);
/*!40000 ALTER TABLE `empresas` ENABLE KEYS */;

-- Volcando estructura para tabla biblioteca.failed_jobs
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

-- Volcando datos para la tabla biblioteca.failed_jobs: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Volcando estructura para tabla biblioteca.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla biblioteca.migrations: ~12 rows (aproximadamente)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
	(4, '2019_08_19_000000_create_failed_jobs_table', 1),
	(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(6, '2021_04_22_012855_create_sessions_table', 1),
	(7, '2021_04_23_040243_create_personas_table', 1),
	(8, '2021_04_23_041226_create_redsocials_table', 1),
	(9, '2021_04_23_053734_create_archivos_table', 1),
	(10, '2021_04_25_033334_persona_redsocial', 1),
	(11, '2021_04_25_132609_persona_archivos', 1),
	(12, '2021_04_29_031742_empresa', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Volcando estructura para tabla biblioteca.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla biblioteca.password_resets: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Volcando estructura para tabla biblioteca.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla biblioteca.personal_access_tokens: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- Volcando estructura para tabla biblioteca.personas
CREATE TABLE IF NOT EXISTS `personas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `genero` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fechanacimiento` date NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` int NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `personas_user_id_foreign` (`user_id`),
  CONSTRAINT `personas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla biblioteca.personas: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;
INSERT INTO `personas` (`id`, `nombre`, `apellidos`, `genero`, `fechanacimiento`, `direccion`, `telefono`, `user_id`, `created_at`, `updated_at`) VALUES
	(1, 'daniel', 'medina', 'Masculino', '1999-09-10', 'san francisco', 123123123, 1, '2022-08-27 13:02:56', '2022-08-27 13:02:56'),
	(2, 'luis', 'zambrana', 'Masculino', '2022-08-12', 'fqefasdfea', 123456789, 2, '2022-08-31 11:16:11', '2022-08-31 11:16:11'),
	(3, 'marco', 'fuentes', 'Masculino', '1998-11-09', 'asdf', 12312, 3, '2022-10-05 09:33:18', '2022-10-05 09:33:18'),
	(4, 'maria', 'mercedez', 'Femenino', '1996-07-15', 'marsizale', 515243, 5, '2022-10-05 14:07:23', '2022-10-05 14:07:23'),
	(5, 'fernanda', 'baltazar', 'Femenino', '1999-08-12', 'qwer', 1234, 6, '2022-10-05 14:35:44', '2022-10-05 14:35:44'),
	(6, 'yudith', 'martinez', 'Masculino', '2022-12-01', 'asdf', 12312, 7, '2022-12-07 15:56:42', '2022-12-07 15:56:42');
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;

-- Volcando estructura para tabla biblioteca.persona_archivos
CREATE TABLE IF NOT EXISTS `persona_archivos` (
  `idarchivo` bigint unsigned NOT NULL,
  `idpersona` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idarchivo`,`idpersona`),
  KEY `persona_archivos_idpersona_foreign` (`idpersona`),
  CONSTRAINT `persona_archivos_idarchivo_foreign` FOREIGN KEY (`idarchivo`) REFERENCES `archivos` (`id`) ON DELETE CASCADE,
  CONSTRAINT `persona_archivos_idpersona_foreign` FOREIGN KEY (`idpersona`) REFERENCES `personas` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla biblioteca.persona_archivos: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `persona_archivos` DISABLE KEYS */;
INSERT INTO `persona_archivos` (`idarchivo`, `idpersona`, `created_at`, `updated_at`) VALUES
	(1, 3, NULL, NULL),
	(3, 5, NULL, NULL);
/*!40000 ALTER TABLE `persona_archivos` ENABLE KEYS */;

-- Volcando estructura para tabla biblioteca.persona_redsocial
CREATE TABLE IF NOT EXISTS `persona_redsocial` (
  `idredsocial` bigint unsigned NOT NULL,
  `idpersona` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idredsocial`,`idpersona`),
  KEY `persona_redsocial_idpersona_foreign` (`idpersona`),
  CONSTRAINT `persona_redsocial_idpersona_foreign` FOREIGN KEY (`idpersona`) REFERENCES `personas` (`id`) ON DELETE CASCADE,
  CONSTRAINT `persona_redsocial_idredsocial_foreign` FOREIGN KEY (`idredsocial`) REFERENCES `redsocials` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla biblioteca.persona_redsocial: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `persona_redsocial` DISABLE KEYS */;
/*!40000 ALTER TABLE `persona_redsocial` ENABLE KEYS */;

-- Volcando estructura para tabla biblioteca.redsocials
CREATE TABLE IF NOT EXISTS `redsocials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombrered` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dominio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla biblioteca.redsocials: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `redsocials` DISABLE KEYS */;
/*!40000 ALTER TABLE `redsocials` ENABLE KEYS */;

-- Volcando estructura para tabla biblioteca.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla biblioteca.sessions: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('fnerPnCYa2VEwYYX7RPyxumuXJMIJ0jBEZ3FqZkG', 7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiaFVnOEU4S1lYTDRSaUFoTmRTS1FKMjZSaTJEVlFsZE4wMUdQWGVYSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcnRpY3VsbyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjc7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRlOVhQTHA5ZWpRaWJoSWJ2SGtRTUUuanBBam90b3FrVnlkRXJlQS9yMnpKSzNPbjJ2SW8yNiI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkZTlYUExwOWVqUWliaElidkhrUU1FLmpwQWpvdG9xa1Z5ZEVyZUEvcjJ6SkszT24ydklvMjYiO30=', 1670428661),
	('GjMdWuj7BKRjOud7tPZtsE6nY4hUgEfkOA151ZHd', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWmgzdXgyTWRDZ3R0VzE2eU5ScG9SUTdwWVNpRENKMEljVlJ1RFdKayI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1664981119);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;

-- Volcando estructura para tabla biblioteca.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `rol` int DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla biblioteca.users: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `email`, `email_verified_at`, `rol`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
	(1, 'daniel', '$2y$10$FsE8X/oOHdiWHz215sQGT.CFPBcqHFPUbTPn9kx6Hoj.KrIuPIO.a', NULL, NULL, 'danielgerman335@gmail.com', NULL, 3, NULL, '2022-08-27 13:02:56', '2022-08-27 13:02:56'),
	(2, 'luis', '$2y$10$t7SVI8q8SVxhHh408hVXBuxZkhAgbVnI16mTaH6dEnzNyvcPOKJL2', NULL, NULL, 'luis@gmail.com', NULL, NULL, NULL, '2022-08-31 11:16:11', '2022-08-31 11:16:11'),
	(3, 'marco', '$2y$10$RAcB9UtGV6KxVCfOQHzgLO21FpOfV2TIAU.L0j6jnnEEs4wS6F6aC', NULL, NULL, 'mf@gmail.com', NULL, NULL, NULL, '2022-10-05 09:33:18', '2022-10-05 09:33:18'),
	(4, 'lucas', '$2y$10$f9lchNrrYW7.okFm.6HRKeBKzp32xI3FQOg0NBqpyBXvF7wA7B1K6', NULL, NULL, 'as@gmail.com', NULL, NULL, NULL, '2022-10-05 13:55:54', '2022-10-05 13:55:54'),
	(5, 'maria', '$2y$10$qQ1nUBfVt5rw2LHvT0ljveXmld8w2717zgLQWzgP1zByWMvNA8/7C', NULL, NULL, 'maria@gmail.com', NULL, NULL, NULL, '2022-10-05 14:07:23', '2022-10-05 14:07:23'),
	(6, 'fernanda', '$2y$10$G.EmVKCDlMOE0pYt2kMQXOxyeESL6L0M2ODX.sVGPu2d15.GtROym', NULL, NULL, 'fernanda@gmail.com', NULL, NULL, NULL, '2022-10-05 14:35:44', '2022-10-05 14:35:44'),
	(7, 'yudith', '$2y$10$e9XPLp9ejQibhIbvHkQME.jpAjotoqkVydEreA/r2zJK3On2vIo26', NULL, NULL, 'yudtih@gmail.com', NULL, NULL, NULL, '2022-12-07 15:56:42', '2022-12-07 15:56:42');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
