# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.17-0ubuntu0.16.04.1)
# Database: filtering
# Generation Time: 2017-11-28 13:24:20 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table course_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `course_user`;

CREATE TABLE `course_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `course_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `course_user_user_id_index` (`user_id`),
  KEY `course_user_course_id_index` (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `course_user` WRITE;
/*!40000 ALTER TABLE `course_user` DISABLE KEYS */;

INSERT INTO `course_user` (`id`, `user_id`, `course_id`)
VALUES
	(1,1,3);

/*!40000 ALTER TABLE `course_user` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table courses
# ------------------------------------------------------------

DROP TABLE IF EXISTS `courses`;

CREATE TABLE `courses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `free` tinyint(1) NOT NULL DEFAULT '0',
  `difficulty` enum('beginner','intermediate','advanced') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'beginner',
  `type` enum('theory','project','snippet') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'theory',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `views` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `courses_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;

INSERT INTO `courses` (`id`, `name`, `slug`, `free`, `difficulty`, `type`, `created_at`, `updated_at`, `views`)
VALUES
	(3,'Ab voluptatibus quidem error voluptatibus molestiae vitae.','ab-voluptatibus-quidem-error-voluptatibus-molestiae-vitae',0,'advanced','snippet','2017-11-27 13:04:10','2017-11-27 13:04:10',2),
	(4,'Ducimus reiciendis ut est iste voluptas.','ducimus-reiciendis-ut-est-iste-voluptas',0,'beginner','snippet','2017-11-27 13:04:10','2017-11-27 13:04:10',50),
	(5,'Et et iste qui est quos molestiae non excepturi.','et-et-iste-qui-est-quos-molestiae-non-excepturi',1,'beginner','project','2017-11-27 13:04:10','2017-11-27 13:04:10',2),
	(6,'Aut aut aliquid natus vel velit.','aut-aut-aliquid-natus-vel-velit',1,'advanced','snippet','2017-11-27 13:04:10','2017-11-27 13:04:10',3),
	(7,'Qui ab blanditiis dolores ut.','qui-ab-blanditiis-dolores-ut',1,'advanced','project','2017-11-27 13:04:10','2017-11-27 13:04:10',0),
	(8,'Est modi qui praesentium ut.','est-modi-qui-praesentium-ut',0,'advanced','project','2017-11-27 13:04:10','2017-11-27 13:04:10',5),
	(9,'Non eligendi cumque nostrum eum sed et.','non-eligendi-cumque-nostrum-eum-sed-et',1,'intermediate','theory','2017-11-27 13:04:10','2017-11-27 13:04:10',2),
	(10,'Velit dolores aut ut ea.','velit-dolores-aut-ut-ea',0,'advanced','project','2017-11-27 13:04:10','2017-11-27 13:04:10',0),
	(11,'Qui eum maiores id eos ipsam et incidunt.','qui-eum-maiores-id-eos-ipsam-et-incidunt',1,'advanced','theory','2017-11-27 13:04:10','2017-11-27 13:04:10',0),
	(12,'Natus sunt omnis accusamus animi.','natus-sunt-omnis-accusamus-animi',1,'advanced','snippet','2017-11-27 13:04:10','2017-11-27 13:04:10',0);

/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2014_10_12_000000_create_users_table',1),
	(2,'2014_10_12_100000_create_password_resets_table',1),
	(3,'2017_11_27_125555_create_courses_table',1),
	(4,'2017_11_28_114820_create_subjects_table',2),
	(5,'2017_11_28_115234_create_subjectables_table',3),
	(6,'2017_11_28_121103_create_course_user',4),
	(7,'2017_11_28_131300_add_views_to_courses',5);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table subjectables
# ------------------------------------------------------------

DROP TABLE IF EXISTS `subjectables`;

CREATE TABLE `subjectables` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subject_id` int(10) unsigned NOT NULL,
  `subjectable_id` int(10) unsigned NOT NULL,
  `subjectable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `subjectables_subjectable_id_subjectable_type_index` (`subjectable_id`,`subjectable_type`),
  KEY `subjectables_subject_id_index` (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `subjectables` WRITE;
/*!40000 ALTER TABLE `subjectables` DISABLE KEYS */;

INSERT INTO `subjectables` (`id`, `subject_id`, `subjectable_id`, `subjectable_type`)
VALUES
	(1,1,3,'App\\Course'),
	(2,2,4,'App\\Course'),
	(3,1,4,'App\\Course');

/*!40000 ALTER TABLE `subjectables` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table subjects
# ------------------------------------------------------------

DROP TABLE IF EXISTS `subjects`;

CREATE TABLE `subjects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `subjects_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;

INSERT INTO `subjects` (`id`, `name`, `slug`, `created_at`, `updated_at`)
VALUES
	(1,'Laravel','laravel','2017-11-28 11:54:24','2017-11-28 11:54:24'),
	(2,'PHP','php','2017-11-28 11:54:24','2017-11-28 11:54:24');

/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'dashty frya','dashty.fr@gmail.com','$2y$10$WZwRaII5gzYv0d5OQDqwUuktVpaVvwytkbSybM51K9PqM5.fZ77Wu','XZLXolGt4hzezbVQZO50utlOVqJg1lM993Cb2XahJ2P5NsFQuwc8WQbossaT','2017-11-28 12:20:40','2017-11-28 12:20:40');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
