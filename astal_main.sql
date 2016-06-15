-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 15 2016 г., 12:38
-- Версия сервера: 5.5.48
-- Версия PHP: 5.5.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `astal_main`
--

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_assets`
--

CREATE TABLE IF NOT EXISTS `hu0fn_assets` (
  `id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `hu0fn_assets`
--

INSERT INTO `hu0fn_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 203, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 48, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 49, 50, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 51, 52, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 53, 54, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 55, 56, 1, 'com_login', 'com_login', '{}'),
(13, 1, 57, 58, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 59, 60, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 61, 62, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 63, 64, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 65, 66, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 67, 146, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 147, 150, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 151, 152, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 153, 154, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 155, 156, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 157, 158, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 159, 162, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(26, 1, 163, 164, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 21, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 148, 149, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 160, 161, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 165, 166, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 167, 168, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 1, 169, 170, 1, 'com_tags', 'com_tags', '{"core.admin":[],"core.manage":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(36, 1, 171, 172, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 173, 174, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 175, 176, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 68, 69, 2, 'com_modules.module.1', 'Main Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(40, 18, 70, 71, 2, 'com_modules.module.2', 'Login', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 18, 72, 73, 2, 'com_modules.module.3', 'Popular Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 18, 74, 75, 2, 'com_modules.module.4', 'Recently Added Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 18, 76, 77, 2, 'com_modules.module.8', 'Toolbar', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 18, 78, 79, 2, 'com_modules.module.9', 'Quick Icons', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 18, 80, 81, 2, 'com_modules.module.10', 'Logged-in Users', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(46, 18, 82, 83, 2, 'com_modules.module.12', 'Admin Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 18, 84, 85, 2, 'com_modules.module.13', 'Admin Submenu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 18, 86, 87, 2, 'com_modules.module.14', 'User Status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 18, 88, 89, 2, 'com_modules.module.15', 'Title', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 18, 90, 91, 2, 'com_modules.module.16', 'Login Form', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(51, 18, 92, 93, 2, 'com_modules.module.17', 'Хлебные крошки', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(52, 18, 94, 95, 2, 'com_modules.module.79', 'Multilanguage status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 18, 96, 97, 2, 'com_modules.module.86', 'Joomla Version', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(54, 18, 98, 99, 2, 'com_modules.module.87', 'Логотип (хеадер)', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(55, 18, 100, 101, 2, 'com_modules.module.88', 'Контакты в шапке', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(56, 18, 102, 103, 2, 'com_modules.module.89', 'Модуль формы обратной связи (шапка)', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(57, 18, 104, 105, 2, 'com_modules.module.90', 'Меню (шапка)', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(58, 27, 19, 20, 3, 'com_content.article.1', 'Материал в разработке', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(59, 18, 106, 107, 2, 'com_modules.module.91', 'поиск', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(60, 18, 108, 109, 2, 'com_modules.module.92', 'Слайдер', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(61, 18, 110, 111, 2, 'com_modules.module.93', 'Модуль информации', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(62, 8, 22, 47, 2, 'com_content.category.8', 'Новости', '{}'),
(63, 62, 27, 28, 3, 'com_content.article.2', 'Сообщаем отличную новость - на нашем сайте появился каталог продукции компании АТТ Inox Drain.', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(64, 62, 25, 26, 3, 'com_content.article.3', 'Сообщаем отличную новость - на нашем сайте появился каталог продукции компании АТТ Inox Drain1.', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(65, 62, 23, 24, 3, 'com_content.article.4', 'Сообщаем отличную новость - на нашем сайте появился каталог продукции компании АТТ Inox Drain2.', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(66, 18, 112, 113, 2, 'com_modules.module.94', 'Новости', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(67, 18, 114, 115, 2, 'com_modules.module.95', 'Логотип (футер)', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(68, 18, 116, 117, 2, 'com_modules.module.96', 'Нижнее меню', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(69, 18, 118, 119, 2, 'com_modules.module.97', 'Нижнее меню (дополнительное)', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(70, 18, 120, 121, 2, 'com_modules.module.98', 'Модуль формы обратной связи (футер)', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(71, 18, 122, 123, 2, 'com_modules.module.99', 'Cоциальные кнопки', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(72, 18, 124, 125, 2, 'com_modules.module.100', 'Контакты (футер)', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(73, 18, 126, 127, 2, 'com_modules.module.101', 'Модуль второго меню', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(74, 1, 177, 178, 1, 'com_jshopping', 'jshopping', '{}'),
(75, 18, 128, 129, 2, 'com_modules.module.102', 'Страница контактов', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(76, 18, 130, 131, 2, 'com_modules.module.103', 'Карта в контактах', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(77, 18, 132, 133, 2, 'com_modules.module.104', 'Форма обратной связи', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(78, 62, 29, 30, 3, 'com_content.article.5', 'Сообщаем отличную новость - на нашем сайте появился каталог продукции компании АТТ Inox Drain2. (2)', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(79, 62, 31, 32, 3, 'com_content.article.6', 'Сообщаем отличную новость - на нашем сайте появился каталог продукции компании АТТ Inox Drain1. (2)', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(80, 62, 33, 34, 3, 'com_content.article.7', 'Сообщаем отличную новость - на нашем сайте появился каталог продукции компании АТТ Inox Drain. (2)', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(81, 62, 35, 36, 3, 'com_content.article.8', 'Сообщаем отличную новость - на нашем сайте появился каталог продукции компании АТТ Inox Drain. (3)', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(82, 62, 37, 38, 3, 'com_content.article.9', 'Сообщаем отличную новость - на нашем сайте появился каталог продукции компании АТТ Inox Drain1. (3)', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(83, 62, 39, 40, 3, 'com_content.article.10', 'Сообщаем отличную новость - на нашем сайте появился каталог продукции компании АТТ Inox Drain2. (3)', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(84, 62, 41, 42, 3, 'com_content.article.11', 'Сообщаем отличную новость - на нашем сайте появился каталог продукции компании АТТ Inox Drain2. (4)', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(85, 62, 43, 44, 3, 'com_content.article.12', 'Сообщаем отличную новость - на нашем сайте появился каталог продукции компании АТТ Inox Drain1. (4)', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(86, 62, 45, 46, 3, 'com_content.article.13', 'Сообщаем отличную новость - на нашем сайте появился каталог продукции компании АТТ Inox Drain. (4)', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(87, 18, 134, 135, 2, 'com_modules.module.105', 'JoomGallery News', '{}'),
(88, 1, 179, 202, 1, 'com_joomgallery', 'JoomGallery', '{}'),
(89, 88, 180, 189, 2, 'com_joomgallery.category.2', 'Категория 1', '{"joom.upload":[],"joom.upload.inown":[],"core.create":{"6":1,"3":1},"joom.create.inown":[],"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(90, 88, 190, 195, 2, 'com_joomgallery.category.3', 'Категория 2', '{"joom.upload":[],"joom.upload.inown":[],"core.create":{"6":1,"3":1},"joom.create.inown":[],"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(91, 89, 181, 182, 3, 'com_joomgallery.image.1', 'Фото_1', '{}'),
(92, 89, 183, 184, 3, 'com_joomgallery.image.2', 'Фото_2', '{}'),
(93, 89, 185, 186, 3, 'com_joomgallery.image.3', 'Фото_3', '{}'),
(94, 90, 191, 192, 3, 'com_joomgallery.image.4', 'Фото_1', '{}'),
(95, 97, 199, 200, 3, 'com_joomgallery.image.5', 'Фото_2', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(96, 90, 193, 194, 3, 'com_joomgallery.image.6', 'Фото_3', '{}'),
(97, 88, 196, 201, 2, 'com_joomgallery.category.4', 'Категория 3', '{"joom.upload":[],"joom.upload.inown":[],"core.create":{"6":1,"3":1},"joom.create.inown":[],"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(98, 97, 197, 198, 3, 'com_joomgallery.image.7', 'foto_1', '{}'),
(100, 89, 187, 188, 3, 'com_joomgallery.image.8', 'катег_1', '{}'),
(102, 18, 136, 137, 2, 'com_modules.module.107', 'Категории на главной', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(103, 18, 138, 139, 2, 'com_modules.module.108', 'Форма запроса коммерческого предложения', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(104, 18, 140, 141, 2, 'com_modules.module.109', 'Картинка в шапке каталога', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(105, 18, 142, 143, 2, 'com_modules.module.110', 'Модуль вывода картинки бекграундом', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(106, 18, 144, 145, 2, 'com_modules.module.111', 'Модуль схемы', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}');

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_associations`
--

CREATE TABLE IF NOT EXISTS `hu0fn_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_banners`
--

CREATE TABLE IF NOT EXISTS `hu0fn_banners` (
  `id` int(11) NOT NULL,
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
  `version` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_banner_clients`
--

CREATE TABLE IF NOT EXISTS `hu0fn_banner_clients` (
  `id` int(11) NOT NULL,
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
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `hu0fn_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_categories`
--

CREATE TABLE IF NOT EXISTS `hu0fn_categories` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
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
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `hu0fn_categories`
--

INSERT INTO `hu0fn_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 13, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(8, 62, 1, 11, 12, 1, 'novosti', 'com_content', 'Новости', 'novosti', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 684, '2016-06-08 07:16:22', 0, '2016-06-08 07:16:22', 0, '*', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_contact_details`
--

CREATE TABLE IF NOT EXISTS `hu0fn_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
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
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_content`
--

CREATE TABLE IF NOT EXISTS `hu0fn_content` (
  `id` int(10) unsigned NOT NULL,
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
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.'
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `hu0fn_content`
--

INSERT INTO `hu0fn_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 58, 'Материал в разработке', 'material-v-razrabotke', '<p>Данный материал находится в разработке</p>', '', 1, 2, '2016-06-06 11:47:59', 684, '', '2016-06-06 11:47:59', 0, 684, '2016-06-10 13:24:41', '2016-06-06 11:47:59', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 2, '', '', 1, 360, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(2, 63, 'Сообщаем отличную новость - на нашем сайте появился каталог продукции компании АТТ Inox Drain.', 'soobshchaem-otlichnuyu-novost-na-nashem-sajte-poyavilsya-katalog-produktsii-kompanii-att-inox-drainn', '<p>Компания АТТ Inox Drain является ведущим производителем систем водоотвода из нержавеющей стали.В основе предлагаемых решений лежат следующие принципы:</p>\r\n', '\r\n<p>Компания АТТ Inox Drain является ведущим производителем систем водоотвода из нержавеющей стали.В основе предлагаемых решений лежат следующие принципы: Компания АТТ Inox Drain является ведущим производителем систем водоотвода из нержавеющей стали.В основе предлагаемых решений лежат следующие принципы: Компания АТТ Inox Drain является ведущим производителем систем водоотвода из нержавеющей стали.В основе предлагаемых решений лежат следующие принципы:</p>', 1, 8, '2016-06-08 07:17:59', 684, '', '2016-06-08 07:57:42', 684, 684, '2016-06-08 07:58:56', '2016-06-08 07:17:59', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 64, 'Сообщаем отличную новость - на нашем сайте появился каталог продукции компании АТТ Inox Drain1.', 'soobshchaem-otlichnuyu-novost-na-nashem-sajte-poyavilsya-katalog-produktsii-kompanii-att-inox-drain1', '<p>Компания АТТ Inox Drain является ведущим производителем систем водоотвода из нержавеющей стали.В основе предлагаемых решений лежат следующие принципы:</p>\r\n', '\r\n<p>Компания АТТ Inox Drain является ведущим производителем систем водоотвода из нержавеющей стали.В основе предлагаемых решений лежат следующие принципы: Компания АТТ Inox Drain является ведущим производителем систем водоотвода из нержавеющей стали.В основе предлагаемых решений лежат следующие принципы: Компания АТТ Inox Drain является ведущим производителем систем водоотвода из нержавеющей стали.В основе предлагаемых решений лежат следующие принципы:</p>', 1, 8, '2016-06-08 07:18:53', 684, '', '2016-06-08 07:58:45', 684, 684, '2016-06-08 07:58:53', '2016-06-08 07:18:53', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 65, 'Сообщаем отличную новость - на нашем сайте появился каталог продукции компании АТТ Inox Drain2.', 'soobshchaem-otlichnuyu-novost-na-nashem-sajte-poyavilsya-katalog-produktsii-kompanii-att-inox-drain', '<p>Компания АТТ Inox Drain является ведущим производителем систем водоотвода из нержавеющей стали.В основе предлагаемых решений лежат следующие принципы:</p>\r\n', '\r\n<p>Компания АТТ Inox Drain является ведущим производителем систем водоотвода из нержавеющей стали.В основе предлагаемых решений лежат следующие принципы: Компания АТТ Inox Drain является ведущим производителем систем водоотвода из нержавеющей стали.В основе предлагаемых решений лежат следующие принципы: Компания АТТ Inox Drain является ведущим производителем систем водоотвода из нержавеющей стали.В основе предлагаемых решений лежат следующие принципы:</p>', 1, 8, '2016-06-08 07:19:03', 684, '', '2016-06-08 07:59:11', 684, 0, '0000-00-00 00:00:00', '2016-06-08 07:19:03', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, '', '', 1, 15, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(5, 78, 'Сообщаем отличную новость - на нашем сайте появился каталог продукции компании АТТ Inox Drain2. (2)', 'soobshchaem-otlichnuyu-novost-na-nashem-sajte-poyavilsya-katalog-produktsii-kompanii-att-inox-drain-2', '<p>Компания АТТ Inox Drain является ведущим производителем систем водоотвода из нержавеющей стали.В основе предлагаемых решений лежат следующие принципы:</p>\r\n', '\r\n<p>Компания АТТ Inox Drain является ведущим производителем систем водоотвода из нержавеющей стали.В основе предлагаемых решений лежат следующие принципы: Компания АТТ Inox Drain является ведущим производителем систем водоотвода из нержавеющей стали.В основе предлагаемых решений лежат следующие принципы: Компания АТТ Inox Drain является ведущим производителем систем водоотвода из нержавеющей стали.В основе предлагаемых решений лежат следующие принципы:</p>', 1, 8, '2016-06-08 07:19:03', 684, '', '2016-06-10 10:38:04', 684, 0, '0000-00-00 00:00:00', '2016-06-08 07:19:03', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(6, 79, 'Сообщаем отличную новость - на нашем сайте появился каталог продукции компании АТТ Inox Drain1. (2)', 'soobshchaem-otlichnuyu-novost-na-nashem-sajte-poyavilsya-katalog-produktsii-kompanii-att-inox-drain1-2', '<p>Компания АТТ Inox Drain является ведущим производителем систем водоотвода из нержавеющей стали.В основе предлагаемых решений лежат следующие принципы:</p>\r\n', '\r\n<p>Компания АТТ Inox Drain является ведущим производителем систем водоотвода из нержавеющей стали.В основе предлагаемых решений лежат следующие принципы: Компания АТТ Inox Drain является ведущим производителем систем водоотвода из нержавеющей стали.В основе предлагаемых решений лежат следующие принципы: Компания АТТ Inox Drain является ведущим производителем систем водоотвода из нержавеющей стали.В основе предлагаемых решений лежат следующие принципы:</p>', 1, 8, '2016-06-08 07:18:53', 684, '', '2016-06-10 10:38:04', 684, 684, '2016-06-08 07:58:53', '2016-06-08 07:18:53', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(7, 80, 'Сообщаем отличную новость - на нашем сайте появился каталог продукции компании АТТ Inox Drain. (2)', 'soobshchaem-otlichnuyu-novost-na-nashem-sajte-poyavilsya-katalog-produktsii-kompanii-att-inox-drainn-2', '<p>Компания АТТ Inox Drain является ведущим производителем систем водоотвода из нержавеющей стали.В основе предлагаемых решений лежат следующие принципы:</p>\r\n', '\r\n<p>Компания АТТ Inox Drain является ведущим производителем систем водоотвода из нержавеющей стали.В основе предлагаемых решений лежат следующие принципы: Компания АТТ Inox Drain является ведущим производителем систем водоотвода из нержавеющей стали.В основе предлагаемых решений лежат следующие принципы: Компания АТТ Inox Drain является ведущим производителем систем водоотвода из нержавеющей стали.В основе предлагаемых решений лежат следующие принципы:</p>', 1, 8, '2016-06-08 07:17:59', 684, '', '2016-06-10 10:38:04', 684, 684, '2016-06-08 07:58:56', '2016-06-08 07:17:59', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(8, 81, 'Сообщаем отличную новость - на нашем сайте появился каталог продукции компании АТТ Inox Drain. (3)', 'soobshchaem-otlichnuyu-novost-na-nashem-sajte-poyavilsya-katalog-produktsii-kompanii-att-inox-drainn-3', '<p>Компания АТТ Inox Drain является ведущим производителем систем водоотвода из нержавеющей стали.В основе предлагаемых решений лежат следующие принципы:</p>\r\n', '\r\n<p>Компания АТТ Inox Drain является ведущим производителем систем водоотвода из нержавеющей стали.В основе предлагаемых решений лежат следующие принципы: Компания АТТ Inox Drain является ведущим производителем систем водоотвода из нержавеющей стали.В основе предлагаемых решений лежат следующие принципы: Компания АТТ Inox Drain является ведущим производителем систем водоотвода из нержавеющей стали.В основе предлагаемых решений лежат следующие принципы:</p>', 1, 8, '2016-06-08 07:17:59', 684, '', '2016-06-10 10:38:35', 684, 684, '2016-06-08 07:58:56', '2016-06-08 07:17:59', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(9, 82, 'Сообщаем отличную новость - на нашем сайте появился каталог продукции компании АТТ Inox Drain1. (3)', 'soobshchaem-otlichnuyu-novost-na-nashem-sajte-poyavilsya-katalog-produktsii-kompanii-att-inox-drain1-3', '<p>Компания АТТ Inox Drain является ведущим производителем систем водоотвода из нержавеющей стали.В основе предлагаемых решений лежат следующие принципы:</p>\r\n', '\r\n<p>Компания АТТ Inox Drain является ведущим производителем систем водоотвода из нержавеющей стали.В основе предлагаемых решений лежат следующие принципы: Компания АТТ Inox Drain является ведущим производителем систем водоотвода из нержавеющей стали.В основе предлагаемых решений лежат следующие принципы: Компания АТТ Inox Drain является ведущим производителем систем водоотвода из нержавеющей стали.В основе предлагаемых решений лежат следующие принципы:</p>', 1, 8, '2016-06-08 07:18:53', 684, '', '2016-06-10 10:38:35', 684, 684, '2016-06-08 07:58:53', '2016-06-08 07:18:53', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(10, 83, 'Сообщаем отличную новость - на нашем сайте появился каталог продукции компании АТТ Inox Drain2. (3)', 'soobshchaem-otlichnuyu-novost-na-nashem-sajte-poyavilsya-katalog-produktsii-kompanii-att-inox-drain-3', '<p>Компания АТТ Inox Drain является ведущим производителем систем водоотвода из нержавеющей стали.В основе предлагаемых решений лежат следующие принципы:</p>\r\n', '\r\n<p>Компания АТТ Inox Drain является ведущим производителем систем водоотвода из нержавеющей стали.В основе предлагаемых решений лежат следующие принципы: Компания АТТ Inox Drain является ведущим производителем систем водоотвода из нержавеющей стали.В основе предлагаемых решений лежат следующие принципы: Компания АТТ Inox Drain является ведущим производителем систем водоотвода из нержавеющей стали.В основе предлагаемых решений лежат следующие принципы:</p>', 1, 8, '2016-06-08 07:19:03', 684, '', '2016-06-10 10:38:35', 684, 0, '0000-00-00 00:00:00', '2016-06-08 07:19:03', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(11, 84, 'Сообщаем отличную новость - на нашем сайте появился каталог продукции компании АТТ Inox Drain2. (4)', 'soobshchaem-otlichnuyu-novost-na-nashem-sajte-poyavilsya-katalog-produktsii-kompanii-att-inox-drain-4', '<p>Компания АТТ Inox Drain является ведущим производителем систем водоотвода из нержавеющей стали.В основе предлагаемых решений лежат следующие принципы:</p>\r\n', '\r\n<p>Компания АТТ Inox Drain является ведущим производителем систем водоотвода из нержавеющей стали.В основе предлагаемых решений лежат следующие принципы: Компания АТТ Inox Drain является ведущим производителем систем водоотвода из нержавеющей стали.В основе предлагаемых решений лежат следующие принципы: Компания АТТ Inox Drain является ведущим производителем систем водоотвода из нержавеющей стали.В основе предлагаемых решений лежат следующие принципы:</p>', 1, 8, '2016-06-08 07:19:03', 684, '', '2016-06-10 10:38:35', 684, 0, '0000-00-00 00:00:00', '2016-06-08 07:19:03', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(12, 85, 'Сообщаем отличную новость - на нашем сайте появился каталог продукции компании АТТ Inox Drain1. (4)', 'soobshchaem-otlichnuyu-novost-na-nashem-sajte-poyavilsya-katalog-produktsii-kompanii-att-inox-drain1-4', '<p>Компания АТТ Inox Drain является ведущим производителем систем водоотвода из нержавеющей стали.В основе предлагаемых решений лежат следующие принципы:</p>\r\n', '\r\n<p>Компания АТТ Inox Drain является ведущим производителем систем водоотвода из нержавеющей стали.В основе предлагаемых решений лежат следующие принципы: Компания АТТ Inox Drain является ведущим производителем систем водоотвода из нержавеющей стали.В основе предлагаемых решений лежат следующие принципы: Компания АТТ Inox Drain является ведущим производителем систем водоотвода из нержавеющей стали.В основе предлагаемых решений лежат следующие принципы:</p>', 1, 8, '2016-06-08 07:18:53', 684, '', '2016-06-10 10:38:35', 684, 684, '2016-06-08 07:58:53', '2016-06-08 07:18:53', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(13, 86, 'Сообщаем отличную новость - на нашем сайте появился каталог продукции компании АТТ Inox Drain. (4)', 'soobshchaem-otlichnuyu-novost-na-nashem-sajte-poyavilsya-katalog-produktsii-kompanii-att-inox-drainn-4', '<p>Компания АТТ Inox Drain является ведущим производителем систем водоотвода из нержавеющей стали.В основе предлагаемых решений лежат следующие принципы:</p>\r\n', '\r\n<p>Компания АТТ Inox Drain является ведущим производителем систем водоотвода из нержавеющей стали.В основе предлагаемых решений лежат следующие принципы: Компания АТТ Inox Drain является ведущим производителем систем водоотвода из нержавеющей стали.В основе предлагаемых решений лежат следующие принципы: Компания АТТ Inox Drain является ведущим производителем систем водоотвода из нержавеющей стали.В основе предлагаемых решений лежат следующие принципы:</p>', 1, 8, '2016-06-08 07:17:59', 684, '', '2016-06-10 10:38:35', 684, 684, '2016-06-08 07:58:56', '2016-06-08 07:17:59', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_contentitem_tag_map`
--

CREATE TABLE IF NOT EXISTS `hu0fn_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `hu0fn_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_content_rating`
--

CREATE TABLE IF NOT EXISTS `hu0fn_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_content_types`
--

CREATE TABLE IF NOT EXISTS `hu0fn_content_types` (
  `type_id` int(10) unsigned NOT NULL,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `hu0fn_content_types`
--

INSERT INTO `hu0fn_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
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

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `hu0fn_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_extensions`
--

CREATE TABLE IF NOT EXISTS `hu0fn_extensions` (
  `extension_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=10025 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `hu0fn_extensions`
--

INSERT INTO `hu0fn_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":"","filename":"mailto"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":"","filename":"wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":"","filename":"banners"}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '{"show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"ru-RU","site":"ru-RU"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":"","filename":"search"}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"0","upload_limit":"2","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","info_block_position":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"0","show_readmore_title":"0","readmore_limit":"100","show_tags":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"0","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_heading_title_text":"1","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_featured":"show","show_feed_link":"1","feed_summary":"0","feed_show_readmore":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":"","filename":"users"}', '{"allowUserRegistration":"0","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"1","mail_to_admin":"0","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":"","filename":"contenthistory"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 0, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":"","filename":"ajax"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":"","filename":"simplepie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":"","filename":"phputf8"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"https:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"mediaversion":"5acdd0b2000ee28a2b2a9d67e82ab055"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'IDNA Convert', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"IDNA Convert","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":"","filename":"idna_convert"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2015-04-22 13:15:32","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2015 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.4.3","description":"LIB_FOF_XML_DESCRIPTION","group":"","filename":"fof"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 'PHPass', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"PHPass","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":"","filename":"phpass"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":"","filename":"mod_articles_archive"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_articles_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":"","filename":"mod_banners"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":"","filename":"mod_breadcrumbs"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":"","filename":"mod_footer"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_news"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":"","filename":"mod_random_image"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":"","filename":"mod_related_items"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":"","filename":"mod_search"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":"","filename":"mod_syndicate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":"","filename":"mod_users_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":"","filename":"mod_whosonline"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":"","filename":"mod_wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":"","filename":"mod_articles_category"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":"","filename":"mod_articles_categories"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":"","filename":"mod_languages"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":"","filename":"mod_finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":"","filename":"mod_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":"","filename":"mod_logged"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":"","filename":"mod_quickicon"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":"","filename":"mod_status"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":"","filename":"mod_submenu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":"","filename":"mod_title"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":"","filename":"mod_toolbar"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":"","filename":"mod_multilangstatus"}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":"","filename":"mod_version"}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats_admin"}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_tags_popular"}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":"","filename":"mod_tags_similar"}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":"","filename":"gmail"}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":"","filename":"ldap"}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":"","filename":"emailcloak"}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":"","filename":"loadmodule"}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":"","filename":"pagenavigation"}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":"","filename":"vote"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"Copyright (C) 2014 by Marijn Haverbeke <marijnh@gmail.com> and others","authorEmail":"marijnh@gmail.com","authorUrl":"http:\\/\\/codemirror.net\\/","version":"5.12","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":"","filename":"codemirror"}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"September 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":"","filename":"none"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2016","author":"Ephox Corporation","copyright":"Ephox Corporation","authorEmail":"N\\/A","authorUrl":"http:\\/\\/www.tinymce.com","version":"4.3.3","description":"PLG_TINY_XML_DESCRIPTION","group":"","filename":"tinymce"}', '{"mode":"1","skin":"0","mobile":"0","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","html_height":"550","html_width":"750","resizing":"1","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","colors":"1","table":"1","smilies":"1","hr":"1","link":"1","media":"1","print":"1","directionality":"1","fullscreen":"1","alignment":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":"","filename":"article"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":"","filename":"image"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":"","filename":"readmore"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `hu0fn_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":"","filename":"languagefilter"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":"","filename":"p3p"}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":"","filename":"cache"}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":"","filename":"debug"}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":"","filename":"log"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION","group":"","filename":"redirect"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":"","filename":"remember"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":"","filename":"sef"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":"","filename":"logout"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":"","filename":"contactcreator"}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"autoregister":"1","mail_to_user":"1","forceLogout":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":"","filename":"profile"}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":"","filename":"languagecode"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":"","filename":"joomlaupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":"","filename":"extensionupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":"","filename":"recaptcha"}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":"","filename":"highlight"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":"","filename":"totp"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":"","filename":"cookie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":"","filename":"yubikey"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(452, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 1, 1, 0, '{"name":"plg_system_updatenotification","type":"plugin","creationDate":"May 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION","group":"","filename":"updatenotification"}', '{"lastrun":1465969929}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(453, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_module","type":"plugin","creationDate":"October 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_MODULE_XML_DESCRIPTION","group":"","filename":"module"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(454, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 1, 1, 0, '{"name":"plg_system_stats","type":"plugin","creationDate":"November 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_STATS_XML_DESCRIPTION","group":"","filename":"stats"}', '{"mode":3,"lastrun":1464953040,"unique_id":"2072d4667a56af98316aef913ea7f41ac3979bf7","interval":12}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"November 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"November 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"April 2016","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.1","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 'Russian', 'language', 'ru-RU', '', 0, 1, 0, 0, '{"name":"Russian","type":"language","creationDate":"2016-04-01","author":"Russian Translation Team","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved","authorEmail":"smart@joomlaportal.ru","authorUrl":"www.joomlaportal.ru","version":"3.5.0.6","description":"Russian language pack (site) for Joomla! 3.5.0","group":"","filename":"install"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, '', 'language', 'ru-RU', '', 1, 1, 0, 0, '{"name":"\\u0420\\u0443\\u0441\\u0441\\u043a\\u0438\\u0439 (\\u0420\\u043e\\u0441\\u0441\\u0438\\u044f)","type":"language","creationDate":"2016-04-01","author":"Russian Translation Team","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"smart@joomlaportal.ru","authorUrl":"www.joomlaportal.ru","version":"3.5.0.6","description":"Russian language pack (administrator) for Joomla! 3.5.0","group":"","filename":"install"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 'Russian (ru-RU) Language Pack', 'package', 'pkg_ru-RU', '', 0, 1, 1, 0, '{"name":"Russian (ru-RU) Language Pack","type":"package","creationDate":"2016-04-01","author":"Russian Translation Team","copyright":"","authorEmail":"smart@joomlaportal.ru","authorUrl":"www.joomlaportal.ru","version":"3.5.0.6","description":"Russian (ru-RU) language pack for Joomla","group":"","filename":"pkg_ru-RU"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 'astal', 'template', 'astal', '', 0, 1, 1, 0, '{"name":"astal","type":"template","creationDate":"06\\/2016","author":"Bolonikov Sergei","copyright":"GNU\\/GPL","authorEmail":"sergeibolonikov@gmail.com","authorUrl":"","version":"1.0","description":"astal","group":"","filename":"templateDetails"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 'Модуль контактов', 'module', 'mod_contacts_gr', '', 0, 1, 0, 0, '{"name":"\\u041c\\u043e\\u0434\\u0443\\u043b\\u044c \\u043a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u043e\\u0432","type":"module","creationDate":"2016","author":"Sergei Bolonikov","copyright":"","authorEmail":"sergeibolonikov@gmail.com","authorUrl":"","version":"1.0","description":"\\u041c\\u043e\\u0434\\u0443\\u043b\\u044c \\u043a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u043e\\u0432","group":"","filename":"mod_contacts_gr"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 'Модуль формы обратной связи', 'module', 'mod_form_gr', '', 0, 1, 0, 0, '{"name":"\\u041c\\u043e\\u0434\\u0443\\u043b\\u044c \\u0444\\u043e\\u0440\\u043c\\u044b \\u043e\\u0431\\u0440\\u0430\\u0442\\u043d\\u043e\\u0439 \\u0441\\u0432\\u044f\\u0437\\u0438","type":"module","creationDate":"2016","author":"Sergei Bolonikov","copyright":"","authorEmail":"sergeibolonikov@gmail.com","authorUrl":"","version":"1.0","description":"\\u041c\\u043e\\u0434\\u0443\\u043b\\u044c \\u0444\\u043e\\u0440\\u043c\\u044b \\u043e\\u0431\\u0440\\u0430\\u0442\\u043d\\u043e\\u0439 \\u0441\\u0432\\u044f\\u0437\\u0438","group":"","filename":"mod_form_gr"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 'Модуль слайдера', 'module', 'mod_slider_gr', '', 0, 1, 0, 0, '{"name":"\\u041c\\u043e\\u0434\\u0443\\u043b\\u044c \\u0441\\u043b\\u0430\\u0439\\u0434\\u0435\\u0440\\u0430","type":"module","creationDate":"2016","author":"Sergei Bolonikov","copyright":"","authorEmail":"sergeibolonikov@gmail.com","authorUrl":"","version":"1.0","description":"\\u041c\\u043e\\u0434\\u0443\\u043b\\u044c \\u0441\\u043b\\u0430\\u0439\\u0434\\u0435\\u0440\\u0430","group":"","filename":"mod_slider_gr"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 'Модуль информации', 'module', 'mod_info_gr', '', 0, 1, 0, 0, '{"name":"\\u041c\\u043e\\u0434\\u0443\\u043b\\u044c \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u0438","type":"module","creationDate":"2016","author":"Sergei Bolonikov","copyright":"","authorEmail":"sergeibolonikov@gmail.com","authorUrl":"","version":"1.0","description":"\\u041c\\u043e\\u0434\\u0443\\u043b\\u044c \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u0438","group":"","filename":"mod_info_gr"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10008, 'Модуль социальных кнопок', 'module', 'mod_social_gr', '', 0, 1, 0, 0, '{"name":"\\u041c\\u043e\\u0434\\u0443\\u043b\\u044c \\u0441\\u043e\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u043a\\u043d\\u043e\\u043f\\u043e\\u043a","type":"module","creationDate":"2016","author":"Sergei Bolonikov","copyright":"","authorEmail":"sergeibolonikov@gmail.com","authorUrl":"","version":"1.0","description":"\\u041c\\u043e\\u0434\\u0443\\u043b\\u044c \\u0441\\u043e\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u043a\\u043d\\u043e\\u043f\\u043e\\u043a","group":"","filename":"mod_social_gr"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10009, 'Модуль второго меню', 'module', 'mod_second_menu_gr', '', 0, 1, 0, 0, '{"name":"\\u041c\\u043e\\u0434\\u0443\\u043b\\u044c \\u0432\\u0442\\u043e\\u0440\\u043e\\u0433\\u043e \\u043c\\u0435\\u043d\\u044e","type":"module","creationDate":"2016","author":"Sergei Bolonikov","copyright":"","authorEmail":"sergeibolonikov@gmail.com","authorUrl":"","version":"1.0","description":"\\u041c\\u043e\\u0434\\u0443\\u043b\\u044c \\u0432\\u0442\\u043e\\u0440\\u043e\\u0433\\u043e \\u043c\\u0435\\u043d\\u044e","group":"","filename":"mod_second_menu_gr"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10010, 'plg_installer_webinstaller', 'plugin', 'webinstaller', 'installer', 0, 1, 1, 0, '{"name":"plg_installer_webinstaller","type":"plugin","creationDate":"17 February 2016","author":"Joomla! Project","copyright":"Copyright (C) 2013-2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.1.0","description":"PLG_INSTALLER_WEBINSTALLER_XML_DESCRIPTION","group":"","filename":"webinstaller"}', '{"tab_position":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10011, 'jshopping', 'component', 'com_jshopping', '', 1, 1, 0, 0, '{"name":"jshopping","type":"component","creationDate":"05.03.2016","author":"MAXXmarketing GmbH","copyright":"","authorEmail":"marketing@maxx-marketing.net","authorUrl":"http:\\/\\/www.webdesigner-profi.de","version":"4.12.2","description":"Joomshopping - shop component. Note: JoomShopping code files are named as jshopping","group":"","filename":"jshopping"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10012, 'Search - JoomShopping', 'plugin', 'joomshopping', 'search', 0, 0, 1, 0, '{"name":"Search - JoomShopping","type":"plugin","creationDate":"12.10.2012","author":"MAXXmarketing GmbH","copyright":"","authorEmail":"marketing@maxx-marketing.net","authorUrl":"http:\\/\\/www.webdesigner-profi.de","version":"4.0.1","description":"Allows Searching of JoomShopping Component","group":"","filename":"joomshopping"}', '{"search_limit":"50"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10013, 'PLG_JOOMLA_OPTIONS', 'plugin', 'joomla_options', 'system', 0, 1, 1, 0, '{"name":"PLG_JOOMLA_OPTIONS","type":"plugin","creationDate":"Mart 2013","author":"Fedor Vlasenko","copyright":"Copyright (C) 2013 Fregate Studio.","authorEmail":"vlasenkofedor@mail.ru","authorUrl":"fregate.org.ua","version":"0.0.1","description":"PLG_JOOMLA_OPTIONS_XML_DESCRIPTION","group":"","filename":"joomla_options"}', '{"disable_mootools":"1","disable_jquery":"1","disable_bootstrap":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10014, 'Страница контактов', 'module', 'mod_page_contacts_gr', '', 0, 1, 0, 0, '{"name":"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430 \\u043a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u043e\\u0432","type":"module","creationDate":"2016","author":"Sergei Bolonikov","copyright":"","authorEmail":"sergeibolonikov@gmail.com","authorUrl":"","version":"1.0","description":"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430 \\u043a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u043e\\u0432","group":"","filename":"mod_page_contacts_gr"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10015, 'mod_yandexmap', 'module', 'mod_yandexmap', '', 0, 1, 0, 0, '{"name":"mod_yandexmap","type":"module","creationDate":"November 2015","author":"Lange D.M.","copyright":"Copyright (C) www.medialine.by","authorEmail":"dlange@medialine.by","authorUrl":"www.medialine.by","version":"1.0.0","description":"\\u041c\\u043e\\u0434\\u0443\\u043b\\u044c \\u0432\\u044b\\u0432\\u043e\\u0434\\u0438\\u0442 \\u044f\\u043d\\u0434\\u0435\\u043a\\u0441 \\u043a\\u0430\\u0440\\u0442\\u0443","group":"","filename":"mod_yandexmap"}', '{"zoom":"12","marker_link_text":"\\u041f\\u043e\\u0434\\u0440\\u043e\\u0431\\u043d\\u0435\\u0435","markers_list":"","map_width":"100%","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10016, 'JoomGallery', 'component', 'com_joomgallery', '', 1, 1, 0, 0, '{"name":"JoomGallery","type":"component","creationDate":"2016\\/06\\/09","author":"JoomGallery::ProjectTeam","copyright":"This component is released under the GNU\\/GPL License","authorEmail":"team@joomgallery.net","authorUrl":"http:\\/\\/www.joomgallery.net","version":"3.3.2","description":"JoomGallery 3 is a native Joomla! 3.x gallery component","group":"","filename":"joomgallery"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10017, 'JoomGallery ru-RU', 'file', 'JoomGalleryru-RU', '', 0, 1, 0, 0, '{"name":"JoomGallery ru-RU","type":"file","creationDate":"2013-06-16","author":"JoomGallery::ProjectTeam","copyright":"Copyright (C) 2008 - 2013 JoomGallery::ProjectTeam. All rights reserved.","authorEmail":"team@joomgallery.net","authorUrl":"http:\\/\\/www.joomgallery.net\\/","version":"3.1","description":"\\n    <div align=\\"center\\">\\n      <table border=\\"0\\" width=\\"100%\\">\\n        <tr>\\n          <td width=\\"100%\\" colspan=\\"2\\">\\n            <div align=\\"center\\">\\n              <h3>Russian Translation for JoomGallery 3.x<\\/h3>\\n              <br \\/><strong>by: <a href=\\"https:\\/\\/www.transifex.com\\/projects\\/p\\/joomgallery3\\/language\\/ru_RU\\/\\" target=\\"_blank\\">JoomGallery::TranslationTeam::Russian<\\/a><\\/strong>\\n              <br \\/>(based on a translation by: Hermann Maurer, mikenike (EXIF) and Michael Grigorev (IPTC))\\n            <\\/div>\\n            <hr \\/>\\n          <\\/td>\\n        <\\/tr>\\n        <tr>\\n          <td width=\\"25%\\"><u><strong>Translated areas:<\\/strong><\\/u><\\/td>\\n          <td width=\\"75%\\">Administrator (Backend) and Website (Frontend) incl. EXIF- and IPTC-Tags<\\/td>\\n        <\\/tr>\\n        <tr>\\n          <td width=\\"25%\\"><u><strong>Translation version:<\\/strong><\\/u><\\/td>\\n          <td width=\\"75%\\">3.1<\\/td>\\n        <\\/tr>\\n        <td width=\\"100%\\" colspan=\\"2\\"><hr \\/><\\/td>\\n        <tr>\\n          <td width=\\"25%\\"><u><strong>JoomGallery-Website:<\\/strong><\\/u><\\/td>\\n          <td width=\\"75%\\"><a href=\\"http:\\/\\/www.en.joomgallery.net\\" target=\\"_blank\\">http:\\/\\/www.en.joomgallery.net<\\/a><\\/td>\\n        <\\/tr>\\n        <\\/tr>\\n        <td width=\\"100%\\" colspan=\\"2\\"><hr \\/><\\/td>\\n        <tr>\\n      <\\/table>\\n    <\\/div>","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10018, 'BootOne: Responsive Layout for JoomGallery', 'file', 'BootOneResponsiveLayoutforJoomGallery', '', 0, 1, 0, 0, '{"name":"BootOne: Responsive Layout for JoomGallery","type":"file","creationDate":"2015\\/05\\/20","author":"JoomGallery::ProjectTeam","copyright":"This component is released under the GNU\\/GPL License","authorEmail":"team@joomgallery.net","authorUrl":"http:\\/\\/www.joomgallery.net","version":"1.0 ALPHA","description":"BootOne: Responsive Layout for JoomGallery","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10020, 'Jshopping Categories Gr', 'module', 'mod_jshopping_categories_gr', '', 0, 1, 0, 0, '{"name":"Jshopping Categories Gr","type":"module","creationDate":"20.12.2012","author":"gray","copyright":"","authorEmail":"","authorUrl":"","version":"1","description":"\\u041f\\u043e\\u043a\\u0430\\u0437\\u044b\\u0432\\u0430\\u0435\\u0442 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438","group":"","filename":"mod_jshopping_categories_gr"}', '{"show_image":"0","sort":"id","ordering":"asc"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10021, 'JoomShopping Second Description For Product', 'plugin', 'second_description_for_product', 'jshoppingproducts', 0, 1, 1, 0, '{"creationDate":"18.02.2015","author":"MAXXmarketing GmbH","authorEmail":"marketing@maxx-marketing.net","authorUrl":"http://www.webdesigner-profi.de","version":"1.0.1"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10022, 'JoomShopping Second Description For Product', 'plugin', 'second_description_for_product', 'jshoppingadmin', 0, 1, 1, 0, '{"creationDate":"18.02.2015","author":"MAXXmarketing GmbH","authorEmail":"marketing@maxx-marketing.net","authorUrl":"http://www.webdesigner-profi.de","version":"1.0.1"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10023, 'Модуль вывода картинки бекграундом', 'module', 'mod_background_gr', '', 0, 1, 0, 0, '{"name":"\\u041c\\u043e\\u0434\\u0443\\u043b\\u044c \\u0432\\u044b\\u0432\\u043e\\u0434\\u0430 \\u043a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0438 \\u0431\\u0435\\u043a\\u0433\\u0440\\u0430\\u0443\\u043d\\u0434\\u043e\\u043c","type":"module","creationDate":"2016","author":"Sergei Bolonikov","copyright":"","authorEmail":"sergeibolonikov@gmail.com","authorUrl":"","version":"1.0","description":"\\u041c\\u043e\\u0434\\u0443\\u043b\\u044c \\u0432\\u044b\\u0432\\u043e\\u0434\\u0430 \\u043a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0438 \\u0431\\u0435\\u043a\\u0433\\u0440\\u0430\\u0443\\u043d\\u0434\\u043e\\u043c","group":"","filename":"mod_background_gr"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10024, 'Модуль схемы', 'module', 'mod_scheme_gr', '', 0, 1, 0, 0, '{"name":"\\u041c\\u043e\\u0434\\u0443\\u043b\\u044c \\u0441\\u0445\\u0435\\u043c\\u044b","type":"module","creationDate":"2016","author":"Sergei Bolonikov","copyright":"","authorEmail":"sergeibolonikov@gmail.com","authorUrl":"","version":"1.0","description":"\\u041c\\u043e\\u0434\\u0443\\u043b\\u044c \\u0441\\u0445\\u0435\\u043c\\u044b","group":"","filename":"mod_scheme_gr"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_finder_filters`
--

CREATE TABLE IF NOT EXISTS `hu0fn_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL,
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
  `params` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_finder_links`
--

CREATE TABLE IF NOT EXISTS `hu0fn_finder_links` (
  `link_id` int(10) unsigned NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
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
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `hu0fn_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `hu0fn_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `hu0fn_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `hu0fn_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `hu0fn_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `hu0fn_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `hu0fn_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `hu0fn_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `hu0fn_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `hu0fn_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `hu0fn_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `hu0fn_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `hu0fn_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `hu0fn_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `hu0fn_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `hu0fn_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `hu0fn_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `hu0fn_finder_taxonomy`
--

INSERT INTO `hu0fn_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `hu0fn_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_finder_terms`
--

CREATE TABLE IF NOT EXISTS `hu0fn_finder_terms` (
  `term_id` int(10) unsigned NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `hu0fn_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `hu0fn_finder_terms_common`
--

INSERT INTO `hu0fn_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
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
('isn''t', 'en'),
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
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
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
('veri', 'en'),
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
('whi', 'en'),
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

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `hu0fn_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `hu0fn_finder_tokens_aggregate` (
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
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_finder_types`
--

CREATE TABLE IF NOT EXISTS `hu0fn_finder_types` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_joomgallery`
--

CREATE TABLE IF NOT EXISTS `hu0fn_joomgallery` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `imgtitle` text NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `imgauthor` varchar(50) DEFAULT NULL,
  `imgtext` text NOT NULL,
  `imgdate` datetime NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `downloads` int(11) NOT NULL DEFAULT '0',
  `imgvotes` int(11) NOT NULL DEFAULT '0',
  `imgvotesum` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `imgfilename` varchar(255) NOT NULL DEFAULT '',
  `imgthumbname` varchar(255) NOT NULL DEFAULT '',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `owner` int(11) unsigned NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `useruploaded` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `hu0fn_joomgallery`
--

INSERT INTO `hu0fn_joomgallery` (`id`, `asset_id`, `catid`, `imgtitle`, `alias`, `imgauthor`, `imgtext`, `imgdate`, `hits`, `downloads`, `imgvotes`, `imgvotesum`, `access`, `published`, `hidden`, `featured`, `imgfilename`, `imgthumbname`, `checked_out`, `owner`, `approved`, `useruploaded`, `ordering`, `params`, `metakey`, `metadesc`) VALUES
(1, 91, 2, 'Фото_1', 'foto-1-1', '', '', '2016-06-10 13:47:28', 1, 0, 0, 0, 1, 1, 0, 0, '_1_20160610_1470990721.jpg', '_1_20160610_1470990721.jpg', 0, 0, 1, 0, 1, '', '', ''),
(2, 92, 2, 'Фото_2', 'foto-2-2', '', '', '2016-06-10 13:47:28', 1, 0, 0, 0, 1, 1, 0, 0, '_2_20160610_1751237316.jpg', '_2_20160610_1751237316.jpg', 0, 0, 1, 0, 2, '', '', ''),
(3, 93, 2, 'Фото_3', 'foto-3-3', '', '', '2016-06-10 13:47:28', 1, 0, 0, 0, 1, 1, 0, 0, '_3_20160610_1677941306.jpg', '_3_20160610_1677941306.jpg', 0, 0, 1, 0, 3, '', '', ''),
(4, 94, 3, 'Фото_1', 'foto-1-4', '', '', '2016-06-10 13:48:40', 3, 0, 0, 0, 1, 1, 0, 0, '_1_20160610_2081301745.jpg', '_1_20160610_2081301745.jpg', 0, 0, 1, 0, 1, '', '', ''),
(5, 95, 4, 'Фото_2', 'foto-2-5', '', '', '2016-06-10 13:48:40', 0, 0, 0, 0, 1, 1, 0, 0, '_2_20160610_1532069038.jpg', '_2_20160610_1532069038.jpg', 0, 0, 1, 0, 2, '', '', ''),
(6, 96, 3, 'Фото_3', 'foto-3-6', '', '', '2016-06-10 13:48:40', 0, 0, 0, 0, 1, 1, 0, 0, '_3_20160610_1813049062.jpg', '_3_20160610_1813049062.jpg', 0, 0, 1, 0, 2, '', '', ''),
(7, 98, 4, 'foto_1', 'foto-1-7', '', '', '2016-06-13 08:34:50', 0, 0, 0, 0, 1, 1, 0, 0, 'foto_1_20160613_1893435614.jpg', 'foto_1_20160613_1893435614.jpg', 0, 0, 1, 0, 1, '', '', ''),
(8, 100, 2, 'катег_1', 'kateg-1-8', '', '', '2016-06-13 08:43:25', 0, 0, 0, 0, 1, 1, 0, 0, '_1_20160613_1335694954.jpg', '_1_20160613_1335694954.jpg', 0, 0, 1, 0, 4, '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_joomgallery_category_details`
--

CREATE TABLE IF NOT EXISTS `hu0fn_joomgallery_category_details` (
  `id` int(11) NOT NULL,
  `details_key` varchar(255) NOT NULL,
  `details_value` text NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_joomgallery_catg`
--

CREATE TABLE IF NOT EXISTS `hu0fn_joomgallery_catg` (
  `cid` int(11) NOT NULL,
  `asset_id` int(10) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(2048) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(1) unsigned NOT NULL DEFAULT '0',
  `description` text,
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `in_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(100) NOT NULL DEFAULT '',
  `owner` int(11) DEFAULT '0',
  `thumbnail` int(11) DEFAULT NULL,
  `img_position` int(10) DEFAULT '0',
  `catpath` varchar(2048) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `exclude_toplists` int(1) NOT NULL,
  `exclude_search` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `hu0fn_joomgallery_catg`
--

INSERT INTO `hu0fn_joomgallery_catg` (`cid`, `asset_id`, `name`, `alias`, `parent_id`, `lft`, `rgt`, `level`, `description`, `access`, `published`, `hidden`, `in_hidden`, `password`, `owner`, `thumbnail`, `img_position`, `catpath`, `params`, `metakey`, `metadesc`, `exclude_toplists`, `exclude_search`) VALUES
(1, 0, 'ROOT', 'root', 0, 0, 8, 0, NULL, 1, 1, 0, 0, '', 0, NULL, 0, '', '', '', '', 0, 0),
(2, 89, 'Категория 1', '1', 1, 5, 6, 1, '', 1, 1, 0, 0, '', 0, 8, -1, '_1_2', '', '', '', 0, 0),
(3, 90, 'Категория 2', '2', 1, 3, 4, 1, '', 1, 1, 0, 0, '', 0, 8, -1, '_2_3', '', '', '', 0, 0),
(4, 97, 'Категория 3', '3', 1, 1, 2, 1, '', 1, 1, 0, 0, '', 0, 8, -1, '_3_4', '', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_joomgallery_comments`
--

CREATE TABLE IF NOT EXISTS `hu0fn_joomgallery_comments` (
  `cmtid` int(11) NOT NULL,
  `cmtpic` int(11) NOT NULL DEFAULT '0',
  `cmtip` varchar(15) NOT NULL DEFAULT '',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `cmtname` varchar(50) NOT NULL DEFAULT '',
  `cmttext` text NOT NULL,
  `cmtdate` datetime NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_joomgallery_config`
--

CREATE TABLE IF NOT EXISTS `hu0fn_joomgallery_config` (
  `id` int(1) NOT NULL,
  `group_id` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `jg_pathimages` varchar(100) NOT NULL,
  `jg_pathoriginalimages` varchar(100) NOT NULL,
  `jg_paththumbs` varchar(100) NOT NULL,
  `jg_pathftpupload` varchar(100) NOT NULL,
  `jg_pathtemp` varchar(100) NOT NULL,
  `jg_wmpath` varchar(100) NOT NULL,
  `jg_wmfile` varchar(50) NOT NULL,
  `jg_use_real_paths` int(1) NOT NULL,
  `jg_checkupdate` int(1) NOT NULL,
  `jg_filenamewithjs` int(1) NOT NULL,
  `jg_filenamereplace` text NOT NULL,
  `jg_thumbcreation` varchar(5) NOT NULL,
  `jg_fastgd2thumbcreation` int(1) NOT NULL,
  `jg_impath` varchar(50) NOT NULL,
  `jg_resizetomaxwidth` int(1) NOT NULL,
  `jg_maxwidth` int(5) NOT NULL,
  `jg_picturequality` int(3) NOT NULL,
  `jg_useforresizedirection` int(1) NOT NULL,
  `jg_cropposition` int(1) NOT NULL,
  `jg_thumbwidth` int(5) NOT NULL,
  `jg_thumbheight` int(5) NOT NULL,
  `jg_thumbquality` int(3) NOT NULL,
  `jg_uploadorder` int(1) NOT NULL,
  `jg_useorigfilename` int(1) NOT NULL,
  `jg_filenamenumber` int(1) NOT NULL,
  `jg_delete_original` int(1) NOT NULL,
  `jg_msg_upload_type` int(1) NOT NULL,
  `jg_msg_upload_recipients` text NOT NULL,
  `jg_msg_download_type` int(1) NOT NULL,
  `jg_msg_download_recipients` text NOT NULL,
  `jg_msg_zipdownload` int(1) NOT NULL,
  `jg_msg_comment_type` int(1) NOT NULL,
  `jg_msg_comment_recipients` text NOT NULL,
  `jg_msg_comment_toowner` int(1) NOT NULL,
  `jg_msg_nametag_type` int(1) NOT NULL,
  `jg_msg_nametag_recipients` text NOT NULL,
  `jg_msg_nametag_totaggeduser` int(1) NOT NULL,
  `jg_msg_nametag_toowner` int(1) NOT NULL,
  `jg_msg_report_type` int(1) NOT NULL,
  `jg_msg_report_recipients` text NOT NULL,
  `jg_msg_report_toowner` int(1) NOT NULL,
  `jg_msg_rejectimg_type` int(1) NOT NULL,
  `jg_msg_global_from` int(1) NOT NULL,
  `jg_realname` int(1) NOT NULL,
  `jg_contentpluginsenabled` int(1) NOT NULL,
  `jg_itemid` varchar(10) NOT NULL,
  `jg_ajaxcategoryselection` int(1) NOT NULL,
  `jg_disableunrequiredchecks` int(1) NOT NULL,
  `jg_use_listbox_max_user_count` int(1) NOT NULL,
  `jg_userspace` int(1) NOT NULL,
  `jg_useruploaddefaultcat` int(1) NOT NULL,
  `jg_approve` int(1) NOT NULL,
  `jg_unregistered_permissions` int(1) NOT NULL,
  `jg_maxusercat` int(5) NOT NULL,
  `jg_maxuserimage` int(9) NOT NULL,
  `jg_maxuserimage_timespan` int(9) NOT NULL,
  `jg_maxfilesize` int(9) NOT NULL,
  `jg_usercatacc` int(1) NOT NULL,
  `jg_usercatthumbalign` int(1) NOT NULL,
  `jg_useruploadsingle` int(1) NOT NULL,
  `jg_maxuploadfields` int(3) NOT NULL,
  `jg_useruploadajax` int(1) NOT NULL,
  `jg_useruploadbatch` int(1) NOT NULL,
  `jg_useruploadjava` int(1) NOT NULL,
  `jg_useruseorigfilename` int(1) NOT NULL,
  `jg_useruploadnumber` int(1) NOT NULL,
  `jg_special_gif_upload` int(1) NOT NULL,
  `jg_delete_original_user` int(1) NOT NULL,
  `jg_newpiccopyright` int(1) NOT NULL,
  `jg_newpicnote` int(1) NOT NULL,
  `jg_redirect_after_upload` int(1) NOT NULL,
  `jg_edit_metadata` int(1) NOT NULL,
  `jg_download` int(1) NOT NULL,
  `jg_download_unreg` int(1) NOT NULL,
  `jg_download_hint` int(1) NOT NULL,
  `jg_downloadfile` int(1) NOT NULL,
  `jg_downloadwithwatermark` int(1) NOT NULL,
  `jg_showrating` int(1) NOT NULL,
  `jg_maxvoting` int(1) NOT NULL,
  `jg_ratingcalctype` int(1) NOT NULL,
  `jg_ratingdisplaytype` int(1) NOT NULL,
  `jg_ajaxrating` int(1) NOT NULL,
  `jg_votingonlyonce` int(1) NOT NULL,
  `jg_votingonlyreg` int(1) NOT NULL,
  `jg_showcomment` int(1) NOT NULL,
  `jg_anoncomment` int(1) NOT NULL,
  `jg_namedanoncomment` int(1) NOT NULL,
  `jg_anonapprovecom` int(1) NOT NULL,
  `jg_approvecom` int(1) NOT NULL,
  `jg_bbcodesupport` int(1) NOT NULL,
  `jg_smiliesupport` int(1) NOT NULL,
  `jg_anismilie` int(1) NOT NULL,
  `jg_smiliescolor` varchar(10) NOT NULL,
  `jg_report_images` int(1) NOT NULL,
  `jg_report_unreg` int(1) NOT NULL,
  `jg_report_hint` int(1) NOT NULL,
  `jg_alternative_layout` varchar(255) NOT NULL,
  `jg_anchors` int(1) NOT NULL,
  `jg_tooltips` int(1) NOT NULL,
  `jg_dyncrop` int(1) NOT NULL,
  `jg_dyncropposition` int(1) NOT NULL,
  `jg_dyncropwidth` int(5) NOT NULL,
  `jg_dyncropheight` int(5) NOT NULL,
  `jg_dyncropbgcol` varchar(12) NOT NULL,
  `jg_hideemptycats` int(1) NOT NULL,
  `jg_skipcatview` int(1) NOT NULL,
  `jg_imgalign` int(3) NOT NULL,
  `jg_showrestrictedcats` int(1) NOT NULL,
  `jg_showrestrictedhint` int(1) NOT NULL,
  `jg_firstorder` varchar(20) NOT NULL,
  `jg_secondorder` varchar(20) NOT NULL,
  `jg_thirdorder` varchar(20) NOT NULL,
  `jg_pagetitle_cat` text NOT NULL,
  `jg_pagetitle_detail` text NOT NULL,
  `jg_showgalleryhead` int(1) NOT NULL,
  `jg_showpathway` int(1) NOT NULL,
  `jg_completebreadcrumbs` int(1) NOT NULL,
  `jg_search` int(1) NOT NULL,
  `jg_searchcols` int(1) NOT NULL,
  `jg_searchthumbalign` int(1) NOT NULL,
  `jg_searchtextalign` int(1) NOT NULL,
  `jg_showsearchdownload` int(1) NOT NULL,
  `jg_showsearchfavourite` int(1) NOT NULL,
  `jg_search_report_images` int(1) NOT NULL,
  `jg_showsearcheditorlinks` int(1) NOT NULL,
  `jg_showallpics` int(1) NOT NULL,
  `jg_showallhits` int(1) NOT NULL,
  `jg_showbacklink` int(1) NOT NULL,
  `jg_suppresscredits` int(1) NOT NULL,
  `jg_showuserpanel` int(1) NOT NULL,
  `jg_showuserpanel_hint` int(1) NOT NULL,
  `jg_showuserpanel_unreg` int(1) NOT NULL,
  `jg_showallpicstoadmin` int(1) NOT NULL,
  `jg_showminithumbs` int(1) NOT NULL,
  `jg_openjs_padding` int(3) NOT NULL,
  `jg_openjs_background` varchar(12) NOT NULL,
  `jg_dhtml_border` varchar(12) NOT NULL,
  `jg_show_title_in_popup` int(1) NOT NULL,
  `jg_show_description_in_popup` int(1) NOT NULL,
  `jg_lightbox_speed` int(3) NOT NULL,
  `jg_lightbox_slide_all` int(1) NOT NULL,
  `jg_resize_js_image` int(1) NOT NULL,
  `jg_disable_rightclick_original` int(1) NOT NULL,
  `jg_showgallerysubhead` int(1) NOT NULL,
  `jg_showallcathead` int(1) NOT NULL,
  `jg_colcat` int(1) NOT NULL,
  `jg_catperpage` int(1) NOT NULL,
  `jg_ordercatbyalpha` int(1) NOT NULL,
  `jg_showgallerypagenav` int(1) NOT NULL,
  `jg_showcatcount` int(1) NOT NULL,
  `jg_showcatthumb` int(1) NOT NULL,
  `jg_showrandomcatthumb` int(1) NOT NULL,
  `jg_ctalign` int(1) NOT NULL,
  `jg_showtotalcatimages` int(1) NOT NULL,
  `jg_showtotalcathits` int(1) NOT NULL,
  `jg_showcatasnew` int(1) NOT NULL,
  `jg_catdaysnew` int(3) NOT NULL,
  `jg_showdescriptioningalleryview` int(1) NOT NULL,
  `jg_uploadicongallery` int(1) NOT NULL,
  `jg_showsubsingalleryview` int(1) NOT NULL,
  `jg_category_rss` int(9) NOT NULL,
  `jg_category_rss_icon` varchar(10) NOT NULL,
  `jg_uploadiconcategory` int(1) NOT NULL,
  `jg_showcathead` int(1) NOT NULL,
  `jg_usercatorder` int(1) NOT NULL,
  `jg_usercatorderlist` varchar(50) NOT NULL,
  `jg_showcatdescriptionincat` int(1) NOT NULL,
  `jg_showpagenav` int(1) NOT NULL,
  `jg_showpiccount` int(1) NOT NULL,
  `jg_perpage` int(3) NOT NULL,
  `jg_catthumbalign` int(1) NOT NULL,
  `jg_colnumb` int(3) NOT NULL,
  `jg_detailpic_open` varchar(50) NOT NULL,
  `jg_lightboxbigpic` int(1) NOT NULL,
  `jg_showtitle` int(1) NOT NULL,
  `jg_showpicasnew` int(1) NOT NULL,
  `jg_daysnew` int(3) NOT NULL,
  `jg_showhits` int(1) NOT NULL,
  `jg_showdownloads` int(1) NOT NULL,
  `jg_showauthor` int(1) NOT NULL,
  `jg_showowner` int(1) NOT NULL,
  `jg_showcatcom` int(1) NOT NULL,
  `jg_showcatrate` int(1) NOT NULL,
  `jg_showcatdescription` int(1) NOT NULL,
  `jg_showcategorydownload` int(1) NOT NULL,
  `jg_showcategoryfavourite` int(1) NOT NULL,
  `jg_category_report_images` int(1) NOT NULL,
  `jg_showcategoryeditorlinks` int(1) NOT NULL,
  `jg_showsubcathead` int(1) NOT NULL,
  `jg_showsubcatcount` int(1) NOT NULL,
  `jg_colsubcat` int(3) NOT NULL,
  `jg_subperpage` int(3) NOT NULL,
  `jg_showpagenavsubs` int(1) NOT NULL,
  `jg_subcatthumbalign` int(1) NOT NULL,
  `jg_showsubthumbs` int(1) NOT NULL,
  `jg_showrandomsubthumb` int(1) NOT NULL,
  `jg_showdescriptionincategoryview` int(1) NOT NULL,
  `jg_ordersubcatbyalpha` int(1) NOT NULL,
  `jg_showtotalsubcatimages` int(1) NOT NULL,
  `jg_showtotalsubcathits` int(1) NOT NULL,
  `jg_uploadiconsubcat` int(1) NOT NULL,
  `jg_showdetailpage` int(1) NOT NULL,
  `jg_disabledetailpage` int(1) NOT NULL,
  `jg_showdetailnumberofpics` int(1) NOT NULL,
  `jg_cursor_navigation` int(1) NOT NULL,
  `jg_disable_rightclick_detail` int(1) NOT NULL,
  `jg_detail_report_images` int(1) NOT NULL,
  `jg_showdetaileditorlinks` int(1) NOT NULL,
  `jg_showdetailtitle` int(1) NOT NULL,
  `jg_showdetail` int(1) NOT NULL,
  `jg_showdetailaccordion` int(1) NOT NULL,
  `jg_accordionduration` int(3) NOT NULL,
  `jg_accordiondisplay` int(3) NOT NULL,
  `jg_accordionopacity` int(1) NOT NULL,
  `jg_accordionalwayshide` int(1) NOT NULL,
  `jg_accordioninitialeffect` int(1) NOT NULL,
  `jg_showdetaildescription` int(1) NOT NULL,
  `jg_showdetaildatum` int(1) NOT NULL,
  `jg_showdetailhits` int(1) NOT NULL,
  `jg_showdetaildownloads` int(1) NOT NULL,
  `jg_showdetailrating` int(1) NOT NULL,
  `jg_showdetailfilesize` int(1) NOT NULL,
  `jg_showdetailauthor` int(1) NOT NULL,
  `jg_showoriginalfilesize` int(1) NOT NULL,
  `jg_showdetaildownload` int(1) NOT NULL,
  `jg_watermark` int(1) NOT NULL,
  `jg_watermarkpos` int(1) NOT NULL,
  `jg_watermarkzoom` int(1) NOT NULL,
  `jg_watermarksize` int(1) NOT NULL,
  `jg_bigpic` int(1) NOT NULL,
  `jg_bigpic_unreg` int(1) NOT NULL,
  `jg_bigpic_open` varchar(50) NOT NULL,
  `jg_bbcodelink` int(1) NOT NULL,
  `jg_showcommentsunreg` int(1) NOT NULL,
  `jg_showcommentsarea` int(1) NOT NULL,
  `jg_send2friend` int(1) NOT NULL,
  `jg_minis` int(1) NOT NULL,
  `jg_motionminis` int(1) NOT NULL,
  `jg_motionminiWidth` int(3) NOT NULL,
  `jg_motionminiHeight` int(3) NOT NULL,
  `jg_motionminiLimit` int(2) NOT NULL,
  `jg_miniWidth` int(3) NOT NULL,
  `jg_miniHeight` int(3) NOT NULL,
  `jg_minisprop` int(1) NOT NULL,
  `jg_nameshields` int(1) NOT NULL,
  `jg_nameshields_others` int(1) NOT NULL,
  `jg_nameshields_unreg` int(1) NOT NULL,
  `jg_show_nameshields_unreg` int(1) NOT NULL,
  `jg_nameshields_height` int(3) NOT NULL,
  `jg_nameshields_width` int(3) NOT NULL,
  `jg_slideshow` int(1) NOT NULL,
  `jg_slideshow_timer` int(3) NOT NULL,
  `jg_slideshow_transition` int(1) NOT NULL,
  `jg_slideshow_transtime` int(3) NOT NULL,
  `jg_slideshow_maxdimauto` int(1) NOT NULL,
  `jg_slideshow_width` int(3) NOT NULL,
  `jg_slideshow_heigth` int(3) NOT NULL,
  `jg_slideshow_infopane` int(1) NOT NULL,
  `jg_slideshow_carousel` int(1) NOT NULL,
  `jg_slideshow_arrows` int(1) NOT NULL,
  `jg_slideshow_repeat` int(1) NOT NULL,
  `jg_showexifdata` int(1) NOT NULL,
  `jg_showgeotagging` int(1) NOT NULL,
  `jg_geotaggingkey` text NOT NULL,
  `jg_subifdtags` text NOT NULL,
  `jg_ifdotags` text NOT NULL,
  `jg_gpstags` text NOT NULL,
  `jg_showiptcdata` int(1) NOT NULL,
  `jg_iptctags` text NOT NULL,
  `jg_showtoplist` int(1) NOT NULL,
  `jg_toplist` int(3) NOT NULL,
  `jg_topthumbalign` int(1) NOT NULL,
  `jg_toptextalign` int(1) NOT NULL,
  `jg_toplistcols` int(3) NOT NULL,
  `jg_whereshowtoplist` int(1) NOT NULL,
  `jg_showrate` int(1) NOT NULL,
  `jg_showlatest` int(1) NOT NULL,
  `jg_showcom` int(1) NOT NULL,
  `jg_showthiscomment` int(1) NOT NULL,
  `jg_showmostviewed` int(1) NOT NULL,
  `jg_showtoplistdownload` int(1) NOT NULL,
  `jg_showtoplistfavourite` int(1) NOT NULL,
  `jg_toplist_report_images` int(1) NOT NULL,
  `jg_showtoplisteditorlinks` int(1) NOT NULL,
  `jg_favourites` int(1) NOT NULL,
  `jg_favouritesshownotauth` int(1) NOT NULL,
  `jg_maxfavourites` int(5) NOT NULL,
  `jg_zipdownload` int(1) NOT NULL,
  `jg_usefavouritesforpubliczip` int(1) NOT NULL,
  `jg_usefavouritesforzip` int(1) NOT NULL,
  `jg_allimagesofcategory` int(1) NOT NULL,
  `jg_showfavouritesdownload` int(1) NOT NULL,
  `jg_showfavouriteseditorlinks` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `hu0fn_joomgallery_config`
--

INSERT INTO `hu0fn_joomgallery_config` (`id`, `group_id`, `ordering`, `jg_pathimages`, `jg_pathoriginalimages`, `jg_paththumbs`, `jg_pathftpupload`, `jg_pathtemp`, `jg_wmpath`, `jg_wmfile`, `jg_use_real_paths`, `jg_checkupdate`, `jg_filenamewithjs`, `jg_filenamereplace`, `jg_thumbcreation`, `jg_fastgd2thumbcreation`, `jg_impath`, `jg_resizetomaxwidth`, `jg_maxwidth`, `jg_picturequality`, `jg_useforresizedirection`, `jg_cropposition`, `jg_thumbwidth`, `jg_thumbheight`, `jg_thumbquality`, `jg_uploadorder`, `jg_useorigfilename`, `jg_filenamenumber`, `jg_delete_original`, `jg_msg_upload_type`, `jg_msg_upload_recipients`, `jg_msg_download_type`, `jg_msg_download_recipients`, `jg_msg_zipdownload`, `jg_msg_comment_type`, `jg_msg_comment_recipients`, `jg_msg_comment_toowner`, `jg_msg_nametag_type`, `jg_msg_nametag_recipients`, `jg_msg_nametag_totaggeduser`, `jg_msg_nametag_toowner`, `jg_msg_report_type`, `jg_msg_report_recipients`, `jg_msg_report_toowner`, `jg_msg_rejectimg_type`, `jg_msg_global_from`, `jg_realname`, `jg_contentpluginsenabled`, `jg_itemid`, `jg_ajaxcategoryselection`, `jg_disableunrequiredchecks`, `jg_use_listbox_max_user_count`, `jg_userspace`, `jg_useruploaddefaultcat`, `jg_approve`, `jg_unregistered_permissions`, `jg_maxusercat`, `jg_maxuserimage`, `jg_maxuserimage_timespan`, `jg_maxfilesize`, `jg_usercatacc`, `jg_usercatthumbalign`, `jg_useruploadsingle`, `jg_maxuploadfields`, `jg_useruploadajax`, `jg_useruploadbatch`, `jg_useruploadjava`, `jg_useruseorigfilename`, `jg_useruploadnumber`, `jg_special_gif_upload`, `jg_delete_original_user`, `jg_newpiccopyright`, `jg_newpicnote`, `jg_redirect_after_upload`, `jg_edit_metadata`, `jg_download`, `jg_download_unreg`, `jg_download_hint`, `jg_downloadfile`, `jg_downloadwithwatermark`, `jg_showrating`, `jg_maxvoting`, `jg_ratingcalctype`, `jg_ratingdisplaytype`, `jg_ajaxrating`, `jg_votingonlyonce`, `jg_votingonlyreg`, `jg_showcomment`, `jg_anoncomment`, `jg_namedanoncomment`, `jg_anonapprovecom`, `jg_approvecom`, `jg_bbcodesupport`, `jg_smiliesupport`, `jg_anismilie`, `jg_smiliescolor`, `jg_report_images`, `jg_report_unreg`, `jg_report_hint`, `jg_alternative_layout`, `jg_anchors`, `jg_tooltips`, `jg_dyncrop`, `jg_dyncropposition`, `jg_dyncropwidth`, `jg_dyncropheight`, `jg_dyncropbgcol`, `jg_hideemptycats`, `jg_skipcatview`, `jg_imgalign`, `jg_showrestrictedcats`, `jg_showrestrictedhint`, `jg_firstorder`, `jg_secondorder`, `jg_thirdorder`, `jg_pagetitle_cat`, `jg_pagetitle_detail`, `jg_showgalleryhead`, `jg_showpathway`, `jg_completebreadcrumbs`, `jg_search`, `jg_searchcols`, `jg_searchthumbalign`, `jg_searchtextalign`, `jg_showsearchdownload`, `jg_showsearchfavourite`, `jg_search_report_images`, `jg_showsearcheditorlinks`, `jg_showallpics`, `jg_showallhits`, `jg_showbacklink`, `jg_suppresscredits`, `jg_showuserpanel`, `jg_showuserpanel_hint`, `jg_showuserpanel_unreg`, `jg_showallpicstoadmin`, `jg_showminithumbs`, `jg_openjs_padding`, `jg_openjs_background`, `jg_dhtml_border`, `jg_show_title_in_popup`, `jg_show_description_in_popup`, `jg_lightbox_speed`, `jg_lightbox_slide_all`, `jg_resize_js_image`, `jg_disable_rightclick_original`, `jg_showgallerysubhead`, `jg_showallcathead`, `jg_colcat`, `jg_catperpage`, `jg_ordercatbyalpha`, `jg_showgallerypagenav`, `jg_showcatcount`, `jg_showcatthumb`, `jg_showrandomcatthumb`, `jg_ctalign`, `jg_showtotalcatimages`, `jg_showtotalcathits`, `jg_showcatasnew`, `jg_catdaysnew`, `jg_showdescriptioningalleryview`, `jg_uploadicongallery`, `jg_showsubsingalleryview`, `jg_category_rss`, `jg_category_rss_icon`, `jg_uploadiconcategory`, `jg_showcathead`, `jg_usercatorder`, `jg_usercatorderlist`, `jg_showcatdescriptionincat`, `jg_showpagenav`, `jg_showpiccount`, `jg_perpage`, `jg_catthumbalign`, `jg_colnumb`, `jg_detailpic_open`, `jg_lightboxbigpic`, `jg_showtitle`, `jg_showpicasnew`, `jg_daysnew`, `jg_showhits`, `jg_showdownloads`, `jg_showauthor`, `jg_showowner`, `jg_showcatcom`, `jg_showcatrate`, `jg_showcatdescription`, `jg_showcategorydownload`, `jg_showcategoryfavourite`, `jg_category_report_images`, `jg_showcategoryeditorlinks`, `jg_showsubcathead`, `jg_showsubcatcount`, `jg_colsubcat`, `jg_subperpage`, `jg_showpagenavsubs`, `jg_subcatthumbalign`, `jg_showsubthumbs`, `jg_showrandomsubthumb`, `jg_showdescriptionincategoryview`, `jg_ordersubcatbyalpha`, `jg_showtotalsubcatimages`, `jg_showtotalsubcathits`, `jg_uploadiconsubcat`, `jg_showdetailpage`, `jg_disabledetailpage`, `jg_showdetailnumberofpics`, `jg_cursor_navigation`, `jg_disable_rightclick_detail`, `jg_detail_report_images`, `jg_showdetaileditorlinks`, `jg_showdetailtitle`, `jg_showdetail`, `jg_showdetailaccordion`, `jg_accordionduration`, `jg_accordiondisplay`, `jg_accordionopacity`, `jg_accordionalwayshide`, `jg_accordioninitialeffect`, `jg_showdetaildescription`, `jg_showdetaildatum`, `jg_showdetailhits`, `jg_showdetaildownloads`, `jg_showdetailrating`, `jg_showdetailfilesize`, `jg_showdetailauthor`, `jg_showoriginalfilesize`, `jg_showdetaildownload`, `jg_watermark`, `jg_watermarkpos`, `jg_watermarkzoom`, `jg_watermarksize`, `jg_bigpic`, `jg_bigpic_unreg`, `jg_bigpic_open`, `jg_bbcodelink`, `jg_showcommentsunreg`, `jg_showcommentsarea`, `jg_send2friend`, `jg_minis`, `jg_motionminis`, `jg_motionminiWidth`, `jg_motionminiHeight`, `jg_motionminiLimit`, `jg_miniWidth`, `jg_miniHeight`, `jg_minisprop`, `jg_nameshields`, `jg_nameshields_others`, `jg_nameshields_unreg`, `jg_show_nameshields_unreg`, `jg_nameshields_height`, `jg_nameshields_width`, `jg_slideshow`, `jg_slideshow_timer`, `jg_slideshow_transition`, `jg_slideshow_transtime`, `jg_slideshow_maxdimauto`, `jg_slideshow_width`, `jg_slideshow_heigth`, `jg_slideshow_infopane`, `jg_slideshow_carousel`, `jg_slideshow_arrows`, `jg_slideshow_repeat`, `jg_showexifdata`, `jg_showgeotagging`, `jg_geotaggingkey`, `jg_subifdtags`, `jg_ifdotags`, `jg_gpstags`, `jg_showiptcdata`, `jg_iptctags`, `jg_showtoplist`, `jg_toplist`, `jg_topthumbalign`, `jg_toptextalign`, `jg_toplistcols`, `jg_whereshowtoplist`, `jg_showrate`, `jg_showlatest`, `jg_showcom`, `jg_showthiscomment`, `jg_showmostviewed`, `jg_showtoplistdownload`, `jg_showtoplistfavourite`, `jg_toplist_report_images`, `jg_showtoplisteditorlinks`, `jg_favourites`, `jg_favouritesshownotauth`, `jg_maxfavourites`, `jg_zipdownload`, `jg_usefavouritesforpubliczip`, `jg_usefavouritesforzip`, `jg_allimagesofcategory`, `jg_showfavouritesdownload`, `jg_showfavouriteseditorlinks`) VALUES
(1, 1, 1, 'images/joomgallery/details/', 'images/joomgallery/originals/', 'images/joomgallery/thumbnails/', 'administrator/components/com_joomgallery/temp/ftp_upload/', 'administrator/components/com_joomgallery/temp/', 'media/joomgallery/images/', 'watermark.png', 0, 1, 1, 'Š|S,Œ|O,Ž|Z,š|s,œ|oe,ž|z,Ÿ|Y,¥|Y,µ|u,À|A,Á|A,Â|A,Ã|A,Ä|AE,Å|A,Æ|A,Ç|C,È|E,É|E,Ê|E,Ë|E,Ì|I,Í|I,Î|I,Ï|I,Ð|D,Ñ|N,Ò|O,Ó|O,Ô|O,Õ|O,Ö|OE,Ø|O,Ù|U,Ú|U,Û|U,Ü|UE,Ý|Y,à|a,á|a,â|a,ã|a,ä|ae,å|a,æ|a,ç|c,è|e,é|e,ê|e,ë|e,ì|i,í|i,î|i,ï|i,ð|o,ñ|n,ò|o,ó|o,ô|o,õ|o,ö|oe,ø|o,ù|u,ú|u,û|u,ü|ue,ý|y,ÿ|y,ß|ss,ă|a,ş|s,ţ|t,ț|t,Ț|T,Ș|S,ș|s,Ş|S', 'gd2', 1, '', 1, 400, 100, 0, 2, 360, 220, 100, 2, 0, 1, 0, 2, '-1', 2, '-1', 0, 2, '-1', 0, 2, '-1', 1, 0, 2, '-1', 0, 1, 0, 0, 1, '', 0, 0, 25, 1, 0, 0, 0, 10, 500, 0, 2000000, 1, 1, 1, 3, 1, 1, 1, 0, 1, 1, 2, 1, 1, 1, 0, 1, 1, 1, 2, 1, 1, 5, 0, 0, 0, 1, 0, 1, 1, 1, 1, 0, 1, 1, 0, 'grey', 1, 1, 1, '_:bootone', 1, 1, 0, 2, 100, 100, '#ffffff', 0, 0, 0, 1, 1, 'ordering ASC', 'imgdate DESC', 'imgtitle DESC', '#page_title - [! COM_JOOMGALLERY_COMMON_CATEGORY!]: #cat', '#page_title - [! COM_JOOMGALLERY_COMMON_CATEGORY!]: #cat - [! COM_JOOMGALLERY_COMMON_IMAGE!]:  #img', 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 3, 1, 3, 1, 1, 1, 0, 1, 1, 10, '#ffffff', '#808080', 1, 1, 5, 1, 1, 1, 0, 0, 3, 9, 0, 3, 0, 1, 1, 3, 1, 0, 0, 7, 0, 0, 0, 10, '0', 0, 1, 0, 'date,title', 0, 3, 0, 9, 1, 3, '0', 1, 0, 0, 10, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 3, 9, 3, 3, 2, 3, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 300, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 9, 0, 15, 1, 1, '6', 3, 1, 2, 1, 1, 2, 400, 50, 0, 28, 28, 2, 0, 1, 1, 0, 10, 6, 1, 6000, 0, 2000, 0, 640, 480, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, '', 0, 12, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_joomgallery_countstop`
--

CREATE TABLE IF NOT EXISTS `hu0fn_joomgallery_countstop` (
  `cspicid` int(11) NOT NULL DEFAULT '0',
  `csip` varchar(20) NOT NULL,
  `cssessionid` varchar(200) DEFAULT NULL,
  `cstime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `hu0fn_joomgallery_countstop`
--

INSERT INTO `hu0fn_joomgallery_countstop` (`cspicid`, `csip`, `cssessionid`, `cstime`) VALUES
(4, '127.0.0.1', 'cqeyeX4Ou4bm1PSVbFZeZfN4S8bsZ3R3', '2016-06-13 10:05:23');

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_joomgallery_image_details`
--

CREATE TABLE IF NOT EXISTS `hu0fn_joomgallery_image_details` (
  `id` int(11) NOT NULL,
  `details_key` varchar(255) NOT NULL,
  `details_value` text NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_joomgallery_maintenance`
--

CREATE TABLE IF NOT EXISTS `hu0fn_joomgallery_maintenance` (
  `id` int(11) NOT NULL,
  `refid` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `owner` int(11) NOT NULL,
  `title` text NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `orig` varchar(255) NOT NULL,
  `thumborphan` int(11) NOT NULL,
  `imgorphan` int(11) NOT NULL,
  `origorphan` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_joomgallery_nameshields`
--

CREATE TABLE IF NOT EXISTS `hu0fn_joomgallery_nameshields` (
  `nid` int(11) NOT NULL,
  `npicid` int(11) NOT NULL DEFAULT '0',
  `nuserid` int(11) unsigned NOT NULL DEFAULT '0',
  `nxvalue` int(11) NOT NULL DEFAULT '0',
  `nyvalue` int(11) NOT NULL DEFAULT '0',
  `by` int(11) NOT NULL DEFAULT '0',
  `nuserip` varchar(15) NOT NULL DEFAULT '0',
  `ndate` datetime NOT NULL,
  `nzindex` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_joomgallery_orphans`
--

CREATE TABLE IF NOT EXISTS `hu0fn_joomgallery_orphans` (
  `id` int(11) NOT NULL,
  `fullpath` varchar(255) NOT NULL,
  `type` varchar(7) NOT NULL,
  `refid` int(11) NOT NULL,
  `title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_joomgallery_users`
--

CREATE TABLE IF NOT EXISTS `hu0fn_joomgallery_users` (
  `uid` int(11) NOT NULL,
  `uuserid` int(11) NOT NULL DEFAULT '0',
  `piclist` text,
  `layout` int(1) NOT NULL,
  `time` datetime NOT NULL,
  `zipname` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_joomgallery_votes`
--

CREATE TABLE IF NOT EXISTS `hu0fn_joomgallery_votes` (
  `voteid` int(11) NOT NULL,
  `picid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `userip` varchar(15) NOT NULL DEFAULT '0',
  `datevoted` datetime NOT NULL,
  `vote` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_jshopping_addons`
--

CREATE TABLE IF NOT EXISTS `hu0fn_jshopping_addons` (
  `id` int(11) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `key` text NOT NULL,
  `usekey` tinyint(1) NOT NULL,
  `version` varchar(255) NOT NULL,
  `uninstall` varchar(255) NOT NULL,
  `params` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `hu0fn_jshopping_addons`
--

INSERT INTO `hu0fn_jshopping_addons` (`id`, `alias`, `name`, `key`, `usekey`, `version`, `uninstall`, `params`) VALUES
(1, 'second_description_for_product', 'JoomShopping Second Description For Product', '', 0, '1.0.1', '/components/com_jshopping/addons/second_description_for_product/uninstall.php', '');

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_jshopping_attr`
--

CREATE TABLE IF NOT EXISTS `hu0fn_jshopping_attr` (
  `attr_id` int(11) NOT NULL,
  `attr_ordering` int(11) NOT NULL,
  `attr_type` tinyint(1) NOT NULL,
  `independent` tinyint(1) NOT NULL,
  `allcats` tinyint(1) NOT NULL DEFAULT '1',
  `cats` text NOT NULL,
  `group` tinyint(4) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `description_en-GB` text NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  `description_ru-RU` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_jshopping_attr_groups`
--

CREATE TABLE IF NOT EXISTS `hu0fn_jshopping_attr_groups` (
  `id` int(11) NOT NULL,
  `ordering` int(6) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_jshopping_attr_values`
--

CREATE TABLE IF NOT EXISTS `hu0fn_jshopping_attr_values` (
  `value_id` int(11) NOT NULL,
  `attr_id` int(11) NOT NULL,
  `value_ordering` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_jshopping_cart_temp`
--

CREATE TABLE IF NOT EXISTS `hu0fn_jshopping_cart_temp` (
  `id` int(11) NOT NULL,
  `id_cookie` varchar(255) NOT NULL,
  `cart` text NOT NULL,
  `type_cart` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_jshopping_categories`
--

CREATE TABLE IF NOT EXISTS `hu0fn_jshopping_categories` (
  `category_id` int(11) NOT NULL,
  `category_image` varchar(255) DEFAULT NULL,
  `category_parent_id` int(11) NOT NULL,
  `category_publish` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `category_ordertype` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `category_template` varchar(64) DEFAULT NULL,
  `ordering` int(3) NOT NULL,
  `category_add_date` datetime DEFAULT NULL,
  `products_page` int(8) NOT NULL DEFAULT '12',
  `products_row` int(3) NOT NULL DEFAULT '3',
  `access` int(3) NOT NULL DEFAULT '1',
  `name_en-GB` varchar(255) NOT NULL,
  `alias_en-GB` varchar(255) NOT NULL,
  `short_description_en-GB` text NOT NULL,
  `description_en-GB` text NOT NULL,
  `meta_title_en-GB` varchar(255) NOT NULL,
  `meta_description_en-GB` text NOT NULL,
  `meta_keyword_en-GB` text NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  `alias_ru-RU` varchar(255) NOT NULL,
  `short_description_ru-RU` text NOT NULL,
  `description_ru-RU` text NOT NULL,
  `meta_title_ru-RU` varchar(255) NOT NULL,
  `meta_description_ru-RU` text NOT NULL,
  `meta_keyword_ru-RU` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `hu0fn_jshopping_categories`
--

INSERT INTO `hu0fn_jshopping_categories` (`category_id`, `category_image`, `category_parent_id`, `category_publish`, `category_ordertype`, `category_template`, `ordering`, `category_add_date`, `products_page`, `products_row`, `access`, `name_en-GB`, `alias_en-GB`, `short_description_en-GB`, `description_en-GB`, `meta_title_en-GB`, `meta_description_en-GB`, `meta_keyword_en-GB`, `name_ru-RU`, `alias_ru-RU`, `short_description_ru-RU`, `description_ru-RU`, `meta_title_ru-RU`, `meta_description_ru-RU`, `meta_keyword_ru-RU`) VALUES
(1, 'vodootvod.png', 0, 1, 1, 'module', 6, '2016-06-09 08:17:46', 12, 3, 1, '', '', '', '', '', '', '', 'Система водоотвода из нержавеющей стали', 'sistema-vodootvoda-iz-nerzhaveyushchej-stali', '', '<p style="font-size: 12.16px; line-height: 15.808px;">Водоотводящие системы этого типа применяются в предприятиях пищевой промышленности (пивзаводы, молокозаводы, мясоперерабатывающие комбинаты), химической промышленности, на больших кухнях, в больницах и других обьектах. Применяются также в тех случаях, когда санитарные и технологические правила требуют выполнения водоотводящих систем из нержавеющей стали для поддержания высоких гигиенических параметров продукционных помещений. </p>\r\n<p style="font-size: 12.16px; line-height: 15.808px;">Водоотводящие системы этого типа применяются в предприятиях пищевой промышленности (пивзаводы, молокозаводы, мясоперерабатывающие комбинаты), химической промышленности, на больших кухнях, в больницах и других обьектах. Применяются также в тех случаях, когда санитарные и технологические правила требуют выполнения водоотводящих систем из нержавеющей стали для поддержания высоких гигиенических параметров продукционных помещений. </p>\r\n<p style="font-size: 12.16px; line-height: 15.808px;">Водоотводящие системы этого типа применяются в предприятиях пищевой промышленности (пивзаводы, молокозаводы, мясоперерабатывающие комбинаты), химической промышленности, на больших кухнях, в больницах и других обьектах. Применяются также в тех случаях, когда санитарные и технологические правила требуют выполнения водоотводящих систем из нержавеющей стали для поддержания высоких гигиенических параметров продукционных помещений. </p>\r\n<p style="font-size: 12.16px; line-height: 15.808px;">Водоотводящие системы этого типа применяются в предприятиях пищевой промышленности (пивзаводы, молокозаводы, мясоперерабатывающие комбинаты), химической промышленности, на больших кухнях, в больницах и других обьектах. Применяются также в тех случаях, когда санитарные и технологические правила требуют выполнения водоотводящих систем из нержавеющей стали для поддержания высоких гигиенических параметров продукционных помещений. </p>\r\n<p style="font-size: 12.16px; line-height: 15.808px;">Водоотводящие системы этого типа применяются в предприятиях пищевой промышленности (пивзаводы, молокозаводы, мясоперерабатывающие комбинаты), химической промышленности, на больших кухнях, в больницах и других обьектах. Применяются также в тех случаях, когда санитарные и технологические правила требуют выполнения водоотводящих систем из нержавеющей стали для поддержания высоких гигиенических параметров продукционных помещений. </p>', '', '', ''),
(2, 'nerjaveika.png', 0, 1, 1, NULL, 9, '2016-06-09 08:18:20', 12, 3, 1, '', '', '', '', '', '', '', 'Мойки и Мебель из нержавеющей стали для торговли и производства', 'mojki-i-mebel-iz-nerzhaveyushchej-stali-dlya-torgovli-i-proizvodstva', '', '<p style="font-size: 12.16px; line-height: 15.808px;">Водоотводящие системы этого типа применяются в предприятиях пищевой промышленности (пивзаводы, молокозаводы, мясоперерабатывающие комбинаты), химической промышленности, на больших кухнях, в больницах и других обьектах. Применяются также в тех случаях, когда санитарные и технологические правила требуют выполнения водоотводящих систем из нержавеющей стали для поддержания высоких гигиенических параметров продукционных помещений. </p>\r\n<p style="font-size: 12.16px; line-height: 15.808px;">Водоотводящие системы этого типа применяются в предприятиях пищевой промышленности (пивзаводы, молокозаводы, мясоперерабатывающие комбинаты), химической промышленности, на больших кухнях, в больницах и других обьектах. Применяются также в тех случаях, когда санитарные и технологические правила требуют выполнения водоотводящих систем из нержавеющей стали для поддержания высоких гигиенических параметров продукционных помещений. </p>\r\n<p style="font-size: 12.16px; line-height: 15.808px;">Водоотводящие системы этого типа применяются в предприятиях пищевой промышленности (пивзаводы, молокозаводы, мясоперерабатывающие комбинаты), химической промышленности, на больших кухнях, в больницах и других обьектах. Применяются также в тех случаях, когда санитарные и технологические правила требуют выполнения водоотводящих систем из нержавеющей стали для поддержания высоких гигиенических параметров продукционных помещений. </p>\r\n<p style="font-size: 12.16px; line-height: 15.808px;">Водоотводящие системы этого типа применяются в предприятиях пищевой промышленности (пивзаводы, молокозаводы, мясоперерабатывающие комбинаты), химической промышленности, на больших кухнях, в больницах и других обьектах. Применяются также в тех случаях, когда санитарные и технологические правила требуют выполнения водоотводящих систем из нержавеющей стали для поддержания высоких гигиенических параметров продукционных помещений. </p>\r\n<p style="font-size: 12.16px; line-height: 15.808px;">Водоотводящие системы этого типа применяются в предприятиях пищевой промышленности (пивзаводы, молокозаводы, мясоперерабатывающие комбинаты), химической промышленности, на больших кухнях, в больницах и других обьектах. Применяются также в тех случаях, когда санитарные и технологические правила требуют выполнения водоотводящих систем из нержавеющей стали для поддержания высоких гигиенических параметров продукционных помещений. </p>', '', '', ''),
(3, 'eskizi.png', 0, 1, 1, NULL, 11, '2016-06-09 08:18:40', 12, 3, 1, '', '', '', '', '', '', '', 'Нестандартное оборудование по чертежам и эскизам заказчика', 'nestandartnoe-oborudovanie-po-chertezham-i-eskizam-zakazchika', '', '', '', '', ''),
(4, 'reshetki.png', 0, 1, 1, NULL, 13, '2016-06-09 08:18:53', 12, 3, 1, '', '', '', '', '', '', '', 'Решетки и решетчатый настил', 'reshetki-i-reshetchatyj-nastil', '', '', '', '', ''),
(5, 'dacha.png', 0, 1, 1, NULL, 15, '2016-06-09 08:19:17', 12, 3, 1, '', '', '', '', '', '', '', 'Товары для дачи, ландшафта и отдыха:', 'tovary-dlya-dachi-landshafta-i-otdykha', '', '', '', '', ''),
(6, 'single4.jpg', 0, 1, 1, NULL, 22, '2016-06-09 08:19:33', 12, 3, 1, '', '', '', '', '', '', '', 'Складские позиции и уцененная продукция', 'skladskie-pozitsii-i-utsenennaya-produktsiya', '', '', '', '', ''),
(7, 'list.png', 0, 1, 1, NULL, 19, '2016-06-09 08:19:50', 12, 3, 1, '', '', '', '', '', '', '', 'Металлопрокат (листовая нержавеющая сталь)', 'metalloprokat-listovaya-nerzhaveyushchaya-stal', '', '', '', '', ''),
(8, 'metal.png', 0, 1, 1, NULL, 21, '2016-06-09 08:20:08', 12, 3, 1, '', '', '', '', '', '', '', 'Услуги металлообработки', 'uslugi-metalloobrabotki', '', '', '', '', ''),
(9, 'ogrady.png', 0, 1, 1, NULL, 28, '2016-06-09 08:20:23', 12, 3, 1, '', '', '', '', '', '', '', 'Велопарковки и ограждения из нержавеющей стали', 'veloparkovki-i-ograzhdeniya-iz-nerzhaveyushchej-stali', '', '', '', '', ''),
(10, NULL, 5, 1, 1, NULL, 3, '2016-06-09 10:48:49', 12, 3, 1, '', '', '', '', '', '', '', 'Категория товаров 1', 'kategoriya-tovarov-1', '', '<p style="font-size: 12.16px; line-height: 15.808px;">Водоотводящие системы этого типа применяются в предприятиях пищевой промышленности (пивзаводы, молокозаводы, мясоперерабатывающие комбинаты), химической промышленности, на больших кухнях, в больницах и других обьектах. Применяются также в тех случаях, когда санитарные и технологические правила требуют выполнения водоотводящих систем из нержавеющей стали для поддержания высоких гигиенических параметров продукционных помещений. </p>\r\n<p style="font-size: 12.16px; line-height: 15.808px;">Водоотводящие системы этого типа применяются в предприятиях пищевой промышленности (пивзаводы, молокозаводы, мясоперерабатывающие комбинаты), химической промышленности, на больших кухнях, в больницах и других обьектах. Применяются также в тех случаях, когда санитарные и технологические правила требуют выполнения водоотводящих систем из нержавеющей стали для поддержания высоких гигиенических параметров продукционных помещений. </p>\r\n<p style="font-size: 12.16px; line-height: 15.808px;">Водоотводящие системы этого типа применяются в предприятиях пищевой промышленности (пивзаводы, молокозаводы, мясоперерабатывающие комбинаты), химической промышленности, на больших кухнях, в больницах и других обьектах. Применяются также в тех случаях, когда санитарные и технологические правила требуют выполнения водоотводящих систем из нержавеющей стали для поддержания высоких гигиенических параметров продукционных помещений. </p>\r\n<p style="font-size: 12.16px; line-height: 15.808px;">Водоотводящие системы этого типа применяются в предприятиях пищевой промышленности (пивзаводы, молокозаводы, мясоперерабатывающие комбинаты), химической промышленности, на больших кухнях, в больницах и других обьектах. Применяются также в тех случаях, когда санитарные и технологические правила требуют выполнения водоотводящих систем из нержавеющей стали для поддержания высоких гигиенических параметров продукционных помещений. </p>\r\n<p style="font-size: 12.16px; line-height: 15.808px;">Водоотводящие системы этого типа применяются в предприятиях пищевой промышленности (пивзаводы, молокозаводы, мясоперерабатывающие комбинаты), химической промышленности, на больших кухнях, в больницах и других обьектах. Применяются также в тех случаях, когда санитарные и технологические правила требуют выполнения водоотводящих систем из нержавеющей стали для поддержания высоких гигиенических параметров продукционных помещений. </p>', '', '', ''),
(11, NULL, 5, 1, 1, NULL, 4, '2016-06-09 10:49:05', 12, 3, 1, '', '', '', '', '', '', '', 'Категория товаров 2', 'kategoriya-tovarov-2', '', '<p style="font-size: 12.16px; line-height: 15.808px;">Водоотводящие системы этого типа применяются в предприятиях пищевой промышленности (пивзаводы, молокозаводы, мясоперерабатывающие комбинаты), химической промышленности, на больших кухнях, в больницах и других обьектах. Применяются также в тех случаях, когда санитарные и технологические правила требуют выполнения водоотводящих систем из нержавеющей стали для поддержания высоких гигиенических параметров продукционных помещений. </p>\r\n<p style="font-size: 12.16px; line-height: 15.808px;">Водоотводящие системы этого типа применяются в предприятиях пищевой промышленности (пивзаводы, молокозаводы, мясоперерабатывающие комбинаты), химической промышленности, на больших кухнях, в больницах и других обьектах. Применяются также в тех случаях, когда санитарные и технологические правила требуют выполнения водоотводящих систем из нержавеющей стали для поддержания высоких гигиенических параметров продукционных помещений. </p>\r\n<p style="font-size: 12.16px; line-height: 15.808px;">Водоотводящие системы этого типа применяются в предприятиях пищевой промышленности (пивзаводы, молокозаводы, мясоперерабатывающие комбинаты), химической промышленности, на больших кухнях, в больницах и других обьектах. Применяются также в тех случаях, когда санитарные и технологические правила требуют выполнения водоотводящих систем из нержавеющей стали для поддержания высоких гигиенических параметров продукционных помещений. </p>\r\n<p style="font-size: 12.16px; line-height: 15.808px;">Водоотводящие системы этого типа применяются в предприятиях пищевой промышленности (пивзаводы, молокозаводы, мясоперерабатывающие комбинаты), химической промышленности, на больших кухнях, в больницах и других обьектах. Применяются также в тех случаях, когда санитарные и технологические правила требуют выполнения водоотводящих систем из нержавеющей стали для поддержания высоких гигиенических параметров продукционных помещений. </p>\r\n<p style="font-size: 12.16px; line-height: 15.808px;">Водоотводящие системы этого типа применяются в предприятиях пищевой промышленности (пивзаводы, молокозаводы, мясоперерабатывающие комбинаты), химической промышленности, на больших кухнях, в больницах и других обьектах. Применяются также в тех случаях, когда санитарные и технологические правила требуют выполнения водоотводящих систем из нержавеющей стали для поддержания высоких гигиенических параметров продукционных помещений. </p>', '', '', ''),
(12, NULL, 1, 1, 1, NULL, 2, '2016-06-09 10:49:31', 12, 3, 1, '', '', '', '', '', '', '', 'Категория товаров 1', '', '', '<p>Водоотводящие системы этого типа применяются в предприятиях пищевой промышленности (пивзаводы, молокозаводы, мясоперерабатывающие комбинаты), химической промышленности, на больших кухнях, в больницах и других обьектах. Применяются также в тех случаях, когда санитарные и технологические правила требуют выполнения водоотводящих систем из нержавеющей стали для поддержания высоких гигиенических параметров продукционных помещений. </p>\r\n<p>Водоотводящие системы этого типа применяются в предприятиях пищевой промышленности (пивзаводы, молокозаводы, мясоперерабатывающие комбинаты), химической промышленности, на больших кухнях, в больницах и других обьектах. Применяются также в тех случаях, когда санитарные и технологические правила требуют выполнения водоотводящих систем из нержавеющей стали для поддержания высоких гигиенических параметров продукционных помещений. </p>\r\n<p>Водоотводящие системы этого типа применяются в предприятиях пищевой промышленности (пивзаводы, молокозаводы, мясоперерабатывающие комбинаты), химической промышленности, на больших кухнях, в больницах и других обьектах. Применяются также в тех случаях, когда санитарные и технологические правила требуют выполнения водоотводящих систем из нержавеющей стали для поддержания высоких гигиенических параметров продукционных помещений. </p>\r\n<p>Водоотводящие системы этого типа применяются в предприятиях пищевой промышленности (пивзаводы, молокозаводы, мясоперерабатывающие комбинаты), химической промышленности, на больших кухнях, в больницах и других обьектах. Применяются также в тех случаях, когда санитарные и технологические правила требуют выполнения водоотводящих систем из нержавеющей стали для поддержания высоких гигиенических параметров продукционных помещений. </p>\r\n<p>Водоотводящие системы этого типа применяются в предприятиях пищевой промышленности (пивзаводы, молокозаводы, мясоперерабатывающие комбинаты), химической промышленности, на больших кухнях, в больницах и других обьектах. Применяются также в тех случаях, когда санитарные и технологические правила требуют выполнения водоотводящих систем из нержавеющей стали для поддержания высоких гигиенических параметров продукционных помещений. </p>', '', '', ''),
(13, NULL, 1, 1, 1, NULL, 4, '2016-06-09 10:49:51', 12, 3, 1, '', '', '', '', '', '', '', 'Категория товаров 2', '', '', '<p style="font-size: 12.16px; line-height: 15.808px;">Водоотводящие системы этого типа применяются в предприятиях пищевой промышленности (пивзаводы, молокозаводы, мясоперерабатывающие комбинаты), химической промышленности, на больших кухнях, в больницах и других обьектах. Применяются также в тех случаях, когда санитарные и технологические правила требуют выполнения водоотводящих систем из нержавеющей стали для поддержания высоких гигиенических параметров продукционных помещений. </p>\r\n<p style="font-size: 12.16px; line-height: 15.808px;">Водоотводящие системы этого типа применяются в предприятиях пищевой промышленности (пивзаводы, молокозаводы, мясоперерабатывающие комбинаты), химической промышленности, на больших кухнях, в больницах и других обьектах. Применяются также в тех случаях, когда санитарные и технологические правила требуют выполнения водоотводящих систем из нержавеющей стали для поддержания высоких гигиенических параметров продукционных помещений. </p>\r\n<p style="font-size: 12.16px; line-height: 15.808px;">Водоотводящие системы этого типа применяются в предприятиях пищевой промышленности (пивзаводы, молокозаводы, мясоперерабатывающие комбинаты), химической промышленности, на больших кухнях, в больницах и других обьектах. Применяются также в тех случаях, когда санитарные и технологические правила требуют выполнения водоотводящих систем из нержавеющей стали для поддержания высоких гигиенических параметров продукционных помещений. </p>\r\n<p style="font-size: 12.16px; line-height: 15.808px;">Водоотводящие системы этого типа применяются в предприятиях пищевой промышленности (пивзаводы, молокозаводы, мясоперерабатывающие комбинаты), химической промышленности, на больших кухнях, в больницах и других обьектах. Применяются также в тех случаях, когда санитарные и технологические правила требуют выполнения водоотводящих систем из нержавеющей стали для поддержания высоких гигиенических параметров продукционных помещений. </p>\r\n<p style="font-size: 12.16px; line-height: 15.808px;">Водоотводящие системы этого типа применяются в предприятиях пищевой промышленности (пивзаводы, молокозаводы, мясоперерабатывающие комбинаты), химической промышленности, на больших кухнях, в больницах и других обьектах. Применяются также в тех случаях, когда санитарные и технологические правила требуют выполнения водоотводящих систем из нержавеющей стали для поддержания высоких гигиенических параметров продукционных помещений. </p>', '', '', ''),
(14, NULL, 6, 1, 1, NULL, 2, '2016-06-09 10:50:03', 12, 3, 1, '', '', '', '', '', '', '', 'Категория товаров 1', '', '', '<p style="font-size: 12.16px; line-height: 15.808px;">Водоотводящие системы этого типа применяются в предприятиях пищевой промышленности (пивзаводы, молокозаводы, мясоперерабатывающие комбинаты), химической промышленности, на больших кухнях, в больницах и других обьектах. Применяются также в тех случаях, когда санитарные и технологические правила требуют выполнения водоотводящих систем из нержавеющей стали для поддержания высоких гигиенических параметров продукционных помещений. </p>\r\n<p style="font-size: 12.16px; line-height: 15.808px;">Водоотводящие системы этого типа применяются в предприятиях пищевой промышленности (пивзаводы, молокозаводы, мясоперерабатывающие комбинаты), химической промышленности, на больших кухнях, в больницах и других обьектах. Применяются также в тех случаях, когда санитарные и технологические правила требуют выполнения водоотводящих систем из нержавеющей стали для поддержания высоких гигиенических параметров продукционных помещений. </p>\r\n<p style="font-size: 12.16px; line-height: 15.808px;">Водоотводящие системы этого типа применяются в предприятиях пищевой промышленности (пивзаводы, молокозаводы, мясоперерабатывающие комбинаты), химической промышленности, на больших кухнях, в больницах и других обьектах. Применяются также в тех случаях, когда санитарные и технологические правила требуют выполнения водоотводящих систем из нержавеющей стали для поддержания высоких гигиенических параметров продукционных помещений. </p>\r\n<p style="font-size: 12.16px; line-height: 15.808px;">Водоотводящие системы этого типа применяются в предприятиях пищевой промышленности (пивзаводы, молокозаводы, мясоперерабатывающие комбинаты), химической промышленности, на больших кухнях, в больницах и других обьектах. Применяются также в тех случаях, когда санитарные и технологические правила требуют выполнения водоотводящих систем из нержавеющей стали для поддержания высоких гигиенических параметров продукционных помещений. </p>\r\n<p style="font-size: 12.16px; line-height: 15.808px;">Водоотводящие системы этого типа применяются в предприятиях пищевой промышленности (пивзаводы, молокозаводы, мясоперерабатывающие комбинаты), химической промышленности, на больших кухнях, в больницах и других обьектах. Применяются также в тех случаях, когда санитарные и технологические правила требуют выполнения водоотводящих систем из нержавеющей стали для поддержания высоких гигиенических параметров продукционных помещений. </p>', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_jshopping_config`
--

CREATE TABLE IF NOT EXISTS `hu0fn_jshopping_config` (
  `id` int(11) NOT NULL,
  `count_products_to_page` int(4) NOT NULL,
  `count_products_to_row` int(2) NOT NULL,
  `count_category_to_row` int(2) NOT NULL,
  `image_category_width` int(4) NOT NULL,
  `image_category_height` int(4) NOT NULL,
  `image_product_width` int(4) NOT NULL,
  `image_product_height` int(4) NOT NULL,
  `image_product_full_width` int(4) NOT NULL,
  `image_product_full_height` int(4) NOT NULL,
  `image_product_original_width` int(4) NOT NULL,
  `image_product_original_height` int(4) NOT NULL,
  `video_product_width` int(4) NOT NULL,
  `video_product_height` int(4) NOT NULL,
  `adminLanguage` varchar(8) NOT NULL,
  `defaultLanguage` varchar(8) NOT NULL,
  `mainCurrency` int(4) NOT NULL,
  `decimal_count` tinyint(1) NOT NULL,
  `decimal_symbol` varchar(5) NOT NULL,
  `thousand_separator` varchar(5) NOT NULL,
  `currency_format` tinyint(1) NOT NULL,
  `use_rabatt_code` tinyint(1) NOT NULL,
  `enable_wishlist` tinyint(1) NOT NULL,
  `default_status_order` tinyint(1) NOT NULL,
  `store_address_format` varchar(32) NOT NULL,
  `store_date_format` varchar(32) NOT NULL,
  `contact_email` varchar(128) NOT NULL,
  `allow_reviews_prod` tinyint(1) NOT NULL,
  `allow_reviews_only_registered` tinyint(1) NOT NULL,
  `allow_reviews_manuf` tinyint(1) NOT NULL,
  `max_mark` int(11) NOT NULL,
  `summ_null_shipping` decimal(12,2) NOT NULL,
  `without_shipping` tinyint(1) NOT NULL,
  `without_payment` tinyint(1) NOT NULL,
  `pdf_parameters` varchar(32) NOT NULL,
  `next_order_number` int(11) NOT NULL DEFAULT '1',
  `shop_user_guest` tinyint(1) NOT NULL,
  `hide_product_not_avaible_stock` tinyint(1) NOT NULL,
  `show_buy_in_category` tinyint(1) NOT NULL,
  `user_as_catalog` tinyint(1) NOT NULL,
  `show_tax_in_product` tinyint(1) NOT NULL,
  `show_tax_product_in_cart` tinyint(1) NOT NULL,
  `show_plus_shipping_in_product` tinyint(1) NOT NULL,
  `hide_buy_not_avaible_stock` tinyint(1) NOT NULL,
  `show_sort_product` tinyint(1) NOT NULL,
  `show_count_select_products` tinyint(1) NOT NULL,
  `order_send_pdf_client` tinyint(1) NOT NULL,
  `order_send_pdf_admin` tinyint(1) NOT NULL,
  `show_delivery_time` tinyint(1) NOT NULL,
  `securitykey` varchar(128) NOT NULL,
  `demo_type` tinyint(1) NOT NULL,
  `product_show_manufacturer_logo` tinyint(1) NOT NULL,
  `product_show_manufacturer` tinyint(1) NOT NULL,
  `product_show_weight` tinyint(1) NOT NULL,
  `max_count_order_one_product` int(11) NOT NULL,
  `min_count_order_one_product` int(11) NOT NULL,
  `min_price_order` int(11) NOT NULL,
  `max_price_order` int(11) NOT NULL,
  `hide_tax` tinyint(1) NOT NULL,
  `licensekod` text NOT NULL,
  `product_attribut_first_value_empty` tinyint(1) NOT NULL,
  `show_hits` tinyint(1) NOT NULL,
  `show_registerform_in_logintemplate` tinyint(1) NOT NULL,
  `admin_show_product_basic_price` tinyint(1) NOT NULL,
  `admin_show_attributes` tinyint(1) NOT NULL,
  `admin_show_delivery_time` tinyint(1) NOT NULL,
  `admin_show_languages` tinyint(1) NOT NULL,
  `use_different_templates_cat_prod` tinyint(1) NOT NULL,
  `admin_show_product_video` tinyint(1) NOT NULL,
  `admin_show_product_related` tinyint(1) NOT NULL,
  `admin_show_product_files` tinyint(1) NOT NULL,
  `admin_show_product_bay_price` tinyint(1) NOT NULL,
  `admin_show_product_labels` tinyint(1) NOT NULL,
  `sorting_country_in_alphabet` tinyint(1) NOT NULL,
  `hide_text_product_not_available` tinyint(1) NOT NULL,
  `show_weight_order` tinyint(1) NOT NULL,
  `discount_use_full_sum` tinyint(1) NOT NULL,
  `show_cart_all_step_checkout` tinyint(1) NOT NULL,
  `use_plugin_content` tinyint(1) NOT NULL,
  `display_price_admin` tinyint(1) NOT NULL,
  `display_price_front` tinyint(1) NOT NULL,
  `product_list_show_weight` tinyint(1) NOT NULL,
  `product_list_show_manufacturer` tinyint(1) NOT NULL,
  `use_extend_tax_rule` tinyint(4) NOT NULL,
  `use_extend_display_price_rule` tinyint(4) NOT NULL,
  `fields_register` text NOT NULL,
  `template` varchar(128) NOT NULL,
  `show_product_code` tinyint(1) NOT NULL,
  `show_product_code_in_cart` tinyint(1) NOT NULL,
  `savelog` tinyint(1) NOT NULL,
  `savelogpaymentdata` tinyint(1) NOT NULL,
  `product_list_show_min_price` tinyint(1) NOT NULL,
  `product_count_related_in_row` tinyint(4) NOT NULL,
  `category_sorting` tinyint(1) NOT NULL DEFAULT '1',
  `product_sorting` tinyint(1) NOT NULL DEFAULT '1',
  `product_sorting_direction` tinyint(1) NOT NULL,
  `show_product_list_filters` tinyint(1) NOT NULL,
  `admin_show_product_extra_field` tinyint(1) NOT NULL,
  `product_list_display_extra_fields` text NOT NULL,
  `filter_display_extra_fields` text NOT NULL,
  `product_hide_extra_fields` text NOT NULL,
  `cart_display_extra_fields` text NOT NULL,
  `default_country` int(11) NOT NULL,
  `show_return_policy_in_email_order` tinyint(1) NOT NULL,
  `client_allow_cancel_order` tinyint(1) NOT NULL,
  `admin_show_vendors` tinyint(1) NOT NULL,
  `vendor_order_message_type` tinyint(1) NOT NULL,
  `admin_not_send_email_order_vendor_order` tinyint(1) NOT NULL,
  `not_redirect_in_cart_after_buy` tinyint(1) NOT NULL,
  `product_show_vendor` tinyint(1) NOT NULL,
  `product_show_vendor_detail` tinyint(1) NOT NULL,
  `product_list_show_vendor` tinyint(1) NOT NULL,
  `admin_show_freeattributes` tinyint(1) NOT NULL,
  `product_show_button_back` tinyint(1) NOT NULL,
  `calcule_tax_after_discount` tinyint(1) NOT NULL,
  `product_list_show_product_code` tinyint(1) NOT NULL,
  `radio_attr_value_vertical` tinyint(1) NOT NULL,
  `attr_display_addprice` tinyint(1) NOT NULL,
  `use_ssl` tinyint(1) NOT NULL,
  `product_list_show_price_description` tinyint(1) NOT NULL,
  `display_button_print` tinyint(1) NOT NULL,
  `hide_shipping_step` tinyint(1) NOT NULL,
  `hide_payment_step` tinyint(1) NOT NULL,
  `image_resize_type` tinyint(1) NOT NULL,
  `use_extend_attribute_data` tinyint(1) NOT NULL,
  `product_list_show_price_default` tinyint(1) NOT NULL,
  `product_list_show_qty_stock` tinyint(1) NOT NULL,
  `product_show_qty_stock` tinyint(1) NOT NULL,
  `displayprice` tinyint(1) NOT NULL,
  `use_decimal_qty` tinyint(1) NOT NULL,
  `ext_tax_rule_for` tinyint(1) NOT NULL,
  `display_reviews_without_confirm` tinyint(1) NOT NULL,
  `manufacturer_sorting` tinyint(1) NOT NULL,
  `admin_show_units` tinyint(1) NOT NULL,
  `main_unit_weight` tinyint(3) NOT NULL,
  `create_alias_product_category_auto` tinyint(1) NOT NULL,
  `delivery_order_depends_delivery_product` tinyint(1) NOT NULL,
  `show_delivery_time_step5` tinyint(1) NOT NULL,
  `other_config` text NOT NULL,
  `shop_mode` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `hu0fn_jshopping_config`
--

INSERT INTO `hu0fn_jshopping_config` (`id`, `count_products_to_page`, `count_products_to_row`, `count_category_to_row`, `image_category_width`, `image_category_height`, `image_product_width`, `image_product_height`, `image_product_full_width`, `image_product_full_height`, `image_product_original_width`, `image_product_original_height`, `video_product_width`, `video_product_height`, `adminLanguage`, `defaultLanguage`, `mainCurrency`, `decimal_count`, `decimal_symbol`, `thousand_separator`, `currency_format`, `use_rabatt_code`, `enable_wishlist`, `default_status_order`, `store_address_format`, `store_date_format`, `contact_email`, `allow_reviews_prod`, `allow_reviews_only_registered`, `allow_reviews_manuf`, `max_mark`, `summ_null_shipping`, `without_shipping`, `without_payment`, `pdf_parameters`, `next_order_number`, `shop_user_guest`, `hide_product_not_avaible_stock`, `show_buy_in_category`, `user_as_catalog`, `show_tax_in_product`, `show_tax_product_in_cart`, `show_plus_shipping_in_product`, `hide_buy_not_avaible_stock`, `show_sort_product`, `show_count_select_products`, `order_send_pdf_client`, `order_send_pdf_admin`, `show_delivery_time`, `securitykey`, `demo_type`, `product_show_manufacturer_logo`, `product_show_manufacturer`, `product_show_weight`, `max_count_order_one_product`, `min_count_order_one_product`, `min_price_order`, `max_price_order`, `hide_tax`, `licensekod`, `product_attribut_first_value_empty`, `show_hits`, `show_registerform_in_logintemplate`, `admin_show_product_basic_price`, `admin_show_attributes`, `admin_show_delivery_time`, `admin_show_languages`, `use_different_templates_cat_prod`, `admin_show_product_video`, `admin_show_product_related`, `admin_show_product_files`, `admin_show_product_bay_price`, `admin_show_product_labels`, `sorting_country_in_alphabet`, `hide_text_product_not_available`, `show_weight_order`, `discount_use_full_sum`, `show_cart_all_step_checkout`, `use_plugin_content`, `display_price_admin`, `display_price_front`, `product_list_show_weight`, `product_list_show_manufacturer`, `use_extend_tax_rule`, `use_extend_display_price_rule`, `fields_register`, `template`, `show_product_code`, `show_product_code_in_cart`, `savelog`, `savelogpaymentdata`, `product_list_show_min_price`, `product_count_related_in_row`, `category_sorting`, `product_sorting`, `product_sorting_direction`, `show_product_list_filters`, `admin_show_product_extra_field`, `product_list_display_extra_fields`, `filter_display_extra_fields`, `product_hide_extra_fields`, `cart_display_extra_fields`, `default_country`, `show_return_policy_in_email_order`, `client_allow_cancel_order`, `admin_show_vendors`, `vendor_order_message_type`, `admin_not_send_email_order_vendor_order`, `not_redirect_in_cart_after_buy`, `product_show_vendor`, `product_show_vendor_detail`, `product_list_show_vendor`, `admin_show_freeattributes`, `product_show_button_back`, `calcule_tax_after_discount`, `product_list_show_product_code`, `radio_attr_value_vertical`, `attr_display_addprice`, `use_ssl`, `product_list_show_price_description`, `display_button_print`, `hide_shipping_step`, `hide_payment_step`, `image_resize_type`, `use_extend_attribute_data`, `product_list_show_price_default`, `product_list_show_qty_stock`, `product_show_qty_stock`, `displayprice`, `use_decimal_qty`, `ext_tax_rule_for`, `display_reviews_without_confirm`, `manufacturer_sorting`, `admin_show_units`, `main_unit_weight`, `create_alias_product_category_auto`, `delivery_order_depends_delivery_product`, `show_delivery_time_step5`, `other_config`, `shop_mode`) VALUES
(1, 12, 3, 1, 450, 0, 450, 0, 450, 0, 0, 0, 320, 240, 'ru-RU', 'ru-RU', 1, 2, '.', '', 2, 0, 0, 1, '%storename %address %city %zip', '%d.%m.%Y', 'bolonikov@medialine.by', 0, 0, 0, 10, '-1.00', 1, 1, '208:65:208:30', 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, '0738e7eae7c26c7adf893efcf47a5d78', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'a:3:{s:8:"register";a:15:{s:5:"title";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:6:"l_name";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:10:"firma_name";a:1:{s:7:"display";s:1:"1";}s:6:"street";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:3:"zip";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:4:"city";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:5:"state";a:1:{s:7:"display";s:1:"1";}s:7:"country";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:5:"phone";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:3:"fax";a:1:{s:7:"display";s:1:"1";}s:6:"f_name";a:2:{s:7:"require";i:1;s:7:"display";i:1;}s:5:"email";a:2:{s:7:"require";i:1;s:7:"display";i:1;}s:6:"u_name";a:2:{s:7:"require";i:1;s:7:"display";i:1;}s:8:"password";a:2:{s:7:"require";i:1;s:7:"display";i:1;}s:10:"password_2";a:2:{s:7:"require";i:1;s:7:"display";i:1;}}s:7:"address";a:22:{s:5:"title";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:6:"l_name";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:10:"firma_name";a:1:{s:7:"display";s:1:"1";}s:6:"street";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:3:"zip";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:4:"city";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:5:"state";a:1:{s:7:"display";s:1:"1";}s:7:"country";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:5:"phone";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:3:"fax";a:1:{s:7:"display";s:1:"1";}s:7:"d_title";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:8:"d_f_name";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:8:"d_l_name";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:12:"d_firma_name";a:1:{s:7:"display";s:1:"1";}s:8:"d_street";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:5:"d_zip";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:6:"d_city";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:7:"d_state";a:1:{s:7:"display";s:1:"1";}s:9:"d_country";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:7:"d_phone";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:6:"f_name";a:2:{s:7:"require";i:1;s:7:"display";i:1;}s:5:"email";a:2:{s:7:"require";i:1;s:7:"display";i:1;}}s:11:"editaccount";a:22:{s:5:"title";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:6:"l_name";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:10:"firma_name";a:1:{s:7:"display";s:1:"1";}s:6:"street";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:3:"zip";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:4:"city";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:5:"state";a:1:{s:7:"display";s:1:"1";}s:7:"country";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:5:"phone";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:3:"fax";a:1:{s:7:"display";s:1:"1";}s:7:"d_title";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:8:"d_f_name";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:8:"d_l_name";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:12:"d_firma_name";a:1:{s:7:"display";s:1:"1";}s:8:"d_street";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:5:"d_zip";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:6:"d_city";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:7:"d_state";a:1:{s:7:"display";s:1:"1";}s:9:"d_country";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:7:"d_phone";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:6:"f_name";a:2:{s:7:"require";i:1;s:7:"display";i:1;}s:5:"email";a:2:{s:7:"require";i:1;s:7:"display";i:1;}}}', 'astal', 0, 0, 1, 1, 0, 3, 1, 1, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 'a:53:{s:3:"tax";s:1:"0";s:5:"stock";s:1:"0";s:17:"admin_show_weight";N;s:23:"auto_backup_addon_files";s:1:"1";s:23:"tax_on_delivery_address";s:1:"0";s:17:"cart_back_to_shop";s:4:"list";s:32:"product_button_back_use_end_list";s:1:"0";s:21:"display_tax_id_in_pdf";s:1:"0";s:26:"product_price_qty_discount";s:1:"2";s:16:"rating_starparts";s:1:"2";s:31:"show_list_price_shipping_weight";s:1:"0";s:23:"product_price_precision";s:1:"2";s:26:"cart_decimal_qty_precision";s:1:"2";s:25:"default_frontend_currency";s:1:"0";s:27:"product_file_upload_via_ftp";s:1:"0";s:25:"product_file_upload_count";s:1:"1";s:26:"product_image_upload_count";s:2:"10";s:26:"product_video_upload_count";s:1:"3";s:33:"show_insert_code_in_product_video";s:1:"0";s:29:"max_number_download_sale_file";s:1:"3";s:26:"max_day_download_sale_file";s:3:"365";s:34:"order_display_new_digital_products";s:1:"1";s:24:"display_user_groups_info";s:1:"1";s:18:"display_user_group";s:1:"0";s:20:"load_jquery_lightbox";s:1:"0";s:15:"load_javascript";s:1:"0";s:8:"load_css";s:1:"0";s:49:"list_products_calc_basic_price_from_product_price";s:1:"0";s:21:"hide_from_basic_price";s:1:"0";s:35:"calc_basic_price_from_product_price";s:1:"0";s:38:"user_discount_not_apply_prod_old_price";s:1:"0";s:6:"advert";s:1:"0";s:30:"count_products_to_page_tophits";s:2:"12";s:32:"count_products_to_page_toprating";s:2:"12";s:28:"count_products_to_page_label";s:2:"12";s:33:"count_products_to_page_bestseller";s:2:"12";s:29:"count_products_to_page_random";s:2:"12";s:27:"count_products_to_page_last";s:2:"12";s:29:"count_products_to_row_tophits";s:1:"3";s:31:"count_products_to_row_toprating";s:1:"3";s:27:"count_products_to_row_label";s:1:"3";s:32:"count_products_to_row_bestseller";s:1:"3";s:28:"count_products_to_row_random";s:1:"3";s:26:"count_products_to_row_last";s:1:"3";s:29:"display_short_descr_multiline";s:1:"0";s:25:"count_manufacturer_to_row";s:1:"2";s:31:"attribut_dep_sorting_in_product";s:16:"V.value_ordering";s:33:"attribut_nodep_sorting_in_product";s:16:"V.value_ordering";s:23:"product_hide_price_null";s:1:"0";s:13:"image_quality";s:3:"100";s:16:"image_fill_color";s:8:"16777215";s:11:"video_html5";s:1:"0";s:16:"video_html5_type";s:0:"";}', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_jshopping_config_display_prices`
--

CREATE TABLE IF NOT EXISTS `hu0fn_jshopping_config_display_prices` (
  `id` int(11) NOT NULL,
  `zones` text NOT NULL,
  `display_price` tinyint(1) NOT NULL,
  `display_price_firma` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_jshopping_config_seo`
--

CREATE TABLE IF NOT EXISTS `hu0fn_jshopping_config_seo` (
  `id` int(11) NOT NULL,
  `alias` varchar(64) NOT NULL,
  `ordering` int(11) NOT NULL,
  `title_en-GB` varchar(255) NOT NULL,
  `keyword_en-GB` text NOT NULL,
  `description_en-GB` text NOT NULL,
  `title_ru-RU` varchar(255) NOT NULL,
  `keyword_ru-RU` text NOT NULL,
  `description_ru-RU` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `hu0fn_jshopping_config_seo`
--

INSERT INTO `hu0fn_jshopping_config_seo` (`id`, `alias`, `ordering`, `title_en-GB`, `keyword_en-GB`, `description_en-GB`, `title_ru-RU`, `keyword_ru-RU`, `description_ru-RU`) VALUES
(1, 'category', 10, '', '', '', '', '', ''),
(2, 'manufacturers', 20, '', '', '', '', '', ''),
(3, 'cart', 30, '', '', '', '', '', ''),
(4, 'wishlist', 40, '', '', '', '', '', ''),
(5, 'login', 50, '', '', '', '', '', ''),
(6, 'register', 60, '', '', '', '', '', ''),
(7, 'editaccount', 70, '', '', '', '', '', ''),
(8, 'myorders', 80, '', '', '', '', '', ''),
(9, 'myaccount', 90, '', '', '', '', '', ''),
(10, 'search', 100, '', '', '', '', '', ''),
(11, 'search-result', 110, '', '', '', '', '', ''),
(12, 'myorder-detail', 120, '', '', '', '', '', ''),
(13, 'vendors', 130, '', '', '', '', '', ''),
(14, 'content-agb', 140, '', '', '', '', '', ''),
(15, 'content-return_policy', 150, '', '', '', '', '', ''),
(16, 'content-shipping', 160, '', '', '', '', '', ''),
(17, 'content-privacy_statement', 161, '', '', '', '', '', ''),
(18, 'checkout-address', 170, '', '', '', '', '', ''),
(19, 'checkout-payment', 180, '', '', '', '', '', ''),
(20, 'checkout-shipping', 190, '', '', '', '', '', ''),
(21, 'checkout-preview', 200, '', '', '', '', '', ''),
(22, 'lastproducts', 210, '', '', '', '', '', ''),
(23, 'randomproducts', 220, '', '', '', '', '', ''),
(24, 'bestsellerproducts', 230, '', '', '', '', '', ''),
(25, 'labelproducts', 240, '', '', '', '', '', ''),
(26, 'topratingproducts', 250, '', '', '', '', '', ''),
(27, 'tophitsproducts', 260, '', '', '', '', '', ''),
(28, 'all-products', 270, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_jshopping_config_statictext`
--

CREATE TABLE IF NOT EXISTS `hu0fn_jshopping_config_statictext` (
  `id` int(11) NOT NULL,
  `alias` varchar(64) NOT NULL,
  `use_for_return_policy` int(11) NOT NULL,
  `text_en-GB` text NOT NULL,
  `text_ru-RU` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `hu0fn_jshopping_config_statictext`
--

INSERT INTO `hu0fn_jshopping_config_statictext` (`id`, `alias`, `use_for_return_policy`, `text_en-GB`, `text_ru-RU`) VALUES
(1, 'home', 0, '', ''),
(2, 'manufacturer', 0, '', ''),
(3, 'agb', 0, '', ''),
(4, 'return_policy', 0, '', ''),
(5, 'order_email_descr', 0, '', ''),
(6, 'order_email_descr_end', 0, '', ''),
(7, 'order_finish_descr', 0, '', ''),
(8, 'shipping', 0, '', ''),
(9, 'privacy_statement', 0, '', ''),
(10, 'cart', 0, '', ''),
(11, 'order_email_descr_manually', 0, '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_jshopping_countries`
--

CREATE TABLE IF NOT EXISTS `hu0fn_jshopping_countries` (
  `country_id` int(11) NOT NULL,
  `country_publish` tinyint(4) NOT NULL,
  `ordering` smallint(6) NOT NULL,
  `country_code` varchar(5) NOT NULL,
  `country_code_2` varchar(5) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_de-DE` varchar(255) NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `hu0fn_jshopping_countries`
--

INSERT INTO `hu0fn_jshopping_countries` (`country_id`, `country_publish`, `ordering`, `country_code`, `country_code_2`, `name_en-GB`, `name_de-DE`, `name_ru-RU`) VALUES
(1, 1, 1, 'AFG', 'AF', 'Afghanistan', 'Afghanistan', 'Afghanistan'),
(2, 1, 2, 'ALB', 'AL', 'Albania', 'Albanien', 'Albania'),
(3, 1, 3, 'DZA', 'DZ', 'Algeria', 'Algerien', 'Algeria'),
(4, 1, 4, 'ASM', 'AS', 'American Samoa', 'Amerikanisch-Samoa', 'American Samoa'),
(5, 1, 5, 'AND', 'AD', 'Andorra', 'Andorra', 'Andorra'),
(6, 1, 6, 'AGO', 'AO', 'Angola', 'Angola', 'Angola'),
(7, 1, 7, 'AIA', 'AI', 'Anguilla', 'Anguilla', 'Anguilla'),
(8, 1, 8, 'ATA', 'AQ', 'Antarctica', 'Antarktis', 'Antarctica'),
(9, 1, 9, 'ATG', 'AG', 'Antigua and Barbuda', 'Antigua und Barbuda', 'Antigua and Barbuda'),
(10, 1, 10, 'ARG', 'AR', 'Argentina', 'Argentinien', 'Argentina'),
(11, 1, 11, 'ARM', 'AM', 'Armenia', 'Armenien', 'Armenia'),
(12, 1, 12, 'ABW', 'AW', 'Aruba', 'Aruba', 'Aruba'),
(13, 1, 13, 'AUS', 'AU', 'Australia', 'Australien', 'Australia'),
(14, 1, 14, 'AUT', 'AT', 'Austria', 'Österreich', 'Austria'),
(15, 1, 15, 'AZE', 'AZ', 'Azerbaijan', 'Aserbaidschan', 'Azerbaijan'),
(16, 1, 16, 'BHS', 'BS', 'Bahamas', 'Bahamas', 'Bahamas'),
(17, 1, 17, 'BHR', 'BH', 'Bahrain', 'Bahrain', 'Bahrain'),
(18, 1, 18, 'BGD', 'BD', 'Bangladesh', 'Bangladesch', 'Bangladesh'),
(19, 1, 19, 'BRB', 'BB', 'Barbados', 'Barbados', 'Barbados'),
(20, 1, 20, 'BLR', 'BY', 'Belarus', 'Weissrussland', 'Belarus'),
(21, 1, 21, 'BEL', 'BE', 'Belgium', 'Belgien', 'Belgium'),
(22, 1, 22, 'BLZ', 'BZ', 'Belize', 'Belize', 'Belize'),
(23, 1, 23, 'BEN', 'BJ', 'Benin', 'Benin', 'Benin'),
(24, 1, 24, 'BMU', 'BM', 'Bermuda', 'Bermuda', 'Bermuda'),
(25, 1, 25, 'BTN', 'BT', 'Bhutan', 'Bhutan', 'Bhutan'),
(26, 1, 26, 'BOL', 'BO', 'Bolivia', 'Bolivien', 'Bolivia'),
(27, 1, 27, 'BIH', 'BA', 'Bosnia and Herzegowina', 'Bosnien und Herzegowina', 'Bosnia and Herzegowina'),
(28, 1, 28, 'BWA', 'BW', 'Botswana', 'Botsuana', 'Botswana'),
(29, 1, 29, 'BVT', 'BV', 'Bouvet Island', 'Bouvetinsel', 'Bouvet Island'),
(30, 1, 30, 'BRA', 'BR', 'Brazil', 'Brasilien', 'Brazil'),
(31, 1, 31, 'IOT', 'IO', 'British Indian Ocean Territory', 'Britisches Territorium im Indischen Ozean', 'British Indian Ocean Territory'),
(32, 1, 32, 'BRN', 'BN', 'Brunei Darussalam', 'Brunei', 'Brunei Darussalam'),
(33, 1, 33, 'BGR', 'BG', 'Bulgaria', 'Bulgarien', 'Bulgaria'),
(34, 1, 34, 'BFA', 'BF', 'Burkina Faso', 'Burkina Faso', 'Burkina Faso'),
(35, 1, 35, 'BDI', 'BI', 'Burundi', 'Burundi', 'Burundi'),
(36, 1, 36, 'KHM', 'KH', 'Cambodia', 'Kambodscha', 'Cambodia'),
(37, 1, 37, 'CMR', 'CM', 'Cameroon', 'Kamerun', 'Cameroon'),
(38, 1, 38, 'CAN', 'CA', 'Canada', 'Kanada', 'Canada'),
(39, 1, 39, 'CPV', 'CV', 'Cape Verde', 'Kap Verde', 'Cape Verde'),
(40, 1, 40, 'CYM', 'KY', 'Cayman Islands', 'Cayman-Inseln', 'Cayman Islands'),
(41, 1, 41, 'CAF', 'CF', 'Central African Republic', 'Zentralafrikanische Republik', 'Central African Republic'),
(42, 1, 42, 'TCD', 'TD', 'Chad', 'Tschad', 'Chad'),
(43, 1, 43, 'CHL', 'CL', 'Chile', 'Chile', 'Chile'),
(44, 1, 44, 'CHN', 'CN', 'China', 'China', 'China'),
(45, 1, 45, 'CXR', 'CX', 'Christmas Island', 'Christmas Island', 'Christmas Island'),
(46, 1, 46, 'CCK', 'CC', 'Cocos (Keeling) Islands', 'Kokosinseln (Keeling)', 'Cocos (Keeling) Islands'),
(47, 1, 47, 'COL', 'CO', 'Colombia', 'Kolumbien', 'Colombia'),
(48, 1, 48, 'COM', 'KM', 'Comoros', 'Komoren', 'Comoros'),
(49, 1, 49, 'COG', 'CG', 'Congo', 'Kongo, Republik', 'Congo'),
(50, 1, 50, 'COK', 'CK', 'Cook Islands', 'Cookinseln', 'Cook Islands'),
(51, 1, 51, 'CRI', 'CR', 'Costa Rica', 'Costa Rica', 'Costa Rica'),
(52, 1, 52, 'CIV', 'CI', 'Cote D''Ivoire', 'Elfenbeinküste', 'Cote D''Ivoire'),
(53, 1, 53, 'HRV', 'HR', 'Croatia', 'Kroatien', 'Croatia'),
(54, 1, 54, 'CUB', 'CU', 'Cuba', 'Kuba', 'Cuba'),
(55, 1, 55, 'CYP', 'CY', 'Cyprus', 'Zypern', 'Cyprus'),
(56, 1, 56, 'CZE', 'CZ', 'Czech Republic', 'Tschechien', 'Czech Republic'),
(57, 1, 57, 'DNK', 'DK', 'Denmark', 'Dänemark', 'Denmark'),
(58, 1, 58, 'DJI', 'DJ', 'Djibouti', 'Dschibuti', 'Djibouti'),
(59, 1, 59, 'DMA', 'DM', 'Dominica', 'Dominica', 'Dominica'),
(60, 1, 60, 'DOM', 'DO', 'Dominican Republic', 'Dominikanische Republik', 'Dominican Republic'),
(61, 1, 61, 'TMP', 'TL', 'East Timor', 'Osttimor', 'East Timor'),
(62, 1, 62, 'ECU', 'EC', 'Ecuador', 'Ecuador', 'Ecuador'),
(63, 1, 63, 'EGY', 'EG', 'Egypt', 'Ägypten', 'Egypt'),
(64, 1, 64, 'SLV', 'SV', 'El Salvador', 'El Salvador', 'El Salvador'),
(65, 1, 65, 'GNQ', 'GQ', 'Equatorial Guinea', 'Äquatorial-Guinea', 'Equatorial Guinea'),
(66, 1, 66, 'ERI', 'ER', 'Eritrea', 'Eritrea', 'Eritrea'),
(67, 1, 67, 'EST', 'EE', 'Estonia', 'Estland', 'Estonia'),
(68, 1, 68, 'ETH', 'ET', 'Ethiopia', 'Äthiopien', 'Ethiopia'),
(69, 1, 69, 'FLK', 'FK', 'Falkland Islands (Malvinas)', 'Falklandinseln', 'Falkland Islands (Malvinas)'),
(70, 1, 70, 'FRO', 'FO', 'Faroe Islands', 'Färöer', 'Faroe Islands'),
(71, 1, 71, 'FJI', 'FJ', 'Fiji', 'Fidschi', 'Fiji'),
(72, 1, 72, 'FIN', 'FI', 'Finland', 'Finnland', 'Finland'),
(73, 1, 73, 'FRA', 'FR', 'France', 'Frankreich', 'France'),
(74, 1, 74, 'FXX', 'FX', 'France Metropolitan', 'Frankreich, Metropolitan', 'France Metropolitan'),
(75, 1, 75, 'GUF', 'GF', 'French Guiana', 'Französisch-Guyana', 'French Guiana'),
(76, 1, 76, 'PYF', 'PF', 'French Polynesia', 'Franz. Polynesien', 'French Polynesia'),
(77, 1, 77, 'ATF', 'TF', 'French Southern Territories', 'Französiche Süd- und Antarktisgebiete', 'French Southern Territories'),
(78, 1, 78, 'GAB', 'GA', 'Gabon', 'Gabun', 'Gabon'),
(79, 1, 79, 'GMB', 'GM', 'Gambia', 'Gambia', 'Gambia'),
(80, 1, 80, 'GEO', 'GE', 'Georgia', 'Georgien', 'Georgia'),
(81, 1, 81, 'DEU', 'DE', 'Germany', 'Deutschland', 'Germany'),
(82, 1, 82, 'GHA', 'GH', 'Ghana', 'Ghana', 'Ghana'),
(83, 1, 83, 'GIB', 'GI', 'Gibraltar', 'Gibraltar', 'Gibraltar'),
(84, 1, 84, 'GRC', 'GR', 'Greece', 'Griechenland', 'Greece'),
(85, 1, 85, 'GRL', 'GL', 'Greenland', 'Grönland', 'Greenland'),
(86, 1, 86, 'GRD', 'GD', 'Grenada', 'Grenada', 'Grenada'),
(87, 1, 87, 'GLP', 'GP', 'Guadeloupe', 'Guadeloupe', 'Guadeloupe'),
(88, 1, 88, 'GUM', 'GU', 'Guam', 'Guam', 'Guam'),
(89, 1, 89, 'GTM', 'GT', 'Guatemala', 'Guatemala', 'Guatemala'),
(90, 1, 90, 'GIN', 'GN', 'Guinea', 'Guinea', 'Guinea'),
(91, 1, 91, 'GNB', 'GW', 'Guinea-bissau', 'Guinea-Bissau', 'Guinea-bissau'),
(92, 1, 92, 'GUY', 'GY', 'Guyana', 'Guyana', 'Guyana'),
(93, 1, 93, 'HTI', 'HT', 'Haiti', 'Haiti', 'Haiti'),
(94, 1, 94, 'HMD', 'HM', 'Heard and Mc Donald Islands', 'Heard und McDonaldinseln', 'Heard and Mc Donald Islands'),
(95, 1, 95, 'HND', 'HN', 'Honduras', 'Honduras', 'Honduras'),
(96, 1, 96, 'HKG', 'HK', 'Hong Kong', 'Hong Kong', 'Hong Kong'),
(97, 1, 97, 'HUN', 'HU', 'Hungary', 'Ungarn', 'Hungary'),
(98, 1, 98, 'ISL', 'IS', 'Iceland', 'Island', 'Iceland'),
(99, 1, 99, 'IND', 'IN', 'India', 'Indien', 'India'),
(100, 1, 100, 'IDN', 'ID', 'Indonesia', 'Indonesien', 'Indonesia'),
(101, 1, 101, 'IRN', 'IR', 'Iran (Islamic Republic of)', 'Iran', 'Iran (Islamic Republic of)'),
(102, 1, 102, 'IRQ', 'IQ', 'Iraq', 'Irak', 'Iraq'),
(103, 1, 103, 'IRL', 'IE', 'Ireland', 'Irland', 'Ireland'),
(104, 1, 104, 'ISR', 'IL', 'Israel', 'Israel', 'Israel'),
(105, 1, 105, 'ITA', 'IT', 'Italy', 'Italien', 'Italy'),
(106, 1, 106, 'JAM', 'JM', 'Jamaica', 'Jamaika', 'Jamaica'),
(107, 1, 107, 'JPN', 'JP', 'Japan', 'Japan', 'Japan'),
(108, 1, 108, 'JOR', 'JO', 'Jordan', 'Jordanien', 'Jordan'),
(109, 1, 109, 'KAZ', 'KZ', 'Kazakhstan', 'Kasachstan', 'Kazakhstan'),
(110, 1, 110, 'KEN', 'KE', 'Kenya', 'Kenia', 'Kenya'),
(111, 1, 111, 'KIR', 'KI', 'Kiribati', 'Kiribati', 'Kiribati'),
(112, 1, 112, 'PRK', 'KP', 'Korea Democratic People''s Republic of', 'Korea Demokratische Volksrepublik', 'Korea Democratic People''s Republic of'),
(113, 1, 113, 'KOR', 'KR', 'Korea Republic of', 'Korea', 'Korea Republic of'),
(114, 1, 114, 'KWT', 'KW', 'Kuwait', 'Kuwait', 'Kuwait'),
(115, 1, 115, 'KGZ', 'KG', 'Kyrgyzstan', 'Kirgistan', 'Kyrgyzstan'),
(116, 1, 116, 'LAO', 'LA', 'Lao People''s Democratic Republic', 'Laos', 'Lao People''s Democratic Republic'),
(117, 1, 117, 'LVA', 'LV', 'Latvia', 'Lettland', 'Latvia'),
(118, 1, 118, 'LBN', 'LB', 'Lebanon', 'Libanon', 'Lebanon'),
(119, 1, 119, 'LSO', 'LS', 'Lesotho', 'Lesotho', 'Lesotho'),
(120, 1, 120, 'LBR', 'LR', 'Liberia', 'Liberia', 'Liberia'),
(121, 1, 121, 'LBY', 'LY', 'Libyan Arab Jamahiriya', 'Libyen', 'Libyan Arab Jamahiriya'),
(122, 1, 122, 'LIE', 'LI', 'Liechtenstein', 'Liechtenstein', 'Liechtenstein'),
(123, 1, 123, 'LTU', 'LT', 'Lithuania', 'Litauen', 'Lithuania'),
(124, 1, 124, 'LUX', 'LU', 'Luxembourg', 'Luxemburg', 'Luxembourg'),
(125, 1, 125, 'MAC', 'MO', 'Macau', 'Makao', 'Macau'),
(126, 1, 126, 'MKD', 'MK', 'Macedonia The Former Yugoslav Republic of', 'Mazedonien', 'Macedonia The Former Yugoslav Republic of'),
(127, 1, 127, 'MDG', 'MG', 'Madagascar', 'Madagaskar', 'Madagascar'),
(128, 1, 128, 'MWI', 'MW', 'Malawi', 'Malawi', 'Malawi'),
(129, 1, 129, 'MYS', 'MY', 'Malaysia', 'Malaysia', 'Malaysia'),
(130, 1, 130, 'MDV', 'MV', 'Maldives', 'Malediven', 'Maldives'),
(131, 1, 131, 'MLI', 'ML', 'Mali', 'Mali', 'Mali'),
(132, 1, 132, 'MLT', 'MT', 'Malta', 'Malta', 'Malta'),
(133, 1, 133, 'MHL', 'MH', 'Marshall Islands', 'Marshallinseln', 'Marshall Islands'),
(134, 1, 134, 'MTQ', 'MQ', 'Martinique', 'Martinique', 'Martinique'),
(135, 1, 135, 'MRT', 'MR', 'Mauritania', 'Mauretanien', 'Mauritania'),
(136, 1, 136, 'MUS', 'MU', 'Mauritius', 'Mauritius', 'Mauritius'),
(137, 1, 137, 'MYT', 'YT', 'Mayotte', 'Mayott', 'Mayotte'),
(138, 1, 138, 'MEX', 'MX', 'Mexico', 'Mexiko', 'Mexico'),
(139, 1, 139, 'FSM', 'FM', 'Micronesia Federated States of', 'Mikronesien', 'Micronesia Federated States of'),
(140, 1, 140, 'MDA', 'MD', 'Moldova Republic of', 'Moldawien', 'Moldova Republic of'),
(141, 1, 141, 'MCO', 'MC', 'Monaco', 'Monaco', 'Monaco'),
(142, 1, 142, 'MNG', 'MN', 'Mongolia', 'Mongolei', 'Mongolia'),
(143, 1, 143, 'MSR', 'MS', 'Montserrat', 'Montserrat', 'Montserrat'),
(144, 1, 144, 'MAR', 'MA', 'Morocco', 'Marokko', 'Morocco'),
(145, 1, 145, 'MOZ', 'MZ', 'Mozambique', 'Mosambik', 'Mozambique'),
(146, 1, 146, 'MMR', 'MM', 'Myanmar', 'Myanmar', 'Myanmar'),
(147, 1, 147, 'NAM', 'NA', 'Namibia', 'Namibia', 'Namibia'),
(148, 1, 148, 'NRU', 'NR', 'Nauru', 'Nauru', 'Nauru'),
(149, 1, 149, 'NPL', 'NP', 'Nepal', 'Nepal', 'Nepal'),
(150, 1, 150, 'NLD', 'NL', 'Netherlands', 'Niederlande', 'Netherlands'),
(151, 1, 151, 'ANT', 'AN', 'Netherlands Antilles', 'Niederländisch-Antillen', 'Netherlands Antilles'),
(152, 1, 152, 'NCL', 'NC', 'New Caledonia', 'Neukaledonien', 'New Caledonia'),
(153, 1, 153, 'NZL', 'NZ', 'New Zealand', 'Neuseeland', 'New Zealand'),
(154, 1, 154, 'NIC', 'NI', 'Nicaragua', 'Nicaragua', 'Nicaragua'),
(155, 1, 155, 'NER', 'NE', 'Niger', 'Niger', 'Niger'),
(156, 1, 156, 'NGA', 'NG', 'Nigeria', 'Nigeria', 'Nigeria'),
(157, 1, 157, 'NIU', 'NU', 'Niue', 'Niue', 'Niue'),
(158, 1, 158, 'NFK', 'NF', 'Norfolk Island', 'Norfolkinsel', 'Norfolk Island'),
(159, 1, 159, 'MNP', 'MP', 'Northern Mariana Islands', 'Nördliche Marianen', 'Northern Mariana Islands'),
(160, 1, 160, 'NOR', 'NO', 'Norway', 'Norwegen', 'Norway'),
(161, 1, 161, 'OMN', 'OM', 'Oman', 'Oman', 'Oman'),
(162, 1, 162, 'PAK', 'PK', 'Pakistan', 'Pakistan', 'Pakistan'),
(163, 1, 163, 'PLW', 'PW', 'Palau', 'Palau', 'Palau'),
(164, 1, 164, 'PAN', 'PA', 'Panama', 'Panama', 'Panama'),
(165, 1, 165, 'PNG', 'PG', 'Papua New Guinea', 'Papua-Neuguinea', 'Papua New Guinea'),
(166, 1, 166, 'PRY', 'PY', 'Paraguay', 'Paraguay', 'Paraguay'),
(167, 1, 167, 'PER', 'PE', 'Peru', 'Peru', 'Peru'),
(168, 1, 168, 'PHL', 'PH', 'Philippines', 'Philippinen', 'Philippines'),
(169, 1, 169, 'PCN', 'PN', 'Pitcairn', 'Pitcairn', 'Pitcairn'),
(170, 1, 170, 'POL', 'PL', 'Poland', 'Polen', 'Poland'),
(171, 1, 171, 'PRT', 'PT', 'Portugal', 'Portugal', 'Portugal'),
(172, 1, 172, 'PRI', 'PR', 'Puerto Rico', 'Puerto Rico', 'Puerto Rico'),
(173, 1, 173, 'QAT', 'QA', 'Qatar', 'Katar', 'Qatar'),
(174, 1, 174, 'REU', 'RE', 'Reunion', 'Reunion', 'Reunion'),
(175, 1, 175, 'ROM', 'RO', 'Romania', 'Rumänien', 'Romania'),
(176, 1, 176, 'RUS', 'RU', 'Russian Federation', 'Russische Föderation', 'Russian Federation'),
(177, 1, 177, 'RWA', 'RW', 'Rwanda', 'Ruanda', 'Rwanda'),
(178, 1, 178, 'KNA', 'KN', 'Saint Kitts and Nevis', 'St. Kitts und Nevis', 'Saint Kitts and Nevis'),
(179, 1, 179, 'LCA', 'LC', 'Saint Lucia', 'St. Lucia', 'Saint Lucia'),
(180, 1, 180, 'VCT', 'VC', 'Saint Vincent and the Grenadines', 'St. Vincent und die Grenadinen', 'Saint Vincent and the Grenadines'),
(181, 1, 181, 'WSM', 'WS', 'Samoa', 'Samoa', 'Samoa'),
(182, 1, 182, 'SMR', 'SM', 'San Marino', 'San Marino', 'San Marino'),
(183, 1, 183, 'STP', 'ST', 'Sao Tome and Principe', 'Sao Tomé und Príncipe', 'Sao Tome and Principe'),
(184, 1, 184, 'SAU', 'SA', 'Saudi Arabia', 'Saudi-Arabien', 'Saudi Arabia'),
(185, 1, 185, 'SEN', 'SN', 'Senegal', 'Senegal', 'Senegal'),
(186, 1, 186, 'SYC', 'SC', 'Seychelles', 'Seychellen', 'Seychelles'),
(187, 1, 187, 'SLE', 'SL', 'Sierra Leone', 'Sierra Leone', 'Sierra Leone'),
(188, 1, 188, 'SGP', 'SG', 'Singapore', 'Singapur', 'Singapore'),
(189, 1, 189, 'SVK', 'SK', 'Slovakia (Slovak Republic)', 'Slowakei', 'Slovakia (Slovak Republic)'),
(190, 1, 190, 'SVN', 'SI', 'Slovenia', 'Slowenien', 'Slovenia'),
(191, 1, 191, 'SLB', 'SB', 'Solomon Islands', 'Salomonen', 'Solomon Islands'),
(192, 1, 192, 'SOM', 'SO', 'Somalia', 'Somalia', 'Somalia'),
(193, 1, 193, 'ZAF', 'ZA', 'South Africa', 'Republik Südafrika', 'South Africa'),
(194, 1, 194, 'SGS', 'GS', 'South Georgia and the South Sandwich Islands', 'Südgeorgien und die Südlichen Sandwichinseln', 'South Georgia and the South Sandwich Islands'),
(195, 1, 195, 'ESP', 'ES', 'Spain', 'Spanien', 'Spain'),
(196, 1, 196, 'LKA', 'LK', 'Sri Lanka', 'Sri Lanka', 'Sri Lanka'),
(197, 1, 197, 'SHN', 'SH', 'St. Helena', 'St. Helena', 'St. Helena'),
(198, 1, 198, 'SPM', 'PM', 'St. Pierre and Miquelon', 'St. Pierre und Miquelon', 'St. Pierre and Miquelon'),
(199, 1, 199, 'SDN', 'SD', 'Sudan', 'Sudan', 'Sudan'),
(200, 1, 200, 'SUR', 'SR', 'Suriname', 'Suriname', 'Suriname'),
(201, 1, 201, 'SJM', 'SJ', 'Svalbard and Jan Mayen Islands', 'Svalbard und Jan Mayen', 'Svalbard and Jan Mayen Islands'),
(202, 1, 202, 'SWZ', 'SZ', 'Swaziland', 'Swasiland', 'Swaziland'),
(203, 1, 203, 'SWE', 'SE', 'Sweden', 'Schweden', 'Sweden'),
(204, 1, 204, 'CHE', 'CH', 'Switzerland', 'Schweiz', 'Switzerland'),
(205, 1, 205, 'SYR', 'SY', 'Syrian Arab Republic', 'Syrien', 'Syrian Arab Republic'),
(206, 1, 206, 'TWN', 'TW', 'Taiwan', 'Taiwan', 'Taiwan'),
(207, 1, 207, 'TJK', 'TJ', 'Tajikistan', 'Tadschikistan', 'Tajikistan'),
(208, 1, 208, 'TZA', 'TZ', 'Tanzania United Republic of', 'Tansania', 'Tanzania United Republic of'),
(209, 1, 209, 'THA', 'TH', 'Thailand', 'Thailand', 'Thailand'),
(210, 1, 210, 'TGO', 'TG', 'Togo', 'Togo', 'Togo'),
(211, 1, 211, 'TKL', 'TK', 'Tokelau', 'Tokelau', 'Tokelau'),
(212, 1, 212, 'TON', 'TO', 'Tonga', 'Tonga', 'Tonga'),
(213, 1, 213, 'TTO', 'TT', 'Trinidad and Tobago', 'Trinidad und Tobago', 'Trinidad and Tobago'),
(214, 1, 214, 'TUN', 'TN', 'Tunisia', 'Tunesien', 'Tunisia'),
(215, 1, 215, 'TUR', 'TR', 'Turkey', 'Türkei', 'Turkey'),
(216, 1, 216, 'TKM', 'TM', 'Turkmenistan', 'Turkmenistan', 'Turkmenistan'),
(217, 1, 217, 'TCA', 'TC', 'Turks and Caicos Islands', 'Turks- und Caicosinseln', 'Turks and Caicos Islands'),
(218, 1, 218, 'TUV', 'TV', 'Tuvalu', 'Tuvalu', 'Tuvalu'),
(219, 1, 219, 'UGA', 'UG', 'Uganda', 'Uganda', 'Uganda'),
(220, 1, 220, 'UKR', 'UA', 'Ukraine', 'Ukraine', 'Ukraine'),
(221, 1, 221, 'ARE', 'AE', 'United Arab Emirates', 'Vereinigte Arabische Emirate', 'United Arab Emirates'),
(222, 1, 222, 'GBR', 'GB', 'United Kingdom', 'Vereinigtes Königreich', 'United Kingdom'),
(223, 1, 223, 'USA', 'US', 'United States', 'USA', 'United States'),
(224, 1, 224, 'UMI', 'UM', 'United States Minor Outlying Islands', 'United States Minor Outlying Islands', 'United States Minor Outlying Islands'),
(225, 1, 225, 'URY', 'UY', 'Uruguay', 'Uruguay', 'Uruguay'),
(226, 1, 226, 'UZB', 'UZ', 'Uzbekistan', 'Usbekistan', 'Uzbekistan'),
(227, 1, 227, 'VUT', 'VU', 'Vanuatu', 'Vanuatu', 'Vanuatu'),
(228, 1, 228, 'VAT', 'VA', 'Vatican City State (Holy See)', 'Vatikanstadt', 'Vatican City State (Holy See)'),
(229, 1, 229, 'VEN', 'VE', 'Venezuela', 'Venezuela', 'Venezuela'),
(230, 1, 230, 'VNM', 'VN', 'Viet Nam', 'Vietnam', 'Viet Nam'),
(231, 1, 231, 'VGB', 'VG', 'Virgin Islands (British)', 'Britische Jungferninseln', 'Virgin Islands (British)'),
(232, 1, 232, 'VIR', 'VI', 'Virgin Islands (U.S.)', 'Vereinigte Staaten von Amerika', 'Virgin Islands (U.S.)'),
(233, 1, 233, 'WLF', 'WF', 'Wallis and Futuna Islands', 'Wallis und Futuna', 'Wallis and Futuna Islands'),
(234, 1, 234, 'ESH', 'EH', 'Western Sahara', 'Westsahara', 'Western Sahara'),
(235, 1, 235, 'YEM', 'YE', 'Yemen', 'Jemen', 'Yemen'),
(236, 1, 236, 'YUG', 'YU', 'Yugoslavia', 'Yugoslavia', 'Yugoslavia'),
(237, 1, 237, 'ZAR', 'ZR', 'Zaire', 'Zaire', 'Zaire'),
(238, 1, 238, 'ZMB', 'ZM', 'Zambia', 'Sambia', 'Zambia'),
(239, 1, 239, 'ZWE', 'ZW', 'Zimbabwe', 'Simbabwe', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_jshopping_coupons`
--

CREATE TABLE IF NOT EXISTS `hu0fn_jshopping_coupons` (
  `coupon_id` int(11) NOT NULL,
  `coupon_type` tinyint(4) NOT NULL COMMENT 'value_or_percent',
  `coupon_code` varchar(100) NOT NULL,
  `coupon_value` decimal(12,2) NOT NULL DEFAULT '0.00',
  `tax_id` int(11) NOT NULL,
  `used` int(11) NOT NULL,
  `for_user_id` int(11) NOT NULL,
  `coupon_start_date` date NOT NULL DEFAULT '0000-00-00',
  `coupon_expire_date` date NOT NULL DEFAULT '0000-00-00',
  `finished_after_used` int(11) NOT NULL,
  `coupon_publish` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_jshopping_currencies`
--

CREATE TABLE IF NOT EXISTS `hu0fn_jshopping_currencies` (
  `currency_id` int(11) NOT NULL,
  `currency_name` varchar(64) NOT NULL,
  `currency_code` varchar(20) NOT NULL,
  `currency_code_iso` varchar(3) NOT NULL,
  `currency_code_num` varchar(3) NOT NULL,
  `currency_ordering` int(11) NOT NULL,
  `currency_value` decimal(14,6) NOT NULL,
  `currency_publish` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `hu0fn_jshopping_currencies`
--

INSERT INTO `hu0fn_jshopping_currencies` (`currency_id`, `currency_name`, `currency_code`, `currency_code_iso`, `currency_code_num`, `currency_ordering`, `currency_value`, `currency_publish`) VALUES
(1, 'Euro', 'EUR', 'EUR', '978', 1, '1.000000', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_jshopping_delivery_times`
--

CREATE TABLE IF NOT EXISTS `hu0fn_jshopping_delivery_times` (
  `id` int(11) NOT NULL,
  `days` decimal(8,2) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_jshopping_free_attr`
--

CREATE TABLE IF NOT EXISTS `hu0fn_jshopping_free_attr` (
  `id` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  `type` tinyint(3) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `description_en-GB` text NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  `description_ru-RU` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_jshopping_import_export`
--

CREATE TABLE IF NOT EXISTS `hu0fn_jshopping_import_export` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `params` text NOT NULL,
  `endstart` int(11) NOT NULL,
  `steptime` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `hu0fn_jshopping_import_export`
--

INSERT INTO `hu0fn_jshopping_import_export` (`id`, `name`, `alias`, `description`, `params`, `endstart`, `steptime`) VALUES
(1, 'Simple Export', 'simpleexport', 'Simple Export in CSV iso-8859-1', 'filename=export', 0, 1),
(2, 'Simple Import', 'simpleimport', 'Simple Import in CSV iso-8859-1', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_jshopping_languages`
--

CREATE TABLE IF NOT EXISTS `hu0fn_jshopping_languages` (
  `id` int(11) NOT NULL,
  `language` varchar(32) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `publish` int(11) NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `hu0fn_jshopping_languages`
--

INSERT INTO `hu0fn_jshopping_languages` (`id`, `language`, `name`, `publish`, `ordering`) VALUES
(1, 'en-GB', 'English', 1, 0),
(2, 'ru-RU', 'Russian', 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_jshopping_manufacturers`
--

CREATE TABLE IF NOT EXISTS `hu0fn_jshopping_manufacturers` (
  `manufacturer_id` int(11) NOT NULL,
  `manufacturer_url` varchar(255) NOT NULL,
  `manufacturer_logo` varchar(255) NOT NULL,
  `manufacturer_publish` tinyint(1) NOT NULL,
  `products_page` int(11) NOT NULL,
  `products_row` int(11) NOT NULL,
  `ordering` int(6) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `alias_en-GB` varchar(255) NOT NULL,
  `short_description_en-GB` text NOT NULL,
  `description_en-GB` text NOT NULL,
  `meta_title_en-GB` varchar(255) NOT NULL,
  `meta_description_en-GB` text NOT NULL,
  `meta_keyword_en-GB` text NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  `alias_ru-RU` varchar(255) NOT NULL,
  `short_description_ru-RU` text NOT NULL,
  `description_ru-RU` text NOT NULL,
  `meta_title_ru-RU` varchar(255) NOT NULL,
  `meta_description_ru-RU` text NOT NULL,
  `meta_keyword_ru-RU` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_jshopping_orders`
--

CREATE TABLE IF NOT EXISTS `hu0fn_jshopping_orders` (
  `order_id` int(11) NOT NULL,
  `order_number` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_total` decimal(14,4) NOT NULL,
  `order_subtotal` decimal(14,4) NOT NULL,
  `order_tax` decimal(14,4) NOT NULL,
  `order_tax_ext` text NOT NULL,
  `order_shipping` decimal(14,4) NOT NULL,
  `order_payment` decimal(14,4) NOT NULL,
  `order_discount` decimal(14,4) NOT NULL,
  `shipping_tax` decimal(12,4) NOT NULL,
  `shipping_tax_ext` text NOT NULL,
  `payment_tax` decimal(12,4) NOT NULL,
  `payment_tax_ext` text NOT NULL,
  `order_package` decimal(12,2) NOT NULL,
  `package_tax_ext` text NOT NULL,
  `currency_code` varchar(20) NOT NULL,
  `currency_code_iso` varchar(3) NOT NULL,
  `currency_exchange` decimal(14,6) NOT NULL,
  `order_status` tinyint(4) NOT NULL,
  `order_created` tinyint(1) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `invoice_date` datetime NOT NULL,
  `order_m_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_method_id` int(11) NOT NULL,
  `delivery_times_id` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `payment_params` text NOT NULL,
  `payment_params_data` text NOT NULL,
  `shipping_params` text NOT NULL,
  `shipping_params_data` text NOT NULL,
  `delivery_time` varchar(100) NOT NULL,
  `delivery_date` datetime NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `order_add_info` text NOT NULL,
  `title` tinyint(1) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `m_name` varchar(255) NOT NULL,
  `firma_name` varchar(255) NOT NULL,
  `client_type` tinyint(1) NOT NULL,
  `client_type_name` varchar(100) NOT NULL,
  `firma_code` varchar(100) NOT NULL,
  `tax_number` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `street` varchar(100) NOT NULL,
  `street_nr` varchar(16) NOT NULL,
  `home` varchar(20) NOT NULL,
  `apartment` varchar(20) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` int(11) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `mobil_phone` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `ext_field_1` varchar(255) NOT NULL,
  `ext_field_2` varchar(255) NOT NULL,
  `ext_field_3` varchar(255) NOT NULL,
  `d_title` tinyint(1) NOT NULL,
  `d_f_name` varchar(255) NOT NULL,
  `d_l_name` varchar(255) NOT NULL,
  `d_m_name` varchar(255) NOT NULL,
  `d_firma_name` varchar(255) NOT NULL,
  `d_email` varchar(255) NOT NULL,
  `d_birthday` date NOT NULL,
  `d_street` varchar(100) NOT NULL,
  `d_street_nr` varchar(16) NOT NULL,
  `d_home` varchar(20) NOT NULL,
  `d_apartment` varchar(20) NOT NULL,
  `d_zip` varchar(20) NOT NULL,
  `d_city` varchar(100) NOT NULL,
  `d_state` varchar(100) NOT NULL,
  `d_country` int(11) NOT NULL,
  `d_phone` varchar(30) NOT NULL,
  `d_mobil_phone` varchar(20) NOT NULL,
  `d_fax` varchar(20) NOT NULL,
  `d_ext_field_1` varchar(255) NOT NULL,
  `d_ext_field_2` varchar(255) NOT NULL,
  `d_ext_field_3` varchar(255) NOT NULL,
  `pdf_file` varchar(50) NOT NULL,
  `order_hash` varchar(32) NOT NULL,
  `file_hash` varchar(64) NOT NULL,
  `file_stat_downloads` text NOT NULL,
  `order_custom_info` text NOT NULL,
  `display_price` tinyint(1) NOT NULL,
  `vendor_type` tinyint(1) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `lang` varchar(16) NOT NULL,
  `transaction` text NOT NULL,
  `product_stock_removed` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_jshopping_order_history`
--

CREATE TABLE IF NOT EXISTS `hu0fn_jshopping_order_history` (
  `order_history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` tinyint(1) NOT NULL,
  `status_date_added` datetime NOT NULL,
  `customer_notify` int(1) DEFAULT NULL,
  `comments` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_jshopping_order_item`
--

CREATE TABLE IF NOT EXISTS `hu0fn_jshopping_order_item` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_ean` varchar(50) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_quantity` decimal(12,2) NOT NULL,
  `product_item_price` decimal(14,4) NOT NULL,
  `product_tax` decimal(14,4) NOT NULL,
  `product_attributes` text NOT NULL,
  `product_freeattributes` text NOT NULL,
  `attributes` text NOT NULL,
  `freeattributes` text NOT NULL,
  `extra_fields` text NOT NULL,
  `files` text NOT NULL,
  `weight` decimal(14,4) NOT NULL,
  `thumb_image` varchar(255) NOT NULL,
  `manufacturer` varchar(255) NOT NULL,
  `delivery_times_id` int(4) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `basicprice` decimal(12,2) NOT NULL,
  `basicpriceunit` varchar(255) NOT NULL,
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_jshopping_order_status`
--

CREATE TABLE IF NOT EXISTS `hu0fn_jshopping_order_status` (
  `status_id` int(11) NOT NULL,
  `status_code` char(1) NOT NULL,
  `name_en-GB` varchar(100) NOT NULL,
  `name_de-DE` varchar(100) NOT NULL,
  `name_ru-RU` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `hu0fn_jshopping_order_status`
--

INSERT INTO `hu0fn_jshopping_order_status` (`status_id`, `status_code`, `name_en-GB`, `name_de-DE`, `name_ru-RU`) VALUES
(1, 'P', 'Pending', 'Offen', 'Pending'),
(2, 'C', 'Confirmed', 'Bestätigt', 'Confirmed'),
(3, 'X', 'Cancelled', 'Abgebrochen', 'Cancelled'),
(4, 'R', 'Refunded', 'Gutschrift', 'Refunded'),
(5, 'S', 'Shipped', 'Gesendet', 'Shipped'),
(6, 'O', 'Paid', 'Bezahlt', 'Paid'),
(7, 'F', 'Complete', 'Abgeschlossen', 'Complete');

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_jshopping_payment_method`
--

CREATE TABLE IF NOT EXISTS `hu0fn_jshopping_payment_method` (
  `payment_id` int(11) NOT NULL,
  `payment_code` varchar(32) NOT NULL,
  `payment_class` varchar(100) NOT NULL,
  `scriptname` varchar(100) NOT NULL,
  `payment_publish` tinyint(1) NOT NULL,
  `payment_ordering` int(11) NOT NULL,
  `payment_params` text NOT NULL,
  `payment_type` tinyint(4) NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `price_type` tinyint(1) NOT NULL,
  `tax_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `show_descr_in_email` tinyint(1) NOT NULL,
  `show_bank_in_order` tinyint(1) NOT NULL DEFAULT '1',
  `order_description` text NOT NULL,
  `name_en-GB` varchar(100) NOT NULL,
  `description_en-GB` text NOT NULL,
  `name_de-DE` varchar(100) NOT NULL,
  `description_de-DE` text NOT NULL,
  `name_ru-RU` varchar(100) NOT NULL,
  `description_ru-RU` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `hu0fn_jshopping_payment_method`
--

INSERT INTO `hu0fn_jshopping_payment_method` (`payment_id`, `payment_code`, `payment_class`, `scriptname`, `payment_publish`, `payment_ordering`, `payment_params`, `payment_type`, `price`, `price_type`, `tax_id`, `image`, `show_descr_in_email`, `show_bank_in_order`, `order_description`, `name_en-GB`, `description_en-GB`, `name_de-DE`, `description_de-DE`, `name_ru-RU`, `description_ru-RU`) VALUES
(1, 'bank', 'pm_bank', '', 1, 1, '', 1, '4.00', 0, 1, '', 0, 1, '', 'Cash on delivery', '', 'Nachnahme', '', 'Cash on delivery', ''),
(2, 'PO', 'pm_purchase_order', '', 1, 2, '', 1, '0.00', 0, 1, '', 1, 1, '', 'Advance payment', '', 'Vorauskasse', '', 'Advance payment', ''),
(3, 'paypal', 'pm_paypal', 'pm_paypal', 1, 3, 'testmode=1\n email_received=test@testing.com\n transaction_end_status=6\n transaction_pending_status=1\n transaction_failed_status=3\n checkdatareturn=0', 2, '0.00', 0, 1, '', 0, 1, '', 'Paypal', '', 'Paypal', '', 'Paypal', ''),
(4, 'debit', 'pm_debit', 'pm_debit', 1, 4, '', 1, '0.00', 0, 1, '', 0, 1, '', 'Debit', 'Please insert your bankdata.', 'Lastschrift', 'Bitte tragen Sie hier Ihre Bankdaten fГјr den Abbuchungsauftrag ein.', 'Debit', 'Please insert your bankdata.'),
(5, 'ST', 'pm_sofortueberweisung', 'pm_sofortueberweisung', 0, 5, 'user_id=00000\nproject_id=00000\nproject_password=00000\ntransaction_end_status=6\ntransaction_pending_status=1\ntransaction_failed_status=3\n', 2, '0.00', 0, 1, '', 0, 1, '', 'Sofortueberweisung', '', 'Sofortueberweisung', '', 'Sofortueberweisung', '');

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_jshopping_payment_trx`
--

CREATE TABLE IF NOT EXISTS `hu0fn_jshopping_payment_trx` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `transaction` varchar(255) NOT NULL,
  `rescode` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_jshopping_payment_trx_data`
--

CREATE TABLE IF NOT EXISTS `hu0fn_jshopping_payment_trx_data` (
  `id` int(11) NOT NULL,
  `trx_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_jshopping_products`
--

CREATE TABLE IF NOT EXISTS `hu0fn_jshopping_products` (
  `product_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `product_ean` varchar(32) NOT NULL,
  `product_quantity` decimal(12,2) NOT NULL,
  `unlimited` tinyint(1) NOT NULL,
  `product_availability` varchar(1) NOT NULL,
  `product_date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modify` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_publish` tinyint(1) NOT NULL,
  `product_tax_id` tinyint(3) NOT NULL,
  `currency_id` int(4) NOT NULL,
  `product_template` varchar(64) NOT NULL DEFAULT 'default',
  `product_url` varchar(255) NOT NULL,
  `product_old_price` decimal(14,4) NOT NULL,
  `product_buy_price` decimal(14,4) NOT NULL,
  `product_price` decimal(18,6) NOT NULL,
  `min_price` decimal(12,2) NOT NULL,
  `different_prices` tinyint(1) NOT NULL,
  `product_weight` decimal(14,4) NOT NULL,
  `image` varchar(255) NOT NULL,
  `product_manufacturer_id` int(11) NOT NULL,
  `product_is_add_price` tinyint(1) NOT NULL,
  `add_price_unit_id` int(3) NOT NULL,
  `average_rating` float(4,2) NOT NULL,
  `reviews_count` int(11) NOT NULL,
  `delivery_times_id` int(4) NOT NULL,
  `hits` int(11) NOT NULL,
  `weight_volume_units` decimal(14,4) NOT NULL,
  `basic_price_unit_id` int(3) NOT NULL,
  `label_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `access` int(3) NOT NULL DEFAULT '1',
  `name_en-GB` varchar(255) NOT NULL,
  `alias_en-GB` varchar(255) NOT NULL,
  `short_description_en-GB` text NOT NULL,
  `description_en-GB` text NOT NULL,
  `meta_title_en-GB` varchar(255) NOT NULL,
  `meta_description_en-GB` text NOT NULL,
  `meta_keyword_en-GB` text NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  `alias_ru-RU` varchar(255) NOT NULL,
  `short_description_ru-RU` text NOT NULL,
  `description_ru-RU` text NOT NULL,
  `meta_title_ru-RU` varchar(255) NOT NULL,
  `meta_description_ru-RU` text NOT NULL,
  `meta_keyword_ru-RU` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `hu0fn_jshopping_products`
--

INSERT INTO `hu0fn_jshopping_products` (`product_id`, `parent_id`, `product_ean`, `product_quantity`, `unlimited`, `product_availability`, `product_date_added`, `date_modify`, `product_publish`, `product_tax_id`, `currency_id`, `product_template`, `product_url`, `product_old_price`, `product_buy_price`, `product_price`, `min_price`, `different_prices`, `product_weight`, `image`, `product_manufacturer_id`, `product_is_add_price`, `add_price_unit_id`, `average_rating`, `reviews_count`, `delivery_times_id`, `hits`, `weight_volume_units`, `basic_price_unit_id`, `label_id`, `vendor_id`, `access`, `name_en-GB`, `alias_en-GB`, `short_description_en-GB`, `description_en-GB`, `meta_title_en-GB`, `meta_description_en-GB`, `meta_keyword_en-GB`, `name_ru-RU`, `alias_ru-RU`, `short_description_ru-RU`, `description_ru-RU`, `meta_title_ru-RU`, `meta_description_ru-RU`, `meta_keyword_ru-RU`) VALUES
(1, 0, '', '0.00', 0, '', '2016-06-14 06:23:34', '2016-06-14 09:12:02', 1, 0, 1, 'default', '', '0.0000', '0.0000', '0.000000', '0.00', 0, '0.0000', 'product.jpg', 0, 0, 3, 0.00, 0, 0, 227, '0.0000', 0, 0, 0, 1, '', '', '', '{second_description}', '', '', '', 'Лотки канализационные ЛК', 'lotki-kanalizatsionnye-lk', '', '<ol>\r\n<li>Материал изготовления: нержавеющая сталь AISI 304 — лучший материал для канализационных систем, на предприятиях с повышенными требования-ми к соблюдению санитарно-гигиеническим нормам.</li>\r\n<li>срок службы до 50 лет</li>\r\n</ol>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>Лотки канализационные ЛК предназначены для прокладки канализационных коммуникаций, для приема и отвода сточных вод в канализационную систему.</td>\r\n</tr>\r\n<tr>\r\n<td>Лоток канализационный представляет собой канал, который монтируется в пол для транспортировки сточных вод к трапам или непосредственно в канализационную систему.</td>\r\n</tr>\r\n<tr>\r\n<td>Лотки оснащены регулируемыми опорами для выставления лотка по уровню. Лотки изготавливаются различных типоразмеров в зависимости от предъявляемых требований (различная ширина сечения, длинна, толщина металла).</td>\r\n</tr>\r\n</tbody>\r\n</table>{second_description}<table>\r\n<tbody>\r\n<tr>\r\n<td> </td>\r\n<td>Артикул</td>\r\n<td>А, мм</td>\r\n<td>В, мм</td>\r\n</tr>\r\n<tr>\r\n<td>ЛК1-120</td>\r\n<td>225 104 020</td>\r\n<td>100</td>\r\n<td>900</td>\r\n</tr>\r\n<tr>\r\n<td>ЛК1-110</td>\r\n<td>225 204 020</td>\r\n<td>200</td>\r\n<td>800</td>\r\n</tr>\r\n<tr>\r\n<td>ЛК1-100</td>\r\n<td>225 304 020</td>\r\n<td>300</td>\r\n<td>700</td>\r\n</tr>\r\n<tr>\r\n<td>ЛК1-90</td>\r\n<td>225 404 020</td>\r\n<td>400</td>\r\n<td>600</td>\r\n</tr>\r\n<tr>\r\n<td>ЛК1-80</td>\r\n<td>225 504 020</td>\r\n<td>500</td>\r\n<td>500</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', '', ''),
(2, 0, '', '0.00', 0, '', '2016-06-14 08:12:35', '2016-06-14 08:15:45', 1, 0, 1, 'default', '', '0.0000', '0.0000', '0.000000', '0.00', 0, '0.0000', 'product11.jpg', 0, 0, 3, 0.00, 0, 0, 0, '0.0000', 0, 0, 0, 1, '', '', '', '{second_description}', '', '', '', 'Лоток канализационный щелевой', 'lotok-kanalizatsionnyj-shchelevoj', '', '<ol>\r\n<li>Материал изготовления: нержавеющая сталь AISI 304 — лучший материал для канализационных систем, на предприятиях с повышенными требования-ми к соблюдению санитарно-гигиеническим нормам.</li>\r\n<li>срок службы до 50 лет</li>\r\n</ol>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>Лотки канализационные ЛК предназначены для прокладки канализационных коммуникаций, для приема и отвода сточных вод в канализационную систему.</td>\r\n</tr>\r\n<tr>\r\n<td>Лоток канализационный представляет собой канал, который монтируется в пол для транспортировки сточных вод к трапам или непосредственно в канализационную систему.</td>\r\n</tr>\r\n<tr>\r\n<td>Лотки оснащены регулируемыми опорами для выставления лотка по уровню. Лотки изготавливаются различных типоразмеров в зависимости от предъявляемых требований (различная ширина сечения, длинна, толщина металла).</td>\r\n</tr>\r\n</tbody>\r\n</table>{second_description}<table>\r\n<tbody>\r\n<tr>\r\n<td> </td>\r\n<td>Артикул</td>\r\n<td>А, мм</td>\r\n<td>В, мм</td>\r\n</tr>\r\n<tr>\r\n<td>ЛК1-120</td>\r\n<td>225 104 020</td>\r\n<td>100</td>\r\n<td>900</td>\r\n</tr>\r\n<tr>\r\n<td>ЛК1-110</td>\r\n<td>225 204 020</td>\r\n<td>200</td>\r\n<td>800</td>\r\n</tr>\r\n<tr>\r\n<td>ЛК1-100</td>\r\n<td>225 304 020</td>\r\n<td>300</td>\r\n<td>700</td>\r\n</tr>\r\n<tr>\r\n<td>ЛК1-90</td>\r\n<td>225 404 020</td>\r\n<td>400</td>\r\n<td>600</td>\r\n</tr>\r\n<tr>\r\n<td>ЛК1-80</td>\r\n<td>225 504 020</td>\r\n<td>500</td>\r\n<td>500</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', '', ''),
(3, 0, '', '0.00', 0, '', '2016-06-14 08:12:39', '2016-06-14 08:16:48', 1, 0, 1, 'default', '', '0.0000', '0.0000', '0.000000', '0.00', 0, '0.0000', 'product21.jpg', 0, 0, 3, 0.00, 0, 0, 0, '0.0000', 0, 0, 0, 1, '', '', '', '{second_description}', '', '', '', 'Лоток канализационный щелевой (прямой)', 'lotok-kanalizatsionnyj-shchelevoj-pryamoj', '', '<ol>\r\n<li>Материал изготовления: нержавеющая сталь AISI 304 — лучший материал для канализационных систем, на предприятиях с повышенными требования-ми к соблюдению санитарно-гигиеническим нормам.</li>\r\n<li>срок службы до 50 лет</li>\r\n</ol>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>Лотки канализационные ЛК предназначены для прокладки канализационных коммуникаций, для приема и отвода сточных вод в канализационную систему.</td>\r\n</tr>\r\n<tr>\r\n<td>Лоток канализационный представляет собой канал, который монтируется в пол для транспортировки сточных вод к трапам или непосредственно в канализационную систему.</td>\r\n</tr>\r\n<tr>\r\n<td>Лотки оснащены регулируемыми опорами для выставления лотка по уровню. Лотки изготавливаются различных типоразмеров в зависимости от предъявляемых требований (различная ширина сечения, длинна, толщина металла).</td>\r\n</tr>\r\n</tbody>\r\n</table>{second_description}<table>\r\n<tbody>\r\n<tr>\r\n<td> </td>\r\n<td>Артикул</td>\r\n<td>А, мм</td>\r\n<td>В, мм</td>\r\n</tr>\r\n<tr>\r\n<td>ЛК1-120</td>\r\n<td>225 104 020</td>\r\n<td>100</td>\r\n<td>900</td>\r\n</tr>\r\n<tr>\r\n<td>ЛК1-110</td>\r\n<td>225 204 020</td>\r\n<td>200</td>\r\n<td>800</td>\r\n</tr>\r\n<tr>\r\n<td>ЛК1-100</td>\r\n<td>225 304 020</td>\r\n<td>300</td>\r\n<td>700</td>\r\n</tr>\r\n<tr>\r\n<td>ЛК1-90</td>\r\n<td>225 404 020</td>\r\n<td>400</td>\r\n<td>600</td>\r\n</tr>\r\n<tr>\r\n<td>ЛК1-80</td>\r\n<td>225 504 020</td>\r\n<td>500</td>\r\n<td>500</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', '', ''),
(4, 0, '', '0.00', 0, '', '2016-06-14 08:12:39', '2016-06-14 08:12:39', 1, 0, 1, 'default', '', '0.0000', '0.0000', '0.000000', '0.00', 0, '0.0000', 'product.jpg', 0, 0, 3, 0.00, 0, 0, 1, '0.0000', 0, 0, 0, 1, '', '', '', '{second_description}', '', '', '', 'Лотки канализационные ЛК', 'lotki-kanalizatsionnye-lk160614111235160614111239', '', '<ol>\r\n<li>Материал изготовления: нержавеющая сталь AISI 304 — лучший материал для канализационных систем, на предприятиях с повышенными требования-ми к соблюдению санитарно-гигиеническим нормам.</li>\r\n<li>срок службы до 50 лет</li>\r\n</ol>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>Лотки канализационные ЛК предназначены для прокладки канализационных коммуникаций, для приема и отвода сточных вод в канализационную систему.</td>\r\n</tr>\r\n<tr>\r\n<td>Лоток канализационный представляет собой канал, который монтируется в пол для транспортировки сточных вод к трапам или непосредственно в канализационную систему.</td>\r\n</tr>\r\n<tr>\r\n<td>Лотки оснащены регулируемыми опорами для выставления лотка по уровню. Лотки изготавливаются различных типоразмеров в зависимости от предъявляемых требований (различная ширина сечения, длинна, толщина металла).</td>\r\n</tr>\r\n</tbody>\r\n</table>{second_description}<table>\r\n<tbody>\r\n<tr>\r\n<td> </td>\r\n<td>Артикул</td>\r\n<td>А, мм</td>\r\n<td>В, мм</td>\r\n</tr>\r\n<tr>\r\n<td>ЛК1-120</td>\r\n<td>225 104 020</td>\r\n<td>100</td>\r\n<td>900</td>\r\n</tr>\r\n<tr>\r\n<td>ЛК1-110</td>\r\n<td>225 204 020</td>\r\n<td>200</td>\r\n<td>800</td>\r\n</tr>\r\n<tr>\r\n<td>ЛК1-100</td>\r\n<td>225 304 020</td>\r\n<td>300</td>\r\n<td>700</td>\r\n</tr>\r\n<tr>\r\n<td>ЛК1-90</td>\r\n<td>225 404 020</td>\r\n<td>400</td>\r\n<td>600</td>\r\n</tr>\r\n<tr>\r\n<td>ЛК1-80</td>\r\n<td>225 504 020</td>\r\n<td>500</td>\r\n<td>500</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_jshopping_products_attr`
--

CREATE TABLE IF NOT EXISTS `hu0fn_jshopping_products_attr` (
  `product_attr_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `buy_price` decimal(12,2) NOT NULL,
  `price` decimal(14,4) NOT NULL,
  `old_price` decimal(14,4) NOT NULL,
  `count` decimal(14,4) NOT NULL,
  `ean` varchar(100) NOT NULL,
  `weight` decimal(12,4) NOT NULL,
  `weight_volume_units` decimal(14,4) NOT NULL,
  `ext_attribute_product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_jshopping_products_attr2`
--

CREATE TABLE IF NOT EXISTS `hu0fn_jshopping_products_attr2` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `attr_id` int(11) NOT NULL,
  `attr_value_id` int(11) NOT NULL,
  `price_mod` char(1) NOT NULL,
  `addprice` decimal(14,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_jshopping_products_extra_fields`
--

CREATE TABLE IF NOT EXISTS `hu0fn_jshopping_products_extra_fields` (
  `id` int(11) NOT NULL,
  `allcats` tinyint(1) NOT NULL,
  `cats` text NOT NULL,
  `type` tinyint(1) NOT NULL,
  `multilist` tinyint(1) NOT NULL,
  `group` tinyint(4) NOT NULL,
  `ordering` int(6) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `description_en-GB` text NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  `description_ru-RU` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_jshopping_products_extra_field_groups`
--

CREATE TABLE IF NOT EXISTS `hu0fn_jshopping_products_extra_field_groups` (
  `id` int(11) NOT NULL,
  `ordering` int(6) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_jshopping_products_extra_field_values`
--

CREATE TABLE IF NOT EXISTS `hu0fn_jshopping_products_extra_field_values` (
  `id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `ordering` int(6) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_jshopping_products_files`
--

CREATE TABLE IF NOT EXISTS `hu0fn_jshopping_products_files` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `demo` varchar(255) NOT NULL,
  `demo_descr` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `file_descr` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `hu0fn_jshopping_products_files`
--

INSERT INTO `hu0fn_jshopping_products_files` (`id`, `product_id`, `demo`, `demo_descr`, `file`, `file_descr`, `ordering`) VALUES
(1, 1, 'test.docx', '', '', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_jshopping_products_free_attr`
--

CREATE TABLE IF NOT EXISTS `hu0fn_jshopping_products_free_attr` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `attr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_jshopping_products_images`
--

CREATE TABLE IF NOT EXISTS `hu0fn_jshopping_products_images` (
  `image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `ordering` tinyint(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `hu0fn_jshopping_products_images`
--

INSERT INTO `hu0fn_jshopping_products_images` (`image_id`, `product_id`, `image_name`, `name`, `ordering`) VALUES
(1, 1, 'product.jpg', '', 1),
(2, 1, 'product1.jpg', '', 2),
(3, 1, 'product2.jpg', '', 3),
(4, 2, 'product.jpg', '', 1),
(5, 2, 'product1.jpg', '', 2),
(6, 2, 'product2.jpg', '', 3),
(7, 3, 'product.jpg', '', 1),
(8, 3, 'product1.jpg', '', 2),
(9, 3, 'product2.jpg', '', 3),
(10, 4, 'product.jpg', '', 1),
(11, 4, 'product1.jpg', '', 2),
(12, 4, 'product2.jpg', '', 3),
(13, 2, 'product11.jpg', '', 4),
(14, 3, 'product21.jpg', '', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_jshopping_products_option`
--

CREATE TABLE IF NOT EXISTS `hu0fn_jshopping_products_option` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_jshopping_products_prices`
--

CREATE TABLE IF NOT EXISTS `hu0fn_jshopping_products_prices` (
  `price_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `discount` decimal(16,6) NOT NULL,
  `product_quantity_start` int(11) NOT NULL,
  `product_quantity_finish` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_jshopping_products_relations`
--

CREATE TABLE IF NOT EXISTS `hu0fn_jshopping_products_relations` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_related_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `hu0fn_jshopping_products_relations`
--

INSERT INTO `hu0fn_jshopping_products_relations` (`id`, `product_id`, `product_related_id`) VALUES
(4, 1, 2),
(5, 1, 3),
(6, 1, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_jshopping_products_reviews`
--

CREATE TABLE IF NOT EXISTS `hu0fn_jshopping_products_reviews` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `time` datetime NOT NULL,
  `review` text NOT NULL,
  `mark` int(11) NOT NULL,
  `publish` tinyint(1) NOT NULL,
  `ip` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_jshopping_products_to_categories`
--

CREATE TABLE IF NOT EXISTS `hu0fn_jshopping_products_to_categories` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_ordering` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `hu0fn_jshopping_products_to_categories`
--

INSERT INTO `hu0fn_jshopping_products_to_categories` (`product_id`, `category_id`, `product_ordering`) VALUES
(1, 12, 1),
(1, 13, 1),
(2, 12, 2),
(2, 13, 2),
(3, 12, 3),
(3, 13, 3),
(4, 12, 4),
(4, 13, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_jshopping_products_videos`
--

CREATE TABLE IF NOT EXISTS `hu0fn_jshopping_products_videos` (
  `video_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `video_name` varchar(255) NOT NULL,
  `video_code` text NOT NULL,
  `video_preview` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_jshopping_product_labels`
--

CREATE TABLE IF NOT EXISTS `hu0fn_jshopping_product_labels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_de-DE` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `hu0fn_jshopping_product_labels`
--

INSERT INTO `hu0fn_jshopping_product_labels` (`id`, `name`, `name_en-GB`, `name_de-DE`, `image`, `name_ru-RU`) VALUES
(1, 'New', 'New', 'New', 'new.png', 'New'),
(2, 'Sale', 'Sale', 'Sale', 'sale.png', 'Sale');

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_jshopping_shipping_ext_calc`
--

CREATE TABLE IF NOT EXISTS `hu0fn_jshopping_shipping_ext_calc` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `alias` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `params` longtext NOT NULL,
  `shipping_method` text NOT NULL,
  `published` tinyint(1) NOT NULL,
  `ordering` int(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `hu0fn_jshopping_shipping_ext_calc`
--

INSERT INTO `hu0fn_jshopping_shipping_ext_calc` (`id`, `name`, `alias`, `description`, `params`, `shipping_method`, `published`, `ordering`) VALUES
(1, 'StandartWeight', 'sm_standart_weight', 'StandartWeight', '', '', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_jshopping_shipping_method`
--

CREATE TABLE IF NOT EXISTS `hu0fn_jshopping_shipping_method` (
  `shipping_id` int(11) NOT NULL,
  `alias` varchar(100) NOT NULL,
  `name_en-GB` varchar(100) NOT NULL,
  `description_en-GB` text NOT NULL,
  `name_de-DE` varchar(100) NOT NULL,
  `description_de-DE` text NOT NULL,
  `published` tinyint(1) NOT NULL,
  `payments` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `ordering` int(6) NOT NULL,
  `params` longtext NOT NULL,
  `name_ru-RU` varchar(100) NOT NULL,
  `description_ru-RU` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `hu0fn_jshopping_shipping_method`
--

INSERT INTO `hu0fn_jshopping_shipping_method` (`shipping_id`, `alias`, `name_en-GB`, `description_en-GB`, `name_de-DE`, `description_de-DE`, `published`, `payments`, `image`, `ordering`, `params`, `name_ru-RU`, `description_ru-RU`) VALUES
(1, '', 'Standard', '', 'Standardversand', '', 1, '', '', 1, '', 'Standard', ''),
(2, '', 'Express', '', 'Express', '', 1, '', '', 2, '', 'Express', '');

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_jshopping_shipping_method_price`
--

CREATE TABLE IF NOT EXISTS `hu0fn_jshopping_shipping_method_price` (
  `sh_pr_method_id` int(11) NOT NULL,
  `shipping_method_id` int(11) NOT NULL,
  `shipping_tax_id` int(11) NOT NULL,
  `shipping_stand_price` decimal(14,4) NOT NULL,
  `package_tax_id` int(11) NOT NULL,
  `package_stand_price` decimal(14,4) NOT NULL,
  `delivery_times_id` int(11) NOT NULL,
  `params` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `hu0fn_jshopping_shipping_method_price`
--

INSERT INTO `hu0fn_jshopping_shipping_method_price` (`sh_pr_method_id`, `shipping_method_id`, `shipping_tax_id`, `shipping_stand_price`, `package_tax_id`, `package_stand_price`, `delivery_times_id`, `params`) VALUES
(1, 1, 1, '10.0000', 1, '0.0000', 0, ''),
(2, 2, 1, '25.0000', 1, '0.0000', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_jshopping_shipping_method_price_countries`
--

CREATE TABLE IF NOT EXISTS `hu0fn_jshopping_shipping_method_price_countries` (
  `sh_method_country_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `sh_pr_method_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=479 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `hu0fn_jshopping_shipping_method_price_countries`
--

INSERT INTO `hu0fn_jshopping_shipping_method_price_countries` (`sh_method_country_id`, `country_id`, `sh_pr_method_id`) VALUES
(239, 1, 1),
(478, 1, 2),
(238, 2, 1),
(477, 2, 2),
(237, 3, 1),
(476, 3, 2),
(236, 4, 1),
(475, 4, 2),
(235, 5, 1),
(474, 5, 2),
(234, 6, 1),
(473, 6, 2),
(233, 7, 1),
(472, 7, 2),
(232, 8, 1),
(471, 8, 2),
(231, 9, 1),
(470, 9, 2),
(230, 10, 1),
(469, 10, 2),
(229, 11, 1),
(468, 11, 2),
(228, 12, 1),
(467, 12, 2),
(227, 13, 1),
(466, 13, 2),
(226, 14, 1),
(465, 14, 2),
(225, 15, 1),
(464, 15, 2),
(224, 16, 1),
(463, 16, 2),
(223, 17, 1),
(462, 17, 2),
(222, 18, 1),
(461, 18, 2),
(221, 19, 1),
(460, 19, 2),
(220, 20, 1),
(459, 20, 2),
(219, 21, 1),
(458, 21, 2),
(218, 22, 1),
(457, 22, 2),
(217, 23, 1),
(456, 23, 2),
(216, 24, 1),
(455, 24, 2),
(215, 25, 1),
(454, 25, 2),
(214, 26, 1),
(453, 26, 2),
(213, 27, 1),
(452, 27, 2),
(212, 28, 1),
(451, 28, 2),
(211, 29, 1),
(450, 29, 2),
(210, 30, 1),
(449, 30, 2),
(209, 31, 1),
(448, 31, 2),
(208, 32, 1),
(447, 32, 2),
(207, 33, 1),
(446, 33, 2),
(206, 34, 1),
(445, 34, 2),
(205, 35, 1),
(444, 35, 2),
(204, 36, 1),
(443, 36, 2),
(203, 37, 1),
(442, 37, 2),
(202, 38, 1),
(441, 38, 2),
(201, 39, 1),
(440, 39, 2),
(200, 40, 1),
(439, 40, 2),
(199, 41, 1),
(438, 41, 2),
(198, 42, 1),
(437, 42, 2),
(197, 43, 1),
(436, 43, 2),
(196, 44, 1),
(435, 44, 2),
(195, 45, 1),
(434, 45, 2),
(194, 46, 1),
(433, 46, 2),
(193, 47, 1),
(432, 47, 2),
(192, 48, 1),
(431, 48, 2),
(191, 49, 1),
(430, 49, 2),
(190, 50, 1),
(429, 50, 2),
(189, 51, 1),
(428, 51, 2),
(188, 52, 1),
(427, 52, 2),
(187, 53, 1),
(426, 53, 2),
(186, 54, 1),
(425, 54, 2),
(185, 55, 1),
(424, 55, 2),
(184, 56, 1),
(423, 56, 2),
(183, 57, 1),
(422, 57, 2),
(182, 58, 1),
(421, 58, 2),
(181, 59, 1),
(420, 59, 2),
(180, 60, 1),
(419, 60, 2),
(179, 61, 1),
(418, 61, 2),
(178, 62, 1),
(417, 62, 2),
(177, 63, 1),
(416, 63, 2),
(176, 64, 1),
(415, 64, 2),
(175, 65, 1),
(414, 65, 2),
(174, 66, 1),
(413, 66, 2),
(173, 67, 1),
(412, 67, 2),
(172, 68, 1),
(411, 68, 2),
(171, 69, 1),
(410, 69, 2),
(170, 70, 1),
(409, 70, 2),
(169, 71, 1),
(408, 71, 2),
(168, 72, 1),
(407, 72, 2),
(167, 73, 1),
(406, 73, 2),
(166, 74, 1),
(405, 74, 2),
(165, 75, 1),
(404, 75, 2),
(164, 76, 1),
(403, 76, 2),
(163, 77, 1),
(402, 77, 2),
(162, 78, 1),
(401, 78, 2),
(161, 79, 1),
(400, 79, 2),
(160, 80, 1),
(399, 80, 2),
(159, 81, 1),
(398, 81, 2),
(158, 82, 1),
(397, 82, 2),
(157, 83, 1),
(396, 83, 2),
(156, 84, 1),
(395, 84, 2),
(155, 85, 1),
(394, 85, 2),
(154, 86, 1),
(393, 86, 2),
(153, 87, 1),
(392, 87, 2),
(152, 88, 1),
(391, 88, 2),
(151, 89, 1),
(390, 89, 2),
(150, 90, 1),
(389, 90, 2),
(149, 91, 1),
(388, 91, 2),
(148, 92, 1),
(387, 92, 2),
(147, 93, 1),
(386, 93, 2),
(146, 94, 1),
(385, 94, 2),
(145, 95, 1),
(384, 95, 2),
(144, 96, 1),
(383, 96, 2),
(143, 97, 1),
(382, 97, 2),
(142, 98, 1),
(381, 98, 2),
(141, 99, 1),
(380, 99, 2),
(140, 100, 1),
(379, 100, 2),
(139, 101, 1),
(378, 101, 2),
(138, 102, 1),
(377, 102, 2),
(137, 103, 1),
(376, 103, 2),
(136, 104, 1),
(375, 104, 2),
(135, 105, 1),
(374, 105, 2),
(134, 106, 1),
(373, 106, 2),
(133, 107, 1),
(372, 107, 2),
(132, 108, 1),
(371, 108, 2),
(131, 109, 1),
(370, 109, 2),
(130, 110, 1),
(369, 110, 2),
(129, 111, 1),
(368, 111, 2),
(128, 112, 1),
(367, 112, 2),
(127, 113, 1),
(366, 113, 2),
(126, 114, 1),
(365, 114, 2),
(125, 115, 1),
(364, 115, 2),
(124, 116, 1),
(363, 116, 2),
(123, 117, 1),
(362, 117, 2),
(122, 118, 1),
(361, 118, 2),
(121, 119, 1),
(360, 119, 2),
(120, 120, 1),
(359, 120, 2),
(119, 121, 1),
(358, 121, 2),
(118, 122, 1),
(357, 122, 2),
(117, 123, 1),
(356, 123, 2),
(116, 124, 1),
(355, 124, 2),
(115, 125, 1),
(354, 125, 2),
(114, 126, 1),
(353, 126, 2),
(113, 127, 1),
(352, 127, 2),
(112, 128, 1),
(351, 128, 2),
(111, 129, 1),
(350, 129, 2),
(110, 130, 1),
(349, 130, 2),
(109, 131, 1),
(348, 131, 2),
(108, 132, 1),
(347, 132, 2),
(107, 133, 1),
(346, 133, 2),
(106, 134, 1),
(345, 134, 2),
(105, 135, 1),
(344, 135, 2),
(104, 136, 1),
(343, 136, 2),
(103, 137, 1),
(342, 137, 2),
(102, 138, 1),
(341, 138, 2),
(101, 139, 1),
(340, 139, 2),
(100, 140, 1),
(339, 140, 2),
(99, 141, 1),
(338, 141, 2),
(98, 142, 1),
(337, 142, 2),
(97, 143, 1),
(336, 143, 2),
(96, 144, 1),
(335, 144, 2),
(95, 145, 1),
(334, 145, 2),
(94, 146, 1),
(333, 146, 2),
(93, 147, 1),
(332, 147, 2),
(92, 148, 1),
(331, 148, 2),
(91, 149, 1),
(330, 149, 2),
(90, 150, 1),
(329, 150, 2),
(89, 151, 1),
(328, 151, 2),
(88, 152, 1),
(327, 152, 2),
(87, 153, 1),
(326, 153, 2),
(86, 154, 1),
(325, 154, 2),
(85, 155, 1),
(324, 155, 2),
(84, 156, 1),
(323, 156, 2),
(83, 157, 1),
(322, 157, 2),
(82, 158, 1),
(321, 158, 2),
(81, 159, 1),
(320, 159, 2),
(80, 160, 1),
(319, 160, 2),
(79, 161, 1),
(318, 161, 2),
(78, 162, 1),
(317, 162, 2),
(77, 163, 1),
(316, 163, 2),
(76, 164, 1),
(315, 164, 2),
(75, 165, 1),
(314, 165, 2),
(74, 166, 1),
(313, 166, 2),
(73, 167, 1),
(312, 167, 2),
(72, 168, 1),
(311, 168, 2),
(71, 169, 1),
(310, 169, 2),
(70, 170, 1),
(309, 170, 2),
(69, 171, 1),
(308, 171, 2),
(68, 172, 1),
(307, 172, 2),
(67, 173, 1),
(306, 173, 2),
(66, 174, 1),
(305, 174, 2),
(65, 175, 1),
(304, 175, 2),
(64, 176, 1),
(303, 176, 2),
(63, 177, 1),
(302, 177, 2),
(62, 178, 1),
(301, 178, 2),
(61, 179, 1),
(300, 179, 2),
(60, 180, 1),
(299, 180, 2),
(59, 181, 1),
(298, 181, 2),
(58, 182, 1),
(297, 182, 2),
(57, 183, 1),
(296, 183, 2),
(56, 184, 1),
(295, 184, 2),
(55, 185, 1),
(294, 185, 2),
(54, 186, 1),
(293, 186, 2),
(53, 187, 1),
(292, 187, 2),
(52, 188, 1),
(291, 188, 2),
(51, 189, 1),
(290, 189, 2),
(50, 190, 1),
(289, 190, 2),
(49, 191, 1),
(288, 191, 2),
(48, 192, 1),
(287, 192, 2),
(47, 193, 1),
(286, 193, 2),
(46, 194, 1),
(285, 194, 2),
(45, 195, 1),
(284, 195, 2),
(44, 196, 1),
(283, 196, 2),
(43, 197, 1),
(282, 197, 2),
(42, 198, 1),
(281, 198, 2),
(41, 199, 1),
(280, 199, 2),
(40, 200, 1),
(279, 200, 2),
(39, 201, 1),
(278, 201, 2),
(38, 202, 1),
(277, 202, 2),
(37, 203, 1),
(276, 203, 2),
(36, 204, 1),
(275, 204, 2),
(35, 205, 1),
(274, 205, 2),
(34, 206, 1),
(273, 206, 2),
(33, 207, 1),
(272, 207, 2),
(32, 208, 1),
(271, 208, 2),
(31, 209, 1),
(270, 209, 2),
(30, 210, 1),
(269, 210, 2),
(29, 211, 1),
(268, 211, 2),
(28, 212, 1),
(267, 212, 2),
(27, 213, 1),
(266, 213, 2),
(26, 214, 1),
(265, 214, 2),
(25, 215, 1),
(264, 215, 2),
(24, 216, 1),
(263, 216, 2),
(23, 217, 1),
(262, 217, 2),
(22, 218, 1),
(261, 218, 2),
(21, 219, 1),
(260, 219, 2),
(20, 220, 1),
(259, 220, 2),
(19, 221, 1),
(258, 221, 2),
(18, 222, 1),
(257, 222, 2),
(17, 223, 1),
(256, 223, 2),
(16, 224, 1),
(255, 224, 2),
(15, 225, 1),
(254, 225, 2),
(14, 226, 1),
(253, 226, 2),
(13, 227, 1),
(252, 227, 2),
(12, 228, 1),
(251, 228, 2),
(11, 229, 1),
(250, 229, 2),
(10, 230, 1),
(249, 230, 2),
(9, 231, 1),
(248, 231, 2),
(8, 232, 1),
(247, 232, 2),
(7, 233, 1),
(246, 233, 2),
(6, 234, 1),
(245, 234, 2),
(5, 235, 1),
(244, 235, 2),
(4, 236, 1),
(243, 236, 2),
(3, 237, 1),
(242, 237, 2),
(2, 238, 1),
(241, 238, 2),
(1, 239, 1),
(240, 239, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_jshopping_shipping_method_price_weight`
--

CREATE TABLE IF NOT EXISTS `hu0fn_jshopping_shipping_method_price_weight` (
  `sh_pr_weight_id` int(11) NOT NULL,
  `sh_pr_method_id` int(11) NOT NULL,
  `shipping_price` decimal(12,2) NOT NULL,
  `shipping_weight_from` decimal(14,4) NOT NULL,
  `shipping_weight_to` decimal(14,4) NOT NULL,
  `shipping_package_price` decimal(14,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_jshopping_taxes`
--

CREATE TABLE IF NOT EXISTS `hu0fn_jshopping_taxes` (
  `tax_id` int(11) NOT NULL,
  `tax_name` varchar(50) NOT NULL,
  `tax_value` decimal(12,2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `hu0fn_jshopping_taxes`
--

INSERT INTO `hu0fn_jshopping_taxes` (`tax_id`, `tax_name`, `tax_value`) VALUES
(1, 'Normal', '19.00');

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_jshopping_taxes_ext`
--

CREATE TABLE IF NOT EXISTS `hu0fn_jshopping_taxes_ext` (
  `id` int(11) NOT NULL,
  `tax_id` int(11) NOT NULL,
  `zones` text NOT NULL,
  `tax` decimal(12,2) NOT NULL,
  `firma_tax` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_jshopping_unit`
--

CREATE TABLE IF NOT EXISTS `hu0fn_jshopping_unit` (
  `id` int(11) NOT NULL,
  `qty` int(11) NOT NULL DEFAULT '1',
  `name_de-DE` varchar(255) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `hu0fn_jshopping_unit`
--

INSERT INTO `hu0fn_jshopping_unit` (`id`, `qty`, `name_de-DE`, `name_en-GB`, `name_ru-RU`) VALUES
(1, 1, 'Kg', 'Kg', 'Kg'),
(2, 1, 'Liter', 'Liter', 'Liter'),
(3, 1, 'St.', 'pcs.', 'pcs.');

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_jshopping_usergroups`
--

CREATE TABLE IF NOT EXISTS `hu0fn_jshopping_usergroups` (
  `usergroup_id` int(11) NOT NULL,
  `usergroup_name` varchar(64) NOT NULL,
  `usergroup_discount` decimal(12,2) NOT NULL,
  `usergroup_description` text NOT NULL,
  `usergroup_is_default` tinyint(1) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_de-DE` varchar(255) NOT NULL,
  `description_en-GB` text NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  `description_ru-RU` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `hu0fn_jshopping_usergroups`
--

INSERT INTO `hu0fn_jshopping_usergroups` (`usergroup_id`, `usergroup_name`, `usergroup_discount`, `usergroup_description`, `usergroup_is_default`, `name_en-GB`, `name_de-DE`, `description_en-GB`, `name_ru-RU`, `description_ru-RU`) VALUES
(1, 'Default', '0.00', 'Default', 1, 'Default', 'Default', '', 'Default', '');

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_jshopping_users`
--

CREATE TABLE IF NOT EXISTS `hu0fn_jshopping_users` (
  `user_id` int(11) NOT NULL,
  `usergroup_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `u_name` varchar(150) NOT NULL,
  `number` varchar(32) NOT NULL,
  `title` tinyint(1) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `m_name` varchar(255) NOT NULL,
  `firma_name` varchar(100) NOT NULL,
  `client_type` tinyint(1) NOT NULL,
  `firma_code` varchar(100) NOT NULL,
  `tax_number` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `street` varchar(255) NOT NULL,
  `street_nr` varchar(16) NOT NULL,
  `home` varchar(20) NOT NULL,
  `apartment` varchar(20) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` int(11) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `mobil_phone` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `ext_field_1` varchar(255) NOT NULL,
  `ext_field_2` varchar(255) NOT NULL,
  `ext_field_3` varchar(255) NOT NULL,
  `delivery_adress` tinyint(1) NOT NULL,
  `d_title` tinyint(1) NOT NULL,
  `d_f_name` varchar(255) NOT NULL,
  `d_l_name` varchar(255) NOT NULL,
  `d_m_name` varchar(255) NOT NULL,
  `d_firma_name` varchar(100) NOT NULL,
  `d_email` varchar(255) NOT NULL,
  `d_birthday` date NOT NULL,
  `d_street` varchar(255) NOT NULL,
  `d_street_nr` varchar(16) NOT NULL,
  `d_home` varchar(20) NOT NULL,
  `d_apartment` varchar(20) NOT NULL,
  `d_zip` varchar(20) NOT NULL,
  `d_city` varchar(100) NOT NULL,
  `d_state` varchar(100) NOT NULL,
  `d_country` int(11) NOT NULL,
  `d_phone` varchar(20) NOT NULL,
  `d_mobil_phone` varchar(20) NOT NULL,
  `d_fax` varchar(20) NOT NULL,
  `d_ext_field_1` varchar(255) NOT NULL,
  `d_ext_field_2` varchar(255) NOT NULL,
  `d_ext_field_3` varchar(255) NOT NULL,
  `lang` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_jshopping_vendors`
--

CREATE TABLE IF NOT EXISTS `hu0fn_jshopping_vendors` (
  `id` int(11) NOT NULL,
  `shop_name` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` int(11) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `benef_bank_info` varchar(64) NOT NULL,
  `benef_bic` varchar(64) NOT NULL,
  `benef_conto` varchar(64) NOT NULL,
  `benef_payee` varchar(64) NOT NULL,
  `benef_iban` varchar(64) NOT NULL,
  `benef_bic_bic` varchar(64) NOT NULL,
  `benef_swift` varchar(64) NOT NULL,
  `interm_name` varchar(64) NOT NULL,
  `interm_swift` varchar(64) NOT NULL,
  `identification_number` varchar(64) NOT NULL,
  `tax_number` varchar(64) NOT NULL,
  `additional_information` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `main` tinyint(1) NOT NULL,
  `publish` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `hu0fn_jshopping_vendors`
--

INSERT INTO `hu0fn_jshopping_vendors` (`id`, `shop_name`, `company_name`, `url`, `logo`, `adress`, `city`, `zip`, `state`, `country`, `f_name`, `l_name`, `middlename`, `phone`, `fax`, `email`, `benef_bank_info`, `benef_bic`, `benef_conto`, `benef_payee`, `benef_iban`, `benef_bic_bic`, `benef_swift`, `interm_name`, `interm_swift`, `identification_number`, `tax_number`, `additional_information`, `user_id`, `main`, `publish`) VALUES
(1, 'Shop name', 'Company', '', '', 'Address', 'City', 'Postal Code ', 'State', 81, 'First name ', 'Last name', '', '00000000', '00000000', 'email@email.com', 'test', 'test', 'test', 'test', 'test', '', 'test', 'test', 'test', '', '', 'Additional information', 0, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_languages`
--

CREATE TABLE IF NOT EXISTS `hu0fn_languages` (
  `lang_id` int(11) unsigned NOT NULL,
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
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `hu0fn_languages`
--

INSERT INTO `hu0fn_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_menu`
--

CREATE TABLE IF NOT EXISTS `hu0fn_menu` (
  `id` int(11) NOT NULL,
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
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `hu0fn_menu`
--

INSERT INTO `hu0fn_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 119, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'menu', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 22, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 23, 28, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 24, 25, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 26, 27, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 29, 30, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 31, 32, 0, '*', 1),
(18, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 33, 34, 0, '*', 1),
(19, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 35, 36, 0, '*', 1),
(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 37, 38, 0, '', 1),
(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 39, 40, 0, '*', 1),
(101, 'mainmenu', 'Продукция и услуги', 'home', '', 'home', 'index.php?option=com_jshopping&view=category', 'component', 1, 1, 1, 10011, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"1","page_heading":"Продукция и услуги","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 41, 42, 1, '*', 0),
(102, 'verkhnee-menyu', 'О нас', 'o-nas', '', 'o-nas', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 43, 44, 0, '*', 0),
(103, 'verkhnee-menyu', 'Фотогалерея', 'fotogalereya', '', 'fotogalereya', 'index.php?option=com_joomgallery&view=gallery&layout=bootone', 'component', 1, 1, 1, 10016, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"1","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 45, 46, 0, '*', 0),
(104, 'verkhnee-menyu', 'Доставка', 'dostavka', '', 'dostavka', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 47, 48, 0, '*', 0),
(105, 'verkhnee-menyu', 'Гарантия', 'garantiya', '', 'garantiya', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 49, 50, 0, '*', 0),
(106, 'verkhnee-menyu', 'Контакты', 'kontakty', '', 'kontakty', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 51, 52, 0, '*', 0),
(107, 'verkhnee-menyu', 'Скачать каталоги', 'skachat-katalog', '', 'skachat-katalog', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"icon-pdf-file-format-symbol","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 53, 54, 0, '*', 0),
(108, 'nizhnee-menyu', 'О нас', '2016-06-08-09-12-30', '', '2016-06-08-09-12-30', 'index.php?Itemid=', 'alias', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"aliasoptions":"102","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1}', 55, 56, 0, '*', 0),
(109, 'nizhnee-menyu', 'Фотогалерея', '2016-06-08-09-12-45', '', '2016-06-08-09-12-45', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"aliasoptions":"103","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1}', 57, 58, 0, '*', 0),
(110, 'nizhnee-menyu', 'Доставка', '2016-06-08-09-12-59', '', '2016-06-08-09-12-59', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"aliasoptions":"104","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1}', 59, 60, 0, '*', 0),
(111, 'nizhnee-menyu', 'Гарантия', '2016-06-08-09-13-15', '', '2016-06-08-09-13-15', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"aliasoptions":"105","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1}', 61, 62, 0, '*', 0),
(112, 'nizhnee-menyu', 'Оплата', 'oplata', '', 'oplata', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 684, '2016-06-10 08:44:43', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 63, 64, 0, '*', 0),
(113, 'nizhnee-menyu-dopolnitel', 'Скачать каталоги', '2016-06-08-09-53-25', '', '2016-06-08-09-53-25', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"aliasoptions":"107","menu-anchor_title":"","menu-anchor_css":"icon-pdf-file-format-symbol","menu_image":"","menu_text":1,"menu_show":1}', 65, 66, 0, '*', 0),
(114, 'main', 'JoomShopping', 'joomshopping', '', 'joomshopping', 'index.php?option=com_jshopping', 'component', 0, 1, 1, 10011, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jshopping/images/jshop_logo_s.png', 0, '{}', 67, 84, 0, '', 1),
(115, 'main', 'categories', 'categories', '', 'joomshopping/categories', 'index.php?option=com_jshopping&controller=categories&catid=0', 'component', 0, 114, 2, 10011, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jshopping/images/jshop_categories_s.png', 0, '{}', 68, 69, 0, '', 1),
(116, 'main', 'products', 'products', '', 'joomshopping/products', 'index.php?option=com_jshopping&controller=products&category_id=0', 'component', 0, 114, 2, 10011, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jshopping/images/jshop_products_s.png', 0, '{}', 70, 71, 0, '', 1),
(117, 'main', 'orders', 'orders', '', 'joomshopping/orders', 'index.php?option=com_jshopping&controller=orders', 'component', 0, 114, 2, 10011, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jshopping/images/jshop_orders_s.png', 0, '{}', 72, 73, 0, '', 1),
(118, 'main', 'clients', 'clients', '', 'joomshopping/clients', 'index.php?option=com_jshopping&controller=users', 'component', 0, 114, 2, 10011, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jshopping/images/jshop_users_s.png', 0, '{}', 74, 75, 0, '', 1),
(119, 'main', 'options', 'options', '', 'joomshopping/options', 'index.php?option=com_jshopping&controller=other', 'component', 0, 114, 2, 10011, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jshopping/images/jshop_options_s.png', 0, '{}', 76, 77, 0, '', 1),
(120, 'main', 'configuration', 'configuration', '', 'joomshopping/configuration', 'index.php?option=com_jshopping&controller=config', 'component', 0, 114, 2, 10011, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jshopping/images/jshop_configuration_s.png', 0, '{}', 78, 79, 0, '', 1),
(121, 'main', 'install-and-update', 'install-and-update', '', 'joomshopping/install-and-update', 'index.php?option=com_jshopping&controller=update', 'component', 0, 114, 2, 10011, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jshopping/images/jshop_update_s.png', 0, '{}', 80, 81, 0, '', 1),
(122, 'main', 'about-as', 'about-as', '', 'joomshopping/about-as', 'index.php?option=com_jshopping&controller=info', 'component', 0, 114, 2, 10011, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jshopping/images/jshop_info_s.png', 0, '{}', 82, 83, 0, '', 1),
(123, 'nizhnee-menyu', 'Новости', 'novosti', '', 'novosti', 'index.php?option=com_content&view=category&layout=blog&id=8', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"1","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"0","num_intro_articles":"9","num_columns":"3","num_links":"0","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_featured":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"1","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 85, 86, 0, '*', 0),
(124, 'main', 'COM_JOOMGALLERY', 'com-joomgallery', '', 'com-joomgallery', 'index.php?option=com_joomgallery', 'component', 0, 1, 1, 10016, 0, '0000-00-00 00:00:00', 0, 1, '../media/joomgallery/images/joom_main.png', 0, '{}', 87, 114, 0, '', 1),
(125, 'main', 'COM_JOOMGALLERY_CATEGORY_MANAGER', 'com-joomgallery-category-manager', '', 'com-joomgallery/com-joomgallery-category-manager', 'index.php?option=com_joomgallery&controller=categories', 'component', 0, 124, 2, 10016, 0, '0000-00-00 00:00:00', 0, 1, 'media/joomgallery/images/joom_categories.png', 0, '{}', 88, 89, 0, '', 1),
(126, 'main', 'COM_JOOMGALLERY_IMAGE_MANAGER', 'com-joomgallery-image-manager', '', 'com-joomgallery/com-joomgallery-image-manager', 'index.php?option=com_joomgallery&controller=images', 'component', 0, 124, 2, 10016, 0, '0000-00-00 00:00:00', 0, 1, 'media/joomgallery/images/joom_pictures.png', 0, '{}', 90, 91, 0, '', 1),
(127, 'main', 'COM_JOOMGALLERY_COMMENTS_MANAGER', 'com-joomgallery-comments-manager', '', 'com-joomgallery/com-joomgallery-comments-manager', 'index.php?option=com_joomgallery&controller=comments', 'component', 0, 124, 2, 10016, 0, '0000-00-00 00:00:00', 0, 1, 'media/joomgallery/images/joom_comments.png', 0, '{}', 92, 93, 0, '', 1),
(128, 'main', 'COM_JOOMGALLERY_IMAGE_UPLOAD', 'com-joomgallery-image-upload', '', 'com-joomgallery/com-joomgallery-image-upload', 'index.php?option=com_joomgallery&controller=upload', 'component', 0, 124, 2, 10016, 0, '0000-00-00 00:00:00', 0, 1, 'media/joomgallery/images/joom_pictureupload.png', 0, '{}', 94, 95, 0, '', 1),
(129, 'main', 'COM_JOOMGALLERY_AJAX_UPLOAD', 'com-joomgallery-ajax-upload', '', 'com-joomgallery/com-joomgallery-ajax-upload', 'index.php?option=com_joomgallery&controller=ajaxupload', 'component', 0, 124, 2, 10016, 0, '0000-00-00 00:00:00', 0, 1, 'media/joomgallery/images/joom_ajaxupload.png', 0, '{}', 96, 97, 0, '', 1),
(130, 'main', 'COM_JOOMGALLERY_BATCH_UPLOAD', 'com-joomgallery-batch-upload', '', 'com-joomgallery/com-joomgallery-batch-upload', 'index.php?option=com_joomgallery&controller=batchupload', 'component', 0, 124, 2, 10016, 0, '0000-00-00 00:00:00', 0, 1, 'media/joomgallery/images/joom_batchupload.png', 0, '{}', 98, 99, 0, '', 1),
(131, 'main', 'COM_JOOMGALLERY_FTP_UPLOAD', 'com-joomgallery-ftp-upload', '', 'com-joomgallery/com-joomgallery-ftp-upload', 'index.php?option=com_joomgallery&controller=ftpupload', 'component', 0, 124, 2, 10016, 0, '0000-00-00 00:00:00', 0, 1, 'media/joomgallery/images/joom_ftpupload.png', 0, '{}', 100, 101, 0, '', 1),
(132, 'main', 'COM_JOOMGALLERY_JAVA_UPLOAD', 'com-joomgallery-java-upload', '', 'com-joomgallery/com-joomgallery-java-upload', 'index.php?option=com_joomgallery&controller=jupload', 'component', 0, 124, 2, 10016, 0, '0000-00-00 00:00:00', 0, 1, 'media/joomgallery/images/joom_jupload.png', 0, '{}', 102, 103, 0, '', 1),
(133, 'main', 'COM_JOOMGALLERY_CONFIGURATION_MANAGER', 'com-joomgallery-configuration-manager', '', 'com-joomgallery/com-joomgallery-configuration-manager', 'index.php?option=com_joomgallery&controller=config', 'component', 0, 124, 2, 10016, 0, '0000-00-00 00:00:00', 0, 1, 'media/joomgallery/images/joom_config.png', 0, '{}', 104, 105, 0, '', 1),
(134, 'main', 'COM_JOOMGALLERY_CUSTOMIZE_CSS', 'com-joomgallery-customize-css', '', 'com-joomgallery/com-joomgallery-customize-css', 'index.php?option=com_joomgallery&controller=cssedit', 'component', 0, 124, 2, 10016, 0, '0000-00-00 00:00:00', 0, 1, 'media/joomgallery/images/joom_css.png', 0, '{}', 106, 107, 0, '', 1),
(135, 'main', 'COM_JOOMGALLERY_MIGRATION_MANAGER', 'com-joomgallery-migration-manager', '', 'com-joomgallery/com-joomgallery-migration-manager', 'index.php?option=com_joomgallery&controller=migration', 'component', 0, 124, 2, 10016, 0, '0000-00-00 00:00:00', 0, 1, 'media/joomgallery/images/joom_migration.png', 0, '{}', 108, 109, 0, '', 1),
(136, 'main', 'COM_JOOMGALLERY_MAINTENANCE_MANAGER', 'com-joomgallery-maintenance-manager', '', 'com-joomgallery/com-joomgallery-maintenance-manager', 'index.php?option=com_joomgallery&controller=maintenance', 'component', 0, 124, 2, 10016, 0, '0000-00-00 00:00:00', 0, 1, 'media/joomgallery/images/joom_maintenance.png', 0, '{}', 110, 111, 0, '', 1),
(137, 'main', 'COM_JOOMGALLERY_HELP', 'com-joomgallery-help', '', 'com-joomgallery/com-joomgallery-help', 'index.php?option=com_joomgallery&controller=help', 'component', 0, 124, 2, 10016, 0, '0000-00-00 00:00:00', 0, 1, 'media/joomgallery/images/joom_information.png', 0, '{}', 112, 113, 0, '', 1),
(138, 'skrytoe-menyu', 'Каталог', 'katalog', '', 'katalog', 'index.php?option=com_jshopping&view=category', 'component', 1, 1, 1, 10011, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"page_catalog","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 115, 116, 0, '*', 0),
(139, 'skrytoe-menyu', 'Поиск', 'poisk', '', 'poisk', 'index.php?option=com_search&view=search', 'component', 1, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"search_phrases":"","search_areas":"","show_date":"","searchphrase":"0","ordering":"newest","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 117, 118, 0, '*', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_menu_types`
--

CREATE TABLE IF NOT EXISTS `hu0fn_menu_types` (
  `id` int(10) unsigned NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `hu0fn_menu_types`
--

INSERT INTO `hu0fn_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(2, 'verkhnee-menyu', 'Верхнее меню', ''),
(3, 'nizhnee-menyu', 'Нижнее меню', ''),
(4, 'nizhnee-menyu-dopolnitel', 'Нижнее меню (дополнительное)', ''),
(5, 'skrytoe-menyu', 'Скрытое меню', '');

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_messages`
--

CREATE TABLE IF NOT EXISTS `hu0fn_messages` (
  `message_id` int(10) unsigned NOT NULL,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `hu0fn_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_modules`
--

CREATE TABLE IF NOT EXISTS `hu0fn_modules` (
  `id` int(11) NOT NULL,
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
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `hu0fn_modules`
--

INSERT INTO `hu0fn_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Main Menu', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '2016-06-14 13:20:55', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"0","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
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
(16, 50, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '2016-06-14 13:20:55', '0000-00-00 00:00:00', -2, 'mod_login', 1, 1, '{"greeting":"1","name":"0"}', 0, '*'),
(17, 51, 'Хлебные крошки', '', '', 2, 'before_content', 684, '2016-06-14 11:44:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 0, '{"showHere":"0","showHome":"1","homeText":"","showLast":"1","separator":" ","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 54, 'Логотип (хеадер)', '', '<p><a href="http://astal/"><img src="images/site/logo.jpg" alt="" /> ASTAL.BY</a></p>', 1, 'header_left', 684, '2016-06-03 14:25:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(88, 55, 'Контакты в шапке', '', '', 1, 'header_center', 684, '2016-06-07 09:04:26', '2016-06-03 14:11:28', '0000-00-00 00:00:00', 1, 'mod_contacts_gr', 1, 0, '{"contacts":"{\\"contact_type\\":[\\"landline\\",\\"mts\\",\\"velcom\\"],\\"contact_text\\":[\\"(017) 210-08-87\\",\\"+375 (25) 504-04-04\\",\\"+375 (25) 502-02-02\\"]}","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(89, 56, 'Модуль формы обратной связи (шапка)', '', '', 1, 'header_right', 684, '2016-06-14 13:21:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_form_gr', 1, 0, '{"head":"Заказать обратный звонок","recipient":"sergeibolonikov@gmail.com","button_text":"Отправить","mail_head":"Обратный звонок в шапке сайта","thanks":"Спасибо! Наш менеджер свяжется с Вами!","captcha_key":"","captcha_secret_key":"","file_text":"","field":"{\\"type\\":[\\"text\\",\\"text\\",\\"textarea\\"],\\"title\\":[\\"\\",\\"\\",\\"\\"],\\"placeholder\\":[\\"Имя\\",\\"E-mail\\",\\"Сообщение\\"],\\"required\\":[\\"1\\",\\"1\\",null]}","modal_on":"1","modal_btn_text":"Заказать обратный звонок","modal_btn_class":"icon-phone-call","layout":"_:default","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(90, 57, 'Меню (шапка)', '', '', 1, 'header_bottom_left', 684, '2016-06-07 09:04:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"verkhnee-menyu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"astal:top","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(91, 59, 'поиск', '', '', 2, 'header_bottom_right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 0, '{"label":"","width":"","text":"Поиск по сайту","button":"1","button_pos":"right","imagebutton":"1","button_text":"","opensearch":"1","opensearch_title":"","set_itemid":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(92, 60, 'Слайдер', '', '', 1, 'before_content_without_container', 684, '2016-06-07 11:40:40', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_slider_gr', 1, 0, '{"slider":"{\\"img\\":[\\"images\\/slider\\/slide.jpg\\",\\"images\\/slider\\/slide1.jpg\\"],\\"text1\\":[\\"Производство изделий из\\",\\"\\"],\\"text2\\":[\\"нержавеющей стали\\",\\"\\"]}","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(93, 61, 'Модуль информации', '', '', 1, 'after_content_without_container', 684, '2016-06-08 05:58:10', '2016-06-07 13:59:25', '0000-00-00 00:00:00', 1, 'mod_info_gr', 1, 0, '{"name1":"О компании  ООО А-сталь","text1":"<p>Предприятие ООО «А-сталь» в январе 2010 года запустило собственное производство изделий из нержавеющей стали, используя многолетний опыт работы, накопленный в области водоотведения с профессиональными системами. <\\/p>","name2":"Гарантии","text2":"<p>Далеко-далеко за словесными горами в стране гласных и согласных живут рыбные тексты. Вдали от всех живут они в буквенных домах на берегу Семантика большого языкового океана. Маленький ручеек Даль журчит по всей стране и обеспечивает ее всеми необходимыми правилами.<\\/p>","readmore":"\\/","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(94, 66, 'Новости', '', '', 1, 'after_content', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_news', 1, 0, '{"catid":["8"],"image":"0","item_title":"1","link_titles":"1","item_heading":"h5","showLastSeparator":"0","readmore":"0","count":"3","ordering":"a.publish_up","direction":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(95, 67, 'Логотип (футер)', '', '<p><a href="http://astal/">ASTAL.BY</a></p>', 1, 'footer_top', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(96, 68, 'Нижнее меню', '', '', 1, 'footer_left', 684, '2016-06-08 09:23:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"nizhnee-menyu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"astal:bottom","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(97, 69, 'Нижнее меню (дополнительное)', '', '', 1, 'footer_center', 684, '2016-06-08 14:01:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"nizhnee-menyu-dopolnitel","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"astal:bottom","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(98, 70, 'Модуль формы обратной связи (футер)', '', '', 1, 'footer_center', 684, '2016-06-08 10:44:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_form_gr', 1, 0, '{"head":"Заказать обратный звонок","recipient":"sergeibolonikov@gmail.com","button_text":"Отправить","mail_head":"Обратный звонок в шапке сайта","thanks":"Спасибо! Наш менеджер свяжется с Вами!","captcha_key":"","captcha_secret_key":"","file_text":"","field":"{\\"type\\":[\\"text\\",\\"text\\",\\"text\\"],\\"title\\":[\\"Имя\\",\\"E-mail\\",\\"Сообщение\\"],\\"required\\":[\\"1\\",\\"1\\",null]}","modal_on":"1","modal_btn_text":"Заказать обратный звонок","modal_btn_class":"icon-phone-call","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(99, 71, 'Cоциальные кнопки', '', '', 1, 'footer_center', 684, '2016-06-08 12:00:04', '2016-06-08 11:03:35', '0000-00-00 00:00:00', 1, 'mod_social_gr', 1, 0, '{"social":"{\\"color\\":[\\"4c75a3\\",\\"41abe1\\",\\"F6881F\\",\\"3c5899\\"],\\"social_type\\":[\\"vk\\",\\"twitter\\",\\"odnoklassniki\\",\\"facebook\\"],\\"url\\":[\\"\\/\\",\\"\\/\\",\\"\\/\\",\\"\\/\\"]}","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(100, 72, 'Контакты (футер)', '', '', 1, 'footer_right', 684, '2016-06-08 14:03:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_contacts_gr', 1, 0, '{"contacts":"{\\"contact_type\\":[\\"landline\\",\\"landline\\",\\"landline\\",\\"address\\",\\"address\\"],\\"contact_text\\":[\\"+375 25 502-02-02\\",\\"+375 25 502-02-02\\",\\"+375 25 502-02-02\\",\\"222160, РБ, г.Жодино, ул.Сухогрядская, 11-38.\\",\\"Производство\\/склад: г. Жодино, ул. Зеленоборская 1\\"],\\"mapx\\":[\\"\\",\\"\\",\\"\\",\\"54.087928\\",\\"\\"],\\"mapy\\":[\\"\\",\\"\\",\\"\\",\\"28.299285\\",\\"\\"],\\"zoom\\":[\\"\\",\\"\\",\\"\\",\\"14\\",\\"\\"]}","layout":"_:footer","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(101, 73, 'Модуль второго меню', '', '', 1, 'before_content', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_second_menu_gr', 1, 0, '{"menu":"{\\"text\\":[\\"Системы водоотвода из нержавеющей стали \\",\\"Велопарковки и ограждения из нержавеющей стали\\",\\"Металлопрокат (листовая нержавеющая сталь) \\",\\"Металлопрокат (листовая нержавеющая сталь)\\",\\"Решетки и решетчатый настил\\",\\"Мойки и Мебель из нержавеющей стали для торговли и производства\\",\\"Складские позиции и уцененная продукция\\",\\"Нестандартное оборудование по чертежам и эскизам заказчика\\",\\"Услуги металлообработки\\"],\\"url\\":[\\"\\/\\",\\"\\/\\",\\"\\/\\",\\"\\/\\",\\"\\/\\",\\"\\/\\",\\"\\/\\",\\"\\/\\",\\"\\/\\"]}","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(102, 75, 'Страница контактов', '', '', 1, 'content', 0, '0000-00-00 00:00:00', '2016-06-10 06:42:26', '0000-00-00 00:00:00', 1, 'mod_page_contacts_gr', 1, 0, '{"block1":"<p>ООО \\"А-сталь\\"<\\/p>\\r\\n<p>Юридический адрес: РБ, 222160, Минская область, г. Жодино, ул. Сухогрядская, д. 11, ком. 38<\\/p>","contacts":"{\\"contact_type\\":[\\"velcom\\",\\"velcom\\",\\"velcom\\"],\\"contact_text\\":[\\"+375 (25) 5020202\\",\\"+375 (25) 5040404\\",\\"+375 (25) 5040404\\"]}","block3":"<p>Тел.\\/факс.: +375 1775 7-21-85<\\/p>\\r\\n<p>                     +375 1775 5-07-44<\\/p>\\r\\n<p>Тел.\\/факс бухгалетрии: +375 1775 7-21-09<\\/p>","block4":"<p>skype: oooastal<\\/p>\\r\\n<p>e-mail: <a href=\\"mailto:oooastal@gmail.com\\">oooastal@gmail.com<\\/a><\\/p>","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(103, 76, 'Карта в контактах', '', '', 1, 'after_content_without_container', 0, '0000-00-00 00:00:00', '2016-06-10 07:15:11', '0000-00-00 00:00:00', 1, 'mod_yandexmap', 1, 0, '{"latitude":"54.087928","longitude":"28.299285","zoom":"12","marker_image":"images\\/site\\/marker.png","marker_width":"40","marker_height":"65","marker_offset_x":"-20","marker_offset_y":"-65","marker_link_text":"Подробнее","markers_list":"{\\"marker_latitude\\":[\\"54.087928\\"],\\"marker_longitude\\":[\\"28.299285\\"],\\"marker_text\\":[\\"Юридический адрес: РБ, 222160, Минская область, г. Жодино, ул. Сухогрядская, д. 11, ком. 38\\"],\\"marker_link\\":[\\"\\"]}","map_width":"100%","map_height":"400px","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(104, 77, 'Форма обратной связи', '', '', 1, 'after_content', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_form_gr', 1, 0, '{"head":"Форма обратной связи","recipient":"sergeibolonikov@gmail.com","button_text":"Отправить","mail_head":"Форма обратной связи astal","thanks":"Спасибо! Наш менеджер свяжется с Вами.","captcha_key":"","captcha_secret_key":"","file_on":"1","file_text":"Прикрепить файл","field":"{\\"type\\":[\\"text\\",\\"text\\",\\"textarea\\"],\\"title\\":[\\"\\",\\"\\",\\"\\"],\\"placeholder\\":[\\"Введите Ваше имя\\",\\"Ваш e-mail или телефон\\",\\"Текст вашего сообщения\\"],\\"required\\":[\\"1\\",\\"1\\",\\"1\\"]}","modal_btn_text":"","modal_btn_class":"","layout":"_:default","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(105, 87, 'JoomGallery News', '', '', 1, 'joom_cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_feed', 1, 1, 'cache=1\n    cache_time=15\n    moduleclass_sfx=\n    rssurl=http://www.en.joomgallery.net/feed/rss.html\n    rssrtl=0\n    rsstitle=1\n    rssdesc=0\n    rssimage=1\n    rssitems=3\n    rssitemdesc=1\n    word_count=200', 1, '*'),
(107, 102, 'Категории на главной', '', '', 1, 'content', 0, '0000-00-00 00:00:00', '2016-06-13 11:04:41', '0000-00-00 00:00:00', 1, 'mod_jshopping_categories_gr', 1, 0, '{"show_image":"1","sort":"id","ordering":"asc","moduleclass_sfx":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(108, 103, 'Форма запроса коммерческого предложения', '', '', 1, 'jshop_product', 684, '2016-06-14 10:23:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_form_gr', 1, 0, '{"head":"Запросить коммерческое предложение","recipient":"sergeibolonikov@gmail.com","button_text":"Отправить","mail_head":"Запросить коммерческое предложение","thanks":"Спасибо! Наш менеджер свяжется с Вами!","captcha_key":"","captcha_secret_key":"","file_text":"","field":"{\\"type\\":[\\"text\\",\\"text\\",\\"text\\"],\\"title\\":[\\"\\",\\"\\",\\"\\"],\\"placeholder\\":[\\"Имя\\",\\"Email или телефон\\",\\"Сообщение\\"],\\"required\\":[\\"1\\",\\"1\\",null]}","modal_on":"1","modal_btn_text":"Запросить коммерческое предложение","modal_btn_class":"","layout":"_:request","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(109, 104, 'Картинка в шапке каталога', '', '<p><img src="images/site/catalog_head.jpg" alt="" /></p>', 1, 'before_content_without_container', 0, '0000-00-00 00:00:00', '2016-06-14 11:32:03', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(110, 105, 'Модуль вывода картинки бекграундом', '', '', 1, 'before_content_without_container', 0, '0000-00-00 00:00:00', '2016-06-14 11:31:03', '0000-00-00 00:00:00', 1, 'mod_background_gr', 1, 0, '{"img":"images\\/site\\/catalog_head.jpg","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(111, 106, 'Модуль схемы', '', '', 1, 'jshop_category', 684, '2016-06-15 08:57:02', '2016-06-15 06:26:28', '0000-00-00 00:00:00', 1, 'mod_scheme_gr', 1, 0, '{"url-cell-sort":"\\/","desc-cell-sort":"<p>Водоотводящие системы этого типа применяются в предприятиях пищевой промышленности<\\/p>","url-cell-trap":"\\/","desc-cell-trap":"<p>Водоотводящие системы этого типа применяются в предприятиях пищевой промышленности (пивзаводы, молокозаводы, мясоперерабатывающие комбинаты), химической промышленности, на больших кухнях, в больницах и других обьектах. Применяются также в тех случаях, когда санитарные и технологические правила требуют выполнения водоотводящих систем из нержавеющей стали для поддержания высоких гигиенических параметров продукционных помещений. <\\/p>","url-trap":"\\/","desc-trap":"<p>Водоотводящие системы этого типа применяются в предприятиях пищевой промышленности <\\/p>","url-lotok-all":"\\/","desc-lotok-all":"<p>Водоотводящие системы этого типа применяются в предприятиях пищевой промышленности (пивзаводы, молокозаводы, мясоперерабатывающие комбинаты), химической промышленности, на больших кухнях, в больницах и других обьектах. Применяются также в тех случаях, когда санитарные и технологические правила требуют выполнения водоотводящих систем из нержавеющей стали для поддержания высоких гигиенических параметров продукционных помещений. <\\/p>","url-lotok":"\\/","desc-lotok":"<p>Водоотводящие системы этого типа применяются в предприятиях пищевой промышленности (пивзаводы, молокозаводы, мясоперерабатывающие комбинаты), химической промышленности, на больших кухнях, в больницах и других обьектах.<\\/p>","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_modules_menu`
--

CREATE TABLE IF NOT EXISTS `hu0fn_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `hu0fn_modules_menu`
--

INSERT INTO `hu0fn_modules_menu` (`moduleid`, `menuid`) VALUES
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
(17, -101),
(79, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0),
(91, 0),
(92, 101),
(93, 101),
(94, 101),
(95, 0),
(96, 0),
(97, 0),
(98, 0),
(99, 0),
(100, 0),
(101, 101),
(101, 138),
(102, 106),
(103, 106),
(104, 106),
(105, 0),
(107, 101),
(108, 0),
(109, 138),
(110, 138),
(111, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `hu0fn_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
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
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_overrider`
--

CREATE TABLE IF NOT EXISTS `hu0fn_overrider` (
  `id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_postinstall_messages`
--

CREATE TABLE IF NOT EXISTS `hu0fn_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL,
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
  `enabled` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `hu0fn_postinstall_messages`
--

INSERT INTO `hu0fn_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(3, 700, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_redirect_links`
--

CREATE TABLE IF NOT EXISTS `hu0fn_redirect_links` (
  `id` int(10) unsigned NOT NULL,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_schemas`
--

CREATE TABLE IF NOT EXISTS `hu0fn_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `hu0fn_schemas`
--

INSERT INTO `hu0fn_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.5.1-2016-03-29'),
(10016, '3.3.0');

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_session`
--

CREATE TABLE IF NOT EXISTS `hu0fn_session` (
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `hu0fn_session`
--

INSERT INTO `hu0fn_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('32fs8n55ikpd2163mu456v4ag0', 1, 0, '1465982350', 'joomla|s:3208:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToyODtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE0NjU5ODIxMjM7czo0OiJsYXN0IjtpOjE0NjU5ODIzNDY7czozOiJub3ciO2k6MTQ2NTk4MjM1MDt9czo1OiJ0b2tlbiI7czozMjoiUmI3bW1BM1gzWHF4dDA3dnhodEVpcnBzWW83UkpFNkkiO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjI6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6NDp7czoxMzoiY29tX2luc3RhbGxlciI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo3OiJtZXNzYWdlIjtzOjA6IiI7czoxNzoiZXh0ZW5zaW9uX21lc3NhZ2UiO3M6MDoiIjt9czoxMzoiY29tX2xhbmd1YWdlcyI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo5OiJvdmVycmlkZXMiO086ODoic3RkQ2xhc3MiOjI6e3M6NjoiZmlsdGVyIjtPOjg6InN0ZENsYXNzIjoyOntzOjY6ImNsaWVudCI7czoxOiIwIjtzOjg6Imxhbmd1YWdlIjtzOjU6InJ1LVJVIjt9czoxMDoibGltaXRzdGFydCI7aTowO31zOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6ODoib3ZlcnJpZGUiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiZGF0YSI7Tjt9fX1zOjExOiJjb21fbW9kdWxlcyI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo0OiJlZGl0IjtPOjg6InN0ZENsYXNzIjoxOntzOjY6Im1vZHVsZSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoyOiJpZCI7YTowOnt9czo0OiJkYXRhIjtOO319czozOiJhZGQiO086ODoic3RkQ2xhc3MiOjE6e3M6NjoibW9kdWxlIjtPOjg6InN0ZENsYXNzIjoyOntzOjEyOiJleHRlbnNpb25faWQiO047czo2OiJwYXJhbXMiO047fX19czo5OiJjb21fbWVudXMiO086ODoic3RkQ2xhc3MiOjI6e3M6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJpdGVtIjtPOjg6InN0ZENsYXNzIjozOntzOjQ6InR5cGUiO047czo0OiJsaW5rIjtOO3M6NDoiZGF0YSI7Tjt9fXM6NToiaXRlbXMiO086ODoic3RkQ2xhc3MiOjM6e3M6ODoibWVudXR5cGUiO3M6MTM6InNrcnl0b2UtbWVueXUiO3M6MTA6ImxpbWl0c3RhcnQiO2k6MDtzOjQ6Imxpc3QiO2E6NDp7czo5OiJkaXJlY3Rpb24iO3M6MzoiYXNjIjtzOjU6ImxpbWl0IjtzOjI6IjIwIjtzOjg6Im9yZGVyaW5nIjtzOjU6ImEubGZ0IjtzOjU6InN0YXJ0IjtkOjA7fX19fXM6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086NToiSlVzZXIiOjI4OntzOjk6IgAqAGlzUm9vdCI7YjoxO3M6MjoiaWQiO3M6MzoiNjg0IjtzOjQ6Im5hbWUiO3M6MTA6IlN1cGVyIFVzZXIiO3M6ODoidXNlcm5hbWUiO3M6NToiYWRtaW4iO3M6NToiZW1haWwiO3M6MjI6ImJvbG9uaWtvdkBtZWRpYWxpbmUuYnkiO3M6ODoicGFzc3dvcmQiO3M6NjA6IiQyeSQxMCRJTWZqUWxDRG54bWZWN28zSWg1azEueXlnazVvVVhrNUQ1RFJ6RmdMT1NGZk1hVWdJcnZKaSI7czoxNDoicGFzc3dvcmRfY2xlYXIiO3M6MDoiIjtzOjU6ImJsb2NrIjtzOjE6IjAiO3M6OToic2VuZEVtYWlsIjtzOjE6IjEiO3M6MTI6InJlZ2lzdGVyRGF0ZSI7czoxOToiMjAxNi0wNi0wMyAxMTowNDozNiI7czoxMzoibGFzdHZpc2l0RGF0ZSI7czoxOToiMjAxNi0wNi0xNSAwODozNzozOSI7czoxMDoiYWN0aXZhdGlvbiI7czoxOiIwIjtzOjY6InBhcmFtcyI7czowOiIiO3M6NjoiZ3JvdXBzIjthOjE6e2k6ODtzOjE6IjgiO31zOjU6Imd1ZXN0IjtpOjA7czoxMzoibGFzdFJlc2V0VGltZSI7czoxOToiMDAwMC0wMC0wMCAwMDowMDowMCI7czoxMDoicmVzZXRDb3VudCI7czoxOiIwIjtzOjEyOiJyZXF1aXJlUmVzZXQiO3M6MToiMCI7czoxMDoiACoAX3BhcmFtcyI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czoxNDoiACoAX2F1dGhHcm91cHMiO2E6Mjp7aTowO2k6MTtpOjE7aTo4O31zOjE0OiIAKgBfYXV0aExldmVscyI7YTo1OntpOjA7aToxO2k6MTtpOjE7aToyO2k6MjtpOjM7aTozO2k6NDtpOjY7fXM6MTU6IgAqAF9hdXRoQWN0aW9ucyI7TjtzOjEyOiIAKgBfZXJyb3JNc2ciO047czoxMzoiACoAdXNlckhlbHBlciI7TzoxODoiSlVzZXJXcmFwcGVySGVscGVyIjowOnt9czoxMDoiACoAX2Vycm9ycyI7YTowOnt9czozOiJhaWQiO2k6MDtzOjY6Im90cEtleSI7czowOiIiO3M6NDoib3RlcCI7czowOiIiO31zOjExOiJhcHBsaWNhdGlvbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJxdWV1ZSI7Tjt9fX1zOjk6InNlcGFyYXRvciI7czoxOiIuIjt9";', 684, 'admin'),
('34t9fd7iatu41gl5pgbjrepu97', 0, 1, '1465982843', 'joomla|s:2004:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjoxMDp7czo3OiJzZXNzaW9uIjtPOjg6InN0ZENsYXNzIjoyOntzOjc6ImNvdW50ZXIiO2k6MTkzO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTQ2NTk3MTU4NDtzOjQ6Imxhc3QiO2k6MTQ2NTk4MjgzNDtzOjM6Im5vdyI7aToxNDY1OTgyODQyO319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjU6IkpVc2VyIjoyNjp7czo5OiIAKgBpc1Jvb3QiO2I6MDtzOjI6ImlkIjtpOjA7czo0OiJuYW1lIjtOO3M6ODoidXNlcm5hbWUiO047czo1OiJlbWFpbCI7TjtzOjg6InBhc3N3b3JkIjtOO3M6MTQ6InBhc3N3b3JkX2NsZWFyIjtzOjA6IiI7czo1OiJibG9jayI7TjtzOjk6InNlbmRFbWFpbCI7aTowO3M6MTI6InJlZ2lzdGVyRGF0ZSI7TjtzOjEzOiJsYXN0dmlzaXREYXRlIjtOO3M6MTA6ImFjdGl2YXRpb24iO047czo2OiJwYXJhbXMiO047czo2OiJncm91cHMiO2E6MTp7aTowO3M6MToiOSI7fXM6NToiZ3Vlc3QiO2k6MTtzOjEzOiJsYXN0UmVzZXRUaW1lIjtOO3M6MTA6InJlc2V0Q291bnQiO047czoxMjoicmVxdWlyZVJlc2V0IjtOO3M6MTA6IgAqAF9wYXJhbXMiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mjp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6MTQ6IgAqAF9hdXRoR3JvdXBzIjthOjI6e2k6MDtpOjE7aToxO2k6OTt9czoxNDoiACoAX2F1dGhMZXZlbHMiO2E6Mzp7aTowO2k6MTtpOjE7aToxO2k6MjtpOjU7fXM6MTU6IgAqAF9hdXRoQWN0aW9ucyI7TjtzOjEyOiIAKgBfZXJyb3JNc2ciO047czoxMzoiACoAdXNlckhlbHBlciI7TzoxODoiSlVzZXJXcmFwcGVySGVscGVyIjowOnt9czoxMDoiACoAX2Vycm9ycyI7YTowOnt9czozOiJhaWQiO2k6MDt9czoxOToianNfaWRfY3VycmVuY3lfb3JpZyI7czoxOiIxIjtzOjE0OiJqc19pZF9jdXJyZW5jeSI7czoxOiIxIjtzOjE5OiJqc19oaXN0b3J5X3NlbF9sYW5nIjtzOjU6InJ1LVJVIjtzOjE1OiJqc19wcmV2X3VzZXJfaWQiO2k6MDtzOjIyOiJqc2hvcF9jaGVja2VkX2xhbmd1YWdlIjthOjI6e2k6MDtzOjU6ImVuLUdCIjtpOjE7czo1OiJydS1SVSI7fXM6MjY6ImpzaG9wX2VuZF9wYWdlX2J1eV9wcm9kdWN0IjtzOjUzOiIva2F0YWxvZy9zaXN0ZW1hLXZvZG9vdHZvZGEtaXotbmVyemhhdmV5dXNoY2hlai1zdGFsaSI7czoyNzoianNob3BfZW5kX3BhZ2VfbGlzdF9wcm9kdWN0IjtzOjUzOiIva2F0YWxvZy9zaXN0ZW1hLXZvZG9vdHZvZGEtaXotbmVyemhhdmV5dXNoY2hlai1zdGFsaSI7fX1zOjk6InNlcGFyYXRvciI7czoxOiIuIjt9";', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_tags`
--

CREATE TABLE IF NOT EXISTS `hu0fn_tags` (
  `id` int(10) unsigned NOT NULL,
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
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `hu0fn_tags`
--

INSERT INTO `hu0fn_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 42, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_template_styles`
--

CREATE TABLE IF NOT EXISTS `hu0fn_template_styles` (
  `id` int(10) unsigned NOT NULL,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `hu0fn_template_styles`
--

INSERT INTO `hu0fn_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.png","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '0', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}'),
(9, 'astal', 0, '1', 'astal - По умолчанию', '{}');

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_ucm_base`
--

CREATE TABLE IF NOT EXISTS `hu0fn_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_ucm_content`
--

CREATE TABLE IF NOT EXISTS `hu0fn_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_ucm_history`
--

CREATE TABLE IF NOT EXISTS `hu0fn_ucm_history` (
  `version_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `hu0fn_ucm_history`
--

INSERT INTO `hu0fn_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 1, 1, '', '2016-06-06 11:47:59', 684, 1993, '4673fe018161cd533132791ca22ed8c434ea0a66', '{"id":1,"asset_id":58,"title":"\\u041c\\u0430\\u0442\\u0435\\u0440\\u0438\\u0430\\u043b \\u0432 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0435","alias":"material-v-razrabotke","introtext":"<p>\\u0414\\u0430\\u043d\\u043d\\u044b\\u0439 \\u043c\\u0430\\u0442\\u0435\\u0440\\u0438\\u0430\\u043b \\u043d\\u0430\\u0445\\u043e\\u0434\\u0438\\u0442\\u0441\\u044f \\u0432 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0435<\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-06-06 11:47:59","created_by":"684","created_by_alias":"","modified":"2016-06-06 11:47:59","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-06-06 11:47:59","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(2, 8, 5, '', '2016-06-08 07:16:22', 684, 586, '07fed81d46e9980c4b557bd346d0e10c41c4cefb', '{"id":8,"asset_id":62,"parent_id":"1","lft":"11","rgt":12,"level":1,"path":null,"extension":"com_content","title":"\\u041d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438","alias":"novosti","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"684","created_time":"2016-06-08 07:16:22","modified_user_id":null,"modified_time":"2016-06-08 07:16:22","hits":"0","language":"*","version":null}', 0),
(3, 2, 1, '', '2016-06-08 07:17:59', 684, 5490, '369cc1a7ace9618d32f518a9f4d81340f9dc0554', '{"id":2,"asset_id":63,"title":"\\u0421\\u043e\\u043e\\u0431\\u0449\\u0430\\u0435\\u043c \\u043e\\u0442\\u043b\\u0438\\u0447\\u043d\\u0443\\u044e \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u044c - \\u043d\\u0430 \\u043d\\u0430\\u0448\\u0435\\u043c \\u0441\\u0430\\u0439\\u0442\\u0435 \\u043f\\u043e\\u044f\\u0432\\u0438\\u043b\\u0441\\u044f \\u043a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u0438 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438 \\u0410\\u0422\\u0422 Inox Drain.","alias":"soobshchaem-otlichnuyu-novost-na-nashem-sajte-poyavilsya-katalog-produktsii-kompanii-att-inox-drain","introtext":"<p>\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b:\\u00a0<\\/p>\\r\\n","fulltext":"\\r\\n<p><span style=\\"font-size: 12.16px; line-height: 15.808px;\\">\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b:\\u00a0<\\/span><span style=\\"font-size: 12.16px; line-height: 15.808px;\\">\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b:\\u00a0<\\/span><span style=\\"font-size: 12.16px; line-height: 15.808px;\\">\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b:\\u00a0<\\/span><\\/p>\\r\\n<p>\\u00a0<\\/p>","state":1,"catid":"2","created":"2016-06-08 07:17:59","created_by":"684","created_by_alias":"","modified":"2016-06-08 07:17:59","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-06-08 07:17:59","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(4, 3, 1, '', '2016-06-08 07:18:53', 684, 5580, '9ca7267b0574883e738178fd74534a61dd2a540a', '{"id":3,"asset_id":64,"title":"\\u0421\\u043e\\u043e\\u0431\\u0449\\u0430\\u0435\\u043c \\u043e\\u0442\\u043b\\u0438\\u0447\\u043d\\u0443\\u044e \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u044c - \\u043d\\u0430 \\u043d\\u0430\\u0448\\u0435\\u043c \\u0441\\u0430\\u0439\\u0442\\u0435 \\u043f\\u043e\\u044f\\u0432\\u0438\\u043b\\u0441\\u044f \\u043a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u0438 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438 \\u0410\\u0422\\u0422 Inox Drain1.","alias":"soobshchaem-otlichnuyu-novost-na-nashem-sajte-poyavilsya-katalog-produktsii-kompanii-att-inox-drain1","introtext":"<p style=\\"font-size: 12.16px; line-height: 15.808px;\\">\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b:\\u00a0<\\/p>\\r\\n","fulltext":"\\r\\n<p style=\\"font-size: 12.16px; line-height: 15.808px;\\"><span style=\\"font-size: 12.16px; line-height: 15.808px;\\">\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b:\\u00a0<\\/span><span style=\\"font-size: 12.16px; line-height: 15.808px;\\">\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b:\\u00a0<\\/span><span style=\\"font-size: 12.16px; line-height: 15.808px;\\">\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b:\\u00a0<\\/span><\\/p>","state":1,"catid":"2","created":"2016-06-08 07:18:53","created_by":"684","created_by_alias":"","modified":"2016-06-08 07:18:53","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-06-08 07:18:53","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(5, 4, 1, '', '2016-06-08 07:19:03', 684, 5649, '1a2537ab5dd0a61c71ac4cf720aa1846d3028728', '{"id":4,"asset_id":65,"title":"\\u0421\\u043e\\u043e\\u0431\\u0449\\u0430\\u0435\\u043c \\u043e\\u0442\\u043b\\u0438\\u0447\\u043d\\u0443\\u044e \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u044c - \\u043d\\u0430 \\u043d\\u0430\\u0448\\u0435\\u043c \\u0441\\u0430\\u0439\\u0442\\u0435 \\u043f\\u043e\\u044f\\u0432\\u0438\\u043b\\u0441\\u044f \\u043a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u0438 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438 \\u0410\\u0422\\u0422 Inox Drain.","alias":"soobshchaem-otlichnuyu-novost-na-nashem-sajte-poyavilsya-katalog-produktsii-kompanii-att-inox-drain","introtext":"<p style=\\"font-size: 12.16px; line-height: 15.808px;\\">\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b:\\u00a0<\\/p>\\r\\n","fulltext":"\\r\\n<p style=\\"font-size: 12.16px; line-height: 15.808px;\\"><span style=\\"font-size: 12.16px; line-height: 15.808px;\\">\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b:\\u00a0<\\/span><span style=\\"font-size: 12.16px; line-height: 15.808px;\\">\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b:\\u00a0<\\/span><span style=\\"font-size: 12.16px; line-height: 15.808px;\\">\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b:\\u00a0<\\/span><\\/p>\\r\\n<p style=\\"font-size: 12.16px; line-height: 15.808px;\\">\\u00a0<\\/p>","state":1,"catid":"8","created":"2016-06-08 07:19:03","created_by":"684","created_by_alias":"","modified":"2016-06-08 07:19:03","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-06-08 07:19:03","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(6, 3, 1, '', '2016-06-08 07:19:11', 684, 5599, 'db7f809caefa53e24f9dab2ea6a359512bd01335', '{"id":3,"asset_id":"64","title":"\\u0421\\u043e\\u043e\\u0431\\u0449\\u0430\\u0435\\u043c \\u043e\\u0442\\u043b\\u0438\\u0447\\u043d\\u0443\\u044e \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u044c - \\u043d\\u0430 \\u043d\\u0430\\u0448\\u0435\\u043c \\u0441\\u0430\\u0439\\u0442\\u0435 \\u043f\\u043e\\u044f\\u0432\\u0438\\u043b\\u0441\\u044f \\u043a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u0438 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438 \\u0410\\u0422\\u0422 Inox Drain1.","alias":"soobshchaem-otlichnuyu-novost-na-nashem-sajte-poyavilsya-katalog-produktsii-kompanii-att-inox-drain1","introtext":"<p style=\\"font-size: 12.16px; line-height: 15.808px;\\">\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b:\\u00a0<\\/p>\\r\\n","fulltext":"\\r\\n<p style=\\"font-size: 12.16px; line-height: 15.808px;\\"><span style=\\"font-size: 12.16px; line-height: 15.808px;\\">\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b:\\u00a0<\\/span><span style=\\"font-size: 12.16px; line-height: 15.808px;\\">\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b:\\u00a0<\\/span><span style=\\"font-size: 12.16px; line-height: 15.808px;\\">\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b:\\u00a0<\\/span><\\/p>","state":1,"catid":"8","created":"2016-06-08 07:18:53","created_by":"684","created_by_alias":"","modified":"2016-06-08 07:19:11","modified_by":"684","checked_out":"684","checked_out_time":"2016-06-08 07:19:07","publish_up":"2016-06-08 07:18:53","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(7, 4, 1, '', '2016-06-08 07:19:20', 684, 5669, '973dbe6f7ea08cdead2a9ee8bfa2fa928d8ff2d0', '{"id":4,"asset_id":"65","title":"\\u0421\\u043e\\u043e\\u0431\\u0449\\u0430\\u0435\\u043c \\u043e\\u0442\\u043b\\u0438\\u0447\\u043d\\u0443\\u044e \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u044c - \\u043d\\u0430 \\u043d\\u0430\\u0448\\u0435\\u043c \\u0441\\u0430\\u0439\\u0442\\u0435 \\u043f\\u043e\\u044f\\u0432\\u0438\\u043b\\u0441\\u044f \\u043a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u0438 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438 \\u0410\\u0422\\u0422 Inox Drain2.","alias":"soobshchaem-otlichnuyu-novost-na-nashem-sajte-poyavilsya-katalog-produktsii-kompanii-att-inox-drain","introtext":"<p style=\\"font-size: 12.16px; line-height: 15.808px;\\">\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b:\\u00a0<\\/p>\\r\\n","fulltext":"\\r\\n<p style=\\"font-size: 12.16px; line-height: 15.808px;\\"><span style=\\"font-size: 12.16px; line-height: 15.808px;\\">\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b:\\u00a0<\\/span><span style=\\"font-size: 12.16px; line-height: 15.808px;\\">\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b:\\u00a0<\\/span><span style=\\"font-size: 12.16px; line-height: 15.808px;\\">\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b:\\u00a0<\\/span><\\/p>\\r\\n<p style=\\"font-size: 12.16px; line-height: 15.808px;\\">\\u00a0<\\/p>","state":1,"catid":"8","created":"2016-06-08 07:19:03","created_by":"684","created_by_alias":"","modified":"2016-06-08 07:19:20","modified_by":"684","checked_out":"684","checked_out_time":"2016-06-08 07:19:14","publish_up":"2016-06-08 07:19:03","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(8, 2, 1, '', '2016-06-08 07:24:21', 684, 5510, '9d24f330e8f9d358999595fe2c4491a1614ca9b7', '{"id":2,"asset_id":"63","title":"\\u0421\\u043e\\u043e\\u0431\\u0449\\u0430\\u0435\\u043c \\u043e\\u0442\\u043b\\u0438\\u0447\\u043d\\u0443\\u044e \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u044c - \\u043d\\u0430 \\u043d\\u0430\\u0448\\u0435\\u043c \\u0441\\u0430\\u0439\\u0442\\u0435 \\u043f\\u043e\\u044f\\u0432\\u0438\\u043b\\u0441\\u044f \\u043a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u0438 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438 \\u0410\\u0422\\u0422 Inox Drain.","alias":"soobshchaem-otlichnuyu-novost-na-nashem-sajte-poyavilsya-katalog-produktsii-kompanii-att-inox-drainn","introtext":"<p>\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b:\\u00a0<\\/p>\\r\\n","fulltext":"\\r\\n<p><span style=\\"font-size: 12.16px; line-height: 15.808px;\\">\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b:\\u00a0<\\/span><span style=\\"font-size: 12.16px; line-height: 15.808px;\\">\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b:\\u00a0<\\/span><span style=\\"font-size: 12.16px; line-height: 15.808px;\\">\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b:\\u00a0<\\/span><\\/p>\\r\\n<p>\\u00a0<\\/p>","state":1,"catid":"8","created":"2016-06-08 07:17:59","created_by":"684","created_by_alias":"","modified":"2016-06-08 07:24:21","modified_by":"684","checked_out":"684","checked_out_time":"2016-06-08 07:23:47","publish_up":"2016-06-08 07:17:59","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(9, 2, 1, '', '2016-06-08 07:57:27', 684, 5287, 'ed4ce326e2e25e2bd6a72e55d701ee51b8af5068', '{"id":2,"asset_id":"63","title":"\\u0421\\u043e\\u043e\\u0431\\u0449\\u0430\\u0435\\u043c \\u043e\\u0442\\u043b\\u0438\\u0447\\u043d\\u0443\\u044e \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u044c - \\u043d\\u0430 \\u043d\\u0430\\u0448\\u0435\\u043c \\u0441\\u0430\\u0439\\u0442\\u0435 \\u043f\\u043e\\u044f\\u0432\\u0438\\u043b\\u0441\\u044f \\u043a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u0438 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438 \\u0410\\u0422\\u0422 Inox Drain.","alias":"soobshchaem-otlichnuyu-novost-na-nashem-sajte-poyavilsya-katalog-produktsii-kompanii-att-inox-drainn","introtext":"<p>\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b:<\\/p>\\r\\n","fulltext":"\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b: \\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b: \\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b:<\\/p>","state":1,"catid":"8","created":"2016-06-08 07:17:59","created_by":"684","created_by_alias":"","modified":"2016-06-08 07:57:27","modified_by":"684","checked_out":"684","checked_out_time":"2016-06-08 07:57:02","publish_up":"2016-06-08 07:17:59","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `hu0fn_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(10, 2, 1, '', '2016-06-08 07:57:42', 684, 5269, '555c46672e2cee39064b1654836cdc2bc53f03c9', '{"id":2,"asset_id":"63","title":"\\u0421\\u043e\\u043e\\u0431\\u0449\\u0430\\u0435\\u043c \\u043e\\u0442\\u043b\\u0438\\u0447\\u043d\\u0443\\u044e \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u044c - \\u043d\\u0430 \\u043d\\u0430\\u0448\\u0435\\u043c \\u0441\\u0430\\u0439\\u0442\\u0435 \\u043f\\u043e\\u044f\\u0432\\u0438\\u043b\\u0441\\u044f \\u043a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u0438 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438 \\u0410\\u0422\\u0422 Inox Drain.","alias":"soobshchaem-otlichnuyu-novost-na-nashem-sajte-poyavilsya-katalog-produktsii-kompanii-att-inox-drainn","introtext":"<p>\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b:<\\/p>\\r\\n","fulltext":"\\r\\n<p>\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b: \\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b: \\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b:<\\/p>","state":1,"catid":"8","created":"2016-06-08 07:17:59","created_by":"684","created_by_alias":"","modified":"2016-06-08 07:57:42","modified_by":"684","checked_out":"684","checked_out_time":"2016-06-08 07:57:27","publish_up":"2016-06-08 07:17:59","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":4,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(11, 3, 1, '', '2016-06-08 07:58:24', 684, 5288, '638a55bba59699f3b7c1bc28ffaace0b01738196', '{"id":3,"asset_id":"64","title":"\\u0421\\u043e\\u043e\\u0431\\u0449\\u0430\\u0435\\u043c \\u043e\\u0442\\u043b\\u0438\\u0447\\u043d\\u0443\\u044e \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u044c - \\u043d\\u0430 \\u043d\\u0430\\u0448\\u0435\\u043c \\u0441\\u0430\\u0439\\u0442\\u0435 \\u043f\\u043e\\u044f\\u0432\\u0438\\u043b\\u0441\\u044f \\u043a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u0438 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438 \\u0410\\u0422\\u0422 Inox Drain1.","alias":"soobshchaem-otlichnuyu-novost-na-nashem-sajte-poyavilsya-katalog-produktsii-kompanii-att-inox-drain1","introtext":"<p>\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b:<\\/p>\\r\\n","fulltext":"\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b: \\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b: \\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b:<\\/p>","state":1,"catid":"8","created":"2016-06-08 07:18:53","created_by":"684","created_by_alias":"","modified":"2016-06-08 07:58:24","modified_by":"684","checked_out":"684","checked_out_time":"2016-06-08 07:57:58","publish_up":"2016-06-08 07:18:53","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"1","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(12, 3, 1, '', '2016-06-08 07:58:45', 684, 5270, 'b22f2588775ed80d41458edf2740033eb91de6c0', '{"id":3,"asset_id":"64","title":"\\u0421\\u043e\\u043e\\u0431\\u0449\\u0430\\u0435\\u043c \\u043e\\u0442\\u043b\\u0438\\u0447\\u043d\\u0443\\u044e \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u044c - \\u043d\\u0430 \\u043d\\u0430\\u0448\\u0435\\u043c \\u0441\\u0430\\u0439\\u0442\\u0435 \\u043f\\u043e\\u044f\\u0432\\u0438\\u043b\\u0441\\u044f \\u043a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u0438 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438 \\u0410\\u0422\\u0422 Inox Drain1.","alias":"soobshchaem-otlichnuyu-novost-na-nashem-sajte-poyavilsya-katalog-produktsii-kompanii-att-inox-drain1","introtext":"<p>\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b:<\\/p>\\r\\n","fulltext":"\\r\\n<p>\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b: \\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b: \\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b:<\\/p>","state":1,"catid":"8","created":"2016-06-08 07:18:53","created_by":"684","created_by_alias":"","modified":"2016-06-08 07:58:45","modified_by":"684","checked_out":"684","checked_out_time":"2016-06-08 07:58:24","publish_up":"2016-06-08 07:18:53","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":4,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"1","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(13, 4, 1, '', '2016-06-08 07:59:11', 684, 5269, '7917b01ead6e9124bbc29dec5f49c382753f79c5', '{"id":4,"asset_id":"65","title":"\\u0421\\u043e\\u043e\\u0431\\u0449\\u0430\\u0435\\u043c \\u043e\\u0442\\u043b\\u0438\\u0447\\u043d\\u0443\\u044e \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u044c - \\u043d\\u0430 \\u043d\\u0430\\u0448\\u0435\\u043c \\u0441\\u0430\\u0439\\u0442\\u0435 \\u043f\\u043e\\u044f\\u0432\\u0438\\u043b\\u0441\\u044f \\u043a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u0438 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438 \\u0410\\u0422\\u0422 Inox Drain2.","alias":"soobshchaem-otlichnuyu-novost-na-nashem-sajte-poyavilsya-katalog-produktsii-kompanii-att-inox-drain","introtext":"<p>\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b:<\\/p>\\r\\n","fulltext":"\\r\\n<p>\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b: \\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b: \\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b:<\\/p>","state":1,"catid":"8","created":"2016-06-08 07:19:03","created_by":"684","created_by_alias":"","modified":"2016-06-08 07:59:11","modified_by":"684","checked_out":"684","checked_out_time":"2016-06-08 07:58:53","publish_up":"2016-06-08 07:19:03","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(14, 5, 1, '', '2016-06-10 10:38:04', 684, 5269, 'ab430c60d79e07fdd932e435bd5af309e034d4c7', '{"id":5,"asset_id":78,"title":"\\u0421\\u043e\\u043e\\u0431\\u0449\\u0430\\u0435\\u043c \\u043e\\u0442\\u043b\\u0438\\u0447\\u043d\\u0443\\u044e \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u044c - \\u043d\\u0430 \\u043d\\u0430\\u0448\\u0435\\u043c \\u0441\\u0430\\u0439\\u0442\\u0435 \\u043f\\u043e\\u044f\\u0432\\u0438\\u043b\\u0441\\u044f \\u043a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u0438 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438 \\u0410\\u0422\\u0422 Inox Drain2. (2)","alias":"soobshchaem-otlichnuyu-novost-na-nashem-sajte-poyavilsya-katalog-produktsii-kompanii-att-inox-drain-2","introtext":"<p>\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b:<\\/p>\\r\\n","fulltext":"\\r\\n<p>\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b: \\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b: \\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b:<\\/p>","state":0,"catid":8,"created":"2016-06-08 07:19:03","created_by":"684","created_by_alias":"","modified":"2016-06-10 10:38:04","modified_by":"684","checked_out":"0","checked_out_time":"0000-00-00 00:00:00","publish_up":"2016-06-08 07:19:03","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":"3","ordering":"0","metakey":"","metadesc":"","access":"1","hits":0,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(15, 6, 1, '', '2016-06-10 10:38:04', 684, 5272, 'a292cfe4f4e67f8855218a88907c3dcc4266d611', '{"id":6,"asset_id":79,"title":"\\u0421\\u043e\\u043e\\u0431\\u0449\\u0430\\u0435\\u043c \\u043e\\u0442\\u043b\\u0438\\u0447\\u043d\\u0443\\u044e \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u044c - \\u043d\\u0430 \\u043d\\u0430\\u0448\\u0435\\u043c \\u0441\\u0430\\u0439\\u0442\\u0435 \\u043f\\u043e\\u044f\\u0432\\u0438\\u043b\\u0441\\u044f \\u043a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u0438 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438 \\u0410\\u0422\\u0422 Inox Drain1. (2)","alias":"soobshchaem-otlichnuyu-novost-na-nashem-sajte-poyavilsya-katalog-produktsii-kompanii-att-inox-drain1-2","introtext":"<p>\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b:<\\/p>\\r\\n","fulltext":"\\r\\n<p>\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b: \\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b: \\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b:<\\/p>","state":0,"catid":8,"created":"2016-06-08 07:18:53","created_by":"684","created_by_alias":"","modified":"2016-06-10 10:38:04","modified_by":"684","checked_out":"684","checked_out_time":"2016-06-08 07:58:53","publish_up":"2016-06-08 07:18:53","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":"4","ordering":"0","metakey":"","metadesc":"","access":"1","hits":0,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(16, 7, 1, '', '2016-06-10 10:38:04', 684, 5271, 'dfb94fe85816012fb191ff26a903c7fd120e33a2', '{"id":7,"asset_id":80,"title":"\\u0421\\u043e\\u043e\\u0431\\u0449\\u0430\\u0435\\u043c \\u043e\\u0442\\u043b\\u0438\\u0447\\u043d\\u0443\\u044e \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u044c - \\u043d\\u0430 \\u043d\\u0430\\u0448\\u0435\\u043c \\u0441\\u0430\\u0439\\u0442\\u0435 \\u043f\\u043e\\u044f\\u0432\\u0438\\u043b\\u0441\\u044f \\u043a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u0438 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438 \\u0410\\u0422\\u0422 Inox Drain. (2)","alias":"soobshchaem-otlichnuyu-novost-na-nashem-sajte-poyavilsya-katalog-produktsii-kompanii-att-inox-drainn-2","introtext":"<p>\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b:<\\/p>\\r\\n","fulltext":"\\r\\n<p>\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b: \\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b: \\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b:<\\/p>","state":0,"catid":8,"created":"2016-06-08 07:17:59","created_by":"684","created_by_alias":"","modified":"2016-06-10 10:38:04","modified_by":"684","checked_out":"684","checked_out_time":"2016-06-08 07:58:56","publish_up":"2016-06-08 07:17:59","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":"4","ordering":"1","metakey":"","metadesc":"","access":"1","hits":0,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(17, 8, 1, '', '2016-06-10 10:38:35', 684, 5271, 'c6f6fe8dff444ffb25c6499cb3612c36cb2b5fee', '{"id":8,"asset_id":81,"title":"\\u0421\\u043e\\u043e\\u0431\\u0449\\u0430\\u0435\\u043c \\u043e\\u0442\\u043b\\u0438\\u0447\\u043d\\u0443\\u044e \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u044c - \\u043d\\u0430 \\u043d\\u0430\\u0448\\u0435\\u043c \\u0441\\u0430\\u0439\\u0442\\u0435 \\u043f\\u043e\\u044f\\u0432\\u0438\\u043b\\u0441\\u044f \\u043a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u0438 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438 \\u0410\\u0422\\u0422 Inox Drain. (3)","alias":"soobshchaem-otlichnuyu-novost-na-nashem-sajte-poyavilsya-katalog-produktsii-kompanii-att-inox-drainn-3","introtext":"<p>\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b:<\\/p>\\r\\n","fulltext":"\\r\\n<p>\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b: \\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b: \\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b:<\\/p>","state":0,"catid":8,"created":"2016-06-08 07:17:59","created_by":"684","created_by_alias":"","modified":"2016-06-10 10:38:35","modified_by":"684","checked_out":"684","checked_out_time":"2016-06-08 07:58:56","publish_up":"2016-06-08 07:17:59","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":"4","ordering":"1","metakey":"","metadesc":"","access":"1","hits":0,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `hu0fn_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(18, 9, 1, '', '2016-06-10 10:38:35', 684, 5272, '9352db44219a9d33948376616df7f6efe2d54d6c', '{"id":9,"asset_id":82,"title":"\\u0421\\u043e\\u043e\\u0431\\u0449\\u0430\\u0435\\u043c \\u043e\\u0442\\u043b\\u0438\\u0447\\u043d\\u0443\\u044e \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u044c - \\u043d\\u0430 \\u043d\\u0430\\u0448\\u0435\\u043c \\u0441\\u0430\\u0439\\u0442\\u0435 \\u043f\\u043e\\u044f\\u0432\\u0438\\u043b\\u0441\\u044f \\u043a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u0438 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438 \\u0410\\u0422\\u0422 Inox Drain1. (3)","alias":"soobshchaem-otlichnuyu-novost-na-nashem-sajte-poyavilsya-katalog-produktsii-kompanii-att-inox-drain1-3","introtext":"<p>\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b:<\\/p>\\r\\n","fulltext":"\\r\\n<p>\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b: \\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b: \\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b:<\\/p>","state":0,"catid":8,"created":"2016-06-08 07:18:53","created_by":"684","created_by_alias":"","modified":"2016-06-10 10:38:35","modified_by":"684","checked_out":"684","checked_out_time":"2016-06-08 07:58:53","publish_up":"2016-06-08 07:18:53","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":"4","ordering":"0","metakey":"","metadesc":"","access":"1","hits":0,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(19, 10, 1, '', '2016-06-10 10:38:35', 684, 5270, '877e5d882ce9a5ff7647dd6b3b23c96f5c789610', '{"id":10,"asset_id":83,"title":"\\u0421\\u043e\\u043e\\u0431\\u0449\\u0430\\u0435\\u043c \\u043e\\u0442\\u043b\\u0438\\u0447\\u043d\\u0443\\u044e \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u044c - \\u043d\\u0430 \\u043d\\u0430\\u0448\\u0435\\u043c \\u0441\\u0430\\u0439\\u0442\\u0435 \\u043f\\u043e\\u044f\\u0432\\u0438\\u043b\\u0441\\u044f \\u043a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u0438 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438 \\u0410\\u0422\\u0422 Inox Drain2. (3)","alias":"soobshchaem-otlichnuyu-novost-na-nashem-sajte-poyavilsya-katalog-produktsii-kompanii-att-inox-drain-3","introtext":"<p>\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b:<\\/p>\\r\\n","fulltext":"\\r\\n<p>\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b: \\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b: \\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b:<\\/p>","state":0,"catid":8,"created":"2016-06-08 07:19:03","created_by":"684","created_by_alias":"","modified":"2016-06-10 10:38:35","modified_by":"684","checked_out":"0","checked_out_time":"0000-00-00 00:00:00","publish_up":"2016-06-08 07:19:03","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":"3","ordering":"0","metakey":"","metadesc":"","access":"1","hits":0,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(20, 11, 1, '', '2016-06-10 10:38:35', 684, 5270, '74330c147fd63e36277ea578b1920f3c3a6cfdac', '{"id":11,"asset_id":84,"title":"\\u0421\\u043e\\u043e\\u0431\\u0449\\u0430\\u0435\\u043c \\u043e\\u0442\\u043b\\u0438\\u0447\\u043d\\u0443\\u044e \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u044c - \\u043d\\u0430 \\u043d\\u0430\\u0448\\u0435\\u043c \\u0441\\u0430\\u0439\\u0442\\u0435 \\u043f\\u043e\\u044f\\u0432\\u0438\\u043b\\u0441\\u044f \\u043a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u0438 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438 \\u0410\\u0422\\u0422 Inox Drain2. (4)","alias":"soobshchaem-otlichnuyu-novost-na-nashem-sajte-poyavilsya-katalog-produktsii-kompanii-att-inox-drain-4","introtext":"<p>\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b:<\\/p>\\r\\n","fulltext":"\\r\\n<p>\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b: \\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b: \\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b:<\\/p>","state":0,"catid":8,"created":"2016-06-08 07:19:03","created_by":"684","created_by_alias":"","modified":"2016-06-10 10:38:35","modified_by":"684","checked_out":"0","checked_out_time":"0000-00-00 00:00:00","publish_up":"2016-06-08 07:19:03","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":"3","ordering":"0","metakey":"","metadesc":"","access":"1","hits":0,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(21, 12, 1, '', '2016-06-10 10:38:35', 684, 5273, '06dbd28e8028a73812f114f112dcf45799185cf6', '{"id":12,"asset_id":85,"title":"\\u0421\\u043e\\u043e\\u0431\\u0449\\u0430\\u0435\\u043c \\u043e\\u0442\\u043b\\u0438\\u0447\\u043d\\u0443\\u044e \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u044c - \\u043d\\u0430 \\u043d\\u0430\\u0448\\u0435\\u043c \\u0441\\u0430\\u0439\\u0442\\u0435 \\u043f\\u043e\\u044f\\u0432\\u0438\\u043b\\u0441\\u044f \\u043a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u0438 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438 \\u0410\\u0422\\u0422 Inox Drain1. (4)","alias":"soobshchaem-otlichnuyu-novost-na-nashem-sajte-poyavilsya-katalog-produktsii-kompanii-att-inox-drain1-4","introtext":"<p>\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b:<\\/p>\\r\\n","fulltext":"\\r\\n<p>\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b: \\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b: \\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b:<\\/p>","state":0,"catid":8,"created":"2016-06-08 07:18:53","created_by":"684","created_by_alias":"","modified":"2016-06-10 10:38:35","modified_by":"684","checked_out":"684","checked_out_time":"2016-06-08 07:58:53","publish_up":"2016-06-08 07:18:53","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":"4","ordering":"0","metakey":"","metadesc":"","access":"1","hits":0,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(22, 13, 1, '', '2016-06-10 10:38:35', 684, 5272, '78247e93f1ec15883f9e38d3acc4af62e6365678', '{"id":13,"asset_id":86,"title":"\\u0421\\u043e\\u043e\\u0431\\u0449\\u0430\\u0435\\u043c \\u043e\\u0442\\u043b\\u0438\\u0447\\u043d\\u0443\\u044e \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u044c - \\u043d\\u0430 \\u043d\\u0430\\u0448\\u0435\\u043c \\u0441\\u0430\\u0439\\u0442\\u0435 \\u043f\\u043e\\u044f\\u0432\\u0438\\u043b\\u0441\\u044f \\u043a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u0438 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438 \\u0410\\u0422\\u0422 Inox Drain. (4)","alias":"soobshchaem-otlichnuyu-novost-na-nashem-sajte-poyavilsya-katalog-produktsii-kompanii-att-inox-drainn-4","introtext":"<p>\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b:<\\/p>\\r\\n","fulltext":"\\r\\n<p>\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b: \\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b: \\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0410\\u0422\\u0422 Inox Drain \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0432\\u043e\\u0434\\u043e\\u043e\\u0442\\u0432\\u043e\\u0434\\u0430 \\u0438\\u0437 \\u043d\\u0435\\u0440\\u0436\\u0430\\u0432\\u0435\\u044e\\u0449\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043b\\u0438.\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u043f\\u0440\\u0438\\u043d\\u0446\\u0438\\u043f\\u044b:<\\/p>","state":0,"catid":8,"created":"2016-06-08 07:17:59","created_by":"684","created_by_alias":"","modified":"2016-06-10 10:38:35","modified_by":"684","checked_out":"684","checked_out_time":"2016-06-08 07:58:56","publish_up":"2016-06-08 07:17:59","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":"4","ordering":"1","metakey":"","metadesc":"","access":"1","hits":0,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_updates`
--

CREATE TABLE IF NOT EXISTS `hu0fn_updates` (
  `update_id` int(11) NOT NULL,
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
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_update_sites`
--

CREATE TABLE IF NOT EXISTS `hu0fn_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

--
-- Дамп данных таблицы `hu0fn_update_sites`
--

INSERT INTO `hu0fn_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 1465982129, ''),
(2, 'Joomla! Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 1465982129, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 1, 0, ''),
(4, 'Joomla! Update Component Update Site', 'extension', 'http://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 0, ''),
(5, 'WebInstaller Update Site', 'extension', 'http://appscdn.joomla.org/webapps/jedapps/webinstaller.xml', 1, 0, ''),
(6, 'JoomGallery Update Service', 'collection', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3.xml', 1, 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `hu0fn_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

--
-- Дамп данных таблицы `hu0fn_update_sites_extensions`
--

INSERT INTO `hu0fn_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(3, 10002),
(4, 28),
(5, 10010),
(6, 10016);

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_usergroups`
--

CREATE TABLE IF NOT EXISTS `hu0fn_usergroups` (
  `id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `hu0fn_usergroups`
--

INSERT INTO `hu0fn_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_users`
--

CREATE TABLE IF NOT EXISTS `hu0fn_users` (
  `id` int(11) NOT NULL,
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
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login'
) ENGINE=InnoDB AUTO_INCREMENT=685 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `hu0fn_users`
--

INSERT INTO `hu0fn_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(684, 'Super User', 'admin', 'bolonikov@medialine.by', '$2y$10$IMfjQlCDnxmfV7o3Ih5k1.yygk5oUXk5D5DRzFgLOSFfMaUgIrvJi', 0, 1, '2016-06-03 11:04:36', '2016-06-15 09:15:25', '0', '', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_user_keys`
--

CREATE TABLE IF NOT EXISTS `hu0fn_user_keys` (
  `id` int(10) unsigned NOT NULL,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_user_notes`
--

CREATE TABLE IF NOT EXISTS `hu0fn_user_notes` (
  `id` int(10) unsigned NOT NULL,
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
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_user_profiles`
--

CREATE TABLE IF NOT EXISTS `hu0fn_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `hu0fn_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `hu0fn_user_usergroup_map`
--

INSERT INTO `hu0fn_user_usergroup_map` (`user_id`, `group_id`) VALUES
(684, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_utf8_conversion`
--

CREATE TABLE IF NOT EXISTS `hu0fn_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `hu0fn_utf8_conversion`
--

INSERT INTO `hu0fn_utf8_conversion` (`converted`) VALUES
(2);

-- --------------------------------------------------------

--
-- Структура таблицы `hu0fn_viewlevels`
--

CREATE TABLE IF NOT EXISTS `hu0fn_viewlevels` (
  `id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `hu0fn_viewlevels`
--

INSERT INTO `hu0fn_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `hu0fn_assets`
--
ALTER TABLE `hu0fn_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Индексы таблицы `hu0fn_associations`
--
ALTER TABLE `hu0fn_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

--
-- Индексы таблицы `hu0fn_banners`
--
ALTER TABLE `hu0fn_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  ADD KEY `idx_banner_catid` (`catid`),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `hu0fn_banner_clients`
--
ALTER TABLE `hu0fn_banner_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

--
-- Индексы таблицы `hu0fn_banner_tracks`
--
ALTER TABLE `hu0fn_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  ADD KEY `idx_track_date` (`track_date`),
  ADD KEY `idx_track_type` (`track_type`),
  ADD KEY `idx_banner_id` (`banner_id`);

--
-- Индексы таблицы `hu0fn_categories`
--
ALTER TABLE `hu0fn_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `hu0fn_contact_details`
--
ALTER TABLE `hu0fn_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Индексы таблицы `hu0fn_content`
--
ALTER TABLE `hu0fn_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Индексы таблицы `hu0fn_contentitem_tag_map`
--
ALTER TABLE `hu0fn_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  ADD KEY `idx_tag_type` (`tag_id`,`type_id`),
  ADD KEY `idx_date_id` (`tag_date`,`tag_id`),
  ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Индексы таблицы `hu0fn_content_frontpage`
--
ALTER TABLE `hu0fn_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Индексы таблицы `hu0fn_content_rating`
--
ALTER TABLE `hu0fn_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Индексы таблицы `hu0fn_content_types`
--
ALTER TABLE `hu0fn_content_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_alias` (`type_alias`(100));

--
-- Индексы таблицы `hu0fn_extensions`
--
ALTER TABLE `hu0fn_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Индексы таблицы `hu0fn_finder_filters`
--
ALTER TABLE `hu0fn_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Индексы таблицы `hu0fn_finder_links`
--
ALTER TABLE `hu0fn_finder_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_title` (`title`(100)),
  ADD KEY `idx_md5` (`md5sum`),
  ADD KEY `idx_url` (`url`(75)),
  ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Индексы таблицы `hu0fn_finder_links_terms0`
--
ALTER TABLE `hu0fn_finder_links_terms0`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `hu0fn_finder_links_terms1`
--
ALTER TABLE `hu0fn_finder_links_terms1`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `hu0fn_finder_links_terms2`
--
ALTER TABLE `hu0fn_finder_links_terms2`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `hu0fn_finder_links_terms3`
--
ALTER TABLE `hu0fn_finder_links_terms3`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `hu0fn_finder_links_terms4`
--
ALTER TABLE `hu0fn_finder_links_terms4`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `hu0fn_finder_links_terms5`
--
ALTER TABLE `hu0fn_finder_links_terms5`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `hu0fn_finder_links_terms6`
--
ALTER TABLE `hu0fn_finder_links_terms6`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `hu0fn_finder_links_terms7`
--
ALTER TABLE `hu0fn_finder_links_terms7`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `hu0fn_finder_links_terms8`
--
ALTER TABLE `hu0fn_finder_links_terms8`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `hu0fn_finder_links_terms9`
--
ALTER TABLE `hu0fn_finder_links_terms9`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `hu0fn_finder_links_termsa`
--
ALTER TABLE `hu0fn_finder_links_termsa`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `hu0fn_finder_links_termsb`
--
ALTER TABLE `hu0fn_finder_links_termsb`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `hu0fn_finder_links_termsc`
--
ALTER TABLE `hu0fn_finder_links_termsc`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `hu0fn_finder_links_termsd`
--
ALTER TABLE `hu0fn_finder_links_termsd`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `hu0fn_finder_links_termse`
--
ALTER TABLE `hu0fn_finder_links_termse`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `hu0fn_finder_links_termsf`
--
ALTER TABLE `hu0fn_finder_links_termsf`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `hu0fn_finder_taxonomy`
--
ALTER TABLE `hu0fn_finder_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `state` (`state`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `access` (`access`),
  ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Индексы таблицы `hu0fn_finder_taxonomy_map`
--
ALTER TABLE `hu0fn_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `node_id` (`node_id`);

--
-- Индексы таблицы `hu0fn_finder_terms`
--
ALTER TABLE `hu0fn_finder_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `idx_term` (`term`),
  ADD KEY `idx_term_phrase` (`term`,`phrase`),
  ADD KEY `idx_stem_phrase` (`stem`,`phrase`),
  ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Индексы таблицы `hu0fn_finder_terms_common`
--
ALTER TABLE `hu0fn_finder_terms_common`
  ADD KEY `idx_word_lang` (`term`,`language`),
  ADD KEY `idx_lang` (`language`);

--
-- Индексы таблицы `hu0fn_finder_tokens`
--
ALTER TABLE `hu0fn_finder_tokens`
  ADD KEY `idx_word` (`term`),
  ADD KEY `idx_context` (`context`);

--
-- Индексы таблицы `hu0fn_finder_tokens_aggregate`
--
ALTER TABLE `hu0fn_finder_tokens_aggregate`
  ADD KEY `token` (`term`),
  ADD KEY `keyword_id` (`term_id`);

--
-- Индексы таблицы `hu0fn_finder_types`
--
ALTER TABLE `hu0fn_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Индексы таблицы `hu0fn_joomgallery`
--
ALTER TABLE `hu0fn_joomgallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_owner` (`owner`);

--
-- Индексы таблицы `hu0fn_joomgallery_category_details`
--
ALTER TABLE `hu0fn_joomgallery_category_details`
  ADD PRIMARY KEY (`id`,`details_key`);

--
-- Индексы таблицы `hu0fn_joomgallery_catg`
--
ALTER TABLE `hu0fn_joomgallery_catg`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Индексы таблицы `hu0fn_joomgallery_comments`
--
ALTER TABLE `hu0fn_joomgallery_comments`
  ADD PRIMARY KEY (`cmtid`),
  ADD KEY `idx_cmtpic` (`cmtpic`);

--
-- Индексы таблицы `hu0fn_joomgallery_config`
--
ALTER TABLE `hu0fn_joomgallery_config`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `hu0fn_joomgallery_countstop`
--
ALTER TABLE `hu0fn_joomgallery_countstop`
  ADD KEY `idx_cspicid` (`cspicid`);

--
-- Индексы таблицы `hu0fn_joomgallery_image_details`
--
ALTER TABLE `hu0fn_joomgallery_image_details`
  ADD PRIMARY KEY (`id`,`details_key`);

--
-- Индексы таблицы `hu0fn_joomgallery_maintenance`
--
ALTER TABLE `hu0fn_joomgallery_maintenance`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `hu0fn_joomgallery_nameshields`
--
ALTER TABLE `hu0fn_joomgallery_nameshields`
  ADD PRIMARY KEY (`nid`),
  ADD KEY `idx_picid` (`npicid`);

--
-- Индексы таблицы `hu0fn_joomgallery_orphans`
--
ALTER TABLE `hu0fn_joomgallery_orphans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fullpath` (`fullpath`);

--
-- Индексы таблицы `hu0fn_joomgallery_users`
--
ALTER TABLE `hu0fn_joomgallery_users`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `idx_uid` (`uuserid`);

--
-- Индексы таблицы `hu0fn_joomgallery_votes`
--
ALTER TABLE `hu0fn_joomgallery_votes`
  ADD PRIMARY KEY (`voteid`),
  ADD KEY `idx_picid` (`picid`);

--
-- Индексы таблицы `hu0fn_jshopping_addons`
--
ALTER TABLE `hu0fn_jshopping_addons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `hu0fn_jshopping_attr`
--
ALTER TABLE `hu0fn_jshopping_attr`
  ADD PRIMARY KEY (`attr_id`),
  ADD KEY `group` (`group`),
  ADD KEY `attr_ordering` (`attr_ordering`),
  ADD KEY `attr_type` (`attr_type`),
  ADD KEY `independent` (`independent`),
  ADD KEY `allcats` (`allcats`);

--
-- Индексы таблицы `hu0fn_jshopping_attr_groups`
--
ALTER TABLE `hu0fn_jshopping_attr_groups`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `hu0fn_jshopping_attr_values`
--
ALTER TABLE `hu0fn_jshopping_attr_values`
  ADD PRIMARY KEY (`value_id`),
  ADD KEY `attr_id` (`attr_id`),
  ADD KEY `value_ordering` (`value_ordering`);

--
-- Индексы таблицы `hu0fn_jshopping_cart_temp`
--
ALTER TABLE `hu0fn_jshopping_cart_temp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cookie` (`id_cookie`),
  ADD KEY `type_cart` (`type_cart`);

--
-- Индексы таблицы `hu0fn_jshopping_categories`
--
ALTER TABLE `hu0fn_jshopping_categories`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `sort_add_date` (`category_add_date`),
  ADD KEY `category_parent_id` (`category_parent_id`),
  ADD KEY `category_publish` (`category_publish`),
  ADD KEY `category_ordertype` (`category_ordertype`),
  ADD KEY `category_template` (`category_template`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `category_add_date` (`category_add_date`),
  ADD KEY `products_page` (`products_page`),
  ADD KEY `products_row` (`products_row`),
  ADD KEY `access` (`access`),
  ADD KEY `category_publish_2` (`category_publish`,`access`);

--
-- Индексы таблицы `hu0fn_jshopping_config`
--
ALTER TABLE `hu0fn_jshopping_config`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `hu0fn_jshopping_config_display_prices`
--
ALTER TABLE `hu0fn_jshopping_config_display_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `display_price` (`display_price`),
  ADD KEY `display_price_firma` (`display_price_firma`);

--
-- Индексы таблицы `hu0fn_jshopping_config_seo`
--
ALTER TABLE `hu0fn_jshopping_config_seo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`),
  ADD KEY `ordering` (`ordering`);

--
-- Индексы таблицы `hu0fn_jshopping_config_statictext`
--
ALTER TABLE `hu0fn_jshopping_config_statictext`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`),
  ADD KEY `use_for_return_policy` (`use_for_return_policy`);

--
-- Индексы таблицы `hu0fn_jshopping_countries`
--
ALTER TABLE `hu0fn_jshopping_countries`
  ADD PRIMARY KEY (`country_id`),
  ADD KEY `country_publish` (`country_publish`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `country_code` (`country_code`),
  ADD KEY `country_code_2` (`country_code_2`);

--
-- Индексы таблицы `hu0fn_jshopping_coupons`
--
ALTER TABLE `hu0fn_jshopping_coupons`
  ADD PRIMARY KEY (`coupon_id`),
  ADD KEY `coupon_type` (`coupon_type`),
  ADD KEY `coupon_code` (`coupon_code`),
  ADD KEY `tax_id` (`tax_id`),
  ADD KEY `used` (`used`),
  ADD KEY `for_user_id` (`for_user_id`),
  ADD KEY `coupon_publish` (`coupon_publish`),
  ADD KEY `coupon_start_date` (`coupon_start_date`),
  ADD KEY `coupon_expire_date` (`coupon_expire_date`),
  ADD KEY `finished_after_used` (`finished_after_used`);

--
-- Индексы таблицы `hu0fn_jshopping_currencies`
--
ALTER TABLE `hu0fn_jshopping_currencies`
  ADD PRIMARY KEY (`currency_id`),
  ADD KEY `currency_code_iso` (`currency_code_iso`),
  ADD KEY `currency_code_num` (`currency_code_num`),
  ADD KEY `currency_ordering` (`currency_ordering`),
  ADD KEY `currency_publish` (`currency_publish`);

--
-- Индексы таблицы `hu0fn_jshopping_delivery_times`
--
ALTER TABLE `hu0fn_jshopping_delivery_times`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `hu0fn_jshopping_free_attr`
--
ALTER TABLE `hu0fn_jshopping_free_attr`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `hu0fn_jshopping_import_export`
--
ALTER TABLE `hu0fn_jshopping_import_export`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `hu0fn_jshopping_languages`
--
ALTER TABLE `hu0fn_jshopping_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `publish` (`publish`),
  ADD KEY `ordering` (`ordering`);

--
-- Индексы таблицы `hu0fn_jshopping_manufacturers`
--
ALTER TABLE `hu0fn_jshopping_manufacturers`
  ADD PRIMARY KEY (`manufacturer_id`),
  ADD KEY `manufacturer_publish` (`manufacturer_publish`),
  ADD KEY `products_page` (`products_page`),
  ADD KEY `products_row` (`products_row`),
  ADD KEY `ordering` (`ordering`);

--
-- Индексы таблицы `hu0fn_jshopping_orders`
--
ALTER TABLE `hu0fn_jshopping_orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `order_number` (`order_number`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `currency_code_iso` (`currency_code_iso`),
  ADD KEY `order_status` (`order_status`),
  ADD KEY `order_created` (`order_created`),
  ADD KEY `shipping_method_id` (`shipping_method_id`),
  ADD KEY `delivery_times_id` (`delivery_times_id`),
  ADD KEY `payment_method_id` (`payment_method_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `client_type` (`client_type`),
  ADD KEY `country` (`country`),
  ADD KEY `phone` (`phone`),
  ADD KEY `d_title` (`d_title`),
  ADD KEY `d_country` (`d_country`),
  ADD KEY `display_price` (`display_price`),
  ADD KEY `vendor_type` (`vendor_type`),
  ADD KEY `vendor_id` (`vendor_id`),
  ADD KEY `lang` (`lang`);

--
-- Индексы таблицы `hu0fn_jshopping_order_history`
--
ALTER TABLE `hu0fn_jshopping_order_history`
  ADD PRIMARY KEY (`order_history_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `order_status_id` (`order_status_id`),
  ADD KEY `status_date_added` (`status_date_added`),
  ADD KEY `customer_notify` (`customer_notify`);

--
-- Индексы таблицы `hu0fn_jshopping_order_item`
--
ALTER TABLE `hu0fn_jshopping_order_item`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `delivery_times_id` (`delivery_times_id`),
  ADD KEY `vendor_id` (`vendor_id`);

--
-- Индексы таблицы `hu0fn_jshopping_order_status`
--
ALTER TABLE `hu0fn_jshopping_order_status`
  ADD PRIMARY KEY (`status_id`),
  ADD KEY `status_code` (`status_code`);

--
-- Индексы таблицы `hu0fn_jshopping_payment_method`
--
ALTER TABLE `hu0fn_jshopping_payment_method`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `payment_code` (`payment_code`),
  ADD KEY `payment_publish` (`payment_publish`),
  ADD KEY `payment_ordering` (`payment_ordering`),
  ADD KEY `payment_type` (`payment_type`),
  ADD KEY `price_type` (`price_type`),
  ADD KEY `tax_id` (`tax_id`);

--
-- Индексы таблицы `hu0fn_jshopping_payment_trx`
--
ALTER TABLE `hu0fn_jshopping_payment_trx`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `transaction` (`transaction`),
  ADD KEY `rescode` (`rescode`),
  ADD KEY `status_id` (`status_id`);

--
-- Индексы таблицы `hu0fn_jshopping_payment_trx_data`
--
ALTER TABLE `hu0fn_jshopping_payment_trx_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trx_id` (`trx_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `key` (`key`);

--
-- Индексы таблицы `hu0fn_jshopping_products`
--
ALTER TABLE `hu0fn_jshopping_products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `product_manufacturer_id` (`product_manufacturer_id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `product_ean` (`product_ean`),
  ADD KEY `unlimited` (`unlimited`),
  ADD KEY `product_publish` (`product_publish`),
  ADD KEY `product_tax_id` (`product_tax_id`),
  ADD KEY `currency_id` (`currency_id`),
  ADD KEY `product_price` (`product_price`),
  ADD KEY `min_price` (`min_price`),
  ADD KEY `add_price_unit_id` (`add_price_unit_id`),
  ADD KEY `average_rating` (`average_rating`),
  ADD KEY `reviews_count` (`reviews_count`),
  ADD KEY `delivery_times_id` (`delivery_times_id`),
  ADD KEY `hits` (`hits`),
  ADD KEY `basic_price_unit_id` (`basic_price_unit_id`),
  ADD KEY `label_id` (`label_id`),
  ADD KEY `vendor_id` (`vendor_id`),
  ADD KEY `access` (`access`);

--
-- Индексы таблицы `hu0fn_jshopping_products_attr`
--
ALTER TABLE `hu0fn_jshopping_products_attr`
  ADD PRIMARY KEY (`product_attr_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `ext_attribute_product_id` (`ext_attribute_product_id`);

--
-- Индексы таблицы `hu0fn_jshopping_products_attr2`
--
ALTER TABLE `hu0fn_jshopping_products_attr2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `attr_id` (`attr_id`),
  ADD KEY `attr_value_id` (`attr_value_id`),
  ADD KEY `price_mod` (`price_mod`);

--
-- Индексы таблицы `hu0fn_jshopping_products_extra_fields`
--
ALTER TABLE `hu0fn_jshopping_products_extra_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group` (`group`),
  ADD KEY `allcats` (`allcats`),
  ADD KEY `type` (`type`),
  ADD KEY `multilist` (`multilist`),
  ADD KEY `group_2` (`group`),
  ADD KEY `ordering` (`ordering`);

--
-- Индексы таблицы `hu0fn_jshopping_products_extra_field_groups`
--
ALTER TABLE `hu0fn_jshopping_products_extra_field_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ordering` (`ordering`);

--
-- Индексы таблицы `hu0fn_jshopping_products_extra_field_values`
--
ALTER TABLE `hu0fn_jshopping_products_extra_field_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `field_id` (`field_id`),
  ADD KEY `ordering` (`ordering`);

--
-- Индексы таблицы `hu0fn_jshopping_products_files`
--
ALTER TABLE `hu0fn_jshopping_products_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `ordering` (`ordering`);

--
-- Индексы таблицы `hu0fn_jshopping_products_free_attr`
--
ALTER TABLE `hu0fn_jshopping_products_free_attr`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `attr_id` (`attr_id`);

--
-- Индексы таблицы `hu0fn_jshopping_products_images`
--
ALTER TABLE `hu0fn_jshopping_products_images`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `ordering` (`ordering`);

--
-- Индексы таблицы `hu0fn_jshopping_products_option`
--
ALTER TABLE `hu0fn_jshopping_products_option`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `prodkey` (`product_id`,`key`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `hu0fn_jshopping_products_prices`
--
ALTER TABLE `hu0fn_jshopping_products_prices`
  ADD PRIMARY KEY (`price_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `product_quantity_start` (`product_quantity_start`),
  ADD KEY `product_quantity_finish` (`product_quantity_finish`);

--
-- Индексы таблицы `hu0fn_jshopping_products_relations`
--
ALTER TABLE `hu0fn_jshopping_products_relations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`,`product_related_id`),
  ADD KEY `product_id_2` (`product_id`),
  ADD KEY `product_related_id` (`product_related_id`);

--
-- Индексы таблицы `hu0fn_jshopping_products_reviews`
--
ALTER TABLE `hu0fn_jshopping_products_reviews`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `user_email` (`user_email`),
  ADD KEY `mark` (`mark`),
  ADD KEY `publish` (`publish`),
  ADD KEY `ip` (`ip`);

--
-- Индексы таблицы `hu0fn_jshopping_products_to_categories`
--
ALTER TABLE `hu0fn_jshopping_products_to_categories`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `product_id_2` (`product_id`,`category_id`,`product_ordering`),
  ADD KEY `product_ordering` (`product_ordering`);

--
-- Индексы таблицы `hu0fn_jshopping_products_videos`
--
ALTER TABLE `hu0fn_jshopping_products_videos`
  ADD PRIMARY KEY (`video_id`),
  ADD KEY `video_id` (`video_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `hu0fn_jshopping_product_labels`
--
ALTER TABLE `hu0fn_jshopping_product_labels`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `hu0fn_jshopping_shipping_ext_calc`
--
ALTER TABLE `hu0fn_jshopping_shipping_ext_calc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`),
  ADD KEY `published` (`published`),
  ADD KEY `ordering` (`ordering`);

--
-- Индексы таблицы `hu0fn_jshopping_shipping_method`
--
ALTER TABLE `hu0fn_jshopping_shipping_method`
  ADD PRIMARY KEY (`shipping_id`),
  ADD KEY `alias` (`alias`),
  ADD KEY `published` (`published`),
  ADD KEY `ordering` (`ordering`);

--
-- Индексы таблицы `hu0fn_jshopping_shipping_method_price`
--
ALTER TABLE `hu0fn_jshopping_shipping_method_price`
  ADD PRIMARY KEY (`sh_pr_method_id`),
  ADD KEY `shipping_method_id` (`shipping_method_id`),
  ADD KEY `shipping_tax_id` (`shipping_tax_id`),
  ADD KEY `package_tax_id` (`package_tax_id`),
  ADD KEY `delivery_times_id` (`delivery_times_id`);

--
-- Индексы таблицы `hu0fn_jshopping_shipping_method_price_countries`
--
ALTER TABLE `hu0fn_jshopping_shipping_method_price_countries`
  ADD PRIMARY KEY (`sh_method_country_id`),
  ADD KEY `country_id` (`country_id`),
  ADD KEY `sh_pr_method_id` (`sh_pr_method_id`),
  ADD KEY `sh_method_country_id` (`sh_method_country_id`,`country_id`,`sh_pr_method_id`),
  ADD KEY `country_id_2` (`country_id`,`sh_pr_method_id`),
  ADD KEY `sh_method_country_id_2` (`sh_method_country_id`,`country_id`);

--
-- Индексы таблицы `hu0fn_jshopping_shipping_method_price_weight`
--
ALTER TABLE `hu0fn_jshopping_shipping_method_price_weight`
  ADD PRIMARY KEY (`sh_pr_weight_id`),
  ADD KEY `sh_pr_method_id` (`sh_pr_method_id`),
  ADD KEY `sh_pr_weight_id` (`sh_pr_weight_id`,`sh_pr_method_id`);

--
-- Индексы таблицы `hu0fn_jshopping_taxes`
--
ALTER TABLE `hu0fn_jshopping_taxes`
  ADD PRIMARY KEY (`tax_id`);

--
-- Индексы таблицы `hu0fn_jshopping_taxes_ext`
--
ALTER TABLE `hu0fn_jshopping_taxes_ext`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tax_id` (`tax_id`);

--
-- Индексы таблицы `hu0fn_jshopping_unit`
--
ALTER TABLE `hu0fn_jshopping_unit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `qty` (`qty`);

--
-- Индексы таблицы `hu0fn_jshopping_usergroups`
--
ALTER TABLE `hu0fn_jshopping_usergroups`
  ADD PRIMARY KEY (`usergroup_id`),
  ADD KEY `usergroup_name` (`usergroup_name`),
  ADD KEY `usergroup_is_default` (`usergroup_is_default`);

--
-- Индексы таблицы `hu0fn_jshopping_users`
--
ALTER TABLE `hu0fn_jshopping_users`
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `u_name` (`u_name`),
  ADD KEY `usergroup_id` (`usergroup_id`),
  ADD KEY `usergroup_id_2` (`usergroup_id`),
  ADD KEY `payment_id` (`payment_id`),
  ADD KEY `shipping_id` (`shipping_id`),
  ADD KEY `client_type` (`client_type`),
  ADD KEY `email` (`email`);

--
-- Индексы таблицы `hu0fn_jshopping_vendors`
--
ALTER TABLE `hu0fn_jshopping_vendors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country` (`country`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `email` (`email`),
  ADD KEY `main` (`main`),
  ADD KEY `publish` (`publish`);

--
-- Индексы таблицы `hu0fn_languages`
--
ALTER TABLE `hu0fn_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_image` (`image`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_ordering` (`ordering`);

--
-- Индексы таблицы `hu0fn_menu`
--
ALTER TABLE `hu0fn_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `hu0fn_menu_types`
--
ALTER TABLE `hu0fn_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Индексы таблицы `hu0fn_messages`
--
ALTER TABLE `hu0fn_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Индексы таблицы `hu0fn_messages_cfg`
--
ALTER TABLE `hu0fn_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Индексы таблицы `hu0fn_modules`
--
ALTER TABLE `hu0fn_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `hu0fn_modules_menu`
--
ALTER TABLE `hu0fn_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Индексы таблицы `hu0fn_newsfeeds`
--
ALTER TABLE `hu0fn_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Индексы таблицы `hu0fn_overrider`
--
ALTER TABLE `hu0fn_overrider`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `hu0fn_postinstall_messages`
--
ALTER TABLE `hu0fn_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Индексы таблицы `hu0fn_redirect_links`
--
ALTER TABLE `hu0fn_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_old_url` (`old_url`(100)),
  ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Индексы таблицы `hu0fn_schemas`
--
ALTER TABLE `hu0fn_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Индексы таблицы `hu0fn_session`
--
ALTER TABLE `hu0fn_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`);

--
-- Индексы таблицы `hu0fn_tags`
--
ALTER TABLE `hu0fn_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `hu0fn_template_styles`
--
ALTER TABLE `hu0fn_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_home` (`home`);

--
-- Индексы таблицы `hu0fn_ucm_base`
--
ALTER TABLE `hu0fn_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Индексы таблицы `hu0fn_ucm_content`
--
ALTER TABLE `hu0fn_ucm_content`
  ADD PRIMARY KEY (`core_content_id`),
  ADD KEY `tag_idx` (`core_state`,`core_access`),
  ADD KEY `idx_access` (`core_access`),
  ADD KEY `idx_alias` (`core_alias`(100)),
  ADD KEY `idx_language` (`core_language`),
  ADD KEY `idx_title` (`core_title`(100)),
  ADD KEY `idx_modified_time` (`core_modified_time`),
  ADD KEY `idx_created_time` (`core_created_time`),
  ADD KEY `idx_content_type` (`core_type_alias`(100)),
  ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  ADD KEY `idx_core_created_user_id` (`core_created_user_id`),
  ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Индексы таблицы `hu0fn_ucm_history`
--
ALTER TABLE `hu0fn_ucm_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  ADD KEY `idx_save_date` (`save_date`);

--
-- Индексы таблицы `hu0fn_updates`
--
ALTER TABLE `hu0fn_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Индексы таблицы `hu0fn_update_sites`
--
ALTER TABLE `hu0fn_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Индексы таблицы `hu0fn_update_sites_extensions`
--
ALTER TABLE `hu0fn_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Индексы таблицы `hu0fn_usergroups`
--
ALTER TABLE `hu0fn_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Индексы таблицы `hu0fn_users`
--
ALTER TABLE `hu0fn_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_name` (`name`(100)),
  ADD KEY `idx_block` (`block`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`);

--
-- Индексы таблицы `hu0fn_user_keys`
--
ALTER TABLE `hu0fn_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD UNIQUE KEY `series_2` (`series`),
  ADD UNIQUE KEY `series_3` (`series`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `hu0fn_user_notes`
--
ALTER TABLE `hu0fn_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

--
-- Индексы таблицы `hu0fn_user_profiles`
--
ALTER TABLE `hu0fn_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Индексы таблицы `hu0fn_user_usergroup_map`
--
ALTER TABLE `hu0fn_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Индексы таблицы `hu0fn_viewlevels`
--
ALTER TABLE `hu0fn_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `hu0fn_assets`
--
ALTER TABLE `hu0fn_assets`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=107;
--
-- AUTO_INCREMENT для таблицы `hu0fn_banners`
--
ALTER TABLE `hu0fn_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `hu0fn_banner_clients`
--
ALTER TABLE `hu0fn_banner_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `hu0fn_categories`
--
ALTER TABLE `hu0fn_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `hu0fn_contact_details`
--
ALTER TABLE `hu0fn_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `hu0fn_content`
--
ALTER TABLE `hu0fn_content`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `hu0fn_content_types`
--
ALTER TABLE `hu0fn_content_types`
  MODIFY `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `hu0fn_extensions`
--
ALTER TABLE `hu0fn_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10025;
--
-- AUTO_INCREMENT для таблицы `hu0fn_finder_filters`
--
ALTER TABLE `hu0fn_finder_filters`
  MODIFY `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `hu0fn_finder_links`
--
ALTER TABLE `hu0fn_finder_links`
  MODIFY `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `hu0fn_finder_taxonomy`
--
ALTER TABLE `hu0fn_finder_taxonomy`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `hu0fn_finder_terms`
--
ALTER TABLE `hu0fn_finder_terms`
  MODIFY `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `hu0fn_finder_types`
--
ALTER TABLE `hu0fn_finder_types`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `hu0fn_joomgallery`
--
ALTER TABLE `hu0fn_joomgallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `hu0fn_joomgallery_catg`
--
ALTER TABLE `hu0fn_joomgallery_catg`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `hu0fn_joomgallery_comments`
--
ALTER TABLE `hu0fn_joomgallery_comments`
  MODIFY `cmtid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `hu0fn_joomgallery_config`
--
ALTER TABLE `hu0fn_joomgallery_config`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `hu0fn_joomgallery_maintenance`
--
ALTER TABLE `hu0fn_joomgallery_maintenance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `hu0fn_joomgallery_nameshields`
--
ALTER TABLE `hu0fn_joomgallery_nameshields`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `hu0fn_joomgallery_orphans`
--
ALTER TABLE `hu0fn_joomgallery_orphans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `hu0fn_joomgallery_users`
--
ALTER TABLE `hu0fn_joomgallery_users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `hu0fn_joomgallery_votes`
--
ALTER TABLE `hu0fn_joomgallery_votes`
  MODIFY `voteid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `hu0fn_jshopping_addons`
--
ALTER TABLE `hu0fn_jshopping_addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `hu0fn_jshopping_attr`
--
ALTER TABLE `hu0fn_jshopping_attr`
  MODIFY `attr_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `hu0fn_jshopping_attr_groups`
--
ALTER TABLE `hu0fn_jshopping_attr_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `hu0fn_jshopping_attr_values`
--
ALTER TABLE `hu0fn_jshopping_attr_values`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `hu0fn_jshopping_cart_temp`
--
ALTER TABLE `hu0fn_jshopping_cart_temp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `hu0fn_jshopping_categories`
--
ALTER TABLE `hu0fn_jshopping_categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT для таблицы `hu0fn_jshopping_config`
--
ALTER TABLE `hu0fn_jshopping_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `hu0fn_jshopping_config_display_prices`
--
ALTER TABLE `hu0fn_jshopping_config_display_prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `hu0fn_jshopping_config_seo`
--
ALTER TABLE `hu0fn_jshopping_config_seo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT для таблицы `hu0fn_jshopping_config_statictext`
--
ALTER TABLE `hu0fn_jshopping_config_statictext`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT для таблицы `hu0fn_jshopping_countries`
--
ALTER TABLE `hu0fn_jshopping_countries`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=240;
--
-- AUTO_INCREMENT для таблицы `hu0fn_jshopping_coupons`
--
ALTER TABLE `hu0fn_jshopping_coupons`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `hu0fn_jshopping_currencies`
--
ALTER TABLE `hu0fn_jshopping_currencies`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `hu0fn_jshopping_delivery_times`
--
ALTER TABLE `hu0fn_jshopping_delivery_times`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `hu0fn_jshopping_free_attr`
--
ALTER TABLE `hu0fn_jshopping_free_attr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `hu0fn_jshopping_import_export`
--
ALTER TABLE `hu0fn_jshopping_import_export`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `hu0fn_jshopping_languages`
--
ALTER TABLE `hu0fn_jshopping_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `hu0fn_jshopping_manufacturers`
--
ALTER TABLE `hu0fn_jshopping_manufacturers`
  MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `hu0fn_jshopping_orders`
--
ALTER TABLE `hu0fn_jshopping_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `hu0fn_jshopping_order_history`
--
ALTER TABLE `hu0fn_jshopping_order_history`
  MODIFY `order_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `hu0fn_jshopping_order_item`
--
ALTER TABLE `hu0fn_jshopping_order_item`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `hu0fn_jshopping_order_status`
--
ALTER TABLE `hu0fn_jshopping_order_status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `hu0fn_jshopping_payment_method`
--
ALTER TABLE `hu0fn_jshopping_payment_method`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `hu0fn_jshopping_payment_trx`
--
ALTER TABLE `hu0fn_jshopping_payment_trx`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `hu0fn_jshopping_payment_trx_data`
--
ALTER TABLE `hu0fn_jshopping_payment_trx_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `hu0fn_jshopping_products`
--
ALTER TABLE `hu0fn_jshopping_products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `hu0fn_jshopping_products_attr`
--
ALTER TABLE `hu0fn_jshopping_products_attr`
  MODIFY `product_attr_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `hu0fn_jshopping_products_attr2`
--
ALTER TABLE `hu0fn_jshopping_products_attr2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `hu0fn_jshopping_products_extra_fields`
--
ALTER TABLE `hu0fn_jshopping_products_extra_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `hu0fn_jshopping_products_extra_field_groups`
--
ALTER TABLE `hu0fn_jshopping_products_extra_field_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `hu0fn_jshopping_products_extra_field_values`
--
ALTER TABLE `hu0fn_jshopping_products_extra_field_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `hu0fn_jshopping_products_files`
--
ALTER TABLE `hu0fn_jshopping_products_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `hu0fn_jshopping_products_free_attr`
--
ALTER TABLE `hu0fn_jshopping_products_free_attr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `hu0fn_jshopping_products_images`
--
ALTER TABLE `hu0fn_jshopping_products_images`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT для таблицы `hu0fn_jshopping_products_option`
--
ALTER TABLE `hu0fn_jshopping_products_option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `hu0fn_jshopping_products_prices`
--
ALTER TABLE `hu0fn_jshopping_products_prices`
  MODIFY `price_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `hu0fn_jshopping_products_relations`
--
ALTER TABLE `hu0fn_jshopping_products_relations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `hu0fn_jshopping_products_reviews`
--
ALTER TABLE `hu0fn_jshopping_products_reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `hu0fn_jshopping_products_videos`
--
ALTER TABLE `hu0fn_jshopping_products_videos`
  MODIFY `video_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `hu0fn_jshopping_product_labels`
--
ALTER TABLE `hu0fn_jshopping_product_labels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `hu0fn_jshopping_shipping_ext_calc`
--
ALTER TABLE `hu0fn_jshopping_shipping_ext_calc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `hu0fn_jshopping_shipping_method`
--
ALTER TABLE `hu0fn_jshopping_shipping_method`
  MODIFY `shipping_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `hu0fn_jshopping_shipping_method_price`
--
ALTER TABLE `hu0fn_jshopping_shipping_method_price`
  MODIFY `sh_pr_method_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `hu0fn_jshopping_shipping_method_price_countries`
--
ALTER TABLE `hu0fn_jshopping_shipping_method_price_countries`
  MODIFY `sh_method_country_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=479;
--
-- AUTO_INCREMENT для таблицы `hu0fn_jshopping_shipping_method_price_weight`
--
ALTER TABLE `hu0fn_jshopping_shipping_method_price_weight`
  MODIFY `sh_pr_weight_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `hu0fn_jshopping_taxes`
--
ALTER TABLE `hu0fn_jshopping_taxes`
  MODIFY `tax_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `hu0fn_jshopping_taxes_ext`
--
ALTER TABLE `hu0fn_jshopping_taxes_ext`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `hu0fn_jshopping_unit`
--
ALTER TABLE `hu0fn_jshopping_unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `hu0fn_jshopping_usergroups`
--
ALTER TABLE `hu0fn_jshopping_usergroups`
  MODIFY `usergroup_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `hu0fn_jshopping_vendors`
--
ALTER TABLE `hu0fn_jshopping_vendors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `hu0fn_languages`
--
ALTER TABLE `hu0fn_languages`
  MODIFY `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `hu0fn_menu`
--
ALTER TABLE `hu0fn_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=140;
--
-- AUTO_INCREMENT для таблицы `hu0fn_menu_types`
--
ALTER TABLE `hu0fn_menu_types`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `hu0fn_messages`
--
ALTER TABLE `hu0fn_messages`
  MODIFY `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `hu0fn_modules`
--
ALTER TABLE `hu0fn_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=112;
--
-- AUTO_INCREMENT для таблицы `hu0fn_newsfeeds`
--
ALTER TABLE `hu0fn_newsfeeds`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `hu0fn_overrider`
--
ALTER TABLE `hu0fn_overrider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';
--
-- AUTO_INCREMENT для таблицы `hu0fn_postinstall_messages`
--
ALTER TABLE `hu0fn_postinstall_messages`
  MODIFY `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `hu0fn_redirect_links`
--
ALTER TABLE `hu0fn_redirect_links`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `hu0fn_tags`
--
ALTER TABLE `hu0fn_tags`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `hu0fn_template_styles`
--
ALTER TABLE `hu0fn_template_styles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `hu0fn_ucm_content`
--
ALTER TABLE `hu0fn_ucm_content`
  MODIFY `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `hu0fn_ucm_history`
--
ALTER TABLE `hu0fn_ucm_history`
  MODIFY `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT для таблицы `hu0fn_updates`
--
ALTER TABLE `hu0fn_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `hu0fn_update_sites`
--
ALTER TABLE `hu0fn_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `hu0fn_usergroups`
--
ALTER TABLE `hu0fn_usergroups`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `hu0fn_users`
--
ALTER TABLE `hu0fn_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=685;
--
-- AUTO_INCREMENT для таблицы `hu0fn_user_keys`
--
ALTER TABLE `hu0fn_user_keys`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `hu0fn_user_notes`
--
ALTER TABLE `hu0fn_user_notes`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `hu0fn_viewlevels`
--
ALTER TABLE `hu0fn_viewlevels`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
