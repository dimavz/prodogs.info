-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.7.13 - MySQL Community Server (GPL)
-- ОС Сервера:                   Win64
-- HeidiSQL Версия:              9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры для таблица prodogsinfo.gy3te_akeeba_common
CREATE TABLE IF NOT EXISTS `gy3te_akeeba_common` (
  `key` varchar(192) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_akeeba_common: ~5 rows (приблизительно)
DELETE FROM `gy3te_akeeba_common`;
/*!40000 ALTER TABLE `gy3te_akeeba_common` DISABLE KEYS */;
INSERT INTO `gy3te_akeeba_common` (`key`, `value`) VALUES
	('file_fef', '["com_akeeba"]'),
	('fof30', '["com_akeeba","file_fef"]'),
	('stats_lastrun', '1526305853'),
	('stats_siteid', '09f920bdc28d748918d39e4191a09a3dde3d9fba'),
	('stats_siteurl', '0a9447854c9466497201215baee2b27b');
/*!40000 ALTER TABLE `gy3te_akeeba_common` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_ak_profiles
CREATE TABLE IF NOT EXISTS `gy3te_ak_profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8mb4_unicode_ci,
  `filters` longtext COLLATE utf8mb4_unicode_ci,
  `quickicon` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogsinfo.gy3te_ak_profiles: ~0 rows (приблизительно)
DELETE FROM `gy3te_ak_profiles`;
/*!40000 ALTER TABLE `gy3te_ak_profiles` DISABLE KEYS */;
INSERT INTO `gy3te_ak_profiles` (`id`, `description`, `configuration`, `filters`, `quickicon`) VALUES
	(1, 'Default Backup Profile', '###AES128###qmuV8avY5bSMqUDyDBVBYag/PNulzowe4AwTKl0ExDjA2Swi+PDYfuhTBlslb0EKsTuJzvshpODz0WNp5oy6vWh/J2fvfhIgnePK+lbEioCzFR3kN9nF9hv6z4hyUFhZMg1Y/eOvUE5Oamok2XThMMoVhhvlKcl0+DuCEpuOR2Cab0bqnKQjDUqqPXihf6aLnmEMqUBfMPnmgbanpmbdPwVEcQR9DLiRcU4t56x7BK/xCjOXjuD2Py7cBVacT7kfdtassRALUD18QoQkrnAdYxd7sVsStTjY8bIvFX4X3OHJ8TF3lj07TF9we62xRMHy3jTJdgc1qgJySD5Cz8KMs/CROkvNNUdiuxufTwLN0x22BizB7U7c0zDmIgEX0Dbw/tuFHmpwI83zYT7azR3MK4KSwTyjKi50l4jTkqRfXTO88nHxYzW2ng+JNv/lwuQd4G0EvQiEztn+U3Nmr9e0Vf8Z3bok0yjnG30hJv2aDwFpbxdpiO1DStN77r049VxGyrUwrOTeoVPUMs/5z1LmyA74SvtYxejczZfvJObASyCOKX0njw+AgOWf/cJpGudZM7HTwQ/LURzKaS/ckj5QZtqNAbllLypalPiS4n9UMaRYv8sIc53b2dUWNFHDhcsNq/RCh5GSt8C98cyh3+XEIf5gXoD5LaEBB14IZJU/zskCJs34johXLcOOdM/dxmBGL/2fmFnS6c+LR2K0kFkp/whHavTl2Gn8Gy8RRPpCBzWF1HDEEsu5HgIcQZLHzU2IinzLi7IuIaZEAd3iGncDT1bpmWyNayiQUlhE3/95RlCepiaOKR4OnL+yusv95CycgWbIjnqFEybR6HKGv3vhqWVd/HFEyB13rELftRpOau4Dcns7XsyMFrvCn1eYFjQlel9s4FSIHYJbhhg+x6MleGQ/ixULYD7SjlR6eD6PcJFI+H+RCzjuoj5HWGJ0c7BCgJoosKUeJJWe+caS9E89mWnz1wSAAB/0huwLgKtAoI6pXQ69Zz3Ve+m0bdM75NwHTCTOzcRo74d5zFhPdGXqu8TIGo3UwhQMHJgKh9lkEVabIllblgwaGs6VjmmdSYLdXiz5b0GA487SummPnovEHM4bZ5PEjo/fkBAXghpCTSqPJYfd0syAHHC8utrqHqc7sWZpoZiZ1nPjjpoh4hely7wWyjL0aygkTkNEvgE+lVcw8Va7yQ5q80/5OQ9PtFZcGTP4ObUGbfL9mvql8+vE7LHWQr5ryYWmvb+wRI8IxzJC4uz/94meaalSeGclq63kodTA+ztqM7MCRDux8Qf+4qS+TkadkKr41rWGTAQ9L4zVsm+QwrJk7Tn9U90L13s7VqYSFCgmSLp7qYGJ5nO/gr7mbvWLqQ9YMpsxAPzXpDRqERp0usrN59x2Sc8jsH+WVKfkN2GjFgbAnsPUfN3kKdn7U44/qSAyF8dhquTyKBcxakEyDYHqtkPAyOZbh3TvHaFxIcdRc+wAgO7uyFnyTvGYyaT+RN/1oLxpuuaZWnvhkTccfOt4GJv7c7y+Nh74F93H6aPuvC7pWb8ZnxOnwXZ8rBKRbRyA3QwjC/6+0/bH2KMAyhfMekwmNn+PbEzdzVMx6FMCdxf+39HDt0L6kvZYbVLO6r20iKpDMUrG5KHnqumysWbtMeHGAbFQOD3AK9EHwzd69+DPeJxjn1FFAr8N78tmnx+ECy0v4Szmc21t5pan750+1AOi77oUtK7aBUzfa/CQu9+EqwUczrbBtreOSxB/v+430u79JRCr+YO9jrtiR0MrLcHYcfoitcHmIhM3TSQibkKTAd6Unl+EBeGRuZIYJ6vaGDuaGBBRU6+f6bFRDucuMcwhwZa3aPRpki/XIUFF4+rgkg+JQnDbYBwp4B3Bvld76gVfY3zJEt9Go+YuuMrhncSMSnJHzAZZZy4cKdUTPCHvGWu4677jNCBCSmtJef+3V7FCtlHJejAJhvWDX+JkZVejk1aig0mru5MBtKUbkGFgksjeP+s6dluJW47xNvyMmFW/gD+OaNR8J23WQspq7hvwfffizf8TvnStzeZA7gWpT1YbBicwCwd1lhAiEx6dcsL9mQMHrF4xJW0Kq0VPLmpTkOh2sLh2sZmpMO/lgDyWy4uTXL/gJZfFZONInx9jNS+i6O1zWRd0KBkxEwkElUcWamVSIx5y4UPeDtMvLgTbxTAHr2ggqXuPKfsFalSczqrH5NFfeA+EJGyyKw7M5xep1xUoYlDlrCjqVEVoOEMZtbDVnEkD53ygHeSRxKXU1gsEevrjhKKs5qYsFvSxqgRqJNGT8SLXHWySODg82w/DS77ipt56fHDj/Z85OyydRiZxsseR1jkYSnL0TI8z9A5z3aOq3SengUQ3wA+nNQ4lanDnVD6QjEpQU1QNhya9371sBoJy4m46n4ltbgFs1nTQGLIlunwbKEwmpgAQrds1yaJQ0JRHrJvrRuJDczi2agOFvuPm03139slSSlBJVssoxTaNHZTgNLs9ZoTTa3v1BgAA', '', 1);
/*!40000 ALTER TABLE `gy3te_ak_profiles` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_ak_stats
CREATE TABLE IF NOT EXISTS `gy3te_ak_stats` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci,
  `backupstart` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `backupend` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` enum('run','fail','complete') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'run',
  `origin` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'backend',
  `type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'full',
  `profile_id` bigint(20) NOT NULL DEFAULT '1',
  `archivename` longtext COLLATE utf8mb4_unicode_ci,
  `absolute_path` longtext COLLATE utf8mb4_unicode_ci,
  `multipart` int(11) NOT NULL DEFAULT '0',
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `backupid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filesexist` tinyint(3) NOT NULL DEFAULT '1',
  `remote_filename` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_size` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_fullstatus` (`filesexist`,`status`),
  KEY `idx_stale` (`status`,`origin`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogsinfo.gy3te_ak_stats: ~2 rows (приблизительно)
DELETE FROM `gy3te_ak_stats`;
/*!40000 ALTER TABLE `gy3te_ak_stats` DISABLE KEYS */;
INSERT INTO `gy3te_ak_stats` (`id`, `description`, `comment`, `backupstart`, `backupend`, `status`, `origin`, `type`, `profile_id`, `archivename`, `absolute_path`, `multipart`, `tag`, `backupid`, `filesexist`, `remote_filename`, `total_size`) VALUES
	(7, 'Резервное копирование 14.05.2018 13:51', 'Настроена руссификация главного шаблона списка записей', '2018-05-14 13:52:27', '2018-05-14 13:53:03', 'complete', 'backend', 'full', 1, 'prodogs.info-20180514-135227.zip', 'G:/OpenServer/domains/prodogs.info/backups/prodogs.info-20180514-135227.zip', 1, 'backend', 'id1', 1, NULL, 79400635),
	(8, 'Резервное копирование 14.05.2018 14:59', 'Настроен и руссифицирован шаблон формы добавления материалов', '2018-05-14 15:00:04', '0000-00-00 00:00:00', 'complete', 'backend', 'full', 1, 'prodogs.info-20180514-150004.zip', 'G:/OpenServer/domains/prodogs.info/backups/prodogs.info-20180514-150004.zip', 0, 'backend', 'id8', 1, NULL, 0);
/*!40000 ALTER TABLE `gy3te_ak_stats` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_ak_storage
CREATE TABLE IF NOT EXISTS `gy3te_ak_storage` (
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastupdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `data` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`tag`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogsinfo.gy3te_ak_storage: ~0 rows (приблизительно)
DELETE FROM `gy3te_ak_storage`;
/*!40000 ALTER TABLE `gy3te_ak_storage` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_ak_storage` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_assets
CREATE TABLE IF NOT EXISTS `gy3te_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogsinfo.gy3te_assets: ~123 rows (приблизительно)
DELETE FROM `gy3te_assets`;
/*!40000 ALTER TABLE `gy3te_assets` DISABLE KEYS */;
INSERT INTO `gy3te_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
	(1, 0, 0, 245, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
	(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
	(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
	(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
	(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
	(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
	(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
	(8, 1, 17, 20, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.edit":{"4":1},"core.edit.state":{"5":1}}'),
	(9, 1, 21, 22, 1, 'com_cpanel', 'com_cpanel', '{}'),
	(10, 1, 23, 24, 1, 'com_installer', 'com_installer', '{"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
	(11, 1, 25, 26, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1}}'),
	(12, 1, 27, 28, 1, 'com_login', 'com_login', '{}'),
	(13, 1, 29, 30, 1, 'com_mailto', 'com_mailto', '{}'),
	(14, 1, 31, 32, 1, 'com_massmail', 'com_massmail', '{}'),
	(15, 1, 33, 34, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
	(16, 1, 35, 40, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1}}'),
	(17, 1, 41, 42, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
	(18, 1, 43, 130, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1}}'),
	(19, 1, 131, 134, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
	(20, 1, 135, 136, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1}}'),
	(21, 1, 137, 138, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1}}'),
	(22, 1, 139, 140, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
	(23, 1, 141, 142, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1}}'),
	(24, 1, 143, 146, 1, 'com_users', 'com_users', '{"core.admin":{"7":1}}'),
	(26, 1, 147, 148, 1, 'com_wrapper', 'com_wrapper', '{}'),
	(27, 8, 18, 19, 2, 'com_content.category.2', 'Uncategorised', '{}'),
	(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{}'),
	(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{}'),
	(30, 19, 132, 133, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{}'),
	(32, 24, 144, 145, 2, 'com_users.category.7', 'Uncategorised', '{}'),
	(33, 1, 149, 150, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
	(34, 1, 151, 152, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{}'),
	(35, 1, 153, 154, 1, 'com_tags', 'com_tags', '{}'),
	(36, 1, 155, 156, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
	(37, 1, 157, 158, 1, 'com_ajax', 'com_ajax', '{}'),
	(38, 1, 159, 160, 1, 'com_postinstall', 'com_postinstall', '{}'),
	(39, 18, 44, 45, 2, 'com_modules.module.1', 'Главное меню', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
	(40, 18, 46, 47, 2, 'com_modules.module.2', 'Login', '{}'),
	(41, 18, 48, 49, 2, 'com_modules.module.3', 'Popular Articles', '{}'),
	(42, 18, 50, 51, 2, 'com_modules.module.4', 'Recently Added Articles', '{}'),
	(43, 18, 52, 53, 2, 'com_modules.module.8', 'Toolbar', '{}'),
	(44, 18, 54, 55, 2, 'com_modules.module.9', 'Quick Icons', '{}'),
	(45, 18, 56, 57, 2, 'com_modules.module.10', 'Logged-in Users', '{}'),
	(46, 18, 58, 59, 2, 'com_modules.module.12', 'Admin Menu', '{}'),
	(47, 18, 60, 61, 2, 'com_modules.module.13', 'Admin Submenu', '{}'),
	(48, 18, 62, 63, 2, 'com_modules.module.14', 'User Status', '{}'),
	(49, 18, 64, 65, 2, 'com_modules.module.15', 'Title', '{}'),
	(50, 18, 66, 67, 2, 'com_modules.module.16', 'Вход на сайт', '{}'),
	(51, 18, 68, 69, 2, 'com_modules.module.17', 'Breadcrumbs', '{}'),
	(52, 18, 70, 71, 2, 'com_modules.module.79', 'Multilanguage status', '{}'),
	(53, 18, 72, 73, 2, 'com_modules.module.86', 'Joomla Version', '{}'),
	(54, 16, 36, 37, 2, 'com_menus.menu.1', 'Главное меню', '{}'),
	(55, 1, 161, 162, 1, '#__languages.2', '#__languages.2', '{}'),
	(56, 1, 163, 174, 1, 'com_cobalt', 'com_cobalt', '{}'),
	(57, 18, 74, 75, 2, 'com_modules.module.87', 'Cobalt - Module - Categories', '{}'),
	(58, 18, 76, 77, 2, 'com_modules.module.88', 'Cobalt - Module - Filters', '{}'),
	(59, 18, 78, 79, 2, 'com_modules.module.89', 'Cobalt - Module - Who Follows User', '{}'),
	(60, 18, 80, 81, 2, 'com_modules.module.90', 'Cobalt - Module - Whom User Follows', '{}'),
	(61, 18, 82, 83, 2, 'com_modules.module.91', 'Cobalt - Module - Notifications', '{}'),
	(62, 18, 84, 85, 2, 'com_modules.module.92', 'Cobalt - Module - Article Participants', '{}'),
	(63, 18, 86, 87, 2, 'com_modules.module.93', 'Cobalt - Module - Records', '{}'),
	(64, 18, 88, 89, 2, 'com_modules.module.94', 'Cobalt - Module - Section Statictics', '{}'),
	(65, 18, 90, 91, 2, 'com_modules.module.95', 'Cobalt - Module - Submit Button', '{}'),
	(66, 18, 92, 93, 2, 'com_modules.module.96', 'Cobalt - Module - Tag Cloud', '{}'),
	(67, 18, 94, 95, 2, 'com_modules.module.97', 'Cobalt - Module - User Statictics', '{}'),
	(68, 56, 164, 165, 2, 'com_cobalt.type.1', 'Cobalt Content Type: Собака', '{}'),
	(69, 56, 166, 167, 2, 'com_cobalt.type.2', 'Cobalt Content Type: Альбом', '{}'),
	(70, 56, 168, 169, 2, 'com_cobalt.type.3', 'Cobalt Content Type: Видеоролик', '{}'),
	(71, 56, 170, 171, 2, 'com_cobalt.type.4', 'Cobalt Content Type: Порода', '{}'),
	(72, 1, 175, 176, 1, 'com_cobalt.section.1', 'Каталог собак', '{}'),
	(73, 1, 177, 178, 1, 'com_cobalt.section.2', 'Альбомы собак', '{}'),
	(74, 1, 179, 180, 1, 'com_cobalt.section.3', 'Видеоролики собак', '{}'),
	(75, 1, 181, 182, 1, 'com_cobalt.section.4', 'Породы собак', '{}'),
	(76, 16, 38, 39, 2, 'com_menus.menu.2', 'Меню питомцев', '{}'),
	(77, 18, 96, 97, 2, 'com_modules.module.98', 'Меню питомцев', '{}'),
	(79, 1, 183, 184, 1, 'com_cobalt.field.2', 'Кличка домашняя', '{}'),
	(80, 1, 185, 186, 1, 'com_cobalt.field.3', 'Кличка по родословной', '{}'),
	(81, 1, 187, 188, 1, 'com_cobalt.field.4', 'Номер РКФ/FCI', '{}'),
	(82, 1, 189, 190, 1, 'com_cobalt.field.5', 'Клеймо/Chip', '{}'),
	(83, 1, 191, 192, 1, 'com_cobalt.field.6', 'Дата рождения', '{}'),
	(84, 1, 193, 194, 1, 'com_cobalt.field.7', 'Дата смерти', '{}'),
	(85, 1, 195, 196, 1, 'com_cobalt.field.8', 'Пол', '{}'),
	(86, 1, 197, 198, 1, 'com_cobalt.field.9', 'Окрас', '{}'),
	(87, 1, 199, 200, 1, 'com_cobalt.field.10', 'Высота в холке', '{}'),
	(88, 1, 201, 202, 1, 'com_cobalt.field.11', 'Вес', '{}'),
	(89, 1, 203, 204, 1, 'com_cobalt.field.12', 'Примечание', '{}'),
	(90, 1, 205, 206, 1, 'com_cobalt.field.13', 'Страна рождения', '{}'),
	(91, 1, 207, 208, 1, 'com_cobalt.field.14', 'Место нахождения', '{}'),
	(92, 1, 209, 210, 1, 'com_cobalt.field.15', 'Галлерея', '{}'),
	(93, 1, 211, 212, 1, 'com_cobalt.field.16', 'Описание альбома', '{}'),
	(94, 1, 213, 214, 1, 'com_cobalt.field.17', 'Собака', '{}'),
	(95, 1, 215, 216, 1, 'com_cobalt.field.18', 'Альбом', '{}'),
	(96, 1, 217, 218, 1, 'com_cobalt.field.19', 'Ссылка на Видеоролик', '{}'),
	(97, 1, 219, 220, 1, 'com_cobalt.field.20', 'Описание видео', '{}'),
	(98, 1, 221, 222, 1, 'com_cobalt.field.21', 'Собака', '{}'),
	(99, 1, 223, 224, 1, 'com_cobalt.field.22', 'Видеоролик', '{}'),
	(101, 1, 225, 226, 1, 'com_cobalt.field.24', 'Описание породы', '{}'),
	(102, 1, 227, 228, 1, 'com_cobalt.field.25', 'Собака', '{}'),
	(103, 1, 229, 230, 1, 'com_cobalt.field.26', 'Порода', '{}'),
	(104, 1, 231, 232, 1, 'com_cobalt.field.27', 'Изображение породы', '{}'),
	(105, 1, 233, 234, 1, 'com_cobalt.field.28', 'Главное фото ', '{}'),
	(106, 1, 235, 236, 1, 'com_akeeba', 'Akeeba', '{}'),
	(107, 1, 237, 238, 1, 'com_fields', 'com_fields', '{}'),
	(108, 1, 239, 240, 1, 'com_associations', 'com_associations', '{}'),
	(109, 1, 241, 242, 1, 'com_community', 'Community', '{"community.profileedit":{"6":1},"community.profileeditstate":{"6":1},"community.groupcreate":{"6":1,"2":1},"community.groupdelete":{"6":1},"community.groupedit":{"6":1},"community.groupeditstate":{"6":1},"community.eventcreate":{"6":1,"2":1},"community.eventdelete":{"6":1},"community.eventedit":{"6":1},"community.eventeditstate":{"6":1},"community.photocreate":{"6":1,"2":1},"community.photodelete":{"6":1},"community.photoedit":{"6":1},"community.photoeditstate":{"6":1},"community.videocreate":{"6":1,"2":1},"community.videodelete":{"6":1},"community.videoedit":{"6":1},"community.videoeditstate":{"6":1},"community.postcommentcreate":{"6":1,"2":1},"community.postcommentdelete":{"6":1},"community.postcommentedit":{"6":1},"core.manage":{"6":1},"core.admin":{"7":1,"6":1},"community.friendrequest":{"6":1,"2":1}}'),
	(110, 18, 98, 99, 2, 'com_modules.module.99', 'JS Activity Stream', '{}'),
	(111, 18, 100, 101, 2, 'com_modules.module.100', 'JS Discussions', '{}'),
	(112, 18, 102, 103, 2, 'com_modules.module.101', 'Мероприятия', '{}'),
	(113, 18, 104, 105, 2, 'com_modules.module.102', 'JS Events Calendar', '{}'),
	(114, 18, 106, 107, 2, 'com_modules.module.103', 'Группы', '{}'),
	(115, 18, 108, 109, 2, 'com_modules.module.104', 'Вход на сайт JS', '{}'),
	(116, 18, 110, 111, 2, 'com_modules.module.105', 'Пользователи сайта', '{}'),
	(117, 18, 112, 113, 2, 'com_modules.module.106', 'JS Members Search', '{}'),
	(118, 18, 114, 115, 2, 'com_modules.module.107', 'JS Nearby Events Search', '{}'),
	(119, 18, 116, 117, 2, 'com_modules.module.108', 'JS Notifications', '{}'),
	(120, 18, 118, 119, 2, 'com_modules.module.109', 'JS Photo Comments', '{}'),
	(121, 18, 120, 121, 2, 'com_modules.module.110', 'Фото', '{}'),
	(122, 18, 122, 123, 2, 'com_modules.module.111', 'JS Statistics', '{}'),
	(123, 18, 124, 125, 2, 'com_modules.module.112', 'JS Top Members', '{}'),
	(124, 18, 126, 127, 2, 'com_modules.module.113', 'JS Video Comments', '{}'),
	(125, 18, 128, 129, 2, 'com_modules.module.114', 'Видео', '{}'),
	(126, 56, 172, 173, 2, 'com_cobalt.type.5', 'Cobalt Content Type: Питомник', '{}'),
	(127, 1, 243, 244, 1, 'com_cobalt.section.5', '', '{}');
/*!40000 ALTER TABLE `gy3te_assets` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_associations
CREATE TABLE IF NOT EXISTS `gy3te_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogsinfo.gy3te_associations: ~0 rows (приблизительно)
DELETE FROM `gy3te_associations`;
/*!40000 ALTER TABLE `gy3te_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_associations` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_banners
CREATE TABLE IF NOT EXISTS `gy3te_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogsinfo.gy3te_banners: ~0 rows (приблизительно)
DELETE FROM `gy3te_banners`;
/*!40000 ALTER TABLE `gy3te_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_banners` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_banner_clients
CREATE TABLE IF NOT EXISTS `gy3te_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogsinfo.gy3te_banner_clients: ~0 rows (приблизительно)
DELETE FROM `gy3te_banner_clients`;
/*!40000 ALTER TABLE `gy3te_banner_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_banner_clients` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_banner_tracks
CREATE TABLE IF NOT EXISTS `gy3te_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogsinfo.gy3te_banner_tracks: ~0 rows (приблизительно)
DELETE FROM `gy3te_banner_tracks`;
/*!40000 ALTER TABLE `gy3te_banner_tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_banner_tracks` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_categories
CREATE TABLE IF NOT EXISTS `gy3te_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogsinfo.gy3te_categories: ~6 rows (приблизительно)
DELETE FROM `gy3te_categories`;
/*!40000 ALTER TABLE `gy3te_categories` DISABLE KEYS */;
INSERT INTO `gy3te_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
	(1, 0, 0, 0, 11, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 48, '2017-05-15 08:46:37', 0, '0000-00-00 00:00:00', 0, '*', 1),
	(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 48, '2017-05-15 08:46:37', 0, '0000-00-00 00:00:00', 0, '*', 1),
	(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 48, '2017-05-15 08:46:37', 0, '0000-00-00 00:00:00', 0, '*', 1),
	(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 48, '2017-05-15 08:46:37', 0, '0000-00-00 00:00:00', 0, '*', 1),
	(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 48, '2017-05-15 08:46:37', 0, '0000-00-00 00:00:00', 0, '*', 1),
	(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 48, '2017-05-15 08:46:37', 0, '0000-00-00 00:00:00', 0, '*', 1);
/*!40000 ALTER TABLE `gy3te_categories` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_activities
CREATE TABLE IF NOT EXISTS `gy3te_community_activities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `actor` int(10) unsigned NOT NULL,
  `target` int(10) unsigned NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `app` varchar(200) NOT NULL,
  `verb` varchar(200) NOT NULL,
  `cid` int(10) NOT NULL,
  `groupid` int(10) DEFAULT NULL,
  `eventid` int(10) DEFAULT NULL,
  `group_access` tinyint(4) NOT NULL DEFAULT '0',
  `event_access` tinyint(4) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `access` tinyint(3) unsigned NOT NULL,
  `params` text NOT NULL,
  `points` int(4) NOT NULL DEFAULT '1',
  `archived` tinyint(3) NOT NULL,
  `location` text NOT NULL,
  `latitude` float(10,6) NOT NULL DEFAULT '255.000000',
  `longitude` float(10,6) NOT NULL DEFAULT '255.000000',
  `comment_id` int(10) NOT NULL,
  `comment_type` varchar(200) NOT NULL,
  `like_id` int(10) NOT NULL,
  `like_type` varchar(200) NOT NULL,
  `actors` text NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `actor` (`actor`),
  KEY `target` (`target`),
  KEY `app` (`app`),
  KEY `created` (`created`),
  KEY `archived` (`archived`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_activities: 4 rows
DELETE FROM `gy3te_community_activities`;
/*!40000 ALTER TABLE `gy3te_community_activities` DISABLE KEYS */;
INSERT INTO `gy3te_community_activities` (`id`, `actor`, `target`, `title`, `content`, `app`, `verb`, `cid`, `groupid`, `eventid`, `group_access`, `event_access`, `created`, `access`, `params`, `points`, `archived`, `location`, `latitude`, `longitude`, `comment_id`, `comment_type`, `like_id`, `like_type`, `actors`, `updated_at`) VALUES
	(2, 49, 0, '', '', 'groups.update', '', 1, 1, 0, 1, 0, '2018-05-12 10:44:38', 0, '{"action":"group.update","group_url":"index.php?option=com_community&view=groups&task=viewgroup&groupid=1"}', 1, 0, '', 255.000000, 255.000000, 0, '', 0, '', '', '2018-05-12 13:44:38'),
	(3, 49, 49, 'Жизнь прекрасна!!! ))', '', 'profile', 'post', 49, NULL, NULL, 0, 0, '2018-05-12 11:31:46', 10, '{}', 1, 0, '', 255.000000, 255.000000, 3, 'profile.status', 3, 'profile.status', '', '2018-05-12 14:31:46'),
	(4, 53, 0, '', '', 'events', '', 1, 0, 1, 0, 0, '2018-05-14 07:52:29', 0, '{"action":"events.create","event_url":"index.php?option=com_community&view=events&task=viewevent&eventid=1","event_category_url":"index.php?option=com_community&view=events&categoryid=1"}', 1, 0, 'Минск', 255.000000, 255.000000, 1, 'events', 1, 'events', '', '2018-05-14 10:52:29'),
	(5, 53, 0, '', '', 'events.update', '', 1, 0, 1, 0, 0, '2018-05-14 07:56:24', 0, '{"action":"event.update","event_url":"index.php?option=com_community&view=events&task=viewevent&eventid=1"}', 1, 0, '', 255.000000, 255.000000, 0, '', 0, '', '', '2018-05-14 10:56:24');
/*!40000 ALTER TABLE `gy3te_community_activities` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_activities_hide
CREATE TABLE IF NOT EXISTS `gy3te_community_activities_hide` (
  `activity_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_activities_hide: 0 rows
DELETE FROM `gy3te_community_activities_hide`;
/*!40000 ALTER TABLE `gy3te_community_activities_hide` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_community_activities_hide` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_apps
CREATE TABLE IF NOT EXISTS `gy3te_community_apps` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL,
  `apps` varchar(200) NOT NULL,
  `ordering` int(10) unsigned NOT NULL,
  `position` varchar(50) NOT NULL DEFAULT 'content',
  `params` text NOT NULL,
  `privacy` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_userid` (`userid`),
  KEY `idx_user_apps` (`userid`,`apps`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_apps: 0 rows
DELETE FROM `gy3te_community_apps`;
/*!40000 ALTER TABLE `gy3te_community_apps` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_community_apps` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_avatar
CREATE TABLE IF NOT EXISTS `gy3te_community_avatar` (
  `id` int(10) unsigned NOT NULL,
  `apptype` varchar(255) NOT NULL,
  `path` text NOT NULL,
  `type` tinyint(3) unsigned NOT NULL COMMENT '0 = small, 1 = medium, 2=large',
  UNIQUE KEY `id` (`id`,`apptype`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_avatar: 0 rows
DELETE FROM `gy3te_community_avatar`;
/*!40000 ALTER TABLE `gy3te_community_avatar` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_community_avatar` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_badges
CREATE TABLE IF NOT EXISTS `gy3te_community_badges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL,
  `points` int(11) NOT NULL DEFAULT '0',
  `image` varchar(256) NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_badges: ~6 rows (приблизительно)
DELETE FROM `gy3te_community_badges`;
/*!40000 ALTER TABLE `gy3te_community_badges` DISABLE KEYS */;
INSERT INTO `gy3te_community_badges` (`id`, `title`, `points`, `image`, `published`) VALUES
	(1, '0', 0, 'png', 1),
	(2, '50', 50, 'png', 1),
	(3, '100', 100, 'png', 1),
	(4, '200', 200, 'png', 1),
	(5, '350', 350, 'png', 1),
	(6, '600', 600, 'png', 1);
/*!40000 ALTER TABLE `gy3te_community_badges` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_blocklist
CREATE TABLE IF NOT EXISTS `gy3te_community_blocklist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `blocked_userid` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `blocked_userid` (`blocked_userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_blocklist: 0 rows
DELETE FROM `gy3te_community_blocklist`;
/*!40000 ALTER TABLE `gy3te_community_blocklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_community_blocklist` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_chat
CREATE TABLE IF NOT EXISTS `gy3te_community_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` char(50) NOT NULL,
  `name` varchar(250) NOT NULL,
  `last_msg` int(11) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_chat: 0 rows
DELETE FROM `gy3te_community_chat`;
/*!40000 ALTER TABLE `gy3te_community_chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_community_chat` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_chat_activity
CREATE TABLE IF NOT EXISTS `gy3te_community_chat_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chat_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` char(50) NOT NULL,
  `content` text NOT NULL,
  `params` text NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_chat_id` (`chat_id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_chat_activity: 0 rows
DELETE FROM `gy3te_community_chat_activity`;
/*!40000 ALTER TABLE `gy3te_community_chat_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_community_chat_activity` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_chat_participants
CREATE TABLE IF NOT EXISTS `gy3te_community_chat_participants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chat_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `enabled` int(11) NOT NULL DEFAULT '1',
  `mute` int(1) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_chat_id` (`chat_id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_chat_participants: 0 rows
DELETE FROM `gy3te_community_chat_participants`;
/*!40000 ALTER TABLE `gy3te_community_chat_participants` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_community_chat_participants` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_config
CREATE TABLE IF NOT EXISTS `gy3te_community_config` (
  `name` varchar(64) NOT NULL,
  `params` longtext NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_config: 2 rows
DELETE FROM `gy3te_community_config`;
/*!40000 ALTER TABLE `gy3te_community_config` DISABLE KEYS */;
INSERT INTO `gy3te_community_config` (`name`, `params`) VALUES
	('dbversion', '25'),
	('config', '{"enablereporting":"1","maxReport":"50","notifyMaxReport":"","enableguestreporting":"0","predefinedreports":"Spamming \\/ Advertisement\\\\nProfanity \\/ Inappropriate content.\\\\nAbusive.","guestsearch":"1","advanced_search_radius":"0","advanced_search_units":"metric","privacy_search_email":"0","sendemailonpageload":"0","archive_activity_max_day":"1","archive_activity_limit":"1500","newtab":"0","sortactivitybylastupdate":"0","overrideactivityprivacy":"0","allmemberactivitycomment":"0","likes_groups":"1","likes_events":"1","likes_photo":"1","likes_videos":"1","likes_profile":"1","sitename":"JomSocial","enablesharethis":"1","shareviaemail":"1","notifications_ajax_enable_refresh":"1","notifications_ajax_refresh_interval":"30000","wallediting":"1","lockprofilewalls":"1","lockvideoswalls":"0","lockphotoswalls":"0","lockgroupwalls":"1","lockeventwalls":"1","enable_refresh":"1","stream_refresh_interval":"30000","stream_default_comments":"3","prev_comment_load":"10","stream_comment_length":"150","daylightsavingoffset":"0","htmlemail":"1","copyrightemail":"Copyright of Your Company","statusmaxchar":"400","streamlocation":"1","statusemoticon":"1","profile_multiprofile":"1","alphabetfiltering":"1","cfgSection":"group","network_keywords":"","show_toolbar":"1","displayname":"name","pagination":"12","activitydateformat":"lapse","allowhtml":"1","showactivityavatar":"1","streamcontentlength":"150","singularnumber":"1","maxactivities":"20","frontpageactivitydefault":"all","showactivitystream":"1","custom_activity":"1","infinitescroll":"1","autoloadtrigger":"100","show_featured":"1","featureduserslimit":"10","featuredvideoslimit":"10","featuredgroupslimit":"10","featuredalbumslimit":"10","featuredeventslimit":"10","featured_stream":"1","stream_frontpage_featured":"2","stream_profile_featured":"2","stream_group_featured":"2","stream_event_featured":"2","enablemood":"1","enable_badges":"1","fbconnectkey":"","fbconnectsecret":"","usejfbc":"0","fbsignupimport":"0","fbwatermark":"1","fbloginimportprofile":"0","fbloginimportavatar":"1","fbconnectupdatestatus":"0","fbconnectpoststatus":"0","googleapikey":"AIzaSyBxYQ-UbWedvRNNxNNArRHp8zBzmXncbNo","fieldcodelocation":"FIELD_LOCATION","fieldcodestreet":"","fieldcodecity":"","fieldcodestate":"","fieldcodecountry":"","fieldcodepostcode":"","enable_embedly":"1","embedly_apikey":"","embedly_card_apikey":"","enable_embedly_card_position":"left","enable_embedly_card_template":"light","enable_embedly_card_minimalist":"0","antispam_enable":"0","antispam_akismet_key":"","antispam_akismet_messages":"1","antispam_akismet_friends":"1","antispam_akismet_walls":"1","antispam_akismet_status":"1","antispam_akismet_discussions":"1","enableavataruploadregister":"1","enableterms":"0","registrationTerms":"","check_register_multiple_email":"0","profile_deletion":"1","alloweddomains":"","denieddomains":"","nocaptcha":"1","nocaptchapublic":"","nocaptchaprivate":"","nocaptchatheme":"light","invite_only":"0","invite_only_request":"0","invite_registation_limit":"0","enablegroups":"0","enableguestsearchgroups":"1","moderategroupcreation":"0","creategroups":"1","groupcreatelimit":"300","groupphotouploadlimit":"500","groupvideouploadlimit":"500","createannouncement":"1","creatediscussion":"1","groupphotos":"1","groupvideos":"1","group_events":"1","groupdiscussnotification":"0","discussionfilelimit":"500","groupdiscussfilesharing":"1","filemaxuploadsize":"8","groupbulletinfilesharing":"1","enablephotos":"0","enable_animated_gif":"0","photouploadlimit":"500","photosmapdefault":"0","maxuploadsize":"8","deleteoriginalphotos":"0","magickPath":"","autoalbumcover":"1","photos_auto_rotate":"1","output_image_quality":"80","album_mode":"1","enable_photos_location":"1","photo_watermark":"0","min_width_img_watermark":"500","min_height_img_watermark":"500","watermark_position":"left_top","enablevideos":"0","enableguestsearchvideos":"1","enableprofilevideo":"1","enablevideosupload":"0","videouploadlimit":"500","videosmapdefault":"0","deleteoriginalvideos":"0","videofolder":"images","maxvideouploadsize":"8","ffmpegPath":"","flvtool2":"","qscale":"11","videosSize":"480x360","videosThumbSize":"320x180","customCommandForVideo":"","enablevideopseudostream":"0","videodebug":"0","video_mode":"0","video_native":"1","enable_zencoder":"0","zencoder_api_key":""}');
/*!40000 ALTER TABLE `gy3te_community_config` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_connection
CREATE TABLE IF NOT EXISTS `gy3te_community_connection` (
  `connection_id` int(11) NOT NULL AUTO_INCREMENT,
  `connect_from` int(11) NOT NULL,
  `connect_to` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `group` int(11) NOT NULL,
  `msg` text NOT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`connection_id`),
  KEY `connect_from` (`connect_from`,`connect_to`,`status`,`group`),
  KEY `idx_connect_to` (`connect_to`),
  KEY `idx_connect_from` (`connect_from`),
  KEY `idx_connect_tofrom` (`connect_to`,`connect_from`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_connection: 0 rows
DELETE FROM `gy3te_community_connection`;
/*!40000 ALTER TABLE `gy3te_community_connection` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_community_connection` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_connect_users
CREATE TABLE IF NOT EXISTS `gy3te_community_connect_users` (
  `connectid` bigint(20) NOT NULL,
  `type` varchar(255) NOT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`connectid`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_connect_users: 0 rows
DELETE FROM `gy3te_community_connect_users`;
/*!40000 ALTER TABLE `gy3te_community_connect_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_community_connect_users` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_digest_email
CREATE TABLE IF NOT EXISTS `gy3te_community_digest_email` (
  `user_id` int(11) NOT NULL,
  `total_sent` int(11) NOT NULL,
  `last_sent` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_digest_email: 0 rows
DELETE FROM `gy3te_community_digest_email`;
/*!40000 ALTER TABLE `gy3te_community_digest_email` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_community_digest_email` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_engagement
CREATE TABLE IF NOT EXISTS `gy3te_community_engagement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(64) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `week` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_engagement: 1 rows
DELETE FROM `gy3te_community_engagement`;
/*!40000 ALTER TABLE `gy3te_community_engagement` DISABLE KEYS */;
INSERT INTO `gy3te_community_engagement` (`id`, `action`, `user_id`, `created`, `week`) VALUES
	(1, 'message.share', 49, '2018-05-12 11:31:47', 19);
/*!40000 ALTER TABLE `gy3te_community_engagement` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_events
CREATE TABLE IF NOT EXISTS `gy3te_community_events` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent` int(11) NOT NULL COMMENT 'parent for recurring event',
  `catid` int(11) unsigned NOT NULL,
  `contentid` int(11) unsigned DEFAULT '0' COMMENT '0 - if type == profile, else it hold the group id',
  `type` varchar(255) NOT NULL DEFAULT 'profile' COMMENT 'profile, group',
  `title` varchar(255) NOT NULL,
  `location` text NOT NULL,
  `summary` text NOT NULL,
  `unlisted` tinyint(1) NOT NULL,
  `description` text,
  `creator` int(11) unsigned NOT NULL,
  `startdate` datetime NOT NULL,
  `enddate` datetime NOT NULL,
  `permission` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0 - Open (Anyone can mark attendence), 1 - Private (Only invited can mark attendence)',
  `avatar` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `cover` text NOT NULL,
  `invitedcount` int(11) unsigned DEFAULT '0',
  `confirmedcount` int(11) unsigned DEFAULT '0' COMMENT 'treat this as member count as well',
  `declinedcount` int(11) unsigned DEFAULT '0',
  `maybecount` int(11) unsigned DEFAULT '0',
  `wallcount` int(11) unsigned DEFAULT '0',
  `ticket` int(11) unsigned DEFAULT '0' COMMENT 'Represent how many guest can be joined or invited.',
  `allowinvite` tinyint(1) unsigned DEFAULT '1' COMMENT '0 - guest member cannot invite thier friends to join. 1 - yes, guest member can invite any of thier friends to join.',
  `created` datetime DEFAULT NULL,
  `hits` int(11) unsigned DEFAULT '0',
  `published` int(11) unsigned DEFAULT '1',
  `latitude` float(10,6) NOT NULL DEFAULT '255.000000',
  `longitude` float(10,6) NOT NULL DEFAULT '255.000000',
  `offset` varchar(5) DEFAULT NULL,
  `allday` tinyint(11) NOT NULL DEFAULT '0',
  `repeat` varchar(50) DEFAULT NULL COMMENT 'null,daily,weekly,monthly',
  `repeatend` date NOT NULL,
  `storage` varchar(64) NOT NULL DEFAULT 'file',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_creator` (`creator`),
  KEY `idx_period` (`startdate`,`enddate`),
  KEY `idx_type` (`type`),
  KEY `idx_catid` (`catid`),
  KEY `idx_published` (`published`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_events: 1 rows
DELETE FROM `gy3te_community_events`;
/*!40000 ALTER TABLE `gy3te_community_events` DISABLE KEYS */;
INSERT INTO `gy3te_community_events` (`id`, `parent`, `catid`, `contentid`, `type`, `title`, `location`, `summary`, `unlisted`, `description`, `creator`, `startdate`, `enddate`, `permission`, `avatar`, `thumb`, `cover`, `invitedcount`, `confirmedcount`, `declinedcount`, `maybecount`, `wallcount`, `ticket`, `allowinvite`, `created`, `hits`, `published`, `latitude`, `longitude`, `offset`, `allday`, `repeat`, `repeatend`, `storage`, `params`) VALUES
	(1, 0, 4, 0, 'profile', 'Выставка всех пород в Минске', 'Минск', 'Описание выставки всех пород в Минске', 0, '<p>Полное описание выставки всех пород в Минске</p>', 53, '2018-05-16 00:00:00', '2018-05-21 00:15:00', 0, NULL, NULL, '', 0, 1, 0, 0, 0, 0, 1, '2018-05-14 07:51:47', 1, 1, 255.000000, 255.000000, '0', 0, NULL, '0000-00-00', 'file', '{"eventrecentphotos":"6","eventrecentvideos":"6","timezone":null,"photopermission":2,"videopermission":2}');
/*!40000 ALTER TABLE `gy3te_community_events` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_events_category
CREATE TABLE IF NOT EXISTS `gy3te_community_events_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_events_category: 8 rows
DELETE FROM `gy3te_community_events_category`;
/*!40000 ALTER TABLE `gy3te_community_events_category` DISABLE KEYS */;
INSERT INTO `gy3te_community_events_category` (`id`, `parent`, `name`, `description`) VALUES
	(1, 0, 'Основные', 'Самые важные мероприятия и события'),
	(2, 0, 'Дни Рождения', 'Мероприятия дней рождений'),
	(3, 0, 'Вечеринки', 'Мероприятия вечеринок'),
	(4, 0, 'Выставки', 'Мероприятия выставок'),
	(5, 0, 'Встречи', 'Мероприятия встреч, тусовок, общения'),
	(6, 0, 'Прочие', 'Все прочие мероприятия не вошедшие в основные категории мероприятий'),
	(7, 0, 'Обучение', 'Мероприятия связанные с обучением'),
	(8, 0, 'Открытие', 'Мероприятия связанные с новыми открытиями. К примеру, открытие нового магазина с товарами для собак или новой ветеринарной клиники, новой выставки и т.д.');
/*!40000 ALTER TABLE `gy3te_community_events_category` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_events_members
CREATE TABLE IF NOT EXISTS `gy3te_community_events_members` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `eventid` int(11) unsigned NOT NULL,
  `memberid` int(11) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '[Join / Invite]: 0 - [pending approval/pending invite], 1 - [approved/confirmed], 2 - [rejected/declined], 3 - [maybe/maybe], 4 - [blocked/blocked]',
  `permission` tinyint(1) unsigned NOT NULL DEFAULT '3' COMMENT '1 - creator, 2 - admin, 3 - member',
  `invited_by` int(11) unsigned DEFAULT '0',
  `approval` tinyint(1) unsigned DEFAULT '0' COMMENT '0 - no approval required, 1 - required admin approval',
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_eventid` (`eventid`),
  KEY `idx_status` (`status`),
  KEY `idx_invitedby` (`invited_by`),
  KEY `idx_permission` (`eventid`,`permission`),
  KEY `idx_member_event` (`eventid`,`memberid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_events_members: 1 rows
DELETE FROM `gy3te_community_events_members`;
/*!40000 ALTER TABLE `gy3te_community_events_members` DISABLE KEYS */;
INSERT INTO `gy3te_community_events_members` (`id`, `eventid`, `memberid`, `status`, `permission`, `invited_by`, `approval`, `created`) VALUES
	(1, 1, 53, 1, 1, 0, 0, '2018-05-14 07:52:08');
/*!40000 ALTER TABLE `gy3te_community_events_members` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_event_stats
CREATE TABLE IF NOT EXISTS `gy3te_community_event_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `eid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `date` date NOT NULL,
  `params` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_event_stats: 1 rows
DELETE FROM `gy3te_community_event_stats`;
/*!40000 ALTER TABLE `gy3te_community_event_stats` DISABLE KEYS */;
INSERT INTO `gy3te_community_event_stats` (`id`, `eid`, `type`, `count`, `date`, `params`, `created_at`) VALUES
	(1, 1, 'view', 1, '2018-05-14', '', '2018-05-14 10:52:30');
/*!40000 ALTER TABLE `gy3te_community_event_stats` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_featured
CREATE TABLE IF NOT EXISTS `gy3te_community_featured` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `target_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_featured: 0 rows
DELETE FROM `gy3te_community_featured`;
/*!40000 ALTER TABLE `gy3te_community_featured` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_community_featured` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_fields
CREATE TABLE IF NOT EXISTS `gy3te_community_fields` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `ordering` int(11) DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `min` int(5) NOT NULL,
  `max` int(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `tips` text NOT NULL,
  `visible` tinyint(1) DEFAULT '0',
  `required` tinyint(1) DEFAULT '0',
  `searchable` tinyint(1) DEFAULT '1',
  `registration` tinyint(1) DEFAULT '1',
  `options` text,
  `fieldcode` varchar(255) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fieldcode` (`fieldcode`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_fields: 12 rows
DELETE FROM `gy3te_community_fields`;
/*!40000 ALTER TABLE `gy3te_community_fields` DISABLE KEYS */;
INSERT INTO `gy3te_community_fields` (`id`, `type`, `ordering`, `published`, `min`, `max`, `name`, `tips`, `visible`, `required`, `searchable`, `registration`, `options`, `fieldcode`, `params`) VALUES
	(1, 'group', 1, 1, 10, 100, 'Основная информация', 'Basic information for user', 1, 1, 1, 1, '', '', ''),
	(2, 'gender', 2, 1, 0, 0, 'Пол', '', 1, 1, 1, 1, 'COM_COMMUNITY_MALE\nCOM_COMMUNITY_FEMALE', 'FIELD_GENDER', '{"readonly":"0","style":""}'),
	(3, 'birthdate', 3, 1, 0, 0, 'День Рождения', '', 1, 1, 1, 1, '', 'FIELD_BIRTHDATE', '{"display":"date","readonly":"0","maxrange":"","minrange":"","date_format":""}'),
	(4, 'textarea', 4, 1, 0, 0, 'Обо мне', '', 1, 1, 1, 1, '', 'FIELD_ABOUTME', '{"readonly":"0","min_char":"","max_char":"","style":""}'),
	(5, 'location', 5, 1, 0, 0, 'Местоположение', '', 1, 0, 1, 1, '', 'FIELD_LOCATION', '{"readonly":"0","style":""}'),
	(6, 'group', 6, 1, 10, 100, 'Контактная информация', 'Specify your contact details', 1, 1, 1, 1, '', '', ''),
	(7, 'text', 7, 1, 0, 0, 'Мобильный телефон', '', 1, 0, 1, 1, '', 'FIELD_MOBILE', '{"readonly":"0","min_char":"","max_char":"","maxlength":"","style":""}'),
	(8, 'text', 8, 1, 0, 0, 'Телефон', '', 1, 0, 1, 1, '', 'FIELD_LANDPHONE', '{"readonly":"0","min_char":"","max_char":"","maxlength":"","style":""}'),
	(9, 'url', 9, 1, 0, 0, 'Сайт', '', 1, 0, 1, 1, '', 'FIELD_WEBSITE', '{"readonly":"0","min_char":"","max_char":"","maxlength":"","style":""}'),
	(10, 'group', 10, 1, 10, 100, 'Образование', 'Educations', 1, 0, 1, 1, '', '', ''),
	(11, 'text', 11, 1, 0, 0, 'Школа / Университет', '', 1, 0, 1, 1, '', 'FIELD_COLLEGE', '{"readonly":"0","min_char":"","max_char":"","maxlength":"","style":""}'),
	(12, 'text', 12, 1, 0, 0, 'Год окончания', '', 1, 0, 1, 1, '', 'FIELD_GRADUATION', '{"readonly":"0","min_char":"","max_char":"","maxlength":"","style":""}');
/*!40000 ALTER TABLE `gy3te_community_fields` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_fields_values
CREATE TABLE IF NOT EXISTS `gy3te_community_fields_values` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `field_id` int(10) NOT NULL,
  `value` text NOT NULL,
  `access` tinyint(3) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`),
  KEY `user_id` (`user_id`),
  KEY `idx_user_fieldid` (`user_id`,`field_id`),
  KEY `access` (`access`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_fields_values: 25 rows
DELETE FROM `gy3te_community_fields_values`;
/*!40000 ALTER TABLE `gy3te_community_fields_values` DISABLE KEYS */;
INSERT INTO `gy3te_community_fields_values` (`id`, `user_id`, `field_id`, `value`, `access`, `params`) VALUES
	(1, 52, 5, '{"name":"\\u041c\\u0438\\u043d\\u0441\\u043a","desc":"\\u041c\\u0438\\u043d\\u0441\\u043a, \\u0411\\u0435\\u043b\\u0430\\u0440\\u0443\\u0441\\u044c","lat":"53.9045398","lng":"27.561524400000053"}', 10, ''),
	(2, 52, 7, '+375 33 4562964', 10, ''),
	(3, 49, 2, 'COM_COMMUNITY_MALE', 10, ''),
	(4, 49, 3, '1975-5-26 23:59:59', 10, '{"hideyear":false}'),
	(5, 49, 4, 'Классный чувак ))', 10, ''),
	(6, 49, 5, '{"name":"","desc":"","lat":"","lng":""}', 10, ''),
	(7, 49, 7, '', 10, ''),
	(8, 49, 8, '', 10, ''),
	(9, 49, 9, '', 10, ''),
	(10, 49, 11, '', 10, ''),
	(11, 49, 12, '', 10, ''),
	(12, 53, 4, 'Пару слов о выставке', 10, ''),
	(13, 53, 5, '{"name":"\\u041c\\u0438\\u043d\\u0441\\u043a","desc":"\\u041c\\u0438\\u043d\\u0441\\u043a, \\u0411\\u0435\\u043b\\u0430\\u0440\\u0443\\u0441\\u044c","lat":"53.9045398","lng":"27.561524400000053"}', 10, ''),
	(14, 53, 7, '', 10, ''),
	(15, 53, 8, '', 10, ''),
	(16, 53, 9, '', 10, ''),
	(17, 48, 2, 'COM_COMMUNITY_MALE', 0, ''),
	(18, 48, 3, '1975-5-26 23:59:59', 0, ''),
	(19, 48, 4, 'Супер админ ))', 0, ''),
	(20, 48, 5, '{"name":"","desc":"","lat":"","lng":""}', 0, ''),
	(21, 48, 7, '', 0, ''),
	(22, 48, 8, '', 0, ''),
	(23, 48, 9, '', 0, ''),
	(24, 48, 11, '', 0, ''),
	(25, 48, 12, '', 0, '');
/*!40000 ALTER TABLE `gy3te_community_fields_values` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_files
CREATE TABLE IF NOT EXISTS `gy3te_community_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `groupid` int(11) NOT NULL,
  `discussionid` int(11) NOT NULL,
  `bulletinid` int(11) NOT NULL,
  `eventid` int(11) NOT NULL,
  `profileid` int(11) NOT NULL,
  `messageid` int(11) NOT NULL,
  `filepath` varchar(255) NOT NULL,
  `filesize` int(11) NOT NULL,
  `hits` int(11) NOT NULL,
  `storage` varchar(64) NOT NULL,
  `creator` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `discussionid` (`discussionid`),
  KEY `groupid` (`groupid`),
  KEY `creator` (`creator`),
  KEY `bulletinid` (`bulletinid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_files: 0 rows
DELETE FROM `gy3te_community_files`;
/*!40000 ALTER TABLE `gy3te_community_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_community_files` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_groups
CREATE TABLE IF NOT EXISTS `gy3te_community_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `published` tinyint(1) NOT NULL,
  `ownerid` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `summary` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `approvals` tinyint(1) NOT NULL,
  `unlisted` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `avatar` text NOT NULL,
  `thumb` text NOT NULL,
  `cover` text NOT NULL,
  `discusscount` int(11) NOT NULL DEFAULT '0',
  `wallcount` int(11) NOT NULL DEFAULT '0',
  `membercount` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `hits` int(11) NOT NULL,
  `storage` varchar(64) NOT NULL DEFAULT 'file',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_groups: 1 rows
DELETE FROM `gy3te_community_groups`;
/*!40000 ALTER TABLE `gy3te_community_groups` DISABLE KEYS */;
INSERT INTO `gy3te_community_groups` (`id`, `published`, `ownerid`, `categoryid`, `name`, `description`, `summary`, `email`, `website`, `approvals`, `unlisted`, `created`, `avatar`, `thumb`, `cover`, `discusscount`, `wallcount`, `membercount`, `params`, `hits`, `storage`) VALUES
	(1, 1, 49, 1, 'Тестовая группа', '<p>Тестовая группаТестовая группаТестовая группа</p>', 'Тестовая группа', '', '', 1, 0, '2018-05-12 10:43:07', '', '', '', 0, 0, 1, '{"discussordering":0,"photopermission":-1,"videopermission":-1,"eventpermission":1,"grouprecentphotos":6,"grouprecentvideos":6,"grouprecentevents":6,"newmembernotification":1,"joinrequestnotification":1,"wallnotification":1,"groupdiscussionfilesharing":1,"groupannouncementfilesharing":1,"stream":1}', 3, 'file');
/*!40000 ALTER TABLE `gy3te_community_groups` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_groups_bulletins
CREATE TABLE IF NOT EXISTS `gy3te_community_groups_bulletins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupid` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `date` datetime NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `groupid` (`groupid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_groups_bulletins: 0 rows
DELETE FROM `gy3te_community_groups_bulletins`;
/*!40000 ALTER TABLE `gy3te_community_groups_bulletins` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_community_groups_bulletins` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_groups_category
CREATE TABLE IF NOT EXISTS `gy3te_community_groups_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_groups_category: 5 rows
DELETE FROM `gy3te_community_groups_category`;
/*!40000 ALTER TABLE `gy3te_community_groups_category` DISABLE KEYS */;
INSERT INTO `gy3te_community_groups_category` (`id`, `parent`, `name`, `description`) VALUES
	(1, 0, 'General', 'General group category.'),
	(2, 0, 'Internet', 'Internet group category.'),
	(3, 0, 'Business', 'Business group category'),
	(4, 0, 'Automotive', 'Automotive group category'),
	(5, 0, 'Music', 'Music group category');
/*!40000 ALTER TABLE `gy3te_community_groups_category` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_groups_discuss
CREATE TABLE IF NOT EXISTS `gy3te_community_groups_discuss` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentid` int(11) NOT NULL DEFAULT '0',
  `groupid` int(11) NOT NULL,
  `creator` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `title` text NOT NULL,
  `message` text NOT NULL,
  `lastreplied` datetime NOT NULL,
  `lock` tinyint(1) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `groupid` (`groupid`),
  KEY `parentid` (`parentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_groups_discuss: 0 rows
DELETE FROM `gy3te_community_groups_discuss`;
/*!40000 ALTER TABLE `gy3te_community_groups_discuss` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_community_groups_discuss` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_groups_invite
CREATE TABLE IF NOT EXISTS `gy3te_community_groups_invite` (
  `groupid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `creator` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_groups_invite: 0 rows
DELETE FROM `gy3te_community_groups_invite`;
/*!40000 ALTER TABLE `gy3te_community_groups_invite` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_community_groups_invite` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_groups_members
CREATE TABLE IF NOT EXISTS `gy3te_community_groups_members` (
  `groupid` int(11) NOT NULL,
  `memberid` int(11) NOT NULL,
  `approved` int(11) NOT NULL,
  `permissions` int(1) NOT NULL,
  KEY `groupid` (`groupid`),
  KEY `idx_memberid` (`memberid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_groups_members: 2 rows
DELETE FROM `gy3te_community_groups_members`;
/*!40000 ALTER TABLE `gy3te_community_groups_members` DISABLE KEYS */;
INSERT INTO `gy3te_community_groups_members` (`groupid`, `memberid`, `approved`, `permissions`) VALUES
	(1, 49, 1, 1),
	(1, 52, 0, 0);
/*!40000 ALTER TABLE `gy3te_community_groups_members` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_group_stats
CREATE TABLE IF NOT EXISTS `gy3te_community_group_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `date` date NOT NULL,
  `params` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_group_stats: 1 rows
DELETE FROM `gy3te_community_group_stats`;
/*!40000 ALTER TABLE `gy3te_community_group_stats` DISABLE KEYS */;
INSERT INTO `gy3te_community_group_stats` (`id`, `gid`, `type`, `count`, `date`, `params`, `created_at`) VALUES
	(1, 1, 'view', 3, '2018-05-12', '', '2018-05-12 13:43:08');
/*!40000 ALTER TABLE `gy3te_community_group_stats` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_hashtag
CREATE TABLE IF NOT EXISTS `gy3te_community_hashtag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(128) NOT NULL,
  `params` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_hashtag: ~0 rows (приблизительно)
DELETE FROM `gy3te_community_hashtag`;
/*!40000 ALTER TABLE `gy3te_community_hashtag` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_community_hashtag` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_invitations
CREATE TABLE IF NOT EXISTS `gy3te_community_invitations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `callback` varchar(255) NOT NULL,
  `cid` int(11) NOT NULL,
  `users` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_invitations: 0 rows
DELETE FROM `gy3te_community_invitations`;
/*!40000 ALTER TABLE `gy3te_community_invitations` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_community_invitations` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_likes
CREATE TABLE IF NOT EXISTS `gy3te_community_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `element` varchar(200) NOT NULL,
  `uid` int(10) NOT NULL,
  `like` text NOT NULL,
  `dislike` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `element` (`element`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_likes: 0 rows
DELETE FROM `gy3te_community_likes`;
/*!40000 ALTER TABLE `gy3te_community_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_community_likes` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_location_cache
CREATE TABLE IF NOT EXISTS `gy3te_community_location_cache` (
  `address` varchar(255) NOT NULL,
  `latitude` float(10,6) NOT NULL DEFAULT '255.000000',
  `longitude` float(10,6) NOT NULL DEFAULT '255.000000',
  `data` text NOT NULL,
  `status` varchar(2) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_location_cache: 1 rows
DELETE FROM `gy3te_community_location_cache`;
/*!40000 ALTER TABLE `gy3te_community_location_cache` DISABLE KEYS */;
INSERT INTO `gy3te_community_location_cache` (`address`, `latitude`, `longitude`, `data`, `status`, `created`) VALUES
	('минск', 255.000000, 255.000000, '', 'ZE', '2018-05-14 07:52:51');
/*!40000 ALTER TABLE `gy3te_community_location_cache` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_mailq
CREATE TABLE IF NOT EXISTS `gy3te_community_mailq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recipient` text NOT NULL,
  `subject` text NOT NULL,
  `body` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `template` varchar(64) NOT NULL,
  `email_type` text,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_mailq: 1 rows
DELETE FROM `gy3te_community_mailq`;
/*!40000 ALTER TABLE `gy3te_community_mailq` DISABLE KEYS */;
INSERT INTO `gy3te_community_mailq` (`id`, `recipient`, `subject`, `body`, `status`, `created`, `template`, `email_type`, `params`) VALUES
	(1, 'test@mail.ru', 'pitomnik хочет вступить в группу Тестовая группа', '\nЗдравствуйте, Тест!\n\npitomnik просит у Вас разрешение на вступление в группу (Тестовая группа). \n\nВам нужно будет утвердить этот запрос, перейдя ниже:\n\n<a href="{url}">{url}</a>', 0, '2018-05-12 10:45:49', 'email.groups.joinrequest.html', 'etype_groups_join_request', '{"group":"\\u0422\\u0435\\u0441\\u0442\\u043e\\u0432\\u0430\\u044f \\u0433\\u0440\\u0443\\u043f\\u043f\\u0430","url":"http:\\/\\/prodogs.info\\/index.php?option=com_community&view=groups&task=viewgroup&groupid=1&Itemid=116","actor":"pitomnik","actor_url":"index.php?option=com_community&view=profile&userid=52"}');
/*!40000 ALTER TABLE `gy3te_community_mailq` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_memberlist
CREATE TABLE IF NOT EXISTS `gy3te_community_memberlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `condition` varchar(255) NOT NULL,
  `avataronly` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_memberlist: 0 rows
DELETE FROM `gy3te_community_memberlist`;
/*!40000 ALTER TABLE `gy3te_community_memberlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_community_memberlist` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_memberlist_criteria
CREATE TABLE IF NOT EXISTS `gy3te_community_memberlist_criteria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `listid` int(11) NOT NULL,
  `field` varchar(255) NOT NULL,
  `condition` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `listid` (`listid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_memberlist_criteria: 0 rows
DELETE FROM `gy3te_community_memberlist_criteria`;
/*!40000 ALTER TABLE `gy3te_community_memberlist_criteria` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_community_memberlist_criteria` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_moods
CREATE TABLE IF NOT EXISTS `gy3te_community_moods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `description` varchar(128) NOT NULL,
  `image` varchar(256) DEFAULT NULL,
  `custom` tinyint(4) NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT '1',
  `allowcustomtext` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_moods: ~44 rows (приблизительно)
DELETE FROM `gy3te_community_moods`;
/*!40000 ALTER TABLE `gy3te_community_moods` DISABLE KEYS */;
INSERT INTO `gy3te_community_moods` (`id`, `title`, `description`, `image`, `custom`, `published`, `allowcustomtext`, `ordering`) VALUES
	(1, 'happy', 'COM_COMMUNITY_MOOD_HAPPY', NULL, 0, 1, 0, 0),
	(2, 'meh', 'COM_COMMUNITY_MOOD_MEH', NULL, 0, 1, 0, 0),
	(3, 'sad', 'COM_COMMUNITY_MOOD_SAD', NULL, 0, 1, 0, 0),
	(4, 'loved', 'COM_COMMUNITY_MOOD_LOVED', NULL, 0, 1, 0, 0),
	(5, 'excited', 'COM_COMMUNITY_MOOD_EXCITED', NULL, 0, 1, 0, 0),
	(6, 'pretty', 'COM_COMMUNITY_MOOD_PRETTY', NULL, 0, 1, 0, 0),
	(7, 'tired', 'COM_COMMUNITY_MOOD_TIRED', NULL, 0, 1, 0, 0),
	(8, 'angry', 'COM_COMMUNITY_MOOD_ANGRY', NULL, 0, 1, 0, 0),
	(9, 'speachless', 'COM_COMMUNITY_MOOD_SPEACHLESS', NULL, 0, 1, 0, 0),
	(10, 'shocked', 'COM_COMMUNITY_MOOD_SHOCKED', NULL, 0, 1, 0, 0),
	(11, 'irretated', 'COM_COMMUNITY_MOOD_IRRETATED', NULL, 0, 1, 0, 0),
	(12, 'sick', 'COM_COMMUNITY_MOOD_SICK', NULL, 0, 1, 0, 0),
	(13, 'annoyed', 'COM_COMMUNITY_MOOD_ANNOYED', NULL, 0, 1, 0, 0),
	(14, 'relieved', 'COM_COMMUNITY_MOOD_RELIEVED', NULL, 0, 1, 0, 0),
	(15, 'blessed', 'COM_COMMUNITY_MOOD_BLESSED', NULL, 0, 1, 0, 0),
	(16, 'bored', 'COM_COMMUNITY_MOOD_BORED', NULL, 0, 1, 0, 0),
	(19, 'COM_COMMUNITY_MOOD_SHORT_HAPPY', 'COM_COMMUNITY_MOOD_HAPPY', 'png', 1, 1, 0, 0),
	(20, 'COM_COMMUNITY_MOOD_SHORT_SAD', 'COM_COMMUNITY_MOOD_SAD', 'png', 1, 1, 0, 0),
	(21, 'COM_COMMUNITY_MOOD_SHORT_COOL', 'COM_COMMUNITY_MOOD_COOL', 'png', 1, 1, 0, 0),
	(22, 'COM_COMMUNITY_MOOD_SHORT_IRRITATED', 'COM_COMMUNITY_MOOD_IRRITATED', 'png', 1, 1, 0, 0),
	(23, 'COM_COMMUNITY_MOOD_SHORT_ANNOYED', 'COM_COMMUNITY_MOOD_ANNOYED', 'png', 1, 1, 0, 0),
	(24, 'COM_COMMUNITY_MOOD_SHORT_SHOCKED', 'COM_COMMUNITY_MOOD_SHOCKED', 'png', 1, 1, 0, 0),
	(25, 'COM_COMMUNITY_MOOD_SHORT_AMUSED', 'COM_COMMUNITY_MOOD_AMUSED', 'png', 1, 1, 0, 0),
	(26, 'COM_COMMUNITY_MOOD_SHORT_SPEECHLESS', 'COM_COMMUNITY_MOOD_SPEECHLESS', 'png', 1, 1, 0, 0),
	(27, 'COM_COMMUNITY_MOOD_SHORT_RICH', 'COM_COMMUNITY_MOOD_RICH', 'png', 1, 1, 0, 0),
	(28, 'COM_COMMUNITY_MOOD_SHORT_CHEEKY', 'COM_COMMUNITY_MOOD_CHEEKY', 'png', 1, 1, 0, 0),
	(29, 'COM_COMMUNITY_MOOD_SHORT_ANGRY', 'COM_COMMUNITY_MOOD_ANGRY', 'png', 1, 1, 0, 0),
	(30, 'COM_COMMUNITY_MOOD_SHORT_HUNGRY', 'COM_COMMUNITY_MOOD_HUNGRY', 'png', 1, 1, 0, 0),
	(31, 'COM_COMMUNITY_MOOD_SHORT_FESTIVE', 'COM_COMMUNITY_MOOD_FESTIVE', 'png', 1, 1, 0, 0),
	(32, 'COM_COMMUNITY_MOOD_SHORT_ROYAL', 'COM_COMMUNITY_MOOD_ROYAL', 'png', 1, 1, 0, 0),
	(33, 'COM_COMMUNITY_MOOD_SHORT_LOVE', 'COM_COMMUNITY_MOOD_LOVE', 'png', 1, 1, 0, 0),
	(34, 'COM_COMMUNITY_MOOD_SHORT_AFRAID', 'COM_COMMUNITY_MOOD_AFRAID', 'png', 1, 1, 0, 0),
	(35, 'COM_COMMUNITY_MOOD_SHORT_POWERFUL', 'COM_COMMUNITY_MOOD_POWERFUL', 'png', 1, 1, 0, 0),
	(36, 'COM_COMMUNITY_MOOD_SHORT_INVISIBLE', 'COM_COMMUNITY_MOOD_INVISIBLE', 'png', 1, 1, 0, 0),
	(37, 'COM_COMMUNITY_MOOD_SHORT_SWEET', 'COM_COMMUNITY_MOOD_SWEET', 'png', 1, 1, 0, 0),
	(38, 'COM_COMMUNITY_MOOD_SHORT_THIRSTY', 'COM_COMMUNITY_MOOD_THIRSTY', 'png', 1, 1, 0, 0),
	(39, 'COM_COMMUNITY_MOOD_SHORT_CLEAN', 'COM_COMMUNITY_MOOD_CLEAN', 'png', 1, 1, 0, 0),
	(40, 'COM_COMMUNITY_MOOD_SHORT_WATCHING', 'COM_COMMUNITY_MOOD_WATCHING', 'png', 1, 1, 0, 0),
	(41, 'COM_COMMUNITY_MOOD_SHORT_BORED', 'COM_COMMUNITY_MOOD_BORED', 'png', 1, 1, 0, 0),
	(42, 'COM_COMMUNITY_MOOD_SHORT_BUMMED', 'COM_COMMUNITY_MOOD_BUMMED', 'png', 1, 1, 0, 0),
	(43, 'COM_COMMUNITY_MOOD_SHORT_INNOVATIVE', 'COM_COMMUNITY_MOOD_INNOVATIVE', 'png', 1, 1, 0, 0),
	(44, 'COM_COMMUNITY_MOOD_SHORT_LUCKY', 'COM_COMMUNITY_MOOD_LUCKY', 'png', 1, 1, 0, 0),
	(45, 'COM_COMMUNITY_MOOD_SHORT_FOCUSED', 'COM_COMMUNITY_MOOD_FOCUSED', 'png', 1, 1, 0, 0),
	(46, 'COM_COMMUNITY_MOOD_SHORT_SURFING', 'COM_COMMUNITY_MOOD_SURFING', 'png', 1, 1, 0, 0);
/*!40000 ALTER TABLE `gy3te_community_moods` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_msg
CREATE TABLE IF NOT EXISTS `gy3te_community_msg` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from` int(10) unsigned NOT NULL,
  `parent` int(10) unsigned NOT NULL,
  `deleted` tinyint(3) unsigned DEFAULT '0',
  `from_name` varchar(45) NOT NULL,
  `posted_on` datetime DEFAULT NULL,
  `subject` tinytext NOT NULL,
  `body` text NOT NULL,
  `migrated` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_msg: 0 rows
DELETE FROM `gy3te_community_msg`;
/*!40000 ALTER TABLE `gy3te_community_msg` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_community_msg` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_msg_recepient
CREATE TABLE IF NOT EXISTS `gy3te_community_msg_recepient` (
  `msg_id` int(10) unsigned NOT NULL,
  `msg_parent` int(10) unsigned NOT NULL DEFAULT '0',
  `msg_from` int(10) unsigned NOT NULL,
  `to` int(10) unsigned NOT NULL,
  `bcc` tinyint(3) unsigned DEFAULT '0',
  `is_read` tinyint(3) unsigned DEFAULT '0',
  `deleted` tinyint(3) unsigned DEFAULT '0',
  UNIQUE KEY `un` (`msg_id`,`to`),
  KEY `msg_id` (`msg_id`),
  KEY `to` (`to`),
  KEY `idx_isread_to_deleted` (`is_read`,`to`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_msg_recepient: 0 rows
DELETE FROM `gy3te_community_msg_recepient`;
/*!40000 ALTER TABLE `gy3te_community_msg_recepient` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_community_msg_recepient` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_notifications
CREATE TABLE IF NOT EXISTS `gy3te_community_notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `actor` int(11) NOT NULL,
  `target` int(11) NOT NULL,
  `content` text NOT NULL,
  `type` varchar(200) NOT NULL,
  `cmd_type` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `created` (`created`),
  KEY `status` (`status`),
  KEY `type` (`type`),
  KEY `target` (`target`),
  KEY `actor` (`actor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_notifications: 0 rows
DELETE FROM `gy3te_community_notifications`;
/*!40000 ALTER TABLE `gy3te_community_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_community_notifications` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_oauth
CREATE TABLE IF NOT EXISTS `gy3te_community_oauth` (
  `userid` int(11) NOT NULL,
  `requesttoken` text NOT NULL,
  `accesstoken` text NOT NULL,
  `app` varchar(255) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_oauth: 0 rows
DELETE FROM `gy3te_community_oauth`;
/*!40000 ALTER TABLE `gy3te_community_oauth` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_community_oauth` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_photos
CREATE TABLE IF NOT EXISTS `gy3te_community_photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `albumid` int(11) NOT NULL,
  `caption` text NOT NULL,
  `published` tinyint(1) NOT NULL,
  `creator` int(11) NOT NULL,
  `permissions` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `original` varchar(255) NOT NULL,
  `filesize` int(11) NOT NULL DEFAULT '0',
  `storage` varchar(64) NOT NULL DEFAULT 'file',
  `created` datetime NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `status` varchar(200) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `albumid` (`albumid`),
  KEY `idx_storage` (`storage`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_photos: 0 rows
DELETE FROM `gy3te_community_photos`;
/*!40000 ALTER TABLE `gy3te_community_photos` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_community_photos` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_photos_albums
CREATE TABLE IF NOT EXISTS `gy3te_community_photos_albums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photoid` int(11) NOT NULL,
  `creator` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `permissions` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `path` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `groupid` int(11) NOT NULL DEFAULT '0',
  `eventid` int(11) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `location` text NOT NULL,
  `latitude` float(10,6) NOT NULL DEFAULT '255.000000',
  `longitude` float(10,6) NOT NULL DEFAULT '255.000000',
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `creator` (`creator`),
  KEY `idx_type` (`type`),
  KEY `idx_albumtype` (`id`,`type`),
  KEY `idx_creatortype` (`creator`,`type`),
  KEY `idx_groupid` (`groupid`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_photos_albums: 11 rows
DELETE FROM `gy3te_community_photos_albums`;
/*!40000 ALTER TABLE `gy3te_community_photos_albums` DISABLE KEYS */;
INSERT INTO `gy3te_community_photos_albums` (`id`, `photoid`, `creator`, `name`, `description`, `permissions`, `created`, `path`, `type`, `groupid`, `eventid`, `hits`, `location`, `latitude`, `longitude`, `default`, `params`) VALUES
	(1, 0, 52, 'pitomnik аватар', '', '0', '2018-05-12 09:35:21', 'images/avatar/profile/', 'profile.avatar', 0, 0, 0, '', 255.000000, 255.000000, 0, '{"count":"0","lastupdated":"2018-05-12 09:59:33","thumbnail":"components\\/com_community\\/assets\\/photo_thumb.png"}'),
	(2, 0, 52, 'Обложка', '', '0', '2018-05-12 09:35:21', 'images/cover/profile/52/', 'profile.Cover', 0, 0, 0, '', 255.000000, 255.000000, 0, '{"count":"0","lastupdated":"2018-05-12 09:59:33","thumbnail":"components\\/com_community\\/assets\\/photo_thumb.png"}'),
	(3, 0, 52, 'Лента фото', '', '0', '2018-05-12 09:35:21', 'images/photos/52/', 'profile', 0, 0, 0, '', 255.000000, 255.000000, 1, '{"count":"0","lastupdated":"2018-05-12 09:35:50","thumbnail":"components\\/com_community\\/assets\\/photo_thumb.png"}'),
	(4, 0, 49, 'Аватар', '', '35', '2018-05-12 10:43:07', 'images/avatar/group/', 'group.avatar', 1, 0, 0, '', 255.000000, 255.000000, 0, '{"count":"0","lastupdated":"2018-05-12 10:43:08","thumbnail":"components\\/com_community\\/assets\\/photo_thumb.png"}'),
	(5, 0, 49, 'Обложка', '', '35', '2018-05-12 10:43:07', 'images/cover/group/1/', 'group.Cover', 1, 0, 0, '', 255.000000, 255.000000, 0, '{"count":"0","lastupdated":"2018-05-12 10:43:08","thumbnail":"components\\/com_community\\/assets\\/photo_thumb.png"}'),
	(6, 0, 49, 'Лента фото', '', '35', '2018-05-12 10:43:07', 'images/groupphotos/1/', 'group', 1, 0, 0, '', 255.000000, 255.000000, 1, '{"count":"0","lastupdated":"2018-05-12 10:43:08","thumbnail":"components\\/com_community\\/assets\\/photo_thumb.png"}'),
	(7, 0, 53, 'vistavka аватар', '', '0', '2018-05-14 07:42:24', 'images/avatar/profile/', 'profile.avatar', 0, 0, 0, '', 255.000000, 255.000000, 0, '{"count":"0","lastupdated":"2018-05-14 07:46:19","thumbnail":"components\\/com_community\\/assets\\/photo_thumb.png"}'),
	(8, 0, 53, 'Обложка', '', '0', '2018-05-14 07:42:24', 'images/cover/profile/53/', 'profile.Cover', 0, 0, 0, '', 255.000000, 255.000000, 0, '{"count":"0","lastupdated":"2018-05-14 07:46:19","thumbnail":"components\\/com_community\\/assets\\/photo_thumb.png"}'),
	(9, 0, 53, 'Лента фото', '', '0', '2018-05-14 07:42:24', 'images/photos/53/', 'profile', 0, 0, 0, '', 255.000000, 255.000000, 1, '{"count":"0","lastupdated":"2018-05-14 07:43:19","thumbnail":"components\\/com_community\\/assets\\/photo_thumb.png"}'),
	(10, 0, 53, 'Обложка', '', '0', '2018-05-14 07:52:29', 'images/cover/event/1/', 'event.Cover', 0, 1, 0, '', 255.000000, 255.000000, 0, '{"count":"0","lastupdated":"2018-05-14 07:52:30","thumbnail":"components\\/com_community\\/assets\\/photo_thumb.png"}'),
	(11, 0, 53, 'Лента фото', '', '0', '2018-05-14 07:52:29', 'images/eventphotos/1/', 'event', 0, 1, 0, '', 255.000000, 255.000000, 1, '{"count":"0","lastupdated":"2018-05-14 07:52:30","thumbnail":"components\\/com_community\\/assets\\/photo_thumb.png"}');
/*!40000 ALTER TABLE `gy3te_community_photos_albums` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_photos_tag
CREATE TABLE IF NOT EXISTS `gy3te_community_photos_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photoid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `position` varchar(50) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_photoid` (`photoid`),
  KEY `idx_userid` (`userid`),
  KEY `idx_created_by` (`created_by`),
  KEY `idx_photo_user` (`photoid`,`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_photos_tag: 0 rows
DELETE FROM `gy3te_community_photos_tag`;
/*!40000 ALTER TABLE `gy3te_community_photos_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_community_photos_tag` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_photos_tokens
CREATE TABLE IF NOT EXISTS `gy3te_community_photos_tokens` (
  `userid` int(11) NOT NULL,
  `token` varchar(200) NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_photos_tokens: 0 rows
DELETE FROM `gy3te_community_photos_tokens`;
/*!40000 ALTER TABLE `gy3te_community_photos_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_community_photos_tokens` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_photo_stats
CREATE TABLE IF NOT EXISTS `gy3te_community_photo_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `date` date NOT NULL,
  `params` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_photo_stats: 0 rows
DELETE FROM `gy3te_community_photo_stats`;
/*!40000 ALTER TABLE `gy3te_community_photo_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_community_photo_stats` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_profiles
CREATE TABLE IF NOT EXISTS `gy3te_community_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `approvals` tinyint(3) NOT NULL,
  `published` tinyint(3) NOT NULL,
  `avatar` text NOT NULL,
  `watermark` text NOT NULL,
  `watermark_hash` varchar(255) NOT NULL,
  `watermark_location` text NOT NULL,
  `thumb` text NOT NULL,
  `created` datetime NOT NULL,
  `create_groups` tinyint(1) DEFAULT '1',
  `create_events` int(11) DEFAULT '1',
  `profile_lock` tinyint(1) DEFAULT '0',
  `ordering` int(11) NOT NULL,
  `params` text,
  PRIMARY KEY (`id`),
  KEY `approvals` (`approvals`,`published`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_profiles: 4 rows
DELETE FROM `gy3te_community_profiles`;
/*!40000 ALTER TABLE `gy3te_community_profiles` DISABLE KEYS */;
INSERT INTO `gy3te_community_profiles` (`id`, `name`, `description`, `approvals`, `published`, `avatar`, `watermark`, `watermark_hash`, `watermark_location`, `thumb`, `created`, `create_groups`, `create_events`, `profile_lock`, `ordering`, `params`) VALUES
	(1, 'Собаковод', '', 0, 1, 'images/watermarks/ee5b71d4bbdc1d36ab1338da.jpg', '', '', '', 'images/watermarks/thumb_ee5b71d4bbdc1d36ab1338da.jpg', '2018-05-12 09:31:22', 1, 1, 0, 1, '{"userGroup":["10"]}'),
	(2, 'Питомник', '', 0, 1, '', '', '', '', '', '2018-05-12 09:32:55', 1, 1, 0, 2, '{"userGroup":["11"]}'),
	(3, 'Выставка', '', 0, 1, '', '', '', '', '', '2018-05-14 07:24:33', 1, 1, 0, 3, '{"userGroup":["12"]}'),
	(4, 'Супер Администраторы', '', 1, 0, 'images/watermarks/026d40f69b46162e4743ab72.jpg', '', '', '', 'images/watermarks/thumb_026d40f69b46162e4743ab72.jpg', '2018-05-16 07:56:45', 1, 1, 0, 4, '{"userGroup":["8"]}');
/*!40000 ALTER TABLE `gy3te_community_profiles` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_profiles_fields
CREATE TABLE IF NOT EXISTS `gy3te_community_profiles_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `multiprofile_id` (`parent`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_profiles_fields: 19 rows
DELETE FROM `gy3te_community_profiles_fields`;
/*!40000 ALTER TABLE `gy3te_community_profiles_fields` DISABLE KEYS */;
INSERT INTO `gy3te_community_profiles_fields` (`id`, `parent`, `field_id`) VALUES
	(6, 2, 1),
	(12, 3, 1),
	(13, 3, 6),
	(16, 2, 5),
	(17, 2, 4),
	(18, 3, 5),
	(19, 3, 4),
	(21, 3, 7),
	(22, 3, 8),
	(23, 3, 9),
	(24, 1, 2),
	(25, 1, 3),
	(26, 1, 4),
	(27, 1, 5),
	(28, 1, 7),
	(29, 1, 8),
	(30, 1, 9),
	(31, 1, 1),
	(32, 1, 6);
/*!40000 ALTER TABLE `gy3te_community_profiles_fields` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_profile_stats
CREATE TABLE IF NOT EXISTS `gy3te_community_profile_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `date` date NOT NULL,
  `params` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_profile_stats: 7 rows
DELETE FROM `gy3te_community_profile_stats`;
/*!40000 ALTER TABLE `gy3te_community_profile_stats` DISABLE KEYS */;
INSERT INTO `gy3te_community_profile_stats` (`id`, `uid`, `type`, `count`, `date`, `params`, `created_at`) VALUES
	(1, 48, 'view', 2, '2018-05-12', '', '2018-05-12 12:37:25'),
	(2, 49, 'points', 6, '2018-05-12', '', '2018-05-12 12:48:47'),
	(3, 52, 'points', 1, '2018-05-12', '', '2018-05-12 12:59:58'),
	(4, 52, 'view', 1, '2018-05-12', '', '2018-05-12 13:47:30'),
	(5, 49, 'view', 1, '2018-05-12', '', '2018-05-12 14:17:28'),
	(6, 53, 'points', 2, '2018-05-14', '', '2018-05-14 10:52:29'),
	(7, 49, 'view', 1, '2018-05-14', '', '2018-05-14 11:19:41');
/*!40000 ALTER TABLE `gy3te_community_profile_stats` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_register
CREATE TABLE IF NOT EXISTS `gy3te_community_register` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(200) NOT NULL,
  `name` varchar(255) NOT NULL,
  `firstname` varchar(180) NOT NULL,
  `lastname` varchar(180) NOT NULL,
  `username` varchar(150) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created` datetime DEFAULT NULL,
  `ip` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_register: 0 rows
DELETE FROM `gy3te_community_register`;
/*!40000 ALTER TABLE `gy3te_community_register` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_community_register` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_register_auth_token
CREATE TABLE IF NOT EXISTS `gy3te_community_register_auth_token` (
  `token` varchar(200) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `auth_key` varchar(200) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`token`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_register_auth_token: 2 rows
DELETE FROM `gy3te_community_register_auth_token`;
/*!40000 ALTER TABLE `gy3te_community_register_auth_token` DISABLE KEYS */;
INSERT INTO `gy3te_community_register_auth_token` (`token`, `ip`, `auth_key`, `created`) VALUES
	('DUZNK9qSGa3f0vLtzjc7avmqvhhgDmaN', '127.0.0.1', 'a3d0caaf5f311823c388b7ad7edeb1a0', '2018-05-14 13:25:48'),
	('NnWsEKGqpenUWkjC5Phjw68V3tHsmg4Q', '127.0.0.1', '6dd1fac15dcbcb50758a28c360e5311d', '2018-05-14 13:15:42');
/*!40000 ALTER TABLE `gy3te_community_register_auth_token` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_reports
CREATE TABLE IF NOT EXISTS `gy3te_community_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniquestring` varchar(200) NOT NULL,
  `link` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_reports: 0 rows
DELETE FROM `gy3te_community_reports`;
/*!40000 ALTER TABLE `gy3te_community_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_community_reports` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_reports_actions
CREATE TABLE IF NOT EXISTS `gy3te_community_reports_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reportid` int(11) NOT NULL,
  `label` varchar(255) NOT NULL,
  `method` varchar(255) NOT NULL,
  `parameters` varchar(255) NOT NULL,
  `defaultaction` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_reports_actions: 0 rows
DELETE FROM `gy3te_community_reports_actions`;
/*!40000 ALTER TABLE `gy3te_community_reports_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_community_reports_actions` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_reports_reporter
CREATE TABLE IF NOT EXISTS `gy3te_community_reports_reporter` (
  `reportid` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `ip` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_reports_reporter: 0 rows
DELETE FROM `gy3te_community_reports_reporter`;
/*!40000 ALTER TABLE `gy3te_community_reports_reporter` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_community_reports_reporter` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_storage_s3
CREATE TABLE IF NOT EXISTS `gy3te_community_storage_s3` (
  `storageid` varchar(255) NOT NULL,
  `resource_path` varchar(255) NOT NULL,
  UNIQUE KEY `storageid` (`storageid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_storage_s3: 0 rows
DELETE FROM `gy3te_community_storage_s3`;
/*!40000 ALTER TABLE `gy3te_community_storage_s3` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_community_storage_s3` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_tags
CREATE TABLE IF NOT EXISTS `gy3te_community_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `element` varchar(200) NOT NULL,
  `userid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `tag` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_tags: 0 rows
DELETE FROM `gy3te_community_tags`;
/*!40000 ALTER TABLE `gy3te_community_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_community_tags` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_tags_words
CREATE TABLE IF NOT EXISTS `gy3te_community_tags_words` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(200) NOT NULL,
  `count` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_tags_words: 0 rows
DELETE FROM `gy3te_community_tags_words`;
/*!40000 ALTER TABLE `gy3te_community_tags_words` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_community_tags_words` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_theme
CREATE TABLE IF NOT EXISTS `gy3te_community_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(32) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_theme: ~1 rows (приблизительно)
DELETE FROM `gy3te_community_theme`;
/*!40000 ALTER TABLE `gy3te_community_theme` DISABLE KEYS */;
INSERT INTO `gy3te_community_theme` (`id`, `key`, `value`) VALUES
	(1, 'scss-default', '{"colors":{"scss-color-primary":"5677FC","scss-color-secondary":"259B24","scss-color-neutral":"ECF0F1","scss-color-important":"E74C3C","scss-color-info":"E67E22","scss-color-background":"ECF0F1","scss-color-toolbar":"F5F7F7","scss-color-focus-background":"FFFFFF","scss-color-postbox":"FFFFFF","scss-color-postbox-tab":"F5F5F5","scss-color-module-background":"FFFFFF","scss-color-moduletab-background":"E0E7E8","scss-color-dropdown-background":"FFFFFF","scss-color-dropdown-border":"E3E5E7"},"general":{"scss-stream-position":"right","scss-button-style":"flat","scss-avatar-shape":"circle","scss-avatar-style":"bordered"}}');
/*!40000 ALTER TABLE `gy3te_community_theme` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_thirdparty_wall_options
CREATE TABLE IF NOT EXISTS `gy3te_community_thirdparty_wall_options` (
  `name` varchar(255) NOT NULL,
  `notification_cmd` varchar(255) NOT NULL,
  `object_name` varchar(255) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_thirdparty_wall_options: 0 rows
DELETE FROM `gy3te_community_thirdparty_wall_options`;
/*!40000 ALTER TABLE `gy3te_community_thirdparty_wall_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_community_thirdparty_wall_options` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_userpoints
CREATE TABLE IF NOT EXISTS `gy3te_community_userpoints` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rule_name` varchar(255) NOT NULL DEFAULT '',
  `rule_description` text NOT NULL,
  `rule_plugin` varchar(255) NOT NULL DEFAULT '',
  `action_string` varchar(255) NOT NULL DEFAULT '',
  `component` varchar(255) NOT NULL DEFAULT '',
  `access` tinyint(1) NOT NULL DEFAULT '1',
  `points` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `system` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_userpoints: 59 rows
DELETE FROM `gy3te_community_userpoints`;
/*!40000 ALTER TABLE `gy3te_community_userpoints` DISABLE KEYS */;
INSERT INTO `gy3te_community_userpoints` (`id`, `rule_name`, `rule_description`, `rule_plugin`, `action_string`, `component`, `access`, `points`, `published`, `system`) VALUES
	(1, 'Profile Application Added', 'Assign number of points and determine whether an activity stream item will be created when user adds a profile application.', 'com_community', 'application.add', '', 1, 0, 1, 1),
	(2, 'Profile Application Removed', 'Assign number of points and determine whether an activity stream item will be created when user removes a profile application.', 'com_community', 'application.remove', '', 1, 0, 0, 1),
	(3, 'Photo Upload', 'Assign number of points for the photo upload action and determine if an activity stream item will be created.', 'com_community', 'photo.upload', '', 1, 0, 1, 1),
	(4, 'New Group Created', 'Assign number of points when a user creates a new group and determines if an activity stream item will be created.', 'com_community', 'group.create', '', 1, 3, 1, 1),
	(5, 'New Group Discussion', 'Assign number of points when a user opens a new discussion in group and determine if an activity stream item for this action will be created.', 'com_community', 'group.discussion.create', '', 1, 2, 1, 1),
	(6, 'User Leave The Group', 'Deduct points when a registered user leaves a group. * There is no activity stream item for this action.', 'com_community', 'group.leave', '', 1, -1, 1, 1),
	(7, 'Friend Request Is Approved', 'Assign number of points when user approves a friend request and determine if an activity stream item for this action will be created.', 'com_community', 'friends.request.approve', '', 1, 1, 1, 1),
	(8, 'New Photo Album Created', 'Assign number of points when a user creates new album and determine if an activity stream item for this action will be created.', 'com_community', 'album.create', '', 1, 1, 1, 1),
	(9, 'Post Group Comment', 'Assign a number of points when a user posst from a group\'s share box and determine if to create an activity stream item for this action.', 'com_community', 'group.wall.create', '', 1, 1, 1, 1),
	(10, 'Join Group', 'Assign a number of points when user joins the group and determine if to create an activity stream item for this action.', 'com_community', 'group.join', '', 1, 1, 1, 1),
	(11, 'Reply Group\'s Discussion', 'Assign a number of points when a registered user replies on a group\'s discussion and determine if to create an activity stream item for this action.', 'com_community', 'group.discussion.reply', '', 1, 1, 1, 1),
	(12, 'Comment Profile From Share Box', 'Assign a number of points when a user posts from a Share Box on other people\'s profiles and determine if to create an activity stream item for this action.', 'com_community', 'profile.wall.create', '', 1, 1, 1, 1),
	(13, 'Post Status From Share Box', 'Assign a number of points when a user posts a status from a Share Box and determine if to create an activity stream item for this action.', 'com_community', 'profile.status.update', '', 1, 1, 1, 1),
	(14, 'Profile Updated', 'Assign a number of points when a profile is updated. There is no activity stream item for this action.', 'com_community', 'profile.save', '', 1, 1, 1, 1),
	(15, 'Group Updated', 'Assign a number of points when a user updates the group information and determine if to create an activity stream item for this action.', 'com_community', 'group.updated', '', 1, 1, 1, 1),
	(16, 'Change Group Avatar', 'Assign a number of points when a group admin or owner changes its avatar.', 'com_community', 'group.avatar.upload', '', 1, 0, 1, 1),
	(17, 'Create Group\'s Announcement', 'Assign a number of points when a user publishes a new announcement in a group and determine if to create an activity stream item for this action.', 'com_community', 'group.news.create', '', 1, 1, 1, 1),
	(18, 'Comment Photo', 'Assign number of points when a new photo comment is added and determine if to create an activity stream item for this action', 'com_community', 'photos.wall.create', '', 1, 1, 1, 1),
	(19, 'Remove Friend', 'Deduct points when a registered user removes a friend. There is no activity stream item for this action', 'com_community', 'friends.remove', '', 1, 0, 1, 1),
	(20, 'Change Profile Picture', 'Assign a number of points when a user changes a profile picture and determine if to create an activity stream item for this action', 'com_community', 'profile.avatar.upload', '', 1, 1, 0, 1),
	(21, 'Update Profile Privacy', 'Assign a number of points when user update profile privacy. There is no activity stream item for this action.', 'com_community', 'profile.privacy.update', '', 1, 0, 1, 1),
	(22, 'Reply Private Message', 'Give points when a user replies to a private message. Activity stream items for this action do not exist.', 'com_community', 'inbox.message.reply', '', 1, 0, 1, 1),
	(23, 'New Private Message', 'Give points when a user sends a new private message.', 'com_community', 'inbox.message.send', '', 1, 0, 1, 1),
	(24, 'Remove Group Member', 'Assign a number of points when a group owner or admin user removes a group memeber.', 'com_community', 'group.member.remove', '', 1, 0, 1, 1),
	(25, 'Delete Announcement', 'Deduct points when a user removes an announcement in group.', 'com_community', 'group.news.remove', '', 1, 0, 1, 1),
	(26, 'Remove Wall Comment', 'Deduct points to the original poster when a wall comment is removed.', 'com_community', 'wall.remove', '', 1, 0, 1, 1),
	(27, 'Delete Photo Album', 'Deduct points when a user deletes a photo album.', 'com_community', 'album.remove', '', 1, 0, 1, 1),
	(28, 'Delete Photo', 'Deduct points when a user deletes a photo.', 'com_community', 'photo.remove', '', 1, 0, 1, 1),
	(29, 'Event Updated', 'Assign a number of points when a user updates event information.', 'com_community', 'events.update', '', 1, 1, 1, 1),
	(30, 'Post Event Wall', 'Give points when registered user post wall on event.', 'com_community', 'event.wall.create', '', 1, 1, 1, 1),
	(31, 'Remove video', 'Deduct points when user remove a video.', 'com_community', 'video.remove', '', 1, -1, 1, 1),
	(32, 'Add video', 'Add points when user adds a video.', 'com_community', 'video.add', '', 1, 1, 1, 1),
	(33, 'Add Event', 'Add points when user created new event.', 'com_community', 'events.create', '', 1, 1, 1, 1),
	(34, 'Like photo', 'Add points when usegr like a photo', 'com_community', 'photo.like', '', 1, 1, 1, 1),
	(35, 'Like album', 'Add points when user like an album', 'com_community', 'album.like', '', 1, 1, 1, 1),
	(36, 'Like videos', 'Add points when user like a video', 'com_community', 'videos.like', '', 1, 1, 1, 1),
	(37, 'Like profile', 'Add points when user like a profile', 'com_community', 'profile.like', '', 1, 1, 1, 1),
	(38, 'Like profile status', 'Add points when user like a profile status', 'com_community', 'profile.stream.like', '', 1, 1, 1, 1),
	(39, 'Change profile cover', 'Add points when user change the profile cover photo', 'com_community', 'profile.cover.upload', '', 1, 1, 1, 1),
	(40, 'Change group cover', 'Add points when user change the group cover photo', 'com_community', 'group.cover.upload', '', 1, 1, 1, 1),
	(41, 'Change event cover', 'Add points when user change the event cover photo', 'com_community', 'event.cover.upload', '', 1, 1, 1, 1),
	(42, 'Comment album', 'Add points of points when new album comment is added', 'com_community', 'albums.comment', '', 1, 1, 1, 1),
	(43, 'Comment video', 'Add points of points when new video comment is added', 'com_community', 'videos.comment', '', 1, 1, 1, 1),
	(44, 'Like group', 'Add points when user like a group', 'com_community', 'groups.like', '', 1, 1, 1, 1),
	(45, 'Like event', 'Add points when user like a event', 'com_community', 'events.like', '', 1, 1, 1, 1),
	(46, 'Unlike photo', 'Deduct points when user unlike a photo', 'com_community', 'photo.unlike', '', 1, -1, 1, 1),
	(47, 'Unlike album', 'Deduct points when user unlike an album', 'com_community', 'album.unlike', '', 1, -1, 1, 1),
	(48, 'Unlike video', 'Deduct points when user unlike a video', 'com_community', 'videos.unlike', '', 1, -1, 1, 1),
	(49, 'Unlike group', 'Deduct points when user unlike a group', 'com_community', 'groups.unlike', '', 1, -1, 1, 1),
	(50, 'Unlike event', 'Deduct points when user unlike a event', 'com_community', 'events.unlike', '', 1, -1, 1, 1),
	(51, 'Unlike profile', 'Deduct points when user unlike a profile', 'com_community', 'profile.unlike', '', 1, -1, 1, 1),
	(52, 'Unlike profile status', 'Deduct points when user unlike a profile status', 'com_community', 'profile.stream.unlike', '', 1, -1, 1, 1),
	(53, 'Attend event', 'Add points when user attended to event', 'com_community', 'events.attend', '', 1, 1, 1, 1),
	(54, 'Wont Attend event', 'Deduct points when user attended to event', 'com_community', 'events.wontattend', '', 1, -1, 1, 1),
	(55, 'Profile featured', 'Add points when site admin featured profile', 'com_community', 'users.featured', '', 1, 1, 1, 1),
	(56, 'Album featured', 'Add points when site admin featured album', 'com_community', 'albums.featured', '', 1, 1, 1, 1),
	(57, 'Video featured', 'Add points when site admin featured video', 'com_community', 'videos.featured', '', 1, 1, 1, 1),
	(58, 'Group featured', 'Add points when site admin featured group', 'com_community', 'groups.featured', '', 1, 1, 1, 1),
	(59, 'Event featured', 'Add points when site admin featured event', 'com_community', 'events.featured', '', 1, 1, 1, 1);
/*!40000 ALTER TABLE `gy3te_community_userpoints` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_users
CREATE TABLE IF NOT EXISTS `gy3te_community_users` (
  `userid` int(11) NOT NULL,
  `status` text NOT NULL,
  `status_access` int(11) NOT NULL DEFAULT '0',
  `points` int(11) NOT NULL,
  `posted_on` datetime NOT NULL,
  `avatar` text NOT NULL,
  `thumb` text NOT NULL,
  `cover` text NOT NULL,
  `invite` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `view` int(11) NOT NULL DEFAULT '0',
  `friends` text NOT NULL,
  `groups` text NOT NULL,
  `events` text NOT NULL,
  `friendcount` int(11) NOT NULL DEFAULT '0',
  `alias` varchar(255) NOT NULL,
  `latitude` float(10,6) NOT NULL DEFAULT '255.000000',
  `longitude` float(10,6) NOT NULL DEFAULT '255.000000',
  `profile_id` int(11) NOT NULL DEFAULT '0',
  `storage` varchar(64) NOT NULL DEFAULT 'file',
  `watermark_hash` varchar(255) NOT NULL,
  `search_email` tinyint(1) NOT NULL DEFAULT '1',
  `default_avatar` tinyint(1) NOT NULL DEFAULT '1',
  `usergroup` tinytext,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_users: 6 rows
DELETE FROM `gy3te_community_users`;
/*!40000 ALTER TABLE `gy3te_community_users` DISABLE KEYS */;
INSERT INTO `gy3te_community_users` (`userid`, `status`, `status_access`, `points`, `posted_on`, `avatar`, `thumb`, `cover`, `invite`, `params`, `view`, `friends`, `groups`, `events`, `friendcount`, `alias`, `latitude`, `longitude`, `profile_id`, `storage`, `watermark_hash`, `search_email`, `default_avatar`, `usergroup`) VALUES
	(51, '', 0, 0, '0000-00-00 00:00:00', 'images/watermarks/ee5b71d4bbdc1d36ab1338da.jpg', 'images/watermarks/thumb_ee5b71d4bbdc1d36ab1338da.jpg', '', 0, '{"notifyEmailSystem":1,"privacyPrivateMessage":10,"privacyFriendRequest":10,"privacyProfileView":0,"privacyPhotoView":0,"privacyFriendsView":0,"privacyGroupsView":"","privacyVideoView":0,"notifyEmailMessage":1,"notifyEmailApps":1,"notifyWallComment":0,"invitorId":0,"notif_groups_notify_admin":1,"etype_groups_notify_admin":1,"notif_user_profile_delete":1,"etype_user_profile_delete":1,"notif_system_reports_threshold":1,"etype_system_reports_threshold":1,"notif_profile_activity_add_comment":1,"etype_profile_activity_add_comment":1,"notif_profile_activity_reply_comment":1,"etype_profile_activity_reply_comment":1,"notif_profile_status_update":1,"etype_profile_status_update":1,"notif_profile_like":1,"etype_profile_like":1,"notif_profile_stream_like":1,"etype_profile_stream_like":1,"notif_profle_digest_email":0,"etype_profle_digest_email":1,"notif_friends_request_connection":1,"etype_friends_request_connection":1,"notif_friends_create_connection":1,"etype_friends_create_connection":1,"notif_inbox_create_message":1,"etype_inbox_create_message":1,"notif_users_tagged":1,"etype_users_tagged":1,"notif_groups_invite":1,"etype_groups_invite":1,"notif_groups_discussion_reply":1,"etype_groups_discussion_reply":1,"notif_groups_wall_create":1,"etype_groups_wall_create":1,"notif_groups_create_discussion":1,"etype_groups_create_discussion":1,"notif_groups_create_news":1,"etype_groups_create_news":1,"notif_groups_create_album":1,"etype_groups_create_album":1,"notif_groups_create_video":1,"etype_groups_create_video":1,"notif_groups_create_event":1,"etype_groups_create_event":1,"notif_groups_sendmail":1,"etype_groups_sendmail":1,"notif_groups_member_approved":1,"etype_groups_member_approved":1,"notif_groups_member_join":1,"etype_groups_member_join":1,"notif_groups_notify_creator":1,"etype_groups_notify_creator":1,"notif_groups_discussion_newfile":1,"etype_groups_discussion_newfile":1,"notif_groups_activity_add_comment":1,"etype_groups_activity_add_comment":1,"notif_events_notify_admin":1,"etype_events_notify_admin":1,"notif_events_invite":1,"etype_events_invite":1,"notif_events_invitation_approved":1,"etype_events_invitation_approved":1,"notif_events_sendmail":1,"etype_events_sendmail":1,"notif_event_notify_creator":0,"etype_event_notify_creator":0,"notif_event_join_request":1,"etype_event_join_request":1,"notif_events_activity_add_comment":0,"etype_events_activity_add_comment":0,"notif_events_wall_create":1,"etype_events_wall_create":1,"notif_videos_submit_wall":1,"etype_videos_submit_wall":1,"notif_videos_reply_wall":1,"etype_videos_reply_wall":1,"notif_videos_tagging":1,"etype_videos_tagging":1,"notif_videos_like":1,"etype_videos_like":1,"notif_videos_convert_success":1,"etype_videos_convert_success":1,"notif_photos_submit_wall":1,"etype_photos_submit_wall":1,"notif_photos_reply_wall":1,"etype_photos_reply_wall":1,"notif_photos_tagging":1,"etype_photos_tagging":1,"notif_photos_like":1,"etype_photos_like":1,"notif_system_messaging":1,"etype_system_messaging":1,"postFacebookStatus":0}', 0, '', '', '', 0, '51:support', 255.000000, 255.000000, 0, 'file', '', 1, 1, NULL),
	(50, '', 0, 0, '0000-00-00 00:00:00', 'images/watermarks/ee5b71d4bbdc1d36ab1338da.jpg', 'images/watermarks/thumb_ee5b71d4bbdc1d36ab1338da.jpg', '', 0, '{"notifyEmailSystem":1,"privacyPrivateMessage":10,"privacyFriendRequest":10,"privacyProfileView":0,"privacyPhotoView":0,"privacyFriendsView":0,"privacyGroupsView":"","privacyVideoView":0,"notifyEmailMessage":1,"notifyEmailApps":1,"notifyWallComment":0,"invitorId":0,"postFacebookStatus":0}', 0, '', '', '', 0, '50:test2', 255.000000, 255.000000, 0, 'file', '', 1, 1, NULL),
	(49, 'Жизнь прекрасна!!! ))', 10, 6, '2018-05-12 11:31:46', 'images/watermarks/ee5b71d4bbdc1d36ab1338da.jpg', 'images/watermarks/thumb_ee5b71d4bbdc1d36ab1338da.jpg', '', 0, '{"notifyEmailSystem":1,"privacyPrivateMessage":10,"privacyFriendRequest":10,"privacyProfileView":0,"privacyPhotoView":0,"privacyFriendsView":0,"privacyGroupsView":"","privacyVideoView":0,"notifyEmailMessage":1,"notifyEmailApps":1,"notifyWallComment":0,"invitorId":0,"postFacebookStatus":0,"lastnotificationlist":"2018-05-14 07:15:43","group_activity_1":"1"}', 2, '', '1', '', 0, '49:test', 0.000000, 0.000000, 0, 'file', '', 1, 1, NULL),
	(48, '', 0, 0, '0000-00-00 00:00:00', 'images/watermarks/ee5b71d4bbdc1d36ab1338da.jpg', 'images/watermarks/thumb_ee5b71d4bbdc1d36ab1338da.jpg', '', 0, '{"notifyEmailSystem":1,"privacyPrivateMessage":10,"privacyFriendRequest":10,"privacyProfileView":0,"privacyPhotoView":0,"privacyFriendsView":0,"privacyGroupsView":"","privacyVideoView":0,"notifyEmailMessage":1,"notifyEmailApps":1,"notifyWallComment":0,"invitorId":0,"postFacebookStatus":0,"daylightsavingoffset":"0"}', 2, '', '', '', 0, '48:super-user', 0.000000, 0.000000, 4, 'file', '', 1, 1, '8'),
	(52, '', 0, 1, '0000-00-00 00:00:00', 'images/watermarks/ee5b71d4bbdc1d36ab1338da.jpg', 'images/watermarks/thumb_ee5b71d4bbdc1d36ab1338da.jpg', '', 0, '{"notifyEmailSystem":1,"privacyPrivateMessage":10,"privacyFriendRequest":10,"privacyProfileView":0,"privacyPhotoView":0,"privacyFriendsView":0,"privacyGroupsView":"","privacyVideoView":0,"notifyEmailMessage":1,"notifyEmailApps":1,"notifyWallComment":0,"invitorId":0,"notif_groups_notify_admin":1,"etype_groups_notify_admin":1,"notif_user_profile_delete":1,"etype_user_profile_delete":1,"notif_system_reports_threshold":1,"etype_system_reports_threshold":1,"notif_profile_activity_add_comment":1,"etype_profile_activity_add_comment":1,"notif_profile_activity_reply_comment":1,"etype_profile_activity_reply_comment":1,"notif_profile_status_update":1,"etype_profile_status_update":1,"notif_profile_like":1,"etype_profile_like":1,"notif_profile_stream_like":1,"etype_profile_stream_like":1,"notif_profle_digest_email":0,"etype_profle_digest_email":1,"notif_friends_request_connection":1,"etype_friends_request_connection":1,"notif_friends_create_connection":1,"etype_friends_create_connection":1,"notif_inbox_create_message":1,"etype_inbox_create_message":1,"notif_users_tagged":1,"etype_users_tagged":1,"notif_groups_invite":1,"etype_groups_invite":1,"notif_groups_discussion_reply":1,"etype_groups_discussion_reply":1,"notif_groups_wall_create":1,"etype_groups_wall_create":1,"notif_groups_create_discussion":1,"etype_groups_create_discussion":1,"notif_groups_create_news":1,"etype_groups_create_news":1,"notif_groups_create_album":1,"etype_groups_create_album":1,"notif_groups_create_video":1,"etype_groups_create_video":1,"notif_groups_create_event":1,"etype_groups_create_event":1,"notif_groups_sendmail":1,"etype_groups_sendmail":1,"notif_groups_member_approved":1,"etype_groups_member_approved":1,"notif_groups_member_join":1,"etype_groups_member_join":1,"notif_groups_notify_creator":1,"etype_groups_notify_creator":1,"notif_groups_discussion_newfile":1,"etype_groups_discussion_newfile":1,"notif_groups_activity_add_comment":1,"etype_groups_activity_add_comment":1,"notif_events_notify_admin":1,"etype_events_notify_admin":1,"notif_events_invite":1,"etype_events_invite":1,"notif_events_invitation_approved":1,"etype_events_invitation_approved":1,"notif_events_sendmail":1,"etype_events_sendmail":1,"notif_event_notify_creator":0,"etype_event_notify_creator":0,"notif_event_join_request":1,"etype_event_join_request":1,"notif_events_activity_add_comment":0,"etype_events_activity_add_comment":0,"notif_events_wall_create":1,"etype_events_wall_create":1,"notif_videos_submit_wall":1,"etype_videos_submit_wall":1,"notif_videos_reply_wall":1,"etype_videos_reply_wall":1,"notif_videos_tagging":1,"etype_videos_tagging":1,"notif_videos_like":1,"etype_videos_like":1,"notif_videos_convert_success":1,"etype_videos_convert_success":1,"notif_photos_submit_wall":1,"etype_photos_submit_wall":1,"notif_photos_reply_wall":1,"etype_photos_reply_wall":1,"notif_photos_tagging":1,"etype_photos_tagging":1,"notif_photos_like":1,"etype_photos_like":1,"notif_system_messaging":1,"etype_system_messaging":1,"postFacebookStatus":0,"lastnotificationlist":"2018-05-14 08:15:16","group_activity_1":"1"}', 1, '', '', '', 0, '52:pitomnik', 53.904541, 27.561523, 2, 'file', '', 1, 1, '11'),
	(53, '', 0, 2, '0000-00-00 00:00:00', 'images/watermarks/026d40f69b46162e4743ab72.jpg', 'images/watermarks/thumb_026d40f69b46162e4743ab72.jpg', '', 0, '{"notifyEmailSystem":1,"privacyPrivateMessage":10,"privacyFriendRequest":10,"privacyProfileView":0,"privacyPhotoView":0,"privacyFriendsView":0,"privacyGroupsView":"","privacyVideoView":0,"notifyEmailMessage":1,"notifyEmailApps":1,"notifyWallComment":0,"invitorId":0,"notif_groups_notify_admin":1,"etype_groups_notify_admin":1,"notif_user_profile_delete":1,"etype_user_profile_delete":1,"notif_system_reports_threshold":1,"etype_system_reports_threshold":1,"notif_profile_activity_add_comment":1,"etype_profile_activity_add_comment":1,"notif_profile_activity_reply_comment":1,"etype_profile_activity_reply_comment":1,"notif_profile_status_update":1,"etype_profile_status_update":1,"notif_profile_like":1,"etype_profile_like":1,"notif_profile_stream_like":1,"etype_profile_stream_like":1,"notif_profle_digest_email":0,"etype_profle_digest_email":1,"notif_friends_request_connection":1,"etype_friends_request_connection":1,"notif_friends_create_connection":1,"etype_friends_create_connection":1,"notif_inbox_create_message":1,"etype_inbox_create_message":1,"notif_users_tagged":1,"etype_users_tagged":1,"notif_groups_invite":1,"etype_groups_invite":1,"notif_groups_discussion_reply":1,"etype_groups_discussion_reply":1,"notif_groups_wall_create":1,"etype_groups_wall_create":1,"notif_groups_create_discussion":1,"etype_groups_create_discussion":1,"notif_groups_create_news":1,"etype_groups_create_news":1,"notif_groups_create_album":1,"etype_groups_create_album":1,"notif_groups_create_video":1,"etype_groups_create_video":1,"notif_groups_create_event":1,"etype_groups_create_event":1,"notif_groups_sendmail":1,"etype_groups_sendmail":1,"notif_groups_member_approved":1,"etype_groups_member_approved":1,"notif_groups_member_join":1,"etype_groups_member_join":1,"notif_groups_notify_creator":1,"etype_groups_notify_creator":1,"notif_groups_discussion_newfile":1,"etype_groups_discussion_newfile":1,"notif_groups_activity_add_comment":1,"etype_groups_activity_add_comment":1,"notif_events_notify_admin":1,"etype_events_notify_admin":1,"notif_events_invite":1,"etype_events_invite":1,"notif_events_invitation_approved":1,"etype_events_invitation_approved":1,"notif_events_sendmail":1,"etype_events_sendmail":1,"notif_event_notify_creator":0,"etype_event_notify_creator":0,"notif_event_join_request":1,"etype_event_join_request":1,"notif_events_activity_add_comment":0,"etype_events_activity_add_comment":0,"notif_events_wall_create":1,"etype_events_wall_create":1,"notif_system_messaging":1,"etype_system_messaging":1,"postFacebookStatus":"0"}', 0, '', '', '', 0, '53:vistavka', 53.904541, 27.561523, 3, 'file', '', 1, 1, '12');
/*!40000 ALTER TABLE `gy3te_community_users` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_user_invites
CREATE TABLE IF NOT EXISTS `gy3te_community_user_invites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `reason` text NOT NULL,
  `actionby` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_user_invites: 0 rows
DELETE FROM `gy3te_community_user_invites`;
/*!40000 ALTER TABLE `gy3te_community_user_invites` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_community_user_invites` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_user_status
CREATE TABLE IF NOT EXISTS `gy3te_community_user_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `status` text NOT NULL,
  `posted_on` int(11) NOT NULL,
  `location` text NOT NULL,
  `latitude` float(10,6) NOT NULL DEFAULT '255.000000',
  `longitude` float(10,6) NOT NULL DEFAULT '255.000000',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_user_status: 0 rows
DELETE FROM `gy3te_community_user_status`;
/*!40000 ALTER TABLE `gy3te_community_user_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_community_user_status` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_videos
CREATE TABLE IF NOT EXISTS `gy3te_community_videos` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL DEFAULT 'file',
  `video_id` varchar(200) DEFAULT NULL,
  `description` text NOT NULL,
  `creator` int(11) unsigned NOT NULL,
  `creator_type` varchar(200) NOT NULL DEFAULT 'user',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `permissions` varchar(255) NOT NULL DEFAULT '0',
  `category_id` int(11) unsigned NOT NULL,
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(3) NOT NULL DEFAULT '1',
  `featured` tinyint(3) NOT NULL DEFAULT '0',
  `duration` float unsigned DEFAULT '0',
  `status` varchar(200) NOT NULL DEFAULT 'pending',
  `thumb` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `groupid` int(11) unsigned NOT NULL DEFAULT '0',
  `eventid` int(11) unsigned NOT NULL DEFAULT '0',
  `filesize` int(11) NOT NULL DEFAULT '0',
  `storage` varchar(64) NOT NULL DEFAULT 'file',
  `location` text NOT NULL,
  `latitude` float(10,6) NOT NULL DEFAULT '255.000000',
  `longitude` float(10,6) NOT NULL DEFAULT '255.000000',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `creator` (`creator`),
  KEY `idx_groupid` (`groupid`),
  KEY `idx_storage` (`storage`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_videos: 0 rows
DELETE FROM `gy3te_community_videos`;
/*!40000 ALTER TABLE `gy3te_community_videos` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_community_videos` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_videos_category
CREATE TABLE IF NOT EXISTS `gy3te_community_videos_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `published` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_videos_category: 1 rows
DELETE FROM `gy3te_community_videos_category`;
/*!40000 ALTER TABLE `gy3te_community_videos_category` DISABLE KEYS */;
INSERT INTO `gy3te_community_videos_category` (`id`, `parent`, `name`, `description`, `published`) VALUES
	(1, 0, 'General', 'General video channel', 1);
/*!40000 ALTER TABLE `gy3te_community_videos_category` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_videos_tag
CREATE TABLE IF NOT EXISTS `gy3te_community_videos_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `videoid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `position` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_videos_tag: 0 rows
DELETE FROM `gy3te_community_videos_tag`;
/*!40000 ALTER TABLE `gy3te_community_videos_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_community_videos_tag` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_video_stats
CREATE TABLE IF NOT EXISTS `gy3te_community_video_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `date` date NOT NULL,
  `params` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_video_stats: 0 rows
DELETE FROM `gy3te_community_video_stats`;
/*!40000 ALTER TABLE `gy3te_community_video_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_community_video_stats` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_community_wall
CREATE TABLE IF NOT EXISTS `gy3te_community_wall` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `contentid` int(10) unsigned NOT NULL DEFAULT '0',
  `post_by` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(45) NOT NULL,
  `comment` text NOT NULL,
  `date` varchar(45) NOT NULL,
  `published` tinyint(1) unsigned NOT NULL,
  `type` varchar(200) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `contentid` (`contentid`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_community_wall: 0 rows
DELETE FROM `gy3te_community_wall`;
/*!40000 ALTER TABLE `gy3te_community_wall` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_community_wall` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_contact_details
CREATE TABLE IF NOT EXISTS `gy3te_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if contact is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogsinfo.gy3te_contact_details: ~0 rows (приблизительно)
DELETE FROM `gy3te_contact_details`;
/*!40000 ALTER TABLE `gy3te_contact_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_contact_details` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_content
CREATE TABLE IF NOT EXISTS `gy3te_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`),
  KEY `idx_alias` (`alias`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogsinfo.gy3te_content: ~0 rows (приблизительно)
DELETE FROM `gy3te_content`;
/*!40000 ALTER TABLE `gy3te_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_content` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_contentitem_tag_map
CREATE TABLE IF NOT EXISTS `gy3te_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

-- Дамп данных таблицы prodogsinfo.gy3te_contentitem_tag_map: ~0 rows (приблизительно)
DELETE FROM `gy3te_contentitem_tag_map`;
/*!40000 ALTER TABLE `gy3te_contentitem_tag_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_contentitem_tag_map` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_content_frontpage
CREATE TABLE IF NOT EXISTS `gy3te_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogsinfo.gy3te_content_frontpage: ~0 rows (приблизительно)
DELETE FROM `gy3te_content_frontpage`;
/*!40000 ALTER TABLE `gy3te_content_frontpage` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_content_frontpage` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_content_rating
CREATE TABLE IF NOT EXISTS `gy3te_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogsinfo.gy3te_content_rating: ~0 rows (приблизительно)
DELETE FROM `gy3te_content_rating`;
/*!40000 ALTER TABLE `gy3te_content_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_content_rating` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_content_types
CREATE TABLE IF NOT EXISTS `gy3te_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`(100))
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogsinfo.gy3te_content_types: ~13 rows (приблизительно)
DELETE FROM `gy3te_content_types`;
/*!40000 ALTER TABLE `gy3te_content_types` DISABLE KEYS */;
INSERT INTO `gy3te_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
	(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
	(2, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
	(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
	(4, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', ''),
	(5, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
	(6, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
	(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
	(8, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
	(9, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
	(10, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
	(11, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
	(12, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
	(13, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');
/*!40000 ALTER TABLE `gy3te_content_types` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_core_log_searches
CREATE TABLE IF NOT EXISTS `gy3te_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogsinfo.gy3te_core_log_searches: ~0 rows (приблизительно)
DELETE FROM `gy3te_core_log_searches`;
/*!40000 ALTER TABLE `gy3te_core_log_searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_core_log_searches` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_extensions
CREATE TABLE IF NOT EXISTS `gy3te_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `package_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogsinfo.gy3te_extensions: ~310 rows (приблизительно)
DELETE FROM `gy3te_extensions`;
/*!40000 ALTER TABLE `gy3te_extensions` DISABLE KEYS */;
INSERT INTO `gy3te_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
	(1, 0, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":"","filename":"mailto"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(2, 0, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":"","filename":"wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(3, 0, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(4, 0, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":"","filename":"banners"}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(5, 0, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(6, 0, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(7, 0, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(8, 0, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '{"contact_layout":"_:default","show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"sliders","show_tags":"1","show_info":"1","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_image":"1","show_misc":"1","image":"","allow_vcard":"0","show_articles":"0","articles_display_num":"10","show_profile":"0","show_user_custom_fields":["-1"],"show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"0","maxLevel":"-1","show_subcat_desc":"1","show_empty_categories":"0","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_subcat_desc_cat":"1","show_empty_categories_cat":"0","show_cat_items_cat":"1","filter_field":"0","show_pagination_limit":"0","show_headings":"1","show_image_heading":"0","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_pagination":"2","show_pagination_results":"1","initial_sort":"ordering","captcha":"","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_feed_link":"1","sef_advanced":0,"sef_ids":0,"custom_fields_enable":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(9, 0, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10, 0, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '{"show_jed_info":"1","cachetimeout":"6","minimum_stability":"4"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(11, 0, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"ru-RU","site":"ru-RU"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(12, 0, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(13, 0, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(14, 0, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '{"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(15, 0, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(16, 0, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(17, 0, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(18, 0, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(19, 0, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":"","filename":"search"}', '{"enabled":"0","search_phrases":"1","search_areas":"1","show_date":"1","opensearch_name":"","opensearch_description":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(20, 0, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"0","upload_limit":"10","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css,scss,sass","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(22, 0, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"1","show_noauth":"0","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(23, 0, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"11":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"10":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(24, 0, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(25, 0, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":"","filename":"users"}', '{"allowUserRegistration":"1","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"1","mail_to_admin":"1","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":"","debugUsers":"1","debugGroups":"1","sef_advanced":0,"custom_fields_enable":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(27, 0, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(28, 0, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.2","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{"updatesource":"default","customurl":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(29, 0, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(30, 0, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":"","filename":"contenthistory"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(31, 0, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 1, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":"","filename":"ajax"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(32, 0, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(33, 0, 'com_fields', 'component', 'com_fields', '', 1, 1, 1, 0, '{"name":"com_fields","type":"component","creationDate":"March 2016","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"COM_FIELDS_XML_DESCRIPTION","group":"","filename":"fields"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(34, 0, 'com_associations', 'component', 'com_associations', '', 1, 1, 1, 0, '{"name":"com_associations","type":"component","creationDate":"Januar 2017","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"COM_ASSOCIATIONS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(102, 0, 'LIB_PHPUTF8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"LIB_PHPUTF8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":"","filename":"phputf8"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(103, 0, 'LIB_JOOMLA', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"LIB_JOOMLA","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"https:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"mediaversion":"ff7d51e467f2f53aae0ae2e51914dab2"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(104, 0, 'LIB_IDNA', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"LIB_IDNA","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":"","filename":"idna_convert"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(105, 0, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2015-04-22 13:15:32","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2015 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.4.3","description":"LIB_FOF_XML_DESCRIPTION","group":"","filename":"fof"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(106, 0, 'LIB_PHPASS', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"LIB_PHPASS","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":"","filename":"phpass"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(200, 0, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":"","filename":"mod_articles_archive"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(201, 0, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(202, 0, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_articles_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(203, 0, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":"","filename":"mod_banners"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(204, 0, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":"","filename":"mod_breadcrumbs"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(205, 0, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(206, 0, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(207, 0, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":"","filename":"mod_footer"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(208, 0, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(209, 0, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(210, 0, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_news"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(211, 0, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":"","filename":"mod_random_image"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(212, 0, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":"","filename":"mod_related_items"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(213, 0, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":"","filename":"mod_search"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(214, 0, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(215, 0, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":"","filename":"mod_syndicate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(216, 0, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":"","filename":"mod_users_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(218, 0, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":"","filename":"mod_whosonline"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(219, 0, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":"","filename":"mod_wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(220, 0, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":"","filename":"mod_articles_category"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(221, 0, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":"","filename":"mod_articles_categories"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(222, 0, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":"","filename":"mod_languages"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(223, 0, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":"","filename":"mod_finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(300, 0, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(301, 0, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(302, 0, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":"","filename":"mod_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(303, 0, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":"","filename":"mod_logged"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(304, 0, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(305, 0, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(307, 0, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(308, 0, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":"","filename":"mod_quickicon"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(309, 0, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":"","filename":"mod_status"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(310, 0, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":"","filename":"mod_submenu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(311, 0, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":"","filename":"mod_title"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(312, 0, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":"","filename":"mod_toolbar"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(313, 0, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":"","filename":"mod_multilangstatus"}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(314, 0, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":"","filename":"mod_version"}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(315, 0, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats_admin"}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(316, 0, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_tags_popular"}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(317, 0, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":"","filename":"mod_tags_similar"}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(318, 0, 'mod_sampledata', 'module', 'mod_sampledata', '', 1, 0, 1, 0, '{"name":"mod_sampledata","type":"module","creationDate":"July 2017","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.8.0","description":"MOD_SAMPLEDATA_XML_DESCRIPTION","group":"","filename":"mod_sampledata"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(400, 0, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":"","filename":"gmail"}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
	(401, 0, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(402, 0, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":"","filename":"ldap"}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
	(403, 0, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
	(404, 0, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":"","filename":"emailcloak"}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
	(406, 0, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":"","filename":"loadmodule"}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
	(407, 0, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
	(408, 0, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":"","filename":"pagenavigation"}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
	(409, 0, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":"","filename":"vote"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
	(410, 0, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"Copyright (C) 2014 - 2017 by Marijn Haverbeke <marijnh@gmail.com> and others","authorEmail":"marijnh@gmail.com","authorUrl":"http:\\/\\/codemirror.net\\/","version":"5.35.0","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":"","filename":"codemirror"}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
	(411, 0, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"September 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":"","filename":"none"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
	(412, 0, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2017","author":"Ephox Corporation","copyright":"Ephox Corporation","authorEmail":"N\\/A","authorUrl":"http:\\/\\/www.tinymce.com","version":"4.5.8","description":"PLG_TINY_XML_DESCRIPTION","group":"","filename":"tinymce"}', '{"configuration":{"toolbars":{"2":{"toolbar1":["bold","underline","strikethrough","|","undo","redo","|","bullist","numlist","|","pastetext"]},"1":{"menu":["edit","insert","view","format","table","tools"],"toolbar1":["bold","italic","underline","strikethrough","|","alignleft","aligncenter","alignright","alignjustify","|","formatselect","|","bullist","numlist","|","outdent","indent","|","undo","redo","|","link","unlink","anchor","code","|","hr","table","|","subscript","superscript","|","charmap","pastetext","preview"]},"0":{"menu":["edit","insert","view","format","table","tools"],"toolbar1":["bold","italic","underline","strikethrough","|","alignleft","aligncenter","alignright","alignjustify","|","styleselect","|","formatselect","fontselect","fontsizeselect","|","searchreplace","|","bullist","numlist","|","outdent","indent","|","undo","redo","|","link","unlink","anchor","image","|","code","|","forecolor","backcolor","|","fullscreen","|","table","|","subscript","superscript","|","charmap","emoticons","media","hr","ltr","rtl","|","cut","copy","paste","pastetext","|","visualchars","visualblocks","nonbreaking","blockquote","template","|","print","preview","codesample","insertdatetime","removeformat"]}},"setoptions":{"2":{"access":["1"],"skin":"0","skin_admin":"0","mobile":"0","drag_drop":"1","path":"","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","use_config_textfilters":"0","invalid_elements":"script,applet,iframe","valid_elements":"","extended_elements":"","resizing":"1","resize_horizontal":"1","element_path":"1","wordcount":"1","image_advtab":"0","advlist":"1","autosave":"1","contextmenu":"1","custom_plugin":"","custom_button":""},"1":{"access":["6","2"],"skin":"0","skin_admin":"0","mobile":"0","drag_drop":"1","path":"","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","use_config_textfilters":"0","invalid_elements":"script,applet,iframe","valid_elements":"","extended_elements":"","resizing":"1","resize_horizontal":"1","element_path":"1","wordcount":"1","image_advtab":"0","advlist":"1","autosave":"1","contextmenu":"1","custom_plugin":"","custom_button":""},"0":{"access":["7","4","8"],"skin":"0","skin_admin":"0","mobile":"0","drag_drop":"1","path":"","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","use_config_textfilters":"0","invalid_elements":"script,applet,iframe","valid_elements":"","extended_elements":"","resizing":"1","resize_horizontal":"1","element_path":"1","wordcount":"1","image_advtab":"1","advlist":"1","autosave":"1","contextmenu":"1","custom_plugin":"","custom_button":""}}},"sets_amount":3,"html_height":"550","html_width":"750"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
	(413, 0, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":"","filename":"article"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
	(414, 0, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":"","filename":"image"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
	(415, 0, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
	(416, 0, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":"","filename":"readmore"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
	(417, 0, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(418, 0, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(419, 0, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(420, 0, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(422, 0, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":"","filename":"languagefilter"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
	(423, 0, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":"","filename":"p3p"}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
	(424, 0, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":"","filename":"cache"}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
	(425, 0, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":"","filename":"debug"}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
	(426, 0, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":"","filename":"log"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
	(427, 0, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION","group":"","filename":"redirect"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
	(428, 0, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":"","filename":"remember"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
	(429, 0, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":"","filename":"sef"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
	(430, 0, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":"","filename":"logout"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
	(431, 0, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":"","filename":"contactcreator"}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
	(432, 0, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"autoregister":"1","mail_to_user":"1","forceLogout":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
	(433, 0, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":"","filename":"profile"}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(434, 0, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
	(435, 0, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(436, 0, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":"","filename":"languagecode"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
	(437, 0, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":"","filename":"joomlaupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(438, 0, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":"","filename":"extensionupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(439, 0, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 1, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":"","filename":"recaptcha"}', '{"version":"2.0","public_key":"6Ld4kx8UAAAAAFYJHnVBz7T3qehwdrlE5mAbtwMe","private_key":"6Ld4kx8UAAAAAFWwC6TgQhdM4bKsLqtkIZyl6nj7","theme":"clean","theme2":"light","size":"normal"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(440, 0, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":"","filename":"highlight"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
	(441, 0, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(442, 0, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
	(443, 0, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
	(444, 0, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
	(445, 0, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
	(447, 0, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(448, 0, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":"","filename":"totp"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(449, 0, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":"","filename":"cookie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(450, 0, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":"","filename":"yubikey"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(451, 0, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(452, 0, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 1, 1, 0, '{"name":"plg_system_updatenotification","type":"plugin","creationDate":"May 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION","group":"","filename":"updatenotification"}', '{"lastrun":1526456066}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(453, 0, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_module","type":"plugin","creationDate":"October 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_MODULE_XML_DESCRIPTION","group":"","filename":"module"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(454, 0, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 1, 1, 0, '{"name":"plg_system_stats","type":"plugin","creationDate":"November 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_STATS_XML_DESCRIPTION","group":"","filename":"stats"}', '{"mode":1,"lastrun":1526456103,"unique_id":"d49d1fafe1ba3728fc9ed35b2a9658585f1af263","interval":12}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(455, 0, 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', 'installer', 0, 1, 1, 1, '{"name":"plg_installer_packageinstaller","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"packageinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
	(456, 0, 'PLG_INSTALLER_FOLDERINSTALLER', 'plugin', 'folderinstaller', 'installer', 0, 1, 1, 1, '{"name":"PLG_INSTALLER_FOLDERINSTALLER","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"folderinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
	(457, 0, 'PLG_INSTALLER_URLINSTALLER', 'plugin', 'urlinstaller', 'installer', 0, 1, 1, 1, '{"name":"PLG_INSTALLER_URLINSTALLER","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"urlinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
	(458, 0, 'plg_quickicon_phpversioncheck', 'plugin', 'phpversioncheck', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_phpversioncheck","type":"plugin","creationDate":"August 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION","group":"","filename":"phpversioncheck"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(459, 0, 'plg_editors-xtd_menu', 'plugin', 'menu', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_menu","type":"plugin","creationDate":"August 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION","group":"","filename":"menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(460, 0, 'plg_editors-xtd_contact', 'plugin', 'contact', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_contact","type":"plugin","creationDate":"October 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(461, 0, 'plg_system_fields', 'plugin', 'fields', 'system', 0, 1, 1, 0, '{"name":"plg_system_fields","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_SYSTEM_FIELDS_XML_DESCRIPTION","group":"","filename":"fields"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(462, 0, 'plg_fields_calendar', 'plugin', 'calendar', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_calendar","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_CALENDAR_XML_DESCRIPTION","group":"","filename":"calendar"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(463, 0, 'plg_fields_checkboxes', 'plugin', 'checkboxes', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_checkboxes","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION","group":"","filename":"checkboxes"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(464, 0, 'plg_fields_color', 'plugin', 'color', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_color","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_COLOR_XML_DESCRIPTION","group":"","filename":"color"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(465, 0, 'plg_fields_editor', 'plugin', 'editor', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_editor","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_EDITOR_XML_DESCRIPTION","group":"","filename":"editor"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(466, 0, 'plg_fields_imagelist', 'plugin', 'imagelist', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_imagelist","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION","group":"","filename":"imagelist"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(467, 0, 'plg_fields_integer', 'plugin', 'integer', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_integer","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_INTEGER_XML_DESCRIPTION","group":"","filename":"integer"}', '{"multiple":"0","first":"1","last":"100","step":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(468, 0, 'plg_fields_list', 'plugin', 'list', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_list","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_LIST_XML_DESCRIPTION","group":"","filename":"list"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(469, 0, 'plg_fields_media', 'plugin', 'media', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_media","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(470, 0, 'plg_fields_radio', 'plugin', 'radio', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_radio","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_RADIO_XML_DESCRIPTION","group":"","filename":"radio"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(471, 0, 'plg_fields_sql', 'plugin', 'sql', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_sql","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_SQL_XML_DESCRIPTION","group":"","filename":"sql"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(472, 0, 'plg_fields_text', 'plugin', 'text', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_text","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_TEXT_XML_DESCRIPTION","group":"","filename":"text"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(473, 0, 'plg_fields_textarea', 'plugin', 'textarea', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_textarea","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION","group":"","filename":"textarea"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(474, 0, 'plg_fields_url', 'plugin', 'url', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_url","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_URL_XML_DESCRIPTION","group":"","filename":"url"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(475, 0, 'plg_fields_user', 'plugin', 'user', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_user","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_USER_XML_DESCRIPTION","group":"","filename":"user"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(476, 0, 'plg_fields_usergrouplist', 'plugin', 'usergrouplist', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_usergrouplist","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION","group":"","filename":"usergrouplist"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(477, 0, 'plg_content_fields', 'plugin', 'fields', 'content', 0, 1, 1, 0, '{"name":"plg_content_fields","type":"plugin","creationDate":"February 2017","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_CONTENT_FIELDS_XML_DESCRIPTION","group":"","filename":"fields"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(478, 0, 'plg_editors-xtd_fields', 'plugin', 'fields', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_fields","type":"plugin","creationDate":"February 2017","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION","group":"","filename":"fields"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(479, 0, 'plg_sampledata_blog', 'plugin', 'blog', 'sampledata', 0, 0, 1, 0, '{"name":"plg_sampledata_blog","type":"plugin","creationDate":"July 2017","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.8.0","description":"PLG_SAMPLEDATA_BLOG_XML_DESCRIPTION","group":"","filename":"blog"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(480, 0, 'plg_system_sessiongc', 'plugin', 'sessiongc', 'system', 0, 1, 1, 0, '{"name":"plg_system_sessiongc","type":"plugin","creationDate":"February 2018","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.8.6","description":"PLG_SYSTEM_SESSIONGC_XML_DESCRIPTION","group":"","filename":"sessiongc"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(503, 0, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(504, 0, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(506, 0, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(507, 0, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(600, 802, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"April 2018","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.8.7","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(601, 802, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"April 2018","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.8.7","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(700, 0, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"April 2018","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.8.7","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(802, 0, 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB) Language Pack","type":"package","creationDate":"April 2018","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.8.7.1","description":"en-GB language pack","group":"","filename":"pkg_en-GB"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10000, 10002, 'CobaltRussianFrontend', 'language', 'ru-RU', '', 0, 1, 0, 0, '{"name":"Cobalt Russian [Frontend]","type":"language","creationDate":"2012-07-08","author":"MintJoomla","copyright":"Copyright (C) 2005 - 2012 MintJoomla.","authorEmail":"info@mintjoomla.com","authorUrl":"www.mintjoomla.com","version":"8.341","description":"Russian Language for Cobalt 8 by AsmuZ","group":"","filename":"install"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10001, 10002, 'CobaltRussianBackend', 'language', 'ru-RU', '', 1, 1, 0, 0, '{"name":"Cobalt Russian [Backend]","type":"language","creationDate":"2012-07-08","author":"MintJoomla","copyright":"Copyright (C) 2005 - 2012 MintJoomla.","authorEmail":"info@mintjoomla.com","authorUrl":"www.mintjoomla.com","version":"8.341","description":"Russian Language for Cobalt 8 by AsmuZ","group":"","filename":"install"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10002, 0, 'Cobalt Russian Language', 'package', 'pkg_ru-RU', '', 0, 1, 1, 0, '{"name":"Cobalt Russian Language","type":"package","creationDate":"\\u041d\\u0435\\u0438\\u0437\\u0432\\u0435\\u0441\\u0442\\u043d\\u044b\\u0439","author":"\\u041d\\u0435\\u0438\\u0437\\u0432\\u0435\\u0441\\u0442\\u043d\\u044b\\u0439","copyright":"","authorEmail":"","authorUrl":"","version":"8.341","description":"Russian Language for Cobalt 8 by AsmuZ","group":"","filename":"pkg_ru-RU"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10003, 10075, 'Cobalt - Field - Uploads', 'file', 'uploads', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Uploads","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.28","description":"Cobalt - Field - Uploads: This is advanced uploads field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10004, 10075, 'com_cobalt', 'component', 'com_cobalt', '', 1, 1, 0, 0, '{"name":"com_cobalt","type":"component","creationDate":"November 2011","author":"MintJoomla","copyright":" (c) 2005-2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.740","description":"","group":"","filename":"cobalt"}', '{"general_upload":"uploads","folder_format":"Y-m","community":"G:\\\\OpenServer\\\\domains\\\\prodogs.info\\\\components\\\\com_cobalt\\\\library\\\\php\\\\community\\/com_community","moderator":"48","captcha":"recaptcha","general_copyright":"0","compatibility":"0","general_help":"1","gravatar":"1","cron_key":"","map_key":" AIzaSyAjjtBLrwGaA65Z4IaeT0u8gj_syhS9M1Q","sef_router":"main_router.php","sef_category":"0","filter_nofollow":"1","separator":"_","robots":"","author":"","rights":"","metakey":"","metadesc":"","censor":"1","censor_words":"fuck, porn, porno, bitch","censor_replace":"CENSORED"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10005, 10075, 'Cobalt - Package - Library', 'library', 'mint', '', 0, 1, 1, 0, '{"name":"Cobalt - Package - Library","type":"library","creationDate":"November 2012","author":"MintJoomla","copyright":"Copyright (C) 2012","authorEmail":"support@mintjoomla.com","authorUrl":"www.mintjoomla.com","version":"8.111","description":"\\n    \\n\\tThis is MintJoomla - Cobal t8 Library Pack\\n\\t\\n\\t","group":"","filename":"mint"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10006, 10075, 'Cobalt - Module - Categories', 'module', 'mod_cobalt_category', '', 0, 1, 0, 0, '{"name":"Cobalt - Module - Categories","type":"module","creationDate":"March 2012","author":"MintJoomla","copyright":"Copyright (C) 2005 - 2012 MintJoomla (http:\\/\\/www.mintjoomla.com). All rights reserved.","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.45","description":" Cobalt Categories Module ","group":"","filename":"mod_cobalt_category"}', '{"section_id":"","init_cat":"","show_section":"2","cat_empty":"1","cat_nums":"current","mode":"2","order":"1","subcat_limit":"5","section_class":"","header_text":"","footer_text":"","class_sfx":"","moduleclass_sfx":"","records":"0","records_limit":"5","orderby":"r.ctime DESC","levels":"Category","select_width":"150"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10007, 10075, 'Cobalt - Module - Filters', 'module', 'mod_cobalt_filters', '', 0, 1, 0, 0, '{"name":"Cobalt - Module - Filters","type":"module","creationDate":"March 2012","author":"MintJoomla","copyright":"Copyright (C) 2005 - 2012 MintJoomla (http:\\/\\/www.mintjoomla.com). All rights reserved.","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.51","description":" Cobalt - Filters ","group":"","filename":"mod_cobalt_filters"}', '{"section_id":"","show_icons":"1","form_hide":"1","field_id_exclude":"","filter_fields_template":"module","filter_search":"1","filter_type_type":"1","filter_users_type":"1","filter_category_type":"1","filter_empty_cats":"1","filter_tags_type":"1","type_label":"Content Type","user_label":"Author","category_label":"Category","tag_label":"Tags","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10008, 10075, 'Cobalt - Module - Who Follows User', 'module', 'mod_cobalt_followers', '', 0, 1, 0, 0, '{"name":"Cobalt - Module - Who Follows User","type":"module","creationDate":"June 2012","author":"MintJoomla","copyright":"Copyright (C) 2005 - 2012 MintJoomla (http:\\/\\/www.mintjoomla.com). All rights reserved.","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.25","description":" Cobalt followers or current user ","group":"","filename":"mod_cobalt_followers"}', '{"ava_style":"img-polaroid","ava_size":"32","limit":"10","moduleclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10009, 10075, 'Cobalt - Module - Whom User Follows', 'module', 'mod_cobalt_ifollow', '', 0, 1, 0, 0, '{"name":"Cobalt - Module - Whom User Follows","type":"module","creationDate":"June 2012","author":"MintJoomla","copyright":"Copyright (C) 2005 - 2012 MintJoomla (http:\\/\\/www.mintjoomla.com). All rights reserved.","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.25","description":" Users that current user is following.  ","group":"","filename":"mod_cobalt_ifollow"}', '{"ava_style":"img-polaroid","ava_size":"32","limit":"10","moduleclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10010, 10075, 'Cobalt - Module - Notifications', 'module', 'mod_cobalt_notifications', '', 0, 1, 0, 0, '{"name":"Cobalt - Module - Notifications","type":"module","creationDate":"March 2012","author":"MintJoomla","copyright":"Copyright (C) 2005 - 2012 MintJoomla (http:\\/\\/www.mintjoomla.com). All rights reserved.","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.29","description":" Cobalt - Notifications ","group":"","filename":"mod_cobalt_notifications"}', '{"section_id":"","moduleclass_sfx":"","height":"200","time":"3","limit":"5","noti_width":"320","noti_position":"bottom-left","noti_style":"bangTidy","ntmoo_parent":"","ntmoo_width":"300","ntmoo_height":"50","ntmoo_time":"5000","ntmoo_updtime":"60","ntmoo_sticky":"true","ntmoo_locationv":"top","ntmoo_locationh":"right","ntmoo_positionv":"10","ntmoo_positionh":"10","ntmoo_margin":"5","ntmoo_opacity_time":"750","ntmoo_close_time":"750","ntmoo_scroll_time":"250","ntmoo_opacity":"0.95","ntmoo_class":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10011, 10075, 'Cobalt - Module - Article Participants', 'module', 'mod_cobalt_participants', '', 0, 1, 0, 0, '{"name":"Cobalt - Module - Article Participants","type":"module","creationDate":"June 2012","author":"MintJoomla","copyright":"Copyright (C) 2005 - 2012 MintJoomla (http:\\/\\/www.mintjoomla.com). All rights reserved.","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.18","description":" Cobalt Article Prticipants ","group":"","filename":"mod_cobalt_participants"}', '{"ava_style":"img-polaroid","ava_size":"32","limit":"10","moduleclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10012, 10075, 'Cobalt - Module - Records', 'module', 'mod_cobalt_records', '', 0, 1, 0, 0, '{"name":"Cobalt - Module - Records","type":"module","creationDate":"March 2012","author":"MintJoomla","copyright":"Copyright (C) 2005 - 2012 MintJoomla (http:\\/\\/www.mintjoomla.com). All rights reserved.","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.67","description":" Cobalt Records ","group":"","filename":"mod_cobalt_records"}', '{"section_id":"","types":"","orderby":"r.ctime DESC","view_what":"","rsection_id":"","fvco":"0","ndays":"5","cat_restrict":"0","user_restrict":"0","tmpl":"","limit":"5","lang_mode":"0","force_itemid":"0","cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10013, 10075, 'Cobalt - Module - Section Statictics', 'module', 'mod_cobalt_sectionstatistics', '', 0, 1, 0, 0, '{"name":"Cobalt - Module - Section Statictics","type":"module","creationDate":"June 2012","author":"MintJoomla","copyright":"Copyright (C) 2005 - 2012 MintJoomla (http:\\/\\/www.mintjoomla.com). All rights reserved.","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.28","description":" Cobalt Section Statictics ","group":"","filename":"mod_cobalt_sectionstatistics"}', '{"section_id":"","current_section":"0","records_num":"1","comments_num":"1","authors_num":"1","members_num":"1","views_num":"1","use_anonim":"1","moduleclass_sfx":"","records_num_label":"Articles","comments_num_label":"Comments","authors_num_label":"Authors","members_num_label":"Members","views_num_label":"Views"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10014, 10075, 'Cobalt - Module - Submit Button', 'module', 'mod_cobalt_submitbutton', '', 0, 1, 0, 0, '{"name":"Cobalt - Module - Submit Button","type":"module","creationDate":"June 2012","author":"MintJoomla","copyright":"Copyright (C) 2005 - 2012 MintJoomla (http:\\/\\/www.mintjoomla.com). All rights reserved.","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.37","description":" Cobalt Submit new article button ","group":"","filename":"mod_cobalt_submitbutton"}', '{"section_id":"","types":"","display":"0","category":"0","follow":"0","label":"Add New %s","moduleclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10015, 10075, 'Cobalt - Module - Tag Cloud', 'module', 'mod_cobalt_tagcloud', '', 0, 1, 0, 0, '{"name":"Cobalt - Module - Tag Cloud","type":"module","creationDate":"March 2012","author":"MintJoomla","copyright":"Copyright (C) 2005 - 2012 MintJoomla (http:\\/\\/www.mintjoomla.com). All rights reserved.","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.40","description":" Cobalt Tag Cloud ","group":"","filename":"mod_cobalt_tagcloud"}', '{"section_id":"","cat_ids":"","depends_on_cat":"0","depends_on_user":"0","tmpl":"default.php","ordering":"RAND()","show_section_name":"0","item_tag_num":"0","html_tags":"H1, H2, H3, H4, H5, H6, strong, b, em, big, small","limit":"50","moduleclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10016, 10075, 'Cobalt - Module - User Statictics', 'module', 'mod_cobalt_userstatistics', '', 0, 1, 0, 0, '{"name":"Cobalt - Module - User Statictics","type":"module","creationDate":"June 2012","author":"MintJoomla","copyright":"Copyright (C) 2005 - 2012 MintJoomla (http:\\/\\/www.mintjoomla.com). All rights reserved.","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.19","description":" Cobalt User Statictics ","group":"","filename":"mod_cobalt_userstatistics"}', '{"section_id":"","current_section":"0","created":"1","comments_left":"1","commented":"1","readers":"1","use_anonim":"1","visited":"1","rating_average":"1","whofollow":"1","followed":"1","whofavorited":"1","favorited":"1","moduleclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10017, 10075, 'Cobalt - Plugin - Formatter - CSV', 'plugin', 'formatter_csv', 'mint', 0, 0, 1, 0, '{"name":"Cobalt - Plugin - Formatter - CSV","type":"plugin","creationDate":"October 15 2012","author":"MintJoomla","copyright":"MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.10","description":"\\n\\t CSV formatter plugin for Cobalt 8 \\n\\t","group":"","filename":"formatter_csv"}', '{"strip_html":"0","enclosed":"\\"","delimiter":",","field_format":"0","field_glue":", ","tmpl_list":"csv.php","tmpl_full":"csv.php"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10018, 10075, 'Cobalt - Plugin - Formatter - INI', 'plugin', 'formatter_ini', 'mint', 0, 0, 1, 0, '{"name":"Cobalt - Plugin - Formatter - INI","type":"plugin","creationDate":"October 15 2012","author":"MintJoomla","copyright":"MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.21","description":"\\n\\t INI formatter plugin for Cobalt 8 \\n\\t","group":"","filename":"formatter_ini"}', '{"tmpl_list":"xml.php","tmpl_full":"xml.php"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10019, 10075, 'Cobalt - Plugin - Formatter - Joomla Update Service', 'plugin', 'formatter_joomlaupdate', 'mint', 0, 0, 1, 0, '{"name":"Cobalt - Plugin - Formatter - Joomla Update Service","type":"plugin","creationDate":"October 15 2012","author":"MintJoomla","copyright":"MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.21","description":"\\n\\t XML formatter plugin for Cobalt 8 \\n\\t","group":"","filename":"formatter_joomlaupdate"}', '{"type_id":"","field_type":"","field_element":"","field_folder":"","field_client":"","field_version":"","field_tag":"","field_down":"","field_descr":"","server_name":"My Ste Extensions Updates","maintainer":"Your name","maintainerurl":"http:\\/\\/yoursite.com","targetplatform":"3.0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10020, 10075, 'Cobalt - Plugin - Formatter - JSON', 'plugin', 'formatter_json', 'mint', 0, 0, 1, 0, '{"name":"Cobalt - Plugin - Formatter - JSON","type":"plugin","creationDate":"October 15 2012","author":"MintJoomla","copyright":"MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.22","description":"\\n\\t Json formatter plugin for Cobalt 8 \\n\\t","group":"","filename":"formatter_json"}', '{"tmpl_list":"json.php","tmpl_full":"json.php"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10021, 10075, 'Cobalt - Plugin - Formatter - XML', 'plugin', 'formatter_xml', 'mint', 0, 1, 1, 0, '{"name":"Cobalt - Plugin - Formatter - XML","type":"plugin","creationDate":"October 15 2012","author":"MintJoomla","copyright":"MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.24","description":"\\n\\t XML formatter plugin for Cobalt 8 \\n\\t","group":"","filename":"formatter_xml"}', '{"tmpl_list":"xml.php","tmpl_full":"xml.php"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10022, 10075, 'Content - Plugin - Review/Discuss with Cobalt 8', 'plugin', 'cobalt', 'content', 0, 0, 1, 0, '{"name":"Content - Plugin - Review\\/Discuss with Cobalt 8","type":"plugin","creationDate":"October 2012","author":"MintJoomla","copyright":"Copyright (C) 2005 - 2012 MintJoomla. All rights reserved.","authorEmail":"support@mintjoomla.org","authorUrl":"www.mintjoomla.org","version":"8.15","description":"\\n        Inserts discussions\\/reviews into core Joomla articles. Use <code>{cobalt-discussion}<\\/code>\\n        in the text of the article or list categories in <code>In Categories<\\/code> parameter as IDs separated by coma. Eg: <code>3,12,4<\\/code>.\\n\\t\\n        ","group":"","filename":"cobalt"}', '{"section_id":"","orderby":"r.ctime DESC","tmpl":"default","limit":"10","rating":"1","rating_tmpl":"default","defcat":"","joomcat":"","descr":"","title":"Discussions","title_all":"All discussions of %s","button":"Start a Discussion","button_all":"All Discussions"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10023, 10075, 'Content - Glossary', 'plugin', 'glossary', 'content', 0, 0, 1, 0, '{"name":"Content - Glossary","type":"plugin","creationDate":"27 July 2011","author":"Mighty Extensions","copyright":"Copyright Mighty Extensions","authorEmail":"support@mightyextensions.com","authorUrl":"http:\\/\\/www.mightyextensions.com","version":"8.15","description":"This plugin allow you to turn Mighty resources section\\n\\t\\tinto glossary. In Mighty resources you create section and add articles\\n\\t\\tthere, that will be glossary list. Then in this plugin you select that\\n\\t\\tsection\\tand all words will be highlighted, linked and tooltiped. Good \\n\\t\\tis you can have public glossary list on the site, and even allow other \\n\\t\\tusers to submit new glossary elements. Note: You need turn on \\n\\t\\tglossary plugin in HTML field. Glossary works only in HTML field.\\n\\t","group":"","filename":"glossary"}', '{"link":"0","css":"cursor:pointer; background-color:yellow; text-decoration:underline;"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10024, 10075, 'Smart Search - Cobalt', 'plugin', 'cobalt', 'finder', 0, 1, 1, 0, '{"name":"Smart Search - Cobalt","type":"plugin","creationDate":"Jan 2012","author":"MightyExtensions","copyright":"Copyright (C) 2010 MightyExtensions - All rights reserved.","authorEmail":"info@mightyextensions.com","authorUrl":"http:\\/\\/www.mightyextensions.com","version":"8.13","description":"Cobalt smart search plugin.","group":"","filename":"cobalt"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10025, 10075, 'Cobalt - Plugin - Tools', 'plugin', 'toolset', 'mint', 0, 1, 1, 0, '{"name":"Cobalt - Plugin - Tools","type":"plugin","creationDate":"February 17 2009","author":"MintJoomla","copyright":"MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.50","description":"\\n\\t Tools plugin for Cobalt 7 \\n\\t","group":"","filename":"toolset"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10026, 10075, 'Search - Cobalt', 'plugin', 'cobalt', 'search', 0, 0, 1, 0, '{"name":"Search - Cobalt","type":"plugin","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.14","description":"Search Plugin for Cobalt","group":"","filename":"cobalt"}', '{"search_limit":"50","show_restricted":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10027, 10075, 'System - Cobalt', 'plugin', 'cobalt', 'system', 0, 0, 1, 0, '{"name":"System - Cobalt","type":"plugin","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.5","description":"Cobalt system plugin","group":"","filename":"cobalt"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10028, 10075, 'Cobalt - Comments - Cackle', 'file', 'cackle', '', 0, 1, 0, 0, '{"name":"Cobalt - Comments - Cackle","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.15","description":"Cobalt - Comments - Cackle","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10029, 10075, 'Cobalt - Comments - Compojoom Joomla extension', 'file', 'ccomment', '', 0, 1, 0, 0, '{"name":"Cobalt - Comments - Compojoom Joomla extension","type":"file","creationDate":"October 2013","author":"compojoom.com","copyright":"\\u00a9 2013 Compojoom","authorEmail":"daniel@compojoom.com","authorUrl":"https:\\/\\/compojoom.com","version":"8.1","description":"Content type to integrate with the CComment extension from compojoom","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10030, 10075, 'Cobalt - Comments - Cobalt Content Type', 'file', 'cobalt', '', 0, 1, 0, 0, '{"name":"Cobalt - Comments - Cobalt Content Type","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.43","description":"Cobalt - Comments - Cobalt Content Type","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10031, 10075, 'Cobalt - Comments - Core', 'file', 'core', '', 0, 1, 0, 0, '{"name":"Cobalt - Comments - Core","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.14","description":"Cobalt - Comments - Core is a build-in comment system","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10032, 10075, 'Cobalt - Comments - Custom', 'file', 'custom', '', 0, 1, 0, 0, '{"name":"Cobalt - Comments - Custom","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.8","description":"Cobalt - Comments - Custom to integrate ant JS based comment system","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10033, 10075, 'Cobalt - Comments - DISQUS', 'file', 'disqus', '', 0, 1, 0, 0, '{"name":"Cobalt - Comments - DISQUS","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.14","description":"Cobalt - Comments - DISQUS","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10034, 10075, 'Cobalt - Comments - Facebook', 'file', 'facebook', '', 0, 1, 0, 0, '{"name":"Cobalt - Comments - Facebook","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.8","description":"Cobalt - Comments - Facebook","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10035, 10075, 'Cobalt - Comments - IntenceDebate', 'file', 'intencedebate', '', 0, 1, 0, 0, '{"name":"Cobalt - Comments - IntenceDebate","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.8","description":"Cobalt - Comments - IntenceDebate","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10036, 10075, 'Cobalt - Comments - JComment', 'file', 'jcomment', '', 0, 1, 0, 0, '{"name":"Cobalt - Comments - JComment","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.11","description":"Cobalt - Comments - JComment","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10037, 10075, 'Cobalt - Comments - JLex', 'file', 'jlex', '', 0, 1, 0, 0, '{"name":"Cobalt - Comments - JLex","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.18","description":"Cobalt - Comments - JLex review extension","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10038, 10075, 'Cobalt - Comments - Komento', 'file', 'komento', '', 0, 1, 0, 0, '{"name":"Cobalt - Comments - Komento","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.18","description":"Cobalt - Comments - Komento","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10039, 10075, 'Cobalt - Comments - ВКонтакте', 'file', 'vk', '', 0, 1, 0, 0, '{"name":"Cobalt - Comments - \\u0412\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u0435","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.9","description":"Cobalt - Comments - \\u0412\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u0435","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10040, 10075, 'Cobalt - Gateway - PayPal', 'file', 'paypal', '', 0, 1, 0, 0, '{"name":"Cobalt - Gateway - PayPal","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.38","description":"Cobalt - Gateway - PayPal: This is payment gateway PayPal","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10041, 10075, 'Cobalt - Gateway - Robokassa', 'file', 'robokassa', '', 0, 1, 0, 0, '{"name":"Cobalt - Gateway - Robokassa","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.9","description":"Cobalt - Gateway - PayPal: This is payment gateway robokassa","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10042, 10075, 'Cobalt - Field - Audio', 'file', 'audio', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Audio","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.57","description":"Cobalt - Field - Audio: This is advanced audio field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10043, 10075, 'Cobalt - Field - Boolean', 'file', 'boolean', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Boolean","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.53","description":"Cobalt - Field - Boolean: This is advanced boolean field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10044, 10075, 'Cobalt - Field - Checkbox', 'file', 'checkbox', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Checkbox","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.67","description":"Cobalt - Field - Checkbox: This is advanced checkbox field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10045, 10075, 'Cobalt - Field - Datetime', 'file', 'datetime', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Datetime","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.118","description":"Cobalt - Field - Datetime: This is advanced datetime field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10046, 10075, 'Cobalt - Field - Digits', 'file', 'digits', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Digits","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.48","description":"Cobalt - Field - Digits: This is advanced digits field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10047, 10075, 'Cobalt - Field - Content Dripping', 'file', 'dripcontent', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Content Dripping","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.30","description":"Cobalt - Field - Content dripping: In combination with emerald provide step access to articles on time base or manually.","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10048, 10075, 'Cobalt - Field - Email', 'file', 'email', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Email","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.76","description":"Cobalt - Field - Email: This is advanced email field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10049, 10075, 'Cobalt - Field - gallery', 'file', 'gallery', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - gallery","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.87","description":"Cobalt - Field - gallery: This is advanced gallery field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10050, 10075, 'Cobalt - Field - Address & Map', 'file', 'geo', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Address & Map","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.226","description":"Cobalt - Field - Address & Map","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10051, 10075, 'Cobalt - Field - HTML', 'file', 'html', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - HTML","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.48","description":"Cobalt - Field - HTML: This is advanced editor field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10052, 10075, 'Cobalt - Field - Image', 'file', 'image', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Image","type":"file","creationDate":"April 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.68","description":"Cobalt - Field - Image: This is simple image field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10053, 10075, 'Cobalt - Field - J2Store', 'file', 'j2store', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - J2Store","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.4","description":"Cobalt - Field - Quick2Card: This is advanced editor field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10054, 10075, 'Cobalt - Field - List Autocomplete', 'file', 'listautocomplete', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - List Autocomplete","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.48","description":"Cobalt - Field - List Autocomplete: This is advanced listautocomplete field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10055, 10075, 'Cobalt - Field - Multi Level Select', 'file', 'multilevelselect', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Multi Level Select","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.79","description":"Cobalt - Field - Multi Level Select: This is advanced multiple level select field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10056, 10075, 'Cobalt - Field - Multiple Select', 'file', 'multiselect', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Multiple Select","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.44","description":"Cobalt - Field - Multiple Select: This is advanced multiselect field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10057, 10075, 'Cobalt - Field - Password', 'file', 'passwd', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Password","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.26","description":"Cobalt - Field - Password: This is advanced Password field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10058, 10075, 'Cobalt - Field - Pay To Access', 'file', 'paytoaccess', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Pay To Access","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.34","description":"Cobalt - Field - Pay To Access: This is advanced payment field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10059, 10075, 'Cobalt - Field - Pay To Download', 'file', 'paytodownload', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Pay To Download","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.38","description":"Cobalt - Field - Pay To Download: This is advanced payment field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10060, 10075, 'Cobalt - Field - Pay Voucher', 'file', 'payvoucher', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Pay Voucher","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.25","description":"Cobalt - Field - Pay Voucher: sell pin codes, vouchers, activation codes, ...","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10061, 10075, 'Cobalt - Field - Quick2Cart', 'file', 'q2c', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Quick2Cart","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.2","description":"Cobalt - Field - Quick2Card: This is advanced editor field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10062, 10075, 'Cobalt - Field - Radio', 'file', 'radio', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Radio","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.35","description":"Cobalt - Field - Radio: This is advanced radio field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10063, 10075, 'Cobalt - Field - Read also', 'file', 'readmore', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Read also","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.29","description":"Cobalt - Field - Read also: This is advanced Read also field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10064, 10075, 'Cobalt - Field - Records', 'file', 'records', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Records","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.35","description":"Cobalt - Field - Records: This is advanced records field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10065, 10075, 'Cobalt - Field - Register', 'file', 'register', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Register","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.38","description":"Cobalt - Field - register: Allows to create account along with record submission","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10066, 10075, 'Cobalt - Field - Related Access', 'file', 'related_access', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Related Access","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.7","description":"Cobalt - Field - Related Access: restrict access to article based on the plan selected in parent.","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10067, 10075, 'Cobalt - Field - Relations (Child and Parent)', 'file', 'relation', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Relations (Child and Parent)","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.76","description":"Cobalt - Field - Relation: This is advanced Relation field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10068, 10075, 'Cobalt - Field - Select', 'file', 'select', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Select","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.37","description":"Cobalt - Field - Select: This is advanced select field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10069, 10075, 'Cobalt - Field - Status', 'file', 'status', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Status","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.54","description":"Cobalt - Field - Status: This is advanced status field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10070, 10075, 'Cobalt - Field - Telephone', 'file', 'telephone', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Telephone","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.31","description":"Cobalt - Field - Telephone: This is advanced telephone field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10071, 10075, 'Cobalt - Field - Text', 'file', 'text', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Text","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.53","description":"Cobalt - Field - Text: This is advanced text field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10072, 10075, 'Cobalt - Field - Textarea', 'file', 'textarea', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Textarea","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.52","description":"Cobalt - Field - Textarea: This is advanced textarea field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10073, 10075, 'Cobalt - Field - URL', 'file', 'url', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - URL","type":"file","creationDate":"April 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.70","description":"Cobalt - Field - URL: This is advanced URL field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10074, 10075, 'Cobalt - Field - Video', 'file', 'video', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Video","type":"file","creationDate":"April 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.84","description":"Cobalt - Field - Video: This is advanced video field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10075, 0, 'Cobalt - Package - All', 'package', 'pkg_cobaltpack', '', 0, 1, 1, 0, '{"name":"Cobalt - Package - All","type":"package","creationDate":"\\u041d\\u0435\\u0438\\u0437\\u0432\\u0435\\u0441\\u0442\\u043d\\u044b\\u0439","author":"\\u041d\\u0435\\u0438\\u0437\\u0432\\u0435\\u0441\\u0442\\u043d\\u044b\\u0439","copyright":"","authorEmail":"","authorUrl":"","version":"8.740","description":"\\n\\t\\t<div class=\\"hero-unit\\" style=\\"text-align: left;\\">\\n\\t\\t\\t<h1>Cobalt 8 CCK <small><b>Mint<\\/b>Joomla<\\/small><\\/h1>\\n\\t\\t\\t<p>Cobalt 8 is a great extension to aid in the design of components and content for your site.\\n\\t\\t\\tYou can use it to create hundreds of different sections of your site.<\\/p>\\n\\t\\t\\t<br>\\n\\t\\t\\t<a href=\\"http:\\/\\/www.mintjoomla.com\\/download\\/joomla-3\\/item\\/9-cobalt-cck\\/101-mint-media-pack.html\\" target=\\"_blank\\" class=\\"btn btn-large btn-primary\\">Get more stuff by MintJoomla<\\/a>\\n\\t\\t\\t<a href=\\"http:\\/\\/www.mintjoomla.com\\/community\\/depot.html\\" target=\\"_blank\\" class=\\"btn btn-large\\">Get more stuff by 3<sup>rd<\\/sup> party<\\/a>\\n\\t\\t<\\/div>\\n\\t\\t<p class=\\"alert alert-error\\">Do not forget to download and install\\n\\t\\t<a target=\\"_blank\\" href=\\"http:\\/\\/www.mintjoomla.com\\/downloads\\/item\\/9-cobalt-7\\/101-mint-media-pack.html\\">Cobalt Media Pack<\\/a> and\\n\\t\\t<a target=\\"_blank\\" href=\\"http:\\/\\/www.mintjoomla.com\\/download\\/joomla-3\\/item\\/24-templates\\/87-templates.html\\">Advanced templates<\\/a>\\n\\t\\t.<\\/p>\\n\\t\\t<div class=\\"well\\" style=\\"text-align:left;\\">\\n\\t\\t\\t<h2>You have successfully installed Everything package!<\\/h2>\\n\\t\\t\\t<ul>\\n\\t\\t\\t\\t<li>Cobalt 8 Extension<\\/li>\\n\\t\\t\\t\\t<li>MintJoomla library<\\/li>\\n\\t\\t\\t\\t<li>Advanced templates<\\/li>\\n\\t\\t\\t<\\/ul>\\n\\t\\t\\t<ul>\\n\\t\\t\\t\\t<li>Module Tag Cloud<\\/li>\\n\\t\\t\\t\\t<li>Module Categories<\\/li>\\n\\t\\t\\t\\t<li>Module Section Statictics<\\/li>\\n\\t\\t\\t\\t<li>Module User Statictics<\\/li>\\n\\t\\t\\t\\t<li>Module Filters<\\/li>\\n\\t\\t\\t\\t<li>Module Notifications<\\/li>\\n\\t\\t\\t\\t<li>Module Records<\\/li>\\n\\t\\t\\t\\t<li>Module Participants<\\/li>\\n\\t\\t\\t\\t<li>Module Who folloes user<\\/li>\\n\\t\\t\\t\\t<li>Module Whom user follow<\\/li>\\n\\t\\t\\t<\\/ul>\\n\\t\\t\\t<ul>\\n\\t\\t\\t\\t<li>Payment Gateway PayPal<\\/li>\\n\\t\\t\\t<\\/ul>\\n\\t\\t\\t<ul>\\n\\t\\t\\t\\t<li>Plugin Toolset<\\/li>\\n\\t\\t\\t\\t<li>Plugin Joomla Search<\\/li>\\n\\t\\t\\t\\t<li>Plugin Glossary<\\/li>\\n\\t\\t\\t\\t<li>Plugin Review\\/Discussion<\\/li>\\n\\t\\t\\t\\t<li>Plugin Formatter INI<\\/li>\\n\\t\\t\\t\\t<li>Plugin Formatter XML<\\/li>\\n\\t\\t\\t\\t<li>Plugin Formatter JSON<\\/li>\\n\\t\\t\\t\\t<li>Plugin Formatter Joomla Update Service<\\/li>\\n\\t\\t\\t<\\/ul>\\n\\t\\t\\t<ul>\\n\\t\\t\\t\\t<li>Comment Adapter Core<\\/li>\\n\\t\\t\\t\\t<li>Comment Adapter <a href=\\"http:\\/\\/stackideas.com\\/komento.html\\">Komento (By Stackideas)<\\/a><\\/li>\\n\\t\\t\\t\\t<li>Comment Adapter JComment<\\/li>\\n\\t\\t\\t\\t<li>Comment Adapter Cobalt<\\/li>\\n\\t\\t\\t\\t<li>Comment Adapter VK<\\/li>\\n\\t\\t\\t\\t<li>Comment Adapter Facebook<\\/li>\\n\\t\\t\\t\\t<li>Comment Adapter DISQUS<\\/li>\\n\\t\\t\\t\\t<li>Comment Adapter IntenceDeate<\\/li>\\n\\t\\t\\t\\t<li>Comment Adapter Cackle<\\/li>\\n\\t\\t\\t\\t<li>Comment Adapter Custom<\\/li>\\n\\t\\t\\t<\\/ul>\\n\\t\\t\\t<ul>\\n\\t\\t\\t\\t<li>Field Boolean<\\/li>\\n\\t\\t\\t\\t<li>Field Checkbox<\\/li>\\n\\t\\t\\t\\t<li>Field HTML<\\/li>\\n\\t\\t\\t\\t<li>Field Image<\\/li>\\n\\t\\t\\t\\t<li>Field Multiple Select<\\/li>\\n\\t\\t\\t\\t<li>Field Password<\\/li>\\n\\t\\t\\t\\t<li>Field Radio<\\/li>\\n\\t\\t\\t\\t<li>Field Select<\\/li>\\n\\t\\t\\t\\t<li>Field Text<\\/li>\\n\\t\\t\\t\\t<li>Field Textarea<\\/li>\\n\\t\\t\\t\\t<li>Field Audio<\\/li>\\n\\t\\t\\t\\t<li>Field Datetime<\\/li>\\n\\t\\t\\t\\t<li>Field Digits<\\/li>\\n\\t\\t\\t\\t<li>Field Email<\\/li>\\n\\t\\t\\t\\t<li>Field Gallery<\\/li>\\n\\t\\t\\t\\t<li>Field Geo<\\/li>\\n\\t\\t\\t\\t<li>Field list Autocomplete<\\/li>\\n\\t\\t\\t\\t<li>Field Multilevel Select<\\/li>\\n\\t\\t\\t\\t<li>Field Pay to access<\\/li>\\n\\t\\t\\t\\t<li>Field Pay voucher<\\/li>\\n\\t\\t\\t\\t<li>Field Pay to download<\\/li>\\n\\t\\t\\t\\t<li>Field Read also<\\/li>\\n\\t\\t\\t\\t<li>Field Records<\\/li>\\n\\t\\t\\t\\t<li>Field Relations (Parent and Child)<\\/li>\\n\\t\\t\\t\\t<li>Field Status<\\/li>\\n\\t\\t\\t\\t<li>Field Telephone<\\/li>\\n\\t\\t\\t\\t<li>Field Uploads<\\/li>\\n\\t\\t\\t\\t<li>Field Url<\\/li>\\n\\t\\t\\t\\t<li>Field Video<\\/li>\\n\\t\\t\\t<\\/ul>\\n\\n\\t\\t\\t<h2>What is next?<\\/h2>\\n\\t\\t\\t<ul>\\n\\t\\t\\t\\t<li><a href=\\"http:\\/\\/www.mintjoomla.com\\/community\\/knowledge\\/user-item\\/43-sergey\\/109-cobalt-quick-start.html\\" target=\\"_blank\\">Read and watch quick start tutorial<\\/a><\\/li>\\n\\t\\t\\t\\t<li><a href=\\"http:\\/\\/support.mintjoomla.com\\" target=\\"_blank\\">Ask questions and get support<\\/a><\\/li>\\n\\t\\t\\t\\t<li><a href=\\"http:\\/\\/www.mintjoomla.com\\/blog.html\\" target=\\"_blank\\">We release updates every week. Please do not forget to subscribe or check our blog were we announce.<\\/a><\\/li>\\n\\t\\t\\t<\\/ul>\\n\\t\\t<\\/div>\\n\\t\\t<br><br>\\n\\t","group":"","filename":"pkg_cobaltpack"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10076, 0, 'Cobalt - Package - Mediа', 'file', 'mint', '', 0, 1, 0, 0, '{"name":"Cobalt - Package - Medi\\u0430","type":"file","creationDate":"November 2012","author":"MintJoomla","copyright":"(C) 2005 - 2012 MintJoomla.","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.87","description":"\\n\\tThis is MintJoomla - Cobalt 8 Media Pack\\n\\t","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10077, 0, 'Cobalt - Additional Templates', 'file', 'install', '', 0, 1, 0, 0, '{"name":"Cobalt - Additional Templates","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.1090","description":"Cobalt 8 - Additional templates","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10078, 0, 'Cobalt - Field - AK Image', 'file', 'akimage', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - AK Image","type":"file","creationDate":"August 2014","author":"Idea by AsmuZ. Made by Alexander Khmelnitskiy","copyright":"(c) 2014 alexander.khmelnitskiy.ua","authorEmail":"info@alexander.khmelnitskiy","authorUrl":"http:\\/\\/alexander.khmelnitskiy.ua","version":"1.0","description":"\\n            \\n            Cobalt - Field - AK Image by <a href=\\"http:\\/\\/alexander.khmelnitskiy.ua\\" target=\\"_blank\\">alexander.khmelnitskiy.ua<\\/a><br \\/><br \\/>Idea by <a href=\\"http:\\/\\/asmuz.ru\\" target=\\"_blank\\">www.AsmuZ.ru<\\/a>\\n            \\n        ","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10079, 0, 'Cobalt - Field - AG Picture', 'file', 'ag_picture', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - AG Picture","type":"file","creationDate":"January 2013","author":"MintJoomla","copyright":"(c) 2013 Abstrakt","authorEmail":"ccrosaz@abstrakt.fr","authorUrl":"http:\\/\\/www.abstrakt.fr","version":"1.0","description":"Cobalt - Field - AG Picture This is simple upload image field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10081, 10085, 'Akeeba', 'component', 'com_akeeba', '', 1, 1, 0, 0, '{"name":"Akeeba","type":"component","creationDate":"2018-02-26","author":"Nicholas K. Dionysopoulos","copyright":"Copyright (c)2006-2017 Akeeba Ltd \\/ Nicholas K. Dionysopoulos","authorEmail":"nicholas@dionysopoulos.me","authorUrl":"http:\\/\\/www.akeebabackup.com","version":"6.0.1","description":"Akeeba Backup Core - Full Joomla! site backup solution, Core Edition.","group":"","filename":"akeeba"}', '{"confwiz_upgrade":1,"updatedb":null,"siteurl":"http:\\/\\/prodogs.info\\/","jlibrariesdir":"G:\\/OpenServer\\/domains\\/prodogs.info\\/libraries","jversion":"1.6","show_howtorestoremodal":0,"frontend_secret_word":"###AES128###9lGcmfkWSbvXsJn\\/syX9y0pQU1TeqvQtFYLgSFFx3iVnREhUrX0DY3vnGlGeB6G0qUNWAFtUAd883JwoBAnv68v2FZ\\/OopD17HeQbES2S2M4+MzRSlBJVoEVogltAo2AmnqNRYb5mCEAAAAA"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10082, 10085, 'plg_quickicon_akeebabackup', 'plugin', 'akeebabackup', 'quickicon', 0, 1, 1, 0, '{"name":"plg_quickicon_akeebabackup","type":"plugin","creationDate":"2012-09-26","author":"Nicholas K. Dionysopoulos","copyright":"Copyright (c)2006-2017 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"http:\\/\\/www.akeebabackup.com","version":"1.0","description":"PLG_QUICKICON_AKEEBABACKUP_XML_DESCRIPTION","group":"","filename":"akeebabackup"}', '{"context":"mod_quickicon","enablewarning":"1","warnfailed":"1","maxbackupperiod":"24","profileid":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10083, 10085, 'PLG_SYSTEM_AKEEBAUPDATECHECK_TITLE', 'plugin', 'akeebaupdatecheck', 'system', 0, 0, 1, 0, '{"name":"PLG_SYSTEM_AKEEBAUPDATECHECK_TITLE","type":"plugin","creationDate":"2011-05-26","author":"Nicholas K. Dionysopoulos","copyright":"Copyright (c)2006-2017 Nicholas K. Dionysopoulos","authorEmail":"nicholas@dionysopoulos.me","authorUrl":"http:\\/\\/www.akeebabackup.com","version":"1.1","description":"PLG_AKEEBAUPDATECHECK_DESCRIPTION2","group":"","filename":"akeebaupdatecheck"}', '{"email":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10084, 10085, 'PLG_SYSTEM_BACKUPONUPDATE_TITLE', 'plugin', 'backuponupdate', 'system', 0, 0, 1, 0, '{"name":"PLG_SYSTEM_BACKUPONUPDATE_TITLE","type":"plugin","creationDate":"2013-08-13","author":"Nicholas K. Dionysopoulos","copyright":"Copyright (c)2006-2017 Nicholas K. Dionysopoulos","authorEmail":"nicholas@dionysopoulos.me","authorUrl":"http:\\/\\/www.akeebabackup.com","version":"3.7","description":"PLG_SYSTEM_BACKUPONUPDATE_DESCRIPTION","group":"","filename":"backuponupdate"}', '{"profileid":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10085, 0, 'Akeeba Backup package', 'package', 'pkg_akeeba', '', 0, 1, 1, 0, '{"name":"Akeeba Backup package","type":"package","creationDate":"2018-02-26","author":"Nicholas K. Dionysopoulos","copyright":"Copyright (c)2006-2017 Akeeba Ltd \\/ Nicholas K. Dionysopoulos","authorEmail":"","authorUrl":"","version":"6.0.1","description":"Akeeba Backup installation package v.6.0.1","group":"","filename":"pkg_akeeba"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10086, 0, 'plg_installer_webinstaller', 'plugin', 'webinstaller', 'installer', 0, 1, 1, 0, '{"name":"plg_installer_webinstaller","type":"plugin","creationDate":"28 April 2017","author":"Joomla! Project","copyright":"Copyright (C) 2013-2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.1.1","description":"PLG_INSTALLER_WEBINSTALLER_XML_DESCRIPTION","group":"","filename":"webinstaller"}', '{"tab_position":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10087, 0, 'akeebabackup - ru-RU', 'file', 'akeebabackup-ru-RU', '', 0, 1, 0, 0, '{"name":"akeebabackup - ru-RU","type":"file","creationDate":"19 Feb 2017","author":"AkeebaBackup.com","copyright":"Copyright (C)2017 AkeebaBackup.com. All rights reserved.","authorEmail":"","authorUrl":"","version":"C:\\\\Users\\\\sledg\\\\Projects\\\\akeeba\\\\backup\\\\build\\/..","description":"Russian (Russia) translation file for Akeeba Backup","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10088, 0, 'FOF30', 'library', 'lib_fof30', '', 0, 1, 1, 0, '{"name":"FOF30","type":"library","creationDate":"2018-02-07","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2010-2017 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"3.2.1","description":"\\n\\t\\t\\n\\t\\tFramework-on-Framework (FOF) 3.x - The rapid application development framework for Joomla!.<br\\/>\\n\\t\\t<b>WARNING<\\/b>: This is NOT a duplicate of the FOF library already installed with Joomla!. It is a different version used by other extensions on your site. Do NOT uninstall either FOF package. If you do you will break your site.\\n\\t\\t\\n\\t","group":"","filename":"lib_fof30"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10089, 0, 'file_fef', 'file', 'file_fef', '', 0, 1, 0, 0, '{"name":"file_fef","type":"file","creationDate":"2018-02-16","author":"Nicholas K. Dionysopoulos","copyright":"(C) 2017-2018 Akeeba Ltd.","authorEmail":"nicholas@dionysopoulos.me","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"1.0.2","description":"Akeeba Frontend Framework - The CSS framework for Akeeba Ltd extensions.","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10090, 0, 'Community', 'component', 'com_community', '', 1, 1, 0, 0, '{"name":"Community","type":"component","creationDate":"July 2011","author":"JomSocial Team","copyright":"Copyright 2008 by Slashes & Dots Sdn Bhd. All rights reserved","authorEmail":"support@jomsocial.com","authorUrl":"http:\\/\\/www.jomsocial.com","version":"4.5.2","description":"JomSocial is a social networking component for Joomla!","group":"","filename":"community"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10091, 0, 'com_community - ru-RU', 'file', 'com_community-ru-RU', '', 0, 1, 0, 0, '{"name":"com_community - ru-RU","type":"file","creationDate":"05.12.2017","author":"compojoom","copyright":"\\u00a9 2008-2017 - compojoom-com. All rights reserved!","authorEmail":"yoursite@yoursite.com","authorUrl":"https:\\/\\/compojoom.com","version":"2017-12-05-10-33-59","description":"\\n        This package was auto generated with CTransifex(https:\\/\\/compojoom.com). We\'ve grabbed the latest language files for our extension from transifex.com.\\n        Special thanks to OpenTranslators (http:\\/\\/opentranslators.org) for helping us with this translation!\\n    ","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10092, 0, 'System - JomSocial System', 'plugin', 'jomsocial.system', 'system', 0, 1, 1, 0, '{"name":"System - JomSocial System","type":"plugin","creationDate":"July 2011","author":"JomSocial Team","copyright":"Copyright 2008 - 2010 by Slashes & Dots Sdn Bhd. All rights reserved","authorEmail":"support@jomsocial.com","authorUrl":"http:\\/\\/www.jomsocial.com","version":"4.5.2","description":"\\n\\t\\tAjax System for Joomla, JomSocial.com\\n\\t","group":"","filename":"jomsocial.system"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10093, 0, 'JomSocial Article Comments', 'plugin', 'articlecomments', 'content', 0, 0, 1, 0, '{"name":"JomSocial Article Comments","type":"plugin","creationDate":"Oct 2016","author":"JomSocial Team","copyright":"Copyright 2008 - 2016 by iJoomla, Inc. - All rights reserved.","authorEmail":"support@jomsocial.com","authorUrl":"http:\\/\\/www.jomsocial.com","version":"4.5.2","description":"PLG_CONTENT_ARTICLECOMMENTS_XML_DESCRIPTION","group":"","filename":"articlecomments"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10094, 0, 'PLG_COMMUNITY_ARTICLENOTIFICATIONS_TITLE', 'plugin', 'articlenotifications', 'community', 0, 0, 1, 0, '{"name":"PLG_COMMUNITY_ARTICLENOTIFICATIONS_TITLE","type":"plugin","creationDate":"Oct 2016","author":"JomSocial Team","copyright":"Copyright 2008 - 2016 by iJoomla, Inc. - All rights reserved.","authorEmail":"support@jomsocial.com","authorUrl":"http:\\/\\/www.jomsocial.com","version":"4.5.2","description":"PLG_COMMUNITY_ARTICLENOTIFICATIONS_XML_DESCRIPTION","group":"","filename":"articlenotifications"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10095, 0, 'System - Jomsocial Chat Bar', 'plugin', 'jomsocialchatbar', 'system', 0, 0, 1, 0, '{"name":"System - Jomsocial Chat Bar","type":"plugin","creationDate":"Oct 10 2017","author":"JomSocial Team","copyright":"Copyright (C) 2008 - 2017 iJoomla. All rights reserved.","authorEmail":"support@jomsocial.com","authorUrl":"http:\\/\\/jomsocial.com","version":"4.5.2","description":"PLG_JOMSOCIALCHATBAT_XML_DESCRIPTION","group":"","filename":"jomsocialchatbar"}', '{"chat_bar_position":"right","remember_last_state":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10096, 0, 'System - Jomsocial Redirect', 'plugin', 'jomsocialredirect', 'system', 0, 1, 1, 0, '{"name":"System - Jomsocial Redirect","type":"plugin","creationDate":"Aug 11 2011","author":"JomSocial Team","copyright":"Copyright 2008 - 2010 by Slashes & Dots Sdn Bhd. All rights reserved","authorEmail":"support@jomsocial.com","authorUrl":"http:\\/\\/jomsocial.com","version":"4.5.2","description":"","group":"","filename":"jomsocialredirect"}', '{"override_com_user_registration":"1","redirect_previous":"0","redirect_login":"1","redirect_login_message_show":"1","redirect_login_msg":"LOGIN_SUCCESSFUL","redirect_login_failed":"1","redirect_login_failed_message_show":"1","redirect_login_failed_msg":"LOGIN_FAILED","redirect_logout":"1","redirect_register_message_show":"1","redirect_registration_msg":"REDIRECTED_TO_COMMUNITY_REGISTRATION"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10097, 0, 'User - Jomsocial User', 'plugin', 'jomsocialuser', 'user', 0, 1, 1, 0, '{"name":"User - Jomsocial User","type":"plugin","creationDate":"March 2011","author":"JomSocial","copyright":"Copyright 2008 - 2010 by Slashes & Dots Sdn Bhd. All rights reserved","authorEmail":"support@jomsocial.com","authorUrl":"http:\\/\\/www.jomsocial.com","version":"4.5.2","description":"PLG_JOMSOCIALUSER_XML_DESCRIPTION","group":"","filename":"jomsocialuser"}', '{"delete_jommla_contact":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10098, 0, 'PLG_MUTUALFRIENDS_TITLE', 'plugin', 'mutualfriends', 'community', 0, 0, 1, 0, '{"name":"PLG_MUTUALFRIENDS_TITLE","type":"plugin","creationDate":"July 2015","author":"iJoomla","copyright":"Copyright (C) 2008 - 2015 iJoomla. All rights reserved.","authorEmail":"support@jomsocial.com","authorUrl":"http:\\/\\/jomsocial.com","version":"4.5.2","description":"PLG_MUTUALFRIENDS_XML_DESCRIPTION","group":"","filename":"mutualfriends"}', '{"title_override":"","favicon":"","desc_override":"","count":"12","coreapp":"0","position":"content","hide_empty":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10099, 0, 'PLG_MYARTICLES_TITLE', 'plugin', 'myarticles', 'community', 0, 0, 1, 0, '{"name":"PLG_MYARTICLES_TITLE","type":"plugin","creationDate":"July 2015","author":"iJoomla","copyright":"Copyright (C) 2008 - 2015 iJoomla. All rights reserved.","authorEmail":"support@jomsocial.com","authorUrl":"http:\\/\\/jomsocial.com","version":"4.5.2","description":"PLG_MYARTICLES_XML_DESCRIPTION","group":"","filename":"myarticles"}', '{"title_override":"","favicon":"","desc_override":"","count":"12","coreapp":"0","position":"content","hide_empty":"1","limit":"50"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10100, 0, 'PLG_MYCONTACTS_TITLE', 'plugin', 'mycontacts', 'community', 0, 1, 1, 0, '{"name":"PLG_MYCONTACTS_TITLE","type":"plugin","creationDate":"July 2015","author":"iJoomla","copyright":"Copyright (C) 2008 - 2015 iJoomla. All rights reserved.","authorEmail":"support@jomsocial.com","authorUrl":"http:\\/\\/jomsocial.com","version":"4.5.2","description":"PLG_MYCONTACTS_XML_DESCRIPTION","group":"","filename":"mycontacts"}', '{"title_override":"\\u041c\\u043e\\u0438 \\u043a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b","favicon":"","desc_override":"","coreapp":"0","position":"content","hide_empty":"0","hide_empty_fields":"0","home_address":"1","city":"1","postal_code":"0","country":"1","phone_number":"1","mobile_number":"1","fax_number":"0","website":"1","my_company":"0","work_address":"0","comp_website":"0","department":"0","job_title":"0","main_im_id":"0","im_list":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10101, 0, 'PLG_MYEVENTS_TITLE', 'plugin', 'myevents', 'community', 0, 0, 1, 0, '{"name":"PLG_MYEVENTS_TITLE","type":"plugin","creationDate":"July 2015","author":"iJoomla","copyright":"Copyright (C) 2008 - 2015 iJoomla. All rights reserved.","authorEmail":"support@jomsocial.com","authorUrl":"http:\\/\\/jomsocial.com","version":"4.5.2","description":"PLG_MYEVENTS_XML_DESCRIPTION","group":"","filename":"myevents"}', '{"title_override":"","favicon":"","desc_override":"","count":"12","coreapp":"0","position":"content","hide_empty":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10102, 0, 'PLG_MYFRIENDS_TITLE', 'plugin', 'myfriends', 'community', 0, 0, 1, 0, '{"name":"PLG_MYFRIENDS_TITLE","type":"plugin","creationDate":"July 2015","author":"iJoomla","copyright":"Copyright (C) 2008 - 2015 iJoomla. All rights reserved.","authorEmail":"support@jomsocial.com","authorUrl":"http:\\/\\/jomsocial.com","version":"4.5.2","description":"PLG_MYFRIENDS_XML_DESCRIPTION","group":"","filename":"myfriends"}', '{"title_override":"","favicon":"","desc_override":"","count":"12","coreapp":"0","position":"content","hide_empty":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10103, 0, 'PLG_FRIENDSLOCATION_TITLE', 'plugin', 'myfriendslocation', 'community', 0, 0, 1, 0, '{"name":"PLG_FRIENDSLOCATION_TITLE","type":"plugin","creationDate":"July 2015","author":"iJoomla","copyright":"Copyright (C) 2008 - 2015 iJoomla. All rights reserved.","authorEmail":"support@jomsocial.com","authorUrl":"http:\\/\\/jomsocial.com","version":"4.5.2","description":"PLG_FRIENDSLOCATION_XML_DESCRIPTION","group":"","filename":"myfriendslocation"}', '{"title_override":"","favicon":"","desc_override":"","count":"10","coreapp":"0","position":"content","hide_empty":"0","address_field_code":"0","town_field_code":"0","zip_field_code":"0","state_field_code":"0","country_field_code":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10104, 0, 'PLG_MYGOOGLEADS_TITLE', 'plugin', 'mygoogleads', 'community', 0, 0, 1, 0, '{"name":"PLG_MYGOOGLEADS_TITLE","type":"plugin","creationDate":"July 2015","author":"iJoomla","copyright":"Copyright (C) 2008 - 2015 iJoomla. All rights reserved.","authorEmail":"support@jomsocial.com","authorUrl":"http:\\/\\/jomsocial.com","version":"4.5.2","description":"PLG_GOOGLE_XML_DESCRIPTION","group":"","filename":"mygoogleads"}', '{"title_override":"","favicon":"","desc_override":"","coreapp":"0","position":"content"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10105, 0, 'PLG_MYGROUPS_TITLE', 'plugin', 'mygroups', 'community', 0, 1, 1, 0, '{"name":"PLG_MYGROUPS_TITLE","type":"plugin","creationDate":"July 2015","author":"iJoomla","copyright":"Copyright (C) 2008 - 2015 iJoomla. All rights reserved.","authorEmail":"support@jomsocial.com","authorUrl":"http:\\/\\/jomsocial.com","version":"4.5.2","description":"PLG_MYGROUPS_XML_DESCRIPTION","group":"","filename":"mygroups"}', '{"title_override":"\\u041c\\u043e\\u0438 \\u0413\\u0440\\u0443\\u043f\\u043f\\u044b","favicon":"","desc_override":"","count":"5","coreapp":"0","position":"content","hide_empty":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10106, 0, 'PLG_KUNENA_TITLE', 'plugin', 'mykunenaposts', 'community', 0, 0, 1, 0, '{"name":"PLG_KUNENA_TITLE","type":"plugin","creationDate":"July 2015","author":"iJoomla","copyright":"Copyright (C) 2008 - 2015 iJoomla. All rights reserved.","authorEmail":"support@jomsocial.com","authorUrl":"http:\\/\\/jomsocial.com","version":"4.5.2","description":"PLG_KUNENA_XML_DESCRIPTION","group":"","filename":"mykunenaposts"}', '{"title_override":"","favicon":"","desc_override":"","count":"6","coreapp":"0","position":"content","hide_empty":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10107, 0, 'PLG_COMMUNITY_MYLATESTPHOTOS_TITLE', 'plugin', 'mylatestphotos', 'community', 0, 0, 1, 0, '{"name":"PLG_COMMUNITY_MYLATESTPHOTOS_TITLE","type":"plugin","creationDate":"July 2015","author":"iJoomla","copyright":"Copyright (C) 2008 - 2015 iJoomla. All rights reserved.","authorEmail":"support@jomsocial.com","authorUrl":"http:\\/\\/jomsocial.com","version":"4.5.2","description":"PLG_COMMUNITY_MYLATESTPHOTOS_XML_DESCRIPTION","group":"","filename":"mylatestphotos"}', '{"title_override":"","favicon":"","desc_override":"","count":"10","coreapp":"0","position":"content","hide_empty":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10108, 0, 'PLG_MYRSSFEEDS_TITLE', 'plugin', 'myrssfeeds', 'community', 0, 0, 1, 0, '{"name":"PLG_MYRSSFEEDS_TITLE","type":"plugin","creationDate":"July 2015","author":"iJoomla","copyright":"Copyright (C) 2008 - 2015 iJoomla. All rights reserved.","authorEmail":"support@jomsocial.com","authorUrl":"http:\\/\\/jomsocial.com","version":"4.5.2","description":"PLG_MYRSSFEEDS_XML_DESCRIPTION","group":"","filename":"myrssfeeds"}', '{"title_override":"","favicon":"","desc_override":"","coreapp":"0","position":"content"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10109, 0, 'PLG_MYTAGGEDVIDEOS_TITLE', 'plugin', 'mytaggedvideos', 'community', 0, 0, 1, 0, '{"name":"PLG_MYTAGGEDVIDEOS_TITLE","type":"plugin","creationDate":"July 2015","author":"iJoomla","copyright":"Copyright (C) 2008 - 2015 iJoomla. All rights reserved.","authorEmail":"support@jomsocial.com","authorUrl":"http:\\/\\/jomsocial.com","version":"4.5.2","description":"PLG_MYTAGGEDVIDEOS_XML_DESCRIPTION","group":"","filename":"mytaggedvideos"}', '{"title_override":"","favicon":"","desc_override":"","count":"6","coreapp":"0","position":"content","hide_empty":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10110, 0, 'PLG_MYVIDEOS_TITLE', 'plugin', 'myvideos', 'community', 0, 0, 1, 0, '{"name":"PLG_MYVIDEOS_TITLE","type":"plugin","creationDate":"July 2015","author":"iJoomla","copyright":"Copyright (C) 2008 - 2015 iJoomla. All rights reserved.","authorEmail":"support@jomsocial.com","authorUrl":"http:\\/\\/jomsocial.com","version":"4.5.2","description":"PLG_MYVIDEOS_XML_DESCRIPTION","group":"","filename":"myvideos"}', '{"title_override":"","favicon":"","desc_override":"","count":"12","coreapp":"0","position":"content","hide_empty":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10111, 0, 'PLG_TWITTER_XML_TITLE', 'plugin', 'twitter', 'community', 0, 0, 1, 0, '{"name":"PLG_TWITTER_XML_TITLE","type":"plugin","creationDate":"July 2015","author":"iJoomla","copyright":"Copyright (C) 2008 - 2015 iJoomla. All rights reserved.","authorEmail":"support@jomsocial.com","authorUrl":"http:\\/\\/jomsocial.com","version":"4.5.2","description":"PLG_TWITTER_XML_DESCRIPTION","group":"","filename":"twitter"}', '{"title_override":"","favicon":"","desc_override":"","coreapp":"0","position":"content","consumerKey":"","consumerSecret":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10112, 0, 'PLG_WALLS_TITLE', 'plugin', 'walls', 'community', 0, 1, 1, 0, '{"name":"PLG_WALLS_TITLE","type":"plugin","creationDate":"March 2011","author":"JomSocial Team","copyright":"Copyright 2008 - 2013 by iJoomla, Inc. - All rights reserved.","authorEmail":"support@jomsocial.com","authorUrl":"http:\\/\\/www.jomsocial.com","version":"4.5.2","description":"PLG_WALLS_XML_DESCRIPTION","group":"","filename":"walls"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10113, 0, 'PLG_WORDFILTER_TITLE', 'plugin', 'wordfilter', 'community', 0, 0, 1, 0, '{"name":"PLG_WORDFILTER_TITLE","type":"plugin","creationDate":"March 2011","author":"JomSocial Team","copyright":"Copyright 2008 - 2013 by iJoomla, Inc. - All rights reserved.","authorEmail":"support@jomsocial.com","authorUrl":"http:\\/\\/www.jomsocial.com","version":"4.5.2","description":"PLG_WORDFILTER_XML_DESCRIPTION","group":"","filename":"wordfilter"}', '{"replacement":"*","badwords":"fuck,shit"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10114, 0, 'JS Activity Stream', 'module', 'mod_community_activitystream', '', 0, 1, 0, 0, '{"name":"JS Activity Stream","type":"module","creationDate":"June 2015","author":"iJoomla","copyright":"Copyright (C) 2008 - 2015 iJoomla. All rights reserved.","authorEmail":"support@jomsocial.com","authorUrl":"http:\\/\\/jomsocial.com","version":"4.5.2","description":"Activity stream module for JomSocial","group":"","filename":"mod_community_activitystream"}', '{"stream_type":"0","limit":"20","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10115, 0, 'JS Discussions', 'module', 'mod_community_discussions', '', 0, 1, 0, 0, '{"name":"JS Discussions","type":"module","creationDate":"June 2015","author":"iJoomla","copyright":"Copyright (C) 2008 - 2015 iJoomla. All rights reserved.","authorEmail":"support@jomsocial.com","authorUrl":"http:\\/\\/jomsocial.com","version":"4.5.2","description":"Discussions module for JomSocial","group":"","filename":"mod_community_discussions"}', '{"displaysetting":"0","show_private_discussion":"1","show_avatar":"0","limit":"10","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10116, 0, 'JS Events', 'module', 'mod_community_events', '', 0, 1, 0, 0, '{"name":"JS Events","type":"module","creationDate":"April 2015","author":"iJoomla","copyright":"Copyright (C) 2008 - 2015 iJoomla. All rights reserved.","authorEmail":"support@jomsocial.com","authorUrl":"http:\\/\\/jomsocial.com","version":"4.5.2","description":"Events module for JomSocial. Display upcoming and current events.","group":"","filename":"mod_community_events"}', '{"displaysetting":"0","filter_by":"0","limit":"5","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10117, 0, 'JS Events Calendar', 'module', 'mod_community_eventscalendar', '', 0, 1, 0, 0, '{"name":"JS Events Calendar","type":"module","creationDate":"April 2015","author":"iJoomla","copyright":"Copyright (C) 2008 - 2015 iJoomla. All rights reserved.","authorEmail":"support@jomsocial.com","authorUrl":"http:\\/\\/jomsocial.com","version":"4.5.2","description":"Events Calendar module for JomSocial","group":"","filename":"mod_community_eventscalendar"}', '{"displaysetting":"0","firstday":"0","dateformat":"0","timeformat":"0","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10118, 0, 'JS Groups', 'module', 'mod_community_groups', '', 0, 1, 0, 0, '{"name":"JS Groups","type":"module","creationDate":"April 2015","author":"iJoomla","copyright":"Copyright (C) 2008 - 2015 iJoomla. All rights reserved.","authorEmail":"support@jomsocial.com","authorUrl":"http:\\/\\/jomsocial.com","version":"4.5.2","description":"Groups module for JomSocial","group":"","filename":"mod_community_groups"}', '{"displaysetting":"0","filter_by":"0","limit":"5","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10119, 0, 'JS Hello Me', 'module', 'mod_community_hellome', '', 0, 1, 0, 0, '{"name":"JS Hello Me","type":"module","creationDate":"April 2015","author":"iJoomla","copyright":"Copyright (C) 2008 - 2015 iJoomla. All rights reserved.","authorEmail":"support@jomsocial.com","authorUrl":"http:\\/\\/jomsocial.com","version":"4.5.2","description":"Profile module for JomSocial","group":"","filename":"mod_community_hellome"}', '{"show_avatar":"1","show_name":"1","show_badge":"1","show_notifications":"1","show_menu":"1","show_logout":"1","show_facebook":"1","show_forgotpwd":"1","show_forgotusr":"1","show_activation":"1","remember_me":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10120, 0, 'JS Members', 'module', 'mod_community_members', '', 0, 1, 0, 0, '{"name":"JS Members","type":"module","creationDate":"April 2015","author":"iJoomla","copyright":"Copyright (C) 2008 - 2015 iJoomla. All rights reserved.","authorEmail":"support@jomsocial.com","authorUrl":"http:\\/\\/jomsocial.com","version":"4.5.2","description":"Members module for JomSocial","group":"","filename":"mod_community_members"}', '{"profile_filter":"0","avatars_number":"4","sorting":"0","respect_online":"1","show_total_members":"1","limit":"12","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10121, 0, 'JS Members Search', 'module', 'mod_community_memberssearch', '', 0, 1, 0, 0, '{"name":"JS Members Search","type":"module","creationDate":"April 2015","author":"iJoomla","copyright":"Copyright (C) 2008 - 2015 iJoomla. All rights reserved.","authorEmail":"support@jomsocial.com","authorUrl":"http:\\/\\/jomsocial.com","version":"4.5.2","description":"Member search module for JomSocial","group":"","filename":"mod_community_memberssearch"}', '{"search_layout":"0","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10122, 0, 'JS Nearby Events Search', 'module', 'mod_community_nearbyevents', '', 0, 1, 0, 0, '{"name":"JS Nearby Events Search","type":"module","creationDate":"April 2015","author":"iJoomla","copyright":"Copyright (C) 2008 - 2015 JomSocial. All rights reserved.","authorEmail":"support@jomsocial.com","authorUrl":"http:\\/\\/www.jomsocial.com","version":"4.5.2","description":"Nearby events search module for JomSocial","group":"","filename":"mod_community_nearbyevents"}', '{"event_nearby_radius":"10","eventradiusmeasure":"miles","auto_detect_location":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10123, 0, 'JS Notifications', 'module', 'mod_community_notifications', '', 0, 1, 0, 0, '{"name":"JS Notifications","type":"module","creationDate":"June 2015","author":"iJoomla","copyright":"Copyright (C) 2008 - 2015 iJoomla. All rights reserved.","authorEmail":"support@jomsocial.com","authorUrl":"http:\\/\\/jomsocial.com","version":"4.5.2","description":"Notifications module for JomSocial","group":"","filename":"mod_community_notifications"}', '{"show_notification":"1","show_privatemsg":"1","show_request":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10124, 0, 'JS Photo Comments', 'module', 'mod_community_photocomments', '', 0, 1, 0, 0, '{"name":"JS Photo Comments","type":"module","creationDate":"June 2015","author":"iJoomla","copyright":"Copyright (C) 2008 - 2015 iJoomla. All rights reserved.","authorEmail":"support@jomsocial.com","authorUrl":"http:\\/\\/jomsocial.com","version":"4.5.2","description":"Photo comments module for JomSocial","group":"","filename":"mod_community_photocomments"}', '{"album_type":"0","show_image":"1","limit":"10","char_limit":"50","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10125, 0, 'JS Photos', 'module', 'mod_community_photos', '', 0, 1, 0, 0, '{"name":"JS Photos","type":"module","creationDate":"April 2015","author":"iJoomla","copyright":"Copyright (C) 2008 - 2015 iJoomla. All rights reserved.","authorEmail":"support@jomsocial.com","authorUrl":"http:\\/\\/jomsocial.com","version":"4.5.2","description":"Photo module for JomSocial","group":"","filename":"mod_community_photos"}', '{"display_type":"1","category_type":"0","filter_by":"0","limit":"20","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10126, 0, 'JS Statistics', 'module', 'mod_community_statistics', '', 0, 1, 0, 0, '{"name":"JS Statistics","type":"module","creationDate":"June 2015","author":"iJoomla","copyright":"Copyright (C) 2008 - 2015 iJoomla. All rights reserved.","authorEmail":"support@jomsocial.com","authorUrl":"http:\\/\\/jomsocial.com","version":"4.5.2","description":"Statistics module for JomSocial","group":"","filename":"mod_community_statistics"}', '{"show_groups":"1","show_discussions":"1","show_announcements":"1","show_upcoming_events":"1","show_albums":"1","show_photos":"1","show_videos":"1","show_activities":"1","show_walls":"1","show_members":"1","show_males":"1","show_females":"1","show_unspecified":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10127, 0, 'JS Top Members', 'module', 'mod_community_topmembers', '', 0, 1, 0, 0, '{"name":"JS Top Members","type":"module","creationDate":"June 2015","author":"iJoomla","copyright":"Copyright (C) 2008 - 2015 iJoomla. All rights reserved.","authorEmail":"support@jomsocial.com","authorUrl":"http:\\/\\/jomsocial.com","version":"4.5.2","description":"Top Members module for JomSocial","group":"","filename":"mod_community_topmembers"}', '{"sort_by":"0","timespan":"0","custom_days":"7","limit":"10","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10128, 0, 'JS Video Comments', 'module', 'mod_community_videocomments', '', 0, 1, 0, 0, '{"name":"JS Video Comments","type":"module","creationDate":"June 2015","author":"iJoomla","copyright":"Copyright (C) 2008 - 2015 iJoomla. All rights reserved.","authorEmail":"support@jomsocial.com","authorUrl":"http:\\/\\/jomsocial.com","version":"4.5.2","description":"Video comments module for JomSocial","group":"","filename":"mod_community_videocomments"}', '{"video_type":"0","show_image":"2","limit":"10","char_limit":"50","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10129, 0, 'JS Videos', 'module', 'mod_community_videos', '', 0, 1, 0, 0, '{"name":"JS Videos","type":"module","creationDate":"June 2015","author":"iJoomla","copyright":"Copyright (C) 2008 - 2015 iJoomla. All rights reserved.","authorEmail":"support@jomsocial.com","authorUrl":"http:\\/\\/jomsocial.com","version":"4.5.2","description":"Videos module for JomSocial","group":"","filename":"mod_community_videos"}', '{"category_type":"0","filter_by":"0","limit":"6","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10130, 0, 'Flat', 'template', 'flat', '', 0, 1, 1, 0, '{"name":"Flat","type":"template","creationDate":"June 2017","author":"JomSocial Team","copyright":"Copyright 2008 - 2017 by Slashes & Dots Sdn Bhd. All rights reserved","authorEmail":"support@azrul.com","authorUrl":"http:\\/\\/www.jomsocial.com","version":"1.0.2","description":"Flat JomSocial theme is special additional theme for JomSocial using flat design style.","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10131, 10146, 'Cobalt [1] - Plugin - Integration - JoomSocial', 'plugin', 'cobalt1', 'community', 0, 1, 7, 0, '{"name":"Cobalt [1] - Plugin - Integration - JoomSocial","type":"plugin","creationDate":"October 15 2012","author":"MintJoomla","copyright":"MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.64","description":"\\n\\t\\t Cobalt 8 \\n\\t","group":"","filename":"cobalt1"}', '{"section_id":"1","coreapp":"0","cache":"1","position":"content","charlimit":"0","view_tmpl":"default.php","types":["1"],"orderby":"r.ctime DESC","list_type":["created"],"tmpl":"","limit":"5","vw_created":"Created","vw_favorited":"Bookmarked","vw_rated":"Rated","vw_commented":"Commented","vw_visited":"Visited","vw_follow":"Follow","btn_section_enable":"1","btn_section":"\\u0414\\u043e\\u043c\\u0430\\u0448\\u043d\\u044f\\u044f","btn_user_enable":"1","btn_user":"\\u0412\\u0441\\u0435 \\u0441\\u043e\\u0431\\u0430\\u043a\\u0438 \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044f","toolbar":"1","toolbar_main_lbl":"\\u0414\\u043e\\u0431\\u0430\\u0432\\u0438\\u0442\\u044c","tshow_new":"0","type_id":["1"],"tshow_created":"1","tshow_favorited":"0","tshow_rated":"0","tshow_commented":"0","tshow_visited":"0","tshow_follow":"0","tlbl_new":"\\u0414\\u043e\\u0431\\u0430\\u0432\\u0438\\u0442\\u044c %s","tlbl_created":"\\u0414\\u043e\\u0431\\u0430\\u0432\\u0438\\u0442\\u044c \\u0421\\u043e\\u0431\\u0430\\u043a\\u0443","tlbl_favorited":"\\u0412 \\u0437\\u0430\\u043a\\u043b\\u0430\\u0434\\u043a\\u0430\\u0445","tlbl_rated":"\\u041e\\u0446\\u0435\\u043d\\u0435\\u043d\\u043e","tlbl_commented":"\\u041a\\u043e\\u043c\\u043c\\u0435\\u043d\\u0442\\u0430\\u0440\\u0438\\u0438","tlbl_visited":"\\u041f\\u043e\\u0441\\u0435\\u0449\\u0435\\u043d\\u043e","tlbl_follow":"\\u0421\\u043b\\u0435\\u0434\\u044f\\u0442","icon_new":"plus.png","icon_created":"plus.png","icon_favorited":"bookmark.png","icon_rated":"star.png","icon_commented":"balloon-left.png","icon_visited":"hand-point-090.png","icon_follow":"follow1.png"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10132, 10146, 'Cobalt [2] - Plugin - Integration - JoomSocial', 'plugin', 'cobalt2', 'community', 0, 0, 1, 0, '{"name":"Cobalt [2] - Plugin - Integration - JoomSocial","type":"plugin","creationDate":"October 15 2012","author":"MintJoomla","copyright":"MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.64","description":"\\n\\t\\t Cobalt 8 \\n\\t","group":"","filename":"cobalt2"}', '{"section_id":"","coreapp":"0","cache":"1","position":"content","charlimit":"0","view_tmpl":"default.php","types":"","orderby":"r.ctime DESC","list_type":"created","tmpl":"","limit":"5","vw_created":"Created","vw_favorited":"Bookmarked","vw_rated":"Rated","vw_commented":"Commented","vw_visited":"Visited","vw_follow":"Follow","btn_section_enable":"1","btn_section":"Section home","btn_user_enable":"1","btn_user":"All user atricles","toolbar":"1","toolbar_main_lbl":"Cobalt","tshow_new":"1","type_id":"","tshow_created":"1","tshow_favorited":"1","tshow_rated":"1","tshow_commented":"1","tshow_visited":"1","tshow_follow":"1","tlbl_new":"Add new %s","tlbl_created":"Created","tlbl_favorited":"Bookmarked","tlbl_rated":"Rated","tlbl_commented":"Commented","tlbl_visited":"Visited","tlbl_follow":"Follow","icon_new":"plus.png","icon_created":"plus.png","icon_favorited":"bookmark.png","icon_rated":"star.png","icon_commented":"balloon-left.png","icon_visited":"hand-point-090.png","icon_follow":"follow1.png"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10133, 10146, 'Cobalt [3] - Plugin - Integration - JoomSocial', 'plugin', 'cobalt3', 'community', 0, 0, 1, 0, '{"name":"Cobalt [3] - Plugin - Integration - JoomSocial","type":"plugin","creationDate":"October 15 2012","author":"MintJoomla","copyright":"MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.64","description":"\\n\\t\\t Cobalt 8 \\n\\t","group":"","filename":"cobalt3"}', '{"section_id":"","coreapp":"0","cache":"1","position":"content","charlimit":"0","view_tmpl":"default.php","types":"","orderby":"r.ctime DESC","list_type":"created","tmpl":"","limit":"5","vw_created":"Created","vw_favorited":"Bookmarked","vw_rated":"Rated","vw_commented":"Commented","vw_visited":"Visited","vw_follow":"Follow","btn_section_enable":"1","btn_section":"Section home","btn_user_enable":"1","btn_user":"All user atricles","toolbar":"1","toolbar_main_lbl":"Cobalt","tshow_new":"1","type_id":"","tshow_created":"1","tshow_favorited":"1","tshow_rated":"1","tshow_commented":"1","tshow_visited":"1","tshow_follow":"1","tlbl_new":"Add new %s","tlbl_created":"Created","tlbl_favorited":"Bookmarked","tlbl_rated":"Rated","tlbl_commented":"Commented","tlbl_visited":"Visited","tlbl_follow":"Follow","icon_new":"plus.png","icon_created":"plus.png","icon_favorited":"bookmark.png","icon_rated":"star.png","icon_commented":"balloon-left.png","icon_visited":"hand-point-090.png","icon_follow":"follow1.png"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10134, 10146, 'Cobalt [4] - Plugin - Integration - JoomSocial', 'plugin', 'cobalt4', 'community', 0, 0, 1, 0, '{"name":"Cobalt [4] - Plugin - Integration - JoomSocial","type":"plugin","creationDate":"October 15 2012","author":"MintJoomla","copyright":"MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.64","description":"\\n\\t\\t Cobalt 8 \\n\\t","group":"","filename":"cobalt4"}', '{"section_id":"","coreapp":"0","cache":"1","position":"content","charlimit":"0","view_tmpl":"default.php","types":"","orderby":"r.ctime DESC","list_type":"created","tmpl":"","limit":"5","vw_created":"Created","vw_favorited":"Bookmarked","vw_rated":"Rated","vw_commented":"Commented","vw_visited":"Visited","vw_follow":"Follow","btn_section_enable":"1","btn_section":"Section home","btn_user_enable":"1","btn_user":"All user atricles","toolbar":"1","toolbar_main_lbl":"Cobalt","tshow_new":"1","type_id":"","tshow_created":"1","tshow_favorited":"1","tshow_rated":"1","tshow_commented":"1","tshow_visited":"1","tshow_follow":"1","tlbl_new":"Add new %s","tlbl_created":"Created","tlbl_favorited":"Bookmarked","tlbl_rated":"Rated","tlbl_commented":"Commented","tlbl_visited":"Visited","tlbl_follow":"Follow","icon_new":"plus.png","icon_created":"plus.png","icon_favorited":"bookmark.png","icon_rated":"star.png","icon_commented":"balloon-left.png","icon_visited":"hand-point-090.png","icon_follow":"follow1.png"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10135, 10146, 'Cobalt [5] - Plugin - Integration - JoomSocial', 'plugin', 'cobalt5', 'community', 0, 0, 1, 0, '{"name":"Cobalt [5] - Plugin - Integration - JoomSocial","type":"plugin","creationDate":"October 15 2012","author":"MintJoomla","copyright":"MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.64","description":"\\n\\t\\t Cobalt 8 \\n\\t","group":"","filename":"cobalt5"}', '{"section_id":"","coreapp":"0","cache":"1","position":"content","charlimit":"0","view_tmpl":"default.php","types":"","orderby":"r.ctime DESC","list_type":"created","tmpl":"","limit":"5","vw_created":"Created","vw_favorited":"Bookmarked","vw_rated":"Rated","vw_commented":"Commented","vw_visited":"Visited","vw_follow":"Follow","btn_section_enable":"1","btn_section":"Section home","btn_user_enable":"1","btn_user":"All user atricles","toolbar":"1","toolbar_main_lbl":"Cobalt","tshow_new":"1","type_id":"","tshow_created":"1","tshow_favorited":"1","tshow_rated":"1","tshow_commented":"1","tshow_visited":"1","tshow_follow":"1","tlbl_new":"Add new %s","tlbl_created":"Created","tlbl_favorited":"Bookmarked","tlbl_rated":"Rated","tlbl_commented":"Commented","tlbl_visited":"Visited","tlbl_follow":"Follow","icon_new":"plus.png","icon_created":"plus.png","icon_favorited":"bookmark.png","icon_rated":"star.png","icon_commented":"balloon-left.png","icon_visited":"hand-point-090.png","icon_follow":"follow1.png"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10136, 10146, 'Cobalt [6] - Plugin - Integration - JoomSocial', 'plugin', 'cobalt6', 'community', 0, 0, 1, 0, '{"name":"Cobalt [6] - Plugin - Integration - JoomSocial","type":"plugin","creationDate":"October 15 2012","author":"MintJoomla","copyright":"MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.64","description":"\\n\\t\\t Cobalt 8 \\n\\t","group":"","filename":"cobalt6"}', '{"section_id":"","coreapp":"0","cache":"1","position":"content","charlimit":"0","view_tmpl":"default.php","types":"","orderby":"r.ctime DESC","list_type":"created","tmpl":"","limit":"5","vw_created":"Created","vw_favorited":"Bookmarked","vw_rated":"Rated","vw_commented":"Commented","vw_visited":"Visited","vw_follow":"Follow","btn_section_enable":"1","btn_section":"Section home","btn_user_enable":"1","btn_user":"All user atricles","toolbar":"1","toolbar_main_lbl":"Cobalt","tshow_new":"1","type_id":"","tshow_created":"1","tshow_favorited":"1","tshow_rated":"1","tshow_commented":"1","tshow_visited":"1","tshow_follow":"1","tlbl_new":"Add new %s","tlbl_created":"Created","tlbl_favorited":"Bookmarked","tlbl_rated":"Rated","tlbl_commented":"Commented","tlbl_visited":"Visited","tlbl_follow":"Follow","icon_new":"plus.png","icon_created":"plus.png","icon_favorited":"bookmark.png","icon_rated":"star.png","icon_commented":"balloon-left.png","icon_visited":"hand-point-090.png","icon_follow":"follow1.png"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10137, 10146, 'Cobalt [7] - Plugin - Integration - JoomSocial', 'plugin', 'cobalt7', 'community', 0, 0, 1, 0, '{"name":"Cobalt [7] - Plugin - Integration - JoomSocial","type":"plugin","creationDate":"October 15 2012","author":"MintJoomla","copyright":"MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.64","description":"\\n\\t\\t Cobalt 8 \\n\\t","group":"","filename":"cobalt7"}', '{"section_id":"","coreapp":"0","cache":"1","position":"content","charlimit":"0","view_tmpl":"default.php","types":"","orderby":"r.ctime DESC","list_type":"created","tmpl":"","limit":"5","vw_created":"Created","vw_favorited":"Bookmarked","vw_rated":"Rated","vw_commented":"Commented","vw_visited":"Visited","vw_follow":"Follow","btn_section_enable":"1","btn_section":"Section home","btn_user_enable":"1","btn_user":"All user atricles","toolbar":"1","toolbar_main_lbl":"Cobalt","tshow_new":"1","type_id":"","tshow_created":"1","tshow_favorited":"1","tshow_rated":"1","tshow_commented":"1","tshow_visited":"1","tshow_follow":"1","tlbl_new":"Add new %s","tlbl_created":"Created","tlbl_favorited":"Bookmarked","tlbl_rated":"Rated","tlbl_commented":"Commented","tlbl_visited":"Visited","tlbl_follow":"Follow","icon_new":"plus.png","icon_created":"plus.png","icon_favorited":"bookmark.png","icon_rated":"star.png","icon_commented":"balloon-left.png","icon_visited":"hand-point-090.png","icon_follow":"follow1.png"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10138, 10146, 'Cobalt [8] - Plugin - Integration - JoomSocial', 'plugin', 'cobalt8', 'community', 0, 0, 1, 0, '{"name":"Cobalt [8] - Plugin - Integration - JoomSocial","type":"plugin","creationDate":"October 15 2012","author":"MintJoomla","copyright":"MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.64","description":"\\n\\t\\t Cobalt 8 \\n\\t","group":"","filename":"cobalt8"}', '{"section_id":"","coreapp":"0","cache":"1","position":"content","charlimit":"0","view_tmpl":"default.php","types":"","orderby":"r.ctime DESC","list_type":"created","tmpl":"","limit":"5","vw_created":"Created","vw_favorited":"Bookmarked","vw_rated":"Rated","vw_commented":"Commented","vw_visited":"Visited","vw_follow":"Follow","btn_section_enable":"1","btn_section":"Section home","btn_user_enable":"1","btn_user":"All user atricles","toolbar":"1","toolbar_main_lbl":"Cobalt","tshow_new":"1","type_id":"","tshow_created":"1","tshow_favorited":"1","tshow_rated":"1","tshow_commented":"1","tshow_visited":"1","tshow_follow":"1","tlbl_new":"Add new %s","tlbl_created":"Created","tlbl_favorited":"Bookmarked","tlbl_rated":"Rated","tlbl_commented":"Commented","tlbl_visited":"Visited","tlbl_follow":"Follow","icon_new":"plus.png","icon_created":"plus.png","icon_favorited":"bookmark.png","icon_rated":"star.png","icon_commented":"balloon-left.png","icon_visited":"hand-point-090.png","icon_follow":"follow1.png"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10139, 10146, 'Cobalt [9] - Plugin - Integration - JoomSocial', 'plugin', 'cobalt9', 'community', 0, 0, 1, 0, '{"name":"Cobalt [9] - Plugin - Integration - JoomSocial","type":"plugin","creationDate":"October 15 2012","author":"MintJoomla","copyright":"MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.64","description":"\\n\\t\\t Cobalt 8 \\n\\t","group":"","filename":"cobalt9"}', '{"section_id":"","coreapp":"0","cache":"1","position":"content","charlimit":"0","view_tmpl":"default.php","types":"","orderby":"r.ctime DESC","list_type":"created","tmpl":"","limit":"5","vw_created":"Created","vw_favorited":"Bookmarked","vw_rated":"Rated","vw_commented":"Commented","vw_visited":"Visited","vw_follow":"Follow","btn_section_enable":"1","btn_section":"Section home","btn_user_enable":"1","btn_user":"All user atricles","toolbar":"1","toolbar_main_lbl":"Cobalt","tshow_new":"1","type_id":"","tshow_created":"1","tshow_favorited":"1","tshow_rated":"1","tshow_commented":"1","tshow_visited":"1","tshow_follow":"1","tlbl_new":"Add new %s","tlbl_created":"Created","tlbl_favorited":"Bookmarked","tlbl_rated":"Rated","tlbl_commented":"Commented","tlbl_visited":"Visited","tlbl_follow":"Follow","icon_new":"plus.png","icon_created":"plus.png","icon_favorited":"bookmark.png","icon_rated":"star.png","icon_commented":"balloon-left.png","icon_visited":"hand-point-090.png","icon_follow":"follow1.png"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10140, 10146, 'Cobalt [10] - Plugin - Integration - JoomSocial', 'plugin', 'cobalt10', 'community', 0, 0, 1, 0, '{"name":"Cobalt [10] - Plugin - Integration - JoomSocial","type":"plugin","creationDate":"October 15 2012","author":"MintJoomla","copyright":"MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.64","description":"\\n\\t\\t Cobalt 8 \\n\\t","group":"","filename":"cobalt10"}', '{"section_id":"","coreapp":"0","cache":"1","position":"content","charlimit":"0","view_tmpl":"default.php","types":"","orderby":"r.ctime DESC","list_type":"created","tmpl":"","limit":"5","vw_created":"Created","vw_favorited":"Bookmarked","vw_rated":"Rated","vw_commented":"Commented","vw_visited":"Visited","vw_follow":"Follow","btn_section_enable":"1","btn_section":"Section home","btn_user_enable":"1","btn_user":"All user atricles","toolbar":"1","toolbar_main_lbl":"Cobalt","tshow_new":"1","type_id":"","tshow_created":"1","tshow_favorited":"1","tshow_rated":"1","tshow_commented":"1","tshow_visited":"1","tshow_follow":"1","tlbl_new":"Add new %s","tlbl_created":"Created","tlbl_favorited":"Bookmarked","tlbl_rated":"Rated","tlbl_commented":"Commented","tlbl_visited":"Visited","tlbl_follow":"Follow","icon_new":"plus.png","icon_created":"plus.png","icon_favorited":"bookmark.png","icon_rated":"star.png","icon_commented":"balloon-left.png","icon_visited":"hand-point-090.png","icon_follow":"follow1.png"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10141, 10146, 'Cobalt [11] - Plugin - Integration - JoomSocial', 'plugin', 'cobalt11', 'community', 0, 0, 1, 0, '{"name":"Cobalt [11] - Plugin - Integration - JoomSocial","type":"plugin","creationDate":"October 15 2012","author":"MintJoomla","copyright":"MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.64","description":"\\n\\t\\t Cobalt 8 \\n\\t","group":"","filename":"cobalt11"}', '{"section_id":"","coreapp":"0","cache":"1","position":"content","charlimit":"0","view_tmpl":"default.php","types":"","orderby":"r.ctime DESC","list_type":"created","tmpl":"","limit":"5","vw_created":"Created","vw_favorited":"Bookmarked","vw_rated":"Rated","vw_commented":"Commented","vw_visited":"Visited","vw_follow":"Follow","btn_section_enable":"1","btn_section":"Section home","btn_user_enable":"1","btn_user":"All user atricles","toolbar":"1","toolbar_main_lbl":"Cobalt","tshow_new":"1","type_id":"","tshow_created":"1","tshow_favorited":"1","tshow_rated":"1","tshow_commented":"1","tshow_visited":"1","tshow_follow":"1","tlbl_new":"Add new %s","tlbl_created":"Created","tlbl_favorited":"Bookmarked","tlbl_rated":"Rated","tlbl_commented":"Commented","tlbl_visited":"Visited","tlbl_follow":"Follow","icon_new":"plus.png","icon_created":"plus.png","icon_favorited":"bookmark.png","icon_rated":"star.png","icon_commented":"balloon-left.png","icon_visited":"hand-point-090.png","icon_follow":"follow1.png"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10142, 10146, 'Cobalt [12] - Plugin - Integration - JoomSocial', 'plugin', 'cobalt12', 'community', 0, 0, 1, 0, '{"name":"Cobalt [12] - Plugin - Integration - JoomSocial","type":"plugin","creationDate":"October 15 2012","author":"MintJoomla","copyright":"MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.64","description":"\\n\\t\\t Cobalt 8 \\n\\t","group":"","filename":"cobalt12"}', '{"section_id":"","coreapp":"0","cache":"1","position":"content","charlimit":"0","view_tmpl":"default.php","types":"","orderby":"r.ctime DESC","list_type":"created","tmpl":"","limit":"5","vw_created":"Created","vw_favorited":"Bookmarked","vw_rated":"Rated","vw_commented":"Commented","vw_visited":"Visited","vw_follow":"Follow","btn_section_enable":"1","btn_section":"Section home","btn_user_enable":"1","btn_user":"All user atricles","toolbar":"1","toolbar_main_lbl":"Cobalt","tshow_new":"1","type_id":"","tshow_created":"1","tshow_favorited":"1","tshow_rated":"1","tshow_commented":"1","tshow_visited":"1","tshow_follow":"1","tlbl_new":"Add new %s","tlbl_created":"Created","tlbl_favorited":"Bookmarked","tlbl_rated":"Rated","tlbl_commented":"Commented","tlbl_visited":"Visited","tlbl_follow":"Follow","icon_new":"plus.png","icon_created":"plus.png","icon_favorited":"bookmark.png","icon_rated":"star.png","icon_commented":"balloon-left.png","icon_visited":"hand-point-090.png","icon_follow":"follow1.png"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10143, 10146, 'Cobalt [13] - Plugin - Integration - JoomSocial', 'plugin', 'cobalt13', 'community', 0, 0, 1, 0, '{"name":"Cobalt [13] - Plugin - Integration - JoomSocial","type":"plugin","creationDate":"October 15 2012","author":"MintJoomla","copyright":"MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.64","description":"\\n\\t\\t Cobalt 8 \\n\\t","group":"","filename":"cobalt13"}', '{"section_id":"","coreapp":"0","cache":"1","position":"content","charlimit":"0","view_tmpl":"default.php","types":"","orderby":"r.ctime DESC","list_type":"created","tmpl":"","limit":"5","vw_created":"Created","vw_favorited":"Bookmarked","vw_rated":"Rated","vw_commented":"Commented","vw_visited":"Visited","vw_follow":"Follow","btn_section_enable":"1","btn_section":"Section home","btn_user_enable":"1","btn_user":"All user atricles","toolbar":"1","toolbar_main_lbl":"Cobalt","tshow_new":"1","type_id":"","tshow_created":"1","tshow_favorited":"1","tshow_rated":"1","tshow_commented":"1","tshow_visited":"1","tshow_follow":"1","tlbl_new":"Add new %s","tlbl_created":"Created","tlbl_favorited":"Bookmarked","tlbl_rated":"Rated","tlbl_commented":"Commented","tlbl_visited":"Visited","tlbl_follow":"Follow","icon_new":"plus.png","icon_created":"plus.png","icon_favorited":"bookmark.png","icon_rated":"star.png","icon_commented":"balloon-left.png","icon_visited":"hand-point-090.png","icon_follow":"follow1.png"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10144, 10146, 'Cobalt [14] - Plugin - Integration - JoomSocial', 'plugin', 'cobalt14', 'community', 0, 0, 1, 0, '{"name":"Cobalt [14] - Plugin - Integration - JoomSocial","type":"plugin","creationDate":"October 15 2012","author":"MintJoomla","copyright":"MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.64","description":"\\n\\t\\t Cobalt 8 \\n\\t","group":"","filename":"cobalt14"}', '{"section_id":"","coreapp":"0","cache":"1","position":"content","charlimit":"0","view_tmpl":"default.php","types":"","orderby":"r.ctime DESC","list_type":"created","tmpl":"","limit":"5","vw_created":"Created","vw_favorited":"Bookmarked","vw_rated":"Rated","vw_commented":"Commented","vw_visited":"Visited","vw_follow":"Follow","btn_section_enable":"1","btn_section":"Section home","btn_user_enable":"1","btn_user":"All user atricles","toolbar":"1","toolbar_main_lbl":"Cobalt","tshow_new":"1","type_id":"","tshow_created":"1","tshow_favorited":"1","tshow_rated":"1","tshow_commented":"1","tshow_visited":"1","tshow_follow":"1","tlbl_new":"Add new %s","tlbl_created":"Created","tlbl_favorited":"Bookmarked","tlbl_rated":"Rated","tlbl_commented":"Commented","tlbl_visited":"Visited","tlbl_follow":"Follow","icon_new":"plus.png","icon_created":"plus.png","icon_favorited":"bookmark.png","icon_rated":"star.png","icon_commented":"balloon-left.png","icon_visited":"hand-point-090.png","icon_follow":"follow1.png"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10145, 10146, 'Cobalt - Plugin - JomSocial', 'plugin', 'jomsocial', 'mint', 0, 0, 1, 0, '{"name":"Cobalt - Plugin - JomSocial","type":"plugin","creationDate":"February 17 2009","author":"MintJoomla","copyright":"MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.64","description":"\\n\\t This is plugin integrates Cobalt and JomSocial activity and karma \\n\\t","group":"","filename":"jomsocial"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10146, 0, 'Cobalt - Package - All', 'package', 'pkg_cobaltjomsocial', '', 0, 1, 1, 0, '{"name":"Cobalt - Package - All","type":"package","creationDate":"\\u041d\\u0435\\u0438\\u0437\\u0432\\u0435\\u0441\\u0442\\u043d\\u044b\\u0439","author":"\\u041d\\u0435\\u0438\\u0437\\u0432\\u0435\\u0441\\u0442\\u043d\\u044b\\u0439","copyright":"","authorEmail":"","authorUrl":"","version":"8.64","description":"\\n\\t\\t<div class=\\"hero-unit\\" style=\\"text-align: left;\\">\\n\\t\\t\\t<h1>Cobalt 8 CCK <small><b>Jom<\\/b>Social<\\/small><\\/h1>\\n\\t\\t\\t<p>Complete JomSocial integration for Cobalt 8 CCK.\\n\\t\\t<\\/div>\\n\\t\\t<div class=\\"alert alert-warning\\">Do not forget to publish all plugins<\\/div>\\n\\t\\t<div class=\\"well\\" style=\\"text-align:left;\\">\\n\\t\\t\\t<h2>You have successfully installed!<\\/h2>\\n\\t\\t\\t<ul>\\n\\t\\t\\t\\t<li>9 JoomSocial profile plugins to show Coablt content in user profile and toolbar menu.<\\/li>\\n\\t\\t\\t\\t<li>1 Coablt event integration plugin to integrate karma and activity.<\\/li>\\n\\t\\t\\t<\\/ul>\\n\\t\\t\\t<h2>Cobalt 8 Built-in!<\\/h2>\\n\\t\\t\\t<p>You have already built-in to Coablt avatar, message, online status and link to profile integration for free.\\n\\t\\t<\\/div>\\n\\t\\t<br><br>\\n\\t","group":"","filename":"pkg_cobaltjomsocial"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
/*!40000 ALTER TABLE `gy3te_extensions` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_fields
CREATE TABLE IF NOT EXISTS `gy3te_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `default_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldparams` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_created_user_id` (`created_user_id`),
  KEY `idx_access` (`access`),
  KEY `idx_context` (`context`(191)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogsinfo.gy3te_fields: ~0 rows (приблизительно)
DELETE FROM `gy3te_fields`;
/*!40000 ALTER TABLE `gy3te_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_fields` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_fields_categories
CREATE TABLE IF NOT EXISTS `gy3te_fields_categories` (
  `field_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`field_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogsinfo.gy3te_fields_categories: ~0 rows (приблизительно)
DELETE FROM `gy3te_fields_categories`;
/*!40000 ALTER TABLE `gy3te_fields_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_fields_categories` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_fields_groups
CREATE TABLE IF NOT EXISTS `gy3te_fields_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_created_by` (`created_by`),
  KEY `idx_access` (`access`),
  KEY `idx_context` (`context`(191)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogsinfo.gy3te_fields_groups: ~0 rows (приблизительно)
DELETE FROM `gy3te_fields_groups`;
/*!40000 ALTER TABLE `gy3te_fields_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_fields_groups` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_fields_values
CREATE TABLE IF NOT EXISTS `gy3te_fields_values` (
  `field_id` int(10) unsigned NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `idx_field_id` (`field_id`),
  KEY `idx_item_id` (`item_id`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogsinfo.gy3te_fields_values: ~0 rows (приблизительно)
DELETE FROM `gy3te_fields_values`;
/*!40000 ALTER TABLE `gy3te_fields_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_fields_values` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_finder_filters
CREATE TABLE IF NOT EXISTS `gy3te_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы prodogsinfo.gy3te_finder_filters: ~0 rows (приблизительно)
DELETE FROM `gy3te_finder_filters`;
/*!40000 ALTER TABLE `gy3te_finder_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_finder_filters` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_finder_links
CREATE TABLE IF NOT EXISTS `gy3te_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` text,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`(100)),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы prodogsinfo.gy3te_finder_links: ~0 rows (приблизительно)
DELETE FROM `gy3te_finder_links`;
/*!40000 ALTER TABLE `gy3te_finder_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_finder_links` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_finder_links_terms0
CREATE TABLE IF NOT EXISTS `gy3te_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы prodogsinfo.gy3te_finder_links_terms0: ~0 rows (приблизительно)
DELETE FROM `gy3te_finder_links_terms0`;
/*!40000 ALTER TABLE `gy3te_finder_links_terms0` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_finder_links_terms0` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_finder_links_terms1
CREATE TABLE IF NOT EXISTS `gy3te_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы prodogsinfo.gy3te_finder_links_terms1: ~0 rows (приблизительно)
DELETE FROM `gy3te_finder_links_terms1`;
/*!40000 ALTER TABLE `gy3te_finder_links_terms1` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_finder_links_terms1` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_finder_links_terms2
CREATE TABLE IF NOT EXISTS `gy3te_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы prodogsinfo.gy3te_finder_links_terms2: ~0 rows (приблизительно)
DELETE FROM `gy3te_finder_links_terms2`;
/*!40000 ALTER TABLE `gy3te_finder_links_terms2` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_finder_links_terms2` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_finder_links_terms3
CREATE TABLE IF NOT EXISTS `gy3te_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы prodogsinfo.gy3te_finder_links_terms3: ~0 rows (приблизительно)
DELETE FROM `gy3te_finder_links_terms3`;
/*!40000 ALTER TABLE `gy3te_finder_links_terms3` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_finder_links_terms3` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_finder_links_terms4
CREATE TABLE IF NOT EXISTS `gy3te_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы prodogsinfo.gy3te_finder_links_terms4: ~0 rows (приблизительно)
DELETE FROM `gy3te_finder_links_terms4`;
/*!40000 ALTER TABLE `gy3te_finder_links_terms4` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_finder_links_terms4` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_finder_links_terms5
CREATE TABLE IF NOT EXISTS `gy3te_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы prodogsinfo.gy3te_finder_links_terms5: ~0 rows (приблизительно)
DELETE FROM `gy3te_finder_links_terms5`;
/*!40000 ALTER TABLE `gy3te_finder_links_terms5` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_finder_links_terms5` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_finder_links_terms6
CREATE TABLE IF NOT EXISTS `gy3te_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы prodogsinfo.gy3te_finder_links_terms6: ~0 rows (приблизительно)
DELETE FROM `gy3te_finder_links_terms6`;
/*!40000 ALTER TABLE `gy3te_finder_links_terms6` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_finder_links_terms6` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_finder_links_terms7
CREATE TABLE IF NOT EXISTS `gy3te_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы prodogsinfo.gy3te_finder_links_terms7: ~0 rows (приблизительно)
DELETE FROM `gy3te_finder_links_terms7`;
/*!40000 ALTER TABLE `gy3te_finder_links_terms7` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_finder_links_terms7` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_finder_links_terms8
CREATE TABLE IF NOT EXISTS `gy3te_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы prodogsinfo.gy3te_finder_links_terms8: ~0 rows (приблизительно)
DELETE FROM `gy3te_finder_links_terms8`;
/*!40000 ALTER TABLE `gy3te_finder_links_terms8` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_finder_links_terms8` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_finder_links_terms9
CREATE TABLE IF NOT EXISTS `gy3te_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы prodogsinfo.gy3te_finder_links_terms9: ~0 rows (приблизительно)
DELETE FROM `gy3te_finder_links_terms9`;
/*!40000 ALTER TABLE `gy3te_finder_links_terms9` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_finder_links_terms9` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_finder_links_termsa
CREATE TABLE IF NOT EXISTS `gy3te_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы prodogsinfo.gy3te_finder_links_termsa: ~0 rows (приблизительно)
DELETE FROM `gy3te_finder_links_termsa`;
/*!40000 ALTER TABLE `gy3te_finder_links_termsa` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_finder_links_termsa` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_finder_links_termsb
CREATE TABLE IF NOT EXISTS `gy3te_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы prodogsinfo.gy3te_finder_links_termsb: ~0 rows (приблизительно)
DELETE FROM `gy3te_finder_links_termsb`;
/*!40000 ALTER TABLE `gy3te_finder_links_termsb` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_finder_links_termsb` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_finder_links_termsc
CREATE TABLE IF NOT EXISTS `gy3te_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы prodogsinfo.gy3te_finder_links_termsc: ~0 rows (приблизительно)
DELETE FROM `gy3te_finder_links_termsc`;
/*!40000 ALTER TABLE `gy3te_finder_links_termsc` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_finder_links_termsc` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_finder_links_termsd
CREATE TABLE IF NOT EXISTS `gy3te_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы prodogsinfo.gy3te_finder_links_termsd: ~0 rows (приблизительно)
DELETE FROM `gy3te_finder_links_termsd`;
/*!40000 ALTER TABLE `gy3te_finder_links_termsd` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_finder_links_termsd` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_finder_links_termse
CREATE TABLE IF NOT EXISTS `gy3te_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы prodogsinfo.gy3te_finder_links_termse: ~0 rows (приблизительно)
DELETE FROM `gy3te_finder_links_termse`;
/*!40000 ALTER TABLE `gy3te_finder_links_termse` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_finder_links_termse` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_finder_links_termsf
CREATE TABLE IF NOT EXISTS `gy3te_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы prodogsinfo.gy3te_finder_links_termsf: ~0 rows (приблизительно)
DELETE FROM `gy3te_finder_links_termsf`;
/*!40000 ALTER TABLE `gy3te_finder_links_termsf` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_finder_links_termsf` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_finder_taxonomy
CREATE TABLE IF NOT EXISTS `gy3te_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы prodogsinfo.gy3te_finder_taxonomy: ~0 rows (приблизительно)
DELETE FROM `gy3te_finder_taxonomy`;
/*!40000 ALTER TABLE `gy3te_finder_taxonomy` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_finder_taxonomy` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_finder_taxonomy_map
CREATE TABLE IF NOT EXISTS `gy3te_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы prodogsinfo.gy3te_finder_taxonomy_map: ~0 rows (приблизительно)
DELETE FROM `gy3te_finder_taxonomy_map`;
/*!40000 ALTER TABLE `gy3te_finder_taxonomy_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_finder_taxonomy_map` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_finder_terms
CREATE TABLE IF NOT EXISTS `gy3te_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы prodogsinfo.gy3te_finder_terms: ~0 rows (приблизительно)
DELETE FROM `gy3te_finder_terms`;
/*!40000 ALTER TABLE `gy3te_finder_terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_finder_terms` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_finder_terms_common
CREATE TABLE IF NOT EXISTS `gy3te_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы prodogsinfo.gy3te_finder_terms_common: ~110 rows (приблизительно)
DELETE FROM `gy3te_finder_terms_common`;
/*!40000 ALTER TABLE `gy3te_finder_terms_common` DISABLE KEYS */;
INSERT INTO `gy3te_finder_terms_common` (`term`, `language`) VALUES
	('a', 'en'),
	('about', 'en'),
	('after', 'en'),
	('ago', 'en'),
	('all', 'en'),
	('am', 'en'),
	('an', 'en'),
	('and', 'en'),
	('any', 'en'),
	('are', 'en'),
	('aren\'t', 'en'),
	('as', 'en'),
	('at', 'en'),
	('be', 'en'),
	('but', 'en'),
	('by', 'en'),
	('for', 'en'),
	('from', 'en'),
	('get', 'en'),
	('go', 'en'),
	('how', 'en'),
	('if', 'en'),
	('in', 'en'),
	('into', 'en'),
	('is', 'en'),
	('isn\'t', 'en'),
	('it', 'en'),
	('its', 'en'),
	('me', 'en'),
	('more', 'en'),
	('most', 'en'),
	('must', 'en'),
	('my', 'en'),
	('new', 'en'),
	('no', 'en'),
	('none', 'en'),
	('not', 'en'),
	('nothing', 'en'),
	('of', 'en'),
	('off', 'en'),
	('often', 'en'),
	('old', 'en'),
	('on', 'en'),
	('onc', 'en'),
	('once', 'en'),
	('only', 'en'),
	('or', 'en'),
	('other', 'en'),
	('our', 'en'),
	('ours', 'en'),
	('out', 'en'),
	('over', 'en'),
	('page', 'en'),
	('she', 'en'),
	('should', 'en'),
	('small', 'en'),
	('so', 'en'),
	('some', 'en'),
	('than', 'en'),
	('thank', 'en'),
	('that', 'en'),
	('the', 'en'),
	('their', 'en'),
	('theirs', 'en'),
	('them', 'en'),
	('then', 'en'),
	('there', 'en'),
	('these', 'en'),
	('they', 'en'),
	('this', 'en'),
	('those', 'en'),
	('thus', 'en'),
	('time', 'en'),
	('times', 'en'),
	('to', 'en'),
	('too', 'en'),
	('true', 'en'),
	('under', 'en'),
	('until', 'en'),
	('up', 'en'),
	('upon', 'en'),
	('use', 'en'),
	('user', 'en'),
	('users', 'en'),
	('version', 'en'),
	('very', 'en'),
	('via', 'en'),
	('want', 'en'),
	('was', 'en'),
	('way', 'en'),
	('were', 'en'),
	('what', 'en'),
	('when', 'en'),
	('where', 'en'),
	('which', 'en'),
	('who', 'en'),
	('whom', 'en'),
	('whose', 'en'),
	('why', 'en'),
	('wide', 'en'),
	('will', 'en'),
	('with', 'en'),
	('within', 'en'),
	('without', 'en'),
	('would', 'en'),
	('yes', 'en'),
	('yet', 'en'),
	('you', 'en'),
	('your', 'en'),
	('yours', 'en');
/*!40000 ALTER TABLE `gy3te_finder_terms_common` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_finder_tokens
CREATE TABLE IF NOT EXISTS `gy3te_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы prodogsinfo.gy3te_finder_tokens: 0 rows
DELETE FROM `gy3te_finder_tokens`;
/*!40000 ALTER TABLE `gy3te_finder_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_finder_tokens` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_finder_tokens_aggregate
CREATE TABLE IF NOT EXISTS `gy3te_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы prodogsinfo.gy3te_finder_tokens_aggregate: 0 rows
DELETE FROM `gy3te_finder_tokens_aggregate`;
/*!40000 ALTER TABLE `gy3te_finder_tokens_aggregate` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_finder_tokens_aggregate` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_finder_types
CREATE TABLE IF NOT EXISTS `gy3te_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы prodogsinfo.gy3te_finder_types: ~0 rows (приблизительно)
DELETE FROM `gy3te_finder_types`;
/*!40000 ALTER TABLE `gy3te_finder_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_finder_types` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_js_ip_2_country
CREATE TABLE IF NOT EXISTS `gy3te_js_ip_2_country` (
  `ip_from` int(10) NOT NULL DEFAULT '0',
  `ip_to` int(10) NOT NULL DEFAULT '0',
  `short_code` varchar(2) NOT NULL DEFAULT '',
  `code` varchar(3) NOT NULL DEFAULT '',
  `country` varchar(100) NOT NULL DEFAULT '',
  KEY `0` (`ip_from`),
  KEY `1` (`ip_to`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_js_ip_2_country: 0 rows
DELETE FROM `gy3te_js_ip_2_country`;
/*!40000 ALTER TABLE `gy3te_js_ip_2_country` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_js_ip_2_country` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_js_res_audit_log
CREATE TABLE IF NOT EXISTS `gy3te_js_res_audit_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `record_id` int(11) NOT NULL DEFAULT '0',
  `section_id` int(11) NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL DEFAULT '0',
  `comment_id` int(11) DEFAULT '0',
  `field_id` int(11) DEFAULT '0',
  `event` tinyint(3) NOT NULL DEFAULT '0',
  `ctime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip` varchar(16) NOT NULL DEFAULT 'Not detected',
  `params` text,
  PRIMARY KEY (`id`),
  KEY `idx_record` (`record_id`),
  KEY `idx_section` (`section_id`),
  KEY `idx_type` (`type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_js_res_audit_log: 0 rows
DELETE FROM `gy3te_js_res_audit_log`;
/*!40000 ALTER TABLE `gy3te_js_res_audit_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_js_res_audit_log` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_js_res_audit_restore
CREATE TABLE IF NOT EXISTS `gy3te_js_res_audit_restore` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `record_id` int(11) DEFAULT '0',
  `dtime` datetime DEFAULT '0000-00-00 00:00:00',
  `comments` longtext,
  `favorites` text,
  `files` text,
  `hits` text,
  `subscriptions` text,
  `votes` text,
  `notifications` text,
  `type_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_record` (`record_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_js_res_audit_restore: 0 rows
DELETE FROM `gy3te_js_res_audit_restore`;
/*!40000 ALTER TABLE `gy3te_js_res_audit_restore` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_js_res_audit_restore` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_js_res_audit_versions
CREATE TABLE IF NOT EXISTS `gy3te_js_res_audit_versions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `record_id` int(11) NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL DEFAULT '',
  `ctime` datetime DEFAULT '0000-00-00 00:00:00',
  `version` int(10) NOT NULL DEFAULT '0',
  `record_serial` longtext NOT NULL,
  `values_serial` longtext NOT NULL,
  `category_serial` longtext NOT NULL,
  `tags_serial` longtext,
  `ip` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_rec` (`record_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_js_res_audit_versions: 0 rows
DELETE FROM `gy3te_js_res_audit_versions`;
/*!40000 ALTER TABLE `gy3te_js_res_audit_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_js_res_audit_versions` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_js_res_categories
CREATE TABLE IF NOT EXISTS `gy3te_js_res_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) NOT NULL DEFAULT '0',
  `parent_id` int(10) NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `section_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(5120) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` tinyint(3) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL DEFAULT '',
  `metakey` varchar(1024) NOT NULL DEFAULT '',
  `metadata` varchar(2048) NOT NULL DEFAULT '',
  `created_user_id` int(10) NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `num_current` int(11) NOT NULL DEFAULT '0',
  `num_all` int(11) NOT NULL DEFAULT '0',
  `relative_cats` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`),
  KEY `idx_parent` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_js_res_categories: 1 rows
DELETE FROM `gy3te_js_res_categories`;
/*!40000 ALTER TABLE `gy3te_js_res_categories` DISABLE KEYS */;
INSERT INTO `gy3te_js_res_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `section_id`, `title`, `alias`, `note`, `description`, `image`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `num_current`, `num_all`, `relative_cats`) VALUES
	(1, 0, 0, 0, 1, 0, '', 0, 'ROOT', 'root', '', '', '', 0, 0, '0000-00-00 00:00:00', 0, '{}', ' ', ' ', ' ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '*', 0, 0, '{}');
/*!40000 ALTER TABLE `gy3te_js_res_categories` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_js_res_category_filters
CREATE TABLE IF NOT EXISTS `gy3te_js_res_category_filters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) DEFAULT '0',
  `category_id` int(11) DEFAULT '0',
  `record_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_js_res_category_filters: 0 rows
DELETE FROM `gy3te_js_res_category_filters`;
/*!40000 ALTER TABLE `gy3te_js_res_category_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_js_res_category_filters` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_js_res_category_user
CREATE TABLE IF NOT EXISTS `gy3te_js_res_category_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL DEFAULT '0',
  `section_id` int(10) NOT NULL DEFAULT '0',
  `ctime` datetime DEFAULT '0000-00-00 00:00:00',
  `params` text NOT NULL,
  `name` varchar(150) NOT NULL DEFAULT '',
  `ordering` int(10) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `access` tinyint(1) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `checked_out` int(10) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) NOT NULL DEFAULT '0',
  `rate` int(10) NOT NULL DEFAULT '0',
  `rate_count` int(10) NOT NULL DEFAULT '0',
  `icon` varchar(45) NOT NULL DEFAULT '',
  `mtime` datetime DEFAULT '0000-00-00 00:00:00',
  `alias` varchar(250) NOT NULL DEFAULT '',
  `client_id` int(10) NOT NULL DEFAULT '0',
  `client` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `user` (`user_id`,`section_id`),
  KEY `publish` (`published`),
  KEY `client_id` (`client_id`),
  KEY `client` (`client`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_js_res_category_user: 0 rows
DELETE FROM `gy3te_js_res_category_user`;
/*!40000 ALTER TABLE `gy3te_js_res_category_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_js_res_category_user` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_js_res_comments
CREATE TABLE IF NOT EXISTS `gy3te_js_res_comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `record_id` int(10) NOT NULL DEFAULT '0',
  `user_id` int(10) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `ctime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `email` varchar(200) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `langs` varchar(10) NOT NULL DEFAULT 'en-GB',
  `access` tinyint(1) NOT NULL DEFAULT '0',
  `rate` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(10) NOT NULL DEFAULT '0',
  `root_id` int(11) NOT NULL DEFAULT '0',
  `level` tinyint(3) NOT NULL DEFAULT '0',
  `hide` tinyint(1) NOT NULL DEFAULT '0',
  `params` text,
  `attachment` text NOT NULL,
  `attach_hit` int(10) NOT NULL DEFAULT '0',
  `ip` varchar(16) NOT NULL DEFAULT '',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `section_id` int(11) NOT NULL DEFAULT '0',
  `private` tinyint(1) NOT NULL DEFAULT '0',
  `rate_num` int(11) NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_publish` (`published`),
  KEY `idx_record` (`record_id`),
  KEY `idx_user` (`user_id`),
  KEY `idx_section` (`section_id`),
  KEY `idx_lr` (`lft`,`rgt`),
  KEY `idx_access` (`access`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_js_res_comments: 1 rows
DELETE FROM `gy3te_js_res_comments`;
/*!40000 ALTER TABLE `gy3te_js_res_comments` DISABLE KEYS */;
INSERT INTO `gy3te_js_res_comments` (`id`, `record_id`, `user_id`, `comment`, `ctime`, `published`, `email`, `name`, `langs`, `access`, `rate`, `parent_id`, `root_id`, `level`, `hide`, `params`, `attachment`, `attach_hit`, `ip`, `lft`, `rgt`, `section_id`, `private`, `rate_num`, `type_id`) VALUES
	(1, 0, 0, ' ', '0000-00-00 00:00:00', 0, '', '', 'en-GB', 0, 0, 0, 0, 0, 0, ' ', ' ', 0, '', 0, 1, 0, 0, 0, 0);
/*!40000 ALTER TABLE `gy3te_js_res_comments` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_js_res_country
CREATE TABLE IF NOT EXISTS `gy3te_js_res_country` (
  `id` varchar(2) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_js_res_country: 264 rows
DELETE FROM `gy3te_js_res_country`;
/*!40000 ALTER TABLE `gy3te_js_res_country` DISABLE KEYS */;
INSERT INTO `gy3te_js_res_country` (`id`, `name`) VALUES
	('AD', 'Andorra'),
	('AE', 'United Arab Emirates'),
	('AF', 'Afghanistan'),
	('AG', 'Antigua and Barbuda'),
	('AI', 'Anguilla'),
	('AL', 'Albania'),
	('AM', 'Armenia'),
	('AN', 'Netherlands Antilles'),
	('AO', 'Angola'),
	('AQ', 'Antarctica'),
	('AR', 'Argentina'),
	('AS', 'American Samoa'),
	('AT', 'Austria'),
	('AU', 'Australia'),
	('AW', 'Aruba'),
	('AX', 'Åland Islands'),
	('AZ', 'Azerbaijan'),
	('BA', 'Bosnia and Herzegovina'),
	('BB', 'Barbados'),
	('BD', 'Bangladesh'),
	('BE', 'Belgium'),
	('BF', 'Burkina Faso'),
	('BG', 'Bulgaria'),
	('BH', 'Bahrain'),
	('BI', 'Burundi'),
	('BJ', 'Benin'),
	('BL', 'Saint Barthélemy'),
	('BM', 'Bermuda'),
	('BN', 'Brunei'),
	('BO', 'Bolivia'),
	('BQ', 'British Antarctic Territory'),
	('BR', 'Brazil'),
	('BS', 'Bahamas'),
	('BT', 'Bhutan'),
	('BV', 'Bouvet Island'),
	('BW', 'Botswana'),
	('BY', 'Belarus'),
	('BZ', 'Belize'),
	('CA', 'Canada'),
	('CC', 'Cocos [Keeling] Islands'),
	('CD', 'Congo - Kinshasa'),
	('CF', 'Central African Republic'),
	('CG', 'Congo - Brazzaville'),
	('CH', 'Switzerland'),
	('CI', 'Côte d’Ivoire'),
	('CK', 'Cook Islands'),
	('CL', 'Chile'),
	('CM', 'Cameroon'),
	('CN', 'China'),
	('CO', 'Colombia'),
	('CR', 'Costa Rica'),
	('CS', 'Serbia and Montenegro'),
	('CT', 'Canton and Enderbury Islands'),
	('CU', 'Cuba'),
	('CV', 'Cape Verde'),
	('CX', 'Christmas Island'),
	('CY', 'Cyprus'),
	('CZ', 'Czech Republic'),
	('DD', 'East Germany'),
	('DE', 'Germany'),
	('DJ', 'Djibouti'),
	('DK', 'Denmark'),
	('DM', 'Dominica'),
	('DO', 'Dominican Republic'),
	('DZ', 'Algeria'),
	('EC', 'Ecuador'),
	('EE', 'Estonia'),
	('EG', 'Egypt'),
	('EH', 'Western Sahara'),
	('ER', 'Eritrea'),
	('ES', 'Spain'),
	('ET', 'Ethiopia'),
	('FI', 'Finland'),
	('FJ', 'Fiji'),
	('FK', 'Falkland Islands'),
	('FM', 'Micronesia'),
	('FO', 'Faroe Islands'),
	('FQ', 'French Southern and Antarctic Territories'),
	('FR', 'France'),
	('FX', 'Metropolitan France'),
	('GA', 'Gabon'),
	('GB', 'United Kingdom'),
	('GD', 'Grenada'),
	('GE', 'Georgia'),
	('GF', 'French Guiana'),
	('GG', 'Guernsey'),
	('GH', 'Ghana'),
	('GI', 'Gibraltar'),
	('GL', 'Greenland'),
	('GM', 'Gambia'),
	('GN', 'Guinea'),
	('GP', 'Guadeloupe'),
	('GQ', 'Equatorial Guinea'),
	('GR', 'Greece'),
	('GS', 'South Georgia and the South Sandwich Islands'),
	('GT', 'Guatemala'),
	('GU', 'Guam'),
	('GW', 'Guinea-Bissau'),
	('GY', 'Guyana'),
	('HK', 'Hong Kong SAR China'),
	('HM', 'Heard Island and McDonald Islands'),
	('HN', 'Honduras'),
	('HR', 'Croatia'),
	('HT', 'Haiti'),
	('HU', 'Hungary'),
	('ID', 'Indonesia'),
	('IE', 'Ireland'),
	('IL', 'Israel'),
	('IM', 'Isle of Man'),
	('IN', 'India'),
	('IO', 'British Indian Ocean Territory'),
	('IQ', 'Iraq'),
	('IR', 'Iran'),
	('IS', 'Iceland'),
	('IT', 'Italy'),
	('JE', 'Jersey'),
	('JM', 'Jamaica'),
	('JO', 'Jordan'),
	('JP', 'Japan'),
	('JT', 'Johnston Island'),
	('KE', 'Kenya'),
	('KG', 'Kyrgyzstan'),
	('KH', 'Cambodia'),
	('KI', 'Kiribati'),
	('KM', 'Comoros'),
	('KN', 'Saint Kitts and Nevis'),
	('KP', 'North Korea'),
	('KR', 'South Korea'),
	('KW', 'Kuwait'),
	('KY', 'Cayman Islands'),
	('KZ', 'Kazakhstan'),
	('LA', 'Laos'),
	('LB', 'Lebanon'),
	('LC', 'Saint Lucia'),
	('LI', 'Liechtenstein'),
	('LK', 'Sri Lanka'),
	('LR', 'Liberia'),
	('LS', 'Lesotho'),
	('LT', 'Lithuania'),
	('LU', 'Luxembourg'),
	('LV', 'Latvia'),
	('LY', 'Libya'),
	('MA', 'Morocco'),
	('MC', 'Monaco'),
	('MD', 'Moldova'),
	('ME', 'Montenegro'),
	('MF', 'Saint Martin'),
	('MG', 'Madagascar'),
	('MH', 'Marshall Islands'),
	('MI', 'Midway Islands'),
	('MK', 'Macedonia'),
	('ML', 'Mali'),
	('MM', 'Myanmar [Burma]'),
	('MN', 'Mongolia'),
	('MO', 'Macau SAR China'),
	('MP', 'Northern Mariana Islands'),
	('MQ', 'Martinique'),
	('MR', 'Mauritania'),
	('MS', 'Montserrat'),
	('MT', 'Malta'),
	('MU', 'Mauritius'),
	('MV', 'Maldives'),
	('MW', 'Malawi'),
	('MX', 'Mexico'),
	('MY', 'Malaysia'),
	('MZ', 'Mozambique'),
	('NA', 'Namibia'),
	('NC', 'New Caledonia'),
	('NE', 'Niger'),
	('NF', 'Norfolk Island'),
	('NG', 'Nigeria'),
	('NI', 'Nicaragua'),
	('NL', 'Netherlands'),
	('NO', 'Norway'),
	('NP', 'Nepal'),
	('NQ', 'Dronning Maud Land'),
	('NR', 'Nauru'),
	('NT', 'Neutral Zone'),
	('NU', 'Niue'),
	('NZ', 'New Zealand'),
	('OM', 'Oman'),
	('PA', 'Panama'),
	('PC', 'Pacific Islands Trust Territory'),
	('PE', 'Peru'),
	('PF', 'French Polynesia'),
	('PG', 'Papua New Guinea'),
	('PH', 'Philippines'),
	('PK', 'Pakistan'),
	('PL', 'Poland'),
	('PM', 'Saint Pierre and Miquelon'),
	('PN', 'Pitcairn Islands'),
	('PR', 'Puerto Rico'),
	('PS', 'Palestinian Territories'),
	('PT', 'Portugal'),
	('PU', 'U.S. Miscellaneous Pacific Islands'),
	('PW', 'Palau'),
	('PY', 'Paraguay'),
	('PZ', 'Panama Canal Zone'),
	('QA', 'Qatar'),
	('RE', 'Reunion'),
	('RO', 'Romania'),
	('RS', 'Serbia'),
	('RU', 'Russia'),
	('RW', 'Rwanda'),
	('SA', 'Saudi Arabia'),
	('SB', 'Solomon Islands'),
	('SC', 'Seychelles'),
	('SD', 'Sudan'),
	('SE', 'Sweden'),
	('SG', 'Singapore'),
	('SH', 'Saint Helena'),
	('SI', 'Slovenia'),
	('SJ', 'Svalbard and Jan Mayen'),
	('SK', 'Slovakia'),
	('SL', 'Sierra Leone'),
	('SM', 'San Marino'),
	('SN', 'Senegal'),
	('SO', 'Somalia'),
	('SR', 'Suriname'),
	('ST', 'São Tomé and Príncipe'),
	('SU', 'Union of Soviet Socialist Republics'),
	('SV', 'El Salvador'),
	('SY', 'Syria'),
	('SZ', 'Swaziland'),
	('TC', 'Turks and Caicos Islands'),
	('TD', 'Chad'),
	('TF', 'French Southern Territories'),
	('TG', 'Togo'),
	('TH', 'Thailand'),
	('TJ', 'Tajikistan'),
	('TK', 'Tokelau'),
	('TL', 'Timor-Leste'),
	('TM', 'Turkmenistan'),
	('TN', 'Tunisia'),
	('TO', 'Tonga'),
	('TR', 'Turkey'),
	('TT', 'Trinidad and Tobago'),
	('TV', 'Tuvalu'),
	('TW', 'Taiwan'),
	('TZ', 'Tanzania'),
	('UA', 'Ukraine'),
	('UG', 'Uganda'),
	('UM', 'U.S. Minor Outlying Islands'),
	('US', 'United States'),
	('UY', 'Uruguay'),
	('UZ', 'Uzbekistan'),
	('VA', 'Vatican City'),
	('VC', 'Saint Vincent and the Grenadines'),
	('VD', 'North Vietnam'),
	('VE', 'Venezuela'),
	('VG', 'British Virgin Islands'),
	('VI', 'U.S. Virgin Islands'),
	('VN', 'Vietnam'),
	('VU', 'Vanuatu'),
	('WF', 'Wallis and Futuna'),
	('WK', 'Wake Island'),
	('WS', 'Samoa'),
	('YD', 'People\'s Democratic Republic of Yemen'),
	('YE', 'Yemen'),
	('YT', 'Mayotte'),
	('ZA', 'South Africa'),
	('ZM', 'Zambia'),
	('ZW', 'Zimbabwe'),
	('ZZ', 'UNKNOWN OR Invalid Region');
/*!40000 ALTER TABLE `gy3te_js_res_country` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_js_res_favorite
CREATE TABLE IF NOT EXISTS `gy3te_js_res_favorite` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL DEFAULT '0',
  `record_id` int(10) NOT NULL DEFAULT '0',
  `ctime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `section_id` int(11) NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_user` (`user_id`),
  KEY `idx_record` (`record_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_js_res_favorite: 1 rows
DELETE FROM `gy3te_js_res_favorite`;
/*!40000 ALTER TABLE `gy3te_js_res_favorite` DISABLE KEYS */;
INSERT INTO `gy3te_js_res_favorite` (`id`, `user_id`, `record_id`, `ctime`, `section_id`, `type_id`) VALUES
	(1, 52, 2, '2018-05-12 11:18:49', 1, 1);
/*!40000 ALTER TABLE `gy3te_js_res_favorite` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_js_res_fields
CREATE TABLE IF NOT EXISTS `gy3te_js_res_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(45) DEFAULT NULL,
  `label` varchar(250) NOT NULL DEFAULT '',
  `type_id` int(10) NOT NULL DEFAULT '0',
  `field_type` varchar(50) NOT NULL DEFAULT '',
  `params` longtext NOT NULL,
  `checked_out` int(10) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` tinyint(3) NOT NULL DEFAULT '0',
  `access` tinyint(1) NOT NULL DEFAULT '0',
  `group_id` int(11) DEFAULT '0',
  `asset_id` int(11) NOT NULL DEFAULT '0',
  `filter` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_access` (`access`),
  KEY `idx_publish` (`published`,`type_id`,`filter`,`key`),
  KEY `idx_group` (`group_id`),
  KEY `idx_filter` (`filter`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_js_res_fields: 26 rows
DELETE FROM `gy3te_js_res_fields`;
/*!40000 ALTER TABLE `gy3te_js_res_fields` DISABLE KEYS */;
INSERT INTO `gy3te_js_res_fields` (`id`, `key`, `label`, `type_id`, `field_type`, `params`, `checked_out`, `checked_out_time`, `published`, `ordering`, `access`, `group_id`, `asset_id`, `filter`, `user_id`) VALUES
	(2, 'kb5858088c932fd4370df61f0259cc3ca', 'Кличка домашняя', 1, 'text', '{"core":{"show_intro":0,"show_full":1,"show_feed":"1","show_compare":"1","required":"1","searchable":"1","description":"","xml_tag_name":"","field_class":"","show_lable":"3","label_break":"0","lable_class":"","icon":"tag-label-green.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","sortable":"0","ordering_mode":"digits","template_filter":"autocomplete.php","template_filter_module":"autocomplete.php","filter_enable":"0","filter_hide":"0","filter_descr":"","filter_show_number":"1","filter_linkage":"1","filter_icon":"funnel-small.png","filter_tip":"Show all records where %s is equal to %s","maxlength":"0","default_val":"","size":"90%","prepend":"","append":"","allow_html":"0","is_unique":"0","length":"0","seemore":">>>","qr_code":"0","qr_width":"60","regex_val":"","mask":{"mask_type":"","mask":""},"show_mask":"1","values":"\\u041b\\u043e\\u0442\\u043e\\u0441"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 4, 1, 0, 79, 0, 48),
	(3, 'kf462fa7c9df8adf14a918503d219dbe6', 'Кличка по родословной', 1, 'text', '{"core":{"show_intro":"0","show_full":"1","show_feed":"0","show_compare":"0","required":"0","searchable":"1","description":"","xml_tag_name":"","field_class":"","show_lable":"3","label_break":"0","lable_class":"","icon":"tag-label-pink.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","sortable":"0","ordering_mode":"digits","template_filter":"autocomplete.php","template_filter_module":"autocomplete.php","filter_enable":"0","filter_hide":"0","filter_descr":"","filter_show_number":"1","filter_linkage":"1","filter_icon":"funnel-small.png","filter_tip":"Show all records where %s is equal to %s","maxlength":"0","default_val":"","size":"90%","prepend":"","append":"","allow_html":"0","is_unique":"0","length":"0","seemore":">>>","qr_code":"0","qr_width":"60","regex_val":"","mask":{"mask_type":"","mask":""},"show_mask":"1","values":"ARION LOTOS"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 5, 1, 0, 80, 0, 48),
	(4, 'kc8fbed8f231a0a06ae0570dce1f8397c', 'Номер РКФ/FCI', 1, 'text', '{"core":{"show_intro":"1","show_full":"1","show_feed":"0","show_compare":"0","required":"0","searchable":"1","description":"","xml_tag_name":"","field_class":"","show_lable":"3","label_break":"0","lable_class":"","icon":"barcode.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","sortable":"0","ordering_mode":"digits","template_filter":"autocomplete.php","template_filter_module":"autocomplete.php","filter_enable":"0","filter_hide":"0","filter_descr":"","filter_show_number":"1","filter_linkage":"1","filter_icon":"funnel-small.png","filter_tip":"Show all records where %s is equal to %s","maxlength":"0","default_val":"","size":"90%","prepend":"","append":"","allow_html":"0","is_unique":"0","length":"0","seemore":">>>","qr_code":"0","qr_width":"60","regex_val":"","mask":{"mask_type":"","mask":""},"show_mask":"1","values":"3573868"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 6, 1, 1, 81, 0, 48),
	(5, 'k42e3885b3e1f163db24a643e8735b929', 'Клеймо/Chip', 1, 'text', '{"core":{"show_intro":"1","show_full":"1","show_feed":"0","show_compare":"0","required":"0","searchable":"1","description":"","xml_tag_name":"","field_class":"","show_lable":"3","label_break":"0","lable_class":"","icon":"barcode-2d.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","sortable":"0","ordering_mode":"digits","template_filter":"autocomplete.php","template_filter_module":"autocomplete.php","filter_enable":"0","filter_hide":"0","filter_descr":"","filter_show_number":"1","filter_linkage":"1","filter_icon":"funnel-small.png","filter_tip":"Show all records where %s is equal to %s","maxlength":"0","default_val":"","size":"90%","prepend":"","append":"","allow_html":"0","is_unique":"0","length":"0","seemore":">>>","qr_code":"0","qr_width":"60","regex_val":"","mask":{"mask_type":"","mask":""},"show_mask":"1","values":"3494690543"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 7, 1, 1, 82, 0, 48),
	(6, 'kf194989ed1a30256c8ee4ea83e1bfc60', 'Дата рождения', 1, 'datetime', '{"core":{"show_intro":"1","show_full":"1","show_feed":"0","show_compare":"0","required":"1","searchable":"0","description":"","xml_tag_name":"","field_class":"","show_lable":"3","label_break":"0","lable_class":"","icon":"calendar-select.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"single_date_picker.php","template_output_list":"list.php","template_output_full":"list.php","sortable":"0","template_filter":"single_date_picker.php","template_filter_module":"single_date_picker.php","filter_enable":"0","filter_hide":"0","filter_descr":"","filter_linkage":"1","filter_icon":"funnel-small.png","filter_tip":"Show all records where %s is equal to %s","filter_compare_label":"Show all records %s","filter_compare_stbefore":"Start before","filter_compare_stafter":"Start after","filter_compare_endbefore":"End before","filter_compare_endafter":"End after","input_default":"0","custom_input":"","input_order":"month","input_delimiter":"\\/","format":"h:i A, l, d F Y","custom":"","time":"0","field_id_type":"","ovr_ctime":"0","ctime_add":"","ovr_extime":"0","extime_add":"","format_out":"d M Y","custom_out":"","computation":"day","mode":"2","normal_style":"b","normal_color":"","notify_style":"b","notify_color":"orange","past_style":"b","past_color":"red","normal_before":"Still","normal_after":"days valid","notify_days":"30","notify_msg":"Last day","notify_before":"Will expire in","notify_after":"days","past_before":"Expired since","past_after":"days","date_before":"","date_style":"b","date_after":"","show_days":"1","date_days_separator":"","age_before":"","age_notify":"","age_expire":"","age_style":"b","age_format":"1","date_age_separator":",","age_custom":"[AGE], [DATE]","age_after":"years"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 3, 1, 1, 83, 0, 48),
	(7, 'k10a66e5ec7ab5f3f7ea66c447a37922c', 'Дата смерти', 1, 'datetime', '{"core":{"show_intro":"1","show_full":"1","show_feed":"0","show_compare":"0","required":0,"searchable":"0","description":"","xml_tag_name":"","field_class":"","show_lable":"3","label_break":"0","lable_class":"","icon":"calendar-select.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"single_date_picker.php","template_output_list":"list.php","template_output_full":"list.php","sortable":"0","template_filter":"single_date_picker.php","template_filter_module":"single_date_picker.php","filter_enable":"0","filter_hide":"0","filter_descr":"","filter_linkage":"1","filter_icon":"funnel-small.png","filter_tip":"Show all records where %s is equal to %s","filter_compare_label":"Show all records %s","filter_compare_stbefore":"Start before","filter_compare_stafter":"Start after","filter_compare_endbefore":"End before","filter_compare_endafter":"End after","input_default":"0","custom_input":"","input_order":"month","input_delimiter":"\\/","format":"h:i A, l, d F Y","custom":"","time":"0","field_id_type":"","ovr_ctime":"0","ctime_add":"","ovr_extime":"0","extime_add":"","format_out":"d M Y","custom_out":"","computation":"day","mode":"2","normal_style":"b","normal_color":"","notify_style":"b","notify_color":"orange","past_style":"b","past_color":"red","normal_before":"Still","normal_after":"days valid","notify_days":"30","notify_msg":"Last day","notify_before":"Will expire in","notify_after":"days","past_before":"Expired since","past_after":"days","date_before":"","date_style":"b","date_after":"","show_days":"1","date_days_separator":"","age_before":"","age_notify":"","age_expire":"","age_style":"b","age_format":"1","date_age_separator":",","age_custom":"[AGE], [DATE]","age_after":"years"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 5, 1, 1, 84, 0, 48),
	(8, 'k35254eb6ed0765c77cf058f867d8172c', 'Пол', 1, 'select', '{"core":{"show_intro":"1","show_full":"1","show_feed":"1","show_compare":"0","required":"1","searchable":"0","description":"","xml_tag_name":"","field_class":"","show_lable":"3","label_break":"0","lable_class":"","icon":"yin-yang.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","sortable":"0","template_filter":"autocomplete.php","template_filter_module":"autocomplete.php","filter_enable":"1","filter_hide":"0","filter_descr":"","filter_show_number":"1","filter_linkage":"1","filter_icon":"funnel-small.png","filter_tip":"Show all records where %s is equal to %s","sort":"2","width":"450","size":"10","values":"\\u041c\\u0430\\u043b\\u044c\\u0447\\u0438\\u043a\\r\\n\\u0414\\u0435\\u0432\\u043e\\u0447\\u043a\\u0430","default_val":"0","color_separator":"^","label":"-\\u0423\\u043a\\u0430\\u0436\\u0438\\u0442\\u0435 \\u043f\\u043e\\u043b-","chosen":"1","add_value":"0","save_new":"1","user_value_label":"Your variant","sql_source":"0","sql":"","sql_label":"- Select Element -","sql_link":"","sql_link_target":"0","sql_ext_db":"0","sql_db_host":"","sql_db_port":"","sql_db_user":"","sql_db_pass":"","sql_db_name":""},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 2, 1, 1, 85, 1, 48),
	(9, 'k6774946085d070e5ed6ef60d76124ebe', 'Окрас', 1, 'text', '{"core":{"show_intro":"1","show_full":"1","show_feed":"0","show_compare":"0","required":"1","searchable":"0","description":"","xml_tag_name":"","field_class":"","show_lable":"3","label_break":"0","lable_class":"","icon":"color-swatch.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","sortable":"0","ordering_mode":"digits","template_filter":"autocomplete.php","template_filter_module":"autocomplete.php","filter_enable":"0","filter_hide":"0","filter_descr":"","filter_show_number":"1","filter_linkage":"1","filter_icon":"funnel-small.png","filter_tip":"Show all records where %s is equal to %s","maxlength":"0","default_val":"","size":"90%","prepend":"","append":"","allow_html":"0","is_unique":"0","length":"0","seemore":">>>","qr_code":"0","qr_width":"60","regex_val":"","mask":{"mask_type":"","mask":""},"show_mask":"1","values":"\\u0421\\u0435\\u0440\\u043e-\\u0431\\u0435\\u043b\\u044b\\u0439"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 8, 1, 1, 86, 0, 48),
	(10, 'kd6b39b5f062c11650671f274f86505d1', 'Высота в холке', 1, 'digits', '{"core":{"show_intro":"1","show_full":"1","show_feed":"0","show_compare":"1","required":"0","searchable":"0","description":"","xml_tag_name":"","field_class":"","show_lable":"3","label_break":"0","lable_class":"","icon":"bandaid.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","sortable":"0","template_filter":"default.php","template_filter_module":"default.php","filter_enable":"0","filter_hide":"0","filter_descr":"","filter_worn":"Between %s and %s","label_min":"Min","label_max":"Max","steps":"1","decimals_num":"2","max_num":"4","separator":",","dseparator":".","val_min":"","val_max":"","prepend":"","append":"\\u0441\\u043c"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 9, 1, 1, 87, 0, 48),
	(11, 'k3fc02380a476e4a6d7e9e00cea29daf3', 'Вес', 1, 'digits', '{"core":{"show_intro":"1","show_full":"1","show_feed":"0","show_compare":"1","required":"0","searchable":"0","description":"","xml_tag_name":"","field_class":"","show_lable":"3","label_break":"0","lable_class":"","icon":"weight.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","sortable":"0","template_filter":"default.php","template_filter_module":"default.php","filter_enable":"0","filter_hide":"0","filter_descr":"","filter_worn":"Between %s and %s","label_min":"Min","label_max":"Max","steps":"1","decimals_num":"2","max_num":"4","separator":",","dseparator":".","val_min":"","val_max":"","prepend":"","append":"\\u043a\\u0433"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 10, 1, 1, 88, 0, 48),
	(12, 'k7db2de2753446778a0ed3a1815168146', 'Примечание', 1, 'textarea', '{"core":{"show_intro":"0","show_full":"1","show_feed":"0","show_compare":"0","required":"0","searchable":"1","description":"","xml_tag_name":"","field_class":"","show_lable":"1","label_break":"0","lable_class":"","icon":"balloon-box-left.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","sortable":"0","default_value":"","placeholder":"","intro":"0","seemore":"...","prepare":"1","mention":"1","height":"300px","maxlen":"0","minlen":"0","notify":"1","symbols_left_msg":"There are (%s) characters left of %d allowed","grow_enable":"1","grow_max_height":"350","bbcode":"0","bbcode_menu":"0","bbcode_text":"We understand BBcode","bbcode_text_show":"1","bbcode_attr":"rel=\'nofollow\'","markdown":"1","markdown_text":"\\u041c\\u044b \\u043f\\u043e\\u043d\\u0438\\u043c\\u0430\\u0435\\u043c Markdown","markdown_text_show":"1","allow_html":"2","tags_mode":"1","filter_tags":"iframe, script,a, h1,h2,h3","attr_mode":"1","filter_attr":""},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 11, 1, 1, 89, 0, 48),
	(13, 'k8b1987f5d2b838be722030ecd6d90b43', 'Страна рождения', 1, 'geo', '{"core":{"show_intro":"1","show_full":"1","show_feed":"0","show_compare":"0","required":"1","searchable":"0","description":"","xml_tag_name":"","field_class":"","show_lable":"3","label_break":"0","lable_class":"","icon":"globe.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","template_filter":"default.php","template_filter_module":"default.php","filter_enable":"0","filter_hide":"0","filter_descr":"","filter_distance":"1","filter_radius":"20","filter_address":"1","filter_marker":"1","adr_enter":"1","address":{"company":{"show":"0","req":"0","icon":"1"},"person":{"show":"0","req":"0","icon":"1"},"address1":{"show":"0","req":"0","icon":"1"},"address2":{"show":"0","req":"0","icon":"1"},"city":{"show":"3","req":"0","icon":"1"},"state":{"show":"3","req":"0","icon":"1"},"zip":{"show":"0","req":"0","icon":"1"},"country":{"show":"3","req":"1","icon":"1"}},"contacts":{"tel":{"show":"0","req":"0","icon":"1"},"mob":{"show":"0","req":"0","icon":"1"},"fax":{"show":"0","req":"0","icon":"1"},"icq":{"show":"0","req":"0","icon":"1"},"skype":{"show":"0","req":"0","icon":"1"},"google":{"show":"0","req":"0","icon":"1"},"yahoo":{"show":"0","req":"0","icon":"1"},"msn":{"show":"0","req":"0","icon":"1"},"aol":{"show":"0","req":"0","icon":"1"}},"links":{"web":{"show":"0","req":"0","icon":"1"},"facebook":{"show":"0","req":"0","icon":"1"},"twitter":{"show":"0","req":"0","icon":"1"},"linkin":{"show":"0","req":"0","icon":"1"},"google":{"show":"0","req":"0","icon":"1"},"youtube":{"show":"0","req":"0","icon":"1"},"odnoclasnik":{"show":"0","req":"0","icon":"1"}},"links_labels":"0","adr_view":"1","adr_title":"2","qr_code_address":"0","qr_code_geo":"0","qr_width_address":"250","qr_width_geo":"120","map_marker":"2","map_require":"1","map_style":"","map_width":"100%","map_height":"300px","map_lat":"42.293564192170095","map_lng":"-33.33983659744263","map_zoom":"2","map_find_position":"1","map_manual_position":"3","map_whoicon":"2","map_icon_src":{"dir":"mini","icon":""},"template_marker":"default.php","map_view":"0","map_dwidth":"50%","map_dheight":"200px","map_client":"2","sv_view":"0","sv_client":"2","sv_layout":"1","map_lat_lng":"0","template_window":"default.php"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 4, 1, 1, 90, 0, 48),
	(14, 'k043ed5b16d476fbc14dee5d97ad8fe4e', 'Место нахождения', 1, 'geo', '{"core":{"show_intro":"0","show_full":"1","show_feed":"0","show_compare":"0","required":"1","searchable":"0","description":"","xml_tag_name":"","field_class":"","show_lable":"3","label_break":"0","lable_class":"","icon":"marker.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","template_filter":"default.php","template_filter_module":"default.php","filter_enable":"0","filter_hide":"0","filter_descr":"","filter_distance":"1","filter_radius":"20","filter_address":"1","filter_marker":"1","adr_enter":"1","address":{"company":{"show":"0","req":"0","icon":"1"},"person":{"show":"0","req":"0","icon":"1"},"address1":{"show":"0","req":"0","icon":"1"},"address2":{"show":"0","req":"0","icon":"1"},"city":{"show":"3","req":"0","icon":"1"},"state":{"show":"3","req":"1","icon":"1"},"zip":{"show":"0","req":"0","icon":"1"},"country":{"show":"3","req":"1","icon":"1"}},"contacts":{"tel":{"show":"0","req":"0","icon":"1"},"mob":{"show":"0","req":"0","icon":"1"},"fax":{"show":"0","req":"0","icon":"1"},"icq":{"show":"0","req":"0","icon":"1"},"skype":{"show":"0","req":"0","icon":"1"},"google":{"show":"0","req":"0","icon":"1"},"yahoo":{"show":"0","req":"0","icon":"1"},"msn":{"show":"0","req":"0","icon":"1"},"aol":{"show":"0","req":"0","icon":"1"}},"links":{"web":{"show":"0","req":"0","icon":"1"},"facebook":{"show":"0","req":"0","icon":"1"},"twitter":{"show":"0","req":"0","icon":"1"},"linkin":{"show":"0","req":"0","icon":"1"},"google":{"show":"0","req":"0","icon":"1"},"youtube":{"show":"0","req":"0","icon":"1"},"odnoclasnik":{"show":"0","req":"0","icon":"1"}},"links_labels":"0","adr_view":"1","adr_title":"2","qr_code_address":"0","qr_code_geo":"0","qr_width_address":"250","qr_width_geo":"120","map_marker":"2","map_require":"1","map_style":"","map_width":"100%","map_height":"300px","map_lat":"42.293564192170095","map_lng":"-33.33983659744263","map_zoom":"2","map_find_position":"1","map_manual_position":"3","map_whoicon":"2","map_icon_src":{"dir":"mini","icon":""},"template_marker":"default.php","map_view":"1","map_dwidth":"100%","map_dheight":"300px","map_client":"3","sv_view":"0","sv_client":"3","sv_layout":"1","map_lat_lng":"0","template_window":"default.php"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 2, 1, 5, 91, 0, 48),
	(15, 'k83636956507d2391b2014b9af42162d5', 'Галлерея', 2, 'gallery', '{"core":{"show_intro":"1","show_full":"1","show_feed":"0","show_compare":"1","required":1,"searchable":"0","description":"","xml_tag_name":"","field_class":"","show_lable":"1","label_break":"0","lable_class":"","icon":"images-stack.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"list.php","template_output_full":"full.php","method":"auto","file_formats":"jpg, png, jpeg, gif, bmp","max_count":"0","max_size":"2048","autostart":"1","subfolder":"gallery","delete_access":"1","allow_edit_title":"1","sort":"0 ASC","lightbox_click_list":"0","lightbox_click_full":"0","original_width":"1024","original_height":"1024","download_all":"0","full_width":"800","full_height":"600","full_quality":"100","full_mode":"6","full_stretch":"0","thumbs_list_width":"100","thumbs_list_height":"100","thumbs_list_quality":"80","thumbs_list_mode":"1","thumbs_list_stretch":"0","thumbs_list_random":"1","thumbs_list_theme":"book.css","thumbs_resize_mode":"1","column_width":"600","max_height":"250","image_in_row":"5","image_padding":"2","image_border":"2","image_border_color":"#e0e0e0","image_border_radius":"5","image_shadow":"inset 0px 0px 10px 5px rgba(0, 0, 0, 0.3)","thumbs_width":"100","thumbs_height":"100","thumbs_quality":"80","thumbs_background_color":"#FFFFFF","thumbs_mode":"1","thumbs_stretch":"0","show_mode":"gallerybox","theme":"Dark","rate_access":"1","tmpl_rating":"crown.e0de38f508fa20038d3eed8562be153a","allow_comments":"2","allow_info":"2","show_avatar":"1","avatar_width":"40","avatar_height":"40","show_comment_avatar":"1","comment_avatar_width":"20","comment_avatar_height":"20","show_username":"0","comment_author":"1","record_author":"1","allow_download":"1","count_views":"1","show_location":"1","subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","subscription":[""],"subscription_msg":"You cannot download this file. You have to be subscribed member","subscription_redirect":"1","can_select_subscr":"0"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 0, 1, 0, 92, 0, 48),
	(16, 'kca8225d35b3c2419d3dd4dc71dcc0123', 'Описание альбома', 2, 'textarea', '{"core":{"show_intro":"1","show_full":"1","show_feed":"0","show_compare":"0","required":"0","searchable":"0","description":"","xml_tag_name":"","field_class":"","show_lable":"1","label_break":"0","lable_class":"","icon":"balloon-box-left.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","sortable":"0","default_value":"","placeholder":"","intro":"0","seemore":"...","prepare":"1","mention":"1","height":"300px","maxlen":"0","minlen":"0","notify":"1","symbols_left_msg":"There are (%s) characters left of %d allowed","grow_enable":"1","grow_max_height":"350","bbcode":"0","bbcode_menu":"0","bbcode_text":"We understand BBcode","bbcode_text_show":"1","bbcode_attr":"rel=\'nofollow\'","markdown":"1","markdown_text":"We understand markdown","markdown_text_show":"1","allow_html":"2","tags_mode":"1","filter_tags":"iframe, script","attr_mode":"1","filter_attr":""},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 0, 1, 0, 93, 0, 48),
	(17, 'kc1704f57e8e55c8a8bb3f2e6204a9138', 'Собака', 2, 'child', '{"core":{"show_intro":"1","show_full":"1","show_feed":"0","show_compare":"1","required":"0","searchable":"0","description":"","xml_tag_name":"","field_class":"","show_lable":"3","label_break":"0","lable_class":"","icon":"animal-dog.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","template_filter":"default.php","template_filter_module":"default.php","filter_enable":"0","filter_hide":"0","filter_descr":"","filter_style":"2","filter_show_number":"1","filter_linkage":"1","filter_user_strict":"0","filter_tip":"Show all records where %s is equal to %s","parent_field":"18","parent_type":"1","parent_section":"1","strict_to_user":"3","strict_to_user_mode":"3","show_relate":"0","multi_parent":"0","multi_limit":"10","notify_add":"2","notify_attach":"2","input_mode":"2","input_sort":"","max_result":"10","control_width":"750","control_height":"500","control_label":"Set parent","add_more_access":"3","add_more_access_auth":"1","add_more_access_list":"1","add_more_access_full":"1","add_return":"back","invite_add_more":"Add New","add_existing":"3","add_existing_auth":"1","add_existing_access_list":"1","add_existing_access_full":"1","add_existing_width":"750","add_existing_height":"500","add_existing_label":"Attach Existing","tmpl_list":"","tmpl_full":"","orderby":"r.ctime ASC","limit_list":"10","limit_full":"20","show_list_all":"2","invite_view_more":"Show All...","show_list_all_full":"1","show_list_all_list":"1","show_list_type":"1"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 0, 1, 0, 94, 0, 48),
	(18, 'k43843ad431e118c0d4680e858ae1a8aa', 'Альбом', 1, 'parent', '{"core":{"show_intro":"1","show_full":"1","show_feed":"0","show_compare":"1","required":"0","searchable":"0","description":"","xml_tag_name":"","field_class":"","show_lable":"3","label_break":"0","lable_class":"","icon":"images-stack.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","template_filter":"default.php","template_filter_module":"default.php","filter_enable":"0","filter_hide":"0","filter_descr":"","filter_style":"2","filter_show_number":"1","filter_linkage":"1","filter_user_strict":"0","filter_tip":"Show all records where %s is equal to %s","child_field":"17","child_section":"2","strict_to_user":"3","strict_to_user_mode":"3","show_relate":"0","multi_limit":"10","notify_add":"2","notify_attach":"2","input_mode":"2","input_sort":"","max_result":"10","control_width":"750","control_height":"500","control_label":"Add children","add_more_access":"3","add_more_access_auth":"1","add_more_access_list":"1","add_more_access_full":"1","add_return":"back","invite_add_more":"\\u0414\\u043e\\u0431\\u0430\\u0432\\u0438\\u0442\\u044c \\u043d\\u043e\\u0432\\u044b\\u0439 \\u0410\\u043b\\u044c\\u0431\\u043e\\u043c","add_existing":"3","add_existing_auth":"1","add_existing_access_list":"1","add_existing_access_full":"1","add_existing_width":"750","add_existing_height":"500","add_existing_label":"\\u0412\\u044b\\u0431\\u0440\\u0430\\u0442\\u044c \\u0410\\u043b\\u044c\\u0431\\u043e\\u043c","show_delete_button":"3","tmpl_list":"","tmpl_full":"","orderby":"r.ctime ASC","limit_full":"20","limit_list":"10","show_list_all":"2","invite_view_more":"Show All...","show_list_all_full":"1","show_list_all_list":"1","show_list_type":"1"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 0, 1, 2, 95, 0, 48),
	(19, 'kda6c10f9068cebb389cbee73109119cc', 'Ссылка на Видеоролик', 3, 'video', '{"core":{"show_intro":"1","show_full":"1","show_feed":"0","show_compare":"1","required":"1","searchable":"0","description":"","xml_tag_name":"","field_class":"","show_lable":"3","label_break":"0","lable_class":"","icon":"clapperboard.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","command":"c:\\\\ffmpeg\\\\bin\\\\ffmpeg.exe","file_formats":"avi, mp4, mpeg, flv, ogv","only_one":"0","upload":"0","allow_download":"1","method":"auto","default_width":"640","max_count":"0","max_size":"10240","autostart":"1","subfolder":"video","delete_access":"1","allow_edit_title":"1","allow_add_descr":"1","sort":"0 ASC","listbar":"1","listbar_position":"right","listbar_width":"200","embed":"0","embed_max_count":"0","link":"2","link_max_count":"1","adapters":["youtube","vimeo","metacafe","screencast","bing","yahoo"],"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","subscription":[""],"subscription_msg":"You cannot download this file. You have to be subscribed member","subscription_redirect":"1","can_select_subscr":"0"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 0, 1, 0, 96, 0, 48),
	(20, 'k7551748ac6d9532aa27980cc4fb08ea0', 'Описание видео', 3, 'textarea', '{"core":{"show_intro":"1","show_full":"1","show_feed":"0","show_compare":"1","required":"0","searchable":"1","description":"","xml_tag_name":"","field_class":"","show_lable":"3","label_break":"0","lable_class":"","icon":"balloon-box-left.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","sortable":"0","default_value":"","placeholder":"","intro":"0","seemore":"...","prepare":"1","mention":"1","height":"300px","maxlen":"0","minlen":"0","notify":"1","symbols_left_msg":"There are (%s) characters left of %d allowed","grow_enable":"1","grow_max_height":"350","bbcode":"0","bbcode_menu":"0","bbcode_text":"We understand BBcode","bbcode_text_show":"1","bbcode_attr":"rel=\'nofollow\'","markdown":"1","markdown_text":"\\u041c\\u044b \\u043f\\u043e\\u043d\\u0438\\u043c\\u0430\\u0435\\u043c Markdown","markdown_text_show":"1","allow_html":"2","tags_mode":"1","filter_tags":"iframe, script","attr_mode":"1","filter_attr":""},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 0, 1, 0, 97, 0, 48),
	(21, 'kc1704f57e8e55c8a8bb3f2e6204a9138', 'Собака', 3, 'child', '{"core":{"show_intro":"0","show_full":"1","show_feed":"0","show_compare":"1","required":"0","searchable":"0","description":"","xml_tag_name":"","field_class":"","show_lable":"3","label_break":"0","lable_class":"","icon":"animal-dog.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","template_filter":"default.php","template_filter_module":"default.php","filter_enable":"0","filter_hide":"0","filter_descr":"","filter_style":"2","filter_show_number":"1","filter_linkage":"1","filter_user_strict":"0","filter_tip":"Show all records where %s is equal to %s","parent_field":"22","parent_type":"1","parent_section":"1","strict_to_user":"3","strict_to_user_mode":"3","show_relate":"0","multi_parent":"0","multi_limit":"10","notify_add":"2","notify_attach":"2","input_mode":"2","input_sort":"","max_result":"10","control_width":"750","control_height":"500","control_label":"Set parent","add_more_access":"3","add_more_access_auth":"1","add_more_access_list":"1","add_more_access_full":"1","add_return":"back","invite_add_more":"Add New","add_existing":"3","add_existing_auth":"1","add_existing_access_list":"1","add_existing_access_full":"1","add_existing_width":"750","add_existing_height":"500","add_existing_label":"Attach Existing","tmpl_list":"","tmpl_full":"","orderby":"r.ctime ASC","limit_list":"10","limit_full":"20","show_list_all":"2","invite_view_more":"Show All...","show_list_all_full":"1","show_list_all_list":"1","show_list_type":"1"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 0, 1, 0, 98, 0, 48),
	(22, 'kaa1a53ff22024d1ecb3a89d8248ffb7a', 'Видеоролик', 1, 'parent', '{"core":{"show_intro":"1","show_full":"1","show_feed":"0","show_compare":"1","required":"0","searchable":"0","description":"","xml_tag_name":"","field_class":"","show_lable":"3","label_break":"0","lable_class":"","icon":"clapperboard.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","template_filter":"default.php","template_filter_module":"default.php","filter_enable":"0","filter_hide":"0","filter_descr":"","filter_style":"2","filter_show_number":"1","filter_linkage":"1","filter_user_strict":"0","filter_tip":"Show all records where %s is equal to %s","child_field":"21","child_section":"3","strict_to_user":"3","strict_to_user_mode":"3","show_relate":"0","multi_limit":"10","notify_add":"2","notify_attach":"2","input_mode":"2","input_sort":"","max_result":"10","control_width":"750","control_height":"500","control_label":"Add children","add_more_access":"3","add_more_access_auth":"1","add_more_access_list":"1","add_more_access_full":"1","add_return":"back","invite_add_more":"\\u0414\\u043e\\u0431\\u0430\\u0432\\u0438\\u0442\\u044c \\u043d\\u043e\\u0432\\u044b\\u0439 \\u0412\\u0438\\u0434\\u0435\\u043e\\u0440\\u043e\\u043b\\u0438\\u043a","add_existing":"3","add_existing_auth":"1","add_existing_access_list":"1","add_existing_access_full":"1","add_existing_width":"750","add_existing_height":"500","add_existing_label":"\\u0412\\u044b\\u0431\\u0440\\u0430\\u0442\\u044c \\u0412\\u0438\\u0434\\u0435\\u043e\\u0440\\u043e\\u043b\\u0438\\u043a","show_delete_button":"3","tmpl_list":"","tmpl_full":"","orderby":"r.ctime ASC","limit_full":"20","limit_list":"10","show_list_all":"2","invite_view_more":"Show All...","show_list_all_full":"1","show_list_all_list":"1","show_list_type":"1"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 0, 1, 3, 99, 0, 48),
	(24, 'k8781b89f72e589ce2775c997bb6dc57e', 'Описание породы', 4, 'html', '{"core":{"show_intro":"1","show_full":"1","show_feed":"0","show_compare":"1","required":"1","searchable":"1","description":"","xml_tag_name":"","field_class":"","show_lable":"1","label_break":"0","lable_class":"","icon":"balloon-box-left.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","default_value":"","intro":"500","hide_intro":"0","readmore":"1","readmore_lbl":"\\u041f\\u043e\\u0434\\u0440\\u043e\\u0431\\u043d\\u0435\\u0435...","full":"0","editor":"tinymce","short":"0","height":"300","plugins":["pagebreak"],"allow_html":"3","tags_mode":"1","filter_tags":"iframe, script","attr_mode":"1","filter_attr":"rel"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 3, 1, 0, 101, 0, 48),
	(25, 'k8dfdef472073f737586c7c3e0e655191', 'Собака', 4, 'parent', '{"core":{"show_intro":"0","show_full":"1","show_feed":"1","show_compare":"0","required":"0","searchable":"0","description":"","xml_tag_name":"","field_class":"","show_lable":"1","label_break":"0","lable_class":"","icon":"animal-dog.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","template_filter":"default.php","template_filter_module":"default.php","filter_enable":"0","filter_hide":"0","filter_descr":"","filter_style":"2","filter_show_number":"1","filter_linkage":"1","filter_user_strict":"0","filter_tip":"Show all records where %s is equal to %s","child_field":"26","child_section":"1","strict_to_user":"2","strict_to_user_mode":"3","show_relate":"0","multi_limit":"10","notify_add":"2","notify_attach":"2","input_mode":"2","input_sort":"","max_result":"10","control_width":"750","control_height":"500","control_label":"Add children","add_more_access":"3","add_more_access_auth":"1","add_more_access_list":"1","add_more_access_full":"1","add_return":"back","invite_add_more":"Add New","add_existing":"3","add_existing_auth":"1","add_existing_access_list":"1","add_existing_access_full":"1","add_existing_width":"750","add_existing_height":"500","add_existing_label":"Attach Existing","show_delete_button":"3","tmpl_list":"blog.f2863d99021633fa0f986bb86b878a95","tmpl_full":"blog.b93663fc500b0b2063591d7ec0ed3fe8","orderby":"r.ctime ASC","limit_full":"20","limit_list":"10","show_list_all":"2","invite_view_more":"Show All...","show_list_all_full":"1","show_list_all_list":"1","show_list_type":"1"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 4, 1, 0, 102, 0, 48),
	(26, 'k3beec8665d494c573f641207652e60f7', 'Порода', 1, 'child', '{"core":{"show_intro":"1","show_full":"1","show_feed":"0","show_compare":"1","required":"1","searchable":"0","description":"","xml_tag_name":"","field_class":"","show_lable":"3","label_break":"0","lable_class":"","icon":"animal-dog.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","template_filter":"default.php","template_filter_module":"default.php","filter_enable":"0","filter_hide":"0","filter_descr":"","filter_style":"2","filter_show_number":"1","filter_linkage":"1","filter_user_strict":"0","filter_tip":"Show all records where %s is equal to %s","parent_field":"25","parent_type":"4","parent_section":"4","strict_to_user":"3","strict_to_user_mode":"3","show_relate":"0","multi_parent":"0","multi_limit":"10","notify_add":"2","notify_attach":"2","input_mode":"2","input_sort":"","max_result":"10","control_width":"750","control_height":"500","control_label":"Set parent","add_more_access":"6","add_more_access_auth":"0","add_more_access_list":"0","add_more_access_full":"1","add_return":"back","invite_add_more":"Add New","add_existing":"3","add_existing_auth":"1","add_existing_access_list":"1","add_existing_access_full":"1","add_existing_width":"750","add_existing_height":"500","add_existing_label":"Attach Existing","tmpl_list":"blog.e28ad82c31f6c93bc8a9b867f4a47e36","tmpl_full":"blog.5e0db3f786a4b78cd5ee550fe00e64cd","orderby":"r.ctime ASC","limit_list":"10","limit_full":"20","show_list_all":"2","invite_view_more":"Show All...","show_list_all_full":"1","show_list_all_list":"1","show_list_type":"1"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 1, 1, 1, 103, 0, 48),
	(27, 'k8331dab18bab17fbf72f8bb9d09611ff', 'Изображение породы', 4, 'akimage', '{"core":{"show_intro":"1","show_full":"1","show_feed":"0","show_compare":"1","required":"1","searchable":"0","description":"","xml_tag_name":"","field_class":"","show_lable":"1","label_break":"0","lable_class":"","icon":"image-sunset.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"list.php","template_output_full":"full.php","select_type":"2","directory":"images","show_subfolders":"0","allow_caption":"0","default_img":"","subfolder":"image","allow_custom_url":"0","custom_url_target":"_blank","list_mode":"1","lightbox_list":"0","img_list_hspace":"0","img_list_vspace":"0","thumbs_list_height":"300","thumbs_list_width":"400","thumbs_list_quality":"80","thumbs_list_mode":"6","thumbs_list_stretch":"1","thumbs_list_bg":"#000000","full_mode":"0","lightbox_full":"0","img_hspace":"0","img_vspace":"0","thumbs_height":"100","thumbs_width":"100","thumbs_quality":"80","thumbs_mode":"6","thumbs_stretch":"0","thumbs_bg":"#000000"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 1, 1, 0, 104, 0, 48),
	(28, 'k5fbaae40053394271bdc4f7a9cd4fe73', 'Главное фото ', 1, 'image', '{"core":{"show_intro":"1","show_full":"1","show_feed":"1","show_compare":"0","required":"1","searchable":"0","description":"","xml_tag_name":"","field_class":"","show_lable":"1","label_break":"0","lable_class":"","icon":"image-sunset.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"list.php","template_output_full":"full.php","select_type":"2","formats":"png,jpg,gif,jpeg","directory":"images","show_subfolders":"0","allow_caption":"0","default_img":"","subfolder":"image","list_mode":"1","lightbox_list":"0","img_list_hspace":"0","img_list_vspace":"0","thumbs_list_height":"300","thumbs_list_width":"400","thumbs_list_quality":"80","thumbs_list_mode":"6","thumbs_list_stretch":"1","thumbs_list_bg":"#000000","full_mode":"0","lightbox_full":"0","img_hspace":"0","img_vspace":"0","thumbs_height":"100","thumbs_width":"100","thumbs_quality":"80","thumbs_mode":"6","thumbs_stretch":"0","thumbs_bg":"#000000"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 1, 1, 0, 105, 0, 48);
/*!40000 ALTER TABLE `gy3te_js_res_fields` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_js_res_fields_group
CREATE TABLE IF NOT EXISTS `gy3te_js_res_fields_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `type_id` int(10) NOT NULL DEFAULT '0',
  `ordering` int(10) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `icon` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_type` (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_js_res_fields_group: 5 rows
DELETE FROM `gy3te_js_res_fields_group`;
/*!40000 ALTER TABLE `gy3te_js_res_fields_group` DISABLE KEYS */;
INSERT INTO `gy3te_js_res_fields_group` (`id`, `title`, `type_id`, `ordering`, `description`, `checked_out`, `checked_out_time`, `icon`) VALUES
	(1, 'Паспорт', 1, 1, '', 0, '0000-00-00 00:00:00', 'information-button.png'),
	(2, 'Альбомы', 1, 4, '', 0, '0000-00-00 00:00:00', 'images-stack.png'),
	(3, 'Видеоролики', 1, 5, '', 0, '0000-00-00 00:00:00', 'clapperboard.png'),
	(4, 'Родословная', 1, 2, '', 0, '0000-00-00 00:00:00', 'block.png'),
	(5, 'Местоположение', 1, 3, '', 0, '0000-00-00 00:00:00', 'globe.png');
/*!40000 ALTER TABLE `gy3te_js_res_fields_group` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_js_res_field_geo
CREATE TABLE IF NOT EXISTS `gy3te_js_res_field_geo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country` char(2) DEFAULT NULL,
  `state` varchar(150) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `zip` varchar(15) DEFAULT NULL,
  `lat` float(18,15) DEFAULT NULL,
  `lng` float(18,15) DEFAULT NULL,
  `state_trans` varchar(150) DEFAULT NULL,
  `city_trans` varchar(200) DEFAULT NULL,
  `section_id` int(11) DEFAULT '0',
  `field_id` int(11) DEFAULT '0',
  `field_key` varchar(38) DEFAULT NULL,
  `record_id` int(11) DEFAULT '0',
  `user_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_sect` (`section_id`),
  KEY `idx_key` (`field_key`),
  KEY `idx_fid` (`field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_js_res_field_geo: ~0 rows (приблизительно)
DELETE FROM `gy3te_js_res_field_geo`;
/*!40000 ALTER TABLE `gy3te_js_res_field_geo` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_js_res_field_geo` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_js_res_field_multilevelselect
CREATE TABLE IF NOT EXISTS `gy3te_js_res_field_multilevelselect` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `field_id` int(11) DEFAULT '0',
  `parent_id` int(11) DEFAULT '0',
  `level` int(11) DEFAULT '0',
  `lft` int(11) DEFAULT '0',
  `rgt` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_field` (`field_id`),
  KEY `idx_lr` (`lft`,`rgt`),
  KEY `idx_parent` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_js_res_field_multilevelselect: 1 rows
DELETE FROM `gy3te_js_res_field_multilevelselect`;
/*!40000 ALTER TABLE `gy3te_js_res_field_multilevelselect` DISABLE KEYS */;
INSERT INTO `gy3te_js_res_field_multilevelselect` (`id`, `name`, `field_id`, `parent_id`, `level`, `lft`, `rgt`) VALUES
	(1, 'root', 0, 0, 0, 1, 2);
/*!40000 ALTER TABLE `gy3te_js_res_field_multilevelselect` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_js_res_field_stepaccess
CREATE TABLE IF NOT EXISTS `gy3te_js_res_field_stepaccess` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `record_id` int(11) NOT NULL DEFAULT '0',
  `field_id` int(11) NOT NULL DEFAULT '0',
  `ctime` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user` (`user_id`),
  KEY `idx_record` (`record_id`),
  KEY `idx_field` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_js_res_field_stepaccess: 0 rows
DELETE FROM `gy3te_js_res_field_stepaccess`;
/*!40000 ALTER TABLE `gy3te_js_res_field_stepaccess` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_js_res_field_stepaccess` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_js_res_field_telephone
CREATE TABLE IF NOT EXISTS `gy3te_js_res_field_telephone` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `code2` varchar(2) NOT NULL DEFAULT '',
  `code3` varchar(3) NOT NULL DEFAULT '',
  `phone_code` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=238 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_js_res_field_telephone: 237 rows
DELETE FROM `gy3te_js_res_field_telephone`;
/*!40000 ALTER TABLE `gy3te_js_res_field_telephone` DISABLE KEYS */;
INSERT INTO `gy3te_js_res_field_telephone` (`id`, `name`, `code2`, `code3`, `phone_code`) VALUES
	(1, 'Afghanistan', 'AF', 'AFG', '93'),
	(2, 'Albania', 'AL', 'ALB', '355'),
	(3, 'Algeria', 'DZ', 'DZA', '213'),
	(4, 'American Samoa', 'AS', 'ASM', '1-684'),
	(5, 'Andorra', 'AD', 'AND', '376'),
	(6, 'Angola', 'AO', 'AGO', '244'),
	(7, 'Anguilla', 'AI', 'AIA', '1-264'),
	(8, 'Antarctica', 'AQ', 'ATA', '672'),
	(9, 'Antigua and Barbuda', 'AG', 'ATG', '1-268'),
	(10, 'Argentina', 'AR', 'ARG', '54'),
	(11, 'Armenia', 'AM', 'ARM', '374'),
	(12, 'Aruba', 'AW', 'ABW', '297'),
	(13, 'Australia', 'AU', 'AUS', '61'),
	(14, 'Austria', 'AT', 'AUT', '43'),
	(15, 'Azerbaijan', 'AZ', 'AZE', '994'),
	(16, 'Bahamas', 'BS', 'BHS', '1-242'),
	(17, 'Bahrain', 'BH', 'BHR', '973'),
	(18, 'Bangladesh', 'BD', 'BGD', '880'),
	(19, 'Barbados', 'BB', 'BRB', '1-246'),
	(20, 'Belarus', 'BY', 'BLR', '375'),
	(21, 'Belgium', 'BE', 'BEL', '32'),
	(22, 'Belize', 'BZ', 'BLZ', '501'),
	(23, 'Benin', 'BJ', 'BEN', '229'),
	(24, 'Bermuda', 'BM', 'BMU', '1-441'),
	(25, 'Bhutan', 'BT', 'BTN', '975'),
	(26, 'Bolivia', 'BO', 'BOL', '591'),
	(27, 'Bosnia and Herzegovina', 'BA', 'BIH', '387'),
	(28, 'Botswana', 'BW', 'BWA', '267'),
	(29, 'Brazil', 'BR', 'BRA', '55'),
	(30, 'British Indian Ocean Territory', 'IO', 'IOT', ''),
	(31, 'British Virgin Islands', 'VG', 'VGB', '1-284'),
	(32, 'Brunei', 'BN', 'BRN', '673'),
	(33, 'Bulgaria', 'BG', 'BGR', '359'),
	(34, 'Burkina Faso', 'BF', 'BFA', '226'),
	(35, 'Burma (Myanmar)', 'MM', 'MMR', '95'),
	(36, 'Burundi', 'BI', 'BDI', '257'),
	(37, 'Cambodia', 'KH', 'KHM', '855'),
	(38, 'Cameroon', 'CM', 'CMR', '237'),
	(39, 'Canada', 'CA', 'CAN', '1'),
	(40, 'Cape Verde', 'CV', 'CPV', '238'),
	(41, 'Cayman Islands', 'KY', 'CYM', '1-345'),
	(42, 'Central African Republic', 'CF', 'CAF', '236'),
	(43, 'Chad', 'TD', 'TCD', '235'),
	(44, 'Chile', 'CL', 'CHL', '56'),
	(45, 'China', 'CN', 'CHN', '86'),
	(46, 'Christmas Island', 'CX', 'CXR', '61'),
	(47, 'Cocos (Keeling) Islands', 'CC', 'CCK', '61'),
	(48, 'Colombia', 'CO', 'COL', '57'),
	(49, 'Comoros', 'KM', 'COM', '269'),
	(50, 'Cook Islands', 'CK', 'COK', '682'),
	(51, 'Costa Rica', 'CR', 'CRC', '506'),
	(52, 'Croatia', 'HR', 'HRV', '385'),
	(53, 'Cuba', 'CU', 'CUB', '53'),
	(54, 'Cyprus', 'CY', 'CYP', '357'),
	(55, 'Czech Republic', 'CZ', 'CZE', '420'),
	(56, 'Democratic Republic of the Congo', 'CD', 'COD', '243'),
	(57, 'Denmark', 'DK', 'DNK', '45'),
	(58, 'Djibouti', 'DJ', 'DJI', '253'),
	(59, 'Dominica', 'DM', 'DMA', '1-767'),
	(60, 'Dominican Republic', 'DO', 'DOM', '1-809'),
	(61, 'Ecuador', 'EC', 'ECU', '593'),
	(62, 'Egypt', 'EG', 'EGY', '20'),
	(63, 'El Salvador', 'SV', 'SLV', '503'),
	(64, 'Equatorial Guinea', 'GQ', 'GNQ', '240'),
	(65, 'Eritrea', 'ER', 'ERI', '291'),
	(66, 'Estonia', 'EE', 'EST', '372'),
	(67, 'Ethiopia', 'ET', 'ETH', '251'),
	(68, 'Falkland Islands', 'FK', 'FLK', '500'),
	(69, 'Faroe Islands', 'FO', 'FRO', '298'),
	(70, 'Fiji', 'FJ', 'FJI', '679'),
	(71, 'Finland', 'FI', 'FIN', '358'),
	(72, 'France', 'FR', 'FRA', '33'),
	(73, 'French Polynesia', 'PF', 'PYF', '689'),
	(74, 'Gabon', 'GA', 'GAB', '241'),
	(75, 'Gambia', 'GM', 'GMB', '220'),
	(76, 'Gaza Strip', '', '', '970'),
	(77, 'Georgia', 'GE', 'GEO', '995'),
	(78, 'Germany', 'DE', 'DEU', '49'),
	(79, 'Ghana', 'GH', 'GHA', '233'),
	(80, 'Gibraltar', 'GI', 'GIB', '350'),
	(81, 'Greece', 'GR', 'GRC', '30'),
	(82, 'Greenland', 'GL', 'GRL', '299'),
	(83, 'Grenada', 'GD', 'GRD', '1-473'),
	(84, 'Guam', 'GU', 'GUM', '1-671'),
	(85, 'Guatemala', 'GT', 'GTM', '502'),
	(86, 'Guinea', 'GN', 'GIN', '224'),
	(87, 'Guinea-Bissau', 'GW', 'GNB', '245'),
	(88, 'Guyana', 'GY', 'GUY', '592'),
	(89, 'Haiti', 'HT', 'HTI', '509'),
	(90, 'Holy See (Vatican City)', 'VA', 'VAT', '39'),
	(91, 'Honduras', 'HN', 'HND', '504'),
	(92, 'Hong Kong', 'HK', 'HKG', '852'),
	(93, 'Hungary', 'HU', 'HUN', '36'),
	(94, 'Iceland', 'IS', 'IS', '354'),
	(95, 'India', 'IN', 'IND', '91'),
	(96, 'Indonesia', 'ID', 'IDN', '62'),
	(97, 'Iran', 'IR', 'IRN', '98'),
	(98, 'Iraq', 'IQ', 'IRQ', '964'),
	(99, 'Ireland', 'IE', 'IRL', '353'),
	(100, 'Isle of Man', 'IM', 'IMN', '44'),
	(101, 'Israel', 'IL', 'ISR', '972'),
	(102, 'Italy', 'IT', 'ITA', '39'),
	(103, 'Ivory Coast', 'CI', 'CIV', '225'),
	(104, 'Jamaica', 'JM', 'JAM', '1-876'),
	(105, 'Japan', 'JP', 'JPN', '81'),
	(106, 'Jersey', 'JE', 'JEY', ''),
	(107, 'Jordan', 'JO', 'JOR', '962'),
	(108, 'Kazakhstan', 'KZ', 'KAZ', '7'),
	(109, 'Kenya', 'KE', 'KEN', '254'),
	(110, 'Kiribati', 'KI', 'KIR', '686'),
	(111, 'Kosovo', '', '', '381'),
	(112, 'Kuwait', 'KW', 'KWT', '965'),
	(113, 'Kyrgyzstan', 'KG', 'KGZ', '996'),
	(114, 'Laos', 'LA', 'LAO', '856'),
	(115, 'Latvia', 'LV', 'LVA', '371'),
	(116, 'Lebanon', 'LB', 'LBN', '961'),
	(117, 'Lesotho', 'LS', 'LSO', '266'),
	(118, 'Liberia', 'LR', 'LBR', '231'),
	(119, 'Libya', 'LY', 'LBY', '218'),
	(120, 'Liechtenstein', 'LI', 'LIE', '423'),
	(121, 'Lithuania', 'LT', 'LTU', '370'),
	(122, 'Luxembourg', 'LU', 'LUX', '352'),
	(123, 'Macau', 'MO', 'MAC', '853'),
	(124, 'Macedonia', 'MK', 'MKD', '389'),
	(125, 'Madagascar', 'MG', 'MDG', '261'),
	(126, 'Malawi', 'MW', 'MWI', '265'),
	(127, 'Malaysia', 'MY', 'MYS', '60'),
	(128, 'Maldives', 'MV', 'MDV', '960'),
	(129, 'Mali', 'ML', 'MLI', '223'),
	(130, 'Malta', 'MT', 'MLT', '356'),
	(131, 'Marshall Islands', 'MH', 'MHL', '692'),
	(132, 'Mauritania', 'MR', 'MRT', '222'),
	(133, 'Mauritius', 'MU', 'MUS', '230'),
	(134, 'Mayotte', 'YT', 'MYT', '262'),
	(135, 'Mexico', 'MX', 'MEX', '52'),
	(136, 'Micronesia', 'FM', 'FSM', '691'),
	(137, 'Moldova', 'MD', 'MDA', '373'),
	(138, 'Monaco', 'MC', 'MCO', '377'),
	(139, 'Mongolia', 'MN', 'MNG', '976'),
	(140, 'Montenegro', 'ME', 'MNE', '382'),
	(141, 'Montserrat', 'MS', 'MSR', '1-664'),
	(142, 'Morocco', 'MA', 'MAR', '212'),
	(143, 'Mozambique', 'MZ', 'MOZ', '258'),
	(144, 'Namibia', 'NA', 'NAM', '264'),
	(145, 'Nauru', 'NR', 'NRU', '674'),
	(146, 'Nepal', 'NP', 'NPL', '977'),
	(147, 'Netherlands', 'NL', 'NLD', '31'),
	(148, 'Netherlands Antilles', 'AN', 'ANT', '599'),
	(149, 'New Caledonia', 'NC', 'NCL', '687'),
	(150, 'New Zealand', 'NZ', 'NZL', '64'),
	(151, 'Nicaragua', 'NI', 'NIC', '505'),
	(152, 'Niger', 'NE', 'NER', '227'),
	(153, 'Nigeria', 'NG', 'NGA', '234'),
	(154, 'Niue', 'NU', 'NIU', '683'),
	(155, 'Norfolk Island', '', '', '672'),
	(156, 'North Korea', 'KP', 'PRK', '850'),
	(157, 'Northern Mariana Islands', 'MP', 'MNP', '1-670'),
	(158, 'Norway', 'NO', 'NOR', '47'),
	(159, 'Oman', 'OM', 'OMN', '968'),
	(160, 'Pakistan', 'PK', 'PAK', '92'),
	(161, 'Palau', 'PW', 'PLW', '680'),
	(162, 'Panama', 'PA', 'PAN', '507'),
	(163, 'Papua New Guinea', 'PG', 'PNG', '675'),
	(164, 'Paraguay', 'PY', 'PRY', '595'),
	(165, 'Peru', 'PE', 'PER', '51'),
	(166, 'Philippines', 'PH', 'PHL', '63'),
	(167, 'Pitcairn Islands', 'PN', 'PCN', '870'),
	(168, 'Poland', 'PL', 'POL', '48'),
	(169, 'Portugal', 'PT', 'PRT', '351'),
	(170, 'Puerto Rico', 'PR', 'PRI', '1'),
	(171, 'Qatar', 'QA', 'QAT', '974'),
	(172, 'Republic of the Congo', 'CG', 'COG', '242'),
	(173, 'Romania', 'RO', 'ROU', '40'),
	(174, 'Russia', 'RU', 'RUS', '7'),
	(175, 'Rwanda', 'RW', 'RWA', '250'),
	(176, 'Saint Barthelemy', 'BL', 'BLM', '590'),
	(177, 'Saint Helena', 'SH', 'SHN', '290'),
	(178, 'Saint Kitts and Nevis', 'KN', 'KNA', '1-869'),
	(179, 'Saint Lucia', 'LC', 'LCA', '1-758'),
	(180, 'Saint Martin', 'MF', 'MAF', '1-599'),
	(181, 'Saint Pierre and Miquelon', 'PM', 'SPM', '508'),
	(182, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '1-784'),
	(183, 'Samoa', 'WS', 'WSM', '685'),
	(184, 'San Marino', 'SM', 'SMR', '378'),
	(185, 'Sao Tome and Principe', 'ST', 'STP', '239'),
	(186, 'Saudi Arabia', 'SA', 'SAU', '966'),
	(187, 'Senegal', 'SN', 'SEN', '221'),
	(188, 'Serbia', 'RS', 'SRB', '381'),
	(189, 'Seychelles', 'SC', 'SYC', '248'),
	(190, 'Sierra Leone', 'SL', 'SLE', '232'),
	(191, 'Singapore', 'SG', 'SGP', '65'),
	(192, 'Slovakia', 'SK', 'SVK', '421'),
	(193, 'Slovenia', 'SI', 'SVN', '386'),
	(194, 'Solomon Islands', 'SB', 'SLB', '677'),
	(195, 'Somalia', 'SO', 'SOM', '252'),
	(196, 'South Africa', 'ZA', 'ZAF', '27'),
	(197, 'South Korea', 'KR', 'KOR', '82'),
	(198, 'Spain', 'ES', 'ESP', '34'),
	(199, 'Sri Lanka', 'LK', 'LKA', '94'),
	(200, 'Sudan', 'SD', 'SDN', '249'),
	(201, 'Suriname', 'SR', 'SUR', '597'),
	(202, 'Svalbard', 'SJ', 'SJM', ''),
	(203, 'Swaziland', 'SZ', 'SWZ', '268'),
	(204, 'Sweden', 'SE', 'SWE', '46'),
	(205, 'Switzerland', 'CH', 'CHE', '41'),
	(206, 'Syria', 'SY', 'SYR', '963'),
	(207, 'Taiwan', 'TW', 'TWN', '886'),
	(208, 'Tajikistan', 'TJ', 'TJK', '992'),
	(209, 'Tanzania', 'TZ', 'TZA', '255'),
	(210, 'Thailand', 'TH', 'THA', '66'),
	(211, 'Timor-Leste', 'TL', 'TLS', '670'),
	(212, 'Togo', 'TG', 'TGO', '228'),
	(213, 'Tokelau', 'TK', 'TKL', '690'),
	(214, 'Tonga', 'TO', 'TON', '676'),
	(215, 'Trinidad and Tobago', 'TT', 'TTO', '1-868'),
	(216, 'Tunisia', 'TN', 'TUN', '216'),
	(217, 'Turkey', 'TR', 'TUR', '90'),
	(218, 'Turkmenistan', 'TM', 'TKM', '993'),
	(219, 'Turks and Caicos Islands', 'TC', 'TCA', '1-649'),
	(220, 'Tuvalu', 'TV', 'TUV', '688'),
	(221, 'Uganda', 'UG', 'UGA', '256'),
	(222, 'Ukraine', 'UA', 'UKR', '380'),
	(223, 'United Arab Emirates', 'AE', 'ARE', '971'),
	(224, 'United Kingdom', 'GB', 'GBR', '44'),
	(225, 'United States', 'US', 'USA', '1'),
	(226, 'Uruguay', 'UY', 'URY', '598'),
	(227, 'US Virgin Islands', 'VI', 'VIR', '1-340'),
	(228, 'Uzbekistan', 'UZ', 'UZB', '998'),
	(229, 'Vanuatu', 'VU', 'VUT', '678'),
	(230, 'Venezuela', 'VE', 'VEN', '58'),
	(231, 'Vietnam', 'VN', 'VNM', '84'),
	(232, 'Wallis and Futuna', 'WF', 'WLF', '681'),
	(233, 'West Bank', '', '', '970'),
	(234, 'Western Sahara', 'EH', 'ESH', ''),
	(235, 'Yemen', 'YE', 'YEM', '967'),
	(236, 'Zambia', 'ZM', 'ZMB', '260'),
	(237, 'Zimbabwe', 'ZW', 'ZWE', '263');
/*!40000 ALTER TABLE `gy3te_js_res_field_telephone` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_js_res_files
CREATE TABLE IF NOT EXISTS `gy3te_js_res_files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(55) NOT NULL DEFAULT '',
  `realname` varchar(255) NOT NULL DEFAULT '',
  `ctime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `saved` tinyint(1) NOT NULL DEFAULT '0',
  `params` text,
  `section_id` int(11) DEFAULT '0',
  `record_id` int(11) DEFAULT '0',
  `type_id` int(11) DEFAULT '0',
  `field_id` int(11) DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `ext` varchar(10) NOT NULL DEFAULT '',
  `fullpath` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `size` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(20) NOT NULL DEFAULT 'Not detected',
  `width` int(11) DEFAULT '0',
  `height` int(11) DEFAULT '0',
  `rating` double DEFAULT NULL,
  `rating_nums` int(11) DEFAULT '0',
  `comments` text,
  `comment_num` int(11) DEFAULT '0',
  `title` text,
  `description` text,
  `views` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`filename`),
  KEY `idx_record` (`record_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_js_res_files: 2 rows
DELETE FROM `gy3te_js_res_files`;
/*!40000 ALTER TABLE `gy3te_js_res_files` DISABLE KEYS */;
INSERT INTO `gy3te_js_res_files` (`id`, `filename`, `realname`, `ctime`, `saved`, `params`, `section_id`, `record_id`, `type_id`, `field_id`, `user_id`, `ext`, `fullpath`, `hits`, `size`, `ip`, `width`, `height`, `rating`, `rating_nums`, `comments`, `comment_num`, `title`, `description`, `views`) VALUES
	(1, '1494856572_e1714fb5c3e954d0b172da5cc43d0325.jpg', 'haski_main.jpg', '2017-05-15 13:56:12', 1, NULL, 4, 1, 4, 27, 48, 'jpg', 'uploads/image/2017-05/1494856572_e1714fb5c3e954d0b172da5cc43d0325.jpg', 0, 0, '127.0.0.1', 0, 0, NULL, 0, NULL, 0, NULL, NULL, 0),
	(2, '1494857112_eefda062330da2c91b846459c4b56fdf.jpg', 'лотас.jpg', '2017-05-15 14:05:12', 1, NULL, 1, 2, 1, 28, 49, 'jpg', 'uploads/image/2017-05/1494857112_eefda062330da2c91b846459c4b56fdf.jpg', 0, 0, '127.0.0.1', 0, 0, NULL, 0, NULL, 0, NULL, NULL, 0);
/*!40000 ALTER TABLE `gy3te_js_res_files` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_js_res_hits
CREATE TABLE IF NOT EXISTS `gy3te_js_res_hits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `record_id` int(10) NOT NULL DEFAULT '0',
  `ctime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_id` int(10) NOT NULL DEFAULT '0',
  `ip` varchar(16) NOT NULL DEFAULT '',
  `section_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_record` (`record_id`),
  KEY `idex_user` (`section_id`,`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=425 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_js_res_hits: 424 rows
DELETE FROM `gy3te_js_res_hits`;
/*!40000 ALTER TABLE `gy3te_js_res_hits` DISABLE KEYS */;
INSERT INTO `gy3te_js_res_hits` (`id`, `record_id`, `ctime`, `user_id`, `ip`, `section_id`) VALUES
	(1, 1, '2017-05-15 13:50:18', 48, '127.0.0.1', 4),
	(2, 1, '2017-05-18 17:09:33', 0, '46.53.181.20', 4),
	(3, 1, '2017-05-22 04:10:42', 0, '66.249.64.74', 4),
	(4, 2, '2017-06-02 22:27:24', 0, '178.154.200.55', 1),
	(5, 1, '2017-06-03 03:20:17', 0, '141.8.184.1', 4),
	(6, 1, '2017-06-03 03:20:20', 0, '93.158.152.57', 4),
	(7, 1, '2017-06-04 07:34:32', 0, '141.8.142.138', 4),
	(8, 2, '2017-06-04 07:41:54', 0, '95.108.179.26', 1),
	(9, 2, '2017-06-07 22:41:11', 0, '69.58.178.56', 1),
	(10, 1, '2017-06-07 22:41:13', 0, '69.58.178.56', 4),
	(11, 1, '2017-06-11 05:40:16', 0, '93.158.152.68', 4),
	(12, 2, '2017-06-11 08:21:04', 0, '141.8.184.1', 1),
	(13, 1, '2017-06-12 09:15:47', 0, '176.9.139.229', 4),
	(14, 2, '2017-06-12 09:15:51', 0, '176.9.139.229', 1),
	(15, 1, '2017-06-12 16:00:33', 0, '141.8.184.13', 4),
	(16, 2, '2017-06-13 05:05:14', 0, '178.154.200.21', 1),
	(17, 2, '2017-06-13 05:05:18', 0, '178.154.189.19', 1),
	(18, 1, '2017-06-13 10:49:38', 0, '38.100.21.65', 4),
	(19, 2, '2017-06-13 10:49:39', 0, '38.100.21.65', 1),
	(20, 2, '2017-06-13 12:51:08', 0, '66.249.64.205', 1),
	(21, 1, '2017-06-13 13:48:27', 0, '66.249.64.203', 4),
	(22, 1, '2017-06-13 20:32:58', 0, '141.8.142.157', 4),
	(23, 1, '2017-06-14 00:42:02', 0, '178.154.200.4', 4),
	(24, 2, '2017-06-14 07:46:45', 0, '141.8.142.157', 1),
	(25, 2, '2017-06-14 07:46:47', 0, '95.108.181.5', 1),
	(26, 1, '2017-06-17 09:56:29', 0, '178.154.189.19', 4),
	(27, 2, '2017-06-17 10:29:34', 0, '37.9.113.40', 1),
	(28, 1, '2017-06-18 17:03:46', 0, '95.108.179.26', 4),
	(29, 2, '2017-06-20 20:49:06', 0, '93.158.152.23', 1),
	(30, 2, '2017-06-23 18:15:08', 0, '93.158.152.57', 1),
	(31, 1, '2017-06-23 23:55:49', 0, '178.154.200.21', 4),
	(32, 1, '2017-06-23 23:55:53', 0, '95.108.181.5', 4),
	(33, 1, '2017-06-25 08:56:42', 0, '141.8.142.66', 4),
	(34, 2, '2017-06-26 07:11:04', 0, '141.8.184.13', 1),
	(35, 2, '2017-06-30 00:30:38', 0, '93.158.152.52', 1),
	(36, 1, '2017-07-03 05:28:15', 0, '37.110.146.136', 4),
	(37, 1, '2017-07-03 11:19:45', 0, '37.9.113.23', 4),
	(38, 2, '2017-07-04 08:34:24', 0, '178.154.200.4', 1),
	(39, 2, '2017-07-10 05:59:01', 0, '69.58.178.58', 1),
	(40, 1, '2017-07-10 05:59:03', 0, '69.58.178.58', 4),
	(41, 1, '2017-07-10 23:44:41', 0, '188.255.16.153', 4),
	(42, 2, '2017-07-11 13:35:56', 0, '66.249.70.11', 1),
	(43, 1, '2017-07-11 22:46:07', 0, '38.100.21.62', 4),
	(44, 2, '2017-07-11 22:46:08', 0, '38.100.21.62', 1),
	(45, 1, '2017-07-12 19:14:00', 0, '217.69.133.244', 4),
	(46, 2, '2017-07-13 04:59:05', 0, '217.69.133.243', 1),
	(47, 1, '2017-07-13 17:54:13', 0, '217.69.133.245', 4),
	(48, 1, '2017-07-16 14:03:28', 0, '178.154.149.6', 4),
	(49, 1, '2017-07-20 07:29:07', 0, '128.69.152.114', 4),
	(50, 1, '2017-07-23 10:25:03', 0, '176.14.192.60', 4),
	(51, 1, '2017-07-24 12:47:49', 0, '37.9.113.117', 4),
	(52, 1, '2017-07-24 12:47:52', 0, '5.45.207.90', 4),
	(53, 1, '2017-07-26 19:29:01', 0, '5.9.111.70', 4),
	(54, 2, '2017-07-26 19:29:03', 0, '5.9.111.70', 1),
	(55, 2, '2017-07-27 09:56:32', 0, '176.9.11.125', 1),
	(56, 1, '2017-07-27 09:57:07', 0, '176.9.11.125', 4),
	(57, 2, '2017-07-28 05:25:55', 0, '80.241.211.185', 1),
	(58, 2, '2017-07-28 22:42:47', 0, '69.197.177.50', 1),
	(59, 1, '2017-07-30 05:56:35', 0, '87.98.217.57', 4),
	(60, 2, '2017-07-30 05:56:39', 0, '87.98.217.57', 1),
	(61, 2, '2017-07-30 12:47:50', 0, '144.76.12.99', 1),
	(62, 2, '2017-07-30 12:47:56', 0, '144.76.76.115', 1),
	(63, 2, '2017-07-30 12:47:56', 0, '88.198.16.12', 1),
	(64, 1, '2017-07-30 12:47:56', 0, '144.76.12.99', 4),
	(65, 1, '2017-07-30 12:48:17', 0, '88.198.16.12', 4),
	(66, 1, '2017-07-30 12:48:18', 0, '144.76.76.115', 4),
	(67, 2, '2017-07-30 12:48:40', 0, '5.9.149.98', 1),
	(68, 1, '2017-07-30 12:48:46', 0, '5.9.149.98', 4),
	(69, 2, '2017-07-31 06:04:17', 0, '69.30.210.242', 1),
	(70, 1, '2017-07-31 10:22:15', 0, '37.9.113.72', 4),
	(71, 1, '2017-07-31 10:22:19', 0, '37.9.113.80', 4),
	(72, 2, '2017-07-31 22:55:54', 0, '5.189.160.96', 1),
	(73, 1, '2017-08-02 03:03:48', 0, '91.209.51.22', 4),
	(74, 2, '2017-08-02 03:03:51', 0, '91.209.51.22', 1),
	(75, 2, '2017-08-02 17:09:40', 0, '62.210.101.104', 1),
	(76, 1, '2017-08-02 17:10:04', 0, '62.210.101.104', 4),
	(77, 2, '2017-08-02 20:46:12', 0, '37.9.113.117', 1),
	(78, 2, '2017-08-02 20:46:15', 0, '37.9.113.102', 1),
	(79, 1, '2017-08-05 08:58:54', 0, '136.243.152.18', 4),
	(80, 2, '2017-08-05 08:58:59', 0, '136.243.152.18', 1),
	(81, 2, '2017-08-05 10:36:33', 0, '62.210.101.96', 1),
	(82, 2, '2017-08-05 14:13:01', 0, '5.9.106.230', 1),
	(83, 2, '2017-08-05 20:21:30', 0, '69.58.178.59', 1),
	(84, 1, '2017-08-05 20:21:32', 0, '69.58.178.59', 4),
	(85, 2, '2017-08-05 21:47:45', 0, '198.204.243.138', 1),
	(86, 1, '2017-08-05 21:48:00', 0, '198.204.243.138', 4),
	(87, 2, '2017-08-06 11:54:48', 0, '173.212.206.173', 1),
	(88, 2, '2017-08-07 06:29:01', 0, '217.69.133.247', 1),
	(89, 1, '2017-08-07 08:02:58', 0, '217.69.133.243', 4),
	(90, 2, '2017-08-07 08:26:37', 0, '192.151.145.82', 1),
	(91, 2, '2017-08-08 06:05:28', 0, '217.69.133.246', 1),
	(92, 1, '2017-08-08 06:05:32', 0, '217.69.133.247', 4),
	(93, 1, '2017-08-08 07:42:16', 0, '217.69.133.190', 4),
	(94, 1, '2017-08-08 11:14:14', 0, '144.76.30.241', 4),
	(95, 2, '2017-08-08 11:14:16', 0, '144.76.30.241', 1),
	(96, 1, '2017-08-08 18:50:43', 0, '5.45.207.81', 4),
	(97, 1, '2017-08-08 18:50:50', 0, '178.154.171.7', 4),
	(98, 2, '2017-08-08 23:29:12', 0, '217.69.133.245', 1),
	(99, 2, '2017-08-09 00:33:38', 0, '149.202.49.80', 1),
	(100, 1, '2017-08-09 00:33:44', 0, '149.202.49.80', 4),
	(101, 2, '2017-08-09 05:49:22', 0, '217.69.133.241', 1),
	(102, 2, '2017-08-09 14:29:33', 0, '173.212.196.228', 1),
	(103, 2, '2017-08-10 09:54:22', 0, '69.30.198.202', 1),
	(104, 1, '2017-08-11 13:55:14', 0, '173.212.240.191', 4),
	(105, 2, '2017-08-11 13:55:24', 0, '173.212.240.191', 1),
	(106, 2, '2017-08-12 06:02:46', 0, '46.4.49.90', 1),
	(107, 1, '2017-08-12 06:02:53', 0, '46.4.49.90', 4),
	(108, 2, '2017-08-12 18:34:28', 0, '213.136.80.187', 1),
	(109, 2, '2017-08-13 13:54:34', 0, '5.9.61.111', 1),
	(110, 2, '2017-08-15 11:24:46', 0, '5.9.147.133', 1),
	(111, 1, '2017-08-15 11:24:53', 0, '5.9.147.133', 4),
	(112, 2, '2017-08-15 22:57:50', 0, '173.212.240.178', 1),
	(113, 2, '2017-08-16 01:46:01', 0, '66.249.75.6', 1),
	(114, 1, '2017-08-16 12:50:36', 0, '87.250.224.37', 4),
	(115, 1, '2017-08-16 12:50:41', 0, '178.154.200.39', 4),
	(116, 2, '2017-08-16 17:09:28', 0, '213.136.91.195', 1),
	(117, 2, '2017-08-17 14:06:47', 0, '37.9.113.67', 1),
	(118, 1, '2017-08-17 21:48:39', 0, '178.151.143.163', 4),
	(119, 2, '2017-08-17 21:48:42', 0, '178.151.143.163', 1),
	(120, 2, '2017-08-18 12:00:39', 0, '91.121.86.136', 1),
	(121, 1, '2017-08-18 12:00:49', 0, '91.121.86.136', 4),
	(122, 2, '2017-08-19 02:53:54', 0, '198.245.49.215', 1),
	(123, 1, '2017-08-19 12:39:31', 0, '87.250.224.99', 4),
	(124, 2, '2017-08-20 00:38:16', 0, '151.80.46.90', 1),
	(125, 1, '2017-08-20 12:38:29', 0, '87.250.224.49', 4),
	(126, 1, '2017-08-21 02:07:32', 0, '88.89.146.251', 4),
	(127, 2, '2017-08-21 02:07:36', 0, '88.89.146.251', 1),
	(128, 2, '2017-08-21 15:04:32', 0, '5.189.144.23', 1),
	(129, 1, '2017-08-21 15:04:58', 0, '5.189.144.23', 4),
	(130, 1, '2017-08-21 15:29:27', 0, '107.150.59.98', 4),
	(131, 2, '2017-08-21 15:29:29', 0, '107.150.59.98', 1),
	(132, 2, '2017-08-22 15:05:20', 0, '5.189.184.181', 1),
	(133, 1, '2017-08-23 17:31:53', 0, '87.250.224.94', 4),
	(134, 1, '2017-08-24 09:54:44', 0, '62.210.103.36', 4),
	(135, 2, '2017-08-24 09:54:49', 0, '62.210.103.36', 1),
	(136, 2, '2017-08-24 20:09:16', 0, '88.198.66.230', 1),
	(137, 1, '2017-08-24 20:09:23', 0, '88.198.66.230', 4),
	(138, 1, '2017-08-25 10:50:15', 0, '37.9.113.67', 4),
	(139, 2, '2017-08-25 17:46:04', 0, '136.243.73.76', 1),
	(140, 2, '2017-08-26 03:28:19', 0, '208.110.93.78', 1),
	(141, 1, '2017-08-27 11:32:21', 0, '5.9.61.111', 4),
	(142, 1, '2017-08-28 03:55:51', 0, '173.212.240.178', 4),
	(143, 2, '2017-08-28 11:48:00', 0, '79.143.185.25', 1),
	(144, 2, '2017-08-29 03:56:32', 0, '144.76.38.73', 1),
	(145, 1, '2017-08-30 10:57:06', 0, '144.76.38.40', 4),
	(146, 2, '2017-08-30 10:57:08', 0, '144.76.38.40', 1),
	(147, 2, '2017-08-31 00:37:08', 0, '62.210.157.129', 1),
	(148, 1, '2017-08-31 00:37:36', 0, '62.210.157.129', 4),
	(149, 2, '2017-08-31 14:09:52', 0, '88.198.19.164', 1),
	(150, 2, '2017-09-01 11:56:42', 0, '176.31.101.111', 1),
	(151, 1, '2017-09-02 09:19:12', 0, '77.240.183.238', 4),
	(152, 2, '2017-09-02 09:19:25', 0, '77.240.183.238', 1),
	(153, 1, '2017-09-02 15:04:17', 0, '144.76.12.66', 4),
	(154, 2, '2017-09-02 15:04:19', 0, '144.76.12.66', 1),
	(155, 2, '2017-09-03 08:33:42', 0, '80.241.214.124', 1),
	(156, 1, '2017-09-03 08:33:57', 0, '80.241.214.124', 4),
	(157, 2, '2017-09-03 15:13:27', 0, '173.234.159.250', 1),
	(158, 2, '2017-09-04 21:00:49', 0, '144.76.19.144', 1),
	(159, 1, '2017-09-05 17:11:08', 0, '5.9.144.195', 4),
	(160, 2, '2017-09-05 17:11:11', 0, '5.9.144.195', 1),
	(161, 2, '2017-09-06 20:11:20', 0, '213.136.91.209', 1),
	(162, 2, '2017-09-07 17:21:12', 0, '146.52.122.147', 1),
	(163, 1, '2017-09-07 17:21:18', 0, '146.52.122.147', 4),
	(164, 1, '2017-09-08 12:21:51', 0, '69.30.234.2', 4),
	(165, 2, '2017-09-08 12:23:18', 0, '69.30.234.2', 1),
	(166, 1, '2017-09-09 12:23:55', 0, '69.30.210.242', 4),
	(167, 2, '2017-09-09 23:20:19', 0, '5.9.156.43', 1),
	(168, 2, '2017-09-10 13:13:24', 0, '173.212.252.5', 1),
	(169, 1, '2017-09-11 11:06:00', 0, '91.121.2.59', 4),
	(170, 2, '2017-09-11 11:06:03', 0, '91.121.2.59', 1),
	(171, 1, '2017-09-11 18:17:40', 0, '104.192.74.18', 4),
	(172, 2, '2017-09-11 18:17:40', 0, '104.192.74.18', 1),
	(173, 2, '2017-09-12 07:14:36', 0, '69.58.178.57', 1),
	(174, 1, '2017-09-12 07:14:38', 0, '69.58.178.57', 4),
	(175, 2, '2017-09-12 10:37:55', 0, '173.212.237.236', 1),
	(176, 1, '2017-09-12 10:38:01', 0, '173.212.237.236', 4),
	(177, 2, '2017-09-13 06:55:31', 0, '86.107.110.219', 1),
	(178, 1, '2017-09-13 13:06:01', 0, '87.250.224.110', 4),
	(179, 2, '2017-09-13 15:06:28', 0, '173.212.216.160', 1),
	(180, 1, '2017-09-14 15:56:30', 0, '144.76.8.231', 4),
	(181, 2, '2017-09-14 15:56:32', 0, '144.76.8.231', 1),
	(182, 2, '2017-09-15 11:18:29', 0, '173.212.214.240', 1),
	(183, 1, '2017-09-15 11:18:51', 0, '173.212.214.240', 4),
	(184, 2, '2017-09-15 22:13:44', 0, '217.69.133.242', 1),
	(185, 2, '2017-09-16 03:14:55', 0, '62.138.2.243', 1),
	(186, 2, '2017-09-16 18:29:41', 0, '144.76.8.134', 1),
	(187, 1, '2017-09-17 14:59:55', 0, '168.235.69.44', 4),
	(188, 2, '2017-09-17 14:59:58', 0, '168.235.69.44', 1),
	(189, 2, '2017-09-18 11:02:18', 0, '91.121.109.55', 1),
	(190, 1, '2017-09-18 11:02:46', 0, '91.121.109.55', 4),
	(191, 2, '2017-09-19 01:16:35', 0, '38.100.21.64', 1),
	(192, 1, '2017-09-19 01:16:37', 0, '38.100.21.64', 4),
	(193, 2, '2017-09-19 02:01:29', 0, '178.238.224.129', 1),
	(194, 2, '2017-09-19 17:48:54', 0, '88.198.55.175', 1),
	(195, 1, '2017-09-19 22:43:40', 0, '37.139.4.221', 4),
	(196, 2, '2017-09-19 22:43:46', 0, '37.139.4.221', 1),
	(197, 1, '2017-09-20 20:07:45', 0, '82.193.100.107', 4),
	(198, 2, '2017-09-20 20:07:48', 0, '82.193.100.107', 1),
	(199, 1, '2017-09-21 14:51:46', 0, '208.110.93.78', 4),
	(200, 2, '2017-09-22 19:55:32', 0, '69.30.198.186', 1),
	(201, 1, '2017-09-23 21:46:30', 0, '91.121.88.181', 4),
	(202, 2, '2017-09-23 21:46:32', 0, '91.121.88.181', 1),
	(203, 2, '2017-09-24 14:21:28', 0, '79.143.180.19', 1),
	(204, 1, '2017-09-24 14:21:47', 0, '79.143.180.19', 4),
	(205, 2, '2017-09-25 08:09:27', 0, '5.189.157.111', 1),
	(206, 2, '2017-09-26 20:58:05', 0, '95.108.213.3', 1),
	(207, 1, '2017-09-27 02:02:28', 0, '192.151.152.98', 4),
	(208, 2, '2017-09-27 02:02:31', 0, '192.151.152.98', 1),
	(209, 2, '2017-09-27 20:28:46', 0, '5.9.60.241', 1),
	(210, 1, '2017-09-27 20:28:52', 0, '5.9.60.241', 4),
	(211, 2, '2017-09-28 09:31:30', 0, '69.30.198.178', 1),
	(212, 2, '2017-09-29 02:57:13', 0, '213.133.111.165', 1),
	(213, 2, '2017-10-01 03:05:47', 0, '62.210.251.247', 1),
	(214, 1, '2017-10-01 03:05:53', 0, '62.210.251.247', 4),
	(215, 2, '2017-10-01 08:56:28', 0, '51.255.172.248', 1),
	(216, 1, '2017-10-03 04:36:06', 0, '217.69.133.246', 4),
	(217, 1, '2017-10-03 09:32:35', 0, '46.4.32.75', 4),
	(218, 2, '2017-10-03 09:32:39', 0, '46.4.32.75', 1),
	(219, 2, '2017-10-04 10:41:56', 0, '91.121.211.59', 1),
	(220, 2, '2017-10-05 04:28:45', 0, '217.69.133.244', 1),
	(221, 2, '2017-10-07 09:33:40', 0, '88.198.67.69', 1),
	(222, 1, '2017-10-07 09:33:47', 0, '88.198.67.69', 4),
	(223, 2, '2017-10-09 06:20:48', 0, '213.180.203.53', 1),
	(224, 1, '2017-10-09 12:27:13', 0, '158.69.252.176', 4),
	(225, 2, '2017-10-09 12:27:20', 0, '158.69.252.176', 1),
	(226, 1, '2017-10-10 10:55:48', 0, '144.76.19.144', 4),
	(227, 2, '2017-10-10 13:53:15', 0, '173.212.196.147', 1),
	(228, 1, '2017-10-10 23:28:42', 0, '213.180.203.53', 4),
	(229, 1, '2017-10-12 17:33:29', 0, '5.9.79.151', 4),
	(230, 2, '2017-10-12 17:33:31', 0, '5.9.79.151', 1),
	(231, 2, '2017-10-13 10:02:27', 0, '64.120.56.210', 1),
	(232, 1, '2017-10-13 10:02:45', 0, '64.120.56.210', 4),
	(233, 2, '2017-10-14 11:45:19', 0, '144.76.31.34', 1),
	(234, 1, '2017-10-15 14:27:17', 0, '5.9.62.130', 4),
	(235, 2, '2017-10-15 14:34:04', 0, '5.9.62.130', 1),
	(236, 1, '2017-10-16 01:45:44', 0, '87.250.224.125', 4),
	(237, 2, '2017-10-16 10:22:34', 0, '69.30.221.250', 1),
	(238, 1, '2017-10-16 10:22:55', 0, '69.30.221.250', 4),
	(239, 1, '2017-10-17 05:37:12', 0, '37.9.113.209', 4),
	(240, 2, '2017-10-17 07:51:53', 0, '163.172.68.238', 1),
	(241, 1, '2017-10-18 18:26:17', 0, '51.255.172.248', 4),
	(242, 1, '2017-10-19 00:12:58', 0, '38.100.21.66', 4),
	(243, 2, '2017-10-19 12:54:56', 0, '144.76.29.162', 1),
	(244, 1, '2017-10-19 12:55:15', 0, '144.76.29.162', 4),
	(245, 2, '2017-10-21 09:04:21', 0, '37.9.113.209', 1),
	(246, 1, '2017-10-22 00:30:17', 0, '88.198.55.175', 4),
	(247, 1, '2017-10-22 21:32:39', 0, '144.76.8.134', 4),
	(248, 2, '2017-10-22 23:27:14', 0, '173.249.5.212', 1),
	(249, 2, '2017-10-25 21:33:33', 0, '195.154.146.17', 1),
	(250, 1, '2017-10-25 21:33:55', 0, '195.154.146.17', 4),
	(251, 2, '2017-10-26 03:46:59', 0, '158.69.251.119', 1),
	(252, 2, '2017-10-26 19:11:40', 0, '5.189.166.160', 1),
	(253, 1, '2017-10-28 01:29:46', 0, '217.69.133.251', 4),
	(254, 1, '2017-10-28 09:16:04', 0, '69.30.205.218', 4),
	(255, 2, '2017-10-28 09:16:15', 0, '69.30.205.218', 1),
	(256, 1, '2017-10-28 11:07:54', 0, '217.69.133.23', 4),
	(257, 2, '2017-10-29 04:23:53', 0, '69.30.226.234', 1),
	(258, 1, '2017-10-29 04:24:00', 0, '69.30.226.234', 4),
	(259, 2, '2017-10-29 23:31:14', 0, '188.165.214.26', 1),
	(260, 1, '2017-11-01 02:22:53', 0, '95.85.41.99', 4),
	(261, 2, '2017-11-01 02:23:04', 0, '95.85.41.99', 1),
	(262, 1, '2017-11-01 08:14:27', 0, '62.210.101.96', 4),
	(263, 2, '2017-11-02 01:53:32', 0, '91.121.116.72', 1),
	(264, 1, '2017-11-03 17:41:20', 0, '141.8.142.62', 4),
	(265, 2, '2017-11-04 12:24:51', 0, '142.44.151.77', 1),
	(266, 1, '2017-11-04 12:25:01', 0, '142.44.151.77', 4),
	(267, 2, '2017-11-04 22:51:54', 0, '95.108.181.63', 1),
	(268, 2, '2017-11-07 15:50:36', 0, '136.243.68.226', 1),
	(269, 1, '2017-11-07 15:50:43', 0, '136.243.68.226', 4),
	(270, 2, '2017-11-07 18:07:02', 0, '71.176.65.159', 1),
	(271, 2, '2017-11-08 12:40:37', 0, '217.110.97.166', 1),
	(272, 1, '2017-11-10 16:02:58', 0, '158.69.251.119', 4),
	(273, 2, '2017-11-11 15:40:28', 0, '173.249.4.100', 1),
	(274, 1, '2017-11-13 02:05:04', 0, '51.255.46.239', 4),
	(275, 2, '2017-11-13 02:05:09', 0, '51.255.46.239', 1),
	(276, 2, '2017-11-14 02:28:23', 0, '62.210.101.101', 1),
	(277, 2, '2017-11-16 06:08:57', 0, '37.9.113.93', 1),
	(278, 1, '2017-11-16 14:16:11', 0, '37.9.113.187', 4),
	(279, 1, '2017-11-16 21:54:13', 0, '69.30.198.202', 4),
	(280, 2, '2017-11-16 22:12:31', 0, '204.12.241.178', 1),
	(281, 1, '2017-11-16 22:12:42', 0, '204.12.241.178', 4),
	(282, 2, '2017-11-17 03:12:46', 0, '144.76.29.66', 1),
	(283, 1, '2017-11-17 19:56:33', 0, '38.100.21.67', 4),
	(284, 2, '2017-11-17 19:56:34', 0, '38.100.21.67', 1),
	(285, 2, '2017-11-20 07:24:32', 0, '88.198.54.49', 1),
	(286, 1, '2017-11-22 19:51:59', 0, '69.197.177.50', 4),
	(287, 2, '2017-11-23 06:52:21', 0, '173.234.153.122', 1),
	(288, 2, '2017-11-24 00:00:39', 0, '94.154.239.69', 1),
	(289, 1, '2017-11-25 09:55:42', 0, '37.9.113.194', 4),
	(290, 2, '2017-11-25 14:25:45', 0, '66.249.64.22', 1),
	(291, 1, '2017-11-25 16:00:35', 0, '173.249.13.106', 4),
	(292, 2, '2017-11-25 16:00:40', 0, '173.249.13.106', 1),
	(293, 2, '2017-11-25 23:45:38', 0, '87.250.224.87', 1),
	(294, 1, '2017-11-26 01:47:16', 0, '163.172.68.238', 4),
	(295, 1, '2017-11-26 23:06:04', 0, '37.9.113.93', 4),
	(296, 2, '2017-11-29 06:30:46', 0, '82.193.102.149', 1),
	(297, 1, '2017-11-29 06:30:53', 0, '82.193.102.149', 4),
	(298, 1, '2017-11-29 18:39:07', 0, '5.45.207.72', 4),
	(299, 2, '2017-11-29 22:51:14', 0, '192.151.157.210', 1),
	(300, 1, '2017-11-30 07:57:22', 0, '5.45.207.47', 4),
	(301, 2, '2017-11-30 17:38:44', 0, '217.69.143.50', 1),
	(302, 1, '2017-12-01 22:00:19', 0, '5.9.144.234', 4),
	(303, 2, '2017-12-01 22:00:32', 0, '5.9.144.234', 1),
	(304, 2, '2017-12-02 12:22:22', 0, '88.99.19.242', 1),
	(305, 1, '2017-12-02 22:06:15', 0, '144.76.38.73', 4),
	(306, 2, '2017-12-04 15:55:32', 0, '87.250.224.86', 1),
	(307, 2, '2017-12-05 15:25:14', 0, '5.9.89.170', 1),
	(308, 2, '2017-12-05 17:56:23', 0, '95.85.22.142', 1),
	(309, 2, '2017-12-05 18:01:25', 0, '162.210.196.100', 1),
	(310, 1, '2017-12-05 18:01:34', 0, '162.210.196.100', 4),
	(311, 1, '2017-12-06 17:19:55', 0, '88.198.54.49', 4),
	(312, 1, '2017-12-06 21:09:07', 0, '213.180.203.63', 4),
	(313, 1, '2017-12-08 01:29:18', 0, '95.91.23.118', 4),
	(314, 2, '2017-12-08 01:29:22', 0, '95.91.23.118', 1),
	(315, 1, '2017-12-08 18:25:04', 0, '95.108.181.69', 4),
	(316, 2, '2017-12-08 20:40:14', 0, '46.4.58.130', 1),
	(317, 1, '2017-12-08 20:40:28', 0, '46.4.58.130', 4),
	(318, 2, '2017-12-09 06:57:12', 0, '217.69.134.183', 1),
	(319, 2, '2017-12-09 06:58:26', 0, '217.69.133.194', 1),
	(320, 1, '2017-12-11 04:50:23', 0, '95.108.181.63', 4),
	(321, 2, '2017-12-12 11:28:37', 0, '178.8.213.159', 1),
	(322, 1, '2017-12-14 19:35:56', 0, '91.121.116.72', 4),
	(323, 2, '2017-12-15 11:25:30', 0, '178.151.245.174', 1),
	(324, 2, '2017-12-16 11:18:26', 0, '217.69.134.175', 1),
	(325, 1, '2017-12-16 19:57:12', 0, '141.8.142.3', 4),
	(326, 2, '2017-12-18 13:59:47', 0, '173.212.201.251', 1),
	(327, 2, '2017-12-18 20:42:30', 0, '142.44.151.76', 1),
	(328, 1, '2017-12-18 20:42:54', 0, '142.44.151.76', 4),
	(329, 1, '2017-12-21 01:36:32', 0, '5.45.207.70', 4),
	(330, 1, '2017-12-21 05:20:23', 0, '5.9.156.43', 4),
	(331, 1, '2017-12-23 14:09:34', 0, '69.30.213.202', 4),
	(332, 2, '2017-12-23 14:09:49', 0, '69.30.213.202', 1),
	(333, 2, '2017-12-24 21:46:48', 0, '51.255.50.158', 1),
	(334, 2, '2017-12-28 03:13:14', 0, '141.8.183.39', 1),
	(335, 1, '2017-12-30 03:08:53', 0, '95.108.181.77', 4),
	(336, 2, '2017-12-30 13:50:11', 0, '46.4.0.246', 1),
	(337, 1, '2017-12-30 13:50:25', 0, '46.4.0.246', 4),
	(338, 1, '2018-01-01 16:21:40', 0, '204.12.208.10', 4),
	(339, 2, '2018-01-01 16:21:52', 0, '204.12.208.10', 1),
	(340, 1, '2018-01-02 09:44:59', 0, '192.151.145.82', 4),
	(341, 2, '2018-01-02 20:11:17', 0, '95.108.213.19', 1),
	(342, 1, '2018-01-05 09:46:14', 0, '141.8.183.214', 4),
	(343, 2, '2018-01-07 08:24:52', 0, '5.45.207.72', 1),
	(344, 1, '2018-01-08 15:41:08', 0, '87.250.224.87', 4),
	(345, 2, '2018-01-08 16:45:07', 0, '69.30.211.2', 1),
	(346, 1, '2018-01-08 16:46:34', 0, '69.30.211.2', 4),
	(347, 1, '2018-01-09 03:55:00', 0, '195.184.208.221', 4),
	(348, 1, '2018-01-10 04:41:22', 0, '87.250.224.212', 4),
	(349, 1, '2018-01-11 03:23:05', 0, '141.8.183.39', 4),
	(350, 1, '2018-01-11 03:23:11', 0, '198.204.244.90', 4),
	(351, 2, '2018-01-11 03:23:14', 0, '198.204.244.90', 1),
	(352, 1, '2018-01-13 13:35:51', 0, '213.180.203.16', 4),
	(353, 1, '2018-01-14 23:02:06', 0, '79.143.185.25', 4),
	(354, 2, '2018-01-15 19:34:37', 0, '62.210.103.31', 1),
	(355, 2, '2018-01-15 22:12:11', 0, '95.108.181.120', 1),
	(356, 2, '2018-01-16 07:05:29', 0, '104.192.74.22', 1),
	(357, 1, '2018-01-16 07:05:29', 0, '104.192.74.22', 4),
	(358, 1, '2018-01-17 02:38:15', 0, '95.85.32.140', 4),
	(359, 1, '2018-01-17 03:39:40', 0, '5.9.155.37', 4),
	(360, 2, '2018-01-17 03:39:43', 0, '5.9.155.37', 1),
	(361, 1, '2018-01-17 15:51:01', 0, '217.69.143.44', 4),
	(362, 2, '2018-01-18 10:00:25', 0, '38.100.21.69', 1),
	(363, 1, '2018-01-18 10:00:30', 0, '38.100.21.69', 4),
	(364, 2, '2018-01-19 17:45:59', 0, '217.69.143.46', 1),
	(365, 1, '2018-01-21 14:30:06', 0, '37.204.200.252', 4),
	(366, 2, '2018-01-22 03:26:57', 0, '95.108.181.77', 1),
	(367, 1, '2018-01-28 21:55:20', 0, '176.31.101.111', 4),
	(368, 1, '2018-02-06 18:02:11', 0, '94.154.239.69', 4),
	(369, 2, '2018-02-16 17:18:52', 0, '173.208.128.34', 1),
	(370, 1, '2018-02-16 17:19:54', 0, '173.208.128.34', 4),
	(371, 1, '2018-02-19 06:50:20', 0, '128.69.232.58', 4),
	(372, 2, '2018-02-19 22:54:49', 0, '5.9.80.133', 1),
	(373, 1, '2018-02-19 22:55:04', 0, '5.9.80.133', 4),
	(374, 2, '2018-02-22 18:06:46', 0, '79.137.44.22', 1),
	(375, 1, '2018-02-22 18:07:16', 0, '79.137.44.22', 4),
	(376, 2, '2018-02-25 18:00:35', 0, '69.30.213.138', 1),
	(377, 1, '2018-02-25 18:02:43', 0, '69.30.213.138', 4),
	(378, 2, '2018-03-03 18:19:27', 0, '173.212.253.47', 1),
	(379, 1, '2018-03-03 18:20:16', 0, '173.212.253.47', 4),
	(380, 2, '2018-03-03 21:09:34', 0, '216.244.66.226', 1),
	(381, 1, '2018-03-04 17:06:40', 0, '216.244.66.226', 4),
	(382, 2, '2018-03-06 23:50:29', 0, '84.202.218.13', 1),
	(383, 1, '2018-03-06 23:50:55', 0, '84.202.218.13', 4),
	(384, 1, '2018-03-08 04:19:16', 0, '87.250.224.214', 4),
	(385, 1, '2018-03-09 15:51:48', 0, '62.210.101.101', 4),
	(386, 2, '2018-03-12 23:10:05', 0, '208.110.93.52', 1),
	(387, 1, '2018-03-12 23:10:24', 0, '208.110.93.52', 4),
	(388, 2, '2018-03-17 05:16:55', 0, '217.69.143.51', 1),
	(389, 2, '2018-03-17 15:16:43', 0, '37.9.113.73', 1),
	(390, 1, '2018-03-21 18:36:55', 0, '62.138.2.243', 4),
	(391, 2, '2018-03-30 20:54:07', 0, '95.216.19.207', 1),
	(392, 1, '2018-03-30 20:54:26', 0, '95.216.19.207', 4),
	(393, 2, '2018-04-02 21:27:16', 0, '144.76.185.181', 1),
	(394, 1, '2018-04-02 21:27:30', 0, '144.76.185.181', 4),
	(395, 1, '2018-04-05 17:16:37', 0, '167.99.32.48', 4),
	(396, 2, '2018-04-05 17:17:01', 0, '167.99.32.48', 1),
	(397, 2, '2018-04-05 23:17:54', 0, '148.251.7.6', 1),
	(398, 1, '2018-04-05 23:18:12', 0, '148.251.7.6', 4),
	(399, 1, '2018-04-06 01:48:01', 0, '141.8.142.188', 4),
	(400, 1, '2018-04-10 18:27:25', 0, '104.192.74.19', 4),
	(401, 2, '2018-04-10 18:27:25', 0, '104.192.74.19', 1),
	(402, 1, '2018-04-15 13:54:01', 0, '5.9.106.230', 4),
	(403, 2, '2018-04-16 15:27:33', 0, '141.8.142.188', 1),
	(404, 1, '2018-04-18 12:27:57', 0, '38.100.21.78', 4),
	(405, 2, '2018-04-18 12:27:59', 0, '38.100.21.78', 1),
	(406, 2, '2018-04-18 14:54:10', 0, '37.57.218.243', 1),
	(407, 1, '2018-04-18 14:54:35', 0, '37.57.218.243', 4),
	(408, 1, '2018-04-19 03:17:42', 0, '5.255.253.5', 4),
	(409, 2, '2018-04-25 07:34:22', 0, '5.45.207.70', 1),
	(410, 2, '2018-04-26 07:39:09', 0, '178.154.171.31', 1),
	(411, 2, '2018-04-29 16:35:08', 0, '87.250.224.125', 1),
	(412, 1, '2018-04-30 04:12:15', 0, '37.9.113.88', 4),
	(413, 2, '2018-04-30 10:53:20', 0, '173.249.13.84', 1),
	(414, 1, '2018-04-30 10:53:44', 0, '173.249.13.84', 4),
	(415, 2, '2018-05-06 17:06:33', 0, '95.216.2.81', 1),
	(416, 1, '2018-05-06 17:06:47', 0, '95.216.2.81', 4),
	(417, 1, '2018-05-07 09:29:54', 0, '188.166.111.188', 4),
	(418, 2, '2018-05-07 09:30:06', 0, '188.166.111.188', 1),
	(419, 2, '2018-05-09 16:29:02', 0, '95.216.3.248', 1),
	(420, 1, '2018-05-09 16:29:16', 0, '95.216.3.248', 4),
	(421, 2, '2018-05-12 07:24:09', 0, '46.53.181.20', 1),
	(422, 2, '2018-05-14 08:22:56', 52, '127.0.0.1', 1),
	(423, 2, '2018-05-14 09:01:39', 49, '127.0.0.1', 1),
	(424, 1, '2018-05-14 14:47:31', 52, '127.0.0.1', 4);
/*!40000 ALTER TABLE `gy3te_js_res_hits` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_js_res_import
CREATE TABLE IF NOT EXISTS `gy3te_js_res_import` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `params` text,
  `user_id` int(11) DEFAULT '0',
  `crossids` text,
  `section_id` int(11) DEFAULT '0',
  `ctime` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_js_res_import: ~0 rows (приблизительно)
DELETE FROM `gy3te_js_res_import`;
/*!40000 ALTER TABLE `gy3te_js_res_import` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_js_res_import` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_js_res_import_rows
CREATE TABLE IF NOT EXISTS `gy3te_js_res_import_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `import` int(11) DEFAULT '0',
  `text` text,
  `ctime` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_import` (`import`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_js_res_import_rows: 0 rows
DELETE FROM `gy3te_js_res_import_rows`;
/*!40000 ALTER TABLE `gy3te_js_res_import_rows` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_js_res_import_rows` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_js_res_moderators
CREATE TABLE IF NOT EXISTS `gy3te_js_res_moderators` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `section_id` int(11) NOT NULL DEFAULT '0',
  `description` text,
  `params` text,
  `ctime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) DEFAULT '0',
  `checked_out_time` datetime DEFAULT '0000-00-00 00:00:00',
  `icon` varchar(20) DEFAULT NULL,
  `is_moderator` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ind` (`user_id`,`section_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_js_res_moderators: 0 rows
DELETE FROM `gy3te_js_res_moderators`;
/*!40000 ALTER TABLE `gy3te_js_res_moderators` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_js_res_moderators` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_js_res_notifications
CREATE TABLE IF NOT EXISTS `gy3te_js_res_notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `option` varchar(100) NOT NULL DEFAULT '',
  `type` varchar(100) NOT NULL DEFAULT '',
  `ctime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `notified` tinyint(1) NOT NULL DEFAULT '0',
  `alerted` tinyint(1) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `ref_1` int(11) DEFAULT '0',
  `ref_2` int(11) DEFAULT '0',
  `ref_3` int(11) DEFAULT '0',
  `ref_4` int(11) DEFAULT '0',
  `ref_5` int(11) DEFAULT '0',
  `html` text NOT NULL,
  `num` int(11) DEFAULT '0',
  `state_new` tinyint(1) NOT NULL DEFAULT '1',
  `eventer` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_r_1` (`ref_1`),
  KEY `idx_r_2` (`ref_2`),
  KEY `idx_ruser` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_js_res_notifications: ~0 rows (приблизительно)
DELETE FROM `gy3te_js_res_notifications`;
/*!40000 ALTER TABLE `gy3te_js_res_notifications` DISABLE KEYS */;
INSERT INTO `gy3te_js_res_notifications` (`id`, `option`, `type`, `ctime`, `notified`, `alerted`, `params`, `user_id`, `ref_1`, `ref_2`, `ref_3`, `ref_4`, `ref_5`, `html`, `num`, `state_new`, `eventer`) VALUES
	(1, 'com_cobalt', 'record_bookmarked', '2018-05-12 11:18:49', 1, 0, '{"id":"2","title":"\\u041b\\u043e\\u0442\\u043e\\u0441 (ARION LOTOS)","user_id":"49","section_id":"1","ctime":"2017-05-15 14:05:12","extime":"0000-00-00 00:00:00","mtime":"2017-05-15 14:05:12","inittime":"2017-05-15 14:05:12","ftime":"0000-00-00 00:00:00","pubtime":"0000-00-00 00:00:00","type_id":"1","ip":"127.0.0.1","categories":"[]","version":"1","newTags":null,"section":{"id":"1","asset_id":"72","name":"\\u041a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433 \\u0441\\u043e\\u0431\\u0430\\u043a","title":"\\u041a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433 \\u0441\\u043e\\u0431\\u0430\\u043a","alias":"catalog-dogs","description":"","published":"1","ordering":"5","image":"","image_position":"","params":{"general":{"status":"1","status_msg":"This section is currently offline. Please, check back later.","category_itemid":"","noaccess_redirect":"","orderby":"r.ctime DESC","lang_mode":"0","records_mode":"0","filter_mode":"1","cat_mode":"1","can_display":"","featured_first":"0","marknew":"0","show_future_records":"3","show_past_records":"3","show_restrict":"1","show_children":"0","have_unpublished":"1","item_label":"item","section_home_items":"1","section_home_orderby":"r.ctime DESC","home_featured_first":"0","type":["1"],"record_submit_limit":"0","tmpl_markup":"default.8d736f1906195cc4f0ad9867db5622d6","tmpl_list":["blog.9a9b7ca6432a6cc9dff44a6a25f1691a"],"tmpl_category":"0","tmpl_compare":"blog.4933feaa7ba3a6c601b707236e0cd269","tmpl_list_default":"default"},"more":{"search_mode":"3","search_title":"1","search_name":"0","search_email":"0","search_comments":"0","feed_link":"1","feed_link2":"1","records_mode":"0","feed_limit":"50","orderby_rss":"r.ctime DESC","feed_link_type":"1","metadesc":"","metakey":"","author":"","robots":""},"personalize":{"personalize":"0","records_mode":"0","author_mode":"username","breadcrumbs":"1","post_anywhere":"1","home_text":"See all artilces","text_icon":"home.png","onlinestatus":"1","vip":"0","novip":"3","glod_amount":"250","vip_gold":"vipGold.png","vip_silver":"vipSilver.png","vip_gray":"vipGray.png","pcat_submit":"0","pcat_limit":"10","pcat_descr_length":"200","pcat_icon":"1","pcat_meta":"2","allow_section_set":"1","allow_change_header":"1","allow_change_descr":"1","user_sec_descr_length":"200","allow_access_control":"1","allow_access_control_add":"1"},"events":{"subscribe_section":"2","subscribe_category":0,"subscribe_record":"2","subscribe_user":"2","alerts":"1","user_manage":"1","event_date_format":"","event_date_custom":"d M Y","event":{"record_new":{"notif":"2","activ":"2","karma1":"0","msg":"EVENT_RECORD_NEW","msg_pers":"EVENT_RECORD_NEW_PERS"},"record_view":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_VIEW","msg_pers":"EVENT_RECORD_VIEW_PERS"},"record_wait_approve":{"notif":"2","activ":"2","msg":"EVENT_RECORD_WAIT_APPROVE","msg_pers":"EVENT_RECORD_WAIT_APPROVE_PERS"},"record_approved":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_APPROVED","msg_pers":"EVENT_RECORD_APPROVED_PERS"},"record_edited":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_EDITED","msg_pers":"EVENT_RECORD_EDITED_PERS"},"record_deleted":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_DELETED","msg_pers":"EVENT_RECORD_DELETED_PERS"},"record_rated":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_RATED","msg_pers":"EVENT_RECORD_RATED_PERS"},"record_expired":{"notif":"2","activ":"2","karma2":"0","msg":"EVENT_RECORD_EXPIRED","msg_pers":"EVENT_RECORD_EXPIRED_PERS"},"record_featured_expired":{"notif":"2","activ":"2","karma2":"0","msg":"EVENT_RECORD_FEATURED_EXPIRED","msg_pers":"EVENT_RECORD_FEATURED_EXPIRED_PERS"},"record_bookmarked":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_BOOKMARKED","msg_pers":"EVENT_RECORD_BOOKMARKED_PERS"},"record_tagged":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_TAGGED","msg_pers":"EVENT_RECORD_TAGGED_PERS"},"record_unpublished":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_UNPUBLISHED","msg_pers":"EVENT_RECORD_UNPUBLISHED_PERS"},"record_featured":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_FEATURED","msg_pers":"EVENT_RECORD_FEATURED_PERS"},"record_extended":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_EXTENDED","msg_pers":"EVENT_RECORD_EXTENDED_PERS"},"record_reposted":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_REPOSTED","msg_pers":"EVENT_RECORD_REPOSTED_PERS"},"record_posted":{"notif":"2","activ":"2","karma1":"0","msg":"EVENT_RECORD_POSTED","msg_pers":"EVENT_RECORD_POSTED_PERS"},"comment_new":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_NEW","msg_pers":"EVENT_COMMENT_NEW_PERS"},"comment_edited":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_EDITED","msg_pers":"EVENT_COMMENT_EDITED_PERS"},"comment_rated":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_RATED","msg_pers":"EVENT_COMMENT_RATED_PERS"},"comment_deleted":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_DELETED","msg_pers":"EVENT_COMMENT_DELETED_PERS"},"comment_approved":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_APPROVED","msg_pers":"EVENT_COMMENT_APPROVED_PERS"},"comment_reply":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_REPLY","msg_pers":"EVENT_COMMENT_REPLY_PERS"},"comment_unpublished":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_UNPUBLISHED","msg_pers":"EVENT_COMMENT_UNPUBLISHED_PERS"},"status_changed":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_STATUS_CHANGED","msg_pers":"EVENT_STATUS_CHANGED_PERS"},"parent_new":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_PARENT_NEW","msg_pers":"EVENT_PARENT_NEW_PERS"},"child_new":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_CHILD_NEW","msg_pers":"EVENT_CHILD_NEW_PERS"},"parent_attached":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_PARENT_ATTACHED","msg_pers":"EVENT_PARENT_ATTACHED_PERS"},"child_attached":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_CHILD_ATTACHED","msg_pers":"EVENT_CHILD_ATTACHED_PERS"},"order_updated":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_ORDER_UPDATED","msg_pers":"EVENT_ORDER_UPDATED_PERS"},"new_sale":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_NEW_SALE","msg_pers":"EVENT_NEW_SALE_PERS"},"new_sale_manual":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_NEW_SALE_MANUAL","msg_pers":"EVENT_NEW_SALE_MANUAL_PERS"}}}},"checked_out":"0","checked_out_time":"0000-00-00 00:00:00","access":"1","categories":"0","language":"*","descr_before":"","descr_after":null,"descr_full":"","link":"index.php?option=com_cobalt&view=records&section_id=1_catalog-dogs&Itemid="},"by":"52","on":1526123929}', 49, 2, 1, 0, 0, 0, '', 0, 0, 52);
/*!40000 ALTER TABLE `gy3te_js_res_notifications` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_js_res_packs
CREATE TABLE IF NOT EXISTS `gy3te_js_res_packs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `key` char(10) NOT NULL DEFAULT '',
  `addkey` tinyint(2) NOT NULL DEFAULT '1',
  `add_files` text,
  `ctime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `btime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` varchar(20) NOT NULL DEFAULT '',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `users` tinyint(3) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `author_name` text,
  `author_email` text,
  `author_url` text,
  `demo` tinyint(1) DEFAULT '0',
  `copyright` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_js_res_packs: 1 rows
DELETE FROM `gy3te_js_res_packs`;
/*!40000 ALTER TABLE `gy3te_js_res_packs` DISABLE KEYS */;
INSERT INTO `gy3te_js_res_packs` (`id`, `name`, `description`, `key`, `addkey`, `add_files`, `ctime`, `mtime`, `btime`, `version`, `checked_out`, `checked_out_time`, `users`, `user_id`, `author_name`, `author_email`, `author_url`, `demo`, `copyright`) VALUES
	(1, 'my_pack', '', 'pack33ee59', 0, '', '2018-05-10 10:00:12', '2018-05-10 11:15:59', '0000-00-00 00:00:00', '0', 0, '0000-00-00 00:00:00', 0, 0, 'Dmitry Zatulenko', '', '', 1, '© 2012 - My company. All rights reserved.');
/*!40000 ALTER TABLE `gy3te_js_res_packs` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_js_res_packs_sections
CREATE TABLE IF NOT EXISTS `gy3te_js_res_packs_sections` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pack_id` int(11) NOT NULL DEFAULT '0',
  `section_id` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_js_res_packs_sections: 2 rows
DELETE FROM `gy3te_js_res_packs_sections`;
/*!40000 ALTER TABLE `gy3te_js_res_packs_sections` DISABLE KEYS */;
INSERT INTO `gy3te_js_res_packs_sections` (`id`, `pack_id`, `section_id`, `params`) VALUES
	(1, 1, 1, '{"markup":"1","list":"1","cat_index":"1","compare":"1","types":{"1":{"article":"1","articleform":"1","rating":"1","comment":"1","categoryselect":"1","copy_content":"1","copy_field_record_templates":"0"}}}'),
	(2, 1, 4, '{"markup":"1","list":"1","cat_index":"1","compare":"1","types":{"4":{"article":"1","articleform":"1","rating":"1","comment":"1","categoryselect":"1","copy_content":"1","copy_field_record_templates":"0"}}}');
/*!40000 ALTER TABLE `gy3te_js_res_packs_sections` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_js_res_polls
CREATE TABLE IF NOT EXISTS `gy3te_js_res_polls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL DEFAULT '',
  `answer` varchar(255) NOT NULL DEFAULT '',
  `ctime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_id` int(10) NOT NULL DEFAULT '0',
  `record_id` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `record` (`record_id`),
  KEY `user` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_js_res_polls: 0 rows
DELETE FROM `gy3te_js_res_polls`;
/*!40000 ALTER TABLE `gy3te_js_res_polls` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_js_res_polls` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_js_res_record
CREATE TABLE IF NOT EXISTS `gy3te_js_res_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `access` int(10) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(10) NOT NULL DEFAULT '0',
  `section_id` int(10) NOT NULL DEFAULT '0',
  `checked_out` int(10) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ctime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `extime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `inittime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ftime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pubtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type_id` int(10) NOT NULL DEFAULT '0',
  `hits` int(10) NOT NULL DEFAULT '0',
  `ordering` int(10) NOT NULL DEFAULT '0',
  `meta_descr` varchar(255) NOT NULL DEFAULT '',
  `meta_key` varchar(255) NOT NULL DEFAULT '',
  `meta_index` varchar(30) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `archive` tinyint(1) NOT NULL DEFAULT '0',
  `ucatid` int(10) NOT NULL DEFAULT '0',
  `ucatname` varchar(150) DEFAULT NULL,
  `langs` varchar(10) NOT NULL DEFAULT '',
  `asset_id` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(20) NOT NULL DEFAULT '',
  `votes` int(10) NOT NULL DEFAULT '0',
  `favorite_num` int(10) NOT NULL DEFAULT '0',
  `hidden` tinyint(3) NOT NULL DEFAULT '0',
  `votes_result` int(10) NOT NULL DEFAULT '0',
  `exalert` tinyint(1) NOT NULL DEFAULT '0',
  `access_key` varchar(32) NOT NULL DEFAULT '',
  `categories` mediumtext,
  `fieldsdata` longtext,
  `fields` longtext NOT NULL,
  `comments` int(11) DEFAULT '0',
  `tags` text NOT NULL,
  `multirating` text,
  `subscriptions_num` int(11) DEFAULT '0',
  `version` int(10) NOT NULL DEFAULT '1',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `parent` varchar(45) NOT NULL DEFAULT 'com_cobalt',
  `whorepost` tinyint(1) NOT NULL DEFAULT '0',
  `repostedby` text,
  `newTags` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_section` (`section_id`),
  KEY `idx_published` (`published`),
  KEY `idx_user` (`user_id`),
  KEY `idx_access` (`access`),
  KEY `idx_ctime` (`ctime`),
  KEY `idx_extime` (`extime`),
  KEY `idx_featured` (`featured`),
  KEY `idx_ucat` (`ucatid`),
  KEY `idx_lang` (`langs`),
  KEY `idx_parent` (`parent_id`),
  KEY `idx_mtime` (`mtime`),
  KEY `idx_name` (`title`),
  KEY `idx_comment` (`comments`),
  KEY `idx_vote` (`votes_result`),
  FULLTEXT KEY `full` (`fieldsdata`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_js_res_record: 3 rows
DELETE FROM `gy3te_js_res_record`;
/*!40000 ALTER TABLE `gy3te_js_res_record` DISABLE KEYS */;
INSERT INTO `gy3te_js_res_record` (`id`, `title`, `published`, `access`, `params`, `user_id`, `section_id`, `checked_out`, `checked_out_time`, `ctime`, `extime`, `mtime`, `inittime`, `ftime`, `pubtime`, `type_id`, `hits`, `ordering`, `meta_descr`, `meta_key`, `meta_index`, `alias`, `featured`, `archive`, `ucatid`, `ucatname`, `langs`, `asset_id`, `ip`, `votes`, `favorite_num`, `hidden`, `votes_result`, `exalert`, `access_key`, `categories`, `fieldsdata`, `fields`, `comments`, `tags`, `multirating`, `subscriptions_num`, `version`, `parent_id`, `parent`, `whorepost`, `repostedby`, `newTags`) VALUES
	(1, 'Сибирский Хаски', 1, 1, '', 48, 4, 0, '0000-00-00 00:00:00', '2017-05-15 13:47:06', '0000-00-00 00:00:00', '2017-05-15 13:56:12', '2017-05-15 13:47:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4, 202, 0, '', '', '', 'сибирский-хаски', 0, 0, 0, NULL, 'ru-RU', 0, '127.0.0.1', 0, 0, 0, 0, 0, '71f0ffb848e30c8a51822a7ce2dd5e8c', '[]', 'Сибирский хаски — заводская специализированная порода собак, зарегистрированная советскими кинологами в 30-х годах XX века как ездовая собака, полученная от аборигенных собак Дальнего Востока России, в основном из Анадыря, Колымы, Камчатки у местных оседлых приморских племён — юкагиров, кереков, азиатских эскимосов и приморских чукчей — анкальын (приморские, поморы — от анкы (море))[2]. Эта аборигенная ездовая собака Дальнего Востока является одной из древнейших пород собак. В настоящее время выведенная порода «сибирский хаски» используется не только как ездовая, но и как собака-компаньон и шоу-выставочная собака., Сибирский Хаски', '{"23":"{\\"image_title\\":\\"\\",\\"image\\":\\"haski_main.jpg\\",\\"subfolder\\":\\"ag_pictureDS\\"}","24":"<p><b>\\u0421\\u0438\\u0431\\u0438\\u0440\\u0441\\u043a\\u0438\\u0439 \\u0445\\u0430\\u0441\\u043a\\u0438<\\/b>\\u00a0\\u2014 \\u0437\\u0430\\u0432\\u043e\\u0434\\u0441\\u043a\\u0430\\u044f \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0437\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u0430\\u044f <a title=\\"\\u041f\\u043e\\u0440\\u043e\\u0434\\u044b \\u0441\\u043e\\u0431\\u0430\\u043a\\" href=\\"https:\\/\\/ru.wikipedia.org\\/wiki\\/%D0%9F%D0%BE%D1%80%D0%BE%D0%B4%D1%8B_%D1%81%D0%BE%D0%B1%D0%B0%D0%BA\\">\\u043f\\u043e\\u0440\\u043e\\u0434\\u0430 \\u0441\\u043e\\u0431\\u0430\\u043a<\\/a>, \\u0437\\u0430\\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u0430\\u044f \\u0441\\u043e\\u0432\\u0435\\u0442\\u0441\\u043a\\u0438\\u043c\\u0438 \\u043a\\u0438\\u043d\\u043e\\u043b\\u043e\\u0433\\u0430\\u043c\\u0438 \\u0432 30-\\u0445 \\u0433\\u043e\\u0434\\u0430\\u0445 XX \\u0432\\u0435\\u043a\\u0430 \\u043a\\u0430\\u043a <a title=\\"\\u0415\\u0437\\u0434\\u043e\\u0432\\u0430\\u044f \\u0441\\u043e\\u0431\\u0430\\u043a\\u0430\\" href=\\"https:\\/\\/ru.wikipedia.org\\/wiki\\/%D0%95%D0%B7%D0%B4%D0%BE%D0%B2%D0%B0%D1%8F_%D1%81%D0%BE%D0%B1%D0%B0%D0%BA%D0%B0\\">\\u0435\\u0437\\u0434\\u043e\\u0432\\u0430\\u044f \\u0441\\u043e\\u0431\\u0430\\u043a\\u0430<\\/a>, \\u043f\\u043e\\u043b\\u0443\\u0447\\u0435\\u043d\\u043d\\u0430\\u044f \\u043e\\u0442 \\u0430\\u0431\\u043e\\u0440\\u0438\\u0433\\u0435\\u043d\\u043d\\u044b\\u0445 \\u0441\\u043e\\u0431\\u0430\\u043a \\u0414\\u0430\\u043b\\u044c\\u043d\\u0435\\u0433\\u043e \\u0412\\u043e\\u0441\\u0442\\u043e\\u043a\\u0430 \\u0420\\u043e\\u0441\\u0441\\u0438\\u0438, \\u0432 \\u043e\\u0441\\u043d\\u043e\\u0432\\u043d\\u043e\\u043c \\u0438\\u0437 \\u0410\\u043d\\u0430\\u0434\\u044b\\u0440\\u044f, \\u041a\\u043e\\u043b\\u044b\\u043c\\u044b, \\u041a\\u0430\\u043c\\u0447\\u0430\\u0442\\u043a\\u0438 \\u0443 \\u043c\\u0435\\u0441\\u0442\\u043d\\u044b\\u0445 \\u043e\\u0441\\u0435\\u0434\\u043b\\u044b\\u0445 \\u043f\\u0440\\u0438\\u043c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0445 \\u043f\\u043b\\u0435\\u043c\\u0451\\u043d\\u00a0\\u2014 <a title=\\"\\u042e\\u043a\\u0430\\u0433\\u0438\\u0440\\u044b\\" href=\\"https:\\/\\/ru.wikipedia.org\\/wiki\\/%D0%AE%D0%BA%D0%B0%D0%B3%D0%B8%D1%80%D1%8B\\">\\u044e\\u043a\\u0430\\u0433\\u0438\\u0440\\u043e\\u0432<\\/a>, <a title=\\"\\u041a\\u0435\\u0440\\u0435\\u043a\\u0438\\" href=\\"https:\\/\\/ru.wikipedia.org\\/wiki\\/%D0%9A%D0%B5%D1%80%D0%B5%D0%BA%D0%B8\\">\\u043a\\u0435\\u0440\\u0435\\u043a\\u043e\\u0432<\\/a>, <a title=\\"\\u042e\\u0438\\u0442\\u044b\\" href=\\"https:\\/\\/ru.wikipedia.org\\/wiki\\/%D0%AE%D0%B8%D1%82%D1%8B\\">\\u0430\\u0437\\u0438\\u0430\\u0442\\u0441\\u043a\\u0438\\u0445 \\u044d\\u0441\\u043a\\u0438\\u043c\\u043e\\u0441\\u043e\\u0432<\\/a> \\u0438 \\u043f\\u0440\\u0438\\u043c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0445 <a title=\\"\\u0427\\u0443\\u043a\\u0447\\u0438\\" href=\\"https:\\/\\/ru.wikipedia.org\\/wiki\\/%D0%A7%D1%83%D0%BA%D1%87%D0%B8\\">\\u0447\\u0443\\u043a\\u0447\\u0435\\u0439<\\/a> \\u2014 <i>\\u0430\\u043d\\u043a\\u0430\\u043b\\u044c\\u044b\\u043d<\\/i> (\\u043f\\u0440\\u0438\\u043c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0435, \\u043f\\u043e\\u043c\\u043e\\u0440\\u044b\\u00a0\\u2014 \\u043e\\u0442 <i>\\u0430\\u043d\\u043a\\u044b<\\/i> (\\u043c\\u043e\\u0440\\u0435))<sup id=\\"cite_ref-2\\" class=\\"reference\\"><a href=\\"https:\\/\\/ru.wikipedia.org\\/wiki\\/%D0%A1%D0%B8%D0%B1%D0%B8%D1%80%D1%81%D0%BA%D0%B8%D0%B9_%D1%85%D0%B0%D1%81%D0%BA%D0%B8#cite_note-2\\">[2]<\\/a><\\/sup>. \\u042d\\u0442\\u0430 \\u0430\\u0431\\u043e\\u0440\\u0438\\u0433\\u0435\\u043d\\u043d\\u0430\\u044f \\u0435\\u0437\\u0434\\u043e\\u0432\\u0430\\u044f \\u0441\\u043e\\u0431\\u0430\\u043a\\u0430 \\u0414\\u0430\\u043b\\u044c\\u043d\\u0435\\u0433\\u043e \\u0412\\u043e\\u0441\\u0442\\u043e\\u043a\\u0430 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u043e\\u0434\\u043d\\u043e\\u0439 \\u0438\\u0437 <a title=\\"\\u0414\\u0440\\u0435\\u0432\\u043d\\u0438\\u0435 \\u043f\\u043e\\u0440\\u043e\\u0434\\u044b \\u0441\\u043e\\u0431\\u0430\\u043a\\" href=\\"https:\\/\\/ru.wikipedia.org\\/wiki\\/%D0%94%D1%80%D0%B5%D0%B2%D0%BD%D0%B8%D0%B5_%D0%BF%D0%BE%D1%80%D0%BE%D0%B4%D1%8B_%D1%81%D0%BE%D0%B1%D0%B0%D0%BA\\">\\u0434\\u0440\\u0435\\u0432\\u043d\\u0435\\u0439\\u0448\\u0438\\u0445 \\u043f\\u043e\\u0440\\u043e\\u0434 \\u0441\\u043e\\u0431\\u0430\\u043a<\\/a>. \\u0412 \\u043d\\u0430\\u0441\\u0442\\u043e\\u044f\\u0449\\u0435\\u0435 \\u0432\\u0440\\u0435\\u043c\\u044f \\u0432\\u044b\\u0432\\u0435\\u0434\\u0435\\u043d\\u043d\\u0430\\u044f \\u043f\\u043e\\u0440\\u043e\\u0434\\u0430 \\u00ab\\u0441\\u0438\\u0431\\u0438\\u0440\\u0441\\u043a\\u0438\\u0439 \\u0445\\u0430\\u0441\\u043a\\u0438\\u00bb \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u0435\\u0442\\u0441\\u044f \\u043d\\u0435 \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u043a\\u0430\\u043a \\u0435\\u0437\\u0434\\u043e\\u0432\\u0430\\u044f, \\u043d\\u043e \\u0438 \\u043a\\u0430\\u043a \\u0441\\u043e\\u0431\\u0430\\u043a\\u0430-\\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u044c\\u043e\\u043d \\u0438 \\u0448\\u043e\\u0443-\\u0432\\u044b\\u0441\\u0442\\u0430\\u0432\\u043e\\u0447\\u043d\\u0430\\u044f \\u0441\\u043e\\u0431\\u0430\\u043a\\u0430.<\\/p>","25":[0],"27":{"image":"uploads\\/image\\/2017-05\\/1494856572_e1714fb5c3e954d0b172da5cc43d0325.jpg","realname":"haski_main.jpg","filename":"1494856572_e1714fb5c3e954d0b172da5cc43d0325.jpg"}}', 0, '', NULL, 1, 1, 0, 'com_cobalt', 0, '[]', NULL),
	(2, 'Лотос (ARION LOTOS) - Сибирский Хаски', 1, 1, '', 49, 1, 0, '0000-00-00 00:00:00', '2017-05-15 14:05:12', '0000-00-00 00:00:00', '2018-05-14 13:42:20', '2017-05-15 14:05:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 222, 0, '', '', '', 'лотос-arion-lotos', 0, 0, 0, NULL, 'ru-RU', 0, '127.0.0.1', 0, 1, 0, 0, 0, 'eedd5e9df87ea139d06e50832a2bb2cb', '[]', 'Лотос, ARION LOTOS, 3573868, 3494690543, Супер пёс, Лотос (ARION LOTOS) - Сибирский Хаски', '{"28":{"image":"uploads\\/image\\/2017-05\\/1494857112_eefda062330da2c91b846459c4b56fdf.jpg"},"26":[1],"2":"\\u041b\\u043e\\u0442\\u043e\\u0441","3":"ARION LOTOS","7":[],"11":"28","5":"3494690543","9":"\\u0421\\u0435\\u0440\\u043e-\\u0431\\u0435\\u043b\\u044b\\u0439","12":"\\u0421\\u0443\\u043f\\u0435\\u0440 \\u043f\\u0451\\u0441","4":"3573868","10":"57","6":["2013-09-20"],"8":["\\u041c\\u0430\\u043b\\u044c\\u0447\\u0438\\u043a"],"14":{"address":{"country":"BY","state":"\\u041c\\u0438\\u043d\\u0441\\u043a\\u0430\\u044f","city":"\\u041c\\u0438\\u043d\\u0441\\u043a"},"position":{"lat":"53.90453979999999","lng":"27.561524400000053","zoom":"7","marker":"marker-small-red.png"}},"13":{"address":{"country":"BY","state":"","city":"\\u041c\\u0438\\u043d\\u0441\\u043a"},"position":{"lat":"53.90453979999999","lng":"27.561524400000053","zoom":"7","marker":"marker-small-red.png"}},"18":[0],"22":[0]}', 0, '', NULL, 1, 1, 0, 'com_cobalt', 0, '["49"]', NULL),
	(3, 'Cristal family', 1, 1, '', 52, 5, 0, '0000-00-00 00:00:00', '2018-05-12 10:01:54', '0000-00-00 00:00:00', '2018-05-12 10:01:54', '2018-05-12 10:01:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5, 0, 0, '', '', '', 'cristal-family', 0, 0, 0, NULL, 'ru-RU', 0, '46.53.181.20', 0, 0, 0, 0, 0, '52a68c3045ffa2bb3e10c15621e29077', '[]', 'Cristal family', '[]', 0, '', NULL, 1, 1, 0, 'com_cobalt', 2, '["52"]', NULL);
/*!40000 ALTER TABLE `gy3te_js_res_record` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_js_res_record_category
CREATE TABLE IF NOT EXISTS `gy3te_js_res_record_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(10) NOT NULL DEFAULT '0',
  `record_id` int(10) NOT NULL DEFAULT '0',
  `ordering` int(10) NOT NULL DEFAULT '0',
  `otime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `section_id` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `access` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `rec` (`record_id`),
  KEY `idx_cat` (`section_id`,`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_js_res_record_category: 0 rows
DELETE FROM `gy3te_js_res_record_category`;
/*!40000 ALTER TABLE `gy3te_js_res_record_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_js_res_record_category` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_js_res_record_repost
CREATE TABLE IF NOT EXISTS `gy3te_js_res_record_repost` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `host_id` int(11) NOT NULL DEFAULT '0',
  `record_id` int(11) NOT NULL DEFAULT '0',
  `ctime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_reposted` tinyint(1) NOT NULL DEFAULT '0',
  `category` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_record` (`record_id`),
  KEY `idx_host` (`host_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_js_res_record_repost: ~2 rows (приблизительно)
DELETE FROM `gy3te_js_res_record_repost`;
/*!40000 ALTER TABLE `gy3te_js_res_record_repost` DISABLE KEYS */;
INSERT INTO `gy3te_js_res_record_repost` (`id`, `host_id`, `record_id`, `ctime`, `is_reposted`, `category`) VALUES
	(1, 52, 3, '2018-05-12 10:01:54', 0, NULL),
	(6, 49, 2, '2018-05-14 13:42:20', 0, NULL);
/*!40000 ALTER TABLE `gy3te_js_res_record_repost` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_js_res_record_values
CREATE TABLE IF NOT EXISTS `gy3te_js_res_record_values` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(10) NOT NULL DEFAULT '0',
  `field_key` varchar(45) NOT NULL DEFAULT '',
  `field_type` varchar(100) NOT NULL DEFAULT '',
  `field_label` varchar(100) NOT NULL DEFAULT '',
  `field_value` longtext NOT NULL,
  `record_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL DEFAULT '0',
  `section_id` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `ip` varchar(100) NOT NULL DEFAULT '',
  `ctime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `value_index` varchar(40) NOT NULL DEFAULT '0',
  `value_num` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_values` (`field_value`(333)),
  KEY `idx_key` (`field_key`),
  KEY `idx_record` (`record_id`),
  KEY `idx_field` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=138 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_js_res_record_values: 25 rows
DELETE FROM `gy3te_js_res_record_values`;
/*!40000 ALTER TABLE `gy3te_js_res_record_values` DISABLE KEYS */;
INSERT INTO `gy3te_js_res_record_values` (`id`, `field_id`, `field_key`, `field_type`, `field_label`, `field_value`, `record_id`, `user_id`, `type_id`, `section_id`, `params`, `ip`, `ctime`, `value_index`, `value_num`) VALUES
	(3, 27, 'k8331dab18bab17fbf72f8bb9d09611ff', 'akimage', 'Изображение породы', 'uploads/image/2017-05/1494856572_e1714fb5c3e954d0b172da5cc43d0325.jpg', 1, 48, 4, 4, '', '127.0.0.1', '2017-05-15 13:56:12', '0', 0),
	(4, 24, 'k8781b89f72e589ce2775c997bb6dc57e', 'html', 'Описание породы', '<p><b>Сибирский хаски</b> — заводская специализированная <a title="Породы собак" href="https://ru.wikipedia.org/wiki/%D0%9F%D0%BE%D1%80%D0%BE%D0%B4%D1%8B_%D1%81%D0%BE%D0%B1%D0%B0%D0%BA">порода собак</a>, зарегистрированная советскими кинологами в 30-х годах XX века как <a title="Ездовая собака" href="https://ru.wikipedia.org/wiki/%D0%95%D0%B7%D0%B4%D0%BE%D0%B2%D0%B0%D1%8F_%D1%81%D0%BE%D0%B1%D0%B0%D0%BA%D0%B0">ездовая собака</a>, полученная от аборигенных собак Дальнего Востока России, в основном из Анадыря, Колымы, Камчатки у местных оседлых приморских племён — <a title="Юкагиры" href="https://ru.wikipedia.org/wiki/%D0%AE%D0%BA%D0%B0%D0%B3%D0%B8%D1%80%D1%8B">юкагиров</a>, <a title="Кереки" href="https://ru.wikipedia.org/wiki/%D0%9A%D0%B5%D1%80%D0%B5%D0%BA%D0%B8">кереков</a>, <a title="Юиты" href="https://ru.wikipedia.org/wiki/%D0%AE%D0%B8%D1%82%D1%8B">азиатских эскимосов</a> и приморских <a title="Чукчи" href="https://ru.wikipedia.org/wiki/%D0%A7%D1%83%D0%BA%D1%87%D0%B8">чукчей</a> — <i>анкальын</i> (приморские, поморы — от <i>анкы</i> (море))<sup id="cite_ref-2" class="reference"><a href="https://ru.wikipedia.org/wiki/%D0%A1%D0%B8%D0%B1%D0%B8%D1%80%D1%81%D0%BA%D0%B8%D0%B9_%D1%85%D0%B0%D1%81%D0%BA%D0%B8#cite_note-2">[2]</a></sup>. Эта аборигенная ездовая собака Дальнего Востока является одной из <a title="Древние породы собак" href="https://ru.wikipedia.org/wiki/%D0%94%D1%80%D0%B5%D0%B2%D0%BD%D0%B8%D0%B5_%D0%BF%D0%BE%D1%80%D0%BE%D0%B4%D1%8B_%D1%81%D0%BE%D0%B1%D0%B0%D0%BA">древнейших пород собак</a>. В настоящее время выведенная порода «сибирский хаски» используется не только как ездовая, но и как собака-компаньон и шоу-выставочная собака.</p>', 1, 48, 4, 4, '', '127.0.0.1', '2017-05-15 13:56:12', '0', 0),
	(115, 28, 'k5fbaae40053394271bdc4f7a9cd4fe73', 'image', 'Главное фото ', 'uploads/image/2017-05/1494857112_eefda062330da2c91b846459c4b56fdf.jpg', 2, 49, 1, 1, '', '127.0.0.1', '2018-05-14 13:42:20', '0', 0),
	(116, 2, 'kb5858088c932fd4370df61f0259cc3ca', 'text', 'Кличка домашняя', 'Лотос', 2, 49, 1, 1, '', '127.0.0.1', '2018-05-14 13:42:20', '0', 0),
	(117, 3, 'kf462fa7c9df8adf14a918503d219dbe6', 'text', 'Кличка по родословной', 'ARION LOTOS', 2, 49, 1, 1, '', '127.0.0.1', '2018-05-14 13:42:20', '0', 0),
	(118, 26, 'k3beec8665d494c573f641207652e60f7', 'child', 'Порода', '1', 2, 49, 1, 1, '', '127.0.0.1', '2018-05-14 13:42:20', '0', 0),
	(119, 8, 'k35254eb6ed0765c77cf058f867d8172c', 'select', 'Пол', 'Мальчик', 2, 49, 1, 1, '', '127.0.0.1', '2018-05-14 13:42:20', '0', 0),
	(120, 6, 'kf194989ed1a30256c8ee4ea83e1bfc60', 'datetime', 'Дата рождения', '2013-09-20', 2, 49, 1, 1, '', '127.0.0.1', '2018-05-14 13:42:20', '0', 0),
	(121, 13, 'k8b1987f5d2b838be722030ecd6d90b43', 'geo', 'Страна рождения', 'BY', 2, 49, 1, 1, '', '127.0.0.1', '2018-05-14 13:42:20', 'country', 0),
	(122, 13, 'k8b1987f5d2b838be722030ecd6d90b43', 'geo', 'Страна рождения', 'Минск', 2, 49, 1, 1, '', '127.0.0.1', '2018-05-14 13:42:20', 'city', 0),
	(123, 13, 'k8b1987f5d2b838be722030ecd6d90b43', 'geo', 'Страна рождения', '53.90453979999999', 2, 49, 1, 1, '', '127.0.0.1', '2018-05-14 13:42:20', 'lat', 0),
	(124, 13, 'k8b1987f5d2b838be722030ecd6d90b43', 'geo', 'Страна рождения', '27.561524400000053', 2, 49, 1, 1, '', '127.0.0.1', '2018-05-14 13:42:20', 'lng', 0),
	(125, 13, 'k8b1987f5d2b838be722030ecd6d90b43', 'geo', 'Страна рождения', 'marker-small-red.png', 2, 49, 1, 1, '', '127.0.0.1', '2018-05-14 13:42:20', 'marker', 0),
	(126, 4, 'kc8fbed8f231a0a06ae0570dce1f8397c', 'text', 'Номер РКФ/FCI', '3573868', 2, 49, 1, 1, '', '127.0.0.1', '2018-05-14 13:42:20', '0', 0),
	(127, 5, 'k42e3885b3e1f163db24a643e8735b929', 'text', 'Клеймо/Chip', '3494690543', 2, 49, 1, 1, '', '127.0.0.1', '2018-05-14 13:42:20', '0', 0),
	(128, 9, 'k6774946085d070e5ed6ef60d76124ebe', 'text', 'Окрас', 'Серо-белый', 2, 49, 1, 1, '', '127.0.0.1', '2018-05-14 13:42:20', '0', 0),
	(129, 10, 'kd6b39b5f062c11650671f274f86505d1', 'digits', 'Высота в холке', '57', 2, 49, 1, 1, '', '127.0.0.1', '2018-05-14 13:42:20', '0', 0),
	(130, 11, 'k3fc02380a476e4a6d7e9e00cea29daf3', 'digits', 'Вес', '28', 2, 49, 1, 1, '', '127.0.0.1', '2018-05-14 13:42:20', '0', 0),
	(131, 12, 'k7db2de2753446778a0ed3a1815168146', 'textarea', 'Примечание', 'Супер пёс', 2, 49, 1, 1, '', '127.0.0.1', '2018-05-14 13:42:20', '0', 0),
	(132, 14, 'k043ed5b16d476fbc14dee5d97ad8fe4e', 'geo', 'Место нахождения', 'BY', 2, 49, 1, 1, '', '127.0.0.1', '2018-05-14 13:42:20', 'country', 0),
	(133, 14, 'k043ed5b16d476fbc14dee5d97ad8fe4e', 'geo', 'Место нахождения', 'Минск', 2, 49, 1, 1, '', '127.0.0.1', '2018-05-14 13:42:20', 'city', 0),
	(134, 14, 'k043ed5b16d476fbc14dee5d97ad8fe4e', 'geo', 'Место нахождения', 'Минская', 2, 49, 1, 1, '', '127.0.0.1', '2018-05-14 13:42:20', 'state', 0),
	(135, 14, 'k043ed5b16d476fbc14dee5d97ad8fe4e', 'geo', 'Место нахождения', '53.90453979999999', 2, 49, 1, 1, '', '127.0.0.1', '2018-05-14 13:42:20', 'lat', 0),
	(136, 14, 'k043ed5b16d476fbc14dee5d97ad8fe4e', 'geo', 'Место нахождения', '27.561524400000053', 2, 49, 1, 1, '', '127.0.0.1', '2018-05-14 13:42:20', 'lng', 0),
	(137, 14, 'k043ed5b16d476fbc14dee5d97ad8fe4e', 'geo', 'Место нахождения', 'marker-small-red.png', 2, 49, 1, 1, '', '127.0.0.1', '2018-05-14 13:42:20', 'marker', 0);
/*!40000 ALTER TABLE `gy3te_js_res_record_values` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_js_res_sales
CREATE TABLE IF NOT EXISTS `gy3te_js_res_sales` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `saler_id` int(11) NOT NULL DEFAULT '0',
  `record_id` int(11) NOT NULL DEFAULT '0',
  `section_id` int(11) NOT NULL DEFAULT '0',
  `field_id` int(11) NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL DEFAULT '0',
  `num` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `comment` varchar(255) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `gateway_id` varchar(45) NOT NULL DEFAULT '',
  `gateway` varchar(45) NOT NULL DEFAULT '',
  `ctime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `currency` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_saler` (`saler_id`),
  KEY `idx_buyer` (`user_id`),
  KEY `idx_rec` (`record_id`),
  KEY `idx_sec` (`section_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_js_res_sales: 0 rows
DELETE FROM `gy3te_js_res_sales`;
/*!40000 ALTER TABLE `gy3te_js_res_sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_js_res_sales` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_js_res_sections
CREATE TABLE IF NOT EXISTS `gy3te_js_res_sections` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int(10) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL DEFAULT '',
  `image_position` varchar(20) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(11) NOT NULL DEFAULT '0',
  `categories` int(11) DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '*',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_js_res_sections: 5 rows
DELETE FROM `gy3te_js_res_sections`;
/*!40000 ALTER TABLE `gy3te_js_res_sections` DISABLE KEYS */;
INSERT INTO `gy3te_js_res_sections` (`id`, `asset_id`, `name`, `title`, `alias`, `description`, `published`, `ordering`, `image`, `image_position`, `params`, `checked_out`, `checked_out_time`, `access`, `categories`, `language`) VALUES
	(1, 72, 'Каталог собак', 'Каталог собак', 'catalog-dogs', '', 1, 5, '', '', '{"general":{"status":"1","status_msg":"This section is currently offline. Please, check back later.","category_itemid":"","noaccess_redirect":"","orderby":"r.ctime DESC","lang_mode":"0","records_mode":"0","filter_mode":"1","cat_mode":"1","can_display":"","featured_first":"0","marknew":"0","show_future_records":"3","show_past_records":"3","show_restrict":"1","show_children":"0","have_unpublished":"1","item_label":"item","section_home_items":"1","section_home_orderby":"r.ctime DESC","home_featured_first":"0","type":["1"],"record_submit_limit":"0","tmpl_markup":"main_template.8d736f1906195cc4f0ad9867db5622d6","tmpl_list":["blog.9a9b7ca6432a6cc9dff44a6a25f1691a"],"tmpl_category":"0","tmpl_compare":"blog.4933feaa7ba3a6c601b707236e0cd269","tmpl_list_default":"default"},"more":{"search_mode":"3","search_title":"1","search_name":"0","search_email":"0","search_comments":"0","feed_link":"1","feed_link2":"1","records_mode":"0","feed_limit":"50","orderby_rss":"r.ctime DESC","feed_link_type":"1","metadesc":"","metakey":"","author":"","robots":""},"personalize":{"personalize":"1","records_mode":"0","author_mode":"username","breadcrumbs":"1","post_anywhere":"1","home_text":"See all artilces","text_icon":"home.png","onlinestatus":"1","vip":"0","novip":"3","glod_amount":"250","vip_gold":"vipGold.png","vip_silver":"vipSilver.png","vip_gray":"vipGray.png","pcat_submit":"0","pcat_limit":"10","pcat_descr_length":"200","pcat_icon":"1","pcat_meta":"2","allow_section_set":"1","allow_change_header":"1","allow_change_descr":"1","user_sec_descr_length":"200","allow_access_control":"1","allow_access_control_add":"1"},"events":{"subscribe_section":"2","subscribe_category":"2","subscribe_record":"2","subscribe_user":"2","alerts":"1","user_manage":"1","event_date_format":"","event_date_custom":"d M Y","event":{"record_new":{"notif":"2","activ":"2","karma1":"0","msg":"EVENT_RECORD_NEW","msg_pers":"EVENT_RECORD_NEW_PERS"},"record_view":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_VIEW","msg_pers":"EVENT_RECORD_VIEW_PERS"},"record_wait_approve":{"notif":"2","activ":"2","msg":"EVENT_RECORD_WAIT_APPROVE","msg_pers":"EVENT_RECORD_WAIT_APPROVE_PERS"},"record_approved":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_APPROVED","msg_pers":"EVENT_RECORD_APPROVED_PERS"},"record_edited":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_EDITED","msg_pers":"EVENT_RECORD_EDITED_PERS"},"record_deleted":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_DELETED","msg_pers":"EVENT_RECORD_DELETED_PERS"},"record_rated":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_RATED","msg_pers":"EVENT_RECORD_RATED_PERS"},"record_expired":{"notif":"2","activ":"2","karma2":"0","msg":"EVENT_RECORD_EXPIRED","msg_pers":"EVENT_RECORD_EXPIRED_PERS"},"record_featured_expired":{"notif":"2","activ":"2","karma2":"0","msg":"EVENT_RECORD_FEATURED_EXPIRED","msg_pers":"EVENT_RECORD_FEATURED_EXPIRED_PERS"},"record_bookmarked":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_BOOKMARKED","msg_pers":"EVENT_RECORD_BOOKMARKED_PERS"},"record_tagged":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_TAGGED","msg_pers":"EVENT_RECORD_TAGGED_PERS"},"record_unpublished":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_UNPUBLISHED","msg_pers":"EVENT_RECORD_UNPUBLISHED_PERS"},"record_featured":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_FEATURED","msg_pers":"EVENT_RECORD_FEATURED_PERS"},"record_extended":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_EXTENDED","msg_pers":"EVENT_RECORD_EXTENDED_PERS"},"record_reposted":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_REPOSTED","msg_pers":"EVENT_RECORD_REPOSTED_PERS"},"record_posted":{"notif":"2","activ":"2","karma1":"0","msg":"EVENT_RECORD_POSTED","msg_pers":"EVENT_RECORD_POSTED_PERS"},"comment_new":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_NEW","msg_pers":"EVENT_COMMENT_NEW_PERS"},"comment_edited":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_EDITED","msg_pers":"EVENT_COMMENT_EDITED_PERS"},"comment_rated":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_RATED","msg_pers":"EVENT_COMMENT_RATED_PERS"},"comment_deleted":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_DELETED","msg_pers":"EVENT_COMMENT_DELETED_PERS"},"comment_approved":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_APPROVED","msg_pers":"EVENT_COMMENT_APPROVED_PERS"},"comment_reply":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_REPLY","msg_pers":"EVENT_COMMENT_REPLY_PERS"},"comment_unpublished":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_UNPUBLISHED","msg_pers":"EVENT_COMMENT_UNPUBLISHED_PERS"},"status_changed":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_STATUS_CHANGED","msg_pers":"EVENT_STATUS_CHANGED_PERS"},"parent_new":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_PARENT_NEW","msg_pers":"EVENT_PARENT_NEW_PERS"},"child_new":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_CHILD_NEW","msg_pers":"EVENT_CHILD_NEW_PERS"},"parent_attached":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_PARENT_ATTACHED","msg_pers":"EVENT_PARENT_ATTACHED_PERS"},"child_attached":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_CHILD_ATTACHED","msg_pers":"EVENT_CHILD_ATTACHED_PERS"},"order_updated":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_ORDER_UPDATED","msg_pers":"EVENT_ORDER_UPDATED_PERS"},"new_sale":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_NEW_SALE","msg_pers":"EVENT_NEW_SALE_PERS"},"new_sale_manual":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_NEW_SALE_MANUAL","msg_pers":"EVENT_NEW_SALE_MANUAL_PERS"}}}}', 0, '0000-00-00 00:00:00', 1, 0, '*'),
	(2, 73, 'Альбомы собак', 'Альбомы собак', 'alboms-dogs', '', 1, 4, '', '', '{"general":{"status":"1","status_msg":"This section is currently offline. Please, check back later.","category_itemid":"","noaccess_redirect":"","orderby":"r.ctime DESC","lang_mode":"0","records_mode":"0","filter_mode":"1","cat_mode":"1","can_display":"","featured_first":"0","marknew":"0","show_future_records":"3","show_past_records":"3","show_restrict":"1","show_children":"0","have_unpublished":"1","item_label":"item","section_home_items":"1","section_home_orderby":"r.ctime DESC","home_featured_first":"0","type":["2"],"record_submit_limit":"0","tmpl_markup":"main_template.f8e66c65bfc6e9d2ec60a2f5505111cb","tmpl_list":["blog.d115b87d3693ee82e438a24940a6bd79"],"tmpl_category":"0","tmpl_compare":"blog.cea9b65f27ed9b713d42d157eb57d206","tmpl_list_default":"default"},"more":{"search_mode":"3","search_title":"1","search_name":"0","search_email":"0","search_comments":"0","feed_link":"1","feed_link2":"1","records_mode":"0","feed_limit":"50","orderby_rss":"r.ctime DESC","feed_link_type":"1","metadesc":"","metakey":"","author":"","robots":""},"personalize":{"personalize":"0","records_mode":"0","author_mode":"username","breadcrumbs":"1","post_anywhere":"1","home_text":"See all artilces","text_icon":"home.png","onlinestatus":"1","vip":"0","novip":"3","glod_amount":"250","vip_gold":"vipGold.png","vip_silver":"vipSilver.png","vip_gray":"vipGray.png","pcat_submit":"0","pcat_limit":"10","pcat_descr_length":"200","pcat_icon":"1","pcat_meta":"2","allow_section_set":"1","allow_change_header":"1","allow_change_descr":"1","user_sec_descr_length":"200","allow_access_control":"1","allow_access_control_add":"1"},"events":{"subscribe_section":"2","subscribe_category":"2","subscribe_record":"2","subscribe_user":"2","alerts":"1","user_manage":"1","event_date_format":"","event_date_custom":"d M Y","event":{"record_new":{"notif":"2","activ":"2","karma1":"0","msg":"EVENT_RECORD_NEW","msg_pers":"EVENT_RECORD_NEW_PERS"},"record_view":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_VIEW","msg_pers":"EVENT_RECORD_VIEW_PERS"},"record_wait_approve":{"notif":"2","activ":"2","msg":"EVENT_RECORD_WAIT_APPROVE","msg_pers":"EVENT_RECORD_WAIT_APPROVE_PERS"},"record_approved":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_APPROVED","msg_pers":"EVENT_RECORD_APPROVED_PERS"},"record_edited":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_EDITED","msg_pers":"EVENT_RECORD_EDITED_PERS"},"record_deleted":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_DELETED","msg_pers":"EVENT_RECORD_DELETED_PERS"},"record_rated":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_RATED","msg_pers":"EVENT_RECORD_RATED_PERS"},"record_expired":{"notif":"2","activ":"2","karma2":"0","msg":"EVENT_RECORD_EXPIRED","msg_pers":"EVENT_RECORD_EXPIRED_PERS"},"record_featured_expired":{"notif":"2","activ":"2","karma2":"0","msg":"EVENT_RECORD_FEATURED_EXPIRED","msg_pers":"EVENT_RECORD_FEATURED_EXPIRED_PERS"},"record_bookmarked":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_BOOKMARKED","msg_pers":"EVENT_RECORD_BOOKMARKED_PERS"},"record_tagged":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_TAGGED","msg_pers":"EVENT_RECORD_TAGGED_PERS"},"record_unpublished":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_UNPUBLISHED","msg_pers":"EVENT_RECORD_UNPUBLISHED_PERS"},"record_featured":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_FEATURED","msg_pers":"EVENT_RECORD_FEATURED_PERS"},"record_extended":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_EXTENDED","msg_pers":"EVENT_RECORD_EXTENDED_PERS"},"record_reposted":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_REPOSTED","msg_pers":"EVENT_RECORD_REPOSTED_PERS"},"record_posted":{"notif":"2","activ":"2","karma1":"0","msg":"EVENT_RECORD_POSTED","msg_pers":"EVENT_RECORD_POSTED_PERS"},"comment_new":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_NEW","msg_pers":"EVENT_COMMENT_NEW_PERS"},"comment_edited":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_EDITED","msg_pers":"EVENT_COMMENT_EDITED_PERS"},"comment_rated":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_RATED","msg_pers":"EVENT_COMMENT_RATED_PERS"},"comment_deleted":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_DELETED","msg_pers":"EVENT_COMMENT_DELETED_PERS"},"comment_approved":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_APPROVED","msg_pers":"EVENT_COMMENT_APPROVED_PERS"},"comment_reply":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_REPLY","msg_pers":"EVENT_COMMENT_REPLY_PERS"},"comment_unpublished":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_UNPUBLISHED","msg_pers":"EVENT_COMMENT_UNPUBLISHED_PERS"},"status_changed":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_STATUS_CHANGED","msg_pers":"EVENT_STATUS_CHANGED_PERS"},"parent_new":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_PARENT_NEW","msg_pers":"EVENT_PARENT_NEW_PERS"},"child_new":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_CHILD_NEW","msg_pers":"EVENT_CHILD_NEW_PERS"},"parent_attached":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_PARENT_ATTACHED","msg_pers":"EVENT_PARENT_ATTACHED_PERS"},"child_attached":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_CHILD_ATTACHED","msg_pers":"EVENT_CHILD_ATTACHED_PERS"},"order_updated":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_ORDER_UPDATED","msg_pers":"EVENT_ORDER_UPDATED_PERS"},"new_sale":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_NEW_SALE","msg_pers":"EVENT_NEW_SALE_PERS"},"new_sale_manual":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_NEW_SALE_MANUAL","msg_pers":"EVENT_NEW_SALE_MANUAL_PERS"}}}}', 0, '0000-00-00 00:00:00', 1, 0, '*'),
	(3, 74, 'Ведеоролики собак', 'Видеоролики собак', 'videos-dogs', '', 1, 3, '', '', '{"general":{"status":"1","status_msg":"This section is currently offline. Please, check back later.","category_itemid":"","noaccess_redirect":"","orderby":"r.ctime DESC","lang_mode":"0","records_mode":"0","filter_mode":"1","cat_mode":"1","can_display":"","featured_first":"0","marknew":"0","show_future_records":"3","show_past_records":"3","show_restrict":"1","show_children":"0","have_unpublished":"1","item_label":"item","section_home_items":"1","section_home_orderby":"r.ctime DESC","home_featured_first":"0","type":["3"],"record_submit_limit":"0","tmpl_markup":"main_template.1bff90ab28f4fd1791264bd498272e74","tmpl_list":["blog.57fe2f7354616ffa0daf5bbb0b9e9465"],"tmpl_category":"0","tmpl_compare":"blog.8972f223e5b27028eaae285b32af86be","tmpl_list_default":"default"},"more":{"search_mode":"3","search_title":"1","search_name":"0","search_email":"0","search_comments":"0","feed_link":"1","feed_link2":"1","records_mode":"0","feed_limit":"50","orderby_rss":"r.ctime DESC","feed_link_type":"1","metadesc":"","metakey":"","author":"","robots":""},"personalize":{"personalize":"0","records_mode":"0","author_mode":"username","breadcrumbs":"1","post_anywhere":"1","home_text":"See all artilces","text_icon":"home.png","onlinestatus":"1","vip":"0","novip":"3","glod_amount":"250","vip_gold":"vipGold.png","vip_silver":"vipSilver.png","vip_gray":"vipGray.png","pcat_submit":"0","pcat_limit":"10","pcat_descr_length":"200","pcat_icon":"1","pcat_meta":"2","allow_section_set":"1","allow_change_header":"1","allow_change_descr":"1","user_sec_descr_length":"200","allow_access_control":"1","allow_access_control_add":"1"},"events":{"subscribe_section":"2","subscribe_category":"2","subscribe_record":"2","subscribe_user":"2","alerts":"1","user_manage":"1","event_date_format":"","event_date_custom":"d M Y","event":{"record_new":{"notif":"2","activ":"2","karma1":"0","msg":"EVENT_RECORD_NEW","msg_pers":"EVENT_RECORD_NEW_PERS"},"record_view":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_VIEW","msg_pers":"EVENT_RECORD_VIEW_PERS"},"record_wait_approve":{"notif":"2","activ":"2","msg":"EVENT_RECORD_WAIT_APPROVE","msg_pers":"EVENT_RECORD_WAIT_APPROVE_PERS"},"record_approved":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_APPROVED","msg_pers":"EVENT_RECORD_APPROVED_PERS"},"record_edited":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_EDITED","msg_pers":"EVENT_RECORD_EDITED_PERS"},"record_deleted":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_DELETED","msg_pers":"EVENT_RECORD_DELETED_PERS"},"record_rated":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_RATED","msg_pers":"EVENT_RECORD_RATED_PERS"},"record_expired":{"notif":"2","activ":"2","karma2":"0","msg":"EVENT_RECORD_EXPIRED","msg_pers":"EVENT_RECORD_EXPIRED_PERS"},"record_featured_expired":{"notif":"2","activ":"2","karma2":"0","msg":"EVENT_RECORD_FEATURED_EXPIRED","msg_pers":"EVENT_RECORD_FEATURED_EXPIRED_PERS"},"record_bookmarked":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_BOOKMARKED","msg_pers":"EVENT_RECORD_BOOKMARKED_PERS"},"record_tagged":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_TAGGED","msg_pers":"EVENT_RECORD_TAGGED_PERS"},"record_unpublished":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_UNPUBLISHED","msg_pers":"EVENT_RECORD_UNPUBLISHED_PERS"},"record_featured":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_FEATURED","msg_pers":"EVENT_RECORD_FEATURED_PERS"},"record_extended":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_EXTENDED","msg_pers":"EVENT_RECORD_EXTENDED_PERS"},"record_reposted":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_REPOSTED","msg_pers":"EVENT_RECORD_REPOSTED_PERS"},"record_posted":{"notif":"2","activ":"2","karma1":"0","msg":"EVENT_RECORD_POSTED","msg_pers":"EVENT_RECORD_POSTED_PERS"},"comment_new":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_NEW","msg_pers":"EVENT_COMMENT_NEW_PERS"},"comment_edited":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_EDITED","msg_pers":"EVENT_COMMENT_EDITED_PERS"},"comment_rated":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_RATED","msg_pers":"EVENT_COMMENT_RATED_PERS"},"comment_deleted":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_DELETED","msg_pers":"EVENT_COMMENT_DELETED_PERS"},"comment_approved":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_APPROVED","msg_pers":"EVENT_COMMENT_APPROVED_PERS"},"comment_reply":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_REPLY","msg_pers":"EVENT_COMMENT_REPLY_PERS"},"comment_unpublished":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_UNPUBLISHED","msg_pers":"EVENT_COMMENT_UNPUBLISHED_PERS"},"status_changed":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_STATUS_CHANGED","msg_pers":"EVENT_STATUS_CHANGED_PERS"},"parent_new":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_PARENT_NEW","msg_pers":"EVENT_PARENT_NEW_PERS"},"child_new":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_CHILD_NEW","msg_pers":"EVENT_CHILD_NEW_PERS"},"parent_attached":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_PARENT_ATTACHED","msg_pers":"EVENT_PARENT_ATTACHED_PERS"},"child_attached":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_CHILD_ATTACHED","msg_pers":"EVENT_CHILD_ATTACHED_PERS"},"order_updated":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_ORDER_UPDATED","msg_pers":"EVENT_ORDER_UPDATED_PERS"},"new_sale":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_NEW_SALE","msg_pers":"EVENT_NEW_SALE_PERS"},"new_sale_manual":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_NEW_SALE_MANUAL","msg_pers":"EVENT_NEW_SALE_MANUAL_PERS"}}}}', 0, '0000-00-00 00:00:00', 1, 0, '*'),
	(4, 75, 'Породы собак', 'Породы собак', 'breeds-dogs', '', 1, 2, '', '', '{"general":{"status":"1","status_msg":"This section is currently offline. Please, check back later.","category_itemid":"","noaccess_redirect":"","orderby":"r.ctime DESC","lang_mode":"0","records_mode":"0","filter_mode":"1","cat_mode":"1","can_display":"","featured_first":"0","marknew":"0","show_future_records":"3","show_past_records":"3","show_restrict":"1","show_children":"0","have_unpublished":"1","item_label":"item","section_home_items":"1","section_home_orderby":"r.title ASC","home_featured_first":"0","type":["4"],"record_submit_limit":"0","tmpl_markup":"main_template.820fa62fb201fcdead230f210039cb61","tmpl_list":["blog.490b0ddb7935ca48bb912420a4a38efb"],"tmpl_category":"0","tmpl_compare":"blog.662a1b7881c18c1bca75914730b9ea1c","tmpl_list_default":"default"},"more":{"search_mode":"3","search_title":"1","search_name":"0","search_email":"0","search_comments":"0","feed_link":"1","feed_link2":"1","records_mode":"0","feed_limit":"50","orderby_rss":"r.ctime DESC","feed_link_type":"1","metadesc":"","metakey":"","author":"","robots":""},"personalize":{"personalize":"0","records_mode":"0","author_mode":"username","breadcrumbs":"1","post_anywhere":"1","home_text":"See all artilces","text_icon":"home.png","onlinestatus":"1","vip":"0","novip":"3","glod_amount":"250","vip_gold":"vipGold.png","vip_silver":"vipSilver.png","vip_gray":"vipGray.png","pcat_submit":"0","pcat_limit":"10","pcat_descr_length":"200","pcat_icon":"1","pcat_meta":"2","allow_section_set":"1","allow_change_header":"1","allow_change_descr":"1","user_sec_descr_length":"200","allow_access_control":"1","allow_access_control_add":"1"},"events":{"subscribe_section":"2","subscribe_category":"2","subscribe_record":"2","subscribe_user":"2","alerts":"1","user_manage":"1","event_date_format":"","event_date_custom":"d M Y","event":{"record_new":{"notif":"2","activ":"2","karma1":"0","msg":"EVENT_RECORD_NEW","msg_pers":"EVENT_RECORD_NEW_PERS"},"record_view":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_VIEW","msg_pers":"EVENT_RECORD_VIEW_PERS"},"record_wait_approve":{"notif":"2","activ":"2","msg":"EVENT_RECORD_WAIT_APPROVE","msg_pers":"EVENT_RECORD_WAIT_APPROVE_PERS"},"record_approved":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_APPROVED","msg_pers":"EVENT_RECORD_APPROVED_PERS"},"record_edited":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_EDITED","msg_pers":"EVENT_RECORD_EDITED_PERS"},"record_deleted":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_DELETED","msg_pers":"EVENT_RECORD_DELETED_PERS"},"record_rated":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_RATED","msg_pers":"EVENT_RECORD_RATED_PERS"},"record_expired":{"notif":"2","activ":"2","karma2":"0","msg":"EVENT_RECORD_EXPIRED","msg_pers":"EVENT_RECORD_EXPIRED_PERS"},"record_featured_expired":{"notif":"2","activ":"2","karma2":"0","msg":"EVENT_RECORD_FEATURED_EXPIRED","msg_pers":"EVENT_RECORD_FEATURED_EXPIRED_PERS"},"record_bookmarked":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_BOOKMARKED","msg_pers":"EVENT_RECORD_BOOKMARKED_PERS"},"record_tagged":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_TAGGED","msg_pers":"EVENT_RECORD_TAGGED_PERS"},"record_unpublished":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_UNPUBLISHED","msg_pers":"EVENT_RECORD_UNPUBLISHED_PERS"},"record_featured":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_FEATURED","msg_pers":"EVENT_RECORD_FEATURED_PERS"},"record_extended":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_EXTENDED","msg_pers":"EVENT_RECORD_EXTENDED_PERS"},"record_reposted":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_REPOSTED","msg_pers":"EVENT_RECORD_REPOSTED_PERS"},"record_posted":{"notif":"2","activ":"2","karma1":"0","msg":"EVENT_RECORD_POSTED","msg_pers":"EVENT_RECORD_POSTED_PERS"},"comment_new":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_NEW","msg_pers":"EVENT_COMMENT_NEW_PERS"},"comment_edited":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_EDITED","msg_pers":"EVENT_COMMENT_EDITED_PERS"},"comment_rated":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_RATED","msg_pers":"EVENT_COMMENT_RATED_PERS"},"comment_deleted":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_DELETED","msg_pers":"EVENT_COMMENT_DELETED_PERS"},"comment_approved":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_APPROVED","msg_pers":"EVENT_COMMENT_APPROVED_PERS"},"comment_reply":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_REPLY","msg_pers":"EVENT_COMMENT_REPLY_PERS"},"comment_unpublished":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_UNPUBLISHED","msg_pers":"EVENT_COMMENT_UNPUBLISHED_PERS"},"status_changed":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_STATUS_CHANGED","msg_pers":"EVENT_STATUS_CHANGED_PERS"},"parent_new":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_PARENT_NEW","msg_pers":"EVENT_PARENT_NEW_PERS"},"child_new":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_CHILD_NEW","msg_pers":"EVENT_CHILD_NEW_PERS"},"parent_attached":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_PARENT_ATTACHED","msg_pers":"EVENT_PARENT_ATTACHED_PERS"},"child_attached":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_CHILD_ATTACHED","msg_pers":"EVENT_CHILD_ATTACHED_PERS"},"order_updated":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_ORDER_UPDATED","msg_pers":"EVENT_ORDER_UPDATED_PERS"},"new_sale":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_NEW_SALE","msg_pers":"EVENT_NEW_SALE_PERS"},"new_sale_manual":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_NEW_SALE_MANUAL","msg_pers":"EVENT_NEW_SALE_MANUAL_PERS"}}}}', 0, '0000-00-00 00:00:00', 1, 0, '*'),
	(5, 127, 'Питомники', '', 'питомники', '', 1, 1, '', '', '{"general":{"status":"1","status_msg":"This section is currently offline. Please, check back later.","category_itemid":"","noaccess_redirect":"","orderby":"r.ctime DESC","lang_mode":"0","records_mode":"0","filter_mode":"1","cat_mode":"1","can_display":"","featured_first":"0","marknew":"0","show_future_records":"3","show_past_records":"3","show_restrict":"1","show_children":"0","have_unpublished":"1","item_label":"item","section_home_items":"1","section_home_orderby":"r.ctime DESC","home_featured_first":"0","type":["5"],"record_submit_limit":"0","tmpl_markup":"main_template.67449bded07880adbc37315e56ebf0ba","tmpl_list":["blog.7c68c75831195ac50933c288a3246a58"],"tmpl_category":"0","tmpl_compare":"blog.234bdd56a921e24dbbd07edde5e676b4","tmpl_list_default":"default"},"more":{"search_mode":"3","search_title":"1","search_name":"0","search_email":"0","search_comments":"0","feed_link":"1","feed_link2":"1","records_mode":"0","feed_limit":"50","orderby_rss":"r.ctime DESC","feed_link_type":"1","metadesc":"","metakey":"","author":"","robots":""},"personalize":{"personalize":"1","records_mode":"0","author_mode":"username","breadcrumbs":"1","post_anywhere":"1","home_text":"See all artilces","text_icon":"home.png","onlinestatus":"1","vip":"0","novip":"3","glod_amount":"250","vip_gold":"vipGold.png","vip_silver":"vipSilver.png","vip_gray":"vipGray.png","pcat_submit":"0","pcat_limit":"10","pcat_descr_length":"200","pcat_icon":"1","pcat_meta":"2","allow_section_set":"1","allow_change_header":"1","allow_change_descr":"1","user_sec_descr_length":"200","allow_access_control":"1","allow_access_control_add":"1"},"events":{"subscribe_section":"2","subscribe_category":"2","subscribe_record":"2","subscribe_user":"2","alerts":"1","user_manage":"1","event_date_format":"","event_date_custom":"d M Y","event":{"record_new":{"notif":"2","activ":"2","karma1":"0","msg":"EVENT_RECORD_NEW","msg_pers":"EVENT_RECORD_NEW_PERS"},"record_view":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_VIEW","msg_pers":"EVENT_RECORD_VIEW_PERS"},"record_wait_approve":{"notif":"2","activ":"2","msg":"EVENT_RECORD_WAIT_APPROVE","msg_pers":"EVENT_RECORD_WAIT_APPROVE_PERS"},"record_approved":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_APPROVED","msg_pers":"EVENT_RECORD_APPROVED_PERS"},"record_edited":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_EDITED","msg_pers":"EVENT_RECORD_EDITED_PERS"},"record_deleted":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_DELETED","msg_pers":"EVENT_RECORD_DELETED_PERS"},"record_rated":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_RATED","msg_pers":"EVENT_RECORD_RATED_PERS"},"record_expired":{"notif":"2","activ":"2","karma2":"0","msg":"EVENT_RECORD_EXPIRED","msg_pers":"EVENT_RECORD_EXPIRED_PERS"},"record_featured_expired":{"notif":"2","activ":"2","karma2":"0","msg":"EVENT_RECORD_FEATURED_EXPIRED","msg_pers":"EVENT_RECORD_FEATURED_EXPIRED_PERS"},"record_bookmarked":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_BOOKMARKED","msg_pers":"EVENT_RECORD_BOOKMARKED_PERS"},"record_tagged":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_TAGGED","msg_pers":"EVENT_RECORD_TAGGED_PERS"},"record_unpublished":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_UNPUBLISHED","msg_pers":"EVENT_RECORD_UNPUBLISHED_PERS"},"record_featured":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_FEATURED","msg_pers":"EVENT_RECORD_FEATURED_PERS"},"record_extended":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_EXTENDED","msg_pers":"EVENT_RECORD_EXTENDED_PERS"},"record_reposted":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_REPOSTED","msg_pers":"EVENT_RECORD_REPOSTED_PERS"},"record_posted":{"notif":"2","activ":"2","karma1":"0","msg":"EVENT_RECORD_POSTED","msg_pers":"EVENT_RECORD_POSTED_PERS"},"comment_new":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_NEW","msg_pers":"EVENT_COMMENT_NEW_PERS"},"comment_edited":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_EDITED","msg_pers":"EVENT_COMMENT_EDITED_PERS"},"comment_rated":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_RATED","msg_pers":"EVENT_COMMENT_RATED_PERS"},"comment_deleted":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_DELETED","msg_pers":"EVENT_COMMENT_DELETED_PERS"},"comment_approved":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_APPROVED","msg_pers":"EVENT_COMMENT_APPROVED_PERS"},"comment_reply":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_REPLY","msg_pers":"EVENT_COMMENT_REPLY_PERS"},"comment_unpublished":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_UNPUBLISHED","msg_pers":"EVENT_COMMENT_UNPUBLISHED_PERS"},"status_changed":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_STATUS_CHANGED","msg_pers":"EVENT_STATUS_CHANGED_PERS"},"parent_new":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_PARENT_NEW","msg_pers":"EVENT_PARENT_NEW_PERS"},"child_new":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_CHILD_NEW","msg_pers":"EVENT_CHILD_NEW_PERS"},"parent_attached":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_PARENT_ATTACHED","msg_pers":"EVENT_PARENT_ATTACHED_PERS"},"child_attached":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_CHILD_ATTACHED","msg_pers":"EVENT_CHILD_ATTACHED_PERS"},"order_updated":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_ORDER_UPDATED","msg_pers":"EVENT_ORDER_UPDATED_PERS"},"new_sale":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_NEW_SALE","msg_pers":"EVENT_NEW_SALE_PERS"},"new_sale_manual":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_NEW_SALE_MANUAL","msg_pers":"EVENT_NEW_SALE_MANUAL_PERS"}}}}', 0, '0000-00-00 00:00:00', 1, 0, '*');
/*!40000 ALTER TABLE `gy3te_js_res_sections` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_js_res_subscribe
CREATE TABLE IF NOT EXISTS `gy3te_js_res_subscribe` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `ref_id` int(11) NOT NULL DEFAULT '0',
  `ctime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` varchar(20) NOT NULL DEFAULT '0',
  `params` text,
  `section_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_rf` (`ref_id`),
  KEY `idx_us` (`user_id`,`section_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_js_res_subscribe: 4 rows
DELETE FROM `gy3te_js_res_subscribe`;
/*!40000 ALTER TABLE `gy3te_js_res_subscribe` DISABLE KEYS */;
INSERT INTO `gy3te_js_res_subscribe` (`id`, `user_id`, `ref_id`, `ctime`, `type`, `params`, `section_id`) VALUES
	(1, 48, 1, '2017-05-15 13:47:28', 'record', NULL, 4),
	(2, 49, 2, '2017-05-15 14:05:12', 'record', NULL, 1),
	(4, 52, 3, '2018-05-12 10:01:54', 'record', NULL, 5),
	(5, 52, 49, '2018-05-14 08:27:46', 'user', NULL, 1);
/*!40000 ALTER TABLE `gy3te_js_res_subscribe` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_js_res_subscribe_cat
CREATE TABLE IF NOT EXISTS `gy3te_js_res_subscribe_cat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL DEFAULT '0',
  `section_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `exclude` tinyint(1) DEFAULT '0',
  `ctime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_u` (`cat_id`,`section_id`,`user_id`),
  KEY `idx_sec` (`section_id`),
  KEY `idx_cat` (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_js_res_subscribe_cat: ~0 rows (приблизительно)
DELETE FROM `gy3te_js_res_subscribe_cat`;
/*!40000 ALTER TABLE `gy3te_js_res_subscribe_cat` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_js_res_subscribe_cat` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_js_res_subscribe_user
CREATE TABLE IF NOT EXISTS `gy3te_js_res_subscribe_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `u_id` int(11) NOT NULL DEFAULT '0',
  `section_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `exclude` tinyint(1) DEFAULT '0',
  `ctime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_u` (`u_id`,`section_id`,`user_id`),
  KEY `idx_sec` (`section_id`),
  KEY `idx_cat` (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_js_res_subscribe_user: ~0 rows (приблизительно)
DELETE FROM `gy3te_js_res_subscribe_user`;
/*!40000 ALTER TABLE `gy3te_js_res_subscribe_user` DISABLE KEYS */;
INSERT INTO `gy3te_js_res_subscribe_user` (`id`, `u_id`, `section_id`, `user_id`, `exclude`, `ctime`) VALUES
	(1, 49, 1, 52, 1, '2018-05-14 08:27:46');
/*!40000 ALTER TABLE `gy3te_js_res_subscribe_user` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_js_res_tags
CREATE TABLE IF NOT EXISTS `gy3te_js_res_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tag` varchar(50) NOT NULL DEFAULT '',
  `ctime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `slug` varchar(50) NOT NULL DEFAULT '',
  `language` varchar(10) DEFAULT 'en-GB',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_js_res_tags: 0 rows
DELETE FROM `gy3te_js_res_tags`;
/*!40000 ALTER TABLE `gy3te_js_res_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_js_res_tags` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_js_res_tags_history
CREATE TABLE IF NOT EXISTS `gy3te_js_res_tags_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `record_id` int(10) NOT NULL DEFAULT '0',
  `tag_id` int(10) NOT NULL DEFAULT '0',
  `user_id` int(10) NOT NULL DEFAULT '0',
  `ctime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `section_id` int(10) NOT NULL DEFAULT '0',
  `hits` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `record` (`record_id`),
  KEY `tag` (`tag_id`),
  KEY `user` (`user_id`),
  KEY `section` (`section_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_js_res_tags_history: 0 rows
DELETE FROM `gy3te_js_res_tags_history`;
/*!40000 ALTER TABLE `gy3te_js_res_tags_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_js_res_tags_history` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_js_res_types
CREATE TABLE IF NOT EXISTS `gy3te_js_res_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `checked_out` int(10) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL DEFAULT '',
  `form` varchar(45) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `asset_id` int(11) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '*',
  PRIMARY KEY (`id`),
  KEY `published` (`published`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_js_res_types: 5 rows
DELETE FROM `gy3te_js_res_types`;
/*!40000 ALTER TABLE `gy3te_js_res_types` DISABLE KEYS */;
INSERT INTO `gy3te_js_res_types` (`id`, `name`, `params`, `checked_out`, `checked_out_time`, `published`, `description`, `form`, `user_id`, `asset_id`, `language`) VALUES
	(1, 'Собака', '{"properties":{"item_itemid":"","item_compare":"0","item_can_favorite":"2","item_can_moderate":"3","item_edit":"1","item_delete":"1","allow_extend":"0","allow_hide":"0","default_extend":"10","item_expire_access":"3","tmpl_article":"default.e15bdb3f85777343eb13eeac6f8f19a8","tmpl_articleform":"my_form.42726007cf48a88dbff48a95dd765594","tmpl_rating":"crown.0bd0ae28078b0a6e40c991f9af2bb780","tmpl_comment":"default.9d7e28c576bd9a6817d6e559c54b6325","item_can_view_tag":"1","item_can_add_tag":"2","item_can_attach_tag":"2","item_tag_htmltags":"h1, h2, h3, h4, h5, h6, strong, em, b, i, big","item_tag_relevance":"0","item_tag_num":"0","item_tags_max":"25","item_title_unique":"0","item_title":"2","item_title_composite":"[2] ([3]) - [26]","item_title_limit":"0","rate_access":"0","rate_access_author":"0","rate_mode":"1","rate_smart_before":"60","rate_smart_minimum":"5","rate_multirating":"0","rate_multirating_options":"","rate_multirating_tmpl":"default.php","rate_multirating_sort":"2"},"submission":{"submission":"7","can_edit":"-1","access":"1","public_edit":"1","autopublish":"1","edit_autopublish":"1","redirect":"1","redirect_url":"","submit_msg":"JLIB_APPLICATION","save_msg":"JLIB_APPLICATION","default_expire":"0","public_alert":"1","limits_total":"0","limits_day":"0","allow_category":"1","first_category":"0","multi_category":"0","multi_max_num":"3","robots":""},"category_limit":{"allow":"1","category_limit_mode":"0","show_restricted":"0"},"comments":{"comments":""},"audit":{"audit_date_format":"","audit_date_custom":"h:i A, d M Y","versioning":"0","versioning_max":"10","audit_log":"0","itemid":"","al1":{"on":"1","msg":"CAUDLOG1"},"al2":{"on":"1","msg":"CAUDLOG2"},"al26":{"on":"1","msg":"CAUDLOG26"},"al3":{"on":"1","msg":"CAUDLOG3"},"al4":{"on":"1","msg":"CAUDLOG4"},"al5":{"on":"1","msg":"CAUDLOG5"},"al6":{"on":"1","msg":"CAUDLOG6"},"al7":{"on":"1","msg":"CAUDLOG7"},"al8":{"on":"1","msg":"CAUDLOG8"},"al9":{"on":"1","msg":"CAUDLOG9"},"al10":{"on":"1","msg":"CAUDLOG10"},"al25":{"on":"1","msg":"CAUDLOG25"},"al12":{"on":"1","msg":"CAUDLOG12"},"al13":{"on":"1","msg":"CAUDLOG13"},"al14":{"on":"1","msg":"CAUDLOG14"},"al15":{"on":"1","msg":"CAUDLOG15"},"al16":{"on":"1","msg":"CAUDLOG16"},"al17":{"on":"1","msg":"CAUDLOG17"},"al18":{"on":"1","msg":"CAUDLOG18"},"al19":{"on":"1","msg":"CAUDLOG19"},"al20":{"on":"1","msg":"CAUDLOG20"},"al27":{"on":"1","msg":"CAUDLOG27"},"al28":{"on":"1","msg":"CAUDLOG28"},"al29":{"on":"1","msg":"CAUDLOG29"},"al30":{"on":"1","msg":"CAUDLOG30"},"al32":{"on":"1","msg":"CAUDLOG31"}},"emerald":{"subscr_skip":"3","subscr_author_skip":"1","subscr_moderator_skip":"1","type_display_subscription_msg":"You cannot see this article because article author subscritpion has expired.","type_display_subscription_count":"0","type_view_subscription_msg":"You cannot see this article because your subscritpion has expired.","type_view_subscription_count":"0","type_submit_subscription_msg":"To submit you need to be subscribed user and have following subscriptions","type_ulimit_subscription_count":"0","type_ulimit_count":"10","type_edit_subscription_msg":"To edit you need to be subscribed user and have folowing subscriptions","type_comment_subscription_msg":"To comment you need to be subscribed user and have folowing subscriptions","type_multicat_subscription_msg":"To submit this item to multiple categories you have to be subscribed member.","type_feature_subscription_msg":"To make record featured you need to be subscribed user and have folowing subscriptions","type_feature_subscription_time":"30","type_feature_unfeature":"2","type_extend_subscription_msg":"To prolong you need to be subscribed user and have folowing subscriptions","type_extend_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, '', 'form-19eab8ba3a68a8cf039e2c92567a614214948393', 48, 68, '*'),
	(2, 'Альбом', '{"properties":{"item_itemid":"","item_compare":"0","item_can_favorite":"2","item_can_moderate":"3","item_edit":"1","item_delete":"1","allow_extend":"0","allow_hide":"0","default_extend":"10","item_expire_access":"3","tmpl_article":"default.8a91a69056bc58e063ee29f72ab29604","tmpl_articleform":"my_form.0e7d77dd00b6fea142e8154b39a6598d","tmpl_rating":"crown.bf8d8127291264d6c99edaf43504b657","tmpl_comment":"default.e85748bdd491ca6a5816fa5dd117b1ff","item_can_view_tag":"1","item_can_add_tag":"2","item_can_attach_tag":"2","item_tag_htmltags":"h1, h2, h3, h4, h5, h6, strong, em, b, i, big","item_tag_relevance":"0","item_tag_num":"0","item_tags_max":"25","item_title_unique":"0","item_title":"1","item_title_composite":"","item_title_limit":"0","rate_access":"1","rate_access_author":"0","rate_mode":"1","rate_smart_before":"60","rate_smart_minimum":"5","rate_multirating":"0","rate_multirating_options":"","rate_multirating_tmpl":"default.php","rate_multirating_sort":"2"},"submission":{"submission":"2","can_edit":"-1","access":"1","public_edit":"1","autopublish":"1","edit_autopublish":"1","redirect":"1","redirect_url":"","submit_msg":"JLIB_APPLICATION","save_msg":"JLIB_APPLICATION","default_expire":"0","public_alert":"1","limits_total":"0","limits_day":"0","allow_category":"1","first_category":"0","multi_category":"0","multi_max_num":"3","robots":""},"category_limit":{"allow":"1","category_limit_mode":"0","show_restricted":"0"},"comments":{"comments":""},"audit":{"audit_date_format":"","audit_date_custom":"h:i A, d M Y","versioning":"0","versioning_max":"10","audit_log":"0","itemid":"","al1":{"on":"1","msg":"CAUDLOG1"},"al2":{"on":"1","msg":"CAUDLOG2"},"al26":{"on":"1","msg":"CAUDLOG26"},"al3":{"on":"1","msg":"CAUDLOG3"},"al4":{"on":"1","msg":"CAUDLOG4"},"al5":{"on":"1","msg":"CAUDLOG5"},"al6":{"on":"1","msg":"CAUDLOG6"},"al7":{"on":"1","msg":"CAUDLOG7"},"al8":{"on":"1","msg":"CAUDLOG8"},"al9":{"on":"1","msg":"CAUDLOG9"},"al10":{"on":"1","msg":"CAUDLOG10"},"al25":{"on":"1","msg":"CAUDLOG25"},"al12":{"on":"1","msg":"CAUDLOG12"},"al13":{"on":"1","msg":"CAUDLOG13"},"al14":{"on":"1","msg":"CAUDLOG14"},"al15":{"on":"1","msg":"CAUDLOG15"},"al16":{"on":"1","msg":"CAUDLOG16"},"al17":{"on":"1","msg":"CAUDLOG17"},"al18":{"on":"1","msg":"CAUDLOG18"},"al19":{"on":"1","msg":"CAUDLOG19"},"al20":{"on":"1","msg":"CAUDLOG20"},"al27":{"on":"1","msg":"CAUDLOG27"},"al28":{"on":"1","msg":"CAUDLOG28"},"al29":{"on":"1","msg":"CAUDLOG29"},"al30":{"on":"1","msg":"CAUDLOG30"},"al32":{"on":"1","msg":"CAUDLOG31"}},"emerald":{"subscr_skip":"3","subscr_author_skip":"1","subscr_moderator_skip":"1","type_display_subscription_msg":"You cannot see this article because article author subscritpion has expired.","type_display_subscription_count":"0","type_view_subscription_msg":"You cannot see this article because your subscritpion has expired.","type_view_subscription_count":"0","type_submit_subscription_msg":"To submit you need to be subscribed user and have following subscriptions","type_ulimit_subscription_count":"0","type_ulimit_count":"10","type_edit_subscription_msg":"To edit you need to be subscribed user and have folowing subscriptions","type_comment_subscription_msg":"To comment you need to be subscribed user and have folowing subscriptions","type_multicat_subscription_msg":"To submit this item to multiple categories you have to be subscribed member.","type_feature_subscription_msg":"To make record featured you need to be subscribed user and have folowing subscriptions","type_feature_subscription_time":"30","type_feature_unfeature":"2","type_extend_subscription_msg":"To prolong you need to be subscribed user and have folowing subscriptions","type_extend_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, '', 'form-b9407ae097882e620f6c9bd7e50c62be14948393', 48, 69, '*'),
	(3, 'Видеоролик', '{"properties":{"item_itemid":"","item_compare":"4","item_can_favorite":"2","item_can_moderate":"3","item_edit":"1","item_delete":"1","allow_extend":"0","allow_hide":"0","default_extend":"10","item_expire_access":"3","tmpl_article":"default.73398224c4cf9b5a5b4484621727c65d","tmpl_articleform":"my_form.6057173fdb6c8e3e9ff19eb331c7b642","tmpl_rating":"crown.e94aef82734ebc3197f7b5be3ba5de27","tmpl_comment":"default.2c9d42ac48ba54f745156b24e1c7b9ed","item_can_view_tag":"1","item_can_add_tag":"2","item_can_attach_tag":"2","item_tag_htmltags":"h1, h2, h3, h4, h5, h6, strong, em, b, i, big","item_tag_relevance":"0","item_tag_num":"0","item_tags_max":"25","item_title_unique":"0","item_title":"1","item_title_composite":"","item_title_limit":"0","rate_access":"1","rate_access_author":"0","rate_mode":"1","rate_smart_before":"60","rate_smart_minimum":"5","rate_multirating":"0","rate_multirating_options":"","rate_multirating_tmpl":"default.php","rate_multirating_sort":"2"},"submission":{"submission":"2","can_edit":"-1","access":"1","public_edit":"1","autopublish":"1","edit_autopublish":"1","redirect":"1","redirect_url":"","submit_msg":"JLIB_APPLICATION","save_msg":"JLIB_APPLICATION","default_expire":"0","public_alert":"1","limits_total":"0","limits_day":"0","allow_category":"1","first_category":"0","multi_category":"0","multi_max_num":"3","robots":""},"category_limit":{"allow":"1","category_limit_mode":"0","show_restricted":"0"},"comments":{"comments":""},"audit":{"audit_date_format":"","audit_date_custom":"h:i A, d M Y","versioning":"0","versioning_max":"10","audit_log":"0","itemid":"","al1":{"on":"1","msg":"CAUDLOG1"},"al2":{"on":"1","msg":"CAUDLOG2"},"al26":{"on":"1","msg":"CAUDLOG26"},"al3":{"on":"1","msg":"CAUDLOG3"},"al4":{"on":"1","msg":"CAUDLOG4"},"al5":{"on":"1","msg":"CAUDLOG5"},"al6":{"on":"1","msg":"CAUDLOG6"},"al7":{"on":"1","msg":"CAUDLOG7"},"al8":{"on":"1","msg":"CAUDLOG8"},"al9":{"on":"1","msg":"CAUDLOG9"},"al10":{"on":"1","msg":"CAUDLOG10"},"al25":{"on":"1","msg":"CAUDLOG25"},"al12":{"on":"1","msg":"CAUDLOG12"},"al13":{"on":"1","msg":"CAUDLOG13"},"al14":{"on":"1","msg":"CAUDLOG14"},"al15":{"on":"1","msg":"CAUDLOG15"},"al16":{"on":"1","msg":"CAUDLOG16"},"al17":{"on":"1","msg":"CAUDLOG17"},"al18":{"on":"1","msg":"CAUDLOG18"},"al19":{"on":"1","msg":"CAUDLOG19"},"al20":{"on":"1","msg":"CAUDLOG20"},"al27":{"on":"1","msg":"CAUDLOG27"},"al28":{"on":"1","msg":"CAUDLOG28"},"al29":{"on":"1","msg":"CAUDLOG29"},"al30":{"on":"1","msg":"CAUDLOG30"},"al32":{"on":"1","msg":"CAUDLOG31"}},"emerald":{"subscr_skip":"3","subscr_author_skip":"1","subscr_moderator_skip":"1","type_display_subscription_msg":"You cannot see this article because article author subscritpion has expired.","type_display_subscription_count":"0","type_view_subscription_msg":"You cannot see this article because your subscritpion has expired.","type_view_subscription_count":"0","type_submit_subscription_msg":"To submit you need to be subscribed user and have following subscriptions","type_ulimit_subscription_count":"0","type_ulimit_count":"10","type_edit_subscription_msg":"To edit you need to be subscribed user and have folowing subscriptions","type_comment_subscription_msg":"To comment you need to be subscribed user and have folowing subscriptions","type_multicat_subscription_msg":"To submit this item to multiple categories you have to be subscribed member.","type_feature_subscription_msg":"To make record featured you need to be subscribed user and have folowing subscriptions","type_feature_subscription_time":"30","type_feature_unfeature":"2","type_extend_subscription_msg":"To prolong you need to be subscribed user and have folowing subscriptions","type_extend_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, '', 'form-2904010431bfe713c61c14d9bb7446aa14948394', 48, 70, '*'),
	(4, 'Порода', '{"properties":{"item_itemid":"","item_compare":"0","item_can_favorite":"2","item_can_moderate":"3","item_edit":"1","item_delete":"1","allow_extend":"0","allow_hide":"0","default_extend":"10","item_expire_access":"3","tmpl_article":"default.b5d0160352eb93f871149e00b260a5ad","tmpl_articleform":"my_form.9a57a0920dac420c83b47065813662d7","tmpl_rating":"jed.a12d6093e0abeefaa9e371912ca23f0d","tmpl_comment":"default.7b1577ccb61a6a661196b1fef585ab11","item_can_view_tag":"1","item_can_add_tag":"0","item_can_attach_tag":"2","item_tag_htmltags":"h1, h2, h3, h4, h5, h6, strong, em, b, i, big","item_tag_relevance":"0","item_tag_num":"0","item_tags_max":"25","item_title_unique":"0","item_title":"1","item_title_composite":"","item_title_limit":"0","rate_access":"0","rate_access_author":"0","rate_mode":"1","rate_smart_before":"60","rate_smart_minimum":"5","rate_multirating":"0","rate_multirating_options":"","rate_multirating_tmpl":"default.php","rate_multirating_sort":"2"},"submission":{"submission":"3","can_edit":"-1","access":"1","public_edit":"1","autopublish":"1","edit_autopublish":"1","redirect":"1","redirect_url":"","submit_msg":"JLIB_APPLICATION","save_msg":"JLIB_APPLICATION","default_expire":"0","public_alert":"1","limits_total":"0","limits_day":"0","allow_category":"1","first_category":"1","multi_category":"0","multi_max_num":"3","robots":""},"category_limit":{"allow":"1","category_limit_mode":"0","show_restricted":"0"},"comments":{"comments":""},"audit":{"audit_date_format":"","audit_date_custom":"h:i A, d M Y","versioning":"0","versioning_max":"10","audit_log":"0","itemid":"","al1":{"on":"1","msg":"CAUDLOG1"},"al2":{"on":"1","msg":"CAUDLOG2"},"al26":{"on":"1","msg":"CAUDLOG26"},"al3":{"on":"1","msg":"CAUDLOG3"},"al4":{"on":"1","msg":"CAUDLOG4"},"al5":{"on":"1","msg":"CAUDLOG5"},"al6":{"on":"1","msg":"CAUDLOG6"},"al7":{"on":"1","msg":"CAUDLOG7"},"al8":{"on":"1","msg":"CAUDLOG8"},"al9":{"on":"1","msg":"CAUDLOG9"},"al10":{"on":"1","msg":"CAUDLOG10"},"al25":{"on":"1","msg":"CAUDLOG25"},"al12":{"on":"1","msg":"CAUDLOG12"},"al13":{"on":"1","msg":"CAUDLOG13"},"al14":{"on":"1","msg":"CAUDLOG14"},"al15":{"on":"1","msg":"CAUDLOG15"},"al16":{"on":"1","msg":"CAUDLOG16"},"al17":{"on":"1","msg":"CAUDLOG17"},"al18":{"on":"1","msg":"CAUDLOG18"},"al19":{"on":"1","msg":"CAUDLOG19"},"al20":{"on":"1","msg":"CAUDLOG20"},"al27":{"on":"1","msg":"CAUDLOG27"},"al28":{"on":"1","msg":"CAUDLOG28"},"al29":{"on":"1","msg":"CAUDLOG29"},"al30":{"on":"1","msg":"CAUDLOG30"},"al32":{"on":"1","msg":"CAUDLOG31"}},"emerald":{"subscr_skip":"3","subscr_author_skip":"1","subscr_moderator_skip":"1","type_display_subscription_msg":"You cannot see this article because article author subscritpion has expired.","type_display_subscription_count":"0","type_view_subscription_msg":"You cannot see this article because your subscritpion has expired.","type_view_subscription_count":"0","type_submit_subscription_msg":"To submit you need to be subscribed user and have following subscriptions","type_ulimit_subscription_count":"0","type_ulimit_count":"10","type_edit_subscription_msg":"To edit you need to be subscribed user and have folowing subscriptions","type_comment_subscription_msg":"To comment you need to be subscribed user and have folowing subscriptions","type_multicat_subscription_msg":"To submit this item to multiple categories you have to be subscribed member.","type_feature_subscription_msg":"To make record featured you need to be subscribed user and have folowing subscriptions","type_feature_subscription_time":"30","type_feature_unfeature":"2","type_extend_subscription_msg":"To prolong you need to be subscribed user and have folowing subscriptions","type_extend_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, '', 'form-0efa8d8891630e92be964408f3b0abfa14948394', 48, 71, '*'),
	(5, 'Питомник', '{"properties":{"item_itemid":"","item_compare":"4","item_can_favorite":"2","item_can_moderate":"3","item_edit":"1","item_delete":"1","allow_extend":"0","allow_hide":"0","default_extend":"10","item_expire_access":"3","tmpl_article":"default.9f1150bcc4564093ae1ad4b44434521e","tmpl_articleform":"my_form.7b88da031118c7451b81499c5adb2847","tmpl_rating":"crown.c9878daccc4c6bd4901afa07ef460b5f","tmpl_comment":"default.ddb39441b37e8415da517f23c6ca53bb","item_can_view_tag":"1","item_can_add_tag":"2","item_can_attach_tag":"2","item_tag_htmltags":"h1, h2, h3, h4, h5, h6, strong, em, b, i, big","item_tag_relevance":"0","item_tag_num":"0","item_tags_max":"25","item_title_unique":"0","item_title":"1","item_title_composite":"","item_title_limit":"0","rate_access":"1","rate_access_author":"0","rate_mode":"1","rate_smart_before":"60","rate_smart_minimum":"5","rate_multirating":"0","rate_multirating_options":"","rate_multirating_tmpl":"default.php","rate_multirating_sort":"2"},"submission":{"submission":"8","can_edit":"-1","access":"1","public_edit":"1","autopublish":"1","edit_autopublish":"1","redirect":"1","redirect_url":"","submit_msg":"JLIB_APPLICATION","save_msg":"JLIB_APPLICATION","default_expire":"0","public_alert":"1","limits_total":"0","limits_day":"0","allow_category":"1","first_category":"0","multi_category":"0","multi_max_num":"3","robots":""},"category_limit":{"allow":"1","category_limit_mode":"0","show_restricted":"0"},"comments":{"comments":""},"audit":{"audit_date_format":"","audit_date_custom":"h:i A, d M Y","versioning":"0","versioning_max":"10","audit_log":"0","itemid":"","al1":{"on":"1","msg":"CAUDLOG1"},"al2":{"on":"1","msg":"CAUDLOG2"},"al26":{"on":"1","msg":"CAUDLOG26"},"al3":{"on":"1","msg":"CAUDLOG3"},"al4":{"on":"1","msg":"CAUDLOG4"},"al5":{"on":"1","msg":"CAUDLOG5"},"al6":{"on":"1","msg":"CAUDLOG6"},"al7":{"on":"1","msg":"CAUDLOG7"},"al8":{"on":"1","msg":"CAUDLOG8"},"al9":{"on":"1","msg":"CAUDLOG9"},"al10":{"on":"1","msg":"CAUDLOG10"},"al25":{"on":"1","msg":"CAUDLOG25"},"al12":{"on":"1","msg":"CAUDLOG12"},"al13":{"on":"1","msg":"CAUDLOG13"},"al14":{"on":"1","msg":"CAUDLOG14"},"al15":{"on":"1","msg":"CAUDLOG15"},"al16":{"on":"1","msg":"CAUDLOG16"},"al17":{"on":"1","msg":"CAUDLOG17"},"al18":{"on":"1","msg":"CAUDLOG18"},"al19":{"on":"1","msg":"CAUDLOG19"},"al20":{"on":"1","msg":"CAUDLOG20"},"al27":{"on":"1","msg":"CAUDLOG27"},"al28":{"on":"1","msg":"CAUDLOG28"},"al29":{"on":"1","msg":"CAUDLOG29"},"al30":{"on":"1","msg":"CAUDLOG30"},"al32":{"on":"1","msg":"CAUDLOG31"}},"emerald":{"subscr_skip":"3","subscr_author_skip":"1","subscr_moderator_skip":"1","type_display_subscription_msg":"You cannot see this article because article author subscritpion has expired.","type_display_subscription_count":"0","type_view_subscription_msg":"You cannot see this article because your subscritpion has expired.","type_view_subscription_count":"0","type_submit_subscription_msg":"To submit you need to be subscribed user and have following subscriptions","type_ulimit_subscription_count":"0","type_ulimit_count":"10","type_edit_subscription_msg":"To edit you need to be subscribed user and have folowing subscriptions","type_comment_subscription_msg":"To comment you need to be subscribed user and have folowing subscriptions","type_multicat_subscription_msg":"To submit this item to multiple categories you have to be subscribed member.","type_feature_subscription_msg":"To make record featured you need to be subscribed user and have folowing subscriptions","type_feature_subscription_time":"30","type_feature_unfeature":"2","type_extend_subscription_msg":"To prolong you need to be subscribed user and have folowing subscriptions","type_extend_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, '', 'form-a4d564f6ecf4c38bf3586405f756a48615261173', 48, 126, '*');
/*!40000 ALTER TABLE `gy3te_js_res_types` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_js_res_user_options
CREATE TABLE IF NOT EXISTS `gy3te_js_res_user_options` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `lastsend` datetime DEFAULT '0000-00-00 00:00:00',
  `schedule` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_sch` (`schedule`),
  KEY `idx_sent` (`lastsend`),
  KEY `idx_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_js_res_user_options: ~0 rows (приблизительно)
DELETE FROM `gy3te_js_res_user_options`;
/*!40000 ALTER TABLE `gy3te_js_res_user_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_js_res_user_options` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_js_res_user_options_autofollow
CREATE TABLE IF NOT EXISTS `gy3te_js_res_user_options_autofollow` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0',
  `section_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_sec` (`section_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_js_res_user_options_autofollow: ~0 rows (приблизительно)
DELETE FROM `gy3te_js_res_user_options_autofollow`;
/*!40000 ALTER TABLE `gy3te_js_res_user_options_autofollow` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_js_res_user_options_autofollow` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_js_res_user_post_map
CREATE TABLE IF NOT EXISTS `gy3te_js_res_user_post_map` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `section_id` int(11) NOT NULL DEFAULT '0',
  `whopost` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_us` (`user_id`,`section_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_js_res_user_post_map: ~0 rows (приблизительно)
DELETE FROM `gy3te_js_res_user_post_map`;
/*!40000 ALTER TABLE `gy3te_js_res_user_post_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_js_res_user_post_map` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_js_res_vote
CREATE TABLE IF NOT EXISTS `gy3te_js_res_vote` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL DEFAULT '0',
  `ref_id` int(10) NOT NULL DEFAULT '0',
  `vote` int(10) NOT NULL DEFAULT '0',
  `ctime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip` varchar(16) NOT NULL DEFAULT '',
  `ref_type` varchar(25) NOT NULL DEFAULT '',
  `section_id` int(11) DEFAULT '0',
  `idx` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `record` (`ref_id`),
  KEY `user` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_js_res_vote: 0 rows
DELETE FROM `gy3te_js_res_vote`;
/*!40000 ALTER TABLE `gy3te_js_res_vote` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_js_res_vote` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_languages
CREATE TABLE IF NOT EXISTS `gy3te_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogsinfo.gy3te_languages: ~2 rows (приблизительно)
DELETE FROM `gy3te_languages`;
/*!40000 ALTER TABLE `gy3te_languages` DISABLE KEYS */;
INSERT INTO `gy3te_languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
	(1, 0, 'en-GB', 'English (en-GB)', 'English (United Kingdom)', 'en', 'en_gb', '', '', '', '', 1, 1, 2),
	(2, 55, 'ru-RU', 'Русский (Россия)', 'Russian (Russia)', 'ru', 'ru_ru', '', '', '', '', 0, 1, 1);
/*!40000 ALTER TABLE `gy3te_languages` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_menu
CREATE TABLE IF NOT EXISTS `gy3te_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_path` (`path`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogsinfo.gy3te_menu: ~59 rows (приблизительно)
DELETE FROM `gy3te_menu`;
/*!40000 ALTER TABLE `gy3te_menu` DISABLE KEYS */;
INSERT INTO `gy3te_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
	(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 117, 0, '*', 0),
	(2, 'main', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 1, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
	(3, 'main', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
	(4, 'main', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 1, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
	(5, 'main', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
	(6, 'main', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
	(7, 'main', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 33, 38, 0, '*', 1),
	(8, 'main', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 1, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 34, 35, 0, '*', 1),
	(9, 'main', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 1, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 36, 37, 0, '*', 1),
	(10, 'main', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 1, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 39, 42, 0, '*', 1),
	(11, 'main', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 1, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 40, 41, 0, '*', 1),
	(13, 'main', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 43, 48, 0, '*', 1),
	(14, 'main', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 44, 45, 0, '*', 1),
	(15, 'main', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 1, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 46, 47, 0, '*', 1),
	(16, 'main', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 1, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 49, 50, 0, '*', 1),
	(17, 'main', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 1, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 51, 52, 0, '*', 1),
	(18, 'main', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 1, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 53, 54, 0, '*', 1),
	(19, 'main', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 55, 56, 0, '*', 1),
	(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 1, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 57, 58, 0, '', 1),
	(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 1, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 59, 60, 0, '*', 1),
	(22, 'main', 'com_associations', 'Multilingual Associations', '', 'Multilingual Associations', 'index.php?option=com_associations', 'component', 1, 1, 1, 34, 0, '0000-00-00 00:00:00', 0, 0, 'class:associations', 0, '', 61, 62, 0, '*', 1),
	(101, 'mainmenu', 'Главная', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 0, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_pagination_results":"1","show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"1","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 23, 24, 0, '*', 0),
	(102, 'main', 'com_cobalt', 'com-cobalt', '', 'com-cobalt', 'index.php?option=com_cobalt', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_cobalt/images/menu/cobalt.png', 0, '{}', 63, 72, 0, '', 1),
	(103, 'main', 'Records', 'records', '', 'com-cobalt/records', 'index.php?option=com_cobalt&view=records', 'component', 1, 102, 2, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'class:article', 0, '{}', 64, 65, 0, '', 1),
	(104, 'main', 'Sections', 'sections', '', 'com-cobalt/sections', 'index.php?option=com_cobalt&view=sections', 'component', 1, 102, 2, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'class:category', 0, '{}', 66, 67, 0, '', 1),
	(105, 'main', 'Types', 'types', '', 'com-cobalt/types', 'index.php?option=com_cobalt&view=types', 'component', 1, 102, 2, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_cobalt/images/menu/types.png', 0, '{}', 68, 69, 0, '', 1),
	(106, 'main', 'Configuration', 'configuration', '', 'com-cobalt/configuration', 'index.php?option=com_config&view=component&component=com_cobalt', 'component', 1, 102, 2, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'class:config', 0, '{}', 70, 71, 0, '', 1),
	(107, 'dogsmenu', 'Мои собаки', 'my-dogs', '', 'my-dogs', 'index.php?option=com_cobalt&view=records&layout=user&section_id=1&view_what=created', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 13, 14, 0, '*', 0),
	(108, 'dogsmenu', 'Альбомы моих собак', 'alboms-my-dogs', '', 'alboms-my-dogs', 'index.php?option=com_cobalt&view=records&layout=user&section_id=2&view_what=created', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 15, 16, 0, '*', 0),
	(109, 'dogsmenu', 'Видеоролики моих собак', 'videos-my-dogs', '', 'videos-my-dogs', 'index.php?option=com_cobalt&view=records&layout=user&section_id=3&view_what=created', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 17, 18, 0, '*', 0),
	(110, 'mainmenu', 'Породы собак', 'dogs-breeds', '', 'dogs-breeds', 'index.php?option=com_cobalt&view=records&section_id=4:breeds-dogs', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu_archive":"0","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 25, 26, 0, '*', 0),
	(111, 'dogsmenu', 'Породы собак', 'breeds-dogs', '', 'breeds-dogs', 'index.php?option=com_cobalt&view=records&layout=user&section_id=4&view_what=created', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 3, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 19, 20, 0, '*', 0),
	(112, 'mainmenu', 'Каталог собак', 'catalog-dogs', '', 'catalog-dogs', 'index.php?option=com_cobalt&view=records&section_id=1:catalog-dogs', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu_archive":"0","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 27, 28, 0, '*', 0),
	(114, 'main', 'COM_AKEEBA', 'com_akeeba', '', 'com_akeeba', 'index.php?option=com_akeeba', 'component', 1, 1, 1, 10081, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_akeeba/icons/akeeba-16.png', 0, '{}', 73, 74, 0, '', 1),
	(115, 'main', 'COM_COMMUNITY', 'com_community', '', 'com_community', 'index.php?option=com_community', 'component', 1, 1, 1, 10090, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_community/assets/icons/community-favicon.png', 0, '{}', 75, 76, 0, '', 1),
	(116, 'mainmenu', 'Главная', 'jomsocial', '', 'jomsocial', 'index.php?option=com_community&view=frontpage', 'component', 1, 1, 1, 10090, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 21, 22, 1, '*', 0),
	(117, 'jomsocial', 'Профиль', 'profile', '', 'profile', 'index.php?option=com_community&view=profile', 'component', 1, 1, 1, 10090, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 77, 94, 0, '*', 0),
	(118, 'jomsocial', 'Выбрать изображение профиля', 'change-profile-picture', '', 'profile/change-profile-picture', 'index.php?option=com_community&view=profile&task=uploadAvatar', 'component', 1, 117, 2, 10090, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 78, 79, 0, '*', 0),
	(119, 'jomsocial', 'Выбрать видео профиля', 'change-profile-video', '', 'profile/change-profile-video', 'index.php?option=com_community&view=profile&task=linkVideo', 'component', 1, 117, 2, 10090, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 80, 81, 0, '*', 0),
	(120, 'jomsocial', 'Редактировать профиль', 'edit-profile', '', 'profile/edit-profile', 'index.php?option=com_community&view=profile&task=edit', 'component', 1, 117, 2, 10090, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 82, 83, 0, '*', 0),
	(121, 'jomsocial', 'Редактировать дополнительную информацию', 'edit-details', '', 'profile/edit-details', 'index.php?option=com_community&view=profile&task=editDetails', 'component', 1, 117, 2, 10090, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 84, 85, 0, '*', 0),
	(122, 'jomsocial', 'Настройки приватности', 'privacy', '', 'profile/privacy', 'index.php?option=com_community&view=profile&task=privacy', 'component', 1, 117, 2, 10090, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 86, 87, 0, '*', 0),
	(123, 'jomsocial', 'Настройки', 'preferences', '', 'profile/preferences', 'index.php?option=com_community&view=profile&task=preferences', 'component', 1, 117, 2, 10090, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 88, 89, 0, '*', 0),
	(124, 'jomsocial', 'Настройка моей страницы', 'customize-my-page', '', 'profile/customize-my-page', 'index.php?option=com_community&view=profile&task=editPage', 'component', 1, 117, 2, 10090, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 90, 91, 0, '*', 0),
	(125, 'jomsocial', 'Уведомления', 'notifications', '', 'profile/notifications', 'index.php?option=com_community&view=profile&task=notifications', 'component', 1, 117, 2, 10090, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 92, 93, 0, '*', 0),
	(126, 'jomsocial', 'Пользователи', 'members', '', 'members', 'index.php?option=com_community&view=search&task=browse', 'component', 1, 1, 1, 10090, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 95, 100, 0, '*', 0),
	(127, 'jomsocial', 'Все пользователи', 'all-members', '', 'members/all-members', 'index.php?option=com_community&view=search&task=browse', 'component', 1, 126, 2, 10090, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 96, 97, 0, '*', 0),
	(128, 'jomsocial', 'Расширенный поиск', 'advanced-search', '', 'members/advanced-search', 'index.php?option=com_community&view=search&task=advancesearch', 'component', 1, 126, 2, 10090, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 98, 99, 0, '*', 0),
	(129, 'jomsocial', 'Друзья', 'friends', '', 'friends', 'index.php?option=com_community&view=friends', 'component', 1, 1, 1, 10090, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 101, 108, 0, '*', 0),
	(130, 'jomsocial', 'Все друзья', 'all-friends', '', 'friends/all-friends', 'index.php?option=com_community&view=friends', 'component', 1, 129, 2, 10090, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 102, 103, 0, '*', 0),
	(131, 'jomsocial', 'Отправить запрос на дружбу', 'request-sent', '', 'friends/request-sent', 'index.php?option=com_community&view=friends&task=sent', 'component', 1, 129, 2, 10090, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 104, 105, 0, '*', 0),
	(132, 'jomsocial', 'Запросы на дружбу', 'pending-my-approval', '', 'friends/pending-my-approval', 'index.php?option=com_community&view=friends&task=pending', 'component', 1, 129, 2, 10090, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 106, 107, 0, '*', 0),
	(133, 'jomsocial', 'Группы', 'groups', '', 'groups', 'index.php?option=com_community&view=groups', 'component', 1, 1, 1, 10090, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 109, 110, 0, '*', 0),
	(134, 'jomsocial', 'Фото', 'photos', '', 'photos', 'index.php?option=com_community&view=photos', 'component', 1, 1, 1, 10090, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 111, 112, 0, '*', 0),
	(135, 'jomsocial', 'Видео', 'videos', '', 'videos', 'index.php?option=com_community&view=videos', 'component', 1, 1, 1, 10090, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 113, 114, 0, '*', 0),
	(136, 'jomsocial', 'Мероприятия', 'events', '', 'events', 'index.php?option=com_community&view=events', 'component', 1, 1, 1, 10090, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 115, 116, 0, '*', 0),
	(137, 'mainmenu', 'Питомники', 'питомники', '', 'питомники', 'index.php?option=com_cobalt&view=records&section_id=5:питомники', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu_archive":"0","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 29, 30, 0, '*', 0),
	(138, 'mainmenu', 'Регистрация', 'регистрация', '', 'регистрация', 'index.php?option=com_community&view=register&task=register', 'component', 0, 1, 1, 10090, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 31, 32, 0, '*', 0),
	(139, 'dogsmenu', 'Добавить Собаку', 'добавить-собаку', '', 'добавить-собаку', 'index.php?option=com_cobalt&view=form&type_id=1&section_id=1', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 11, 12, 0, '*', 0);
/*!40000 ALTER TABLE `gy3te_menu` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_menu_types
CREATE TABLE IF NOT EXISTS `gy3te_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogsinfo.gy3te_menu_types: ~3 rows (приблизительно)
DELETE FROM `gy3te_menu_types`;
/*!40000 ALTER TABLE `gy3te_menu_types` DISABLE KEYS */;
INSERT INTO `gy3te_menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`, `client_id`) VALUES
	(1, 54, 'mainmenu', 'Главное меню', 'The main menu for the site', 0),
	(2, 76, 'dogsmenu', 'Меню питомцев', 'Меню собак', 0),
	(3, 0, 'jomsocial', 'JomSocial toolbar', 'Toolbar items for JomSocial toolbar', 0);
/*!40000 ALTER TABLE `gy3te_menu_types` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_messages
CREATE TABLE IF NOT EXISTS `gy3te_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogsinfo.gy3te_messages: ~0 rows (приблизительно)
DELETE FROM `gy3te_messages`;
/*!40000 ALTER TABLE `gy3te_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_messages` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_messages_cfg
CREATE TABLE IF NOT EXISTS `gy3te_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogsinfo.gy3te_messages_cfg: ~0 rows (приблизительно)
DELETE FROM `gy3te_messages_cfg`;
/*!40000 ALTER TABLE `gy3te_messages_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_messages_cfg` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_modules
CREATE TABLE IF NOT EXISTS `gy3te_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogsinfo.gy3te_modules: ~43 rows (приблизительно)
DELETE FROM `gy3te_modules`;
/*!40000 ALTER TABLE `gy3te_modules` DISABLE KEYS */;
INSERT INTO `gy3te_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
	(1, 39, 'Главное меню', '', '', 3, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
	(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
	(3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
	(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
	(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
	(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
	(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
	(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
	(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
	(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
	(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
	(16, 50, 'Вход на сайт', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 5, 1, '{"pretext":"","posttext":"","login":"117","logout":"101","greeting":"1","name":"0","profilelink":"0","usesecure":"0","usetext":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
	(17, 51, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"","showComponent":"1","separator":"","cache":"0","cache_time":"0","cachemode":"itemid"}', 0, '*'),
	(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
	(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
	(87, 57, 'Cobalt - Module - Categories', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_cobalt_category', 1, 1, '', 0, '*'),
	(88, 58, 'Cobalt - Module - Filters', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_cobalt_filters', 1, 1, '', 0, '*'),
	(89, 59, 'Cobalt - Module - Who Follows User', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_cobalt_followers', 1, 1, '', 0, '*'),
	(90, 60, 'Cobalt - Module - Whom User Follows', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_cobalt_ifollow', 1, 1, '', 0, '*'),
	(91, 61, 'Cobalt - Module - Notifications', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_cobalt_notifications', 1, 1, '', 0, '*'),
	(92, 62, 'Cobalt - Module - Article Participants', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_cobalt_participants', 1, 1, '', 0, '*'),
	(93, 63, 'Cobalt - Module - Records', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_cobalt_records', 1, 1, '', 0, '*'),
	(94, 64, 'Cobalt - Module - Section Statictics', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_cobalt_sectionstatistics', 1, 1, '', 0, '*'),
	(95, 65, 'Cobalt - Module - Submit Button', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_cobalt_submitbutton', 1, 1, '', 0, '*'),
	(96, 66, 'Cobalt - Module - Tag Cloud', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_cobalt_tagcloud', 1, 1, '', 0, '*'),
	(97, 67, 'Cobalt - Module - User Statictics', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_cobalt_userstatistics', 1, 1, '', 0, '*'),
	(98, 77, 'Меню питомцев', '', '', 4, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 7, 1, '{"menutype":"dogsmenu","base":"107","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
	(99, 110, 'JS Activity Stream', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_community_activitystream', 1, 1, '', 0, '*'),
	(100, 111, 'JS Discussions', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_community_discussions', 1, 1, '', 0, '*'),
	(101, 112, 'Мероприятия', '', '', 1, 'js_side_frontpage_bottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_community_events', 1, 1, '{"displaysetting":"0","filter_by":"0","jseventcategory":"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438","limit":"5","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
	(102, 113, 'JS Events Calendar', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_community_eventscalendar', 1, 1, '', 0, '*'),
	(103, 114, 'Группы', '', '', 1, 'js_side_frontpage_bottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_community_groups', 1, 1, '{"displaysetting":"0","filter_by":"0","jsgroupcategory":"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438","limit":"5","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
	(104, 115, 'Вход на сайт JS', '', '', 2, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_community_hellome', 2, 0, '{"show_avatar":"1","show_name":"1","show_badge":"0","show_notifications":"1","show_menu":"1","show_logout":"1","show_facebook":"1","show_forgotpwd":"1","show_forgotusr":"1","show_activation":"1","remember_me":"1","logout":"","login":"","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
	(105, 116, 'Пользователи сайта', '', '', 1, 'js_side_frontpage_top', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_community_members', 1, 1, '{"profile_filter":"0","avatars_number":"4","jsprofiletypes":"0","sorting":"0","respect_online":"1","show_total_members":"1","limit":"12","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
	(106, 117, 'JS Members Search', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_community_memberssearch', 1, 1, '', 0, '*'),
	(107, 118, 'JS Nearby Events Search', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_community_nearbyevents', 1, 1, '', 0, '*'),
	(108, 119, 'JS Notifications', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_community_notifications', 1, 1, '', 0, '*'),
	(109, 120, 'JS Photo Comments', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_community_photocomments', 1, 1, '', 0, '*'),
	(110, 121, 'Фото', '', '', 1, 'js_side_frontpage', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_community_photos', 1, 1, '{"display_type":"1","category_type":"0","filter_by":"0","limit":"20","layout":"_:albums","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
	(111, 122, 'JS Statistics', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_community_statistics', 1, 1, '', 0, '*'),
	(112, 123, 'JS Top Members', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_community_topmembers', 1, 1, '', 0, '*'),
	(113, 124, 'JS Video Comments', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_community_videocomments', 1, 1, '', 0, '*'),
	(114, 125, 'Видео', '', '', 1, 'js_side_frontpage', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_community_videos', 1, 1, '{"category_type":"0","filter_by":"0","limit":"6","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');
/*!40000 ALTER TABLE `gy3te_modules` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_modules_menu
CREATE TABLE IF NOT EXISTS `gy3te_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogsinfo.gy3te_modules_menu: ~24 rows (приблизительно)
DELETE FROM `gy3te_modules_menu`;
/*!40000 ALTER TABLE `gy3te_modules_menu` DISABLE KEYS */;
INSERT INTO `gy3te_modules_menu` (`moduleid`, `menuid`) VALUES
	(1, 0),
	(2, 0),
	(3, 0),
	(4, 0),
	(6, 0),
	(7, 0),
	(8, 0),
	(9, 0),
	(10, 0),
	(12, 0),
	(13, 0),
	(14, 0),
	(15, 0),
	(16, 0),
	(17, 0),
	(79, 0),
	(86, 0),
	(98, 0),
	(101, 0),
	(103, 0),
	(104, 0),
	(105, 0),
	(110, 0),
	(114, 0);
/*!40000 ALTER TABLE `gy3te_modules_menu` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_newsfeeds
CREATE TABLE IF NOT EXISTS `gy3te_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogsinfo.gy3te_newsfeeds: ~0 rows (приблизительно)
DELETE FROM `gy3te_newsfeeds`;
/*!40000 ALTER TABLE `gy3te_newsfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_newsfeeds` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_overrider
CREATE TABLE IF NOT EXISTS `gy3te_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogsinfo.gy3te_overrider: ~0 rows (приблизительно)
DELETE FROM `gy3te_overrider`;
/*!40000 ALTER TABLE `gy3te_overrider` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_overrider` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_postinstall_messages
CREATE TABLE IF NOT EXISTS `gy3te_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogsinfo.gy3te_postinstall_messages: ~7 rows (приблизительно)
DELETE FROM `gy3te_postinstall_messages`;
/*!40000 ALTER TABLE `gy3te_postinstall_messages` DISABLE KEYS */;
INSERT INTO `gy3te_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
	(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 0),
	(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 0),
	(3, 700, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 0),
	(4, 700, 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION', 'plg_system_updatenotification', 1, 'action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_condition', '3.6.3', 1),
	(5, 700, 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_TITLE', 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/joomla40checks.php', 'admin_postinstall_joomla40checks_condition', '3.7.0', 1),
	(6, 700, 'TPL_HATHOR_MESSAGE_POSTINSTALL_TITLE', 'TPL_HATHOR_MESSAGE_POSTINSTALL_BODY', 'TPL_HATHOR_MESSAGE_POSTINSTALL_ACTION', 'tpl_hathor', 1, 'action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_condition', '3.7.0', 1),
	(7, 700, 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_TITLE', 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_BODY', 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_ACTION', 'plg_captcha_recaptcha', 1, 'action', 'site://plugins/captcha/recaptcha/postinstall/actions.php', 'recaptcha_postinstall_action', 'site://plugins/captcha/recaptcha/postinstall/actions.php', 'recaptcha_postinstall_condition', '3.8.6', 1);
/*!40000 ALTER TABLE `gy3te_postinstall_messages` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_redirect_links
CREATE TABLE IF NOT EXISTS `gy3te_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301',
  PRIMARY KEY (`id`),
  KEY `idx_old_url` (`old_url`(100)),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogsinfo.gy3te_redirect_links: ~0 rows (приблизительно)
DELETE FROM `gy3te_redirect_links`;
/*!40000 ALTER TABLE `gy3te_redirect_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_redirect_links` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_schemas
CREATE TABLE IF NOT EXISTS `gy3te_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogsinfo.gy3te_schemas: ~0 rows (приблизительно)
DELETE FROM `gy3te_schemas`;
/*!40000 ALTER TABLE `gy3te_schemas` DISABLE KEYS */;
INSERT INTO `gy3te_schemas` (`extension_id`, `version_id`) VALUES
	(700, '3.8.6-2018-02-14');
/*!40000 ALTER TABLE `gy3te_schemas` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_session
CREATE TABLE IF NOT EXISTS `gy3te_session` (
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned DEFAULT NULL,
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogsinfo.gy3te_session: ~2 rows (приблизительно)
DELETE FROM `gy3te_session`;
/*!40000 ALTER TABLE `gy3te_session` DISABLE KEYS */;
INSERT INTO `gy3te_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
	('74hpud0adqrd0ej6qbuoliu287', 1, 0, '1526461308', 'joomla|s:1228:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjoxMzp7czo3OiJzZXNzaW9uIjtPOjg6InN0ZENsYXNzIjozOntzOjc6ImNvdW50ZXIiO2k6MTM7czo1OiJ0b2tlbiI7czozMjoiejNxbndROEpqT2VLODQzcndQa2xaNGFnSUI2S0NpNUciO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTUyNjQ2MTAxMTtzOjQ6Imxhc3QiO2k6MTUyNjQ2MTMwNTtzOjM6Im5vdyI7aToxNTI2NDYxMzA4O319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtzOjI6IjQ4Ijt9czoxNjoiam9tc29jaWFsX3VzZXJpcCI7czo5OiIxMjcuMC4wLjEiO3M6ODoicG9zdERhdGEiO047czoyMjoiaWpvb21sYV9sYXRlc3RfdmVyc2lvbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo3OiJ2ZXJzaW9uIjtzOjA6IiI7fXM6MTg6InVzZXJfc3RhdHVzX2ZpbHRlciI7aToyO3M6MTY6InVzZXJfdHlwZV9maWx0ZXIiO3M6MzoiYWxsIjtzOjE4OiJ1c2VyX3NlYXJjaF9maWx0ZXIiO3M6MDoiIjtzOjE5OiJ1c2VyX3Byb2ZpbGVfZmlsdGVyIjtzOjA6IiI7czoxMDoidXNlcl9saW1pdCI7aToyMDtzOjE1OiJ1c2VyX2xpbWl0c3RhcnQiO2k6MDtzOjExOiJhcHBsaWNhdGlvbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJxdWV1ZSI7YTowOnt9fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9";', 48, 'dimavz'),
	('cd7ol5u05p0qat8gavigldskh1', 0, 1, '1526461528', 'joomla|s:788:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTUyNjQ2MTUyODtzOjQ6Imxhc3QiO2k6MTUyNjQ2MTUyODtzOjM6Im5vdyI7aToxNTI2NDYxNTI4O31zOjU6InRva2VuIjtzOjMyOiJUUWo2UFU3OWFiaWFka3haOUZvS3ZLaUtNaThVRkdBcSI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO31zOjE2OiJqb21zb2NpYWxfdXNlcmlwIjtzOjk6IjEyNy4wLjAuMSI7fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=";', 0, '');
/*!40000 ALTER TABLE `gy3te_session` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_access
CREATE TABLE IF NOT EXISTS `gy3te_social_access` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_access: 0 rows
DELETE FROM `gy3te_social_access`;
/*!40000 ALTER TABLE `gy3te_social_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_access` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_access_logs
CREATE TABLE IF NOT EXISTS `gy3te_social_access_logs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `rule` varchar(255) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `uid` bigint(20) NOT NULL,
  `utype` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_rule` (`rule`),
  KEY `idx_userid` (`user_id`),
  KEY `idx_uid` (`uid`),
  KEY `idx_utypes` (`uid`,`utype`),
  KEY `idx_created` (`created`),
  KEY `idx_useritems` (`rule`,`user_id`,`created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_access_logs: 0 rows
DELETE FROM `gy3te_social_access_logs`;
/*!40000 ALTER TABLE `gy3te_social_access_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_access_logs` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_access_rules
CREATE TABLE IF NOT EXISTS `gy3te_social_access_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `extension` varchar(255) NOT NULL,
  `element` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `state` tinyint(3) NOT NULL,
  `created` datetime NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `state` (`state`),
  KEY `extension` (`extension`),
  KEY `element` (`element`),
  KEY `group` (`group`)
) ENGINE=MyISAM AUTO_INCREMENT=147 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_access_rules: 146 rows
DELETE FROM `gy3te_social_access_rules`;
/*!40000 ALTER TABLE `gy3te_social_access_rules` DISABLE KEYS */;
INSERT INTO `gy3te_social_access_rules` (`id`, `name`, `title`, `description`, `extension`, `element`, `group`, `state`, `created`, `params`) VALUES
	(1, 'audios.upload', 'Upload Audio', 'This option determines if the user is allowed to use the upload feature in audio.', 'com_easysocial', 'audios', 'user', 1, '2018-05-12 09:09:23', '{"type":"boolean"}'),
	(2, 'audios.total', 'Total Audio', 'Determines the total number of audio a user can create on the site.', 'com_easysocial', 'audios', 'user', 1, '2018-05-12 09:09:23', '{"type":"limit","default":0}'),
	(3, 'audios.maxsize', 'Maximum File Size For Audio Uploads', 'Determines the maximum file size allowed for audio uploads.', 'com_easysocial', 'audios', 'user', 1, '2018-05-12 09:09:23', '{"type":"text","class":"form-control input-sm input-short text-center","default":8,"suffix":"MB"}'),
	(4, 'audios.daily', 'Total Daily Audio Creation', 'Determines the total number of audio a user can create in a day.', 'com_easysocial', 'audios', 'user', 1, '2018-05-12 09:09:23', '{"type":"limit","default":50}'),
	(5, 'audios.link', 'Share Audio Links', 'This option determines the user is allowed to share audio link in the story form. Example: soundcloud.com.', 'com_easysocial', 'audios', 'user', 1, '2018-05-12 09:09:23', '{"type":"boolean"}'),
	(6, 'audios.playlist.enabled', 'Create Playlist', 'Determines if the user in this group is allowed to create playlists.', 'com_easysocial', 'audios', 'user', 1, '2018-05-12 09:09:23', '{}'),
	(7, 'audios.playlist.limit', 'Playlist Limit', 'Set the number of playlists users from this group is allowed to create.', 'com_easysocial', 'audios', 'user', 1, '2018-05-12 09:09:23', '{"type":"limit","default":0}'),
	(8, 'comments.add', 'Add Comments', 'Allow this usergroup to add comments.', 'com_easysocial', 'comments', 'user', 1, '2018-05-12 09:09:23', '{}'),
	(9, 'comments.read', 'Read Comments', 'Allow this usergroup to read comments.', 'com_easysocial', 'comments', 'user', 1, '2018-05-12 09:09:23', '{}'),
	(10, 'comments.report', 'Report Comments', 'Allow this usergroup to report comments.', 'com_easysocial', 'comments', 'user', 1, '2018-05-12 09:09:23', '{}'),
	(11, 'comments.edit', 'Edit Comments', 'Allow this usergroup to edit all comments.', 'com_easysocial', 'comments', 'user', 1, '2018-05-12 09:09:23', '{"default":false}'),
	(12, 'comments.editown', 'Edit Own Comments', 'Allow this usergroup to edit own authored comments.', 'com_easysocial', 'comments', 'user', 1, '2018-05-12 09:09:23', '{}'),
	(13, 'comments.delete', 'Delete Comments', 'Allow this usergroup to delete all comments.', 'com_easysocial', 'comments', 'user', 1, '2018-05-12 09:09:23', '{"default":false}'),
	(14, 'comments.deleteown', 'Delete Own Comments', 'Allow this usergroup to delete own authored comments.', 'com_easysocial', 'comments', 'user', 1, '2018-05-12 09:09:23', '{}'),
	(15, 'conversations.create', 'Start New Conversation', 'If enabled, user\'s in this group will be allowed to start a new conversation.', 'com_easysocial', 'conversations', 'user', 1, '2018-05-12 09:09:23', '{}'),
	(16, 'conversations.invite', 'Invite Users to Group Conversation', 'If enabled, user\'s in this group will be allowed to invite other users into an existing group conversation.', 'com_easysocial', 'conversations', 'user', 1, '2018-05-12 09:09:23', '{}'),
	(17, 'conversations.send.daily', 'Daily Send Limit', 'Configure the maximum number of messages user can send a day.', 'com_easysocial', 'conversations', 'user', 1, '2018-05-12 09:09:23', '{"type":"limit","suffix":"messages","default":0}'),
	(18, 'events.create', 'Create Event', 'Specify if user is allowed to create event.', 'com_easysocial', 'events', 'user', 1, '2018-05-12 09:09:23', '{}'),
	(19, 'events.limit', 'Event Limit', 'Specify the maximum number of events that can be created.', 'com_easysocial', 'events', 'user', 1, '2018-05-12 09:09:23', '{"type":"limitinterval","default":{"value":0,"interval":0}}'),
	(20, 'events.allow.join', 'Attend Event', 'Specify if user is allowed to attend an event.', 'com_easysocial', 'events', 'user', 1, '2018-05-12 09:09:23', '{}'),
	(21, 'events.join', 'Total Events Allowed to Attend', 'Specify the total events that a user is allowed to attend.', 'com_easysocial', 'events', 'user', 1, '2018-05-12 09:09:23', '{"type":"limit","default":0}'),
	(22, 'events.moderate', 'Moderate Event Creation', 'Specify if event created by user should be moderated by admin.', 'com_easysocial', 'events', 'user', 1, '2018-05-12 09:09:23', '{}'),
	(23, 'photos.enabled', 'Allow Photo Albums', 'Specify if photo albums is allowed for events in this category.', 'com_easysocial', 'photos', 'event', 1, '2018-05-12 09:09:23', '{}'),
	(24, 'photos.upload', 'Allow Photo Uploads From', 'This option determines the user types that are allowed to upload photos', 'com_easysocial', 'photos', 'event', 1, '2018-05-12 09:09:23', '{"type":"clusteraccess","default":"members"}'),
	(25, 'photos.max', 'Total Photos Allowed', 'Specify the total photos allowed for events in this category.', 'com_easysocial', 'photos', 'event', 1, '2018-05-12 09:09:23', '{"type":"limit","suffix":"COM_EASYSOCIAL_ACCESS_EVENTS_PHOTOS_TOTAL_PHOTOS_SUFFIX","default":0}'),
	(26, 'photos.maxdaily', 'Total Daily Uploads Allowed', 'Specify the total photos allowed to be uploaded per day for events in this category.', 'com_easysocial', 'photos', 'event', 1, '2018-05-12 09:09:23', '{"type":"limit","suffix":"COM_EASYSOCIAL_ACCESS_EVENTS_PHOTOS_TOTAL_PHOTOS_SUFFIX","default":0}'),
	(27, 'photos.maxsize', 'Maximum File Size Allowed', 'Specify the maximum file sized allowed for photos uploaded.', 'com_easysocial', 'photos', 'event', 1, '2018-05-12 09:09:23', '{"type":"text","class":"form-control input-sm input-short text-center","suffix":"MB","default":"8"}'),
	(28, 'files.enabled', 'Allow File Sharing', 'Specify if the file sharing feature is allowed for events in this category.', 'com_easysocial', 'files', 'event', 1, '2018-05-12 09:09:23', '{"type":"boolean","default":1}'),
	(29, 'files.upload', 'Allow File Uploads From', 'This option determines if the user types are allowed to upload files', 'com_easysocial', 'files', 'event', 1, '2018-05-12 09:09:23', '{"type":"clusteraccess","default":"members"}'),
	(30, 'files.max', 'Total Files Allowed', 'Specify the total files allowed for events in this category.', 'com_easysocial', 'files', 'event', 1, '2018-05-12 09:09:23', '{"type":"limit","suffix":"COM_EASYSOCIAL_ACCESS_EVENTS_FILES_TOTAL_FILES_SUFFIX","default":0}'),
	(31, 'files.maxsize', 'Maximum File Size Allowed', 'Specify the maximum file sized allowed for files uploaded.', 'com_easysocial', 'files', 'event', 1, '2018-05-12 09:09:23', '{"type":"text","class":"form-control input-sm input-short text-center","suffix":"MB","default":"8"}'),
	(32, 'videos.create', 'Allow Videos', 'Allow video creation in event', 'com_easysocial', 'videos', 'event', 1, '2018-05-12 09:09:23', '{"type":"boolean","default":1}'),
	(33, 'videos.upload', 'Allow Video Uploads From', 'This option determines the user types that are allowed to upload videos', 'com_easysocial', 'videos', 'event', 1, '2018-05-12 09:09:23', '{"type":"clusteraccess","default":"members"}'),
	(34, 'videos.total', 'Total Videos Allowed', 'This access rule determines how many videos a event is allowed to have.', 'com_easysocial', 'videos', 'event', 1, '2018-05-12 09:09:23', '{"type":"limit","default":0}'),
	(35, 'videos.maxsize', 'Maximum File Size For Video Uploads', 'Determines the maximum file size allowed for video uploads.', 'com_easysocial', 'videos', 'event', 1, '2018-05-12 09:09:23', '{"type":"limit","suffix":"MB","default":0}'),
	(36, 'audios.create', 'Allow Audio', 'This option determines if audio is allowed in this category', 'com_easysocial', 'audios', 'event', 1, '2018-05-12 09:09:23', '{"type":"boolean","default":1}'),
	(37, 'audios.upload', 'Allow Audio Uploads', 'This option determines the user types that are allowed to upload audio', 'com_easysocial', 'audios', 'event', 1, '2018-05-12 09:09:23', '{"type":"clusteraccess","default":"members"}'),
	(38, 'audios.link', 'Allow Shares Audio Link', 'This option determines the user types that are allowed to share audio link', 'com_easysocial', 'audios', 'event', 1, '2018-05-12 09:09:23', '{"type":"clusteraccess","default":"members"}'),
	(39, 'audios.total', 'Total Audio Allowed', 'This access rule determines how many audio allowed to have.', 'com_easysocial', 'audios', 'event', 1, '2018-05-12 09:09:23', '{"type":"limit","default":0}'),
	(40, 'audios.maxsize', 'Maximum File Size For Audio Uploads', 'Determines the maximum file size allowed for audio uploads.', 'com_easysocial', 'audios', 'event', 1, '2018-05-12 09:09:23', '{"type":"limit","suffix":"MB","default":0}'),
	(41, 'events.groupevent', 'Allow Group Event', 'Specify if groups in this category should allow event creation.', 'com_easysocial', 'events', 'group', 1, '2018-05-12 09:09:23', '{"type":"boolean","default":1}'),
	(42, 'events.pageevent', 'Allow Page Event', 'Specify if pages in this category should allow event creation.', 'com_easysocial', 'events', 'page', 1, '2018-05-12 09:09:23', '{"type":"boolean","default":1}'),
	(43, 'polls.enabled', 'Allow Polls', 'This option determines if polls should be enabled', 'com_easysocial', 'polls', 'event', 1, '2018-05-12 09:09:23', '{"type":"boolean","default":1}'),
	(44, 'polls.create', 'Poll Creation', 'This option determines if the user types are allowed to create polls', 'com_easysocial', 'polls', 'event', 1, '2018-05-12 09:09:23', '{"type":"clusteraccess","default":"members"}'),
	(45, 'announcements.enabled', 'Allow Announcements', 'This option determines if announcements should be enabled', 'com_easysocial', 'announcements', 'event', 1, '2018-05-12 09:09:23', '{"type":"boolean","default":1}'),
	(46, 'announcements.create', 'Allow Announcements From', 'This option determines the user types that are allowed to post new announcements', 'com_easysocial', 'announcements', 'event', 1, '2018-05-12 09:09:23', '{"type":"clusteraccess","default":"admins"}'),
	(47, 'discussions.enabled', 'Allow Discussions', 'This option determines if discussions should be enabled', 'com_easysocial', 'discussions', 'event', 1, '2018-05-12 09:09:23', '{"type":"boolean","default":1}'),
	(48, 'discussions.access', 'Post Discussions', 'Determines which event members are allowed to post discussions in the event', 'com_easysocial', 'discussions', 'event', 1, '2018-05-12 09:09:23', '{"type":"clusteraccess","default":"admins"}'),
	(49, 'tasks.enabled', 'Allow Tasks', 'This option determines if tasks should be enabled', 'com_easysocial', 'tasks', 'event', 1, '2018-05-12 09:09:23', '{"type":"boolean","default":1}'),
	(50, 'tasks.access', 'Post Tasks', 'Determines which event members are allowed to post tasks in the event', 'com_easysocial', 'tasks', 'event', 1, '2018-05-12 09:09:23', '{"type":"clusteraccess","default":"admins"}'),
	(51, 'userpoints.limit', 'Event Creation Based On User Points', 'When this option is enabled, users can only create events when their user point meets the threshold specified below', 'com_easysocial', 'userpoints', 'event', 1, '2018-05-12 09:09:23', '{"type":"boolean","default":"0"}'),
	(52, 'userpoints.threshold', 'Points Threshold', 'This option allows you to specify the number of points that the user needs to have before being allowed to create events under this category', 'com_easysocial', 'userpoints', 'event', 1, '2018-05-12 09:09:23', '{"type":"text","class":"form-control input-sm input-short text-center","suffix":"COM_EASYSOCIAL_ACCESS_GROUPS_USERPOINTS_THRESHOLD_SUFFIX","default":50}'),
	(53, 'stream.edit', 'Allow edit stream item', 'Allow user to edit stream item in cluster.', 'com_easysocial', 'stream', 'event', 1, '2018-05-12 09:09:23', '{"type":"clusteraccess","default":"admins"}'),
	(54, 'files.upload', 'File Uploads', 'This access determines if the user is allowed to upload files in the story form.', 'com_easysocial', 'files', 'user', 1, '2018-05-12 09:09:23', '{}'),
	(55, 'friends.list.enabled', 'Create Friends List', 'Determines if the user in this group is allowed to create friend lists.', 'com_easysocial', 'friends', 'user', 1, '2018-05-12 09:09:23', '{}'),
	(56, 'friends.list.limit', 'Friends List', 'Set the number of friend lists users from this group is allowed to create.', 'com_easysocial', 'friends', 'user', 1, '2018-05-12 09:09:23', '{"type":"limit","default":0}'),
	(57, 'friends.limit', 'Friends Limit', 'Define the amount of friends a user from this group is allowed to have. Includes sent friend’s request.', 'com_easysocial', 'friends', 'user', 1, '2018-05-12 09:09:23', '{"type":"limit","default":0}'),
	(58, 'groups.create', 'Create Groups', 'Determines if the user has access to create new groups.', 'com_easysocial', 'groups', 'user', 1, '2018-05-12 09:09:23', '{}'),
	(59, 'groups.limit', 'Group Limit', 'Determines the total number of groups the user is allowed to create on the site.', 'com_easysocial', 'groups', 'user', 1, '2018-05-12 09:09:23', '{"type":"limitinterval","default":{"value":0,"interval":0}}'),
	(60, 'groups.allow.join', 'Join Groups', 'Determines if the user are allowed to join the group.', 'com_easysocial', 'groups', 'user', 1, '2018-05-12 09:09:23', '{}'),
	(61, 'groups.join', 'Total Groups Allowed To Join', 'Defines the total number of groups the user is allowed to join.', 'com_easysocial', 'groups', 'user', 1, '2018-05-12 09:09:23', '{"type":"limit","default":0}'),
	(62, 'groups.moderate', 'Moderate Group Creation', 'Determines if the group should be moderated first before being published.', 'com_easysocial', 'groups', 'user', 1, '2018-05-12 09:09:23', '{}'),
	(63, 'videos.create', 'Allow Videos', 'Allow video creation in group', 'com_easysocial', 'videos', 'group', 1, '2018-05-12 09:09:23', '{"type":"boolean","default":1}'),
	(64, 'videos.upload', 'Allow Video Uploads From', 'This option determines the user types that are allowed to upload videos', 'com_easysocial', 'videos', 'group', 1, '2018-05-12 09:09:23', '{"type":"clusteraccess","default":"members"}'),
	(65, 'videos.total', 'Total Videos Allowed', 'This access rule determines how many videos a group is allowed to have.', 'com_easysocial', 'videos', 'group', 1, '2018-05-12 09:09:23', '{"type":"limit","default":0}'),
	(66, 'videos.maxsize', 'Maximum File Size For Video Uploads', 'Determines the maximum file size allowed for video uploads.', 'com_easysocial', 'videos', 'group', 1, '2018-05-12 09:09:23', '{"type":"limit","suffix":"MB","default":0}'),
	(67, 'audios.create', 'Allow Audio', 'This option determines if audio is allowed in this category', 'com_easysocial', 'audios', 'group', 1, '2018-05-12 09:09:23', '{"type":"boolean","default":1}'),
	(68, 'audios.upload', 'Allow Audio Uploads', 'This option determines the user types that are allowed to upload audio', 'com_easysocial', 'audios', 'group', 1, '2018-05-12 09:09:23', '{"type":"clusteraccess","default":"members"}'),
	(69, 'audios.link', 'Allow Shares Audio Link', 'This option determines the user types that are allowed to share audio link', 'com_easysocial', 'audios', 'group', 1, '2018-05-12 09:09:23', '{"type":"clusteraccess","default":"members"}'),
	(70, 'audios.total', 'Total Audio Allowed', 'This access rule determines how many audio allowed to have.', 'com_easysocial', 'audios', 'group', 1, '2018-05-12 09:09:23', '{"type":"limit","default":0}'),
	(71, 'audios.maxsize', 'Maximum File Size For Audio Uploads', 'Determines the maximum file size allowed for audio uploads.', 'com_easysocial', 'audios', 'group', 1, '2018-05-12 09:09:23', '{"type":"limit","suffix":"MB","default":0}'),
	(72, 'photos.enabled', 'Allow Photo Albums', 'Determines if photo albums are allowed for groups in this category.', 'com_easysocial', 'photos', 'group', 1, '2018-05-12 09:09:23', '{"default":1}'),
	(73, 'photos.upload', 'Allow Photo Uploads From', 'This option determines the user types that are allowed to upload photos', 'com_easysocial', 'photos', 'group', 1, '2018-05-12 09:09:23', '{"type":"clusteraccess","default":"members"}'),
	(74, 'photos.max', 'Total Photos Allowed', 'Determines the total number of photos allowed for groups in this category.', 'com_easysocial', 'photos', 'group', 1, '2018-05-12 09:09:23', '{"type":"limit","suffix":"COM_EASYSOCIAL_ACCESS_GROUPS_PHOTOS_TOTAL_PHOTOS_SUFFIX","default":0}'),
	(75, 'photos.maxdaily', 'Total Daily Uploads Allowed', 'Determines the total number of photos allowed to be uploaded daily for groups in this category.', 'com_easysocial', 'photos', 'group', 1, '2018-05-12 09:09:23', '{"type":"limit","suffix":"COM_EASYSOCIAL_ACCESS_GROUPS_PHOTOS_TOTAL_PHOTOS_SUFFIX","default":0}'),
	(76, 'photos.maxsize', 'Maximum File Size Allowed', 'Determines the maximum file size allowed for groups in this category.', 'com_easysocial', 'photos', 'group', 1, '2018-05-12 09:09:23', '{"type":"text","class":"form-control input-sm input-short text-center","suffix":"MB","default":"8"}'),
	(77, 'files.enabled', 'Allow Filesharing', 'Determines if the file sharing should be enabled for groups in this category.', 'com_easysocial', 'files', 'group', 1, '2018-05-12 09:09:23', '{"type":"boolean","default":1}'),
	(78, 'files.upload', 'Allow File Uploads From', 'This option determines if the user types are allowed to upload files', 'com_easysocial', 'files', 'group', 1, '2018-05-12 09:09:23', '{"type":"clusteraccess","default":"members"}'),
	(79, 'files.max', 'Total Files Allowed', 'Set the total number of files allowed to be uploaded via the file manager.', 'com_easysocial', 'files', 'group', 1, '2018-05-12 09:09:23', '{"type":"limit","suffix":"COM_EASYSOCIAL_ACCESS_GROUPS_FILES_TOTAL_FILES_SUFFIX","default":0}'),
	(80, 'files.maxsize', 'Maximum File Size Allowed', 'Set the upload limit for files that are uploaded via the file manager.', 'com_easysocial', 'files', 'group', 1, '2018-05-12 09:09:23', '{"type":"text","class":"form-control input-sm input-short text-center","suffix":"MB","default":"8"}'),
	(81, 'discussions.enabled', 'Allow Discussions', 'This option determines if discussions should be enabled', 'com_easysocial', 'discussions', 'group', 1, '2018-05-12 09:09:23', '{"type":"boolean","default":1}'),
	(82, 'discussions.access', 'Post Discussions', 'Determines which group members are allowed to post discussions in the group', 'com_easysocial', 'discussions', 'group', 1, '2018-05-12 09:09:23', '{"type":"select","class":"form-control","default":"members","options":[{"title":"COM_EASYSOCIAL_ACCESS_GROUPS_ADMINS_ONLY","value":"admins"},{"title":"COM_EASYSOCIAL_ACCESS_GROUPS_ALL_MEMBERS","value":"members"}]}'),
	(83, 'tasks.enabled', 'Allow Tasks', 'This option determines if tasks should be enabled', 'com_easysocial', 'tasks', 'group', 1, '2018-05-12 09:09:23', '{"type":"boolean","default":1}'),
	(84, 'tasks.access', 'Task Creation', 'Determines which user groups are allowed to create task.', 'com_easysocial', 'tasks', 'group', 1, '2018-05-12 09:09:23', '{"type":"select","class":"form-control","default":"members","options":[{"title":"COM_EASYSOCIAL_ACCESS_GROUPS_ADMINS_ONLY","value":"admins"},{"title":"COM_EASYSOCIAL_ACCESS_GROUPS_ALL_MEMBERS","value":"members"}]}'),
	(85, 'polls.enabled', 'Allow Polls', 'This option determines if polls should be enabled', 'com_easysocial', 'polls', 'group', 1, '2018-05-12 09:09:23', '{"type":"boolean","default":1}'),
	(86, 'polls.create', 'Poll Creation', 'This option determines if the user types are allowed to create polls', 'com_easysocial', 'polls', 'group', 1, '2018-05-12 09:09:23', '{"type":"clusteraccess","default":"members"}'),
	(87, 'announcements.enabled', 'Allow Announcements', 'This option determines if announcements should be enabled', 'com_easysocial', 'announcements', 'group', 1, '2018-05-12 09:09:23', '{"type":"boolean","default":1}'),
	(88, 'announcements.create', 'Allow Announcements From', 'This option determines the user types that are allowed to post new announcements', 'com_easysocial', 'announcements', 'group', 1, '2018-05-12 09:09:23', '{"type":"clusteraccess","default":"admins"}'),
	(89, 'userpoints.limit', 'Group Creation based on user\'s points', 'When this option is enabled, users can only create groups when their user point meets the threshold specified below', 'com_easysocial', 'userpoints', 'group', 1, '2018-05-12 09:09:23', '{"type":"boolean","default":"0"}'),
	(90, 'userpoints.threshold', 'Points Threshold', 'Specify the user\'s points threshold in order to be able to create new groups.', 'com_easysocial', 'userpoints', 'group', 1, '2018-05-12 09:09:23', '{"type":"text","class":"form-control input-sm input-short text-center","suffix":"COM_EASYSOCIAL_ACCESS_GROUPS_USERPOINTS_THRESHOLD_SUFFIX","default":50}'),
	(91, 'stream.edit', 'Allow edit stream item', 'Allow user to edit stream item in cluster.', 'com_easysocial', 'stream', 'group', 1, '2018-05-12 09:09:23', '{"type":"clusteraccess","default":"admins"}'),
	(92, 'pages.create', 'Create Pages', 'Determines if the user has access to create new pages.', 'com_easysocial', 'pages', 'user', 1, '2018-05-12 09:09:23', '{}'),
	(93, 'pages.limit', 'Page Limit', 'Determines the total number of pages the user is allowed to create on the site.', 'com_easysocial', 'pages', 'user', 1, '2018-05-12 09:09:23', '{"type":"limitinterval","default":{"value":0,"interval":0}}'),
	(94, 'pages.allow.like', 'Like Pages', 'Determines if the user are allowed to like the page.', 'com_easysocial', 'pages', 'user', 1, '2018-05-12 09:09:23', '{}'),
	(95, 'pages.like', 'Total Pages Allowed To Like', 'Defines the total number of pages the user is allowed to like.', 'com_easysocial', 'pages', 'user', 1, '2018-05-12 09:09:23', '{"type":"limit","default":0}'),
	(96, 'pages.moderate', 'Moderate Page Creation', 'Determines if the page should be moderated first before being published.', 'com_easysocial', 'pages', 'user', 1, '2018-05-12 09:09:23', '{}'),
	(97, 'videos.create', 'Allow Videos', 'Allow video creation in page', 'com_easysocial', 'videos', 'page', 1, '2018-05-12 09:09:23', '{"type":"boolean","default":1}'),
	(98, 'videos.upload', 'Allow Video Uploads From', 'This option determines the user types that are allowed to upload videos', 'com_easysocial', 'videos', 'page', 1, '2018-05-12 09:09:23', '{"type":"clusteraccess","default":"members"}'),
	(99, 'videos.total', 'Total Videos Allowed', 'This access rule determines how many videos a page is allowed to have.', 'com_easysocial', 'videos', 'page', 1, '2018-05-12 09:09:23', '{"type":"limit","default":0}'),
	(100, 'videos.maxsize', 'Maximum File Size For Video Uploads', 'Determines the maximum file size allowed for video uploads.', 'com_easysocial', 'videos', 'page', 1, '2018-05-12 09:09:23', '{"type":"limit","suffix":"MB","default":0}'),
	(101, 'audios.create', 'Allow Audio', 'This option determines if audio is allowed in this category', 'com_easysocial', 'audios', 'page', 1, '2018-05-12 09:09:23', '{"type":"boolean","default":1}'),
	(102, 'audios.upload', 'Allow Audio Uploads', 'This option determines the user types that are allowed to upload audio', 'com_easysocial', 'audios', 'page', 1, '2018-05-12 09:09:23', '{"type":"clusteraccess","default":"members"}'),
	(103, 'audios.link', 'Allow Shares Audio Link', 'This option determines the user types that are allowed to share audio link', 'com_easysocial', 'audios', 'page', 1, '2018-05-12 09:09:23', '{"type":"clusteraccess","default":"members"}'),
	(104, 'audios.total', 'Total Audio Allowed', 'This access rule determines how many audio allowed to have.', 'com_easysocial', 'audios', 'page', 1, '2018-05-12 09:09:23', '{"type":"limit","default":0}'),
	(105, 'audios.maxsize', 'Maximum File Size For Audio Uploads', 'Determines the maximum file size allowed for audio uploads.', 'com_easysocial', 'audios', 'page', 1, '2018-05-12 09:09:23', '{"type":"limit","suffix":"MB","default":0}'),
	(106, 'photos.enabled', 'Allow Photo Albums', 'Determines if photo albums are allowed for pages in this category.', 'com_easysocial', 'photos', 'page', 1, '2018-05-12 09:09:23', '{"default":1}'),
	(107, 'photos.max', 'Total Photos Allowed', 'Determines the total number of photos allowed for pages in this category.', 'com_easysocial', 'photos', 'page', 1, '2018-05-12 09:09:23', '{"type":"limit","suffix":"COM_EASYSOCIAL_ACCESS_PAGES_PHOTOS_TOTAL_PHOTOS_SUFFIX","default":0}'),
	(108, 'photos.maxdaily', 'Total Daily Uploads Allowed', 'Determines the total number of photos allowed to be uploaded daily for pages in this category.', 'com_easysocial', 'photos', 'page', 1, '2018-05-12 09:09:23', '{"type":"limit","suffix":"COM_EASYSOCIAL_ACCESS_PAGES_PHOTOS_TOTAL_PHOTOS_SUFFIX","default":0}'),
	(109, 'photos.maxsize', 'Maximum File Size Allowed', 'Determines the maximum file size allowed for pages in this category.', 'com_easysocial', 'photos', 'page', 1, '2018-05-12 09:09:23', '{"type":"text","class":"form-control input-sm input-short text-center","suffix":"MB","default":"8"}'),
	(110, 'files.enabled', 'Allow Filesharing', 'Determines if the file sharing should be enabled for pages in this category.', 'com_easysocial', 'files', 'page', 1, '2018-05-12 09:09:23', '{"type":"boolean","default":1}'),
	(111, 'files.upload', 'Allow File Uploads From', 'This option determines if the user types are allowed to upload files', 'com_easysocial', 'files', 'page', 1, '2018-05-12 09:09:23', '{"type":"clusteraccess","default":"admins"}'),
	(112, 'files.max', 'Total Files Allowed', 'Set the total number of files allowed to be uploaded via the file manager.', 'com_easysocial', 'files', 'page', 1, '2018-05-12 09:09:23', '{"type":"limit","suffix":"COM_EASYSOCIAL_ACCESS_PAGES_FILES_TOTAL_FILES_SUFFIX","default":0}'),
	(113, 'files.maxsize', 'Maximum File Size Allowed', 'Set the upload limit for files that are uploaded via the file manager.', 'com_easysocial', 'files', 'page', 1, '2018-05-12 09:09:23', '{"type":"text","class":"form-control input-sm input-short text-center","suffix":"MB","default":"8"}'),
	(114, 'discussions.enabled', 'Allow Discussions', 'This option determines if discussions should be enabled', 'com_easysocial', 'discussions', 'page', 1, '2018-05-12 09:09:23', '{"type":"boolean","default":1}'),
	(115, 'discussions.access', 'Post Discussions', 'Determine which page members are allowed to post discussions in the page', 'com_easysocial', 'discussions', 'page', 1, '2018-05-12 09:09:23', '{"type":"select","class":"form-control","default":"members","options":[{"title":"COM_EASYSOCIAL_ACCESS_PAGE_ADMINS_ONLY","value":"admins"},{"title":"COM_EASYSOCIAL_ACCESS_PAGE_ALL_MEMBERS","value":"members"}]}'),
	(116, 'polls.enabled', 'Allow Polls', 'This option determines if polls should be enabled', 'com_easysocial', 'polls', 'page', 1, '2018-05-12 09:09:23', '{"type":"boolean","default":1}'),
	(117, 'polls.create', 'Poll Creation', 'This option determines if the user types are allowed to create polls', 'com_easysocial', 'polls', 'page', 1, '2018-05-12 09:09:23', '{"type":"clusteraccess","default":"members"}'),
	(118, 'announcements.enabled', 'Allow Announcements', 'This option determines if announcements should be enabled', 'com_easysocial', 'announcements', 'page', 1, '2018-05-12 09:09:23', '{"type":"boolean","default":true}'),
	(119, 'announcements.create', 'Allow Announcements From', 'This option determines the user types that are allowed to post new announcements', 'com_easysocial', 'announcements', 'page', 1, '2018-05-12 09:09:23', '{"type":"clusteraccess","default":"admins"}'),
	(120, 'userpoints.limit', 'Page Creation based on user\'s points', 'If this option enabled, system will based on user\'s points in order to allow to create page. The checking will based on points threshold setting.', 'com_easysocial', 'userpoints', 'page', 1, '2018-05-12 09:09:23', '{"type":"boolean","default":"0"}'),
	(121, 'userpoints.threshold', 'Points Threshold', 'Specify the user\'s points threshold in order to be able to create new pages.', 'com_easysocial', 'userpoints', 'page', 1, '2018-05-12 09:09:23', '{"type":"text","class":"form-control input-sm input-short text-center","suffix":"COM_EASYSOCIAL_ACCESS_PAGES_USERPOINTS_THRESHOLD_SUFFIX","default":50}'),
	(122, 'stream.edit', 'Allow edit stream item', 'Allow user to edit stream item in cluster.', 'com_easysocial', 'stream', 'page', 1, '2018-05-12 09:09:23', '{"type":"clusteraccess","default":"admins"}'),
	(123, 'pendings.manage', 'Moderate Pending Pages, Events and Groups', 'This option determines if user\'s under this profile type are allowed to manage pending moderation pages, events and groups in the frontend', 'com_easysocial', 'pendings', 'user', 1, '2018-05-12 09:09:23', '{"default":false}'),
	(124, 'albums.create', 'Create albums', 'This option determines if the user is allowed to create a new album.', 'com_easysocial', 'albums', 'user', 1, '2018-05-12 09:09:23', '{}'),
	(125, 'albums.total', 'Maximum albums', 'Set the number of photo albums a user is allowed to create on the site.', 'com_easysocial', 'albums', 'user', 1, '2018-05-12 09:09:23', '{"type":"limit","default":0}'),
	(126, 'photos.create', 'Upload Photos', 'Specify if the user are allowed to upload a new photo on the site.', 'com_easysocial', 'photos', 'user', 1, '2018-05-12 09:09:23', '{}'),
	(127, 'photos.uploader.maxsize', 'Maximum file size', 'Set the maximum file size of photo upload.', 'com_easysocial', 'photos', 'user', 1, '2018-05-12 09:09:23', '{"type":"text","class":"form-control input-sm input-short text-center","default":5,"suffix":"MB"}'),
	(128, 'photos.uploader.max', 'Maximum photos upload', 'Set the number of photos upload that are allowed by user.', 'com_easysocial', 'photos', 'user', 1, '2018-05-12 09:09:23', '{"type":"limit","suffix":"photos","default":500}'),
	(129, 'photos.uploader.maxdaily', 'Maximum photo upload per day', 'Set the number of daily photos upload that are allowed by user.', 'com_easysocial', 'photos', 'user', 1, '2018-05-12 09:09:23', '{"type":"limit","suffix":"photos","default":20}'),
	(130, 'photos.totalfiles.limit', 'Maximum Storage Size', 'Here, you may define a maximum storage size allowed for users in this profile type.', 'com_easysocial', 'photos', 'user', 1, '2018-05-12 09:09:23', '{"type":"limit","suffix":"MB","default":0}'),
	(131, 'polls.create', 'Create Poll', 'This option determines if the user is allowed to create poll.', 'com_easysocial', 'polls', 'user', 1, '2018-05-12 09:09:23', '{}'),
	(132, 'polls.vote', 'Vote on Polls', 'This option determines if the user is allowed to vote on polls.', 'com_easysocial', 'polls', 'user', 1, '2018-05-12 09:09:23', '{}'),
	(133, 'reports.submit', 'Submit Reports', 'By enabling this option, users in this group will be allowed to submit a report.', 'com_easysocial', 'reports', 'user', 1, '2018-05-12 09:09:23', '{}'),
	(134, 'reports.limit', 'Total Reports', 'Specify the total number of reports this user may submit.', 'com_easysocial', 'reports', 'user', 1, '2018-05-12 09:09:23', '{"type":"limit","default":0}'),
	(135, 'story.user.post', 'Post Story In Dashboard', 'Allow user to post their story in dashboard and profile page via story form.', 'com_easysocial', 'story', 'user', 1, '2018-05-12 09:09:23', '{}'),
	(136, 'story.group.post', 'Post Story In Group', 'Allow user to post their story in group page via story form.', 'com_easysocial', 'story', 'user', 1, '2018-05-12 09:09:23', '{}'),
	(137, 'story.flood.user', 'Enable Flood Control', 'If enabled, an interval check between story posting will be imposed to avoid flood / spam.', 'com_easysocial', 'story', 'user', 1, '2018-05-12 09:09:23', '{"type":"boolean","default":false}'),
	(138, 'story.flood.interval', 'Flood Interval', 'Set the interval that user must wait betweeen story posting.', 'com_easysocial', 'story', 'user', 1, '2018-05-12 09:09:23', '{"type":"text","class":"form-control input-sm input-short text-center","suffix":"seconds","default":90}'),
	(139, 'stream.hide', 'Allow hiding single stream item', 'Allow user to hide stream item from frontend.', 'com_easysocial', 'stream', 'user', 1, '2018-05-12 09:09:23', '{}'),
	(140, 'stream.delete', 'Allow delete single stream item', 'Allow user to delete stream item from frontend.', 'com_easysocial', 'stream', 'user', 1, '2018-05-12 09:09:23', '{"default":false}'),
	(141, 'videos.upload', 'Upload Videos', 'This option determines if the user is allowed to use the upload feature in videos.', 'com_easysocial', 'videos', 'user', 1, '2018-05-12 09:09:23', '{"type":"boolean"}'),
	(142, 'videos.link', 'Share Video Links', 'This option determines the user is allowed to share video link in the story form. Example: youtube.com.', 'com_easysocial', 'videos', 'user', 1, '2018-05-12 09:09:23', '{"type":"boolean"}'),
	(143, 'videos.create', 'Video Creation', 'Determines if user is allowed to add new videos in the videos section', 'com_easysocial', 'videos', 'user', 1, '2018-05-12 09:09:23', '{"type":"boolean"}'),
	(144, 'videos.total', 'Total Videos', 'Determines the total number of videos a user can create on the site.', 'com_easysocial', 'videos', 'user', 1, '2018-05-12 09:09:23', '{"type":"limit","default":0}'),
	(145, 'videos.maxsize', 'Maximum File Size For Video Uploads', 'Determines the maximum file size allowed for video uploads.', 'com_easysocial', 'videos', 'user', 1, '2018-05-12 09:09:23', '{"type":"text","class":"form-control input-sm input-short text-center","default":8,"suffix":"MB"}'),
	(146, 'videos.daily', 'Total Daily Video Creation', 'Determines the total number of video a user can create in a day.', 'com_easysocial', 'videos', 'user', 1, '2018-05-12 09:09:23', '{"type":"limit","default":50,"suffix":"videos"}');
/*!40000 ALTER TABLE `gy3te_social_access_rules` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_albums
CREATE TABLE IF NOT EXISTS `gy3te_social_albums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cover_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `caption` text NOT NULL,
  `created` datetime NOT NULL,
  `assigned_date` datetime NOT NULL,
  `ordering` tinyint(3) NOT NULL,
  `params` text NOT NULL,
  `core` tinyint(3) NOT NULL,
  `hits` int(11) NOT NULL,
  `notified` tinyint(1) NOT NULL,
  `finalized` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`type`),
  KEY `user_id` (`user_id`),
  KEY `idx_albums_user_assigned` (`uid`,`type`,`assigned_date`),
  KEY `idx_core` (`core`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_albums: 0 rows
DELETE FROM `gy3te_social_albums`;
/*!40000 ALTER TABLE `gy3te_social_albums` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_albums` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_albums_favourite
CREATE TABLE IF NOT EXISTS `gy3te_social_albums_favourite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `album_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_albums_favourite: 0 rows
DELETE FROM `gy3te_social_albums_favourite`;
/*!40000 ALTER TABLE `gy3te_social_albums_favourite` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_albums_favourite` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_alert
CREATE TABLE IF NOT EXISTS `gy3te_social_alert` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension` varchar(255) NOT NULL,
  `element` varchar(255) NOT NULL,
  `rule` varchar(255) NOT NULL,
  `email` int(1) NOT NULL DEFAULT '1',
  `system` int(1) NOT NULL DEFAULT '1',
  `core` int(1) NOT NULL DEFAULT '0',
  `app` int(1) NOT NULL DEFAULT '0',
  `field` tinyint(3) NOT NULL DEFAULT '0',
  `group` varchar(255) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(3) NOT NULL DEFAULT '1',
  `email_published` tinyint(3) NOT NULL DEFAULT '1',
  `system_published` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_alert_field` (`field`),
  KEY `idx_alert_published` (`published`),
  KEY `idx_alert_element` (`element`),
  KEY `idx_alert_rule` (`rule`),
  KEY `idx_alert_published_field` (`published`,`field`),
  KEY `idx_alert_isfield` (`published`,`field`,`element`(64),`rule`(64))
) ENGINE=MyISAM AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_alert: 109 rows
DELETE FROM `gy3te_social_alert`;
/*!40000 ALTER TABLE `gy3te_social_alert` DISABLE KEYS */;
INSERT INTO `gy3te_social_alert` (`id`, `extension`, `element`, `rule`, `email`, `system`, `core`, `app`, `field`, `group`, `created`, `published`, `email_published`, `system_published`) VALUES
	(1, '', 'relationship', 'request', 1, 1, 0, 0, 1, 'user', '2018-05-12 09:09:19', 1, 1, 1),
	(2, '', 'relationship', 'approve', 1, 1, 0, 0, 1, 'user', '2018-05-12 09:09:19', 1, 1, 1),
	(3, '', 'relationship', 'reject', 1, 1, 0, 0, 1, 'user', '2018-05-12 09:09:19', 1, 1, 1),
	(4, '', 'albums', 'comment.add', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(5, '', 'albums', 'favourite', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(6, '', 'audios', 'comment.add', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(7, '', 'audios', 'tagged', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(8, '', 'audios', 'likes', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(9, '', 'badges', 'unlocked', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(10, '', 'broadcast', 'notify', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(11, '', 'comments', 'item', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(12, '', 'comments', 'involved', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(13, '', 'comments', 'tagged', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(14, '', 'comments', 'like', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(15, '', 'conversations', 'reply', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(16, '', 'conversations', 'invite', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(17, '', 'conversations', 'new', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(18, '', 'conversations', 'invited', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(19, '', 'conversations', 'leave', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(20, '', 'events', 'discussion.create', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(21, '', 'events', 'discussion.reply', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(22, '', 'events', 'discussion.answered', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(23, '', 'events', 'discussion.locked', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(24, '', 'events', 'guest.makeadmin', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(25, '', 'events', 'guest.revokeadmin', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(26, '', 'events', 'guest.reject', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(27, '', 'events', 'guest.approve', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(28, '', 'events', 'guest.remove', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(29, '', 'events', 'guest.going', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(30, '', 'events', 'guest.maybe', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(31, '', 'events', 'guest.notgoing', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(32, '', 'events', 'guest.request', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(33, '', 'events', 'guest.withdraw', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(34, '', 'events', 'guest.invited', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(35, '', 'events', 'news', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(36, '', 'events', 'task.created', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(37, '', 'events', 'task.completed', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(38, '', 'events', 'task.uncompleted', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(39, '', 'events', 'milestone.created', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(40, '', 'events', 'updates', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(41, '', 'events', 'video.create', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(42, '', 'events', 'polls.create', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(43, '', 'events', 'polls.vote.item', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(44, '', 'events', 'polls.unvote.item', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(45, '', 'events', 'polls.changevote.item', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(46, '', 'events', 'reminder', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(47, '', 'events', 'tagged', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(48, '', 'events', 'moderate.review', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(49, '', 'friends', 'approve', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(50, '', 'friends', 'request', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(51, '', 'groups', 'invited', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(52, '', 'groups', 'approved', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(53, '', 'groups', 'joined', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(54, '', 'groups', 'user.rejected', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(55, '', 'groups', 'updates', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(56, '', 'groups', 'promoted', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(57, '', 'groups', 'requested', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(58, '', 'groups', 'leave', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(59, '', 'groups', 'news', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(60, '', 'groups', 'discussion.create', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(61, '', 'groups', 'discussion.reply', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(62, '', 'groups', 'milestone.create', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(63, '', 'groups', 'task.create', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(64, '', 'groups', 'task.completed', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(65, '', 'groups', 'user.removed', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(66, '', 'groups', 'video.create', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(67, '', 'groups', 'polls.create', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(68, '', 'groups', 'task.uncompleted', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(69, '', 'groups', 'polls.vote.item', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(70, '', 'groups', 'polls.unvote.item', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(71, '', 'groups', 'polls.changevote.item', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(72, '', 'groups', 'album.create', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(73, '', 'groups', 'file.upload', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(74, '', 'groups', 'tagged', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(75, '', 'groups', 'moderate.review', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(76, '', 'likes', 'item', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(77, '', 'likes', 'involved', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(78, '', 'pages', 'invited', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(79, '', 'pages', 'approved', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(80, '', 'pages', 'liked', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(81, '', 'pages', 'user.rejected', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(82, '', 'pages', 'updates', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(83, '', 'pages', 'promoted', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(84, '', 'pages', 'requested', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(85, '', 'pages', 'news', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(86, '', 'pages', 'discussion.create', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(87, '', 'pages', 'discussion.reply', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(88, '', 'pages', 'user.removed', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(89, '', 'pages', 'video.create', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(90, '', 'pages', 'polls.create', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(91, '', 'pages', 'polls.vote.item', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(92, '', 'pages', 'polls.unvote.item', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(93, '', 'pages', 'polls.changevote.item', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(94, '', 'pages', 'tagged', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(95, '', 'pages', 'moderate.review', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(96, '', 'photos', 'comment.add', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(97, '', 'photos', 'tagged', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(98, '', 'photos', 'likes', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(99, '', 'polls', 'vote.item', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(100, '', 'polls', 'unvote.item', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(101, '', 'polls', 'changevote.item', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(102, '', 'profile', 'followed', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(103, '', 'profile', 'story', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(104, '', 'profile', 'unlocked', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(105, '', 'repost', 'item', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(106, '', 'stream', 'tagged', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(107, '', 'videos', 'comment.add', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(108, '', 'videos', 'tagged', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1),
	(109, '', 'videos', 'likes', 1, 1, 1, 0, 0, '', '2018-05-12 09:09:26', 1, 1, 1);
/*!40000 ALTER TABLE `gy3te_social_alert` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_alert_map
CREATE TABLE IF NOT EXISTS `gy3te_social_alert_map` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT '0',
  `alert_id` bigint(20) NOT NULL,
  `email` int(1) DEFAULT '1',
  `system` int(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_alertmap_alertid` (`alert_id`),
  KEY `idx_alertmap_userid` (`user_id`),
  KEY `idx_alertmap_alertuser` (`alert_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_alert_map: 0 rows
DELETE FROM `gy3te_social_alert_map`;
/*!40000 ALTER TABLE `gy3te_social_alert_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_alert_map` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_apps
CREATE TABLE IF NOT EXISTS `gy3te_social_apps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `core` tinyint(4) NOT NULL DEFAULT '0',
  `system` tinyint(3) NOT NULL DEFAULT '0',
  `unique` tinyint(4) NOT NULL DEFAULT '0',
  `default` tinyint(3) NOT NULL,
  `type` varchar(255) NOT NULL COMMENT 'It could be widgets,fields or applications',
  `element` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `ordering` int(11) NOT NULL,
  `params` text NOT NULL,
  `version` varchar(255) NOT NULL,
  `widget` tinyint(3) NOT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `installable` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `state` (`state`),
  KEY `type` (`type`),
  KEY `core` (`core`),
  KEY `idx_default_widget` (`state`,`group`,`widget`,`default`),
  KEY `idx_group` (`group`),
  KEY `idx_apps_element` (`element`),
  KEY `idx_apps_type_group` (`type`(64),`group`(64))
) ENGINE=MyISAM AUTO_INCREMENT=232 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_apps: 231 rows
DELETE FROM `gy3te_social_apps`;
/*!40000 ALTER TABLE `gy3te_social_apps` DISABLE KEYS */;
INSERT INTO `gy3te_social_apps` (`id`, `core`, `system`, `unique`, `default`, `type`, `element`, `group`, `title`, `alias`, `state`, `created`, `ordering`, `params`, `version`, `widget`, `visible`, `installable`) VALUES
	(1, 1, 0, 0, 0, 'apps', 'albums', 'user', 'Albums', 'albums', 1, '2018-05-12 09:09:17', 0, '{}', '2.0.164', 1, 1, 1),
	(2, 1, 1, 0, 0, 'apps', 'apps', 'user', 'Apps', 'apps', 1, '2018-05-12 09:09:17', 0, '{}', '2.0.164', 0, 1, 0),
	(3, 0, 0, 0, 0, 'apps', 'article', 'user', 'Article', 'article', 1, '2018-05-12 09:09:17', 0, '{}', '2.0.164', 0, 1, 1),
	(4, 1, 0, 0, 0, 'apps', 'audios', 'user', 'Audio', 'audio', 1, '2018-05-12 09:09:17', 0, '{}', '2.1.17', 1, 1, 1),
	(5, 1, 1, 0, 0, 'apps', 'badges', 'user', 'Badges', 'badges', 1, '2018-05-12 09:09:17', 0, '{}', '2.0.164', 0, 1, 0),
	(6, 1, 1, 0, 0, 'apps', 'broadcast', 'user', 'Broadcast', 'broadcast', 1, '2018-05-12 09:09:17', 0, '{}', '2.0.164', 0, 1, 0),
	(7, 0, 0, 0, 0, 'apps', 'calendar', 'user', 'Calendar', 'calendar', 1, '2018-05-12 09:09:17', 0, '{}', '2.0.164', 1, 1, 1),
	(8, 0, 0, 0, 0, 'apps', 'cleantalk', 'user', 'CleanTalk', 'cleantalk', 1, '2018-05-12 09:09:17', 0, '{}', '2.1.17', 0, 1, 0),
	(9, 1, 1, 0, 0, 'apps', 'events', 'user', 'Events', 'events', 1, '2018-05-12 09:09:17', 0, '{}', '2.0.164', 1, 1, 0),
	(10, 0, 0, 0, 0, 'apps', 'feeds', 'user', 'Feeds', 'feeds', 1, '2018-05-12 09:09:17', 0, '{}', '2.0.164', 0, 1, 1),
	(11, 0, 0, 0, 0, 'apps', 'files', 'user', 'Files', 'files', 1, '2018-05-12 09:09:17', 0, '{}', '2.0.164', 0, 1, 0),
	(12, 1, 0, 0, 0, 'apps', 'followers', 'user', 'Followers', 'followers', 1, '2018-05-12 09:09:17', 0, '{}', '2.0.164', 1, 1, 0),
	(13, 1, 0, 0, 0, 'apps', 'friends', 'user', 'Friends', 'friends', 1, '2018-05-12 09:09:17', 0, '{}', '2.0.164', 1, 1, 1),
	(14, 1, 1, 0, 0, 'apps', 'groups', 'user', 'Groups', 'groups', 1, '2018-05-12 09:09:17', 0, '{}', '2.0.164', 1, 1, 0),
	(15, 0, 0, 0, 0, 'apps', 'k2', 'user', 'K2', 'k2', 1, '2018-05-12 09:09:17', 0, '{}', '2.0.18', 0, 1, 1),
	(16, 0, 0, 0, 0, 'apps', 'kunena', 'user', 'Kunena Forum', 'kunena-forum', 1, '2018-05-12 09:09:17', 0, '{}', '2.1.16', 1, 1, 1),
	(17, 1, 0, 0, 0, 'apps', 'links', 'user', 'Links', 'links', 1, '2018-05-12 09:09:17', 0, '{}', '2.0.164', 0, 1, 0),
	(18, 1, 1, 0, 0, 'apps', 'pages', 'user', 'Pages', 'pages', 1, '2018-05-12 09:09:17', 0, '{}', '2.0.164', 1, 1, 0),
	(19, 1, 0, 0, 0, 'apps', 'photos', 'user', 'Photos', 'photos', 1, '2018-05-12 09:09:17', 0, '{}', '2.0.164', 1, 1, 1),
	(20, 1, 0, 0, 0, 'apps', 'polls', 'user', 'Polls', 'polls', 1, '2018-05-12 09:09:17', 0, '{}', '2.0.164', 0, 1, 0),
	(21, 1, 1, 0, 0, 'apps', 'profiles', 'user', 'Profiles', 'profiles', 1, '2018-05-12 09:09:17', 0, '{}', '2.0.164', 0, 1, 0),
	(22, 1, 1, 0, 0, 'apps', 'shares', 'user', 'Shares', 'shares', 1, '2018-05-12 09:09:17', 0, '{}', '2.0.164', 0, 1, 0),
	(23, 1, 1, 0, 0, 'apps', 'story', 'user', 'Story', 'story', 1, '2018-05-12 09:09:17', 0, '{}', '2.0.164', 0, 1, 0),
	(24, 0, 0, 0, 0, 'apps', 'tasks', 'user', 'Tasks', 'tasks', 1, '2018-05-12 09:09:17', 0, '{}', '2.1.6', 0, 1, 1),
	(25, 1, 0, 0, 0, 'apps', 'users', 'user', 'Users', 'users', 1, '2018-05-12 09:09:17', 0, '{}', '2.0.164', 1, 1, 0),
	(26, 1, 0, 0, 0, 'apps', 'videos', 'user', 'Videos', 'videos', 1, '2018-05-12 09:09:17', 0, '{}', '2.0.164', 1, 1, 1),
	(27, 1, 0, 0, 0, 'apps', 'audios', 'group', 'Audio', 'audio', 1, '2018-05-12 09:09:17', 0, '{}', '2.1.17', 1, 1, 0),
	(28, 0, 0, 0, 0, 'apps', 'discussions', 'group', 'Discussions', 'discussions', 1, '2018-05-12 09:09:17', 0, '{}', '2.0.164', 1, 1, 1),
	(29, 1, 0, 0, 0, 'apps', 'events', 'group', 'Events', 'events', 1, '2018-05-12 09:09:17', 0, '{}', '2.0.164', 1, 1, 0),
	(30, 0, 0, 0, 0, 'apps', 'feeds', 'group', 'Feeds', 'feeds', 1, '2018-05-12 09:09:17', 0, '{}', '2.0.164', 0, 1, 1),
	(31, 1, 0, 0, 0, 'apps', 'files', 'group', 'Files', 'files', 1, '2018-05-12 09:09:17', 0, '{}', '2.0.164', 1, 1, 1),
	(32, 1, 1, 0, 0, 'apps', 'groups', 'group', 'Groups', 'groups', 1, '2018-05-12 09:09:17', 0, '{}', '2.0.164', 0, 1, 1),
	(33, 1, 0, 0, 0, 'apps', 'links', 'group', 'Links', 'links', 1, '2018-05-12 09:09:17', 0, '{}', '2.0.164', 0, 1, 0),
	(34, 0, 0, 0, 0, 'apps', 'members', 'group', 'Members', 'members', 1, '2018-05-12 09:09:17', 0, '{}', '2.0.164', 1, 1, 1),
	(35, 1, 0, 0, 0, 'apps', 'news', 'group', 'Announcements', 'announcements', 1, '2018-05-12 09:09:17', 0, '{}', '2.0.164', 1, 1, 0),
	(36, 1, 0, 0, 0, 'apps', 'photos', 'group', 'Photos', 'photos', 1, '2018-05-12 09:09:17', 0, '{}', '2.0.164', 1, 1, 1),
	(37, 1, 0, 0, 0, 'apps', 'polls', 'group', 'Polls', 'polls', 1, '2018-05-12 09:09:17', 0, '{}', '2.0.164', 0, 1, 0),
	(38, 1, 1, 0, 0, 'apps', 'shares', 'group', 'Shares', 'shares', 1, '2018-05-12 09:09:17', 0, '{}', '2.0.164', 0, 1, 0),
	(39, 1, 1, 0, 0, 'apps', 'story', 'group', 'Story', 'story', 1, '2018-05-12 09:09:17', 0, '{}', '2.0.164', 0, 1, 0),
	(40, 1, 0, 0, 0, 'apps', 'tasks', 'group', 'Tasks', 'tasks', 1, '2018-05-12 09:09:17', 0, '{}', '2.1.6', 1, 1, 1),
	(41, 1, 0, 0, 0, 'apps', 'videos', 'group', 'Videos', 'videos', 1, '2018-05-12 09:09:17', 0, '{}', '2.0.164', 1, 1, 0),
	(42, 1, 0, 0, 0, 'apps', 'audios', 'page', 'Audio', 'audio', 1, '2018-05-12 09:09:18', 0, '{}', '2.1.17', 1, 1, 0),
	(43, 0, 0, 0, 0, 'apps', 'discussions', 'page', 'Discussions', 'discussions', 1, '2018-05-12 09:09:18', 0, '{}', '2.0.164', 1, 1, 1),
	(44, 1, 0, 0, 0, 'apps', 'events', 'page', 'Events', 'events', 1, '2018-05-12 09:09:18', 0, '{}', '2.0.164', 1, 1, 0),
	(45, 0, 0, 0, 0, 'apps', 'feeds', 'page', 'Feeds', 'feeds', 1, '2018-05-12 09:09:18', 0, '{}', '2.0.164', 0, 1, 1),
	(46, 1, 0, 0, 0, 'apps', 'files', 'page', 'Files', 'files', 1, '2018-05-12 09:09:18', 0, '{}', '2.0.164', 1, 1, 1),
	(47, 0, 0, 0, 0, 'apps', 'followers', 'page', 'Followers', 'followers', 1, '2018-05-12 09:09:18', 0, '{}', '2.0.164', 1, 1, 1),
	(48, 1, 0, 0, 0, 'apps', 'links', 'page', 'Links', 'links', 1, '2018-05-12 09:09:18', 0, '{}', '2.0.164', 0, 1, 0),
	(49, 1, 0, 0, 0, 'apps', 'news', 'page', 'Announcements', 'announcements', 1, '2018-05-12 09:09:18', 0, '{}', '2.0.164', 1, 1, 0),
	(50, 1, 1, 0, 0, 'apps', 'pages', 'page', 'Pages', 'pages', 1, '2018-05-12 09:09:18', 0, '{}', '2.0.164', 0, 1, 1),
	(51, 1, 0, 0, 0, 'apps', 'photos', 'page', 'Photos', 'photos', 1, '2018-05-12 09:09:18', 0, '{}', '2.0.164', 1, 1, 1),
	(52, 1, 0, 0, 0, 'apps', 'polls', 'page', 'Polls', 'polls', 1, '2018-05-12 09:09:18', 0, '{}', '2.0.164', 0, 1, 0),
	(53, 1, 1, 0, 0, 'apps', 'shares', 'page', 'Shares', 'shares', 1, '2018-05-12 09:09:18', 0, '{}', '2.0.164', 0, 1, 0),
	(54, 1, 1, 0, 0, 'apps', 'story', 'page', 'Story', 'story', 1, '2018-05-12 09:09:18', 0, '{}', '2.0.164', 0, 1, 0),
	(55, 1, 0, 0, 0, 'apps', 'videos', 'page', 'Videos', 'videos', 1, '2018-05-12 09:09:18', 0, '{}', '2.0.164', 1, 1, 0),
	(56, 1, 0, 0, 0, 'apps', 'audios', 'event', 'Audio', 'audio', 1, '2018-05-12 09:09:18', 0, '{}', '2.1.17', 1, 1, 0),
	(57, 0, 0, 0, 0, 'apps', 'discussions', 'event', 'Discussions', 'discussions', 1, '2018-05-12 09:09:18', 0, '{}', '2.0.164', 1, 1, 1),
	(58, 1, 1, 0, 0, 'apps', 'events', 'event', 'Events', 'events', 1, '2018-05-12 09:09:18', 0, '{}', '2.0.164', 0, 1, 1),
	(59, 1, 0, 0, 0, 'apps', 'files', 'event', 'Files', 'files', 1, '2018-05-12 09:09:18', 0, '{}', '2.0.164', 1, 1, 1),
	(60, 1, 0, 0, 0, 'apps', 'guests', 'event', 'Guests', 'guests', 1, '2018-05-12 09:09:18', 0, '{}', '2.0.164', 1, 1, 1),
	(61, 1, 0, 0, 0, 'apps', 'links', 'event', 'Links', 'links', 1, '2018-05-12 09:09:18', 0, '{}', '2.0.164', 0, 1, 0),
	(62, 1, 0, 0, 0, 'apps', 'news', 'event', 'Announcements', 'announcements', 1, '2018-05-12 09:09:18', 0, '{}', '2.0.164', 1, 1, 0),
	(63, 1, 0, 0, 0, 'apps', 'photos', 'event', 'Photos', 'photos', 1, '2018-05-12 09:09:18', 0, '{}', '2.0.164', 1, 1, 1),
	(64, 1, 0, 0, 0, 'apps', 'polls', 'event', 'Polls', 'polls', 1, '2018-05-12 09:09:18', 0, '{}', '2.0.164', 0, 1, 0),
	(65, 1, 1, 0, 0, 'apps', 'shares', 'event', 'Shares', 'shares', 1, '2018-05-12 09:09:18', 0, '{}', '2.0.164', 0, 1, 0),
	(66, 1, 1, 0, 0, 'apps', 'story', 'event', 'Story', 'story', 1, '2018-05-12 09:09:18', 0, '{}', '2.0.164', 0, 1, 0),
	(67, 1, 0, 0, 0, 'apps', 'tasks', 'event', 'Tasks', 'tasks', 1, '2018-05-12 09:09:18', 0, '{}', '2.1.6', 1, 1, 1),
	(68, 1, 0, 0, 0, 'apps', 'videos', 'event', 'Videos', 'videos', 1, '2018-05-12 09:09:18', 0, '{}', '2.0.164', 1, 1, 0),
	(69, 0, 0, 0, 0, 'fields', 'acymailing', 'user', 'Acymailing', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(70, 0, 0, 0, 0, 'fields', 'address', 'user', 'Address', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(71, 0, 0, 0, 0, 'fields', 'autocomplete', 'user', 'Autocomplete', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(72, 1, 0, 1, 0, 'fields', 'avatar', 'user', 'Avatar', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(73, 0, 0, 1, 0, 'fields', 'birthday', 'user', 'Birthday', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(74, 0, 0, 0, 0, 'fields', 'boolean', 'user', 'Boolean', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(75, 0, 0, 0, 0, 'fields', 'checkbox', 'user', 'Checkboxes', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(76, 0, 0, 0, 0, 'fields', 'country', 'user', 'Country', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(77, 1, 0, 1, 0, 'fields', 'cover', 'user', 'Cover', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(78, 0, 0, 0, 0, 'fields', 'currency', 'user', 'Currency', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(79, 0, 0, 0, 0, 'fields', 'datetime', 'user', 'Datetime', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(80, 0, 0, 0, 0, 'fields', 'dropdown', 'user', 'Dropdown List', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(81, 0, 0, 0, 0, 'fields', 'email', 'user', 'Email', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(82, 0, 0, 0, 0, 'fields', 'file', 'user', 'File', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(83, 0, 0, 1, 0, 'fields', 'gender', 'user', 'Gender', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(84, 0, 0, 0, 0, 'fields', 'header', 'user', 'Header', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(85, 0, 0, 1, 0, 'fields', 'headline', 'user', 'Headline', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(86, 0, 0, 0, 0, 'fields', 'html', 'user', 'Html', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(87, 1, 0, 1, 0, 'fields', 'joomla_email', 'user', 'Joomla User Email', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(88, 1, 0, 1, 0, 'fields', 'joomla_fullname', 'user', 'Joomla User Fullname', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(89, 0, 0, 1, 0, 'fields', 'joomla_joindate', 'user', 'Joomla Joined Date', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(90, 0, 0, 1, 0, 'fields', 'joomla_language', 'user', 'Joomla Language', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(91, 0, 0, 1, 0, 'fields', 'joomla_lastlogin', 'user', 'Joomla Last Login Date', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(92, 1, 0, 1, 0, 'fields', 'joomla_password', 'user', 'Joomla User Password', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(93, 0, 0, 1, 0, 'fields', 'joomla_timezone', 'user', 'Joomla User Timezone', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(94, 0, 0, 1, 0, 'fields', 'joomla_twofactor', 'user', 'Joomla Two Factor', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(95, 0, 0, 1, 0, 'fields', 'joomla_user_editor', 'user', 'Joomla User Editor', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(96, 1, 0, 1, 0, 'fields', 'joomla_username', 'user', 'Joomla Username', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(97, 0, 0, 1, 0, 'fields', 'kunena_signature', 'user', 'Kunena Signature', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(98, 0, 0, 1, 0, 'fields', 'mailchimp', 'user', 'Mailchimp', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(99, 0, 0, 0, 0, 'fields', 'mollom', 'user', 'Mollom', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(100, 0, 0, 0, 0, 'fields', 'multidropdown', 'user', 'Multi Dropdown List', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(101, 0, 0, 0, 0, 'fields', 'multilist', 'user', 'Multilist', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(102, 0, 0, 0, 0, 'fields', 'multitextbox', 'user', 'Multi Textbox', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(103, 0, 0, 0, 0, 'fields', 'password', 'user', 'Password', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(104, 0, 0, 1, 0, 'fields', 'permalink', 'user', 'Permalink', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(105, 0, 0, 1, 0, 'fields', 'recaptcha', 'user', 'Recaptcha', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(106, 0, 0, 1, 0, 'fields', 'relationship', 'user', 'Relationship Status', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(107, 0, 0, 0, 0, 'fields', 'separator', 'user', 'Separator', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(108, 0, 0, 1, 0, 'fields', 'skype', 'user', 'Skype', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(109, 0, 0, 0, 0, 'fields', 'terms', 'user', 'Terms', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(110, 0, 0, 0, 0, 'fields', 'text', 'user', 'Text', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(111, 0, 0, 0, 0, 'fields', 'textarea', 'user', 'Textarea', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(112, 0, 0, 0, 0, 'fields', 'textbox', 'user', 'Textbox', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(113, 0, 0, 0, 0, 'fields', 'url', 'user', 'URL', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(114, 0, 0, 0, 0, 'fields', 'vmvendor', 'user', 'Virtuemart Vendor Field', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(115, 0, 0, 0, 0, 'fields', 'address', 'group', 'Address', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(116, 1, 0, 1, 0, 'fields', 'audios', 'group', 'Audios', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.1.17', 0, 1, 0),
	(117, 1, 0, 1, 0, 'fields', 'avatar', 'group', 'Avatar', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(118, 0, 0, 0, 0, 'fields', 'boolean', 'group', 'Boolean', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(119, 0, 0, 0, 0, 'fields', 'checkbox', 'group', 'Checkboxes', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(120, 1, 0, 1, 0, 'fields', 'cover', 'group', 'Cover', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(121, 0, 0, 0, 0, 'fields', 'datetime', 'group', 'Datetime', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(122, 1, 0, 1, 0, 'fields', 'description', 'group', 'Description', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(123, 1, 0, 1, 0, 'fields', 'discussions', 'group', 'Discussions', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(124, 0, 0, 0, 0, 'fields', 'dropdown', 'group', 'Dropdown', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(125, 0, 0, 0, 0, 'fields', 'email', 'group', 'Email', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(126, 0, 0, 1, 0, 'fields', 'eventcreate', 'group', 'Event Create', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(127, 1, 0, 1, 0, 'fields', 'events', 'group', 'Events', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.1.17', 0, 1, 0),
	(128, 1, 0, 1, 0, 'fields', 'feeds', 'group', 'Feeds', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.1.17', 0, 1, 0),
	(129, 0, 0, 0, 0, 'fields', 'file', 'group', 'File', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(130, 1, 0, 1, 0, 'fields', 'files', 'group', 'Files', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.1.17', 0, 1, 0),
	(131, 0, 0, 0, 0, 'fields', 'header', 'group', 'Header', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(132, 0, 0, 0, 0, 'fields', 'headline', 'group', 'Headline', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(133, 0, 0, 0, 0, 'fields', 'html', 'group', 'Html', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(134, 0, 0, 1, 0, 'fields', 'moderation', 'group', 'Post Moderation', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(135, 0, 0, 0, 0, 'fields', 'multidropdown', 'group', 'Multi Dropdown', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(136, 0, 0, 0, 0, 'fields', 'multilist', 'group', 'Multilist', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(137, 0, 0, 0, 0, 'fields', 'multitextbox', 'group', 'Multi Textbox', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(138, 1, 0, 1, 0, 'fields', 'news', 'group', 'News', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(139, 1, 0, 1, 0, 'fields', 'notification', 'group', 'Group Notification Type', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(140, 0, 0, 1, 0, 'fields', 'permalink', 'group', 'Permalink', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(141, 0, 0, 1, 0, 'fields', 'permissions', 'group', 'Stream Permissions', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(142, 1, 0, 1, 0, 'fields', 'photos', 'group', 'Photos', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(143, 1, 0, 1, 0, 'fields', 'polls', 'group', 'Polls', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.1.17', 0, 1, 0),
	(144, 0, 0, 0, 0, 'fields', 'separator', 'group', 'Separator', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(145, 1, 0, 1, 0, 'fields', 'tasks', 'group', 'Tasks', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.1.17', 0, 1, 0),
	(146, 0, 0, 0, 0, 'fields', 'text', 'group', 'Text', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(147, 0, 0, 0, 0, 'fields', 'textarea', 'group', 'Textarea', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(148, 0, 0, 0, 0, 'fields', 'textbox', 'group', 'Textbox', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(149, 1, 0, 1, 0, 'fields', 'title', 'group', 'Title', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(150, 1, 0, 1, 0, 'fields', 'type', 'group', 'Group Type', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(151, 0, 0, 0, 0, 'fields', 'url', 'group', 'URL', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(152, 1, 0, 1, 0, 'fields', 'videos', 'group', 'Videos', '', 1, '2018-05-12 09:09:19', 0, '{}', '2.0.164', 0, 1, 0),
	(153, 0, 0, 0, 0, 'fields', 'address', 'page', 'Address', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(154, 1, 0, 1, 0, 'fields', 'audios', 'page', 'Audios', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.1.17', 0, 1, 0),
	(155, 1, 0, 1, 0, 'fields', 'avatar', 'page', 'Avatar', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(156, 0, 0, 0, 0, 'fields', 'boolean', 'page', 'Boolean', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(157, 0, 0, 0, 0, 'fields', 'checkbox', 'page', 'Checkboxes', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(158, 1, 0, 1, 0, 'fields', 'cover', 'page', 'Cover', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(159, 0, 0, 0, 0, 'fields', 'datetime', 'page', 'Datetime', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(160, 1, 0, 1, 0, 'fields', 'description', 'page', 'Description', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(161, 1, 0, 1, 0, 'fields', 'discussions', 'page', 'Discussions', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(162, 0, 0, 0, 0, 'fields', 'dropdown', 'page', 'Dropdown', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(163, 0, 0, 0, 0, 'fields', 'email', 'page', 'Email', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(164, 0, 0, 1, 0, 'fields', 'eventcreate', 'page', 'Event Create', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(165, 1, 0, 1, 0, 'fields', 'events', 'page', 'Events', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.1.17', 0, 1, 0),
	(166, 1, 0, 1, 0, 'fields', 'feeds', 'page', 'Feeds', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.1.17', 0, 1, 0),
	(167, 0, 0, 0, 0, 'fields', 'file', 'page', 'File', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(168, 1, 0, 1, 0, 'fields', 'files', 'page', 'Files', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.1.17', 0, 1, 0),
	(169, 0, 0, 0, 0, 'fields', 'header', 'page', 'Header', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(170, 0, 0, 0, 0, 'fields', 'headline', 'page', 'Headline', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(171, 0, 0, 0, 0, 'fields', 'html', 'page', 'Html', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(172, 0, 0, 1, 0, 'fields', 'moderation', 'page', 'Post Moderation', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(173, 0, 0, 0, 0, 'fields', 'multidropdown', 'page', 'Multi Dropdown', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(174, 0, 0, 0, 0, 'fields', 'multilist', 'page', 'Multilist', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(175, 0, 0, 0, 0, 'fields', 'multitextbox', 'page', 'Multi Textbox', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(176, 1, 0, 1, 0, 'fields', 'news', 'page', 'News', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(177, 1, 0, 1, 0, 'fields', 'notification', 'page', 'Page Notification Type', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(178, 0, 0, 1, 0, 'fields', 'permalink', 'page', 'Permalink', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(179, 0, 0, 1, 0, 'fields', 'permissions', 'page', 'Stream Permissions', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(180, 1, 0, 1, 0, 'fields', 'photos', 'page', 'Photos', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(181, 1, 0, 1, 0, 'fields', 'polls', 'page', 'Polls', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.1.17', 0, 1, 0),
	(182, 0, 0, 0, 0, 'fields', 'separator', 'page', 'Separator', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(183, 0, 0, 0, 0, 'fields', 'text', 'page', 'Text', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(184, 0, 0, 0, 0, 'fields', 'textarea', 'page', 'Textarea', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(185, 0, 0, 0, 0, 'fields', 'textbox', 'page', 'Textbox', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(186, 1, 0, 1, 0, 'fields', 'title', 'page', 'Title', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(187, 1, 0, 1, 0, 'fields', 'type', 'page', 'Page Type', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(188, 0, 0, 0, 0, 'fields', 'url', 'page', 'URL', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(189, 1, 0, 1, 0, 'fields', 'videos', 'page', 'Videos', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(190, 0, 0, 0, 0, 'fields', 'address', 'event', 'Address', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(191, 0, 0, 1, 0, 'fields', 'allday', 'event', 'All Day', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(192, 1, 0, 1, 0, 'fields', 'audios', 'event', 'Audios', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.1.17', 0, 1, 0),
	(193, 1, 0, 1, 0, 'fields', 'avatar', 'event', 'Avatar', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(194, 0, 0, 0, 0, 'fields', 'boolean', 'event', 'Boolean', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(195, 0, 0, 0, 0, 'fields', 'checkbox', 'event', 'Checkboxes', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(196, 1, 0, 1, 0, 'fields', 'configAllowMaybe', 'event', 'Config - Allow Maybe', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(197, 1, 0, 1, 0, 'fields', 'configNotGoingGuest', 'event', 'Config - Not Going Guest', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(198, 1, 0, 1, 0, 'fields', 'cover', 'event', 'Cover', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(199, 0, 0, 0, 0, 'fields', 'datetime', 'event', 'Datetime', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(200, 1, 0, 1, 0, 'fields', 'description', 'event', 'Description', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(201, 1, 0, 1, 0, 'fields', 'discussions', 'event', 'Discussions', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(202, 0, 0, 0, 0, 'fields', 'dropdown', 'event', 'Dropdown', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(203, 0, 0, 0, 0, 'fields', 'email', 'event', 'Email', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(204, 0, 0, 0, 0, 'fields', 'file', 'event', 'File', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(205, 1, 0, 1, 0, 'fields', 'files', 'event', 'Files', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.1.17', 0, 1, 0),
	(206, 0, 0, 1, 0, 'fields', 'guestLimit', 'event', 'Guest Limit', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(207, 0, 0, 0, 0, 'fields', 'header', 'event', 'Header', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(208, 0, 0, 0, 0, 'fields', 'headline', 'event', 'Headline', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(209, 0, 0, 0, 0, 'fields', 'html', 'event', 'Html', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(210, 0, 0, 1, 0, 'fields', 'membertransfer', 'event', 'Group Member Transfer', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(211, 0, 0, 0, 0, 'fields', 'multidropdown', 'event', 'Multi Dropdown', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(212, 0, 0, 0, 0, 'fields', 'multilist', 'event', 'Multilist', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(213, 0, 0, 0, 0, 'fields', 'multitextbox', 'event', 'Multi Textbox', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(214, 1, 0, 1, 0, 'fields', 'news', 'event', 'News', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(215, 0, 0, 1, 0, 'fields', 'ownerstate', 'event', 'Owner State', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(216, 0, 0, 1, 0, 'fields', 'permalink', 'event', 'Permalink', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(217, 0, 0, 1, 0, 'fields', 'permissions', 'event', 'Stream Permissions', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(218, 1, 0, 1, 0, 'fields', 'photos', 'event', 'Photos', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(219, 1, 0, 1, 0, 'fields', 'polls', 'event', 'Polls', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.1.17', 0, 1, 0),
	(220, 0, 0, 1, 0, 'fields', 'recurring', 'event', 'Recurring', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(221, 0, 0, 0, 0, 'fields', 'separator', 'event', 'Separator', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(222, 1, 0, 1, 0, 'fields', 'startend', 'event', 'Event Start End', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(223, 1, 0, 1, 0, 'fields', 'tasks', 'event', 'Tasks', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.1.17', 0, 1, 0),
	(224, 0, 0, 0, 0, 'fields', 'text', 'event', 'Text', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(225, 0, 0, 0, 0, 'fields', 'textarea', 'event', 'Textarea', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(226, 0, 0, 0, 0, 'fields', 'textbox', 'event', 'Textbox', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(227, 1, 0, 1, 0, 'fields', 'title', 'event', 'Title', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(228, 1, 0, 1, 0, 'fields', 'type', 'event', 'Event Type', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(229, 0, 0, 1, 0, 'fields', 'upcomingreminder', 'event', 'Upcoming Event Reminder', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(230, 0, 0, 0, 0, 'fields', 'url', 'event', 'URL', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0),
	(231, 1, 0, 1, 0, 'fields', 'videos', 'event', 'Videos', '', 1, '2018-05-12 09:09:20', 0, '{}', '2.0.164', 0, 1, 0);
/*!40000 ALTER TABLE `gy3te_social_apps` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_apps_access
CREATE TABLE IF NOT EXISTS `gy3te_social_apps_access` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_apps_access: 0 rows
DELETE FROM `gy3te_social_apps_access`;
/*!40000 ALTER TABLE `gy3te_social_apps_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_apps_access` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_apps_calendar
CREATE TABLE IF NOT EXISTS `gy3te_social_apps_calendar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `reminder` tinyint(3) NOT NULL,
  `date_start` datetime NOT NULL,
  `date_end` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `all_day` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_apps_calendar: 0 rows
DELETE FROM `gy3te_social_apps_calendar`;
/*!40000 ALTER TABLE `gy3te_social_apps_calendar` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_apps_calendar` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_apps_directory
CREATE TABLE IF NOT EXISTS `gy3te_social_apps_directory` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `info` text NOT NULL,
  `price` varchar(255) NOT NULL,
  `logo` text NOT NULL,
  `element` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `permalink` text NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `download` tinyint(3) NOT NULL,
  `version_checking` tinyint(3) NOT NULL,
  `raw` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_apps_directory: 0 rows
DELETE FROM `gy3te_social_apps_directory`;
/*!40000 ALTER TABLE `gy3te_social_apps_directory` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_apps_directory` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_apps_map
CREATE TABLE IF NOT EXISTS `gy3te_social_apps_map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `app_id` int(11) NOT NULL,
  `position` varchar(50) NOT NULL,
  `created` datetime NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_app_uid_type` (`app_id`,`uid`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_apps_map: 0 rows
DELETE FROM `gy3te_social_apps_map`;
/*!40000 ALTER TABLE `gy3te_social_apps_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_apps_map` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_apps_store
CREATE TABLE IF NOT EXISTS `gy3te_social_apps_store` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `info` text NOT NULL,
  `price` varchar(255) NOT NULL,
  `logo` text NOT NULL,
  `element` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `permalink` text NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `download` tinyint(3) NOT NULL,
  `download_api` tinyint(3) NOT NULL,
  `version_checking` tinyint(3) NOT NULL,
  `raw` text NOT NULL,
  `ratings` int(11) NOT NULL,
  `votes` int(11) NOT NULL,
  `payment` tinyint(3) NOT NULL,
  `featured` tinyint(3) NOT NULL,
  `stackideas` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_apps_store: 0 rows
DELETE FROM `gy3te_social_apps_store`;
/*!40000 ALTER TABLE `gy3te_social_apps_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_apps_store` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_apps_views
CREATE TABLE IF NOT EXISTS `gy3te_social_apps_views` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) NOT NULL,
  `view` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_app_view` (`app_id`,`view`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_apps_views: 23 rows
DELETE FROM `gy3te_social_apps_views`;
/*!40000 ALTER TABLE `gy3te_social_apps_views` DISABLE KEYS */;
INSERT INTO `gy3te_social_apps_views` (`id`, `app_id`, `view`, `type`, `title`, `description`) VALUES
	(1, 3, 'profile', 'embed', '', ''),
	(2, 7, 'dashboard', 'canvas', '', ''),
	(3, 7, 'profile', 'canvas', '', ''),
	(4, 10, 'profile', 'embed', '', ''),
	(5, 15, 'profile', 'embed', '', ''),
	(6, 16, 'profile', 'embed', '', ''),
	(7, 24, 'dashboard', 'embed', '', ''),
	(8, 28, 'groups', 'embed', '', ''),
	(9, 30, 'groups', 'embed', '', ''),
	(10, 31, 'groups', 'embed', '', ''),
	(11, 34, 'groups', 'embed', '', ''),
	(12, 35, 'groups', 'embed', '', ''),
	(13, 40, 'groups', 'embed', '', ''),
	(14, 43, 'pages', 'embed', '', ''),
	(15, 45, 'pages', 'embed', '', ''),
	(16, 46, 'pages', 'embed', '', ''),
	(17, 47, 'pages', 'embed', '', ''),
	(18, 49, 'pages', 'embed', '', ''),
	(19, 57, 'events', 'embed', '', ''),
	(20, 59, 'events', 'embed', '', ''),
	(21, 60, 'events', 'embed', '', ''),
	(22, 62, 'events', 'embed', '', ''),
	(23, 67, 'events', 'embed', '', '');
/*!40000 ALTER TABLE `gy3te_social_apps_views` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_audios
CREATE TABLE IF NOT EXISTS `gy3te_social_audios` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key for this table',
  `artist` varchar(255) NOT NULL COMMENT 'Artist of the audio',
  `album` varchar(255) NOT NULL COMMENT 'Album of the audio',
  `cover` text NOT NULL,
  `title` varchar(255) NOT NULL COMMENT 'Title of the audio',
  `description` text NOT NULL COMMENT 'The description of the audio',
  `duration` varchar(255) NOT NULL COMMENT 'Duration of the audio',
  `user_id` int(11) NOT NULL COMMENT 'The user id that created this audio',
  `uid` int(11) NOT NULL COMMENT 'This audio may belong to another node other than the user.',
  `type` varchar(255) NOT NULL COMMENT 'This audio may belong to another node other than the user.',
  `created` datetime NOT NULL,
  `state` tinyint(3) NOT NULL,
  `isnew` tinyint(1) NOT NULL DEFAULT '0',
  `featured` tinyint(3) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `hits` int(11) NOT NULL COMMENT 'Total hits received for this audio',
  `size` int(11) NOT NULL COMMENT 'The file size of the audio',
  `params` text NOT NULL COMMENT 'Store audio params',
  `storage` varchar(255) NOT NULL COMMENT 'Storage for audios',
  `path` text NOT NULL,
  `original` text NOT NULL,
  `file_title` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL,
  `albumart_source` varchar(255) NOT NULL DEFAULT 'upload',
  `post_as` varchar(64) DEFAULT 'user',
  `playlist_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `title` (`title`,`user_id`,`state`,`featured`,`genre_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_audios: 0 rows
DELETE FROM `gy3te_social_audios`;
/*!40000 ALTER TABLE `gy3te_social_audios` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_audios` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_audios_genres
CREATE TABLE IF NOT EXISTS `gy3te_social_audios_genres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `state` tinyint(3) NOT NULL,
  `default` tinyint(3) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL COMMENT 'The user id that created this genre',
  `created` datetime NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `state` (`state`,`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_audios_genres: 10 rows
DELETE FROM `gy3te_social_audios_genres`;
/*!40000 ALTER TABLE `gy3te_social_audios_genres` DISABLE KEYS */;
INSERT INTO `gy3te_social_audios_genres` (`id`, `title`, `alias`, `description`, `state`, `default`, `user_id`, `created`, `ordering`) VALUES
	(1, 'Country', 'country', 'Country Music', 1, 1, 48, '2018-05-12 09:09:26', 1),
	(2, 'Rock', 'rock', 'Rock Music', 1, 0, 48, '2018-05-12 09:09:26', 2),
	(3, 'Disco', 'disco', 'Disco Music', 1, 0, 48, '2018-05-12 09:09:26', 3),
	(4, 'Pop', 'pop', 'Pop Music', 1, 0, 48, '2018-05-12 09:09:26', 4),
	(5, 'Classical', 'classical', 'Classical Music', 1, 0, 48, '2018-05-12 09:09:26', 5),
	(6, 'Instrumental', 'instrumental', 'Instrumental Music', 1, 0, 48, '2018-05-12 09:09:26', 6),
	(7, 'Techno', 'techno', 'Techno Music', 1, 0, 48, '2018-05-12 09:09:26', 7),
	(8, 'Alternative', 'alternative', 'Alternative Music', 1, 0, 48, '2018-05-12 09:09:26', 8),
	(9, 'Jazz', 'jazz', 'Jazz Music', 1, 0, 48, '2018-05-12 09:09:26', 9),
	(10, 'Blues', 'blues', 'Blues Music', 1, 0, 48, '2018-05-12 09:09:26', 10);
/*!40000 ALTER TABLE `gy3te_social_audios_genres` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_audios_genres_access
CREATE TABLE IF NOT EXISTS `gy3te_social_audios_genres_access` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `genre_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `genre_id` (`genre_id`,`profile_id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_audios_genres_access: 0 rows
DELETE FROM `gy3te_social_audios_genres_access`;
/*!40000 ALTER TABLE `gy3te_social_audios_genres_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_audios_genres_access` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_avatars
CREATE TABLE IF NOT EXISTS `gy3te_social_avatars` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary ID',
  `uid` int(11) NOT NULL COMMENT 'Node''s ID',
  `type` varchar(255) NOT NULL,
  `avatar_id` bigint(20) NOT NULL COMMENT 'If the node is using a default avatar, this field will be populated with an id.',
  `photo_id` int(11) NOT NULL COMMENT 'If the avatar is created from a photo, this field will be populated with the photo id.',
  `small` text NOT NULL,
  `medium` text NOT NULL,
  `square` text NOT NULL,
  `large` text NOT NULL,
  `modified` datetime NOT NULL,
  `storage` varchar(255) NOT NULL DEFAULT 'joomla',
  PRIMARY KEY (`id`),
  KEY `avatar_id` (`avatar_id`),
  KEY `photo_id` (`photo_id`),
  KEY `idx_uid` (`uid`),
  KEY `idx_uid_type` (`uid`,`type`),
  KEY `idx_storage_cron` (`storage`,`avatar_id`,`small`(64)),
  KEY `idx_type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_avatars: 0 rows
DELETE FROM `gy3te_social_avatars`;
/*!40000 ALTER TABLE `gy3te_social_avatars` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_avatars` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_badges
CREATE TABLE IF NOT EXISTS `gy3te_social_badges` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `command` varchar(255) NOT NULL,
  `extension` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `howto` text NOT NULL,
  `avatar` text NOT NULL,
  `created` datetime NOT NULL,
  `state` tinyint(3) NOT NULL,
  `frequency` bigint(20) NOT NULL,
  `achieve_type` varchar(65) NOT NULL DEFAULT 'frequency',
  `points_increase_rule` int(11) DEFAULT '0',
  `points_decrease_rule` int(11) DEFAULT '0',
  `points_threshold` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `discuss_badges_alias` (`alias`),
  KEY `discuss_badges_published` (`state`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_badges: 26 rows
DELETE FROM `gy3te_social_badges`;
/*!40000 ALTER TABLE `gy3te_social_badges` DISABLE KEYS */;
INSERT INTO `gy3te_social_badges` (`id`, `command`, `extension`, `title`, `alias`, `description`, `howto`, `avatar`, `created`, `state`, `frequency`, `achieve_type`, `points_increase_rule`, `points_decrease_rule`, `points_threshold`) VALUES
	(1, 'create.article', 'com_content', 'COM_EASYSOCIAL_BADGES_PUBLISHER', 'publisher', 'COM_EASYSOCIAL_BADGES_PUBLISHER_DESC', 'COM_EASYSOCIAL_BADGES_PUBLISHER_HOWTO', 'media/com_easysocial/apps/user/article/assets/badges/publisher.png', '2018-05-12 09:09:17', 1, 50, 'frequency', 0, 0, 0),
	(2, 'update.article', 'com_content', 'COM_EASYSOCIAL_BADGES_PROOF_READING', 'proof-reading', 'COM_EASYSOCIAL_BADGES_PROOF_READING_DESC', 'COM_EASYSOCIAL_BADGES_PROOF_READING_HOWTO', 'media/com_easysocial/apps/user/article/assets/badges/proof-reading.png', '2018-05-12 09:09:17', 1, 50, 'frequency', 0, 0, 0),
	(3, 'read.article', 'com_content', 'COM_EASYSOCIAL_BADGES_GREAT_READER', 'great-reader', 'COM_EASYSOCIAL_BADGES_GREAT_READER_DESC', 'COM_EASYSOCIAL_BADGES_GREAT_READER_HOWTO', 'media/com_easysocial/apps/user/article/assets/badges/great-reader.png', '2018-05-12 09:09:17', 1, 100, 'frequency', 0, 0, 0),
	(4, 'apps.install', 'com_easysocial', 'COM_EASYSOCIAL_BADGES_APPLICANT_TITLE', 'applicant', 'COM_EASYSOCIAL_BADGES_APPLICANT_DESC', 'COM_EASYSOCIAL_BADGES_APPLICANT_HOWTO', 'media/com_easysocial/badges/applicant.png', '2018-05-12 09:09:22', 1, 10, 'frequency', 0, 0, 0),
	(5, 'conversation.reply', 'com_easysocial', 'COM_EASYSOCIAL_BADGES_CHATTER_TITLE', 'chatter', 'COM_EASYSOCIAL_BADGES_CHATTER_DESC', 'COM_EASYSOCIAL_BADGES_CHATTER_HOWTO', 'media/com_easysocial/badges/chatter.png', '2018-05-12 09:09:22', 1, 150, 'frequency', 0, 0, 0),
	(6, 'conversation.create', 'com_easysocial', 'COM_EASYSOCIAL_BADGES_SOCIALIZER_TITLE', 'socializer', 'COM_EASYSOCIAL_BADGES_SOCIALIZER_DESC', 'COM_EASYSOCIAL_BADGES_SOCIALIZER_HOWTO', 'media/com_easysocial/badges/socializer.png', '2018-05-12 09:09:22', 1, 15, 'frequency', 0, 0, 0),
	(7, 'conversation.invite', 'com_easysocial', 'COM_EASYSOCIAL_BADGES_GOSSIPER_TITLE', 'gossiper', 'COM_EASYSOCIAL_BADGES_GOSSIPER_DESC', 'COM_EASYSOCIAL_BADGES_GOSSIPER_HOWTO', 'media/com_easysocial/badges/gossiper.png', '2018-05-12 09:09:22', 1, 10, 'frequency', 0, 0, 0),
	(8, 'conversation.leave', 'com_easysocial', 'COM_EASYSOCIAL_BADGES_LEAVER_TITLE', 'leaver', 'COM_EASYSOCIAL_BADGES_LEAVER_DESC', 'COM_EASYSOCIAL_BADGES_LEAVER_HOWTO', 'media/com_easysocial/badges/leaver.png', '2018-05-12 09:09:22', 1, 20, 'frequency', 0, 0, 0),
	(9, 'groups.discussion.liked', 'com_easysocial', 'COM_EASYSOCIAL_BADGES_GROUP_DISCUSSION_POST_LIKE', 'group-discuss-like', 'COM_EASYSOCIAL_BADGES_GROUP_DISCUSSION_POST_LIKE_DESC', 'COM_EASYSOCIAL_BADGES_GROUP_DISCUSSION_POST_LIKE_HOWTO', 'media/com_easysocial/badges/discussion-like.png', '2018-05-12 09:09:22', 1, 50, 'frequency', 0, 0, 0),
	(10, 'groups.discussion.reply.liked', 'com_easysocial', 'COM_EASYSOCIAL_BADGES_GROUP_DISCUSSION_REPLY_LIKE', 'group-discuss-reply-like', 'COM_EASYSOCIAL_BADGES_GROUP_DISCUSSION_REPLY_LIKE_DESC', 'COM_EASYSOCIAL_BADGES_GROUP_DISCUSSION_REPLY_LIKE_HOWTO', 'media/com_easysocial/badges/discussion-reply-like.png', '2018-05-12 09:09:22', 1, 100, 'frequency', 0, 0, 0),
	(11, 'followers.follow', 'com_easysocial', 'COM_EASYSOCIAL_BADGES_FOLLOWER_TITLE', 'follower', 'COM_EASYSOCIAL_BADGES_FOLLOWER_DESC', 'COM_EASYSOCIAL_BADGES_FOLLOWER_HOWTO', 'media/com_easysocial/badges/follower.png', '2018-05-12 09:09:22', 1, 60, 'frequency', 0, 0, 0),
	(12, 'followers.followed', 'com_easysocial', 'COM_EASYSOCIAL_BADGES_THOUGHT_LEADER_TITLE', 'thought-leader', 'COM_EASYSOCIAL_BADGES_THOUGHT_LEADER_DESC', 'COM_EASYSOCIAL_BADGES_THOUGHT_LEADER_HOWTO', 'media/com_easysocial/badges/thought-leader.png', '2018-05-12 09:09:22', 1, 60, 'frequency', 0, 0, 0),
	(13, 'friends.remove', 'com_easysocial', 'COM_EASYSOCIAL_BADGES_FRIEND_HATER_TITLE', 'friend-hater', 'COM_EASYSOCIAL_BADGES_FRIEND_HATER_DESC', 'COM_EASYSOCIAL_BADGES_FRIEND_HATER_HOWTO', 'media/com_easysocial/badges/friend-hater.png', '2018-05-12 09:09:22', 1, 10, 'frequency', 0, 0, 0),
	(14, 'friends.create', 'com_easysocial', 'COM_EASYSOCIAL_BADGES_FRIEND_SEEKER_TITLE', 'friend-seeker', 'COM_EASYSOCIAL_BADGES_FRIEND_SEEKER_DESC', 'COM_EASYSOCIAL_BADGES_FRIEND_SEEKER_HOWTO', 'media/com_easysocial/badges/friend-seeker.png', '2018-05-12 09:09:22', 1, 30, 'frequency', 0, 0, 0),
	(15, 'friends.list.create', 'com_easysocial', 'COM_EASYSOCIAL_BADGES_FRIEND_ORGANIZER_TITLE', 'friend-organizer', 'COM_EASYSOCIAL_BADGES_FRIEND_ORGANIZER_DESC', 'COM_EASYSOCIAL_BADGES_FRIEND_ORGANIZER_HOWTO', 'media/com_easysocial/badges/friend-organizer.png', '2018-05-12 09:09:22', 1, 10, 'frequency', 0, 0, 0),
	(16, 'friends.registered', 'com_easysocial', 'COM_EASYSOCIAL_BADGES_FRIEND_INVITED_TO_REGISTERED', 'invite-friend-register', 'COM_EASYSOCIAL_BADGES_FRIEND_INVITED_TO_REGISTERED_DESC', 'COM_EASYSOCIAL_BADGES_FRIEND_INVITED_TO_REGISTERED_HOWTO', 'media/com_easysocial/badges/invite-friend-register.png', '2018-05-12 09:09:22', 1, 10, 'frequency', 0, 0, 0),
	(17, 'photos.create', 'com_easysocial', 'COM_EASYSOCIAL_BADGES_PHOTOGENIC_TITLE', 'photogenic', 'COM_EASYSOCIAL_BADGES_PHOTOGENIC_DESC', 'COM_EASYSOCIAL_BADGES_PHOTOGENIC_HOWTO', 'media/com_easysocial/badges/photogenic.png', '2018-05-12 09:09:22', 1, 30, 'frequency', 0, 0, 0),
	(18, 'photos.browse', 'com_easysocial', 'COM_EASYSOCIAL_BADGES_JOURNALIST_TITLE', 'journalist', 'COM_EASYSOCIAL_BADGES_JOURNALIST_DESC', 'COM_EASYSOCIAL_BADGES_JOURNALIST_HOWTO', 'media/com_easysocial/badges/journalist.png', '2018-05-12 09:09:22', 1, 150, 'frequency', 0, 0, 0),
	(19, 'photos.tag', 'com_easysocial', 'COM_EASYSOCIAL_BADGES_PHOTO_TAGGER_TITLE', 'photo-tagger', 'COM_EASYSOCIAL_BADGES_PHOTO_TAGGER_DESC', 'COM_EASYSOCIAL_BADGES_PHOTO_TAGGER_HOWTO', 'media/com_easysocial/badges/photo-tagger.png', '2018-05-12 09:09:22', 1, 50, 'frequency', 0, 0, 0),
	(20, 'photos.superstar', 'com_easysocial', 'COM_EASYSOCIAL_BADGES_SUPER_STAR_TITLE', 'super-star', 'COM_EASYSOCIAL_BADGES_SUPER_STAR_DESC', 'COM_EASYSOCIAL_BADGES_SUPER_STAR_HOWTO', 'media/com_easysocial/badges/super-star.png', '2018-05-12 09:09:22', 1, 50, 'frequency', 0, 0, 0),
	(21, 'points.achieve', 'com_easysocial', 'COM_EASYSOCIAL_BADGES_POINTS_ACHIEVER', 'points-achiever', 'COM_EASYSOCIAL_BADGES_POINTS_ACHIEVER_DESC', 'COM_EASYSOCIAL_BADGES_POINTS_ACHIEVER_HOWTO', 'media/com_easysocial/badges/points-achiever.png', '2018-05-12 09:09:22', 1, 100, 'frequency', 0, 0, 0),
	(22, 'profile.view', 'com_easysocial', 'COM_EASYSOCIAL_BADGES_EXPLORER_TITLE', 'explorer', 'COM_EASYSOCIAL_BADGES_EXPLORER_DESC', 'COM_EASYSOCIAL_BADGES_EXPLORER_HOWTO', 'media/com_easysocial/badges/explorer.png', '2018-05-12 09:09:22', 1, 50, 'frequency', 0, 0, 0),
	(23, 'registration.create', 'com_easysocial', 'COM_EASYSOCIAL_BADGES_NEWBIE_TITLE', 'newbie', 'COM_EASYSOCIAL_BADGES_NEWBIE_DESC', 'COM_EASYSOCIAL_BADGES_NEWBIE_HOWTO', 'media/com_easysocial/badges/newbie.png', '2018-05-12 09:09:22', 1, 1, 'frequency', 0, 0, 0),
	(24, 'reports.create', 'com_easysocial', 'COM_EASYSOCIAL_BADGES_REPORTER_TITLE', 'reporter', 'COM_EASYSOCIAL_BADGES_REPORTER_DESC', 'COM_EASYSOCIAL_BADGES_REPORTER_HOWTO', 'media/com_easysocial/badges/reporter.png', '2018-05-12 09:09:22', 1, 20, 'frequency', 0, 0, 0),
	(25, 'search.create', 'com_easysocial', 'COM_EASYSOCIAL_BADGES_SEARCH_ENGINE_TITLE', 'search-engine', 'COM_EASYSOCIAL_BADGES_SEARCH_ENGINE_DESC', 'COM_EASYSOCIAL_BADGES_SEARCH_ENGINE_HOWTO', 'media/com_easysocial/badges/search-engine.png', '2018-05-12 09:09:22', 1, 50, 'frequency', 0, 0, 0),
	(26, 'story.create', 'com_easysocial', 'COM_EASYSOCIAL_BADGES_STORY_TELLER_TITLE', 'story-teller', 'COM_EASYSOCIAL_BADGES_STORY_TELLER_DESC', 'COM_EASYSOCIAL_BADGES_STORY_TELLER_HOWTO', 'media/com_easysocial/badges/story-teller.png', '2018-05-12 09:09:22', 1, 30, 'frequency', 0, 0, 0);
/*!40000 ALTER TABLE `gy3te_social_badges` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_badges_history
CREATE TABLE IF NOT EXISTS `gy3te_social_badges_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `badge_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `achieved` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_badges_history: 0 rows
DELETE FROM `gy3te_social_badges_history`;
/*!40000 ALTER TABLE `gy3te_social_badges_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_badges_history` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_badges_maps
CREATE TABLE IF NOT EXISTS `gy3te_social_badges_maps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `badge_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `custom_message` text NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `badge_id` (`badge_id`,`user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_badges_maps: 0 rows
DELETE FROM `gy3te_social_badges_maps`;
/*!40000 ALTER TABLE `gy3te_social_badges_maps` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_badges_maps` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_block_users
CREATE TABLE IF NOT EXISTS `gy3te_social_block_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `target_id` int(11) NOT NULL,
  `reason` text NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`,`target_id`),
  KEY `idx_userid` (`user_id`),
  KEY `idx_targetid` (`target_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_block_users: 0 rows
DELETE FROM `gy3te_social_block_users`;
/*!40000 ALTER TABLE `gy3te_social_block_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_block_users` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_bookmarks
CREATE TABLE IF NOT EXISTS `gy3te_social_bookmarks` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `uid` int(11) NOT NULL COMMENT 'The bookmarked item id',
  `type` varchar(255) NOT NULL COMMENT 'The bookmarked type',
  `created` datetime NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'The owner of the bookmarked item',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`type`),
  KEY `user_id` (`user_id`),
  KEY `idx_uid` (`uid`),
  KEY `idx_user_utype` (`uid`,`type`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_bookmarks: 0 rows
DELETE FROM `gy3te_social_bookmarks`;
/*!40000 ALTER TABLE `gy3te_social_bookmarks` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_bookmarks` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_broadcasts
CREATE TABLE IF NOT EXISTS `gy3te_social_broadcasts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `target_id` int(11) NOT NULL,
  `target_type` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `link` text NOT NULL,
  `state` tinyint(3) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `expiry_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_broadcast` (`target_id`,`target_type`,`state`,`created`),
  KEY `idx_created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_broadcasts: 0 rows
DELETE FROM `gy3te_social_broadcasts`;
/*!40000 ALTER TABLE `gy3te_social_broadcasts` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_broadcasts` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_clusters
CREATE TABLE IF NOT EXISTS `gy3te_social_clusters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `cluster_type` varchar(255) NOT NULL,
  `creator_type` varchar(255) NOT NULL,
  `creator_uid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(3) NOT NULL,
  `featured` tinyint(3) NOT NULL,
  `created` datetime NOT NULL,
  `params` text NOT NULL,
  `hits` int(11) NOT NULL,
  `type` tinyint(3) NOT NULL,
  `notification` tinyint(3) NOT NULL DEFAULT '1',
  `key` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `parent_type` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL COMMENT 'The longitude value of the event for proximity search purposes',
  `latitude` varchar(255) NOT NULL COMMENT 'The latitude value of the event for proximity search purposes',
  `address` text NOT NULL COMMENT 'The full address value of the event for displaying purposes',
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `featured` (`featured`),
  KEY `idx_state` (`state`),
  KEY `idx_clustertype` (`cluster_type`),
  KEY `idx_user_cluster` (`creator_uid`,`creator_type`(64),`cluster_type`(64))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_clusters: 0 rows
DELETE FROM `gy3te_social_clusters`;
/*!40000 ALTER TABLE `gy3te_social_clusters` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_clusters` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_clusters_categories
CREATE TABLE IF NOT EXISTS `gy3te_social_clusters_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `parent_id` int(11) DEFAULT '0',
  `container` tinyint(3) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `created` datetime NOT NULL,
  `state` tinyint(3) NOT NULL,
  `uid` int(11) NOT NULL COMMENT 'The creator of the category',
  `ordering` tinyint(3) NOT NULL,
  `lft` int(11) unsigned DEFAULT '0',
  `rgt` int(11) unsigned DEFAULT '0',
  `site_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `idx_parentid` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_clusters_categories: 13 rows
DELETE FROM `gy3te_social_clusters_categories`;
/*!40000 ALTER TABLE `gy3te_social_clusters_categories` DISABLE KEYS */;
INSERT INTO `gy3te_social_clusters_categories` (`id`, `type`, `title`, `alias`, `parent_id`, `container`, `description`, `created`, `state`, `uid`, `ordering`, `lft`, `rgt`, `site_id`) VALUES
	(1, 'group', 'General', 'general', 0, 0, 'General groups', '2018-05-12 09:09:25', 1, 48, 1, 1, 2, NULL),
	(2, 'group', 'Automobile', 'automobile', 0, 0, 'Cars, motors, vehicle and all things related to automobile.', '2018-05-12 09:09:25', 1, 48, 2, 3, 4, NULL),
	(3, 'group', 'Technology', 'technology', 0, 0, 'Multimedia, IT, and all the tech', '2018-05-12 09:09:25', 1, 48, 3, 5, 6, NULL),
	(4, 'group', 'Business', 'business', 0, 0, 'Let\'s talk business', '2018-05-12 09:09:25', 1, 48, 4, 7, 8, NULL),
	(5, 'group', 'Music', 'music', 0, 0, 'Pop, rock, electronic and all', '2018-05-12 09:09:25', 1, 48, 5, 9, 10, NULL),
	(6, 'page', 'General', 'general-2', 0, 0, 'General pages', '2018-05-12 09:09:25', 1, 48, 1, 1, 2, NULL),
	(7, 'page', 'Automobile', 'automobile-2', 0, 0, 'Cars, motors, vehicle and all things related to automobile.', '2018-05-12 09:09:25', 1, 48, 2, 3, 4, NULL),
	(8, 'page', 'Brand or Product', 'brand', 0, 0, 'Page that can advertise your brand and product', '2018-05-12 09:09:25', 1, 48, 3, 5, 6, NULL),
	(9, 'page', 'Business', 'business-2', 0, 0, 'Promote a page to boost your business', '2018-05-12 09:09:25', 1, 48, 4, 7, 8, NULL),
	(10, 'page', 'Artist or Band', 'artist', 0, 0, 'Pop, rock, public figure and all', '2018-05-12 09:09:25', 1, 48, 5, 9, 10, NULL),
	(11, 'page', 'Company or Organization', 'organization', 0, 0, 'Institution or Organization related page', '2018-05-12 09:09:25', 1, 48, 6, 11, 12, NULL),
	(12, 'event', 'General', 'general-2-3', 0, 0, 'General events', '2018-05-12 09:09:25', 1, 48, 1, 1, 2, NULL),
	(13, 'event', 'Meeting', 'meeting', 0, 0, 'Weekly meeting events.', '2018-05-12 09:09:25', 1, 48, 2, 3, 4, NULL);
/*!40000 ALTER TABLE `gy3te_social_clusters_categories` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_clusters_categories_access
CREATE TABLE IF NOT EXISTS `gy3te_social_clusters_categories_access` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'create',
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`,`profile_id`),
  KEY `category_id_2` (`category_id`,`profile_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_clusters_categories_access: 0 rows
DELETE FROM `gy3te_social_clusters_categories_access`;
/*!40000 ALTER TABLE `gy3te_social_clusters_categories_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_clusters_categories_access` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_clusters_news
CREATE TABLE IF NOT EXISTS `gy3te_social_clusters_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cluster_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `content_type` varchar(65) NOT NULL DEFAULT 'tinymce',
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `state` tinyint(3) NOT NULL,
  `hits` int(11) NOT NULL,
  `comments` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cluster_id` (`cluster_id`,`created_by`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_clusters_news: 0 rows
DELETE FROM `gy3te_social_clusters_news`;
/*!40000 ALTER TABLE `gy3te_social_clusters_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_clusters_news` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_clusters_nodes
CREATE TABLE IF NOT EXISTS `gy3te_social_clusters_nodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cluster_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `state` tinyint(4) NOT NULL,
  `owner` tinyint(3) NOT NULL,
  `admin` tinyint(3) NOT NULL,
  `invited_by` int(11) NOT NULL,
  `reminder_sent` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cluster_id` (`cluster_id`,`state`),
  KEY `invited_by` (`invited_by`),
  KEY `idx_clusters_nodes_uid` (`uid`),
  KEY `idx_clusters_nodes_user` (`uid`,`state`,`created`),
  KEY `idx_members` (`cluster_id`,`type`,`state`),
  KEY `idx_reminder_sent` (`reminder_sent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_clusters_nodes: 0 rows
DELETE FROM `gy3te_social_clusters_nodes`;
/*!40000 ALTER TABLE `gy3te_social_clusters_nodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_clusters_nodes` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_clusters_reject
CREATE TABLE IF NOT EXISTS `gy3te_social_clusters_reject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` text NOT NULL,
  `cluster_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_cluster_id` (`cluster_id`),
  KEY `idx_created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_clusters_reject: 0 rows
DELETE FROM `gy3te_social_clusters_reject`;
/*!40000 ALTER TABLE `gy3te_social_clusters_reject` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_clusters_reject` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_comments
CREATE TABLE IF NOT EXISTS `gy3te_social_comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `element` varchar(255) NOT NULL,
  `uid` bigint(20) NOT NULL,
  `comment` text CHARACTER SET utf8mb4 NOT NULL,
  `stream_id` bigint(20) DEFAULT '0',
  `created_by` bigint(20) unsigned DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `depth` bigint(10) DEFAULT '0',
  `parent` bigint(20) DEFAULT '0',
  `child` bigint(20) DEFAULT '0',
  `lft` bigint(20) DEFAULT '0',
  `rgt` bigint(20) DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `social_comments_uid` (`uid`),
  KEY `social_comments_type` (`element`),
  KEY `social_comments_createdby` (`created_by`),
  KEY `social_comments_content_type` (`element`,`uid`),
  KEY `social_comments_content_type_by` (`element`,`uid`,`created_by`),
  KEY `social_comments_content_parent` (`element`,`uid`,`parent`),
  KEY `idx_comment_batch` (`stream_id`,`element`,`uid`),
  KEY `idx_comment_stream_id` (`stream_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_comments: 0 rows
DELETE FROM `gy3te_social_comments`;
/*!40000 ALTER TABLE `gy3te_social_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_comments` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_config
CREATE TABLE IF NOT EXISTS `gy3te_social_config` (
  `type` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `value_binary` blob,
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_config: 3 rows
DELETE FROM `gy3te_social_config`;
/*!40000 ALTER TABLE `gy3te_social_config` DISABLE KEYS */;
INSERT INTO `gy3te_social_config` (`type`, `value`, `value_binary`) VALUES
	('dbversion', '2.1.9', NULL),
	('site', '{"alerts":{"paths":["admin","site","apps","fields","plugins","modules"]},"buttons":{"primary":"#428bca","success":"#39b54a","standard":"#333333","danger":"#d9534f"},"general":{"key":"a3937aaff2bb7aab360532b869945b87","ajaxindex":true,"environment":"static","jquery":true,"mode":"compressed","inline":false,"super":false,"profiler":false,"logger":false,"automatic":{"purge":true},"site":{"loginemail":true,"login":"","logout":"","lockdown":{"enabled":false,"registration":false},"twofactor":false},"url":{"purge":true,"interval":"1"},"cron":{"secure":false,"key":"","limit":20},"location":{"language":"en","proximity":{"unit":"mile"}},"layout":{"toolbar":true,"toolbarguests":true,"toolbarsearch":true,"toolbarbrowse":true},"cdn":{"url":"","passive":false}},"pages":{"enabled":true,"editor":"none","invite":{"nonfriends":false},"item":{"display":"timeline"},"category":{"header":true},"layout":{"description":true,"listingdesc":true},"feed":{"includeadmin":true},"sharing":{"showprivate":true}},"groups":{"enabled":true,"editor":"none","invite":{"nonfriends":false},"item":{"display":"timeline"},"category":{"header":true},"layout":{"hits":true,"description":true,"listingdesc":true},"feed":{"includeadmin":true},"sharing":{"showprivate":true}},"antispam":{"recaptcha":{"public":"","private":""},"akismet":{"key":"dff980f9f600"},"mollom":{"public":"","private":"","servers":""}},"conversations":{"enabled":1,"akismet":1,"typing":1,"archiving":1,"editor":"","locations":1,"multiple":1,"nonfriend":false,"entersubmit":false,"mass":{"enabled":false},"attachments":{"enabled":1,"types":["txt","jpg","png","gif","zip","pdf"],"maxsize":3,"storage":"\\/media\\/com_easysocial\\/uploads\\/conversations"},"sorting":"lastreplied","ordering":"desc","layout":{"intro":200},"conversekit":{"links":true}},"email":{"html":1,"heading":{"company":"Stack Ideas Sdn Bhd"}},"links":{"parser":{"validate":false,"tld":"rocks,aero,asia,berlin,biz,cat,com,blog,coop,deals,discount,edu,expert,gov,guru,club,info,int,jobs,mil,mobi,museum,name,net,org,pro,tel,travel,shopping,ac,ad,ae,af,ag,ai,al,am,an,ao,aq,ar,as,at,au,aw,ax,az,ba,bb,bd,be,bf,bg,bh,bi,bj,bm,bn,bo,br,bs,bt,bv,bw,by,bz,ca,cc,cd,cf,cg,ch,ci,ck,cl,cm,cn,co,cr,cu,cv,cx,cy,cz,cz,de,dj,dk,dm,do,dz,ec,ee,eg,er,es,et,eu,fi,fj,fk,fm,fo,fr,ga,gb,gd,ge,gf,gg,gh,gi,gl,gm,gn,gp,gq,gr,gs,gt,gu,gw,gy,hk,hm,hn,hr,ht,hu,id,ie,il,im,in,io,iq,ir,is,it,je,jm,jo,jp,ke,kg,kh,ki,km,kn,kp,kr,kw,ky,kz,la,lb,lc,li,lk,lr,ls,lt,lu,lv,ly,ma,mc,md,me,mg,mh,mk,ml,mn,mn,mo,mp,mr,ms,mt,mu,mv,mw,mx,my,mz,na,nc,ne,nf,ng,ni,nl,no,np,nr,nu,nz,nom,pa,pe,pf,pg,ph,pk,pl,pm,pn,pr,ps,pt,pw,py,qa,re,ra,rs,ru,ro,rw,sa,sb,sc,sd,se,sg,sh,si,sj,sj,sk,sl,sm,sn,so,sr,st,su,sv,sy,sz,tc,td,tf,tg,th,tj,tk,tl,tm,tn,to,tp,tr,tt,tv,tw,tz,ua,ug,uk,us,uy,uz,va,vc,ve,vg,vi,vn,vu,wf,ws,ye,yt,yu,za,zm,zw,arpa,guru,live,today,bio,xxx"},"cache":{"images":false,"location":"\\/media\\/com_easysocial\\/cache\\/links","data":true,"cleanup":{"enabled":true,"duration":3}}},"login":{"custom":{"image":false}},"notifications":{"general":{"pagination":10},"broadcast":{"popup":true,"interval":15,"sticky":true,"period":8},"system":{"autoread":false,"enabled":true,"polling":30},"friends":{"enabled":true,"polling":30},"conversation":{"enabled":true,"polling":30},"cleanup":{"enabled":false,"duration":6},"polling":{"interval":2}},"reports":{"enabled":true,"automation":true,"threshold":30,"maxip":5,"guests":false,"features":{"stream":true,"user":true,"comments":true},"notifications":{"moderators":true,"custom":false,"emails":""}},"storage":{"avatar":"joomla","photos":"joomla","files":"joomla","links":"joomla","videos":"joomla","audios":"joomla","joomla":{"limit":10},"amazon":{"access":"","secret":"","bucket":"","ssl":true,"limit":10,"upload":{"photo":false},"delete":true,"region":"","class":""}},"photos":{"enabled":true,"quality":80,"downloads":true,"original":true,"location":true,"import":{"exif":true},"popup":{"default":true},"storage":{"container":"\\/media\\/com_easysocial\\/photos"},"uploader":{"maxsize":"32","quality":100},"pagination":{"photo":10,"album":10},"exif":["aperture","iso","exposure","copyright","camera","focalLength"],"layout":{"size":"large","mode":"cover","pattern":"tile","threshold":128,"ratio":"4x3","sidebarlimit":20,"ordering":"desc"},"gif":{"enabled":false}},"avatars":{"storage":{"container":"\\/media\\/com_easysocial\\/avatars","default":"defaults","defaults":{"profiles":"profiles"},"user":"users","group":"group","event":"event","page":"page","clusters":"clusters","profiles":"profiles"},"default":{"user":{"small":"\\/media\\/com_easysocial\\/defaults\\/avatars\\/user\\/small.png","medium":"\\/media\\/com_easysocial\\/defaults\\/avatars\\/user\\/medium.png","large":"\\/media\\/com_easysocial\\/defaults\\/avatars\\/user\\/large.png","square":"\\/media\\/com_easysocial\\/defaults\\/avatars\\/user\\/square.png"},"profiles":{"small":"\\/media\\/com_easysocial\\/defaults\\/avatars\\/profiles\\/small.png","medium":"\\/media\\/com_easysocial\\/defaults\\/avatars\\/profiles\\/medium.png","large":"\\/media\\/com_easysocial\\/defaults\\/avatars\\/profiles\\/large.png","square":"\\/media\\/com_easysocial\\/defaults\\/avatars\\/profiles\\/square.png"},"group":{"small":"\\/media\\/com_easysocial\\/defaults\\/avatars\\/group\\/small.png","medium":"\\/media\\/com_easysocial\\/defaults\\/avatars\\/group\\/medium.png","large":"\\/media\\/com_easysocial\\/defaults\\/avatars\\/group\\/large.png","square":"\\/media\\/com_easysocial\\/defaults\\/avatars\\/group\\/square.png"},"page":{"small":"\\/media\\/com_easysocial\\/defaults\\/avatars\\/page\\/small.png","medium":"\\/media\\/com_easysocial\\/defaults\\/avatars\\/page\\/medium.png","large":"\\/media\\/com_easysocial\\/defaults\\/avatars\\/page\\/large.png","square":"\\/media\\/com_easysocial\\/defaults\\/avatars\\/page\\/square.png"},"event":{"small":"\\/media\\/com_easysocial\\/defaults\\/avatars\\/event\\/small.png","medium":"\\/media\\/com_easysocial\\/defaults\\/avatars\\/event\\/medium.png","large":"\\/media\\/com_easysocial\\/defaults\\/avatars\\/event\\/large.png","square":"\\/media\\/com_easysocial\\/defaults\\/avatars\\/event\\/square.png"},"clusterscategory":{"small":"\\/media\\/com_easysocial\\/defaults\\/avatars\\/clusterscategory\\/small.png","medium":"\\/media\\/com_easysocial\\/defaults\\/avatars\\/clusterscategory\\/medium.png","large":"\\/media\\/com_easysocial\\/defaults\\/avatars\\/clusterscategory\\/large.png","square":"\\/media\\/com_easysocial\\/defaults\\/avatars\\/clusterscategory\\/square.png"}}},"connector":{"client":"curl"},"covers":{"storage":{"container":"\\/media\\/com_easysocial\\/covers","default":"defaults","defaults":{"profiles":"profiles"},"user":"users","group":"group","page":"page","event":"event","profiles":"profiles","clusters":"clusters"},"default":{"user":{"default":"\\/media\\/com_easysocial\\/defaults\\/covers\\/user\\/default.jpg"},"group":{"default":"\\/media\\/com_easysocial\\/defaults\\/covers\\/group\\/default.jpg"},"page":{"default":"\\/media\\/com_easysocial\\/defaults\\/covers\\/page\\/default.jpg"},"event":{"default":"\\/media\\/com_easysocial\\/defaults\\/covers\\/event\\/default.jpg"}}},"files":{"storage":{"container":"\\/media\\/com_easysocial\\/files","fields":{"container":"fields","user":"user"},"conversations":{"container":"conversations"},"group":{"container":"groups"},"page":{"container":"pages"},"event":{"container":"events"},"user":{"container":"users"},"comments":{"container":"comments"}}},"friends":{"enabled":true,"invites":{"enabled":true},"stream":{"create":1}},"lists":{"display":{"limit":5},"stream":{"create":1}},"apps":{"browser":true,"tnc":{"required":true,"message":"COM_EASYSOCIAL_APPS_TNC"}},"layout":{"dashboard":{"apps":{"limit":5},"lists":{"limit":5}},"leaderboard":{"limit":20},"profile":{"apps":{"limit":15}}},"oauth":{"twitter":{"app":"","secret":"","registration":{"enabled":false,"type":"simplified","profile":"1","avatar":true,"cover":true,"tweets":true,"totalTweets":true},"card":{"enabled":false,"type":"summary_large_image"}},"facebook":{"app":"","secret":"","pull":true,"push":true,"opengraph":{"enabled":true},"jfbconnect":{"enabled":false},"registration":{"enabled":false,"type":"simplified","profile":1,"avatar":true,"cover":true,"timeline":true,"totalTimeline":1},"username":"email","autologin":false,"autolink":false},"myspace":{"app":"","secret":""}},"leaderboard":{"listings":{"admin":false}},"badges":{"enabled":true,"storage":"\\/media\\/com_easysocial\\/badges","paths":["admin","site","apps","fields","plugins","modules"]},"followers":{"enabled":true},"points":{"enabled":true,"history":{"limit":60},"paths":["admin","site","apps","fields","plugins","modules"]},"polls":{"enabled":true},"welcome":{"enabled":true,"text":"COM_EASYSOCIAL_WELCOME_MESSAGE"},"profiles":{"stream":{"create":1,"update":1}},"registrations":{"enabled":1,"emailasusername":0,"change.selection":1,"email":{"password":true,"reconfirmation":false},"profiles":{"avatar":true,"showUsers":true,"usersCount":20,"showType":true},"steps":{"progress":1,"heading":1},"mini":{"mode":"quick","profile":"default"},"layout":{"avatar":false,"users":true}},"stream":{"pushtop":{"reactions":true},"clusters":{"private":true},"translations":{"azure":false,"azurekey":"","explicit":false},"timestamp":{"style":"elapsed","format":"Y-m-d H:i"},"aggregation":{"enabled":1,"duration":15},"rss":{"enabled":true},"bookmarks":{"enabled":true},"content":{"nofollow":false,"truncate":false,"truncatelength":250},"archive":{"enabled":true,"duration":6},"pin":{"enabled":true},"comments":{"enabled":true,"guestview":true},"follow":{"enabled":true},"sharing":{"enabled":true},"pagination":{"style":"loadmore","autoload":true,"pagelimit":10,"ordering":"modified"},"story":{"mentions":true,"moods":true,"location":true,"entertosubmit":false},"updates":{"enabled":true,"interval":30},"exclude":{"admin":false},"actions":["likes","comments","repost"]},"activity":{"logs":{"enabled":false},"pagination":{"max":5,"limit":10}},"story":{"friends_enabled":1},"location":{"coords":"40.702147,-74.015794","provider":"maps","foursquare":{"clientid":"","clientsecret":""},"places":{"api":""},"maps":{"api":"","secure":{"api":false,"browser":"","server":""}}},"toolbar":{"display":true},"theme":{"site":"wireframe","site_base":"wireframe","admin":"default","admin_base":"default","apps":"default","fields":"default","compiler":{"mode":"off","use_absolute_uri":0,"allow_template_override":1}},"uploader":{"storage":{"container":"\\/media\\/com_easysocial\\/tmp"}},"users":{"change_username":1,"display":{"profiletype":true},"displayName":"username","avatarUseName":true,"avatarColors":"#F44336, #E91E63, #9C27B0, #03A9F4, #673AB7, #3F51B5, #2196F3, #00BCD4, #009688, #4CAF50, #8BC34A, #CDDC39, #FFEB3B, #FFC107, #FF9800, #FF5722, #795548, #9E9E9E, #607D8B, #000000","avatarFontColor":"#FFFFFF","aliasName":"username","deleteLogic":"unpublish","simpleUrl":false,"avatarWebcam":true,"blocking":{"enabled":true},"reminder":{"enabled":false,"duration":30},"dashboard":{"start":"me","sidebar":"left","everyone":true,"appfilters":true,"customfilters":false,"groups":true,"groupslimit":5,"events":true,"eventslimit":5,"pages":true,"pageslimit":5,"guest":true},"stream":{"login":1,"logout":1,"friend":1,"following":1,"profile":1},"listings":{"admin":false,"sorting":"latest","esadadmin":true,"profilescount":false},"layout":{"cover":true,"profiletitle":true,"badges":true,"gender":true,"age":true,"address":true,"apps":false,"sidebarapps":true,"lastonline":false},"indexer":{"name":"realname","email":false,"privacy":true},"profile":{"display":"timeline","switchgroup":false,"sidebar":"left"},"verification":{"enabled":true,"requests":true},"privacy":{"field":false},"online":{"state":true}},"sharing":{"enabled":1,"vendors":{"email":1,"facebook":1,"twitter":1,"google":1,"live":1,"linkedin":1,"myspace":1,"vk":1,"stumbleupon":1,"digg":1,"tumblr":1,"evernote":1,"reddit":1,"delicious":1},"email":{"limit":10}},"access":{"paths":["admin","site","apps","fields","plugins","modules"]},"comments":{"reply":0,"maxlevel":3,"limit":5,"attachments":true,"resize":{"enabled":false,"width":"1024","height":"768"},"storage":"\\/media\\/com_easysocial\\/comments","submit":1,"smileys":true},"user":{"completeprofile":{"required":false,"strict":true,"action":"info"}},"events":{"showenddate":0,"startofweek":1,"enabled":true,"recurringlimit":50,"editor":"none","ical":true,"invite":{"allowmembers":true,"nonfriends":false},"timeformat":"12h","listing":{"includefeatured":false,"includegroup":false,"includepage":false},"item":{"display":"timeline"},"layout":{"hits":true,"description":true,"listingdesc":true,"address":true,"seatsleft":true,"categoryheaders":true,"timezone":false,"eventtime":false},"feed":{"includeadmin":true},"reminder":{"enabled":true},"sharing":{"showprivate":true}},"video":{"enabled":true,"uploads":false,"embeds":true,"ffmpeg":"\\/opt\\/local\\/bin\\/ffmpeg","autoencode":true,"audiobitrate":"64k","size":"720","storage":{"container":"\\/media\\/com_easysocial\\/videos"},"layout":{"item":{"embed":true,"recent":true,"total":5,"hits":true,"duration":true,"details":true,"tags":true},"player":{"logo":false,"watermark":false,"watermarkposition":"top-right"}}},"audio":{"enabled":true,"uploads":false,"embeds":true,"allowencode":true,"encoder":"\\/opt\\/local\\/bin\\/ffmpeg","downloads":true,"autoencode":true,"autoimportdata":true,"bitrate":"64k","storage":{"container":"\\/media\\/com_easysocial\\/audios"},"layout":{"item":{"recent":true,"total":5,"hits":true,"duration":true,"details":true,"tags":true}}},"privacy":{"enabled":true},"mobileshortcut":{"enabled":true,"name":"Social Network for Joomla!","shortname":"EasySocial"},"zeroasplural":{"enabled":false}}', NULL),
	('scriptversion', '2.1.9', NULL);
/*!40000 ALTER TABLE `gy3te_social_config` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_conversations
CREATE TABLE IF NOT EXISTS `gy3te_social_conversations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT '',
  `created` datetime NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `lastreplied` datetime NOT NULL,
  `type` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_type` (`type`),
  KEY `idx_created_by` (`created_by`),
  KEY `idx_created_by_type` (`created_by`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_conversations: 0 rows
DELETE FROM `gy3te_social_conversations`;
/*!40000 ALTER TABLE `gy3te_social_conversations` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_conversations` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_conversations_message
CREATE TABLE IF NOT EXISTS `gy3te_social_conversations_message` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `conversation_id` bigint(20) NOT NULL,
  `type` varchar(200) NOT NULL,
  `message` text CHARACTER SET utf8mb4,
  `created` datetime NOT NULL,
  `created_by` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `conversation_id` (`conversation_id`),
  KEY `created_by` (`created_by`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_conversations_message: 0 rows
DELETE FROM `gy3te_social_conversations_message`;
/*!40000 ALTER TABLE `gy3te_social_conversations_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_conversations_message` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_conversations_message_maps
CREATE TABLE IF NOT EXISTS `gy3te_social_conversations_message_maps` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `conversation_id` bigint(20) NOT NULL,
  `message_id` bigint(20) NOT NULL,
  `isread` tinyint(1) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 - publish, 2 - archive, 3 - trash',
  PRIMARY KEY (`id`),
  KEY `node_id` (`user_id`),
  KEY `conversation_id` (`conversation_id`),
  KEY `message_id` (`message_id`),
  KEY `idx_user_conversation` (`user_id`,`state`,`conversation_id`,`message_id`),
  KEY `idx_user_conversation_isread` (`user_id`,`state`,`isread`,`conversation_id`,`message_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_conversations_message_maps: 0 rows
DELETE FROM `gy3te_social_conversations_message_maps`;
/*!40000 ALTER TABLE `gy3te_social_conversations_message_maps` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_conversations_message_maps` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_conversations_participants
CREATE TABLE IF NOT EXISTS `gy3te_social_conversations_participants` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `conversation_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `state` tinyint(3) NOT NULL,
  `typing` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `social_conversation_maps_conversation_id` (`conversation_id`),
  KEY `idx_userid` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_conversations_participants: 0 rows
DELETE FROM `gy3te_social_conversations_participants`;
/*!40000 ALTER TABLE `gy3te_social_conversations_participants` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_conversations_participants` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_covers
CREATE TABLE IF NOT EXISTS `gy3te_social_covers` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary ID',
  `uid` int(11) NOT NULL COMMENT 'Node''s ID',
  `type` varchar(255) NOT NULL,
  `photo_id` int(13) NOT NULL COMMENT 'If the node is using a default avatar, this field will be populated with an id.',
  `cover_id` int(11) NOT NULL,
  `x` varchar(255) NOT NULL,
  `y` varchar(255) NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `avatar_id` (`photo_id`),
  KEY `idx_uid` (`uid`),
  KEY `idx_uid_type` (`uid`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_covers: 0 rows
DELETE FROM `gy3te_social_covers`;
/*!40000 ALTER TABLE `gy3te_social_covers` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_covers` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_default_avatars
CREATE TABLE IF NOT EXISTS `gy3te_social_default_avatars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `title` text,
  `created` datetime NOT NULL,
  `state` tinyint(3) NOT NULL,
  `large` text NOT NULL,
  `medium` text NOT NULL,
  `small` text NOT NULL,
  `square` text NOT NULL,
  `default` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`type`),
  KEY `system` (`default`),
  KEY `state` (`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_default_avatars: 0 rows
DELETE FROM `gy3te_social_default_avatars`;
/*!40000 ALTER TABLE `gy3te_social_default_avatars` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_default_avatars` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_default_covers
CREATE TABLE IF NOT EXISTS `gy3te_social_default_covers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `title` text,
  `created` datetime NOT NULL,
  `state` tinyint(3) NOT NULL,
  `large` text NOT NULL,
  `small` text NOT NULL,
  `default` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`type`),
  KEY `system` (`default`),
  KEY `state` (`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_default_covers: 0 rows
DELETE FROM `gy3te_social_default_covers`;
/*!40000 ALTER TABLE `gy3te_social_default_covers` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_default_covers` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_discussions
CREATE TABLE IF NOT EXISTS `gy3te_social_discussions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'This determines if this is a reply to a discussion. If it is a reply, it should contain the parent''s id here.',
  `uid` int(11) NOT NULL COMMENT 'The unique id this discussion is associated to. For example, if it is associated with a group, it should store the group''s id.',
  `type` varchar(255) NOT NULL COMMENT 'The unique type this discussion is associated to. For example, if it is associated with a group, it should store the type as group',
  `answer_id` int(11) NOT NULL COMMENT 'This is only applicable to main question. This should contain the reference to the discussion that is an answer.',
  `last_reply_id` int(11) NOT NULL COMMENT 'Determines the last reply for the discussion',
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `content_type` varchar(65) DEFAULT 'bbcode',
  `created_by` int(11) NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0' COMMENT 'Stores the total views for this discussion.',
  `state` tinyint(3) NOT NULL,
  `created` datetime NOT NULL,
  `last_replied` datetime NOT NULL COMMENT 'Stores the last replied date time.',
  `votes` int(11) NOT NULL COMMENT 'Determines the vote count for this discussion.',
  `total_replies` int(11) NOT NULL DEFAULT '0' COMMENT 'This is to denormalize the reply count of a discussion.',
  `lock` tinyint(3) NOT NULL DEFAULT '0' COMMENT 'Determines if this discussion is locked',
  `params` text NOT NULL COMMENT 'Stores additional raw parameters for the discussion that doesn''t need to be indexed',
  PRIMARY KEY (`id`),
  KEY `created_by` (`created_by`),
  KEY `uid_2` (`uid`,`type`),
  KEY `id` (`id`,`parent_id`),
  KEY `id_2` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_discussions: 0 rows
DELETE FROM `gy3te_social_discussions`;
/*!40000 ALTER TABLE `gy3te_social_discussions` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_discussions` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_discussions_files
CREATE TABLE IF NOT EXISTS `gy3te_social_discussions_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_id` int(11) NOT NULL,
  `discussion_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `file_id` (`file_id`,`discussion_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_discussions_files: 0 rows
DELETE FROM `gy3te_social_discussions_files`;
/*!40000 ALTER TABLE `gy3te_social_discussions_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_discussions_files` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_events_meta
CREATE TABLE IF NOT EXISTS `gy3te_social_events_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cluster_id` int(11) NOT NULL COMMENT 'The event cluster id',
  `start` datetime NOT NULL COMMENT 'The start datetime of the event',
  `end` datetime NOT NULL COMMENT 'The end datetime of the event',
  `timezone` varchar(255) NOT NULL COMMENT 'The optional timezone of the event for datetime calculation',
  `all_day` tinyint(3) NOT NULL COMMENT 'Flag if this event is an all day event',
  `group_id` int(11) NOT NULL COMMENT 'The group id if this is a group event',
  `page_id` int(11) NOT NULL COMMENT 'The page id if this is a page event',
  `reminder` int(11) DEFAULT '0' COMMENT 'the number of days before the actual event date',
  `start_gmt` datetime NOT NULL COMMENT 'The GMT start datetime of the event',
  `end_gmt` datetime NOT NULL COMMENT 'The GMT end datetime of the event',
  PRIMARY KEY (`id`),
  KEY `cluster_id` (`cluster_id`),
  KEY `idx_reminder` (`reminder`),
  KEY `idx_upcoming_reminder` (`reminder`,`start`),
  KEY `idx_start` (`start`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_events_meta: 0 rows
DELETE FROM `gy3te_social_events_meta`;
/*!40000 ALTER TABLE `gy3te_social_events_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_events_meta` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_feeds
CREATE TABLE IF NOT EXISTS `gy3te_social_feeds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `url` text NOT NULL,
  `state` tinyint(3) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_feeds: 0 rows
DELETE FROM `gy3te_social_feeds`;
/*!40000 ALTER TABLE `gy3te_social_feeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_feeds` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_fields
CREATE TABLE IF NOT EXISTS `gy3te_social_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unique_key` text NOT NULL,
  `app_id` int(11) NOT NULL,
  `step_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `display_title` tinyint(3) NOT NULL,
  `description` text NOT NULL,
  `display_description` tinyint(3) NOT NULL,
  `default` text NOT NULL,
  `validation` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '1',
  `searchable` tinyint(4) NOT NULL DEFAULT '1',
  `required` tinyint(4) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `core` tinyint(4) NOT NULL DEFAULT '0',
  `visible_registration` tinyint(3) NOT NULL,
  `visible_edit` tinyint(3) NOT NULL,
  `visible_display` tinyint(3) NOT NULL,
  `friend_suggest` tinyint(4) DEFAULT '0',
  `is_conditional` tinyint(3) DEFAULT '0',
  `conditions` text,
  `visible_mini_registration` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `field_id` (`app_id`),
  KEY `required` (`required`),
  KEY `searchable` (`searchable`),
  KEY `state` (`state`),
  KEY `step_id` (`step_id`),
  KEY `friend_suggest` (`friend_suggest`),
  KEY `idx_unique_key` (`unique_key`(64)),
  KEY `idx_advanced_search1` (`searchable`,`state`,`ordering`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_fields: 83 rows
DELETE FROM `gy3te_social_fields`;
/*!40000 ALTER TABLE `gy3te_social_fields` DISABLE KEYS */;
INSERT INTO `gy3te_social_fields` (`id`, `unique_key`, `app_id`, `step_id`, `title`, `display_title`, `description`, `display_description`, `default`, `validation`, `state`, `searchable`, `required`, `params`, `ordering`, `core`, `visible_registration`, `visible_edit`, `visible_display`, `friend_suggest`, `is_conditional`, `conditions`, `visible_mini_registration`) VALUES
	(1, 'HEADER', 84, 1, 'COM_EASYSOCIAL_FIELDS_PROFILE_DEFAULT_ACCOUNT_INFORMATION', 1, 'COM_EASYSOCIAL_FIELDS_PROFILE_DEFAULT_ACCOUNT_INFORMATION_DESC', 1, '0', '', 1, 0, 0, '{"id":"5af6af44408f5","app_id":"84","step_id":null,"validation":null,"state":null,"params":"[]","ordering":0,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"header","data":null,"raw":null,"privacy":0}', 0, 0, 1, 1, 0, 0, 0, NULL, 0),
	(2, 'JOOMLA_FULLNAME', 88, 1, 'COM_EASYSOCIAL_FIELDS_PROFILE_DEFAULT_YOUR_NAME', 1, 'COM_EASYSOCIAL_FIELDS_PROFILE_DEFAULT_YOUR_NAME_DESC', 1, '0', '', 1, 1, 1, '{"id":"5af6af4445538","app_id":"88","step_id":null,"validation":null,"state":null,"params":"[]","ordering":1,"core":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"joomla_fullname","data":null,"raw":null,"format":1,"store_format":1,"max":0,"regex_validate":false,"regex_format":"[A-Za-z0-9_]","username_fallback":true,"privacy":0}', 1, 1, 1, 1, 1, 0, 0, NULL, 0),
	(3, 'JOOMLA_USERNAME', 96, 1, 'COM_EASYSOCIAL_FIELDS_PROFILE_DEFAULT_DESIRED_USERNAME', 1, 'COM_EASYSOCIAL_FIELDS_PROFILE_DEFAULT_DESIRED_USERNAME_DESC', 1, 'COM_EASYSOCIAL_FIELDS_PROFILE_DEFAULT_DESIRED_USERNAME_DEFAULT', '', 1, 0, 1, '{"id":"5af6af44458bc","app_id":"96","step_id":null,"validation":null,"state":null,"params":"[]","ordering":2,"core":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"joomla_username","data":null,"raw":null,"check_username":true,"disallowed":"administrator,admin","regex_validate":false,"regex_format":"[A-Za-z0-9_]","min":4,"privacy":0,"allow_edit_change":false}', 2, 1, 1, 1, 0, 0, 0, NULL, 0),
	(4, 'JOOMLA_PASSWORD', 92, 1, 'COM_EASYSOCIAL_FIELDS_PROFILE_DEFAULT_PASSWORD', 1, 'COM_EASYSOCIAL_FIELDS_PROFILE_DEFAULT_PASSWORD_DESC', 1, '0', '', 1, 0, 1, '{"id":"5af6af4445b9c","app_id":"92","step_id":null,"validation":null,"state":null,"params":{"reconfirm_password":true,"password_strength":true},"ordering":3,"core":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"joomla_password","data":null,"raw":null,"reconfirm_password":true,"mini_reconfirm_password":false,"password_strength":true,"min":4,"max":0,"min_uppercase":0,"min_integer":0,"min_symbols":0,"require_original_password":true,"privacy":0}', 3, 1, 1, 1, 0, 0, 0, NULL, 0),
	(5, 'JOOMLA_EMAIL', 87, 1, 'COM_EASYSOCIAL_FIELDS_PROFILE_DEFAULT_EMAIL_ADDRESS', 1, 'COM_EASYSOCIAL_FIELDS_PROFILE_DEFAULT_EMAIL_ADDRESS_DESC', 1, 'COM_EASYSOCIAL_FIELDS_PROFILE_DEFAULT_EMAIL_DEFAULT', '', 1, 1, 1, '{"id":"5af6af4445e59","app_id":"87","step_id":null,"validation":null,"state":null,"params":"[]","ordering":4,"core":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"joomla_email","data":null,"raw":null,"disallowed":"mailinator.com,devnullmail.com,binkmail.com,chogmail.com,frapmail.com","forbidden":"","regex_validate":false,"privacy":true}', 4, 1, 1, 1, 0, 0, 0, NULL, 0),
	(6, 'JOOMLA_USER_EDITOR', 95, 1, 'COM_EASYSOCIAL_FIELDS_PROFILE_DEFAULT_EDITOR', 1, 'COM_EASYSOCIAL_FIELDS_PROFILE_DEFAULT_EDITOR_DESC', 1, '0', '', 1, 0, 0, '{"id":"5af6af4446103","app_id":"95","step_id":null,"validation":null,"state":null,"params":"[]","ordering":5,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"joomla_user_editor","data":null,"raw":null,"privacy":0}', 5, 0, 0, 1, 0, 0, 0, NULL, 0),
	(7, 'JOOMLA_TIMEZONE', 93, 1, 'COM_EASYSOCIAL_FIELDS_PROFILE_DEFAULT_TIMEZONE', 1, 'COM_EASYSOCIAL_FIELDS_PROFILE_DEFAULT_TIMEZONE_DESC', 1, '', '', 1, 0, 0, '{"id":"5af6af4446349","app_id":"93","step_id":null,"validation":null,"state":null,"params":"[]","ordering":6,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"joomla_timezone","data":null,"raw":null,"privacy":true}', 6, 0, 1, 1, 1, 0, 0, NULL, 0),
	(8, 'PERMALINK', 104, 1, 'COM_EASYSOCIAL_FIELDS_PROFILE_DEFAULT_PERMALINK', 1, 'COM_EASYSOCIAL_FIELDS_PROFILE_DEFAULT_PERMALINK_DESC', 1, '0', '', 1, 0, 0, '{"id":"5af6af44465e0","app_id":"104","step_id":null,"validation":null,"state":null,"params":"[]","ordering":7,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"permalink","data":null,"raw":null,"check_permalink":true,"max":"100","privacy":0}', 7, 0, 1, 1, 0, 0, 0, NULL, 0),
	(9, 'HEADER-1', 84, 1, 'COM_EASYSOCIAL_FIELDS_PROFILE_DEFAULT_DETAILS', 1, 'COM_EASYSOCIAL_FIELDS_PROFILE_DEFAULT_DETAILS_DESC', 1, '0', '', 1, 0, 0, '{"id":"5af6af4446815","app_id":"84","step_id":null,"validation":null,"state":null,"params":"[]","ordering":8,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"header","data":null,"raw":null,"privacy":0}', 8, 0, 1, 1, 0, 0, 0, NULL, 0),
	(10, 'GENDER', 83, 1, 'COM_EASYSOCIAL_FIELDS_PROFILE_DEFAULT_GENDER', 1, 'COM_EASYSOCIAL_FIELDS_PROFILE_DEFAULT_GENDER_DESC', 1, '0', '', 1, 1, 0, '{"id":"5af6af44469df","app_id":"83","step_id":null,"validation":null,"state":null,"params":"[]","ordering":9,"core":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"gender","data":null,"raw":null,"custom":false,"privacy":true}', 9, 0, 1, 1, 1, 0, 0, NULL, 0),
	(11, 'BIRTHDAY', 73, 1, 'COM_EASYSOCIAL_FIELDS_PROFILE_DEFAULT_BIRTHDAY', 1, 'COM_EASYSOCIAL_FIELDS_PROFILE_DEFAULT_BIRTHDAY_DESC', 1, '0', '', 1, 1, 0, '{"id":"5af6af4446c65","app_id":"73","step_id":null,"validation":null,"state":null,"params":{"calendar":true},"ordering":10,"core":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"birthday","data":null,"raw":null,"age_limit":0,"show_age":true,"calendar":0,"birthday_calendar":false,"allow_time":0,"time_format":0,"allow_timezone":0,"placeholder":"FIELDS_USER_BIRTHDAY_DEFAULT_PLACEHOLDER","date_format":1,"yearfrom":"1930","yearto":"","year_ordering":"desc","year_privacy":true,"calendar_language":"english","privacy":true}', 10, 0, 1, 1, 1, 0, 0, NULL, 0),
	(12, 'ADDRESS', 70, 1, 'COM_EASYSOCIAL_FIELDS_PROFILE_DEFAULT_ADDRESS', 1, 'COM_EASYSOCIAL_FIELDS_PROFILE_DEFAULT_ADDRESS_DESC', 1, '0', '', 1, 1, 0, '{"id":"5af6af44470a2","app_id":"70","step_id":null,"validation":null,"state":null,"params":"[]","ordering":11,"core":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"address","data":null,"raw":null,"geocode":true,"required_address":false,"required_address1":true,"required_address2":true,"required_city":true,"required_state":true,"required_zip":true,"required_country":true,"show_address1":true,"show_address2":true,"show_city":true,"show_state":true,"show_zip":true,"show_country":true,"data_source":"regions","sort":"name","use_maps":true,"privacy":true}', 11, 0, 1, 1, 1, 1, 0, NULL, 0),
	(13, 'TEXTBOX', 112, 1, 'COM_EASYSOCIAL_FIELDS_PROFILE_DEFAULT_MOBILE_PHONE', 1, 'COM_EASYSOCIAL_FIELDS_PROFILE_DEFAULT_MOBILE_PHONE_DESC', 1, '', '', 1, 1, 0, '{"id":"5af6af44473cf","app_id":"112","step_id":null,"validation":null,"state":null,"params":{"placeholder":"COM_EASYSOCIAL_FIELDS_PROFILE_DEFAULT_MOBILE_PHONE_DEFAULT"},"ordering":12,"core":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"textbox","data":null,"raw":null,"placeholder":"","min":0,"max":0,"regex_validate":false,"readonly":false,"privacy":true}', 12, 0, 1, 1, 1, 0, 0, NULL, 0),
	(14, 'URL', 113, 1, 'COM_EASYSOCIAL_FIELDS_PROFILE_DEFAULT_WEBSITE', 1, 'COM_EASYSOCIAL_FIELDS_PROFILE_DEFAULT_WEBSITE_DESC', 1, '', '', 1, 1, 0, '{"id":"5af6af4447692","app_id":"113","step_id":null,"validation":null,"state":null,"params":{"placeholder":"COM_EASYSOCIAL_FIELDS_PROFILE_DEFAULT_WEBSITE_DEFAULT"},"ordering":13,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"url","data":null,"raw":null,"placeholder":"http:\\/\\/yoursite.com","linkable":true,"nofollow":true,"target":"_blank","privacy":true}', 13, 0, 1, 1, 1, 0, 0, NULL, 0),
	(15, 'HEADER-2', 84, 1, 'COM_EASYSOCIAL_FIELDS_PROFILE_DEFAULT_APPEARANCE', 1, 'COM_EASYSOCIAL_FIELDS_PROFILE_DEFAULT_APPEARANCE_DESC', 1, '0', '', 1, 0, 0, '{"id":"5af6af4447904","app_id":"84","step_id":null,"validation":null,"state":null,"params":"[]","ordering":14,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"header","data":null,"raw":null,"privacy":0}', 14, 0, 1, 1, 0, 0, 0, NULL, 0),
	(16, 'AVATAR', 72, 1, 'COM_EASYSOCIAL_FIELDS_PROFILE_DEFAULT_PROFILE_PICTURE', 1, 'COM_EASYSOCIAL_FIELDS_PROFILE_DEFAULT_PROFILE_PICTURE_DESC', 1, '0', '', 1, 0, 0, '{"id":"5af6af4447a81","app_id":"72","step_id":null,"validation":null,"state":null,"params":"[]","ordering":15,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"avatar","data":null,"raw":null,"upload":true,"gallery":true,"use_gallery_button":true,"privacy":0}', 15, 1, 1, 1, 0, 0, 0, NULL, 0),
	(17, 'COVER', 77, 1, 'COM_EASYSOCIAL_FIELDS_PROFILE_DEFAULT_PROFILE_COVER', 1, 'COM_EASYSOCIAL_FIELDS_PROFILE_DEFAULT_PROFILE_COVER_DESC', 1, '0', '', 1, 0, 0, '{"id":"5af6af4447d0e","app_id":"77","step_id":null,"validation":null,"state":null,"params":"[]","ordering":16,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"cover","data":null,"raw":null,"privacy":0}', 16, 1, 1, 1, 0, 0, 0, NULL, 0),
	(18, 'HEADER', 131, 2, 'COM_EASYSOCIAL_FIELDS_GROUP_ACCOUNT_INFO', 1, 'COM_EASYSOCIAL_FIELDS_GROUP_ACCOUNT_INFO_DESC', 1, '0', '', 1, 0, 0, '{"id":"5af6af445637b","app_id":"131","step_id":null,"validation":null,"state":null,"params":"[]","ordering":0,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"header","data":null,"raw":null,"privacy":0}', 0, 0, 1, 1, 0, 0, 0, NULL, 0),
	(19, 'TITLE', 149, 2, 'COM_EASYSOCIAL_FIELDS_GROUP_TITLE', 1, 'COM_EASYSOCIAL_FIELDS_GROUP_TITLE_DESC', 1, '', '', 1, 1, 1, '{"id":"5af6af4456745","app_id":"149","step_id":null,"validation":null,"state":null,"params":"[]","ordering":1,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"title","data":null,"raw":null,"placeholder":"","min":0,"max":0,"regex_validate":false,"readonly":false}', 1, 1, 1, 1, 1, 0, 0, NULL, 0),
	(20, 'PERMALINK', 140, 2, 'COM_EASYSOCIAL_FIELDS_GROUP_PERMALINK', 1, 'COM_EASYSOCIAL_FIELDS_GROUP_PERMALINK_DESC', 1, '0', '', 1, 0, 1, '{"id":"5af6af4456aa2","app_id":"140","step_id":null,"validation":null,"state":null,"params":"[]","ordering":2,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"permalink","data":null,"raw":null,"check_permalink":true,"max":"100","privacy":0}', 2, 0, 1, 1, 0, 0, 0, NULL, 0),
	(21, 'DESCRIPTION', 122, 2, 'COM_EASYSOCIAL_FIELDS_GROUP_DESCRIPTION', 1, 'COM_EASYSOCIAL_FIELDS_GROUP_DESCRIPTION_DESC', 1, '', '', 1, 1, 0, '{"id":"5af6af4456ce7","app_id":"122","step_id":null,"validation":null,"state":null,"params":"[]","ordering":3,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"description","data":null,"raw":null}', 3, 1, 1, 1, 1, 0, 0, NULL, 0),
	(22, 'NOTIFICATION', 139, 2, 'PLG_FIELDS_GROUP_NOTIFICATION_DEFAULT_TITLE', 1, 'PLG_FIELDS_GROUP_NOTIFICATION_DEFAULT_DESCRIPTION', 1, '1', '', 1, 0, 1, '{"id":"5af6af4456f5d","app_id":"139","step_id":null,"validation":null,"state":null,"params":"[]","ordering":4,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"notification","data":null,"raw":null,"privacy":0}', 4, 1, 1, 1, 0, 0, 0, NULL, 0),
	(23, 'TYPE', 150, 2, 'COM_EASYSOCIAL_FIELDS_GROUP_TYPE', 1, 'COM_EASYSOCIAL_FIELDS_GROUP_TYPE_DESC', 1, '1', '', 1, 0, 1, '{"id":"5af6af44571cf","app_id":"150","step_id":null,"validation":null,"state":null,"params":"[]","ordering":5,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"type","data":null,"raw":null,"privacy":0,"dropdown_options":["1","4","2","3"]}', 5, 1, 1, 1, 0, 0, 0, NULL, 0),
	(24, 'URL', 151, 2, 'COM_EASYSOCIAL_FIELDS_GROUP_WEBSITE', 1, 'COM_EASYSOCIAL_FIELDS_GROUP_WEBSITE_DESC', 1, '', '', 1, 1, 0, '{"id":"5af6af4457474","app_id":"151","step_id":null,"validation":null,"state":null,"params":"[]","ordering":6,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"url","data":null,"raw":null,"placeholder":"http:\\/\\/yoursite.com","linkable":true,"nofollow":true,"target":"_blank","privacy":0}', 6, 0, 1, 1, 1, 0, 0, NULL, 0),
	(25, 'HEADER-1', 131, 2, 'COM_ES_FEATURE', 1, 'COM_ES_FIELDS_GROUP_FEATURE_DESC', 1, '0', '', 1, 0, 0, '{"id":"5af6af44576d8","app_id":"131","step_id":null,"validation":null,"state":null,"params":"[]","ordering":7,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"header","data":null,"raw":null,"privacy":0}', 7, 0, 1, 1, 0, 0, 0, NULL, 0),
	(26, 'PHOTOS', 142, 2, 'COM_EASYSOCIAL_FIELDS_GROUP_PHOTO', 1, 'COM_EASYSOCIAL_FIELDS_GROUP_PHOTO_DESC', 1, '1', '', 1, 0, 0, '{"id":"5af6af4457845","app_id":"142","step_id":null,"validation":null,"state":null,"params":"[]","ordering":8,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"photos","data":null,"raw":null,"privacy":0,"allow_modification":true}', 8, 1, 1, 1, 1, 0, 0, NULL, 0),
	(27, 'VIDEOS', 152, 2, 'COM_EASYSOCIAL_FIELDS_GROUP_VIDEO', 1, 'COM_EASYSOCIAL_FIELDS_GROUP_VIDEO_DESC', 1, '1', '', 1, 0, 0, '{"id":"5af6af4457ae0","app_id":"152","step_id":null,"validation":null,"state":null,"params":"[]","ordering":9,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"videos","data":null,"raw":null,"privacy":0,"allow_modification":true}', 9, 1, 1, 1, 1, 0, 0, NULL, 0),
	(28, 'AUDIOS', 116, 2, 'COM_ES_CLUSTER_FIELDS_ENABLE_AUDIO', 1, 'COM_ES_CLUSTER_FIELDS_ENABLE_AUDIO_DESC', 1, '1', '', 1, 0, 0, '{"id":"5af6af4457d62","app_id":"116","step_id":null,"validation":null,"state":null,"params":"[]","ordering":10,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"audios","data":null,"raw":null,"privacy":0,"allow_modification":true}', 10, 1, 1, 1, 1, 0, 0, NULL, 0),
	(29, 'NEWS', 138, 2, 'COM_EASYSOCIAL_FIELDS_GROUP_NEWS', 1, 'COM_EASYSOCIAL_FIELDS_GROUP_NEWS_DESC', 1, '1', '', 1, 0, 0, '{"id":"5af6af4457fc6","app_id":"138","step_id":null,"validation":null,"state":null,"params":"[]","ordering":11,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"news","data":null,"raw":null,"privacy":0,"allow_modification":true}', 11, 1, 1, 1, 0, 0, 0, NULL, 0),
	(30, 'FEEDS', 128, 2, 'COM_ES_FIELDS_GROUP_FEEDS', 1, 'COM_ES_FIELDS_GROUP_FEEDS_DESC', 1, '1', '', 1, 0, 0, '{"id":"5af6af4458356","app_id":"128","step_id":null,"validation":null,"state":null,"params":"[]","ordering":12,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"feeds","data":null,"raw":null,"privacy":0,"allow_modification":true}', 12, 1, 1, 1, 0, 0, 0, NULL, 0),
	(31, 'EVENTS', 127, 2, 'COM_ES_CLUSTER_FIELDS_ENABLE_EVENTS', 1, 'COM_ES_CLUSTER_FIELDS_ENABLE_EVENTS_DESC', 1, '1', '', 1, 0, 0, '{"id":"5af6af4458674","app_id":"127","step_id":null,"validation":null,"state":null,"params":"[]","ordering":13,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"events","data":null,"raw":null,"privacy":0,"allow_modification":true}', 13, 1, 1, 1, 1, 0, 0, NULL, 0),
	(32, 'FILES', 130, 2, 'COM_ES_FIELDS_GROUP_FILES', 1, 'COM_ES_FIELDS_GROUP_FILES_DESC', 1, '1', '', 1, 0, 0, '{"id":"5af6af44588d6","app_id":"130","step_id":null,"validation":null,"state":null,"params":"[]","ordering":14,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"files","data":null,"raw":null,"privacy":0,"allow_modification":true}', 14, 1, 1, 1, 0, 0, 0, NULL, 0),
	(33, 'POLLS', 143, 2, 'COM_ES_FIELDS_GROUP_POLLS', 1, 'COM_ES_FIELDS_GROUP_POLLS_DESC', 1, '1', '', 1, 0, 0, '{"id":"5af6af4458c15","app_id":"143","step_id":null,"validation":null,"state":null,"params":"[]","ordering":15,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"polls","data":null,"raw":null,"privacy":0,"allow_modification":true}', 15, 1, 1, 1, 0, 0, 0, NULL, 0),
	(34, 'DISCUSSIONS', 123, 2, 'COM_EASYSOCIAL_FIELDS_GROUP_DISCUSSIONS', 1, 'COM_EASYSOCIAL_FIELDS_GROUP_DISCUSSIONS_DESC', 1, '1', '', 1, 0, 0, '{"id":"5af6af4458f9f","app_id":"123","step_id":null,"validation":null,"state":null,"params":"[]","ordering":16,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"discussions","data":null,"raw":null,"privacy":0,"allow_modification":true}', 16, 1, 1, 1, 0, 0, 0, NULL, 0),
	(35, 'HEADER-2', 131, 2, 'COM_EASYSOCIAL_FIELDS_GROUP_PERSONALIZATION', 1, 'COM_EASYSOCIAL_FIELDS_GROUP_PERSONALIZATION_DESC', 1, '0', '', 1, 0, 0, '{"id":"5af6af44592bf","app_id":"131","step_id":null,"validation":null,"state":null,"params":"[]","ordering":17,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"header","data":null,"raw":null,"privacy":0}', 17, 0, 1, 1, 0, 0, 0, NULL, 0),
	(36, 'AVATAR', 117, 2, 'COM_EASYSOCIAL_FIELDS_GROUP_AVATAR', 1, 'COM_EASYSOCIAL_FIELDS_GROUP_AVATAR_DESC', 1, '0', '', 1, 0, 0, '{"id":"5af6af445942c","app_id":"117","step_id":null,"validation":null,"state":null,"params":"[]","ordering":18,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"avatar","data":null,"raw":null,"gallery":0,"use_gallery_button":0,"upload":true,"privacy":0}', 18, 1, 1, 1, 0, 0, 0, NULL, 0),
	(37, 'COVER', 120, 2, 'COM_EASYSOCIAL_FIELDS_GROUP_COVER', 1, 'COM_EASYSOCIAL_FIELDS_GROUP_COVER_DESC', 1, '0', '', 1, 0, 0, '{"id":"5af6af44597b8","app_id":"120","step_id":null,"validation":null,"state":null,"params":"[]","ordering":19,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"cover","data":null,"raw":null,"privacy":0}', 19, 1, 1, 1, 0, 0, 0, NULL, 0),
	(38, 'HEADER', 207, 3, 'COM_EASYSOCIAL_FIELDS_EVENT_ACCOUNT_INFO', 1, 'COM_EASYSOCIAL_FIELDS_EVENT_ACCOUNT_INFO_DESC', 1, '0', '', 1, 0, 0, '{"id":"5af6af4465d40","app_id":"207","step_id":null,"validation":null,"state":null,"params":"[]","ordering":0,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"header","data":null,"raw":null,"privacy":0}', 0, 0, 1, 1, 0, 0, 0, NULL, 0),
	(39, 'TITLE', 227, 3, 'COM_EASYSOCIAL_FIELDS_EVENT_TITLE', 1, 'COM_EASYSOCIAL_FIELDS_EVENT_TITLE_DESC', 1, '', '', 1, 1, 1, '{"id":"5af6af4466161","app_id":"227","step_id":null,"validation":null,"state":null,"params":"[]","ordering":1,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"title","data":null,"raw":null,"placeholder":"","min":0,"max":0,"regex_validate":false,"readonly":false}', 1, 1, 1, 1, 1, 0, 0, NULL, 0),
	(40, 'PERMALINK', 216, 3, 'COM_EASYSOCIAL_FIELDS_EVENT_PERMALINK', 1, 'COM_EASYSOCIAL_FIELDS_EVENT_PERMALINK_DESC', 1, '0', '', 1, 0, 1, '{"id":"5af6af446652c","app_id":"216","step_id":null,"validation":null,"state":null,"params":"[]","ordering":2,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"permalink","data":null,"raw":null,"check_permalink":true,"max":"100","privacy":0}', 2, 0, 1, 1, 0, 0, 0, NULL, 0),
	(41, 'STARTEND', 222, 3, 'COM_EASYSOCIAL_FIELDS_EVENT_TIME', 1, 'COM_EASYSOCIAL_FIELDS_EVENT_TIME_DESC', 1, '0', '', 1, 1, 1, '{"id":"5af6af44667a9","app_id":"222","step_id":null,"validation":null,"state":null,"params":"[]","ordering":3,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"startend","data":null,"raw":null,"date_format":"DD-MM-YYYY","allow_time":true,"time_format":"hh:mm A","allow_timezone":false,"yearfrom":"1930","yearto":"","disallow_past":false,"minute_stepping":15,"require_end":false,"default_start":"nexthour","default_start_format":"Y-m-d H:i","calendar_language":"english"}', 3, 1, 1, 1, 1, 0, 0, NULL, 0),
	(42, 'ALLDAY', 191, 3, 'COM_EASYSOCIAL_FIELDS_EVENT_ALLDAY', 1, 'COM_EASYSOCIAL_FIELDS_EVENT_ALLDAY_DESC', 1, '', '', 1, 1, 0, '{"id":"5af6af4466ad1","app_id":"191","step_id":null,"validation":null,"state":null,"params":"[]","ordering":4,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"allday","data":null,"raw":null}', 4, 0, 1, 1, 1, 0, 0, NULL, 0),
	(43, 'RECURRING', 220, 3, 'COM_EASYSOCIAL_FIELDS_EVENT_RECURRING', 1, 'COM_EASYSOCIAL_FIELDS_EVENT_RECURRING_DESC', 1, '0', '', 1, 0, 0, '{"id":"5af6af4466e1a","app_id":"220","step_id":null,"validation":null,"state":null,"params":"[]","ordering":5,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"recurring","data":null,"raw":null,"privacy":0,"date_format":"DD-MM-YYYY"}', 5, 0, 1, 1, 1, 0, 0, NULL, 0),
	(44, 'DESCRIPTION', 200, 3, 'COM_EASYSOCIAL_FIELDS_EVENT_DESCRIPTION', 1, 'COM_EASYSOCIAL_FIELDS_EVENT_DESCRIPTION_DESC', 1, '', '', 1, 1, 0, '{"id":"5af6af4467059","app_id":"200","step_id":null,"validation":null,"state":null,"params":"[]","ordering":6,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"description","data":null,"raw":null,"editor":"inherit"}', 6, 1, 1, 1, 1, 0, 0, NULL, 0),
	(45, 'TYPE', 228, 3, 'COM_EASYSOCIAL_FIELDS_EVENT_TYPE', 1, 'COM_EASYSOCIAL_FIELDS_EVENT_TYPE_DESC', 1, '1', '', 1, 0, 1, '{"id":"5af6af44672aa","app_id":"228","step_id":null,"validation":null,"state":null,"params":"[]","ordering":7,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"type","data":null,"raw":null,"privacy":0}', 7, 1, 1, 1, 0, 0, 0, NULL, 0),
	(46, 'URL', 230, 3, 'COM_EASYSOCIAL_FIELDS_EVENT_WEBSITE', 1, 'COM_EASYSOCIAL_FIELDS_EVENT_WEBSITE_DESC', 1, '', '', 1, 1, 0, '{"id":"5af6af4467514","app_id":"230","step_id":null,"validation":null,"state":null,"params":"[]","ordering":8,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"url","data":null,"raw":null,"placeholder":"http:\\/\\/yoursite.com","linkable":true,"nofollow":true,"target":"_blank"}', 8, 0, 1, 1, 1, 0, 0, NULL, 0),
	(47, 'HEADER-1', 207, 3, 'COM_EASYSOCIAL_FIELDS_EVENT_CONFIGURATION', 1, 'COM_EASYSOCIAL_FIELDS_EVENT_CONFIGURATION_DESC', 1, '0', '', 1, 0, 0, '{"id":"5af6af446782b","app_id":"207","step_id":null,"validation":null,"state":null,"params":"[]","ordering":9,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"header","data":null,"raw":null,"privacy":0}', 9, 0, 1, 1, 0, 0, 0, NULL, 0),
	(48, 'CONFIGALLOWMAYBE', 196, 3, 'COM_EASYSOCIAL_FIELDS_EVENT_CONFIG_ALLOW_MAYBE', 1, 'COM_EASYSOCIAL_FIELDS_EVENT_CONFIG_ALLOW_MAYBE_DESC', 1, '1', '', 1, 0, 0, '{"id":"5af6af446799a","app_id":"196","step_id":null,"validation":null,"state":null,"params":"[]","ordering":10,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"configAllowMaybe","data":null,"raw":null,"privacy":0}', 10, 1, 1, 1, 0, 0, 0, NULL, 0),
	(49, 'CONFIGNOTGOINGGUEST', 197, 3, 'COM_EASYSOCIAL_FIELDS_EVENT_CONFIG_NOT_GOING_GUEST', 1, 'COM_EASYSOCIAL_FIELDS_EVENT_CONFIG_NOT_GOING_GUEST_DESC', 1, '1', '', 1, 0, 0, '{"id":"5af6af4467cf0","app_id":"197","step_id":null,"validation":null,"state":null,"params":"[]","ordering":11,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"configNotGoingGuest","data":null,"raw":null,"privacy":0}', 11, 1, 1, 1, 0, 0, 0, NULL, 0),
	(50, 'GUESTLIMIT', 206, 3, 'COM_EASYSOCIAL_FIELDS_EVENT_CONFIG_GUEST_LIMIT', 1, 'COM_EASYSOCIAL_FIELDS_EVENT_CONFIG_GUEST_LIMIT_DESC', 1, '', '', 1, 0, 0, '{"id":"5af6af4467ffa","app_id":"206","step_id":null,"validation":null,"state":null,"params":"[]","ordering":12,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"guestLimit","data":null,"raw":null,"privacy":0,"placeholder":"","min":0,"max":0,"regex_validate":false,"readonly":false}', 12, 0, 1, 1, 0, 0, 0, NULL, 0),
	(51, 'HEADER-2', 207, 3, 'COM_EASYSOCIAL_FIELDS_EVENT_FEATURES', 1, 'COM_EASYSOCIAL_FIELDS_EVENT_FEATURES_DESC', 1, '0', '', 1, 0, 0, '{"id":"5af6af4468340","app_id":"207","step_id":null,"validation":null,"state":null,"params":"[]","ordering":13,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"header","data":null,"raw":null,"privacy":0}', 13, 0, 1, 1, 0, 0, 0, NULL, 0),
	(52, 'PHOTOS', 218, 3, 'COM_EASYSOCIAL_FIELDS_EVENT_PHOTO', 1, 'COM_EASYSOCIAL_FIELDS_EVENT_PHOTO_DESC', 1, '1', '', 1, 0, 0, '{"id":"5af6af44684b4","app_id":"218","step_id":null,"validation":null,"state":null,"params":"[]","ordering":14,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"photos","data":null,"raw":null,"privacy":0}', 14, 1, 1, 1, 1, 0, 0, NULL, 0),
	(53, 'VIDEOS', 231, 3, 'COM_EASYSOCIAL_EVENT_FIELDS_ALLOW_VIDEOS', 1, 'COM_EASYSOCIAL_EVENT_FIELDS_ALLOW_VIDEOS_DESC', 1, '1', '', 1, 0, 0, '{"id":"5af6af446870b","app_id":"231","step_id":null,"validation":null,"state":null,"params":"[]","ordering":15,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"videos","data":null,"raw":null,"privacy":0}', 15, 1, 1, 1, 1, 0, 0, NULL, 0),
	(54, 'AUDIOS', 192, 3, 'COM_ES_CLUSTER_FIELDS_ENABLE_AUDIO', 1, 'COM_ES_CLUSTER_FIELDS_ENABLE_AUDIO_DESC', 1, '1', '', 1, 0, 0, '{"id":"5af6af4468966","app_id":"192","step_id":null,"validation":null,"state":null,"params":"[]","ordering":16,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"audios","data":null,"raw":null,"privacy":0}', 16, 1, 1, 1, 1, 0, 0, NULL, 0),
	(55, 'FILES', 205, 3, 'COM_ES_FIELDS_EVENT_FILES', 1, 'COM_ES_FIELDS_EVENT_FILES_DESC', 1, '1', '', 1, 0, 0, '{"id":"5af6af4468bb2","app_id":"205","step_id":null,"validation":null,"state":null,"params":"[]","ordering":17,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"files","data":null,"raw":null,"privacy":0,"allow_modification":true}', 17, 1, 1, 1, 0, 0, 0, NULL, 0),
	(56, 'POLLS', 219, 3, 'COM_ES_FIELDS_EVENT_POLLS', 1, 'COM_ES_FIELDS_EVENT_POLLS', 1, '1', '', 1, 0, 0, '{"id":"5af6af4468ed4","app_id":"219","step_id":null,"validation":null,"state":null,"params":"[]","ordering":18,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"polls","data":null,"raw":null,"privacy":0,"allow_modification":true}', 18, 1, 1, 1, 0, 0, 0, NULL, 0),
	(57, 'NEWS', 214, 3, 'COM_EASYSOCIAL_FIELDS_EVENT_NEWS', 1, 'COM_EASYSOCIAL_FIELDS_EVENT_NEWS_DESC', 1, '1', '', 1, 0, 0, '{"id":"5af6af4469259","app_id":"214","step_id":null,"validation":null,"state":null,"params":"[]","ordering":19,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"news","data":null,"raw":null,"privacy":0}', 19, 1, 1, 1, 0, 0, 0, NULL, 0),
	(58, 'DISCUSSIONS', 201, 3, 'COM_EASYSOCIAL_FIELDS_EVENT_DISCUSSIONS', 1, 'COM_EASYSOCIAL_FIELDS_EVENT_DISCUSSIONS_DESC', 1, '1', '', 1, 0, 0, '{"id":"5af6af446956e","app_id":"201","step_id":null,"validation":null,"state":null,"params":"[]","ordering":20,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"discussions","data":null,"raw":null,"privacy":0}', 20, 1, 1, 1, 0, 0, 0, NULL, 0),
	(59, 'HEADER-3', 207, 3, 'COM_EASYSOCIAL_FIELDS_EVENT_DETAILS', 1, 'COM_EASYSOCIAL_FIELDS_EVENT_DETAILS_DESC', 1, '0', '', 1, 0, 0, '{"id":"5af6af4469845","app_id":"207","step_id":null,"validation":null,"state":null,"params":"[]","ordering":21,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"header","data":null,"raw":null,"privacy":0}', 21, 0, 1, 1, 0, 0, 0, NULL, 0),
	(60, 'ADDRESS', 190, 3, 'COM_EASYSOCIAL_FIELDS_EVENT_ADDRESS', 1, 'COM_EASYSOCIAL_FIELDS_EVENT_ADDRESS_DESC', 1, '0', '', 1, 1, 1, '{"id":"5af6af44699a2","app_id":"190","step_id":null,"validation":null,"state":null,"params":"[]","ordering":22,"core":null,"visible_mini_registration":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"address","data":null,"raw":null,"use_maps":true,"geocode":true,"required_address":false,"required_address1":true,"required_address2":true,"required_city":true,"required_state":true,"required_zip":true,"required_country":true,"show_address1":true,"show_address2":true,"show_city":true,"show_state":true,"show_zip":true,"show_country":true,"data_source":"regions","sort":"name"}', 22, 0, 1, 1, 1, 1, 0, NULL, 0),
	(61, 'HEADER-4', 207, 3, 'COM_EASYSOCIAL_FIELDS_EVENT_PERSONALIZATION', 1, 'COM_EASYSOCIAL_FIELDS_EVENT_PERSONALIZATION_DESC', 1, '0', '', 1, 0, 0, '{"id":"5af6af4469daf","app_id":"207","step_id":null,"validation":null,"state":null,"params":"[]","ordering":23,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"header","data":null,"raw":null,"privacy":0}', 23, 0, 1, 1, 0, 0, 0, NULL, 0),
	(62, 'AVATAR', 193, 3, 'COM_EASYSOCIAL_FIELDS_EVENT_AVATAR', 1, 'COM_EASYSOCIAL_FIELDS_EVENT_AVATAR_DESC', 1, '0', '', 1, 0, 0, '{"id":"5af6af4469f1c","app_id":"193","step_id":null,"validation":null,"state":null,"params":"[]","ordering":24,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"avatar","data":null,"raw":null,"gallery":0,"use_gallery_button":0,"upload":true,"privacy":0}', 24, 1, 1, 1, 0, 0, 0, NULL, 0),
	(63, 'COVER', 198, 3, 'COM_EASYSOCIAL_FIELDS_EVENT_COVER', 1, 'COM_EASYSOCIAL_FIELDS_EVENT_COVER_DESC', 1, '0', '', 1, 0, 0, '{"id":"5af6af446a262","app_id":"198","step_id":null,"validation":null,"state":null,"params":"[]","ordering":25,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"cover","data":null,"raw":null,"privacy":0}', 25, 1, 1, 1, 0, 0, 0, NULL, 0),
	(64, 'HEADER', 169, 4, 'COM_EASYSOCIAL_FIELDS_PAGE_ACCOUNT_INFO', 1, 'COM_EASYSOCIAL_FIELDS_PAGE_ACCOUNT_INFO_DESC', 1, '0', '', 1, 0, 0, '{"id":"5af6af44752be","app_id":"169","step_id":null,"validation":null,"state":null,"params":"[]","ordering":0,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"header","data":null,"raw":null,"privacy":0}', 0, 0, 1, 1, 0, 0, 0, NULL, 0),
	(65, 'TITLE', 186, 4, 'COM_EASYSOCIAL_FIELDS_PAGE_TITLE', 1, 'COM_EASYSOCIAL_FIELDS_PAGE_TITLE_DESC', 1, '', '', 1, 1, 1, '{"id":"5af6af447554c","app_id":"186","step_id":null,"validation":null,"state":null,"params":"[]","ordering":1,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"title","data":null,"raw":null,"placeholder":"","min":0,"max":0,"regex_validate":false,"readonly":false}', 1, 1, 1, 1, 1, 0, 0, NULL, 0),
	(66, 'PERMALINK', 178, 4, 'COM_EASYSOCIAL_FIELDS_PAGE_PERMALINK', 1, 'COM_EASYSOCIAL_FIELDS_PAGE_PERMALINK_DESC', 1, '0', '', 1, 0, 1, '{"id":"5af6af447579c","app_id":"178","step_id":null,"validation":null,"state":null,"params":"[]","ordering":2,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"permalink","data":null,"raw":null,"check_permalink":true,"max":"100","privacy":0}', 2, 0, 1, 1, 0, 0, 0, NULL, 0),
	(67, 'DESCRIPTION', 160, 4, 'COM_EASYSOCIAL_FIELDS_PAGE_DESCRIPTION', 1, 'COM_EASYSOCIAL_FIELDS_PAGE_DESCRIPTION_DESC', 1, '', '', 1, 1, 0, '{"id":"5af6af4475942","app_id":"160","step_id":null,"validation":null,"state":null,"params":"[]","ordering":3,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"description","data":null,"raw":null}', 3, 1, 1, 1, 1, 0, 0, NULL, 0),
	(68, 'NOTIFICATION', 177, 4, 'COM_EASYSOCIAL_FIELDS_PAGE_NOTIFICATION', 1, 'COM_EASYSOCIAL_FIELDS_PAGE_NOTIFICATION_DESC', 1, '1', '', 1, 0, 1, '{"id":"5af6af4475add","app_id":"177","step_id":null,"validation":null,"state":null,"params":"[]","ordering":4,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"notification","data":null,"raw":null,"privacy":0}', 4, 1, 1, 1, 0, 0, 0, NULL, 0),
	(69, 'TYPE', 187, 4, 'COM_EASYSOCIAL_FIELDS_PAGE_TYPE', 1, 'COM_EASYSOCIAL_FIELDS_PAGE_TYPE_DESC', 1, '1', '', 1, 0, 1, '{"id":"5af6af4475c7b","app_id":"187","step_id":null,"validation":null,"state":null,"params":"[]","ordering":5,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"type","data":null,"raw":null,"privacy":0}', 5, 1, 1, 1, 0, 0, 0, NULL, 0),
	(70, 'URL', 188, 4, 'COM_EASYSOCIAL_FIELDS_PAGE_WEBSITE', 1, 'COM_EASYSOCIAL_FIELDS_PAGE_WEBSITE_DESC', 1, '', '', 1, 1, 0, '{"id":"5af6af4475e24","app_id":"188","step_id":null,"validation":null,"state":null,"params":"[]","ordering":6,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"url","data":null,"raw":null,"placeholder":"http:\\/\\/yoursite.com","linkable":true,"nofollow":true,"target":"_blank","privacy":0}', 6, 0, 1, 1, 1, 0, 0, NULL, 0),
	(71, 'HEADER-1', 169, 4, 'COM_ES_FEATURE', 1, 'COM_ES_FIELDS_PAGE_FEATURE_DESC', 1, '0', '', 1, 0, 0, '{"id":"5af6af4475fc8","app_id":"169","step_id":null,"validation":null,"state":null,"params":"[]","ordering":7,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"header","data":null,"raw":null,"privacy":0}', 7, 0, 1, 1, 0, 0, 0, NULL, 0),
	(72, 'PHOTOS', 180, 4, 'COM_EASYSOCIAL_FIELDS_PAGE_PHOTO', 1, 'COM_EASYSOCIAL_FIELDS_PAGE_PHOTO_DESC', 1, '1', '', 1, 0, 0, '{"id":"5af6af44760c3","app_id":"180","step_id":null,"validation":null,"state":null,"params":"[]","ordering":8,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"photos","data":null,"raw":null,"privacy":0,"allow_modification":true}', 8, 1, 1, 1, 1, 0, 0, NULL, 0),
	(73, 'VIDEOS', 189, 4, 'COM_EASYSOCIAL_FIELDS_PAGE_VIDEO', 1, 'COM_EASYSOCIAL_FIELDS_PAGE_VIDEO_DESC', 1, '1', '', 1, 0, 0, '{"id":"5af6af447626c","app_id":"189","step_id":null,"validation":null,"state":null,"params":"[]","ordering":9,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"videos","data":null,"raw":null,"privacy":0,"allow_modification":true}', 9, 1, 1, 1, 1, 0, 0, NULL, 0),
	(74, 'AUDIOS', 154, 4, 'COM_ES_CLUSTER_FIELDS_ENABLE_AUDIO', 1, 'COM_ES_CLUSTER_FIELDS_ENABLE_AUDIO_DESC', 1, '1', '', 1, 0, 0, '{"id":"5af6af4476414","app_id":"154","step_id":null,"validation":null,"state":null,"params":"[]","ordering":10,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"audios","data":null,"raw":null,"privacy":0,"allow_modification":true}', 10, 1, 1, 1, 1, 0, 0, NULL, 0),
	(75, 'NEWS', 176, 4, 'COM_EASYSOCIAL_FIELDS_PAGE_NEWS', 1, 'COM_EASYSOCIAL_FIELDS_PAGE_NEWS_DESC', 1, '1', '', 1, 0, 0, '{"id":"5af6af44765bd","app_id":"176","step_id":null,"validation":null,"state":null,"params":"[]","ordering":11,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"news","data":null,"raw":null,"privacy":0,"allow_modification":true}', 11, 1, 1, 1, 0, 0, 0, NULL, 0),
	(76, 'FEEDS', 166, 4, 'COM_ES_FIELDS_PAGE_FEEDS', 1, 'COM_ES_FIELDS_PAGE_FEEDS_DESC', 1, '1', '', 1, 0, 0, '{"id":"5af6af447680b","app_id":"166","step_id":null,"validation":null,"state":null,"params":"[]","ordering":12,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"feeds","data":null,"raw":null,"privacy":0,"allow_modification":true}', 12, 1, 1, 1, 0, 0, 0, NULL, 0),
	(77, 'EVENTS', 165, 4, 'COM_ES_CLUSTER_FIELDS_ENABLE_EVENTS', 1, 'COM_ES_CLUSTER_FIELDS_ENABLE_EVENTS_DESC', 1, '1', '', 1, 0, 0, '{"id":"5af6af4476a39","app_id":"165","step_id":null,"validation":null,"state":null,"params":"[]","ordering":13,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"events","data":null,"raw":null,"privacy":0,"allow_modification":true}', 13, 1, 1, 1, 1, 0, 0, NULL, 0),
	(78, 'FILES', 168, 4, 'COM_ES_FIELDS_PAGE_FILES', 1, 'COM_ES_FIELDS_PAGE_FILES_DESC', 1, '1', '', 1, 0, 0, '{"id":"5af6af4476bd9","app_id":"168","step_id":null,"validation":null,"state":null,"params":"[]","ordering":14,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"files","data":null,"raw":null,"privacy":0,"allow_modification":true}', 14, 1, 1, 1, 0, 0, 0, NULL, 0),
	(79, 'POLLS', 181, 4, 'COM_ES_FIELDS_PAGE_POLLS', 1, 'COM_ES_FIELDS_PAGE_POLLS_DESC', 1, '1', '', 1, 0, 0, '{"id":"5af6af4476e0c","app_id":"181","step_id":null,"validation":null,"state":null,"params":"[]","ordering":15,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"polls","data":null,"raw":null,"privacy":0,"allow_modification":true}', 15, 1, 1, 1, 0, 0, 0, NULL, 0),
	(80, 'DISCUSSIONS', 161, 4, 'COM_EASYSOCIAL_FIELDS_PAGE_DISCUSSIONS', 1, 'COM_EASYSOCIAL_FIELDS_PAGE_DISCUSSIONS_DESC', 1, '1', '', 1, 0, 0, '{"id":"5af6af447703d","app_id":"161","step_id":null,"validation":null,"state":null,"params":"[]","ordering":16,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"discussions","data":null,"raw":null,"privacy":0,"allow_modification":true}', 16, 1, 1, 1, 0, 0, 0, NULL, 0),
	(81, 'HEADER-2', 169, 4, 'COM_EASYSOCIAL_FIELDS_PAGE_PERSONALIZATION', 1, 'COM_EASYSOCIAL_FIELDS_PAGE_PERSONALIZATION_DESC', 1, '0', '', 1, 0, 0, '{"id":"5af6af4477232","app_id":"169","step_id":null,"validation":null,"state":null,"params":"[]","ordering":17,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"header","data":null,"raw":null,"privacy":0}', 17, 0, 1, 1, 0, 0, 0, NULL, 0),
	(82, 'AVATAR', 155, 4, 'COM_EASYSOCIAL_FIELDS_PAGE_AVATAR', 1, 'COM_EASYSOCIAL_FIELDS_PAGE_AVATAR_DESC', 1, '0', '', 1, 0, 0, '{"id":"5af6af4477327","app_id":"155","step_id":null,"validation":null,"state":null,"params":"[]","ordering":18,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"avatar","data":null,"raw":null,"gallery":0,"use_gallery_button":0,"upload":true,"privacy":0}', 18, 1, 1, 1, 0, 0, 0, NULL, 0),
	(83, 'COVER', 158, 4, 'COM_EASYSOCIAL_FIELDS_PAGE_COVER', 1, 'COM_EASYSOCIAL_FIELDS_PAGE_COVER_DESC', 1, '0', '', 1, 0, 0, '{"id":"5af6af4477559","app_id":"158","step_id":null,"validation":null,"state":null,"params":"[]","ordering":19,"core":null,"visible_mini_registration":null,"friend_suggest":null,"_isCopy":false,"is_conditional":null,"conditions":null,"value":null,"element":"cover","data":null,"raw":null,"privacy":0}', 19, 1, 1, 1, 0, 0, 0, NULL, 0);
/*!40000 ALTER TABLE `gy3te_social_fields` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_fields_data
CREATE TABLE IF NOT EXISTS `gy3te_social_fields_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `datakey` varchar(255) NOT NULL,
  `data` text NOT NULL,
  `params` text NOT NULL,
  `raw` text,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`,`uid`),
  KEY `node_id` (`uid`),
  KEY `idx_uid_type` (`uid`,`type`),
  KEY `idx_type_raw` (`type`(25),`raw`(255)),
  KEY `idx_type_key_raw` (`type`(25),`datakey`(50),`raw`(255)),
  FULLTEXT KEY `fields_data_raw` (`raw`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_fields_data: 16 rows
DELETE FROM `gy3te_social_fields_data`;
/*!40000 ALTER TABLE `gy3te_social_fields_data` DISABLE KEYS */;
INSERT INTO `gy3te_social_fields_data` (`id`, `field_id`, `uid`, `type`, `datakey`, `data`, `params`, `raw`) VALUES
	(1, 2, 48, 'user', 'first', 'Super', '', 'Super'),
	(2, 2, 48, 'user', 'middle', '', '', ''),
	(3, 2, 48, 'user', 'last', 'User', '', 'User'),
	(4, 2, 48, 'user', 'name', 'Super User', '', 'Super User'),
	(5, 2, 49, 'user', 'first', 'Тест', '', 'Тест'),
	(6, 2, 49, 'user', 'middle', '', '', ''),
	(7, 2, 49, 'user', 'last', '', '', ''),
	(8, 2, 49, 'user', 'name', 'Тест', '', 'Тест'),
	(9, 2, 50, 'user', 'first', 'Тест2', '', 'Тест2'),
	(10, 2, 50, 'user', 'middle', '', '', ''),
	(11, 2, 50, 'user', 'last', '', '', ''),
	(12, 2, 50, 'user', 'name', 'Тест2', '', 'Тест2'),
	(13, 2, 51, 'user', 'first', 'Support', '', 'Support'),
	(14, 2, 51, 'user', 'middle', '', '', ''),
	(15, 2, 51, 'user', 'last', '', '', ''),
	(16, 2, 51, 'user', 'name', 'Support', '', 'Support');
/*!40000 ALTER TABLE `gy3te_social_fields_data` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_fields_options
CREATE TABLE IF NOT EXISTS `gy3te_social_fields_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `key` varchar(255) NOT NULL,
  `ordering` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_parents` (`parent_id`,`key`),
  KEY `idx_parentid` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_fields_options: 0 rows
DELETE FROM `gy3te_social_fields_options`;
/*!40000 ALTER TABLE `gy3te_social_fields_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_fields_options` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_fields_position
CREATE TABLE IF NOT EXISTS `gy3te_social_fields_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field_id` int(11) NOT NULL,
  `position` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_fields_position: 0 rows
DELETE FROM `gy3te_social_fields_position`;
/*!40000 ALTER TABLE `gy3te_social_fields_position` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_fields_position` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_fields_rules
CREATE TABLE IF NOT EXISTS `gy3te_social_fields_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `match_text` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_fields_rules: 0 rows
DELETE FROM `gy3te_social_fields_rules`;
/*!40000 ALTER TABLE `gy3te_social_fields_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_fields_rules` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_fields_steps
CREATE TABLE IF NOT EXISTS `gy3te_social_fields_steps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL,
  `workflow_id` bigint(20) NOT NULL,
  `type` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `state` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `sequence` int(11) NOT NULL,
  `visible_registration` tinyint(3) NOT NULL,
  `visible_edit` tinyint(3) NOT NULL,
  `visible_display` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `workflow_id` (`workflow_id`),
  KEY `state` (`state`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_fields_steps: 4 rows
DELETE FROM `gy3te_social_fields_steps`;
/*!40000 ALTER TABLE `gy3te_social_fields_steps` DISABLE KEYS */;
INSERT INTO `gy3te_social_fields_steps` (`id`, `uid`, `workflow_id`, `type`, `title`, `description`, `state`, `created`, `sequence`, `visible_registration`, `visible_edit`, `visible_display`) VALUES
	(1, 1, 1, 'profiles', 'COM_EASYSOCIAL_FIELDS_PROFILE_DEFAULT_STEP_BASIC_INFORMATION', 'COM_EASYSOCIAL_FIELDS_PROFILE_DEFAULT_STEP_BASIC_INFORMATION_DESC', 1, '2018-05-12 09:09:24', 1, 1, 1, 1),
	(2, 2, 2, 'clusters', 'COM_EASYSOCIAL_FIELDS_GROUP_INFO', 'COM_EASYSOCIAL_FIELDS_GROUP_INFO_DESC', 1, '2018-05-12 09:09:24', 1, 1, 1, 1),
	(3, 3, 3, 'clusters', 'COM_EASYSOCIAL_FIELDS_EVENT_INFO', 'COM_EASYSOCIAL_FIELDS_EVENT_INFO_DESC', 1, '2018-05-12 09:09:24', 1, 1, 1, 1),
	(4, 4, 4, 'clusters', 'COM_EASYSOCIAL_FIELDS_PAGE_INFO', 'COM_EASYSOCIAL_FIELDS_PAGE_INFO_DESC', 1, '2018-05-12 09:09:24', 1, 1, 1, 1);
/*!40000 ALTER TABLE `gy3te_social_fields_steps` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_files
CREATE TABLE IF NOT EXISTS `gy3te_social_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `collection_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `hits` int(11) NOT NULL,
  `hash` text NOT NULL,
  `uid` int(11) NOT NULL,
  `type` text NOT NULL,
  `created` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `size` text NOT NULL,
  `mime` text NOT NULL,
  `state` tinyint(3) NOT NULL,
  `storage` varchar(255) NOT NULL DEFAULT 'joomla',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `collection_id` (`collection_id`),
  KEY `idx_storage_cron` (`storage`,`created`),
  KEY `idx_created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_files: 0 rows
DELETE FROM `gy3te_social_files`;
/*!40000 ALTER TABLE `gy3te_social_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_files` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_files_collections
CREATE TABLE IF NOT EXISTS `gy3te_social_files_collections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `owner_type` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'This is the person that creates the item.',
  `title` varchar(255) NOT NULL,
  `desc` text NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_files_collections: 0 rows
DELETE FROM `gy3te_social_files_collections`;
/*!40000 ALTER TABLE `gy3te_social_files_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_files_collections` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_friends
CREATE TABLE IF NOT EXISTS `gy3te_social_friends` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `actor_id` int(11) NOT NULL,
  `target_id` int(11) NOT NULL,
  `state` tinyint(3) NOT NULL,
  `created` datetime NOT NULL,
  `message` text NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_friends_actor` (`actor_id`),
  KEY `idx_friends_target` (`target_id`),
  KEY `idx_friends_actor_state` (`actor_id`,`state`),
  KEY `idx_friends_target_state` (`target_id`,`state`),
  KEY `idx_actor_target` (`actor_id`,`target_id`,`state`),
  KEY `idx_target_actor` (`target_id`,`actor_id`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_friends: 0 rows
DELETE FROM `gy3te_social_friends`;
/*!40000 ALTER TABLE `gy3te_social_friends` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_friends` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_friends_invitations
CREATE TABLE IF NOT EXISTS `gy3te_social_friends_invitations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `email` text NOT NULL,
  `created` datetime NOT NULL,
  `message` text NOT NULL,
  `registered_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_friends_invitations: 0 rows
DELETE FROM `gy3te_social_friends_invitations`;
/*!40000 ALTER TABLE `gy3te_social_friends_invitations` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_friends_invitations` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_indexer
CREATE TABLE IF NOT EXISTS `gy3te_social_indexer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `utype` varchar(64) DEFAULT NULL,
  `component` varchar(64) DEFAULT NULL,
  `title` text NOT NULL,
  `content` longtext NOT NULL,
  `link` text,
  `last_update` datetime NOT NULL,
  `ucreator` bigint(20) unsigned DEFAULT '0',
  `image` text,
  PRIMARY KEY (`id`),
  KEY `social_source` (`uid`,`utype`,`component`),
  FULLTEXT KEY `social_indexer_snapshot` (`title`,`content`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_indexer: 0 rows
DELETE FROM `gy3te_social_indexer`;
/*!40000 ALTER TABLE `gy3te_social_indexer` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_indexer` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_languages
CREATE TABLE IF NOT EXISTS `gy3te_social_languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `updated` datetime NOT NULL,
  `state` tinyint(3) NOT NULL,
  `translator` varchar(255) NOT NULL,
  `progress` int(11) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_languages: 0 rows
DELETE FROM `gy3te_social_languages`;
/*!40000 ALTER TABLE `gy3te_social_languages` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_languages` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_likes
CREATE TABLE IF NOT EXISTS `gy3te_social_likes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `reaction` varchar(255) DEFAULT 'like',
  `type` varchar(255) NOT NULL,
  `uid` bigint(20) NOT NULL,
  `stream_id` bigint(20) DEFAULT '0',
  `uri` text,
  `created_by` bigint(20) unsigned DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `social_likes_uid` (`uid`),
  KEY `social_likes_contenttype` (`type`),
  KEY `social_likes_createdby` (`created_by`),
  KEY `social_likes_content_type` (`type`,`uid`),
  KEY `social_likes_content_type_by` (`type`,`uid`,`created_by`),
  KEY `idx_stream_id` (`stream_id`),
  KEY `idx_reaction` (`reaction`(25)),
  KEY `idx_usermood` (`created_by`,`created`,`reaction`(25))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_likes: 0 rows
DELETE FROM `gy3te_social_likes`;
/*!40000 ALTER TABLE `gy3te_social_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_likes` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_links
CREATE TABLE IF NOT EXISTS `gy3te_social_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hash` varchar(255) NOT NULL,
  `data` text NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hash` (`hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_links: 0 rows
DELETE FROM `gy3te_social_links`;
/*!40000 ALTER TABLE `gy3te_social_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_links` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_links_images
CREATE TABLE IF NOT EXISTS `gy3te_social_links_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_url` text NOT NULL,
  `internal_url` text NOT NULL,
  `storage` varchar(255) NOT NULL DEFAULT 'joomla',
  PRIMARY KEY (`id`),
  KEY `idx_storage_cron` (`storage`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_links_images: 0 rows
DELETE FROM `gy3te_social_links_images`;
/*!40000 ALTER TABLE `gy3te_social_links_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_links_images` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_lists
CREATE TABLE IF NOT EXISTS `gy3te_social_lists` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `alias` text NOT NULL,
  `description` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `default` tinyint(3) NOT NULL,
  `state` tinyint(3) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'friends',
  PRIMARY KEY (`id`),
  KEY `idx_userid` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_lists: 0 rows
DELETE FROM `gy3te_social_lists`;
/*!40000 ALTER TABLE `gy3te_social_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_lists` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_lists_maps
CREATE TABLE IF NOT EXISTS `gy3te_social_lists_maps` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `list_id` bigint(20) NOT NULL,
  `target_id` bigint(20) NOT NULL,
  `target_type` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_target_id` (`target_id`),
  KEY `idx_target_list_type` (`target_id`,`list_id`,`target_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_lists_maps: 0 rows
DELETE FROM `gy3te_social_lists_maps`;
/*!40000 ALTER TABLE `gy3te_social_lists_maps` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_lists_maps` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_locations
CREATE TABLE IF NOT EXISTS `gy3te_social_locations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL,
  `type` text NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created` datetime NOT NULL,
  `short_address` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_locations: 0 rows
DELETE FROM `gy3te_social_locations`;
/*!40000 ALTER TABLE `gy3te_social_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_locations` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_logger
CREATE TABLE IF NOT EXISTS `gy3te_social_logger` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `file` varchar(255) NOT NULL,
  `line` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_logger: 0 rows
DELETE FROM `gy3te_social_logger`;
/*!40000 ALTER TABLE `gy3te_social_logger` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_logger` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_mailer
CREATE TABLE IF NOT EXISTS `gy3te_social_mailer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_name` text NOT NULL,
  `sender_email` text NOT NULL,
  `replyto_email` text NOT NULL,
  `recipient_name` text NOT NULL,
  `recipient_email` text NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `template` text NOT NULL,
  `html` tinyint(4) NOT NULL,
  `state` tinyint(4) NOT NULL,
  `response` text NOT NULL,
  `created` datetime NOT NULL,
  `params` text NOT NULL,
  `priority` tinyint(4) NOT NULL COMMENT '1 - Low , 2 - Medium , 3 - High , 4 - Highest',
  `language` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `state` (`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_mailer: 0 rows
DELETE FROM `gy3te_social_mailer`;
/*!40000 ALTER TABLE `gy3te_social_mailer` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_mailer` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_migrators
CREATE TABLE IF NOT EXISTS `gy3te_social_migrators` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `oid` bigint(20) unsigned NOT NULL,
  `element` varchar(100) NOT NULL,
  `component` varchar(100) NOT NULL,
  `uid` bigint(20) unsigned NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `component_content` (`component`,`oid`,`element`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Store migrated content id and map with easysocial item id.';

-- Дамп данных таблицы prodogsinfo.gy3te_social_migrators: 0 rows
DELETE FROM `gy3te_social_migrators`;
/*!40000 ALTER TABLE `gy3te_social_migrators` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_migrators` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_moods
CREATE TABLE IF NOT EXISTS `gy3te_social_moods` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key of the row',
  `namespace` varchar(255) NOT NULL COMMENT 'Determines if this item is tied to a specific item',
  `namespace_uid` int(11) NOT NULL,
  `icon` varchar(255) NOT NULL COMMENT 'Contains the css class for the emoticon',
  `verb` varchar(255) NOT NULL COMMENT 'Feeling, Watching, Eating etc',
  `subject` text NOT NULL COMMENT 'Happy, Sad, Angry etc',
  `custom` tinyint(3) NOT NULL COMMENT 'Determines if the user supplied a custom text',
  `text` text NOT NULL COMMENT 'If there is a custom text, based on the custom column, this text will be used.',
  `user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_moods: 0 rows
DELETE FROM `gy3te_social_moods`;
/*!40000 ALTER TABLE `gy3te_social_moods` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_moods` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_notifications
CREATE TABLE IF NOT EXISTS `gy3te_social_notifications` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `context_ids` text NOT NULL,
  `context_type` varchar(255) NOT NULL,
  `cmd` text NOT NULL,
  `app_id` bigint(20) DEFAULT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `image` text NOT NULL,
  `created` datetime NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `actor_id` int(11) NOT NULL,
  `actor_type` varchar(255) NOT NULL,
  `target_id` int(11) NOT NULL,
  `target_type` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `node_id` (`uid`,`created`),
  KEY `idx_target_state` (`target_id`,`target_type`,`state`),
  KEY `idx_target_created` (`target_id`,`target_type`,`created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_notifications: 0 rows
DELETE FROM `gy3te_social_notifications`;
/*!40000 ALTER TABLE `gy3te_social_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_notifications` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_oauth
CREATE TABLE IF NOT EXISTS `gy3te_social_oauth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oauth_id` varchar(255) NOT NULL,
  `uid` int(11) NOT NULL,
  `type` text NOT NULL,
  `client` varchar(255) NOT NULL,
  `token` text NOT NULL,
  `secret` text NOT NULL,
  `created` datetime NOT NULL,
  `expires` varchar(255) NOT NULL,
  `pull` tinyint(3) NOT NULL,
  `push` tinyint(3) NOT NULL,
  `params` text NOT NULL,
  `last_pulled` datetime NOT NULL,
  `last_pushed` datetime NOT NULL,
  `permissions` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pull` (`pull`,`push`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_oauth: 0 rows
DELETE FROM `gy3te_social_oauth`;
/*!40000 ALTER TABLE `gy3te_social_oauth` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_oauth` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_oauth_history
CREATE TABLE IF NOT EXISTS `gy3te_social_oauth_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oauth_id` int(11) NOT NULL,
  `remote_id` int(11) NOT NULL,
  `remote_type` varchar(255) NOT NULL,
  `local_id` int(11) NOT NULL,
  `local_type` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_oauth_history: 0 rows
DELETE FROM `gy3te_social_oauth_history`;
/*!40000 ALTER TABLE `gy3te_social_oauth_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_oauth_history` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_photos
CREATE TABLE IF NOT EXISTS `gy3te_social_photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `post_as` varchar(64) DEFAULT 'user',
  `user_id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `caption` text NOT NULL,
  `created` datetime NOT NULL,
  `assigned_date` datetime NOT NULL,
  `ordering` tinyint(3) NOT NULL,
  `featured` tinyint(3) NOT NULL,
  `state` tinyint(3) NOT NULL,
  `storage` varchar(255) NOT NULL DEFAULT 'joomla',
  `total_size` bigint(20) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `idx_photos_user_photos` (`state`,`uid`,`type`,`ordering`),
  KEY `idx_albums` (`state`,`album_id`,`ordering`),
  KEY `idx_storage_cron` (`state`,`storage`,`created`),
  KEY `idx_created` (`created`),
  KEY `idx_state_created` (`state`,`created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_photos: 0 rows
DELETE FROM `gy3te_social_photos`;
/*!40000 ALTER TABLE `gy3te_social_photos` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_photos` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_photos_meta
CREATE TABLE IF NOT EXISTS `gy3te_social_photos_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photo_id` int(11) NOT NULL,
  `group` varchar(255) NOT NULL,
  `property` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `photo_id` (`photo_id`),
  KEY `group` (`group`),
  KEY `idx_sql1` (`photo_id`,`group`(64),`property`),
  KEY `idx_sql2` (`photo_id`,`group`(64))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_photos_meta: 0 rows
DELETE FROM `gy3te_social_photos_meta`;
/*!40000 ALTER TABLE `gy3te_social_photos_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_photos_meta` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_photos_tag
CREATE TABLE IF NOT EXISTS `gy3te_social_photos_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photo_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `label` text NOT NULL,
  `top` varchar(255) NOT NULL,
  `left` varchar(255) NOT NULL,
  `width` varchar(255) NOT NULL,
  `height` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_photos_tag: 0 rows
DELETE FROM `gy3te_social_photos_tag`;
/*!40000 ALTER TABLE `gy3te_social_photos_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_photos_tag` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_points
CREATE TABLE IF NOT EXISTS `gy3te_social_points` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `command` varchar(255) NOT NULL,
  `extension` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL COMMENT 'The title of the points',
  `description` text NOT NULL,
  `alias` varchar(255) NOT NULL COMMENT 'The permalink that links to the points.',
  `created` datetime NOT NULL COMMENT 'Creation datetime of the points.',
  `threshold` int(11) DEFAULT NULL COMMENT 'Optional value if app needs to give points based on certain actions multiple times.',
  `interval` int(11) NOT NULL DEFAULT '0' COMMENT '0 - every time , 1 - once , 2 - twice - n times',
  `points` int(11) NOT NULL DEFAULT '0' COMMENT 'The amount of points to be given.',
  `state` tinyint(3) NOT NULL COMMENT 'The state of the points. 0 - unpublished, 1 - published ',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `state` (`state`),
  KEY `command_id` (`command`)
) ENGINE=MyISAM AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_points: 130 rows
DELETE FROM `gy3te_social_points`;
/*!40000 ALTER TABLE `gy3te_social_points` DISABLE KEYS */;
INSERT INTO `gy3te_social_points` (`id`, `command`, `extension`, `title`, `description`, `alias`, `created`, `threshold`, `interval`, `points`, `state`, `params`) VALUES
	(1, 'create.article', 'com_content', 'PLG_APP_USER_ARTICLE_CREATE_ARTICLE_POINTS_TITLE', 'PLG_APP_USER_ARTICLE_CREATE_ARTICLE_POINTS_DESC', 'create-article', '2018-05-12 09:09:17', NULL, 0, 5, 1, ''),
	(2, 'delete.article', 'com_content', 'PLG_APP_USER_ARTICLE_DELETED_ARTICLE_POINTS_TITLE', 'PLG_APP_USER_ARTICLE_DELETED_ARTICLE_POINTS_DESC', 'deleted-article', '2018-05-12 09:09:17', NULL, 0, -5, 1, ''),
	(3, 'read.article', 'com_content', 'PLG_APP_USER_ARTICLE_READ_ARTICLE_POINTS_TITLE', 'PLG_APP_USER_ARTICLE_READ_ARTICLE_POINTS_DESC', 'read-article', '2018-05-12 09:09:17', NULL, 0, 1, 1, ''),
	(4, 'author.read.article', 'com_content', 'PLG_APP_USER_ARTICLE_READ_ARTICLE_BY_USER_POINTS_TITLE', 'PLG_APP_USER_ARTICLE_READ_ARTICLE_BY_USER_POINTS_DESC', 'article-read-user', '2018-05-12 09:09:17', NULL, 0, 1, 1, ''),
	(5, 'apps.install', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_INSTALL_APPLICATIONS', 'COM_EASYSOCIAL_POINTS_INSTALL_APPLICATIONS_DESC', 'install-apps', '2018-05-12 09:09:23', NULL, 0, 5, 1, ''),
	(6, 'apps.uninstall', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_UNINSTALL_APPLICATIONS', 'COM_EASYSOCIAL_POINTS_UNINSTALL_APPLICATIONS_DESC', 'uninstall-apps', '2018-05-12 09:09:23', NULL, 0, -5, 1, ''),
	(7, 'audio.upload', 'com_easysocial', 'COM_ES_POINTS_UPLOAD_AUDIO', 'COM_ES_POINTS_UPLOAD_AUDIO_DESC', 'upload-audio', '2018-05-12 09:09:23', NULL, 0, 5, 1, ''),
	(8, 'audio.remove', 'com_easysocial', 'COM_ES_POINTS_REMOVE_AUDIO', 'COM_ES_POINTS_REMOVE_AUDIO_DESC', 'remove-audio', '2018-05-12 09:09:23', NULL, 0, -5, 1, ''),
	(9, 'audio.like', 'com_easysocial', 'COM_ES_POINTS_LIKE_AUDIO', 'COM_ES_POINTS_LIKE_AUDIO_DESC', 'like-audio', '2018-05-12 09:09:23', NULL, 0, 1, 1, ''),
	(10, 'audio.unlike', 'com_easysocial', 'COM_ES_POINTS_UNLIKE_AUDIO', 'COM_ES_POINTS_UNLIKE_AUDIO_DESC', 'unlike-audio', '2018-05-12 09:09:23', NULL, 0, -1, 1, ''),
	(11, 'audio.comment.add', 'com_easysocial', 'COM_ES_POINTS_COMMENT_ON_AUDIO', 'COM_ES_POINTS_COMMENT_ON_AUDIO_DESC', 'comment-audio', '2018-05-12 09:09:23', NULL, 0, 1, 1, ''),
	(12, 'audio.comment.remove', 'com_easysocial', 'COM_ES_POINTS_COMMENT_REMOVE_FROM_AUDIO', 'COM_ES_POINTS_COMMENT_REMOVE_FROM_AUDIO_DESC', 'comment-audio-removed', '2018-05-12 09:09:23', NULL, 0, -1, 1, ''),
	(13, 'audio.featured', 'com_easysocial', 'COM_ES_POINTS_AUDIO_FEATURED', 'COM_ES_POINTS_AUDIO_FEATURED_DESC', 'audio-featured', '2018-05-12 09:09:23', NULL, 0, 2, 1, ''),
	(14, 'audio.unfeatured', 'com_easysocial', 'COM_ES_POINTS_AUDIO_UNFEATURED', 'COM_ES_POINTS_AUDIO_UNFEATURED_DESC', 'audio-unfeatured', '2018-05-12 09:09:23', NULL, 0, -2, 1, ''),
	(15, 'badges.achieve', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_BADGES_ACHIEVE', 'COM_EASYSOCIAL_POINTS_BADGES_ACHIEVE_DESC', 'badges-achieve', '2018-05-12 09:09:23', NULL, 0, 5, 1, ''),
	(16, 'conversation.create', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_START_CONVERSATION', 'COM_EASYSOCIAL_POINTS_START_CONVERSATION_DESC', 'conversation-starter', '2018-05-12 09:09:23', NULL, 0, 5, 1, ''),
	(17, 'conversation.create.group', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_START_CONVERSATION_GROUP', 'COM_EASYSOCIAL_POINTS_START_CONVERSATION_GROUP_DESC', 'conversation-group-starter', '2018-05-12 09:09:23', NULL, 0, 10, 1, ''),
	(18, 'conversation.reply', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_REPLY_CONVERSATION', 'COM_EASYSOCIAL_POINTS_REPLY_CONVERSATION_DESC', 'conversation-reply', '2018-05-12 09:09:23', NULL, 0, 2, 1, ''),
	(19, 'conversation.invite', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_INVITE_TO_CONVERSATION', 'COM_EASYSOCIAL_POINTS_INVITE_TO_CONVERSATION_DESC', 'invite-user-conversation', '2018-05-12 09:09:23', NULL, 0, 5, 1, ''),
	(20, 'conversation.read', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_READ_CONVERSATION', 'COM_EASYSOCIAL_POINTS_READ_CONVERSATION_DESC', 'conversation.read', '2018-05-12 09:09:23', NULL, 0, 1, 1, ''),
	(21, 'events.create', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_EVENTS_CREATE', 'COM_EASYSOCIAL_POINTS_EVENTS_CREATE_DESC', 'events-create', '2018-05-12 09:09:23', NULL, 0, 5, 1, ''),
	(22, 'events.update', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_EVENTS_UPDATE', 'COM_EASYSOCIAL_POINTS_EVENTS_UPDATE_DESC', 'events-update', '2018-05-12 09:09:23', NULL, 0, 2, 1, ''),
	(23, 'events.remove', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_EVENTS_REMOVED', 'COM_EASYSOCIAL_POINTS_EVENTS_REMOVED_DESC', 'events-remove', '2018-05-12 09:09:23', NULL, 0, -5, 1, ''),
	(24, 'events.invite', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_EVENTS_INVITE', 'COM_EASYSOCIAL_POINTS_EVENTS_INVITE_DESC', 'events-invite', '2018-05-12 09:09:23', NULL, 0, 1, 1, ''),
	(25, 'events.going', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_EVENTS_GOING', 'COM_EASYSOCIAL_POINTS_EVENTS_GOING_DESC', 'events-going', '2018-05-12 09:09:23', NULL, 0, 2, 1, ''),
	(26, 'events.notgoing', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_EVENTS_NOTGOING', 'COM_EASYSOCIAL_POINTS_EVENTS_NOTGOING_DESC', 'events-notgoing', '2018-05-12 09:09:23', NULL, 0, -2, 1, ''),
	(27, 'events.discussion.create', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_EVENTS_DISCUSSION_CREATE', 'COM_EASYSOCIAL_POINTS_EVENTS_DISCUSSION_CREATE_DESC', 'events-discussion-create', '2018-05-12 09:09:23', NULL, 0, 1, 1, ''),
	(28, 'events.discussion.delete', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_EVENTS_DISCUSSION_DELETE', 'COM_EASYSOCIAL_POINTS_EVENTS_DISCUSSION_DELETE_DESC', 'events-discussion-delete', '2018-05-12 09:09:23', NULL, 0, -1, 1, ''),
	(29, 'events.discussion.deletereply', 'com_easysocial', 'COM_ES_POINTS_EVENTS_DELETE_REPLY_DISCUSSION', 'COM_ES_POINTS_EVENTS_DELETE_REPLY_DISCUSSION_DESC', 'events-discussion-deletereply', '2018-05-12 09:09:23', NULL, 0, -1, 1, ''),
	(30, 'events.discussion.answer', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_EVENTS_DISCUSSION_ANSWER', 'COM_EASYSOCIAL_POINTS_EVENTS_DISCUSSION_ANSWER_DESC', 'events-discussion-answer', '2018-05-12 09:09:23', NULL, 0, 1, 1, ''),
	(31, 'events.discussion.rejectanswer', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_EVENTS_ANSWER_REJECT_DISCUSSION', 'COM_EASYSOCIAL_POINTS_EVENTS_ANSWER_REJECT_DISCUSSION_DESC', 'answer-reject-discussion-event', '2018-05-12 09:09:23', NULL, 0, -1, 1, ''),
	(32, 'events.discussion.reply', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_EVENTS_DISCUSSION_REPLY', 'COM_EASYSOCIAL_POINTS_EVENTS_DISCUSSION_REPLY_DESC', 'events-discussion-reply', '2018-05-12 09:09:23', NULL, 0, 1, 1, ''),
	(33, 'events.news.create', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_EVENTS_NEWS_CREATE', 'COM_EASYSOCIAL_POINTS_EVENTS_NEWS_CREATE_DESC', 'events-news-create', '2018-05-12 09:09:23', NULL, 0, 1, 1, ''),
	(34, 'events.news.delete', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_EVENTS_NEWS_DELETE', 'COM_EASYSOCIAL_POINTS_EVENTS_NEWS_DELETE_DESC', 'events-news-delete', '2018-05-12 09:09:23', NULL, 0, -1, 1, ''),
	(35, 'events.milestone.create', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_EVENTS_MILESTONE_CREATE', 'COM_EASYSOCIAL_POINTS_EVENTS_MILESTONE_CREATE_DESC', 'events-milestone-create', '2018-05-12 09:09:23', NULL, 0, 1, 1, ''),
	(36, 'events.milestone.delete', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_EVENTS_MILESTONE_DELETE', 'COM_EASYSOCIAL_POINTS_EVENTS_MILESTONE_DELETE_DESC', 'events-milestone-delete', '2018-05-12 09:09:23', NULL, 0, -1, 1, ''),
	(37, 'events.task.create', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_EVENTS_TASK_CREATE', 'COM_EASYSOCIAL_POINTS_EVENTS_TASK_CREATE_DESC', 'events-task-create', '2018-05-12 09:09:23', NULL, 0, 1, 1, ''),
	(38, 'events.task.delete', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_EVENTS_TASK_DELETE', 'COM_EASYSOCIAL_POINTS_EVENTS_TASK_DELETE_DESC', 'events-task-delete', '2018-05-12 09:09:23', NULL, 0, -1, 1, ''),
	(39, 'events.task.resolve', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_EVENTS_TASK_RESOLVE', 'COM_EASYSOCIAL_POINTS_EVENTS_TASK_RESOLVE_DESC', 'events-task-resolve', '2018-05-12 09:09:23', NULL, 0, 1, 1, ''),
	(40, 'events.task.unresolve', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_EVENTS_TASK_UNRESOLVE', 'COM_EASYSOCIAL_POINTS_EVENTS_TASK_UNRESOLVE_DESC', 'events-task-unresolve', '2018-05-12 09:09:23', NULL, 0, -1, 1, ''),
	(41, 'event.discussion.liked', 'com_easysocial', 'COM_ES_POINTS_EVENTS_DISCUSSION_POST_LIKED', 'COM_ES_POINTS_EVENTS_DISCUSSION_POST_LIKED_DESC', 'events-discussion-liked', '2018-05-12 09:09:23', NULL, 0, 1, 1, ''),
	(42, 'event.discussion.unliked', 'com_easysocial', 'COM_ES_POINTS_EVENTS_DISCUSSION_POST_UNLIKED', 'COM_ES_POINTS_EVENTS_DISCUSSION_POST_UNLIKED_DESC', 'events-discussion-unliked', '2018-05-12 09:09:23', NULL, 0, -1, 1, ''),
	(43, 'events.review.added', 'com_easysocial', 'COM_ES_POINTS_REVIEW_ADDED_EVENTS', 'COM_ES_POINTS_REVIEW_ADDED_DESC', 'events-review-added', '2018-05-12 09:09:23', NULL, 0, 1, 1, ''),
	(44, 'files.upload', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_FILES_UPLOAD', 'COM_EASYSOCIAL_POINTS_FILES_UPLOAD_DESC', 'file-upload', '2018-05-12 09:09:23', NULL, 0, 2, 1, ''),
	(45, 'files.download', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_FILES_DOWNLOAD', 'COM_EASYSOCIAL_POINTS_FILES_DOWNLOAD_DESC', 'file-download', '2018-05-12 09:09:23', NULL, 0, 1, 1, ''),
	(46, 'friends.add', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_FRIENDS_ADD', 'COM_EASYSOCIAL_POINTS_FRIENDS_ADD_DESC', 'friends-add', '2018-05-12 09:09:23', NULL, 0, 5, 1, ''),
	(47, 'friends.remove', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_FRIENDS_REMOVE', 'COM_EASYSOCIAL_POINTS_FRIENDS_REMOVE_DESC', 'friends-remove', '2018-05-12 09:09:23', NULL, 0, -5, 1, ''),
	(48, 'friends.approve', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_FRIENDS_APPROVE', 'COM_EASYSOCIAL_POINTS_FRIENDS_APPROVE_DESC', 'friends-approve', '2018-05-12 09:09:23', NULL, 0, 2, 1, ''),
	(49, 'friends.list.create', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_CREATE_FRIEND_LIST', 'COM_EASYSOCIAL_POINTS_CREATE_FRIEND_LIST_DESC', 'friends-list-create', '2018-05-12 09:09:23', NULL, 0, 2, 1, ''),
	(50, 'friends.list.delete', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_REMOVE_FRIEND_LIST', 'COM_EASYSOCIAL_POINTS_REMOVE_FRIEND_LIST_DESC', 'friends-list-delete', '2018-05-12 09:09:23', NULL, 0, -2, 1, ''),
	(51, 'friends.list.add', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_ASSIGN_FRIEND_TO_LIST', 'COM_EASYSOCIAL_POINTS_ASSIGN_FRIEND_TO_LIST_DESC', 'friends-list-add', '2018-05-12 09:09:23', NULL, 0, 1, 1, ''),
	(52, 'friends.invite', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_FRIENDS_INVITE', 'COM_EASYSOCIAL_POINTS_FRIENDS_INVITE_DESC', 'friends-invite', '2018-05-12 09:09:23', NULL, 0, 1, 1, ''),
	(53, 'friends.registered', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_FRIENDS_INVITE_REGISTERED', 'COM_EASYSOCIAL_POINTS_FRIENDS_INVITE_REGISTERED_DESC', 'friends-invite-registered', '2018-05-12 09:09:23', NULL, 0, 5, 1, ''),
	(54, 'groups.create', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_CREATE_GROUP', 'COM_EASYSOCIAL_POINTS_CREATE_GROUP_DESC', 'create-group', '2018-05-12 09:09:23', NULL, 0, 5, 1, ''),
	(55, 'groups.remove', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_REMOVED_GROUP', 'COM_EASYSOCIAL_POINTS_REMOVED_GROUP_DESC', 'removed-group', '2018-05-12 09:09:23', NULL, 0, -5, 1, ''),
	(56, 'groups.join', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_JOIN_GROUP', 'COM_EASYSOCIAL_POINTS_JOIN_GROUP_DESC', 'join-group', '2018-05-12 09:09:23', NULL, 0, 2, 1, ''),
	(57, 'groups.leave', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_LEAVE_GROUP', 'COM_EASYSOCIAL_POINTS_LEAVE_GROUP_DESC', 'leave-group', '2018-05-12 09:09:23', NULL, 0, -2, 1, ''),
	(58, 'groups.invite', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_GROUP_INVITE_FRIENDS', 'COM_EASYSOCIAL_POINTS_GROUP_INVITE_FRIENDS_DESC', 'invite-friends-group', '2018-05-12 09:09:23', NULL, 0, 1, 1, ''),
	(59, 'groups.update', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_UPDATE_GROUP', 'COM_EASYSOCIAL_POINTS_UPDATE_GROUP_DESC', 'updated-group', '2018-05-12 09:09:23', NULL, 0, 2, 1, ''),
	(60, 'groups.discussion.create', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_GROUP_CREATE_DISCUSSION', 'COM_EASYSOCIAL_POINTS_GROUP_CREATE_DISCUSSION_DESC', 'create-discussion-group', '2018-05-12 09:09:23', NULL, 0, 1, 1, ''),
	(61, 'groups.discussion.delete', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_GROUP_DELETE_DISCUSSION', 'COM_EASYSOCIAL_POINTS_GROUP_DELETE_DISCUSSION_DESC', 'delete-discussion-group', '2018-05-12 09:09:23', NULL, 0, -1, 1, ''),
	(62, 'groups.discussion.reply', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_GROUP_REPLY_DISCUSSION', 'COM_EASYSOCIAL_POINTS_GROUP_REPLY_DISCUSSION_DESC', 'reply-discussion-group', '2018-05-12 09:09:23', NULL, 0, 1, 1, ''),
	(63, 'groups.discussion.deletereply', 'com_easysocial', 'COM_ES_POINTS_GROUP_DELETE_REPLY_DISCUSSION', 'COM_ES_POINTS_GROUP_DELETE_REPLY_DISCUSSION_DESC', 'deletereply-discussion-group', '2018-05-12 09:09:23', NULL, 0, -1, 1, ''),
	(64, 'groups.discussion.answer', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_GROUP_ANSWER_DISCUSSION', 'COM_EASYSOCIAL_POINTS_GROUP_ANSWER_DISCUSSION_DESC', 'answer-discussion-group', '2018-05-12 09:09:23', NULL, 0, 1, 1, ''),
	(65, 'groups.discussion.rejectanswer', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_GROUP_ANSWER_REJECT_DISCUSSION', 'COM_EASYSOCIAL_POINTS_GROUP_ANSWER_REJECT_DISCUSSION_DESC', 'answer-reject-discussion-group', '2018-05-12 09:09:23', NULL, 0, -1, 1, ''),
	(66, 'group.discussion.liked', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_GROUP_DISCUSSION_POST_LIKED', 'COM_EASYSOCIAL_POINTS_GROUP_DISCUSSION_POST_LIKED_DESC', 'group-discussion-liked', '2018-05-12 09:09:23', NULL, 0, 1, 1, ''),
	(67, 'group.discussion.unliked', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_GROUP_DISCUSSION_POST_UNLIKED', 'COM_EASYSOCIAL_POINTS_GROUP_DISCUSSION_POST_UNLIKED_DESC', 'group-discussion-unliked', '2018-05-12 09:09:23', NULL, 0, -1, 1, ''),
	(68, 'groups.discussion.reply.liked', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_GROUP_DISCUSSION_REPLY_LIKED', 'COM_EASYSOCIAL_POINTS_GROUP_DISCUSSION_REPLY_LIKED_DESC', 'group-discussion-reply-liked', '2018-05-12 09:09:23', NULL, 0, 1, 1, ''),
	(69, 'groups.discussion.reply.unliked', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_GROUP_DISCUSSION_REPLY_UNLIKED', 'COM_EASYSOCIAL_POINTS_GROUP_DISCUSSION_REPLY_UNLIKED_DESC', 'group-discussion-reply-unliked', '2018-05-12 09:09:23', NULL, 0, -1, 1, ''),
	(70, 'groups.news.create', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_GROUP_CREATE_NEWS', 'COM_EASYSOCIAL_POINTS_GROUP_CREATE_NEWS_DESC', 'create-news-group', '2018-05-12 09:09:23', NULL, 0, 1, 1, ''),
	(71, 'groups.news.delete', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_GROUP_DELETE_NEWS', 'COM_EASYSOCIAL_POINTS_GROUP_DELETE_NEWS_DESC', 'delete-news-group', '2018-05-12 09:09:23', NULL, 0, -1, 1, ''),
	(72, 'groups.milestone.create', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_GROUP_CREATE_MILESTONE', 'COM_EASYSOCIAL_POINTS_GROUP_CREATE_MILESTONE_DESC', 'create-milestone-group', '2018-05-12 09:09:23', NULL, 0, 1, 1, ''),
	(73, 'groups.milestone.delete', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_GROUP_DELETE_MILESTONE', 'COM_EASYSOCIAL_POINTS_GROUP_DELETE_MILESTONE_DESC', 'delete-milestone-group', '2018-05-12 09:09:23', NULL, 0, -1, 1, ''),
	(74, 'groups.task.create', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_GROUP_CREATE_TASK', 'COM_EASYSOCIAL_POINTS_GROUP_CREATE_TASK_DESC', 'create-task-group', '2018-05-12 09:09:23', NULL, 0, 1, 1, ''),
	(75, 'groups.task.resolve', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_GROUP_RESOLVE_TASK', 'COM_EASYSOCIAL_POINTS_GROUP_RESOLVE_TASK_DESC', 'resolve-task-group', '2018-05-12 09:09:23', NULL, 0, 1, 1, ''),
	(76, 'groups.task.delete', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_GROUP_DELETE_TASK', 'COM_EASYSOCIAL_POINTS_GROUP_DELETE_TASK_DESC', 'delete-task-group', '2018-05-12 09:09:23', NULL, 0, -1, 1, ''),
	(77, 'groups.review.added', 'com_easysocial', 'COM_ES_POINTS_REVIEW_ADDED_GROUPS', 'COM_ES_POINTS_REVIEW_ADDED_DESC', 'groups-review-added', '2018-05-12 09:09:23', NULL, 0, 1, 1, ''),
	(78, 'pages.create', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_CREATE_PAGE', 'COM_EASYSOCIAL_POINTS_CREATE_PAGE_DESC', 'create-page', '2018-05-12 09:09:23', NULL, 0, 5, 1, ''),
	(79, 'pages.remove', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_REMOVED_PAGE', 'COM_EASYSOCIAL_POINTS_REMOVED_PAGE_DESC', 'removed-page', '2018-05-12 09:09:23', NULL, 0, -5, 1, ''),
	(80, 'pages.like', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_LIKE_PAGE', 'COM_EASYSOCIAL_POINTS_LIKE_PAGE_DESC', 'like-page', '2018-05-12 09:09:23', NULL, 0, 2, 1, ''),
	(81, 'pages.unlike', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_UNLIKE_PAGE', 'COM_EASYSOCIAL_POINTS_UNLIKE_PAGE_DESC', 'unlike-page', '2018-05-12 09:09:23', NULL, 0, -2, 1, ''),
	(82, 'pages.invite', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_PAGE_INVITE_FRIENDS', 'COM_EASYSOCIAL_POINTS_PAGE_INVITE_FRIENDS_DESC', 'invite-friends-page', '2018-05-12 09:09:23', NULL, 0, 1, 1, ''),
	(83, 'pages.update', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_UPDATE_PAGE', 'COM_EASYSOCIAL_POINTS_UPDATE_PAGE_DESC', 'updated-page', '2018-05-12 09:09:23', NULL, 0, 2, 1, ''),
	(84, 'pages.news.create', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_PAGE_CREATE_NEWS', 'COM_EASYSOCIAL_POINTS_PAGE_CREATE_NEWS_DESC', 'create-news-page', '2018-05-12 09:09:23', NULL, 0, 1, 1, ''),
	(85, 'pages.news.delete', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_PAGE_DELETE_NEWS', 'COM_EASYSOCIAL_POINTS_PAGE_DELETE_NEWS_DESC', 'delete-news-page', '2018-05-12 09:09:23', NULL, 0, -1, 1, ''),
	(86, 'pages.discussion.create', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_PAGE_CREATE_DISCUSSION', 'COM_EASYSOCIAL_POINTS_PAGE_CREATE_DISCUSSION_DESC', 'create-discussion-page', '2018-05-12 09:09:23', NULL, 0, 1, 1, ''),
	(87, 'pages.discussion.delete', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_PAGE_DELETE_DISCUSSION', 'COM_EASYSOCIAL_POINTS_PAGE_DELETE_DISCUSSION_DESC', 'delete-discussion-page', '2018-05-12 09:09:23', NULL, 0, -1, 1, ''),
	(88, 'pages.discussion.reply', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_PAGE_REPLY_DISCUSSION', 'COM_EASYSOCIAL_POINTS_PAGE_REPLY_DISCUSSION_DESC', 'reply-discussion-page', '2018-05-12 09:09:23', NULL, 0, 1, 1, ''),
	(89, 'pages.discussion.deletereply', 'com_easysocial', 'COM_ES_POINTS_PAGE_DELETE_REPLY_DISCUSSION', 'COM_ES_POINTS_PAGE_DELETE_REPLY_DISCUSSION_DESC', 'deletereply-discussion-page', '2018-05-12 09:09:23', NULL, 0, -1, 1, ''),
	(90, 'pages.discussion.answer', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_PAGE_ANSWER_DISCUSSION', 'COM_EASYSOCIAL_POINTS_PAGE_ANSWER_DISCUSSION_DESC', 'answer-discussion-page', '2018-05-12 09:09:23', NULL, 0, 1, 1, ''),
	(91, 'pages.discussion.rejectanswer', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_PAGE_ANSWER_REJECT_DISCUSSION', 'COM_EASYSOCIAL_POINTS_PAGE_ANSWER_REJECT_DISCUSSION_DESC', 'answer-reject-discussion-page', '2018-05-12 09:09:23', NULL, 0, -1, 1, ''),
	(92, 'page.discussion.liked', 'com_easysocial', 'COM_ES_POINTS_PAGE_DISCUSSION_POST_LIKED', 'COM_ES_POINTS_PAGE_DISCUSSION_POST_LIKED_DESC', 'page-discussion-liked', '2018-05-12 09:09:23', NULL, 0, 1, 1, ''),
	(93, 'page.discussion.unliked', 'com_easysocial', 'COM_ES_POINTS_PAGE_DISCUSSION_POST_UNLIKED', 'COM_ES_POINTS_PAGE_DISCUSSION_POST_UNLIKED_DESC', 'page-discussion-unliked', '2018-05-12 09:09:23', NULL, 0, -1, 1, ''),
	(94, 'pages.review.added', 'com_easysocial', 'COM_ES_POINTS_REVIEW_ADDED_PAGES', 'COM_ES_POINTS_REVIEW_ADDED_DESC', 'pages-review-added', '2018-05-12 09:09:23', NULL, 0, 1, 1, ''),
	(95, 'photos.upload', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_UPLOAD_PHOTO', 'COM_EASYSOCIAL_POINTS_UPLOAD_PHOTO_DESC', 'upload-photo', '2018-05-12 09:09:23', NULL, 0, 5, 1, ''),
	(96, 'photos.remove', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_REMOVE_PHOTO', 'COM_EASYSOCIAL_POINTS_REMOVE_PHOTO_DESC', 'remove-photo', '2018-05-12 09:09:23', NULL, 0, -5, 1, ''),
	(97, 'photos.albums.create', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_CREATE_PHOTO_ALBUM', 'COM_EASYSOCIAL_POINTS_CREATE_PHOTO_ALBUM_DESC', 'create-photo-album', '2018-05-12 09:09:23', NULL, 0, 5, 1, ''),
	(98, 'photos.albums.remove', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_REMOVE_PHOTO_ALBUM', 'COM_EASYSOCIAL_POINTS_REMOVE_PHOTO_ALBUM_DESC', 'remove-photo-album', '2018-05-12 09:09:23', NULL, 0, -5, 1, ''),
	(99, 'photos.tag', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_TAG_ON_PHOTO', 'COM_EASYSOCIAL_POINTS_TAG_ON_PHOTO_DESC', 'tag-photo', '2018-05-12 09:09:23', NULL, 0, 1, 1, ''),
	(100, 'photos.untag', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_REMOVE_TAG_ON_PHOTO', 'COM_EASYSOCIAL_POINTS_REMOVE_TAG_ON_PHOTO_DESC', 'remove-tag-photo', '2018-05-12 09:09:23', NULL, 0, -1, 1, ''),
	(101, 'photos.like', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_LIKE_PHOTO', 'COM_EASYSOCIAL_POINTS_LIKE_PHOTO_DESC', 'like-photo', '2018-05-12 09:09:23', NULL, 0, 1, 1, ''),
	(102, 'photos.unlike', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_UNLIKE_PHOTO', 'COM_EASYSOCIAL_POINTS_UNLIKE_PHOTO_DESC', 'unlike-photo', '2018-05-12 09:09:23', NULL, 0, -1, 1, ''),
	(103, 'photos.comment.add', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_COMMENT_ON_PHOTO', 'COM_EASYSOCIAL_POINTS_COMMENT_ON_PHOTO_DESC', 'comment-photo', '2018-05-12 09:09:23', NULL, 0, 1, 1, ''),
	(104, 'photos.comment.remove', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_COMMENT_REMOVE_FROM_PHOTO', 'COM_EASYSOCIAL_POINTS_COMMENT_REMOVE_FROM_PHOTO_DESC', 'comment-photo-removed', '2018-05-12 09:09:23', NULL, 0, -1, 1, ''),
	(105, 'polls.add', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_POLLS_ADD', 'COM_EASYSOCIAL_POINTS_POLLS_ADD_DESC', 'add-polls', '2018-05-12 09:09:23', NULL, 0, 3, 1, ''),
	(106, 'polls.remove', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_POLLS_REMOVE', 'COM_EASYSOCIAL_POINTS_POLLS_REMOVE_DESC', 'remove-polls', '2018-05-12 09:09:23', NULL, 0, -3, 1, ''),
	(107, 'polls.vote', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_POLLS_VOTE', 'COM_EASYSOCIAL_POINTS_POLLS_VOTE_DESC', 'vote-polls', '2018-05-12 09:09:23', NULL, 0, 1, 1, ''),
	(108, 'polls.unvote', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_POLLS_UNVOTE', 'COM_EASYSOCIAL_POINTS_POLLS_UNVOTE_DESC', 'unvote-polls', '2018-05-12 09:09:23', NULL, 0, -1, 1, ''),
	(109, 'post.like', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_LIKE_POSTS', 'COM_EASYSOCIAL_POINTS_LIKE_POSTS_DESC', 'like-posts', '2018-05-12 09:09:23', NULL, 0, 5, 1, ''),
	(110, 'post.unlike', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_UNLIKE_POSTS', 'COM_EASYSOCIAL_POINTS_UNLIKE_POSTS_DESC', 'unlike-posts', '2018-05-12 09:09:23', NULL, 0, -5, 1, ''),
	(111, 'privacy.update', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_PRIVACY_UPDATE', 'COM_EASYSOCIAL_POINTS_PRIVACY_UPDATE_DESC', 'privacy-update', '2018-05-12 09:09:23', NULL, 0, 5, 1, ''),
	(112, 'profile.update', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_UPDATE_PROFILE', 'COM_EASYSOCIAL_POINTS_UPDATE_PROFILE_DESC', 'profile-update', '2018-05-12 09:09:23', NULL, 0, 15, 1, ''),
	(113, 'profile.avatar.update', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_UPDATE_PROFILE_AVATAR', 'COM_EASYSOCIAL_POINTS_UPDATE_PROFILE_AVATAR_DESC', 'profile-avatar-update', '2018-05-12 09:09:23', NULL, 1, 5, 1, ''),
	(114, 'profile.follow', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_FOLLOW_USER', 'COM_EASYSOCIAL_POINTS_FOLLOW_USER_DESC', 'profile-follow', '2018-05-12 09:09:23', NULL, 0, 2, 1, ''),
	(115, 'profile.unfollow', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_UNFOLLOW_USER', 'COM_EASYSOCIAL_POINTS_UNFOLLOW_USER_DESC', 'profile-unfollow', '2018-05-12 09:09:23', NULL, 0, -2, 1, ''),
	(116, 'profile.followed', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_BEING_FOLLOWED', 'COM_EASYSOCIAL_POINTS_BEING_FOLLOWED_DESC', 'profile-followed', '2018-05-12 09:09:23', NULL, 0, 2, 1, ''),
	(117, 'profile.unfollowed', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_UNFOLLOWED_BY_USER', 'COM_EASYSOCIAL_POINTS_UNFOLLOWED_BY_USER_DESC', 'profile-unfollowed', '2018-05-12 09:09:23', NULL, 0, -2, 1, ''),
	(118, 'reports.create', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_REPORTS_ADD', 'COM_EASYSOCIAL_POINTS_REPORTS_ADD_DESC', 'reports-create', '2018-05-12 09:09:23', NULL, 0, 5, 1, ''),
	(119, 'reports.delete', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_REPORTS_REMOVED', 'COM_EASYSOCIAL_POINTS_REPORTS_REMOVED_DESC', 'reports-removed', '2018-05-12 09:09:23', NULL, 0, -5, 1, ''),
	(120, 'story.create', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_POST_NEW_UPDATE', 'COM_EASYSOCIAL_POINTS_POST_NEW_UPDATE_DESC', 'story-create', '2018-05-12 09:09:23', NULL, 0, 5, 1, ''),
	(121, 'story.delete', 'com_easysocial', 'COM_ES_POINTS_POST_DELETE', 'COM_ES_POINTS_POST_DELETE_DESC', 'story-delete', '2018-05-12 09:09:23', NULL, 0, -5, 1, ''),
	(122, 'user.registration', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_USER_REGISTER', 'COM_EASYSOCIAL_POINTS_USER_REGISTER_DESC', 'registration', '2018-05-12 09:09:23', NULL, 0, 20, 1, ''),
	(123, 'video.upload', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_UPLOAD_VIDEO', 'COM_EASYSOCIAL_POINTS_UPLOAD_VIDEO_DESC', 'upload-video', '2018-05-12 09:09:23', NULL, 0, 5, 1, ''),
	(124, 'video.remove', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_REMOVE_VIDEO', 'COM_EASYSOCIAL_POINTS_REMOVE_VIDEO_DESC', 'remove-video', '2018-05-12 09:09:23', NULL, 0, -5, 1, ''),
	(125, 'video.like', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_LIKE_VIDEO', 'COM_EASYSOCIAL_POINTS_LIKE_VIDEO_DESC', 'like-video', '2018-05-12 09:09:23', NULL, 0, 1, 1, ''),
	(126, 'video.unlike', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_UNLIKE_VIDEO', 'COM_EASYSOCIAL_POINTS_UNLIKE_VIDEO_DESC', 'unlike-video', '2018-05-12 09:09:23', NULL, 0, -1, 1, ''),
	(127, 'video.comment.add', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_COMMENT_ON_VIDEO', 'COM_EASYSOCIAL_POINTS_COMMENT_ON_VIDEO_DESC', 'comment-video', '2018-05-12 09:09:23', NULL, 0, 1, 1, ''),
	(128, 'video.comment.remove', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_COMMENT_REMOVE_FROM_VIDEO', 'COM_EASYSOCIAL_POINTS_COMMENT_REMOVE_FROM_VIDEO_DESC', 'comment-video-removed', '2018-05-12 09:09:23', NULL, 0, -1, 1, ''),
	(129, 'video.featured', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_VIDEO_FEATURED', 'COM_EASYSOCIAL_POINTS_VIDEO_FEATURED_DESC', 'video-featured', '2018-05-12 09:09:23', NULL, 0, 2, 1, ''),
	(130, 'video.unfeatured', 'com_easysocial', 'COM_EASYSOCIAL_POINTS_VIDEO_UNFEATURED', 'COM_EASYSOCIAL_POINTS_VIDEO_UNFEATURED_DESC', 'video-unfeatured', '2018-05-12 09:09:23', NULL, 0, -2, 1, '');
/*!40000 ALTER TABLE `gy3te_social_points` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_points_history
CREATE TABLE IF NOT EXISTS `gy3te_social_points_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Primary key for this table',
  `points_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL COMMENT 'The target user id',
  `points` int(11) NOT NULL COMMENT 'The number of points',
  `created` datetime NOT NULL COMMENT 'The date time value when the user earned the point.',
  `state` tinyint(3) NOT NULL COMMENT 'The publish state',
  `message` text NOT NULL COMMENT 'Any custom message set for this points assignment',
  PRIMARY KEY (`id`),
  KEY `state` (`state`),
  KEY `points_id` (`points_id`),
  KEY `idx_userid` (`user_id`),
  KEY `user_points` (`user_id`,`points`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_points_history: 0 rows
DELETE FROM `gy3te_social_points_history`;
/*!40000 ALTER TABLE `gy3te_social_points_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_points_history` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_polls
CREATE TABLE IF NOT EXISTS `gy3te_social_polls` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `element` varchar(255) NOT NULL,
  `uid` bigint(20) NOT NULL,
  `title` text NOT NULL,
  `multiple` tinyint(1) DEFAULT '0',
  `locked` tinyint(1) DEFAULT '0',
  `cluster_id` bigint(20) DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expiry_date` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_element_id` (`element`,`uid`),
  KEY `idx_clusterid` (`cluster_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_polls: 0 rows
DELETE FROM `gy3te_social_polls`;
/*!40000 ALTER TABLE `gy3te_social_polls` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_polls` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_polls_items
CREATE TABLE IF NOT EXISTS `gy3te_social_polls_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `poll_id` bigint(20) unsigned NOT NULL,
  `value` text NOT NULL,
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_pollid` (`poll_id`),
  KEY `idx_polls` (`poll_id`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_polls_items: 0 rows
DELETE FROM `gy3te_social_polls_items`;
/*!40000 ALTER TABLE `gy3te_social_polls_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_polls_items` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_polls_users
CREATE TABLE IF NOT EXISTS `gy3te_social_polls_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `poll_id` bigint(20) unsigned NOT NULL,
  `poll_itemid` bigint(20) NOT NULL DEFAULT '0',
  `user_id` bigint(20) NOT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_pollid` (`poll_id`),
  KEY `idx_userid` (`user_id`),
  KEY `idx_pollitem` (`poll_itemid`),
  KEY `idx_poll_user` (`poll_id`,`user_id`),
  KEY `idx_poll_item_user` (`poll_id`,`poll_itemid`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_polls_users: 0 rows
DELETE FROM `gy3te_social_polls_users`;
/*!40000 ALTER TABLE `gy3te_social_polls_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_polls_users` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_privacy
CREATE TABLE IF NOT EXISTS `gy3te_social_privacy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(64) NOT NULL COMMENT 'object type e.g. photos, friends, albums, profile and etc',
  `rule` varchar(64) NOT NULL COMMENT 'rule type e.g. view_friends, view, search, comment, tag and etc',
  `value` int(11) DEFAULT '0',
  `options` text,
  `description` text,
  `state` tinyint(3) NOT NULL DEFAULT '1',
  `core` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `type_rule` (`type`,`rule`),
  KEY `type_rule_privacy` (`type`,`rule`,`value`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_privacy: 43 rows
DELETE FROM `gy3te_social_privacy`;
/*!40000 ALTER TABLE `gy3te_social_privacy` DISABLE KEYS */;
INSERT INTO `gy3te_social_privacy` (`id`, `type`, `rule`, `value`, `options`, `description`, `state`, `core`) VALUES
	(1, 'apps', 'calendar', 0, '{"options":["public","member","friend","only_me","custom"]}', 'APPS_USER_CALENDAR_PRIVACY_FIELD_DESC', 1, 0),
	(2, 'field', 'address', 0, '{"options":["public","member","friend","only_me"]}', 'FIELDS_USER_ADDRESS_PRIVACY_FIELD_DESC', 1, 0),
	(3, 'field', 'birthday', 0, '{"options":["public","member","friend","only_me"]}', 'FIELDS_USER_BIRTHDAY_PRIVACY_FIELD_DESC', 1, 0),
	(4, 'field', 'birthday.year', 40, '{"options":["public","member","friend","only_me"]}', 'FIELDS_USER_BIRTHDAY_YEAR_PRIVACY_FIELD_DESC', 1, 0),
	(5, 'field', 'boolean', 0, '{"options":["public","member","friend","only_me"]}', 'FIELDS_USER_BOOLEAN_PRIVACY_FIELD_DESC', 1, 0),
	(6, 'field', 'checkbox', 0, '{"options":["public","member","friend","only_me"]}', 'FIELDS_USER_CHECKBOX_PRIVACY_FIELD_DESC', 1, 0),
	(7, 'field', 'country', 0, '{"options":["public","member","friend","only_me"]}', 'FIELDS_USER_COUNTRY_PRIVACY_FIELD_DESC', 1, 0),
	(8, 'field', 'currency', 0, '{"options":["public","member","friend","only_me"]}', 'FIELDS_USER_CURRENCY_PRIVACY_FIELD_DESC', 1, 0),
	(9, 'field', 'datetime', 0, '{"options":["public","member","friend","only_me"]}', 'FIELDS_USER_DATETIME_PRIVACY_FIELD_DESC', 1, 0),
	(10, 'field', 'dropdown', 0, '{"options":["public","member","friend","only_me"]}', 'FIELDS_USER_DROPDOWN_PRIVACY_FIELD_DESC', 1, 0),
	(11, 'field', 'email', 0, '{"options":["public","member","friend","only_me"]}', 'FIELDS_USER_EMAIL_PRIVACY_FIELD_DESC', 1, 0),
	(12, 'field', 'file', 0, '{"options":["public","member","friend","only_me"]}', 'FIELDS_USER_FILE_PRIVACY_FIELD_DESC', 1, 0),
	(13, 'field', 'gender', 0, '{"options":["public","member","friend","only_me"]}', 'FIELDS_USER_GENDER_PRIVACY_FIELD_DESC', 1, 0),
	(14, 'field', 'headline', 0, '{"options":["public","member","friend","only_me"]}', 'FIELDS_USER_HEADLINE_PRIVACY_FIELD_DESC', 1, 0),
	(15, 'field', 'joomla_email', 0, '{"options":["public","member","friend","only_me"]}', 'FIELDS_USER_JOOMLA_EMAIL_PRIVACY_FIELD_DESC', 1, 0),
	(16, 'field', 'joomla_timezone', 0, '{"options":["public","member","friend","only_me"]}', 'FIELDS_USER_JOOMLA_TIMEZONE_PRIVACY_FIELD_DESC', 1, 0),
	(17, 'field', 'multidropdown', 0, '{"options":["public","member","friend","only_me"]}', 'FIELDS_USER_MULTIDROPDOWN_PRIVACY_FIELD_DESC', 1, 0),
	(18, 'field', 'multilist', 0, '{"options":["public","member","friend","only_me"]}', 'FIELDS_USER_MULTILIST_PRIVACY_FIELD_DESC', 1, 0),
	(19, 'field', 'multitextbox', 0, '{"options":["public","member","friend","only_me"]}', 'FIELDS_USER_MULTITEXTBOX_PRIVACY_FIELD_DESC', 1, 0),
	(20, 'field', 'relationship', 0, '{"options":["public","member","friend","only_me"]}', 'FIELDS_USER_RELATIONSHIP_PRIVACY_FIELD_DESC', 1, 0),
	(21, 'field', 'textarea', 0, '{"options":["public","member","friend","only_me"]}', 'FIELDS_USER_TEXTAREA_PRIVACY_FIELD_DESC', 1, 0),
	(22, 'field', 'textbox', 0, '{"options":["public","member","friend","only_me"]}', 'FIELDS_USER_TEXTBOX_PRIVACY_FIELD_DESC', 1, 0),
	(23, 'field', 'url', 0, '{"options":["public","member","friend","only_me"]}', 'FIELDS_USER_URL_PRIVACY_FIELD_DESC', 1, 0),
	(24, 'achievements', 'view', 0, '{"options":["public","member","friend","only_me","custom"]}', 'COM_EASYSOCIAL_PRIVACY_DESC_ACHIEVEMENTS_VIEW', 1, 1),
	(25, 'albums', 'view', 0, '{"options":["public","member","friend","only_me","custom","field"]}', 'COM_EASYSOCIAL_PRIVACY_DESC_ALBUMS_VIEW', 1, 1),
	(26, 'audios', 'view', 0, '{"options":["public","member","friend","only_me","custom","field"]}', 'COM_EASYSOCIAL_PRIVACY_DESC_AUDIOS_VIEW', 1, 1),
	(27, 'core', 'view', 0, '{"options":["public","member","friend","only_me"]}', 'COM_EASYSOCIAL_PRIVACY_DESC_CORE_VIEW', 1, 1),
	(28, 'followers', 'view', 0, '{"options":["public","member","friend","only_me","custom"]}', 'COM_EASYSOCIAL_PRIVACY_DESC_FOLLOWERS_VIEW', 1, 1),
	(29, 'friends', 'view', 0, '{"options":["public","member","friends_of_friend","friend","only_me","custom"]}', 'COM_EASYSOCIAL_PRIVACY_DESC_FRIENDS_VIEW', 1, 1),
	(30, 'friends', 'request', 10, '{"options":["public","member","friends_of_friend"]}', 'COM_EASYSOCIAL_PRIVACY_DESC_FRIENDS_REQUEST', 1, 1),
	(31, 'photos', 'view', 0, '{"options":["public","member","friend","only_me","custom","field"]}', 'COM_EASYSOCIAL_PRIVACY_DESC_PHOTOS_VIEW', 1, 1),
	(32, 'photos', 'tagme', 30, '{"options":["friend","only_me","custom"]}', 'COM_EASYSOCIAL_PRIVACY_DESC_PHOTOS_TAGME', 1, 1),
	(33, 'photos', 'tag', 30, '{"options":["friend","only_me","custom"]}', 'COM_EASYSOCIAL_PRIVACY_DESC_PHOTOS_TAG', 1, 1),
	(34, 'points', 'view.history', 0, '{"options":["public","member","friend","only_me","custom"]}', 'COM_EASYSOCIAL_PRIVACY_DESC_POINTS_HISTORY_VIEW', 1, 1),
	(35, 'polls', 'view', 0, '{"options":["public","member","friend","only_me","custom","field"]}', 'COM_EASYSOCIAL_PRIVACY_DESC_POLLS_VIEW', 1, 1),
	(36, 'polls', 'vote', 10, '{"options":["member","friend","custom"]}', 'COM_EASYSOCIAL_PRIVACY_DESC_POLLS_VOTE', 1, 1),
	(37, 'profiles', 'view', 0, '{"options":["public","member","friend","only_me","custom"]}', 'COM_EASYSOCIAL_PRIVACY_DESC_PROFILES_VIEW', 1, 1),
	(38, 'profiles', 'search', 0, '{"options":["public","member","friends_of_friend","friend","only_me"]}', 'COM_EASYSOCIAL_PRIVACY_DESC_PROFILES_SEARCH', 1, 1),
	(39, 'profiles', 'post.status', 10, '{"options":["public","member","friend","only_me"]}', 'COM_EASYSOCIAL_PRIVACY_DESC_PROFILES_POST_STATUS', 1, 1),
	(40, 'profiles', 'post.message', 10, '{"options":["public","member","friend","only_me","custom"]}', 'COM_EASYSOCIAL_PRIVACY_DESC_PROFILES_POST_MESSAGE', 1, 1),
	(41, 'story', 'view', 0, '{"options":["public","member","friend","only_me","custom","field"]}', 'COM_EASYSOCIAL_PRIVACY_DESC_STORY_VIEW', 1, 1),
	(42, 'story', 'post.comment', 10, '{"options":["member","friend","only_me","custom"]}', 'COM_EASYSOCIAL_PRIVACY_DESC_STORY_POST_COMMENT', 1, 1),
	(43, 'videos', 'view', 0, '{"options":["public","member","friend","only_me","custom","field"]}', 'COM_EASYSOCIAL_PRIVACY_DESC_VIDEOS_VIEW', 1, 1);
/*!40000 ALTER TABLE `gy3te_social_privacy` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_privacy_customize
CREATE TABLE IF NOT EXISTS `gy3te_social_privacy_customize` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT 'id from user or profile or item',
  `utype` varchar(64) NOT NULL COMMENT 'user or profile or item',
  `user_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `uid_type` (`uid`,`utype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_privacy_customize: 0 rows
DELETE FROM `gy3te_social_privacy_customize`;
/*!40000 ALTER TABLE `gy3te_social_privacy_customize` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_privacy_customize` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_privacy_field
CREATE TABLE IF NOT EXISTS `gy3te_social_privacy_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT 'id from profile or item',
  `utype` varchar(64) NOT NULL COMMENT 'profile or item',
  `field_key` varchar(255) DEFAULT NULL COMMENT 'element|unique_key for the field',
  `field_value` text,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `uid_type` (`uid`,`utype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_privacy_field: 0 rows
DELETE FROM `gy3te_social_privacy_field`;
/*!40000 ALTER TABLE `gy3te_social_privacy_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_privacy_field` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_privacy_items
CREATE TABLE IF NOT EXISTS `gy3te_social_privacy_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `privacy_id` int(11) NOT NULL COMMENT 'key to social_privacy.id',
  `user_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL COMMENT 'object id e.g streamid, activityid and etc',
  `type` varchar(64) NOT NULL COMMENT 'object type e.g. stream, activity and etc',
  `value` int(11) DEFAULT '0',
  `field_access` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `privacy_id` (`privacy_id`),
  KEY `user_privacy_item` (`user_id`,`uid`,`type`),
  KEY `idx_uid_type` (`uid`,`type`),
  KEY `idx_user_type` (`user_id`,`type`),
  KEY `idx_value_user` (`value`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_privacy_items: 0 rows
DELETE FROM `gy3te_social_privacy_items`;
/*!40000 ALTER TABLE `gy3te_social_privacy_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_privacy_items` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_privacy_items_field
CREATE TABLE IF NOT EXISTS `gy3te_social_privacy_items_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT 'id from profile or item',
  `utype` varchar(64) NOT NULL COMMENT 'profile or item',
  `unique_key` varchar(255) DEFAULT NULL COMMENT 'unique_key for the field',
  `value` text,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `uid_type` (`uid`,`utype`),
  KEY `unique_key` (`unique_key`(64))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_privacy_items_field: 0 rows
DELETE FROM `gy3te_social_privacy_items_field`;
/*!40000 ALTER TABLE `gy3te_social_privacy_items_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_privacy_items_field` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_privacy_map
CREATE TABLE IF NOT EXISTS `gy3te_social_privacy_map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `privacy_id` int(11) NOT NULL COMMENT 'key to social_privacy.id',
  `uid` int(11) NOT NULL COMMENT 'userid or profileid',
  `utype` varchar(64) NOT NULL COMMENT 'user or profile',
  `value` int(11) DEFAULT '0',
  `params` text,
  PRIMARY KEY (`id`),
  KEY `privacy_id` (`privacy_id`),
  KEY `uid_type` (`uid`,`utype`),
  KEY `uid_type_value` (`uid`,`utype`,`value`),
  KEY `idx_privacy_uid_type` (`privacy_id`,`uid`,`utype`),
  KEY `idx_uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_privacy_map: 0 rows
DELETE FROM `gy3te_social_privacy_map`;
/*!40000 ALTER TABLE `gy3te_social_privacy_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_privacy_map` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_profiles
CREATE TABLE IF NOT EXISTS `gy3te_social_profiles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `gid` text NOT NULL,
  `default` tinyint(4) NOT NULL,
  `default_avatar` int(11) DEFAULT NULL COMMENT 'If this field contains an id, it''s from the default avatar, otherwise use system''s default avatar.',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `state` tinyint(4) NOT NULL,
  `params` text NOT NULL,
  `registration` tinyint(4) NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL,
  `community_access` tinyint(3) NOT NULL DEFAULT '1',
  `switchable` tinyint(3) NOT NULL DEFAULT '0',
  `apps` text NOT NULL,
  `privacy_fields` text,
  `site_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `state` (`state`),
  KEY `profile_esad` (`community_access`),
  KEY `idx_profile_access` (`id`,`community_access`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_profiles: 1 rows
DELETE FROM `gy3te_social_profiles`;
/*!40000 ALTER TABLE `gy3te_social_profiles` DISABLE KEYS */;
INSERT INTO `gy3te_social_profiles` (`id`, `title`, `alias`, `description`, `gid`, `default`, `default_avatar`, `created`, `modified`, `state`, `params`, `registration`, `ordering`, `community_access`, `switchable`, `apps`, `privacy_fields`, `site_id`) VALUES
	(1, 'Registered Users', 'registered-users', 'This is the default profile that was created in the site.', '["2"]', 1, 0, '2018-05-12 09:09:24', '2018-05-12 09:09:24', 1, '{"delete_account":0,"theme":"","registration":"approvals"}', 1, 1, 1, 0, '', NULL, NULL);
/*!40000 ALTER TABLE `gy3te_social_profiles` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_profiles_maps
CREATE TABLE IF NOT EXISTS `gy3te_social_profiles_maps` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `profile_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `state` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `profile_id` (`profile_id`),
  KEY `idx_userid` (`user_id`),
  KEY `idx_profile_users` (`profile_id`,`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_profiles_maps: 4 rows
DELETE FROM `gy3te_social_profiles_maps`;
/*!40000 ALTER TABLE `gy3te_social_profiles_maps` DISABLE KEYS */;
INSERT INTO `gy3te_social_profiles_maps` (`id`, `profile_id`, `user_id`, `state`, `created`) VALUES
	(1, 1, 48, 1, '2018-05-12 09:09:35'),
	(2, 1, 49, 1, '2018-05-12 09:09:35'),
	(3, 1, 50, 1, '2018-05-12 09:09:35'),
	(4, 1, 51, 1, '2018-05-12 09:09:35');
/*!40000 ALTER TABLE `gy3te_social_profiles_maps` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_reactions
CREATE TABLE IF NOT EXISTS `gy3te_social_reactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(255) NOT NULL,
  `published` tinyint(3) NOT NULL,
  `created` datetime NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_reactions: 6 rows
DELETE FROM `gy3te_social_reactions`;
/*!40000 ALTER TABLE `gy3te_social_reactions` DISABLE KEYS */;
INSERT INTO `gy3te_social_reactions` (`id`, `action`, `published`, `created`, `params`) VALUES
	(1, 'like', 1, '0000-00-00 00:00:00', ''),
	(2, 'happy', 1, '0000-00-00 00:00:00', ''),
	(3, 'love', 1, '0000-00-00 00:00:00', ''),
	(4, 'angry', 1, '0000-00-00 00:00:00', ''),
	(5, 'wow', 1, '0000-00-00 00:00:00', ''),
	(6, 'sad', 1, '0000-00-00 00:00:00', '');
/*!40000 ALTER TABLE `gy3te_social_reactions` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_regions
CREATE TABLE IF NOT EXISTS `gy3te_social_regions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(64) NOT NULL,
  `parent_uid` bigint(20) NOT NULL,
  `parent_type` varchar(255) NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `site_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_regions: 0 rows
DELETE FROM `gy3te_social_regions`;
/*!40000 ALTER TABLE `gy3te_social_regions` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_regions` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_registrations
CREATE TABLE IF NOT EXISTS `gy3te_social_registrations` (
  `session_id` varchar(200) NOT NULL,
  `profile_id` bigint(20) NOT NULL,
  `created` datetime NOT NULL,
  `values` text NOT NULL,
  `step` bigint(20) NOT NULL,
  `step_access` text NOT NULL,
  `errors` text NOT NULL,
  UNIQUE KEY `session_id` (`session_id`),
  KEY `profile_id` (`profile_id`),
  KEY `step` (`step`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_registrations: 0 rows
DELETE FROM `gy3te_social_registrations`;
/*!40000 ALTER TABLE `gy3te_social_registrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_registrations` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_relationship_status
CREATE TABLE IF NOT EXISTS `gy3te_social_relationship_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `actor` bigint(20) NOT NULL,
  `target` bigint(20) NOT NULL,
  `type` varchar(255) NOT NULL,
  `state` tinyint(3) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `relation_type` (`type`),
  KEY `state` (`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_relationship_status: 0 rows
DELETE FROM `gy3te_social_relationship_status`;
/*!40000 ALTER TABLE `gy3te_social_relationship_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_relationship_status` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_reports
CREATE TABLE IF NOT EXISTS `gy3te_social_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `message` text NOT NULL,
  `extension` varchar(255) NOT NULL,
  `uid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `url` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_created_by` (`created_by`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_reports: 0 rows
DELETE FROM `gy3te_social_reports`;
/*!40000 ALTER TABLE `gy3te_social_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_reports` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_reviews
CREATE TABLE IF NOT EXISTS `gy3te_social_reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `published` tinyint(3) NOT NULL,
  `created` datetime NOT NULL,
  `message` text NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_reviews: 0 rows
DELETE FROM `gy3te_social_reviews`;
/*!40000 ALTER TABLE `gy3te_social_reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_reviews` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_rss
CREATE TABLE IF NOT EXISTS `gy3te_social_rss` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `url` text NOT NULL,
  `state` tinyint(3) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`,`state`),
  KEY `uid` (`uid`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_rss: 0 rows
DELETE FROM `gy3te_social_rss`;
/*!40000 ALTER TABLE `gy3te_social_rss` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_rss` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_search_filter
CREATE TABLE IF NOT EXISTS `gy3te_social_search_filter` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `element` varchar(255) NOT NULL,
  `uid` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `filter` text NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sitewide` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_searchfilter_element_id` (`element`,`uid`),
  KEY `idx_searchfilter_owner` (`element`,`uid`,`created_by`),
  KEY `idx_searchfilter_alias` (`alias`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_search_filter: 0 rows
DELETE FROM `gy3te_social_search_filter`;
/*!40000 ALTER TABLE `gy3te_social_search_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_search_filter` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_shares
CREATE TABLE IF NOT EXISTS `gy3te_social_shares` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL,
  `element` varchar(255) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `content` text NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shares_element` (`uid`,`element`),
  KEY `shares_element_user` (`uid`,`element`,`user_id`),
  KEY `shares_userid` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_shares: 0 rows
DELETE FROM `gy3te_social_shares`;
/*!40000 ALTER TABLE `gy3te_social_shares` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_shares` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_step_sessions
CREATE TABLE IF NOT EXISTS `gy3te_social_step_sessions` (
  `session_id` varchar(200) NOT NULL,
  `uid` bigint(20) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `values` text NOT NULL,
  `step` bigint(20) NOT NULL,
  `step_access` text NOT NULL,
  `errors` text NOT NULL,
  UNIQUE KEY `session_id` (`session_id`),
  KEY `profile_id` (`uid`),
  KEY `step` (`step`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_step_sessions: 0 rows
DELETE FROM `gy3te_social_step_sessions`;
/*!40000 ALTER TABLE `gy3te_social_step_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_step_sessions` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_storage_log
CREATE TABLE IF NOT EXISTS `gy3te_social_storage_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `object_type` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `state` tinyint(3) NOT NULL,
  `created` datetime NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_storage_log: 0 rows
DELETE FROM `gy3te_social_storage_log`;
/*!40000 ALTER TABLE `gy3te_social_storage_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_storage_log` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_stream
CREATE TABLE IF NOT EXISTS `gy3te_social_stream` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `actor_id` bigint(20) unsigned NOT NULL,
  `alias` varchar(255) DEFAULT '',
  `actor_type` varchar(64) DEFAULT 'user',
  `post_as` varchar(64) DEFAULT 'user',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `edited` datetime DEFAULT '0000-00-00 00:00:00',
  `title` text,
  `content` text CHARACTER SET utf8mb4 NOT NULL,
  `context_type` varchar(64) DEFAULT '',
  `verb` varchar(64) DEFAULT '',
  `stream_type` varchar(15) DEFAULT NULL,
  `sitewide` tinyint(1) DEFAULT '0',
  `target_id` bigint(20) NOT NULL,
  `location_id` int(11) NOT NULL,
  `mood_id` int(11) NOT NULL,
  `with` text NOT NULL,
  `ispublic` tinyint(3) NOT NULL DEFAULT '0',
  `cluster_id` int(11) DEFAULT '0',
  `cluster_type` varchar(64) DEFAULT NULL,
  `cluster_access` tinyint(3) DEFAULT '0',
  `params` longtext,
  `state` tinyint(3) NOT NULL DEFAULT '1',
  `privacy_id` int(11) DEFAULT NULL,
  `access` int(11) NOT NULL DEFAULT '0',
  `custom_access` text,
  `field_access` tinyint(3) DEFAULT '0',
  `last_action` varchar(255) DEFAULT NULL,
  `last_userid` bigint(20) unsigned DEFAULT '0',
  `last_action_date` datetime DEFAULT '0000-00-00 00:00:00',
  `sticky_id` bigint(20) unsigned DEFAULT '0',
  `anywhere_id` varchar(255) DEFAULT NULL,
  `datafix` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `stream_actor` (`actor_id`),
  KEY `stream_created` (`created`),
  KEY `stream_modified` (`modified`),
  KEY `stream_alias` (`alias`),
  KEY `stream_source` (`actor_type`),
  KEY `idx_stream_context_type` (`context_type`),
  KEY `idx_stream_target` (`target_id`),
  KEY `idx_actor_modified` (`actor_id`,`modified`),
  KEY `idx_target_context_modified` (`target_id`,`context_type`,`modified`),
  KEY `idx_sitewide_modified` (`sitewide`,`modified`),
  KEY `idx_ispublic` (`ispublic`,`modified`),
  KEY `idx_clusterid` (`cluster_id`),
  KEY `idx_cluster_items` (`cluster_id`,`cluster_type`,`modified`),
  KEY `idx_cluster_access` (`cluster_id`,`cluster_access`),
  KEY `idx_access` (`access`),
  KEY `idx_custom_access` (`access`,`custom_access`(255)),
  KEY `idx_stream_total_cluster` (`cluster_id`,`cluster_access`,`context_type`,`id`,`actor_id`),
  KEY `idx_stream_total_user` (`cluster_id`,`access`,`actor_id`,`context_type`),
  KEY `idx_stickyid` (`sticky_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_stream: 0 rows
DELETE FROM `gy3te_social_stream`;
/*!40000 ALTER TABLE `gy3te_social_stream` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_stream` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_stream_assets
CREATE TABLE IF NOT EXISTS `gy3te_social_stream_assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stream_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_stream_assets: 0 rows
DELETE FROM `gy3te_social_stream_assets`;
/*!40000 ALTER TABLE `gy3te_social_stream_assets` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_stream_assets` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_stream_filter
CREATE TABLE IF NOT EXISTS `gy3te_social_stream_filter` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) unsigned NOT NULL,
  `utype` varchar(255) DEFAULT 'user',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `global` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `streamfilter_uidtype` (`uid`,`utype`),
  KEY `streamfilter_alias` (`alias`),
  KEY `streamfilter_cluster_user` (`uid`,`utype`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_stream_filter: 0 rows
DELETE FROM `gy3te_social_stream_filter`;
/*!40000 ALTER TABLE `gy3te_social_stream_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_stream_filter` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_stream_filter_item
CREATE TABLE IF NOT EXISTS `gy3te_social_stream_filter_item` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `filter_id` bigint(20) unsigned NOT NULL,
  `type` varchar(255) NOT NULL,
  `content` text,
  PRIMARY KEY (`id`),
  KEY `filteritem_fid` (`filter_id`),
  KEY `filteritem_type` (`type`),
  KEY `filteritem_fidtype` (`filter_id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_stream_filter_item: 0 rows
DELETE FROM `gy3te_social_stream_filter_item`;
/*!40000 ALTER TABLE `gy3te_social_stream_filter_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_stream_filter_item` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_stream_hide
CREATE TABLE IF NOT EXISTS `gy3te_social_stream_hide` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `uid` bigint(20) unsigned NOT NULL,
  `type` varchar(255) NOT NULL,
  `context` varchar(255) DEFAULT NULL,
  `actor_id` bigint(20) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `stream_hide_user` (`user_id`),
  KEY `stream_hide_uid` (`uid`),
  KEY `stream_hide_actorid` (`actor_id`),
  KEY `stream_hide_user_uid` (`user_id`,`uid`),
  KEY `idx_stream_hide_context` (`context`,`user_id`,`uid`,`actor_id`),
  KEY `idx_stream_hide_actor` (`actor_id`,`user_id`,`uid`,`context`),
  KEY `idx_stream_hide_uid` (`uid`,`user_id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_stream_hide: 0 rows
DELETE FROM `gy3te_social_stream_hide`;
/*!40000 ALTER TABLE `gy3te_social_stream_hide` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_stream_hide` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_stream_history
CREATE TABLE IF NOT EXISTS `gy3te_social_stream_history` (
  `id` bigint(20) unsigned NOT NULL,
  `actor_id` bigint(20) unsigned NOT NULL,
  `alias` varchar(255) DEFAULT '',
  `actor_type` varchar(64) DEFAULT 'user',
  `post_as` varchar(64) DEFAULT 'user',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `edited` datetime DEFAULT '0000-00-00 00:00:00',
  `title` text,
  `content` text,
  `context_type` varchar(64) DEFAULT '',
  `verb` varchar(64) DEFAULT '',
  `stream_type` varchar(15) DEFAULT NULL,
  `sitewide` tinyint(1) DEFAULT '0',
  `target_id` bigint(20) NOT NULL,
  `location_id` int(11) NOT NULL,
  `mood_id` int(11) NOT NULL,
  `with` text NOT NULL,
  `ispublic` tinyint(3) NOT NULL DEFAULT '0',
  `cluster_id` int(11) DEFAULT '0',
  `cluster_type` varchar(64) DEFAULT NULL,
  `cluster_access` tinyint(3) DEFAULT '0',
  `params` longtext,
  `state` tinyint(3) NOT NULL DEFAULT '1',
  `privacy_id` int(11) DEFAULT NULL,
  `access` int(11) NOT NULL DEFAULT '0',
  `custom_access` text,
  `field_access` tinyint(3) DEFAULT '0',
  `last_action` varchar(255) DEFAULT NULL,
  `last_userid` bigint(20) unsigned DEFAULT '0',
  `last_action_date` datetime DEFAULT '0000-00-00 00:00:00',
  `sticky_id` bigint(20) unsigned DEFAULT '0',
  `anywhere_id` varchar(255) DEFAULT NULL,
  `datafix` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `stream_history_created` (`created`),
  KEY `stream_history_modified` (`modified`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_stream_history: 0 rows
DELETE FROM `gy3te_social_stream_history`;
/*!40000 ALTER TABLE `gy3te_social_stream_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_stream_history` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_stream_item
CREATE TABLE IF NOT EXISTS `gy3te_social_stream_item` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `actor_id` bigint(20) unsigned NOT NULL,
  `actor_type` varchar(255) DEFAULT 'people',
  `context_type` varchar(64) DEFAULT '',
  `context_id` bigint(20) unsigned DEFAULT '0',
  `verb` varchar(64) DEFAULT '',
  `target_id` bigint(20) unsigned DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uid` bigint(20) unsigned NOT NULL,
  `sitewide` tinyint(1) DEFAULT '0',
  `params` text,
  `state` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `activity_actor` (`actor_id`),
  KEY `activity_created` (`created`),
  KEY `activity_context` (`context_type`),
  KEY `activity_context_id` (`context_id`),
  KEY `idx_context_verb` (`context_type`,`verb`),
  KEY `idx_uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_stream_item: 0 rows
DELETE FROM `gy3te_social_stream_item`;
/*!40000 ALTER TABLE `gy3te_social_stream_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_stream_item` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_stream_item_history
CREATE TABLE IF NOT EXISTS `gy3te_social_stream_item_history` (
  `id` bigint(20) unsigned NOT NULL,
  `actor_id` bigint(20) unsigned NOT NULL,
  `actor_type` varchar(255) DEFAULT 'people',
  `context_type` varchar(64) DEFAULT '',
  `context_id` bigint(20) unsigned DEFAULT '0',
  `verb` varchar(64) DEFAULT '',
  `target_id` bigint(20) unsigned DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uid` bigint(20) unsigned NOT NULL,
  `sitewide` tinyint(1) DEFAULT '0',
  `params` text,
  `state` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_history_uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_stream_item_history: 0 rows
DELETE FROM `gy3te_social_stream_item_history`;
/*!40000 ALTER TABLE `gy3te_social_stream_item_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_stream_item_history` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_stream_privacy_field
CREATE TABLE IF NOT EXISTS `gy3te_social_stream_privacy_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stream_id` int(11) NOT NULL,
  `field_key` varchar(255) DEFAULT NULL COMMENT 'unique_key for the field',
  `field_value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_streamid` (`stream_id`),
  KEY `idx_fieldkey` (`field_key`),
  KEY `idx_fieldvalue` (`field_value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_stream_privacy_field: 0 rows
DELETE FROM `gy3te_social_stream_privacy_field`;
/*!40000 ALTER TABLE `gy3te_social_stream_privacy_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_stream_privacy_field` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_stream_sticky
CREATE TABLE IF NOT EXISTS `gy3te_social_stream_sticky` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `stream_id` bigint(20) unsigned NOT NULL,
  `created` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_streamid` (`stream_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_stream_sticky: 0 rows
DELETE FROM `gy3te_social_stream_sticky`;
/*!40000 ALTER TABLE `gy3te_social_stream_sticky` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_stream_sticky` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_stream_tags
CREATE TABLE IF NOT EXISTS `gy3te_social_stream_tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `stream_id` bigint(20) unsigned NOT NULL,
  `uid` bigint(20) unsigned NOT NULL,
  `utype` varchar(255) DEFAULT 'user',
  `with` tinyint(3) unsigned DEFAULT '0',
  `offset` int(11) DEFAULT '0',
  `length` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `streamtags_streamid` (`stream_id`),
  KEY `streamtags_uidtype` (`uid`,`utype`),
  KEY `streamtags_uidoffset` (`stream_id`,`offset`),
  KEY `streamtags_title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_stream_tags: 0 rows
DELETE FROM `gy3te_social_stream_tags`;
/*!40000 ALTER TABLE `gy3te_social_stream_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_stream_tags` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_subscriptions
CREATE TABLE IF NOT EXISTS `gy3te_social_subscriptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT 'object id e.g userid, groupid, streamid and etc',
  `type` varchar(64) NOT NULL COMMENT 'subscription type e.g. user, group, stream and etc',
  `user_id` int(11) DEFAULT '0',
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid_type` (`uid`,`type`),
  KEY `uid_type_user` (`uid`,`type`,`user_id`),
  KEY `uid_type_email` (`uid`,`type`),
  KEY `idx_uid` (`uid`),
  KEY `idx_type_userid` (`type`,`user_id`),
  KEY `idx_userid` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_subscriptions: 0 rows
DELETE FROM `gy3te_social_subscriptions`;
/*!40000 ALTER TABLE `gy3te_social_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_subscriptions` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_tags
CREATE TABLE IF NOT EXISTS `gy3te_social_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_type` varchar(255) NOT NULL,
  `target_id` int(11) NOT NULL,
  `target_type` varchar(255) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `creator_type` varchar(255) NOT NULL,
  `offset` int(11) NOT NULL,
  `length` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_targets` (`target_id`,`target_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_tags: 0 rows
DELETE FROM `gy3te_social_tags`;
/*!40000 ALTER TABLE `gy3te_social_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_tags` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_tags_filter
CREATE TABLE IF NOT EXISTS `gy3te_social_tags_filter` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cid` bigint(20) NOT NULL,
  `filter_type` varchar(255) NOT NULL,
  `cluster_type` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_filter` (`user_id`,`filter_type`,`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_tags_filter: 0 rows
DELETE FROM `gy3te_social_tags_filter`;
/*!40000 ALTER TABLE `gy3te_social_tags_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_tags_filter` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_tags_filter_item
CREATE TABLE IF NOT EXISTS `gy3te_social_tags_filter_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `filter_id` bigint(20) NOT NULL,
  `type` varchar(255) NOT NULL,
  `content` text,
  PRIMARY KEY (`id`),
  KEY `idx_filter_id` (`filter_id`),
  KEY `idx_type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_tags_filter_item: 0 rows
DELETE FROM `gy3te_social_tags_filter_item`;
/*!40000 ALTER TABLE `gy3te_social_tags_filter_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_tags_filter_item` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_tasks
CREATE TABLE IF NOT EXISTS `gy3te_social_tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `milestone_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `state` tinyint(3) NOT NULL,
  `created` datetime NOT NULL,
  `due` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`,`state`),
  KEY `milestone_id` (`milestone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_tasks: 0 rows
DELETE FROM `gy3te_social_tasks`;
/*!40000 ALTER TABLE `gy3te_social_tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_tasks` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_tasks_milestones
CREATE TABLE IF NOT EXISTS `gy3te_social_tasks_milestones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created` datetime NOT NULL,
  `due` datetime NOT NULL,
  `state` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_tasks_milestones: 0 rows
DELETE FROM `gy3te_social_tasks_milestones`;
/*!40000 ALTER TABLE `gy3te_social_tasks_milestones` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_tasks_milestones` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_themes
CREATE TABLE IF NOT EXISTS `gy3te_social_themes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `element` varchar(255) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `element` (`element`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_themes: 0 rows
DELETE FROM `gy3te_social_themes`;
/*!40000 ALTER TABLE `gy3te_social_themes` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_themes` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_themes_overrides
CREATE TABLE IF NOT EXISTS `gy3te_social_themes_overrides` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_id` text NOT NULL,
  `notes` text NOT NULL,
  `contents` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_themes_overrides: 0 rows
DELETE FROM `gy3te_social_themes_overrides`;
/*!40000 ALTER TABLE `gy3te_social_themes_overrides` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_themes_overrides` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_tmp
CREATE TABLE IF NOT EXISTS `gy3te_social_tmp` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `type` text NOT NULL,
  `key` varchar(200) NOT NULL,
  `value` text NOT NULL,
  `created` datetime NOT NULL,
  `expired` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `node_id` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_tmp: 0 rows
DELETE FROM `gy3te_social_tmp`;
/*!40000 ALTER TABLE `gy3te_social_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_tmp` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_uploader
CREATE TABLE IF NOT EXISTS `gy3te_social_uploader` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` text NOT NULL,
  `name` text NOT NULL,
  `mime` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_uploader: 0 rows
DELETE FROM `gy3te_social_uploader`;
/*!40000 ALTER TABLE `gy3te_social_uploader` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_uploader` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_users
CREATE TABLE IF NOT EXISTS `gy3te_social_users` (
  `user_id` bigint(20) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(3) NOT NULL,
  `params` text NOT NULL,
  `connections` int(11) NOT NULL,
  `permalink` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'joomla',
  `auth` varchar(255) NOT NULL,
  `completed_fields` int(11) NOT NULL DEFAULT '0',
  `reminder_sent` tinyint(1) DEFAULT '0',
  `require_reset` tinyint(1) DEFAULT '0',
  `block_date` datetime DEFAULT '0000-00-00 00:00:00',
  `block_period` int(11) DEFAULT '0',
  `social_params` longtext NOT NULL,
  `verified` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`user_id`),
  KEY `state` (`state`),
  KEY `alias` (`alias`),
  KEY `connections` (`connections`),
  KEY `permalink` (`permalink`),
  KEY `idx_types` (`user_id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_users: 4 rows
DELETE FROM `gy3te_social_users`;
/*!40000 ALTER TABLE `gy3te_social_users` DISABLE KEYS */;
INSERT INTO `gy3te_social_users` (`user_id`, `alias`, `state`, `params`, `connections`, `permalink`, `type`, `auth`, `completed_fields`, `reminder_sent`, `require_reset`, `block_date`, `block_period`, `social_params`, `verified`) VALUES
	(48, '', 1, '', 0, '', 'joomla', '', 0, 0, 0, '0000-00-00 00:00:00', 0, '', 0),
	(49, '', 1, '', 0, '', 'joomla', '', 0, 0, 0, '0000-00-00 00:00:00', 0, '', 0),
	(50, '', 1, '', 0, '', 'joomla', '', 0, 0, 0, '0000-00-00 00:00:00', 0, '', 0),
	(51, '', 1, '', 0, '', 'joomla', '', 0, 0, 0, '0000-00-00 00:00:00', 0, '', 0);
/*!40000 ALTER TABLE `gy3te_social_users` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_verification_requests
CREATE TABLE IF NOT EXISTS `gy3te_social_verification_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `message` text NOT NULL,
  `params` text NOT NULL,
  `created` datetime NOT NULL,
  `state` tinyint(3) NOT NULL,
  `ip` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_verification_requests: 0 rows
DELETE FROM `gy3te_social_verification_requests`;
/*!40000 ALTER TABLE `gy3te_social_verification_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_verification_requests` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_videos
CREATE TABLE IF NOT EXISTS `gy3te_social_videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key for this table',
  `title` varchar(255) NOT NULL COMMENT 'Title of the video',
  `description` text NOT NULL COMMENT 'The description of the video',
  `user_id` int(11) NOT NULL COMMENT 'The user id that created this video',
  `uid` int(11) NOT NULL COMMENT 'This video may belong to another node other than the user.',
  `type` varchar(255) NOT NULL COMMENT 'This video may belong to another node other than the user.',
  `post_as` varchar(64) DEFAULT 'user',
  `created` datetime NOT NULL,
  `state` tinyint(3) NOT NULL,
  `isnew` tinyint(1) NOT NULL DEFAULT '0',
  `featured` tinyint(3) NOT NULL,
  `category_id` int(11) NOT NULL,
  `hits` int(11) NOT NULL COMMENT 'Total hits received for this video',
  `duration` varchar(255) NOT NULL COMMENT 'Duration of the video',
  `size` int(11) NOT NULL COMMENT 'The file size of the video',
  `params` text NOT NULL COMMENT 'Store video params',
  `storage` varchar(255) NOT NULL COMMENT 'Storage for videos',
  `path` text NOT NULL,
  `original` text NOT NULL,
  `file_title` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL,
  `thumbnail` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`,`user_id`,`state`,`featured`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_videos: 0 rows
DELETE FROM `gy3te_social_videos`;
/*!40000 ALTER TABLE `gy3te_social_videos` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_videos` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_videos_categories
CREATE TABLE IF NOT EXISTS `gy3te_social_videos_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `state` tinyint(3) NOT NULL,
  `default` tinyint(3) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL COMMENT 'The user id that created this category',
  `created` datetime NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `state` (`state`,`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_videos_categories: 10 rows
DELETE FROM `gy3te_social_videos_categories`;
/*!40000 ALTER TABLE `gy3te_social_videos_categories` DISABLE KEYS */;
INSERT INTO `gy3te_social_videos_categories` (`id`, `title`, `alias`, `description`, `state`, `default`, `user_id`, `created`, `ordering`) VALUES
	(1, 'General', 'general', 'General videos', 1, 1, 48, '2018-05-12 09:09:26', 1),
	(2, 'Music', 'music', 'Music videos', 1, 0, 48, '2018-05-12 09:09:26', 2),
	(3, 'Sports', 'sports', 'Sports videos', 1, 0, 48, '2018-05-12 09:09:26', 3),
	(4, 'News', 'news', 'News videos', 1, 0, 48, '2018-05-12 09:09:26', 4),
	(5, 'Gaming', 'gaming', 'Gaming videos', 1, 0, 48, '2018-05-12 09:09:26', 5),
	(6, 'Movies', 'movies', 'Movies videos', 1, 0, 48, '2018-05-12 09:09:26', 6),
	(7, 'Documentary', 'documentary', 'Documentary videos', 1, 0, 48, '2018-05-12 09:09:26', 7),
	(8, 'Fashion', 'fashion', 'Fashion videos', 1, 0, 48, '2018-05-12 09:09:26', 8),
	(9, 'Travel', 'travel', 'Travel videos', 1, 0, 48, '2018-05-12 09:09:26', 9),
	(10, 'Technology', 'technology', 'Technology videos', 1, 0, 48, '2018-05-12 09:09:26', 10);
/*!40000 ALTER TABLE `gy3te_social_videos_categories` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_videos_categories_access
CREATE TABLE IF NOT EXISTS `gy3te_social_videos_categories_access` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`,`profile_id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_videos_categories_access: 0 rows
DELETE FROM `gy3te_social_videos_categories_access`;
/*!40000 ALTER TABLE `gy3te_social_videos_categories_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_social_videos_categories_access` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_workflows
CREATE TABLE IF NOT EXISTS `gy3te_social_workflows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_title` (`title`),
  KEY `idx_type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_workflows: 4 rows
DELETE FROM `gy3te_social_workflows`;
/*!40000 ALTER TABLE `gy3te_social_workflows` DISABLE KEYS */;
INSERT INTO `gy3te_social_workflows` (`id`, `title`, `description`, `type`) VALUES
	(1, 'User Workflow', 'This is a workflow for User', 'user'),
	(2, 'Group Workflow', 'This is a workflow for Group', 'group'),
	(3, 'Event Workflow', 'This is a workflow for Event', 'event'),
	(4, 'Page Workflow', 'This is a workflow for Page', 'page');
/*!40000 ALTER TABLE `gy3te_social_workflows` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_social_workflows_maps
CREATE TABLE IF NOT EXISTS `gy3te_social_workflows_maps` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `workflow_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `workflow_id` (`workflow_id`),
  KEY `uid` (`uid`),
  KEY `idx_workflow_type` (`workflow_id`,`type`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogsinfo.gy3te_social_workflows_maps: 14 rows
DELETE FROM `gy3te_social_workflows_maps`;
/*!40000 ALTER TABLE `gy3te_social_workflows_maps` DISABLE KEYS */;
INSERT INTO `gy3te_social_workflows_maps` (`id`, `uid`, `workflow_id`, `type`) VALUES
	(1, 1, 1, 'user'),
	(2, 1, 2, 'group'),
	(3, 2, 2, 'group'),
	(4, 3, 2, 'group'),
	(5, 4, 2, 'group'),
	(6, 5, 2, 'group'),
	(7, 6, 4, 'page'),
	(8, 7, 4, 'page'),
	(9, 8, 4, 'page'),
	(10, 9, 4, 'page'),
	(11, 10, 4, 'page'),
	(12, 11, 4, 'page'),
	(13, 12, 3, 'event'),
	(14, 13, 3, 'event');
/*!40000 ALTER TABLE `gy3te_social_workflows_maps` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_tags
CREATE TABLE IF NOT EXISTS `gy3te_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogsinfo.gy3te_tags: ~0 rows (приблизительно)
DELETE FROM `gy3te_tags`;
/*!40000 ALTER TABLE `gy3te_tags` DISABLE KEYS */;
INSERT INTO `gy3te_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
	(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 48, '2017-05-15 08:46:37', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
/*!40000 ALTER TABLE `gy3te_tags` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_template_styles
CREATE TABLE IF NOT EXISTS `gy3te_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogsinfo.gy3te_template_styles: ~5 rows (приблизительно)
DELETE FROM `gy3te_template_styles`;
/*!40000 ALTER TABLE `gy3te_template_styles` DISABLE KEYS */;
INSERT INTO `gy3te_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
	(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.png","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
	(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
	(7, 'protostar', 0, '1', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
	(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}'),
	(9, 'flat', 0, '0', 'Flat - По умолчанию', '{}');
/*!40000 ALTER TABLE `gy3te_template_styles` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_ucm_base
CREATE TABLE IF NOT EXISTS `gy3te_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogsinfo.gy3te_ucm_base: ~0 rows (приблизительно)
DELETE FROM `gy3te_ucm_base`;
/*!40000 ALTER TABLE `gy3te_ucm_base` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_ucm_base` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_ucm_content
CREATE TABLE IF NOT EXISTS `gy3te_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_content_item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`(100)),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`(100)),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`(100)),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

-- Дамп данных таблицы prodogsinfo.gy3te_ucm_content: ~0 rows (приблизительно)
DELETE FROM `gy3te_ucm_content`;
/*!40000 ALTER TABLE `gy3te_ucm_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_ucm_content` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_ucm_history
CREATE TABLE IF NOT EXISTS `gy3te_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogsinfo.gy3te_ucm_history: ~0 rows (приблизительно)
DELETE FROM `gy3te_ucm_history`;
/*!40000 ALTER TABLE `gy3te_ucm_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_ucm_history` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_updates
CREATE TABLE IF NOT EXISTS `gy3te_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

-- Дамп данных таблицы prodogsinfo.gy3te_updates: ~0 rows (приблизительно)
DELETE FROM `gy3te_updates`;
/*!40000 ALTER TABLE `gy3te_updates` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_updates` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_update_sites
CREATE TABLE IF NOT EXISTS `gy3te_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

-- Дамп данных таблицы prodogsinfo.gy3te_update_sites: ~8 rows (приблизительно)
DELETE FROM `gy3te_update_sites`;
/*!40000 ALTER TABLE `gy3te_update_sites` DISABLE KEYS */;
INSERT INTO `gy3te_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
	(1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 1, 1526456123, ''),
	(2, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_3.xml', 1, 1526456143, ''),
	(3, 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1526456163, ''),
	(6, 'WebInstaller Update Site', 'extension', 'https://appscdn.joomla.org/webapps/jedapps/webinstaller.xml', 1, 1526456183, ''),
	(7, 'FOF 3.x', 'extension', 'http://cdn.akeebabackup.com/updates/fof3.xml', 1, 1526456202, ''),
	(8, 'Akeeba FEF', 'extension', 'http://cdn.akeebabackup.com/updates/fef.xml', 1, 1526456221, ''),
	(9, 'Akeeba Backup Core', 'extension', 'https://cdn.akeebabackup.com/updates/pkgakeebacore.xml', 1, 1526456240, ''),
	(10, 'JomSocial', 'extension', 'https://www.jomsocial.com/updates/community_update.xml', 1, 1526456256, '');
/*!40000 ALTER TABLE `gy3te_update_sites` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_update_sites_extensions
CREATE TABLE IF NOT EXISTS `gy3te_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

-- Дамп данных таблицы prodogsinfo.gy3te_update_sites_extensions: ~9 rows (приблизительно)
DELETE FROM `gy3te_update_sites_extensions`;
/*!40000 ALTER TABLE `gy3te_update_sites_extensions` DISABLE KEYS */;
INSERT INTO `gy3te_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
	(1, 700),
	(2, 802),
	(2, 10002),
	(3, 28),
	(6, 10086),
	(7, 10088),
	(8, 10089),
	(9, 10085),
	(10, 10090);
/*!40000 ALTER TABLE `gy3te_update_sites_extensions` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_usergroups
CREATE TABLE IF NOT EXISTS `gy3te_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogsinfo.gy3te_usergroups: ~12 rows (приблизительно)
DELETE FROM `gy3te_usergroups`;
/*!40000 ALTER TABLE `gy3te_usergroups` DISABLE KEYS */;
INSERT INTO `gy3te_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
	(1, 0, 1, 24, 'Public'),
	(2, 1, 8, 21, 'Registered'),
	(3, 2, 9, 14, 'Author'),
	(4, 3, 10, 13, 'Editor'),
	(5, 4, 11, 12, 'Publisher'),
	(6, 1, 4, 7, 'Manager'),
	(7, 6, 5, 6, 'Administrator'),
	(8, 1, 22, 23, 'Super Users'),
	(9, 1, 2, 3, 'Guest'),
	(10, 2, 19, 20, 'Собаковод'),
	(11, 2, 17, 18, 'Питомник'),
	(12, 2, 15, 16, 'Выставка');
/*!40000 ALTER TABLE `gy3te_usergroups` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_users
CREATE TABLE IF NOT EXISTS `gy3te_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`(100)),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogsinfo.gy3te_users: ~6 rows (приблизительно)
DELETE FROM `gy3te_users`;
/*!40000 ALTER TABLE `gy3te_users` DISABLE KEYS */;
INSERT INTO `gy3te_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
	(48, 'Super User', 'dimavz', 'zatulenko@gmail.com', '$2y$10$hcaTdf8pwSF8gXLoQauXdOgiqDuJA4eT/c0C1pXC037kOle2SXu4S', 0, 1, '2017-05-15 08:46:38', '2018-05-16 09:05:28', '0', '{"admin_style":"","admin_language":"ru-RU","language":"ru-RU","editor":"","helpsite":"","timezone":"Europe\\/Minsk","update_cache_list":1}', '0000-00-00 00:00:00', 0, '', '', 0),
	(49, 'Тест', 'test', 'test@mail.ru', '$2y$10$SnqEiqeopU69SkI/6rdYtO5NBa.RBLM2SJb4nNXDGXbLxFdyX2K0G', 0, 0, '2017-05-15 09:23:36', '2018-05-16 08:00:59', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":"","update_cache_list":1}', '0000-00-00 00:00:00', 0, '', '', 0),
	(50, 'Тест2', 'test2', 'test2@mail.ru', '$2y$10$M1qZakRwZC7yw0hdTDt5me1PrpGM7AfzA.wyn9qZvRQ9wIn5A46MS', 0, 0, '2017-05-15 09:24:42', '2018-05-10 09:09:14', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":"","update_cache_list":1}', '0000-00-00 00:00:00', 0, '', '', 0),
	(51, 'Support', 'support', 'support@prodogs.info', '$2y$10$ITx.vlFx1XnVGShB8sFkOemSKzopoI47OFGO8FpqXegcm3wjS2Bye', 0, 0, '2017-05-18 17:01:25', '0000-00-00 00:00:00', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":"","update_cache_list":1}', '0000-00-00 00:00:00', 0, '', '', 0),
	(52, 'pitomnik', 'pitomnik', 'pitomnik@mail.ru', '$2y$10$r8YCl4ZxywhCLy1CT8hAX.g25c3LcjZfHh9kRHHHgHN2/Dkg6fzk2', 0, 0, '2018-05-12 09:35:21', '2018-05-14 14:02:45', '', '{"update_cache_list":1}', '0000-00-00 00:00:00', 0, '', '', 0),
	(53, 'vistavka', 'vistavka', 'vistavka@mail.ru', '$2y$10$ODrl7iuU1DK/27aK41Elv.S5ig40YiRhzwXo5E8YyFhUJEJvm..uG', 0, 0, '2018-05-14 07:42:24', '2018-05-14 14:02:36', '', '{"update_cache_list":1}', '0000-00-00 00:00:00', 0, '', '', 0);
/*!40000 ALTER TABLE `gy3te_users` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_user_keys
CREATE TABLE IF NOT EXISTS `gy3te_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogsinfo.gy3te_user_keys: ~0 rows (приблизительно)
DELETE FROM `gy3te_user_keys`;
/*!40000 ALTER TABLE `gy3te_user_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_user_keys` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_user_notes
CREATE TABLE IF NOT EXISTS `gy3te_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogsinfo.gy3te_user_notes: ~0 rows (приблизительно)
DELETE FROM `gy3te_user_notes`;
/*!40000 ALTER TABLE `gy3te_user_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_user_notes` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_user_profiles
CREATE TABLE IF NOT EXISTS `gy3te_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- Дамп данных таблицы prodogsinfo.gy3te_user_profiles: ~0 rows (приблизительно)
DELETE FROM `gy3te_user_profiles`;
/*!40000 ALTER TABLE `gy3te_user_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `gy3te_user_profiles` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_user_usergroup_map
CREATE TABLE IF NOT EXISTS `gy3te_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogsinfo.gy3te_user_usergroup_map: ~9 rows (приблизительно)
DELETE FROM `gy3te_user_usergroup_map`;
/*!40000 ALTER TABLE `gy3te_user_usergroup_map` DISABLE KEYS */;
INSERT INTO `gy3te_user_usergroup_map` (`user_id`, `group_id`) VALUES
	(48, 8),
	(49, 10),
	(50, 2),
	(51, 2),
	(51, 7),
	(52, 2),
	(52, 11),
	(53, 2),
	(53, 12);
/*!40000 ALTER TABLE `gy3te_user_usergroup_map` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_utf8_conversion
CREATE TABLE IF NOT EXISTS `gy3te_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogsinfo.gy3te_utf8_conversion: ~1 rows (приблизительно)
DELETE FROM `gy3te_utf8_conversion`;
/*!40000 ALTER TABLE `gy3te_utf8_conversion` DISABLE KEYS */;
INSERT INTO `gy3te_utf8_conversion` (`converted`) VALUES
	(2);
/*!40000 ALTER TABLE `gy3te_utf8_conversion` ENABLE KEYS */;


-- Дамп структуры для таблица prodogsinfo.gy3te_viewlevels
CREATE TABLE IF NOT EXISTS `gy3te_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogsinfo.gy3te_viewlevels: ~8 rows (приблизительно)
DELETE FROM `gy3te_viewlevels`;
/*!40000 ALTER TABLE `gy3te_viewlevels` DISABLE KEYS */;
INSERT INTO `gy3te_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
	(1, 'Public', 0, '[1]'),
	(2, 'Registered', 2, '[6,2,8]'),
	(3, 'Special', 3, '[6,3,8]'),
	(5, 'Guest', 1, '[9]'),
	(6, 'Super Users', 4, '[8]'),
	(7, 'Собаковод', 0, '[11,10]'),
	(8, 'Питомник', 0, '[11]'),
	(9, 'Выставка', 0, '[12]');
/*!40000 ALTER TABLE `gy3te_viewlevels` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
